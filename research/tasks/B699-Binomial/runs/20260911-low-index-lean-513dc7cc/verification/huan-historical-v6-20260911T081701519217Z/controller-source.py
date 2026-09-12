
#!/usr/bin/env python3
"""Bounded historical controller; it never edits target-status or publishes."""
from __future__ import annotations
import argparse, hashlib, json, os, subprocess, sys
from datetime import datetime, timezone
from pathlib import Path
from huan_atomic import write_json

RUN = Path("research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc")
PLAN_DIR = RUN / "experiments/huan-historical-bundles-5e2d13bb/v3-import-closure"
SHARED_REF = RUN / "experiments/huan-historical-bundles-5e2d13bb/v2-private-bundles-5e2d13bb/shared26-reference.json"
PROFILE = RUN / "notes/huan-historical-memory-plan/memory-profile.json"
BUNDLER = RUN / "verification/runner/bundle_huan_row.py"
VERIFIER = RUN / "verification/runner/verify_huan.py"
ROWS, BLOCKS = (35, 36, 37, 29), {35:(32,16,8,4),36:(32,16,8,4),37:(32,16,8,4),29:(2,)}
ALLOWED = {"propext", "Classical.choice", "Quot.sound"}


class ResourceError(RuntimeError): pass


def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
def rel(p, repo): return p.resolve().relative_to(repo.resolve()).as_posix()


def literal_statement(p, i):
    text, mark = p.read_text(encoding="utf-8"), f"theorem common_i{i:03d} :"
    start = text.index(mark) + len(mark)
    value = text[start:text.index(":= by", start) + 5].strip()
    expected = (f"∀ n j : ℕ, 1 ≤ {i} ∧ {i} < j ∧ j ≤ n / 2 →\n"
                f"      ∃ p : ℕ, p.Prime ∧ {i} ≤ p ∧ p ∣ Nat.choose n {i} ∧ p ∣ Nat.choose n j := by")
    if value != expected: raise ValueError(f"original statement mismatch row {i}")
    return value


def load_plan(repo, i):
    p, d = repo / PLAN_DIR / f"row{i:03d}.json", None
    d = json.loads(p.read_text(encoding="utf-8"))
    if d.get("i") != i or d.get("new_original_result") is not False or d.get("acceptance_status") != "uncompiled_candidate":
        raise ResourceError(f"invalid v3 plan row {i}")
    for x in d["outputs"]:
        if sha(repo / x["path"]) != x["sha256"]: raise ResourceError(f"v3 source hash changed: {x['path']}")
    if sha(repo / d["frozen_source"]) != d["frozen_source_sha256"]:
        raise ResourceError(f"frozen source hash changed row {i}")
    return p


def check_record(repo, run, r):
    source, obj, log = repo / r["source"], (repo / r["output"]).resolve(), (repo / r["log"]).resolve()
    current = sha(source)
    if current != r["source_sha256_before"] or current != r["source_sha256_after"]:
        raise ValueError(f"source hash mismatch: {r['source']}")
    if not obj.is_relative_to(repo / ".tools" / RUN.name) or not log.is_relative_to(run / "verification"):
        raise ValueError(f"record path escapes run: {r['source']}")
    if sha(obj) != r["output_sha256"] or sha(log) != r["log_sha256"] or r.get("failure") or r.get("timed_out") or r.get("exit_code") != 0:
        raise ValueError(f"unusable record: {r['source']}")


