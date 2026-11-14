"""Reject non-Std3, missing and duplicate axiom prints in independent logs.

This checks logs only; it never marks a proof accepted. Runtime, fixed source,
object and standard kernel bindings remain separate mandatory acceptance checks.
"""
import argparse
from collections import Counter
import hashlib
import json
from pathlib import Path
import re

ALLOWED = frozenset({"propext", "Classical.choice", "Quot.sound"})
WITH = re.compile(r"'([^'\n]+)'\s+depends on axioms:\s*\[([^\]]*)\]")
WITHOUT = re.compile(r"'([^'\n]+)'\s+does not depend on any axioms")


def inspect(text, expected):
    # The official sandbox uses --json. Decode its MessageData strings before
    # reading axiom lists, otherwise an escaped newline can look like an axiom
    # named "\\nClassical.choice". Preserve non-JSON stderr as ordinary text.
    messages, json_errors = [], []
    for line in text.splitlines():
        try:
            value = json.loads(line)
        except (json.JSONDecodeError, TypeError):
            messages.append(line)
            continue
        if isinstance(value, dict):
            if value.get("severity") == "error":
                json_errors.append("Lean JSON error severity present")
            payload = next((value[k] for k in ["data", "text", "message"]
                            if isinstance(value.get(k), str)), None)
            messages.append(payload if payload is not None else line)
        else:
            messages.append(line)
    text = "\n".join(messages)
    records = [(n, [x.strip() for x in a.split(",") if x.strip()]) for n, a in WITH.findall(text)]
    records += [(n, []) for n in WITHOUT.findall(text)]
    counts = Counter(n for n, _ in records)
    errors = list(json_errors)
    for name in expected:
        if counts[name] != 1:
            errors.append(f"{name}: expected one actual print, got {counts[name]}")
    for name, axioms in records:
        if name not in expected:
            errors.append(f"unexpected declaration {name}")
        extra = sorted(set(axioms) - ALLOWED)
        if extra:
            errors.append(f"{name}: forbidden transitive axioms {extra}")
        if len(axioms) != len(set(axioms)):
            errors.append(f"{name}: repeated axiom names")
    if re.search(r"(?m)(?:^|\s)(?:error:|error\[|PANIC|uncaught exception)", text):
        errors.append("Lean error marker present")
    return {"passed": not errors, "errors": errors,
            "expectedDeclarations": expected,
            "actualRecords": [{"declaration": n, "axioms": a} for n, a in records],
            "proofAccepted": False}


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    for flag in ["contract", "group", "log", "output"]:
        parser.add_argument("--" + flag, required=True)
    args = parser.parse_args()
    contract_raw = Path(args.contract).read_bytes()
    contract = json.loads(contract_raw)
    groups = [g for g in contract["groups"] if g["id"] == args.group]
    if len(groups) != 1 or set(contract["allowedAxioms"]) != ALLOWED:
        raise SystemExit("invalid contract group or whitelist")
    raw = Path(args.log).read_bytes()
    result = inspect(raw.decode("utf-8"), groups[0]["expectedAxiomDeclarations"])
    result.update({"group": args.group, "verifier": "/root/b699_contribution_scope",
                   "status": "std3-log-audit-pass-only" if result["passed"] else "rejected",
                   "contractSha256": hashlib.sha256(contract_raw).hexdigest(),
                   "logSha256": hashlib.sha256(raw).hexdigest(),
                   "sourceObjectRuntimeKernelBindingsChecked": False})
    Path(args.output).write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"group": args.group, "passed": result["passed"],
                      "errors": result["errors"], "proofAccepted": False}))
    raise SystemExit(0 if result["passed"] else 1)
