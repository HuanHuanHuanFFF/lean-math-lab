"""Read-only integrity audit of a completed B699 acceptance evidence root.
This checks retained artifacts and provenance; it is not a second Lean kernel.
"""
from __future__ import annotations
import argparse
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path
import re

ALLOWED = {"propext", "Classical.choice", "Quot.sound"}

def digest(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()

def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--project-root", type=Path, default=Path("."))
    parser.add_argument("--evidence", type=Path, required=True)
    parser.add_argument("--theorem", required=True)
    parser.add_argument("--expected-modules", type=int, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    repo = args.project_root.resolve()
    evidence_path = args.evidence.resolve()
    evidence = json.loads(evidence_path.read_text(encoding="utf-8"))
    failures: list[str] = []
    checks: list[dict] = []
    origins: dict[tuple[str, str], dict] = {}
    json_cache: dict[str, dict] = {}
    def require(ok: bool, reason: str) -> None:
        if not ok:
            failures.append(reason)
    def file_matches(relative: str, expected: str, label: str) -> bool:
        path = repo / relative
        ok = path.is_file() and digest(path) == expected
        require(ok, label + ": " + relative)
        return ok
    def record_ok(row: dict, label: str) -> None:
        require(row.get("exit_code") == 0 and not row.get("failure") and not row.get("timed_out"), label + ": compilation")
        require(row.get("source_sha256_before") == row.get("source_sha256_after"), label + ": source changed during compilation")
        audit = row.get("axiom_audit", {})
        require(not audit.get("error") and not audit.get("unexpected_axioms"), label + ": axiom failure")
        require(audit.get("declared_print_axioms") == audit.get("actual_printed"), label + ": missing actual axiom output")
        for printed in audit.get("printed", []):
            require(set(printed.get("axioms", [])) <= ALLOWED, label + ": nonstandard axiom")
    def follow_origin(row: dict, active: set[tuple[str, str]]) -> None:
        reused = row.get("reused_from")
        if not reused:
            require(row.get("command") is not None, row["module"] + ": no source compilation at provenance origin")
            return
        base = reused["evidence"]
        key = (base["path"], row["module"])
        require(key not in active, str(key) + ": cyclic provenance")
        if key in active or key in origins:
            return
        if not file_matches(base["path"], base["sha256"], "reuse evidence SHA"):
            return
        if base["path"] not in json_cache:
            json_cache[base["path"]] = json.loads((repo / base["path"]).read_text(encoding="utf-8"))
        data = json_cache[base["path"]]
        matches = [x for x in data.get("compile_records", []) if x.get("module") == row["module"]]
        require(len(matches) == 1, str(key) + ": ambiguous or missing origin")
        if len(matches) != 1:
            return
        previous = matches[0]
        record_ok(previous, str(key))
        for field in ("source", "imports", "source_sha256_before", "source_sha256_after", "output_sha256", "log_sha256"):
            require(previous.get(field) == row.get(field), str(key) + ": provenance differs at " + field)
        file_matches(previous["output"], previous["output_sha256"], "origin object SHA")
        file_matches(previous["log"], previous["log_sha256"], "origin actual log SHA")
        origins[key] = {"evidence": base["path"], "module": row["module"], "origin_evidence_success": data.get("success"),
                        "individual_module_success": previous.get("exit_code") == 0 and not previous.get("failure")}
        follow_origin(previous, active | {key})

    require(evidence.get("success") is True and evidence.get("exit_code") == 0, "root not completed successfully")
    require(evidence.get("all_project_closure_verified", evidence.get("all_new_project_closure_compiled")) is True, "complete closure not verified")
    rows = evidence.get("compile_records", [])
    closure = evidence.get("source_closure", [])
    require(len(rows) == args.expected_modules == len(closure), "module count")
    require(len({x["module"] for x in rows}) == len(rows), "duplicate module")
    require([x["module"] for x in rows] == [x["module"] for x in closure], "closure order differs from compilation records")
    module_order = {x["module"]: i for i, x in enumerate(rows)}
    for i, (row, source) in enumerate(zip(rows, closure)):
        record_ok(row, row["module"])
        for field in ("source", "imports", "source_sha256_before", "source_sha256_after"):
            require(row.get(field) == source.get(field), row["module"] + ": closure mismatch at " + field)
        checks.append({"module": row["module"],
                       "source": file_matches(row["source"], row["source_sha256_before"], "source SHA"),
                       "object": file_matches(row["output"], row["output_sha256"], "object SHA"),
                       "log": file_matches(row["log"], row["log_sha256"], "actual log SHA")})
        if row.get("source_snapshot"):
            file_matches(row["source_snapshot"], row["source_sha256_before"], "source snapshot SHA")
        for dependency in row.get("imports", []):
            if dependency in module_order:
                require(module_order[dependency] < i, row["module"] + ": dependency compiled out of order")
            else:
                path = repo.joinpath(*dependency.split(".")).with_suffix(".lean")
                require(not path.exists(), row["module"] + ": omitted project dependency " + dependency)
        follow_origin(row, set())
    file_matches("lake-manifest.json", evidence["manifest_sha256"], "manifest SHA")
    require((repo / "lean-toolchain").read_text(encoding="utf-8").strip() == evidence["toolchain"]["declared"], "toolchain declaration")
    require(evidence["toolchain"].get("exit_code") == 0 and "version 4.33.1," in evidence["toolchain"]["observed"], "observed toolchain")
    file_matches(evidence["toolchain"]["log"], evidence["toolchain"]["log_sha256"], "version actual log SHA")
    for pin in evidence.get("pins", []):
        require(pin.get("head_matches") and pin.get("clean"), "pin not fixed or dirty: " + pin["name"])
    require(evidence["policy"].get("exit_code") == 0 and not evidence["policy"].get("violations"), "source policy")
    file_matches(evidence["policy"]["log"], evidence["policy"]["log_sha256"], "source policy log SHA")
    for runner in evidence.get("runner_sources", []):
        require(runner["sha256"] == runner["sha256_at_finish"], "runner changed during acceptance")
        file_matches(runner["path"], runner["sha256"], "current runner SHA")
    final_rows = [x for x in rows if any(y.get("declared_name") == args.theorem for y in x.get("axiom_audit", {}).get("printed", []))]
    require(len(final_rows) == 1, "unique actual final theorem axiom output")
    final_log = None
    final_axioms = None
    if len(final_rows) == 1:
        final = final_rows[0]
        final_log = final["log"]
        actual = (repo / final_log).read_text(encoding="utf-8")
        require(args.theorem in actual and ("Nat.gcd" in actual or ".gcd" in actual) and ("Nat.choose" in actual or ".choose" in actual), "raw theorem missing in actual log")
        printed = [x for x in final["axiom_audit"]["printed"] if x["declared_name"] == args.theorem][0]
        final_axioms = printed["axioms"]
        require(set(final_axioms) == ALLOWED, "final theorem axiom set differs from expected standard three")
        require(not re.search(r"\b(?:sorryAx|ofReduceBool|native_decide)\b", actual), "forbidden axiom or native output")
    result = {
        "schema_version": 1, "checked_utc": datetime.now(timezone.utc).isoformat().replace("+00:00", "Z"),
        "evidence": evidence_path.relative_to(repo).as_posix(), "evidence_sha256": digest(evidence_path),
        "success": not failures, "scope": "retained artifact hashes, individual compilation provenance, declaration output and recorded pins; not a second Lean kernel",
        "module_count": len(rows), "compiled_in_final_invocation": sum(x.get("compiled_in_this_invocation", True) for x in rows),
        "reused_in_final_invocation": sum(not x.get("compiled_in_this_invocation", True) for x in rows),
        "checks": checks, "provenance_edges": list(origins.values()), "theorem": args.theorem,
        "final_log": final_log, "final_axioms": final_axioms, "failures": failures}
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8", newline="\n")
    print(json.dumps({k: result[k] for k in ("success", "module_count", "compiled_in_final_invocation", "reused_in_final_invocation", "final_axioms", "failures")}, ensure_ascii=False))
    return 0 if result["success"] else 1

if __name__ == "__main__":
    raise SystemExit(main())