def check_root(repo, run, evidence, root, i):
    if not evidence.get("success") or evidence.get("exit_code") != 0 or evidence.get("root_sources") != [root]:
        raise ValueError("evidence is not a successful exact root")
    records = [*evidence.get("compile_records", []), *evidence.get("reuse_records", [])]
    sources = [x["source"] for x in records]
    closure_sources = {x["source"] for x in evidence.get("source_closure", [])}
    if len(sources) != len(set(sources)) or set(sources) != closure_sources:
        raise ValueError("historical receipt lacks a complete unique source closure")
    for item in records:
        check_record(repo, run, item)
        if (item.get("axiom_audit") or {}).get("unexpected_axioms"):
            raise ValueError("historical reused closure has an invalid axiom audit")
    name = f"B699LowIndex.LowIndexLean513dc7cc.common_i{i:03d}"
    hits = [r for r in [*evidence.get("compile_records", []), *evidence.get("reuse_records", [])] if r.get("source") == root]
    if len(hits) != 1: raise ValueError(f"missing unique root record row {i}")
    r = hits[0]; check_record(repo, run, r); audit = r.get("axiom_audit") or {}
    printed = [x for x in audit.get("printed", []) if x.get("declared_name") == name]
    axioms = set(printed[0].get("axioms", [])) if len(printed) == 1 else set()
    if len(printed) != 1 or audit.get("unexpected_axioms") or not axioms <= ALLOWED:
        raise ValueError(f"std3 audit failed row {i}")
    source = repo / root
    if f"#print axioms {name}" not in source.read_text(encoding="utf-8"):
        raise ValueError(f"root print missing row {i}")
    return {"record":r, "declaration":name, "literal_statement":literal_statement(source, i),
            "axioms":sorted(axioms)}


def valid_receipt(repo, run, i):
    p = run / "verification/huan-historical-accepted" / f"row{i:03d}.json"
    if not p.is_file(): return None, None
    try:
        q = json.loads(p.read_text(encoding="utf-8")); ep = (repo / q["evidence"]).resolve()
        if q.get("i") != i or q.get("new_original_results", 0) not in (0, []):
            raise ValueError("receipt adds original result")
        if not ep.is_relative_to(run / "verification") or (q.get("evidence_sha256") and sha(ep) != q["evidence_sha256"]):
            raise ValueError("receipt evidence path/hash invalid")
        checked = check_root(repo, run, json.loads(ep.read_text(encoding="utf-8")), q["root"], i)
        if q.get("source_sha256") != sha(repo / q["root"]) or q.get("output_sha256") != checked["record"]["output_sha256"]:
            raise ValueError("receipt source/output hash invalid")
        if q.get("log_sha256") and q["log_sha256"] != checked["record"]["log_sha256"]:
            raise ValueError("receipt log hash invalid")
        if q.get("literal_original_statement") not in (None, checked["literal_statement"]):
            raise ValueError("receipt statement invalid")
        return {"path":rel(p, repo), "root":q["root"]}, None
    except (KeyError, OSError, ValueError, json.JSONDecodeError) as exc: return None, str(exc)


def check_shared(repo, run):
    ref = json.loads((repo / SHARED_REF).read_text(encoding="utf-8")); ep = (repo / ref["evidence_path"]).resolve()
    if not ep.is_relative_to(run / "verification") or sha(ep) != ref["evidence_sha256"]:
        raise ResourceError("shared26 evidence path/hash invalid")
    e = json.loads(ep.read_text(encoding="utf-8"))
    if not e.get("success") or e.get("exit_code") != 0: raise ResourceError("shared26 evidence is not successful")
    pins = e.get("pins", [])
    if len(pins) != 9 or any(not x.get("head_matches") or not x.get("clean") for x in pins):
        raise ResourceError("shared26 pin audit is incomplete")
    for r in [*e.get("compile_records", []), *e.get("reuse_records", [])]:
        check_record(repo, run, r)
        if (r.get("axiom_audit") or {}).get("unexpected_axioms"): raise ResourceError("shared26 axiom audit changed")
    return rel(ep, repo)


def bundle(repo, plan, i, block, log):
    out, mp = repo / RUN / "lean" / "rows" / f"Row{i:03d}J{block}", None
    mp = out / "bundle-manifest.json"
    if mp.is_file():
        m = json.loads(mp.read_text(encoding="utf-8"))
        expected = (i, block, "uncompiled_candidate", rel(plan, repo), sha(plan), rel(out / "Original.lean", repo))
        if (m.get("i"),m.get("block_size"),m.get("acceptance_status"),m.get("source_plan"),m.get("source_plan_sha256"),m.get("root")) != expected:
            raise ResourceError(f"bundle manifest mismatch: {out}")
        return m, None
    if out.exists(): raise ResourceError(f"partial bundle without manifest: {out}")
    cmd = [sys.executable,"-B",str(BUNDLER),"--repo-root",str(repo),"--plan",str(plan),"--output",str(out),"--block-size",str(block)]
    try:
        with log.open("w",encoding="utf-8") as stream: rc = subprocess.run(cmd,cwd=repo,stdout=stream,stderr=subprocess.STDOUT,env={**os.environ,"PYTHONDONTWRITEBYTECODE":"1"}).returncode
    except OSError as exc: raise ResourceError(f"bundle launch failed: {exc}") from exc
    if rc or not mp.is_file(): raise ResourceError(f"bundle failed row {i} J{block}, rc={rc}")
    return bundle(repo, plan, i, block, log)


