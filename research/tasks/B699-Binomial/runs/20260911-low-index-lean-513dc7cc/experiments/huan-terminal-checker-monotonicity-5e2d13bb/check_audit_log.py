"""Validate a completed Lean audit log; this program never starts Lean."""
from __future__ import annotations
import argparse, json, re
from pathlib import Path
ROOT = Path(__file__).resolve().parent
AXIOM = re.compile(r"'([^']+)'\s+(?:depends on axioms:\s*\[([^\]]*)\]|does not depend on any axioms)", re.S)
ALLOWED = {"propext", "Classical.choice", "Quot.sound"}

def validate(text, expected, exit_code):
    if exit_code != 0:
        raise ValueError("Lean did not return exit code 0")
    if re.search(r"\bsorry(?:Ax)?\b|\badmit\b|\berror:", text):
        raise ValueError("Lean log contains an error or a placeholder")
    printed = {}
    for mat in AXIOM.finditer(text):
        name, axioms = mat.groups()
        if name not in expected:
            continue
        if name in printed:
            raise ValueError("Duplicate axiom record: " + name)
        listed = [] if axioms is None else [x.strip() for x in axioms.split(",") if x.strip()]
        if set(listed) - ALLOWED:
            raise ValueError("Unexpected axioms for " + name + ": " + repr(listed))
        printed[name] = listed
    missing = sorted(set(expected) - printed.keys())
    if missing:
        raise ValueError("Missing axiom records: " + repr(missing))
    return {"status": "PASS_AUDIT_LOG", "checked_roots": len(expected), "axioms": printed}

def self_test(expected):
    rows = [f"'{name}' depends on axioms: [propext,\n Classical.choice,\n Quot.sound]" for name in expected]
    rows[0] = f"'{expected[0]}' does not depend on any axioms"
    log = "\n".join(rows)
    assert validate(log, expected, 0)["checked_roots"] == len(expected)
    cases = {
        "missing_root": ("\n".join(rows[:-1]), 0),
        "unexpected_axiom": (log.replace("Quot.sound", "Test.unjustified", 1), 0),
        "duplicate_root": (log + "\n" + rows[0], 0),
        "failed_lean_exit": (log, 1),
        "lean_error": (log + "\nAudit.lean:1:0: error: failed", 0),
        "sorryAx": (log + "\nsorryAx", 0),
    }
    rejected = {}
    for name, (bad, code) in cases.items():
        try:
            validate(bad, expected, code)
        except ValueError as exc:
            rejected[name] = str(exc)
        else:
            raise AssertionError("Guard accepted mutation " + name)
    return {"status": "PASS_GUARD_BEHAVIOR_NOT_LEAN", "synthetic_roots": len(expected), "rejected_mutations": rejected, "boundary": "Synthetic parser tests only; no new C2 Lean proof has run."}

if __name__ == "__main__":
    ap = argparse.ArgumentParser()
    ap.add_argument("--audit", default="Audit.lean", help="Audit.lean or one of the eight modular audit filenames")
    ap.add_argument("--log", type=Path)
    ap.add_argument("--lean-exit-code", type=int)
    ap.add_argument("--self-test", action="store_true")
    ap.add_argument("--output", help="Optional new JSON file beneath this experiment directory")
    args = ap.parse_args()
    catalog = json.loads((ROOT / "AUDIT_ROOTS.json").read_text(encoding="utf-8"))
    expected = [r["name"] for r in catalog["public_roots"] if args.audit == "Audit.lean" or r["audit"] == args.audit]
    assert expected, "Unknown audit filename"
    audit_source = (ROOT / args.audit).read_text(encoding="utf-8")
    assert re.findall(r"^#print axioms (\S+)", audit_source, re.M) == expected
    assert len(re.findall(r"^#check \(@", audit_source, re.M)) == len(expected)
    if args.self_test:
        result = self_test(expected)
    else:
        if args.log is None or args.lean_exit_code is None:
            ap.error("A completed log and its actual Lean exit code are required")
        result = validate(args.log.read_text(encoding="utf-8-sig"), expected, args.lean_exit_code)
        result["boundary"] = "Log acceptance only; source/olean/toolchain binding must also pass the run's verifier."
    if args.output:
        output = (ROOT / args.output).resolve()
        output.relative_to(ROOT)
        with output.open("x", encoding="utf-8") as f:
            json.dump(result, f, ensure_ascii=False, indent=2)
            f.write("\n")
    print(json.dumps(result, ensure_ascii=False))
