"""Read-only structural audit. Does not run Lean, primality tests, or large powers.

This is a source correspondence and evidence audit, not another proof checker.
Run from any directory with Python; output is JSON on stdout only.
"""
from pathlib import Path
import hashlib
import json
import re
from datetime import datetime, timezone

RUN = Path(__file__).resolve().parents[1]
REPO = RUN.parents[4]
LEAN = RUN / "lean"
PREFIX = "research.tasks.B699-Binomial.runs.20260909-middle-index-cert-1a78f8cd.lean"


def read(path):
    return path.read_text(encoding="utf-8-sig")


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def norm(s):
    return " ".join(s.split())


def req(condition, label):
    if not condition:
        raise AssertionError(label)


def strip_comments(s):
    out, pos, depth = [], 0, 0
    while pos < len(s):
        if s.startswith("/-", pos):
            depth += 1
            pos += 2
        elif depth and s.startswith("-/", pos):
            depth -= 1
            pos += 2
        elif depth:
            pos += 1
        elif s.startswith("--", pos):
            pos = s.find("\n", pos)
            if pos < 0:
                break
        else:
            out.append(s[pos])
            pos += 1
    req(depth == 0, "unterminated comment")
    return "".join(out)


def theorem_bodies(s, typ):
    pattern = rf"(?ms)^theorem (\w+) : {typ} (\d+) (\d+) (\d+) :=\s*(.*?)(?=^theorem |^def |^end |^#print|\Z)"
    return [(name, tuple(map(int, (a, b, c))), norm(body))
            for name, a, b, c, body in re.findall(pattern, s)]


def qualify(name, ns):
    return name if name.startswith("B699") else ns + "." + name


report = {"utc": datetime.now(timezone.utc).isoformat(),
          "limits": ["No Lean invocation", "No primality recomputation", "No height integer comparison recomputation"]}
inp = RUN / "inputs/compact/outputs/exact_height_certificate.json"
data = json.loads(read(inp))
rows = {r["i"]: r for r in data["rows"]}
req(data["N"] == 2000000 and [r["i"] for r in data["rows"]] == list(range(323, 1000)), "input height range")

# Every count theorem must use its immediately preceding full-count theorem.
count_files = sorted((LEAN / "counts").glob("Count*.lean"))
counts = {}
step_count = 0
for k, path in enumerate(count_files):
    s = read(path)
    imports = re.findall(r"^import (.+)$", s, re.M)
    expected = PREFIX + (".RawHeight" if k == 0 else ".counts." + count_files[k - 1].stem)
    req([x.replace("«", "").replace("»", "") for x in imports] == [expected], str(path) + " count imports")
    declarations = re.findall(r"(?ms)^theorem count_(\d+) : B699LargePrimeStructure.smallPrimeCount (\d+) = (\d+) :=\s*(.*?)(?=^theorem |^def |^end |^#print|\Z)", s)
    for nm, ix, val, body in declarations:
        i, j, t = int(nm), int(ix), int(val)
        req(i == j and i not in counts, "count declaration index " + nm)
        body = norm(body)
        if i == 0:
            req(t == 0 and body == "by decide +kernel", "count zero")
        else:
            m = re.fullmatch(r"smallPrimeCount_step_checked \(i := (\d+)\) \(t := (\d+)\) \(b := (true|false)\) count_(\d+) \(by decide \+kernel\)", body)
            req(m is not None, "count proof syntax " + nm)
            pred, old, b, ref = m.groups()
            req(int(pred) == int(ref) == i - 1, "count predecessor " + nm)
            req(counts[i - 1] == int(old) and t == int(old) + (b == "true"), "count increment " + nm)
            step_count += 1
        counts[i] = t
req(sorted(counts) == list(range(1000)), "count table is exactly 0..999")
req(all(counts[i] == rows[i]["t"] for i in rows), "height t agrees with full count table")
report["counts"] = {"files": len(count_files), "theorems": len(counts), "steps": step_count,
                    "count_323": counts[323], "count_999": counts[999], "input_t_matches": True}