def resource_summary(e):
    xs = e.get("compile_resources", [])
    return {"count":len(xs), "last":{k:v for k,v in xs[-1].items() if k != "processes"} if xs else {},
            "memory_profile":e.get("memory_profile")}


def failure_kind(repo, e):
    text = str(e.get("failure","")).lower()
    for r in e.get("compile_records", []):
        text += " " + str(r.get("failure","")).lower()
        if r.get("log") and (repo / r["log"]).is_file(): text += " " + (repo / r["log"]).read_text(errors="replace").lower()
        if r.get("timed_out"): return "resource_gate"
    if "memory_exception" in text or "excessive memory consumption" in text: return "memory_exception"
    if any(x in text for x in ("insufficient available memory","insufficient disk","lean is unavailable","wrong lean version","package checkout is dirty")):
        return "resource_gate"
    return "other"


def write_receipt(repo, run, i, root, ep, evidence, manifest_path):
    c, r = check_root(repo, run, evidence, root, i), None; r = c["record"]
    q = {"schema_version":1,"kind":"historical_private_bundle_fresh_verification","historical_original_already_accepted":True,"i":i,"root":root,
         "declaration":c["declaration"],"full_original_statement":True,
         "literal_original_statement":c["literal_statement"],"evidence":rel(ep,repo),"evidence_sha256":sha(ep),
         "source_sha256":sha(repo/root),"output_sha256":r["output_sha256"],"log":r["log"],"log_sha256":r["log_sha256"],
         "axioms":c["axioms"],"std3_satisfied":True,"compiled_modules":evidence.get("compiled_count"),
         "reused_modules":evidence.get("reused_count"),"bundle_manifest":rel(manifest_path,repo),
         "bundle_manifest_sha256":sha(manifest_path),"new_original_results":0,
         "publication_status":"local_verified_commit_and_push_blocked"}
    p = run / "verification/huan-historical-accepted" / f"row{i:03d}.json"; write_json(p,q)
    print("HISTORICAL_COMPLETE " + json.dumps({"common":c["declaration"],"literal_original_statement":c["literal_statement"],
          "source_sha256":q["source_sha256"],"output_sha256":q["output_sha256"],"log_sha256":q["log_sha256"],
          "std3_satisfied":True},ensure_ascii=False),flush=True)
    return q