# Read every raw arithmetic statement, without evaluating its large integer goal.
raw = {}
height_files = sorted((LEAN / "heightBlocks").glob("Height*.lean"))
for path in [*(LEAN / "heightRows").glob("RawHeight*.lean"), *height_files]:
    s = read(path)
    for name, i, r, ss, n, t in re.findall(r"theorem (raw_(?:height_)?\d+) : RawHeightValid (\d+) (\d+) (\d+) (\d+) (\d+) := by\s+decide \+kernel", s):
        i, r, ss, n, t = map(int, (i, r, ss, n, t))
        req(i not in raw, "duplicate raw height " + str(i))
        req((r, ss, n, t) == (rows[i]["r"], rows[i]["s"], 2000000, rows[i]["t"]), "raw parameters " + str(i))
        req(r == i // 3 and ss == 7 * i // 10, "r/s rounding " + str(i))
        raw[i] = path.relative_to(RUN).as_posix()
req(sorted(raw) == list(range(323, 1000)), "raw height theorem coverage")

# Resolve every actual TailRange proof tree to its concrete singleton leaves.
tail = {}
raw_links = 0
for path in [*height_files, LEAN / "AllHeights.lean"]:
    s = read(path)
    ns = re.search(r"^namespace (\S+)", s, re.M).group(1)
    for name, params, body in theorem_bodies(s, "TailRange"):
        lo, hi, n = params
        if body.startswith("tailRange_singleton"):
            m = re.fullmatch(r"tailRange_singleton \(i := (\d+)\) \(r := (\d+)\) \(s := (\d+)\) \(N := (\d+)\) (\S+)", body)
            req(m is not None, "singleton syntax " + name)
            i, r, ss, nn = map(int, m.groups()[:4])
            cert = m.group(5)
            req((lo, hi, n) == (i, i, nn) and (r, ss, nn) == (rows[i]["r"], rows[i]["s"], 2000000), "singleton params " + name)
            if i in (323, 999):
                req(cert == f"B699Middle.height_{i}_certified", "special height consumer")
                cert_source = read(LEAN / f"heightRows/CertifiedHeight{i}.lean")
                expected = f"heightValid_of_raw (i := {i}) (r := {r}) (s := {ss}) (N := {nn}) (t := {counts[i]}) Counts.count_{i} raw_height_{i}"
            else:
                req(cert == f"height_{i}", "height consumer " + name)
                cert_source = s
                expected = f"heightValid_of_raw (i := {i}) (r := {r}) (s := {ss}) (N := {nn}) (t := {counts[i]}) Counts.count_{i} raw_{i}"
            req(expected in norm(cert_source), "raw/count link " + name)
            raw_links += 1
            leaves = (i,)
        elif body.startswith("tailRange_combine"):
            m = re.fullmatch(r"tailRange_combine \(lo := (\d+)\) \(mid := (\d+)\) \(hi := (\d+)\) \(N := (\d+)\) (\S+) (\S+)", body)
            req(m is not None, "tail combine syntax " + name)
            a, mid, b, nn = map(int, m.groups()[:4])
            left = tail[qualify(m.group(5), ns)]
            right = tail[qualify(m.group(6), ns)]
            req(params == (a, b, nn) and left[:3] == (a, mid, nn) and right[:3] == (mid + 1, b, nn), "tail seam " + name)
            leaves = left[3] + right[3]
        else:
            alias = tail[qualify(body, ns)]
            req(alias[:3] == params, "tail alias " + name)
            leaves = alias[3]
        req(leaves == tuple(range(lo, hi + 1)), "tail leaf interval " + name)
        tail[ns + "." + name] = (lo, hi, n, leaves)
req(tail["B699Middle.AllHeights.coverage"] == (323, 999, 2000000, tuple(range(323, 1000))), "final height range")
report["heights"] = {"blocks": len(height_files), "raw_theorems": len(raw), "consumed_raw_count_pairs": raw_links,
                     "actual_final_leaves": [323, 999], "leaf_count": 677, "input_sha256": sha(inp)}

# Resolve every PrimeChain tree to its exact ordered nodes, including all joins.
prime_files = sorted((LEAN / "primeChain/blocks").glob("Block*.lean"))
chain = {}
segment_count = 0
for path in [*prime_files, *sorted((LEAN / "primeChain/groups").glob("Group*.lean")), LEAN / "primeChain/AllBlocks.lean"]:
    s = read(path)
    ns = re.search(r"^namespace (\S+)", s, re.M).group(1)
    arrays = {int(k): tuple(map(int, re.findall(r"\d+", nums)))
              for k, nums in re.findall(r"def segment(\d+)Nodes : List Nat := \[([\d, ]+)\]", s)}
    checks = {int(k): (int(gap), int(lo), int(ref))
              for k, gap, lo, ref in re.findall(r"theorem segment(\d+)Check : trialChainCheck (\d+) (\d+) segment(\d+)Nodes = true := by\s+decide \+kernel", s)}
    req(set(arrays) == set(checks), "array/check correspondence " + path.name)
    used_segments = set()
    for name, params, body in theorem_bodies(s, "PrimeChain"):
        gap, lo, hi = params
        req(gap == 322, "chain gap")
        if name.startswith("segment"):
            seg = int(name[len("segment"):])
            req(body == f"trialChainCheck_sound segment{seg}Check", "segment body " + name)
            req(checks[seg] == (322, lo, seg), "segment check " + name)
            nodes = (lo,) + arrays[seg]
            req(len(nodes) >= 2 and nodes[-1] == hi, "segment endpoints " + name)
            req(all(0 < b - a <= 322 for a, b in zip(nodes, nodes[1:])), "segment ordered gaps " + name)
            used_segments.add(seg)
            segment_count += 1
        elif ".trans " in body:
            m = re.fullmatch(r"(\S+)\.trans (\S+)", body)
            req(m is not None, "prime join syntax " + name)
            left, right = chain[qualify(m.group(1), ns)], chain[qualify(m.group(2), ns)]
            req(left[0] == right[0] == gap and left[2] == right[1] and (lo, hi) == (left[1], right[2]), "prime join seam " + name)
            nodes = left[3] + right[3][1:]
        else:
            alias = chain[qualify(body, ns)]
            req(alias[:3] == params, "prime alias " + name)
            nodes = alias[3]
        chain[ns + "." + name] = (gap, lo, hi, nodes)
    req(used_segments == set(arrays), "unconsumed segment " + path.name)
final = chain["B699MiddleIndex.AllPrimeBlocks.joined"]
chain_input = RUN / "inputs/compact/outputs/prime_chain_2m_gap322.txt"
input_nodes = tuple(map(int, read(chain_input).split()))
req(final[:3] == (322, 2, 2000003), "final prime endpoints")
req(final[3] == input_nodes, "final composed chain is exactly compact array")
report["prime_chain"] = {"blocks": len(prime_files), "groups": 3, "segments": segment_count,
                         "nodes": len(input_nodes), "edges": len(input_nodes) - 1,
                         "first": input_nodes[0], "last": input_nodes[-1],
                         "max_gap": max(b-a for a,b in zip(input_nodes,input_nodes[1:])),
                         "exact_array_adopted": True, "input_sha256": sha(chain_input)}

# Determine the actual project import closure; no generator manifest is used.
closure = {}
def visit(path):
    rel = path.relative_to(REPO).as_posix()
    if rel in closure:
        return
    s = read(path)
    closure[rel] = sha(path)
    cleaned = strip_comments(s)
    req(not re.search(r"\b(sorry|admit|sorryAx|axiom|native_decide|unsafe)\b", re.sub(r"#print axioms[^\n]*", "", cleaned)), "source policy " + rel)
    req(not re.search(r"^\s*(?:set_option debug\.|set_option compiler\.|macro |elab |syntax |run_tac|initialize )", cleaned, re.M), "unexpected custom proof execution " + rel)
    for mod in re.findall(r"^import (\S+)", cleaned, re.M):
        mod = mod.replace("«", "").replace("»", "")
        dep = REPO.joinpath(*mod.split(".")).with_suffix(".lean")
        if dep.is_file():
            visit(dep)
visit(LEAN / "MiddleComplete.lean")
visit(LEAN / "FirstComplete.lean")
source_hash_payload = "".join(k + " " + v + "\n" for k, v in sorted(closure.items())).encode()
report["source_closure"] = {"files": len(closure), "sha256_sorted_path_hashes": hashlib.sha256(source_hash_payload).hexdigest(),
                            "policy": "no placeholder, project axiom, native_decide, unsafe or custom proof execution found"}

# Inspect concrete logs and current source hashes. Deliberately do not re-run Lean.
evidence_reports = []
accepted_sources = set()
for stamp in ("20260909T122816Z", "20260909T124652Z", "20260909T130116Z"):
    folder = RUN / "verification" / stamp
    ep = folder / "evidence.json"
    if not ep.is_file():
        ep = folder / "evidence.partial.json"
    ev = json.loads(read(ep))
    matched, completed, leaf_axioms, problems = [], [], {}, []
    for rec in ev["compile_records"]:
        src = rec["source"]
        good = rec.get("exit_code") == 0 and not rec.get("failure") and not rec.get("timed_out")
        if not good:
            continue
        completed.append(src)
        current = REPO / src
        if sha(current) != rec["source_sha256_before"] or rec["source_sha256_before"] != rec["source_sha256_after"]:
            problems.append("source differs: " + src)
            continue
        lp = REPO / rec["log"]
        if sha(lp) != rec["log_sha256"]:
            problems.append("log hash differs: " + src)
            continue
        text = read(lp)
        requested = re.findall(r"^#print axioms (\S+)", strip_comments(read(current)), re.M)
        for name in requested:
            m = re.search(r"'" + (re.escape(name) if name.startswith("B699") else r"(?:[^'\s]+\.)?" + re.escape(name)) + r"' (?:depends on axioms: \[([^\]]*)\]|does not depend on any axioms)", text, re.S)
            if not m:
                problems.append("actual axiom print absent: " + name)
                continue
            axs = [] if m.group(1) is None else [a.strip() for a in m.group(1).split(",") if a.strip()]
            if set(axs) - {"propext", "Classical.choice", "Quot.sound"}:
                problems.append("unexpected axiom: " + name)
            if name in ("B699Middle.tail_323_certified", "B699Middle.tail_999_certified", "B699Middle.HeightBlocks.B984_999.coverage", "B699Middle.common_323", "B699Middle.common_323_999", "B699MiddleIndex.common_le_two_million"):
                leaf_axioms[name] = axs
        matched.append(src)
        if ev.get("success"):
            accepted_sources.add(src)
    evidence_reports.append({"stamp": stamp, "evidence_file": ep.name, "evidence_sha256": sha(ep),
        "success": ev.get("success"), "finished_utc": ev.get("finished_utc"), "planned_closure": len(ev.get("source_closure", [])),
        "completed_records": len(completed), "matching_sources_and_logs": len(matched), "problems": problems,
        "leaf_axioms": leaf_axioms, "last_completed_source": completed[-1] if completed else None})
report["evidence"] = evidence_reports
report["not_in_finished_successful_evidence_count"] = len(set(closure) - accepted_sources)
print(json.dumps(report, ensure_ascii=False, indent=2))