def run_row(repo, run, out, row, package_root, shared, save):
    i = row["i"]; old, reason = valid_receipt(repo, run, i)
    if old: row.update(status="skipped_existing_receipt",receipt=old); save(); return False
    if reason: row["receipt_check"] = reason
    plan = load_plan(repo, i)
    for pos, block in enumerate(BLOCKS[i]):
        row.update(status="running",current_block=block); save()
        blog = out / "logs" / f"row{i:03d}-J{block}-bundle.log"; manifest, bundle_cmd = bundle(repo,plan,i,block,blog)
        root, mp = manifest["root"], repo / Path(manifest["root"]).parent / "bundle-manifest.json"
        cmd = [sys.executable,"-B",str(VERIFIER),"--repo",str(repo),"--package-root",str(package_root),
               "--root",root,"--reuse",shared,"--memory-mb","2048","--timeout","900"]
        if i == 29: cmd += ["--memory-profile",rel(repo / PROFILE,repo)]
        vlog, before = out / "logs" / f"row{i:03d}-J{block}-verify.log", set((run/"verification").glob("20*/evidence.json"))
        try:
            with vlog.open("w",encoding="utf-8") as stream: rc = subprocess.run(cmd,cwd=repo,stdout=stream,stderr=subprocess.STDOUT,env={**os.environ,"PYTHONUTF8":"1","PYTHONDONTWRITEBYTECODE":"1","GIT_OPTIONAL_LOCKS":"0"}).returncode
        except OSError as exc: raise ResourceError(f"verifier launch failed row {i}: {exc}") from exc
        fresh = [p for p in (run/"verification").glob("20*/evidence.json") if p not in before]
        matches = [p for p in fresh if json.loads(p.read_text()).get("root_sources") == [root]]
        if len(matches) != 1: raise ResourceError(f"expected one fresh evidence row {i} J{block}")
        ep, e = matches[0], json.loads(matches[0].read_text(encoding="utf-8"))
        row.setdefault("attempts",[]).append({"block":block,"memory_mb":2048,"command":cmd,"bundle_command":bundle_cmd,
             "root":root,"exit_code":rc,"evidence":rel(ep,repo),"evidence_sha256":sha(ep),"runner_sha256":e.get("runner_sha256"),
             "resource_snapshot":resource_summary(e),"failure":e.get("failure")}); save()
        if rc == 0 and e.get("success"):
            try: write_receipt(repo,run,i,root,ep,e,mp)
            except (OSError,ValueError,KeyError) as exc: row.update(status="unresolved",failure=str(exc)); save(); return False
            row.update(status="accepted",receipt=rel(run/"verification/huan-historical-accepted"/f"row{i:03d}.json",repo)); save(); return False
        kind = failure_kind(repo,e)
        if kind == "resource_gate":
            row.update(status="pending_resource",failure=e.get("failure"),decision="keep pending; do not retry smaller block"); save(); return True
        if kind == "memory_exception" and pos + 1 < len(BLOCKS[i]):
            row["decision"] = "actual memory_exception; retry next smaller block"; save(); continue
        row.update(status="unresolved",failure=e.get("failure"),decision="no receipt written"); save(); return False
    row.update(status="unresolved",decision="memory_exception at smallest block; no smaller retry"); save(); return False


def main(argv=None):
    p = argparse.ArgumentParser(description=__doc__); p.add_argument("--repo",type=Path,default=Path("."))
    p.add_argument("--package-root",type=Path,required=True); a = p.parse_args(argv)
    repo, run = a.repo.resolve(), a.repo.resolve() / RUN; stamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%S%fZ")
    out = run / "verification" / f"huan-historical-v6-{stamp}"; (out/"logs").mkdir(parents=True)
    state = {"schema_version":1,"status":"running","rows":[],"order":list(ROWS),"memory_mb":2048,
             "package_root":str(a.package_root.resolve()),"runner":rel(repo/VERIFIER,repo),"runner_sha256":sha(repo/VERIFIER),
             "profile":rel(repo/PROFILE,repo),"shared_reference":rel(repo/SHARED_REF,repo),"state_directory":rel(out,repo)}
    (out/"controller-source.py").write_bytes(Path(__file__).read_bytes())
    state["controller_sha256"] = sha(Path(__file__))
    save = lambda: write_json(out/"state.json",state); resource_incomplete = False
    try:
        state["shared_evidence"] = check_shared(repo,run); save()
        for i in ROWS:
            row = {"i":i,"status":"running","attempts":[]}; state["rows"].append(row); save()
            try: resource_incomplete |= run_row(repo,run,out,row,a.package_root.resolve(),state["shared_evidence"],save)
            except Exception as exc: row.update(status="resource_exception",failure=str(exc)); resource_incomplete=True; save()
    except Exception as exc: state["controller_failure"] = str(exc); resource_incomplete=True
    finally:
        for row in state["rows"]:
            if row["status"] == "running": row.update(status="resource_exception",failure="controller stopped"); resource_incomplete=True
        complete = (not state.get("controller_failure") and [x["i"] for x in state["rows"]] == list(ROWS)
                    and all(x["status"] in {"accepted","skipped_existing_receipt"} for x in state["rows"]))
        code = 0 if complete else 2 if resource_incomplete else 1
        state.update(status="complete" if complete else "resource_incomplete" if resource_incomplete else "incomplete",
                     exit_code=code,finished_utc=datetime.now(timezone.utc).isoformat(),new_original_results=0); save()
    return code


if __name__ == "__main__": raise SystemExit(main())
