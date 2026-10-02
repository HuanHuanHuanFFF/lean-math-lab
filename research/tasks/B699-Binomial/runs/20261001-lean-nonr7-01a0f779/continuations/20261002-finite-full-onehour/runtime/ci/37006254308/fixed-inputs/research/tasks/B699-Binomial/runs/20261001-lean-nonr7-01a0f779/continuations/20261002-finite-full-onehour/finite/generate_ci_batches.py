"""Prepare proof sources from fixed old literals. Run only through the runtime CI.

No prime search occurs. Kernel compilation, axiom audits, exact-type review and
checker receipts, not this generator, establish acceptance.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import re
from datetime import datetime, timezone
from pathlib import Path

OLD = "research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261002-finite-onehour/finite"
NEW = "research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261002-finite-full-onehour/finite"
MODULE = "research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-full-onehour».finite.generated"
PRIMORIAL = "research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.alternative.primorial.PrimorialData"
CORE = "research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.ChainCore"
GAP = 4883
UPPER = 20000000
TERMINAL = 20000093
SOURCE_FREEZE = datetime.fromisoformat("2026-10-02T13:00:00+00:00")


def sha(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def prepare_literals(repo: Path) -> tuple[list[int], list[dict]]:
    records = json.loads((repo / OLD / "old-closure-byte-plan.json").read_text(encoding="utf-8-sig"))
    frozen = []
    nodes = [2]
    for rec in records:
        rel = rec["source"].replace("\\", "/")
        if not re.search(r"/extension/primeChain/blocks/Block\d{3}\.lean$", rel):
            continue
        raw = (repo / rel).read_bytes()
        if len(raw) != rec["bytes"] or sha(raw) != rec["sha256"]:
            raise ValueError(f"Frozen input byte mismatch: {rel}")
        frozen.append({"path": rel, "bytes": len(raw), "sha256": sha(raw)})
        for text in re.findall(r"def tail\d+ : List Nat := \[([^\]]+)\]", raw.decode("utf-8")):
            nodes.extend(int(x.strip()) for x in text.split(","))
    if len(frozen) != 228 or nodes[-1] != TERMINAL:
        raise ValueError("Wrong complete frozen input pool")
    if any(a >= b for a, b in zip(nodes, nodes[1:])):
        raise ValueError("Non-increasing given literals")
    selected = [2]
    cursor = 1
    while cursor < len(nodes):
        end = cursor
        while end < len(nodes) and nodes[end] <= selected[-1] + GAP:
            end += 1
        if end == cursor:
            raise ValueError("Uncovered selection edge")
        selected.append(nodes[end - 1])
        cursor = end
    if selected[-1] != TERMINAL:
        raise ValueError("Wrong selected endpoint")
    return selected, frozen


def header(imports: list[str]) -> list[str]:
    return ["module", *("public import " + x for x in imports),
            "set_option autoImplicit false", "set_option relaxedAutoImplicit false",
            "set_option Elab.async false", "set_option maxRecDepth 8192",
            "set_option maxHeartbeats 4000000", "@[expose] public section"]


def write(repo: Path, name: str, lines: list[str]) -> dict:
    if datetime.now(timezone.utc) >= SOURCE_FREEZE:
        raise TimeoutError("Original-round mathematical source freeze reached")
    rel = NEW + "/generated/" + name + ".lean"
    path = repo / rel
    if path.exists():
        raise ValueError(f"Refusing to overwrite proof source: {rel}")
    path.parent.mkdir(parents=True, exist_ok=True)
    raw = ("\n".join(lines) + "\n").encode("utf-8")
    path.write_bytes(raw)
    return {"path": rel, "bytes": len(raw), "sha256": sha(raw), "name": name}


def block(repo: Path, name: str, values: list[int], method: str) -> dict:
    if method == "normnum":
        lines = header([CORE, "Mathlib.Tactic.NormNum.Prime"])
        lines += ["namespace B699FiniteFull20261002." + name]
        for k, value in enumerate(values):
            lines.append(f"theorem prime{k} : Nat.Prime {value} := by norm_num")
        lines += [f"theorem chain : B699Finite20261002.PrimeChain {GAP} {values[0]} {values[-1]} := by"]
        for k, value in enumerate(values[:-1]):
            lines.append(f"  refine .step (q := {values[k+1]}) prime{k} (by decide) (by decide) ?_")
        lines.append(f"  exact .singleton prime{len(values)-1}")
        lines += ["end B699FiniteFull20261002." + name]
        lines += [f"#print axioms B699FiniteFull20261002.{name}.prime{k}" for k in range(len(values))]
        lines += [f"#print axioms B699FiniteFull20261002.{name}.chain"]
        result = write(repo, name, lines)
        return {**result, "lo": values[0], "hi": values[-1], "nodeCount": len(values), "method": method}
    lines = header([PRIMORIAL])
    lines += ["namespace B699FiniteFull20261002." + name,
              "open B699AltExtension20261002",
              "def tail : List Nat := [" + ", ".join(map(str, values[1:])) + "]",
              f"theorem check : primorialChainCheck 4473 primorial4473 {GAP} {values[0]} tail = true := by",
              "  decide +kernel",
              f"theorem chain : B699Finite20261002.PrimeChain {GAP} {values[0]} {values[-1]} :=",
              "  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473)",
              f"    (gap := {GAP}) (p := {values[0]}) (qs := tail)",
              "    basis4473_complete basis4473_prod_eq check",
              "end B699FiniteFull20261002." + name,
              "#print axioms B699FiniteFull20261002." + name + ".check",
              "#print axioms B699FiniteFull20261002." + name + ".chain"]
    result = write(repo, name, lines)
    return {**result, "lo": values[0], "hi": values[-1], "nodeCount": len(values)}


def complete(repo: Path, blocks: list[dict]) -> dict:
    lines = header([MODULE + "." + b["name"] for b in blocks])
    lines += ["namespace B699FiniteFull20261002"]
    current = [{"lo": b["lo"], "hi": b["hi"], "term": b["name"] + ".chain"} for b in blocks]
    level = 0
    while len(current) > 1:
        nxt = []
        for k in range(0, len(current), 2):
            if k + 1 == len(current):
                nxt.append(current[k])
                continue
            left, right = current[k:k + 2]
            if left["hi"] != right["lo"]:
                raise ValueError("Disconnected block endpoints")
            name = f"join{level}_{k // 2}"
            lines += [f"theorem {name} : B699Finite20261002.PrimeChain {GAP} {left['lo']} {right['hi']} :=",
                      f"  B699Finite20261002.PrimeChain.trans {left['term']} {right['term']}"]
            nxt.append({"lo": left["lo"], "hi": right["hi"], "term": name})
        current = nxt
        level += 1
    lines += [f"theorem complete_chain : B699Finite20261002.PrimeChain {GAP} 2 {TERMINAL} := {current[0]['term']}",
              "end B699FiniteFull20261002", "#print axioms B699FiniteFull20261002.complete_chain"]
    return write(repo, "CompleteChain", lines)


def main() -> None:
    if datetime.now(timezone.utc) >= SOURCE_FREEZE:
        raise TimeoutError("Original-round mathematical source freeze reached")
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo", type=Path, required=True)
    parser.add_argument("--mode", choices=["batch", "full"], required=True)
    parser.add_argument("--method", choices=["normnum", "primorial"], required=True)
    parser.add_argument("--start", type=int, default=0)
    parser.add_argument("--nodes", type=int, choices=[32, 64, 128], default=128)
    parser.add_argument("--accepted-cost-receipt", type=Path, required=True)
    args = parser.parse_args()
    # The caller supplies an actual accepted cost checkpoint. Refuse author labels.
    cost = json.loads(args.accepted_cost_receipt.read_text(encoding="utf-8-sig"))
    if not (cost.get("actualCompilerExit") == 0 and cost.get("actualCheckerExit") == 0
            and cost.get("actualAxiomAuditAccepted") is True
            and cost.get("actualCostSeconds", 0) > 0 and cost.get("fixedSourceSha256")):
        raise ValueError("Actual fixed-source kernel/audit/checker cost checkpoint required")
    required_method = "normnum-constructive-chain" if args.method == "normnum" else "primorial-gcd-reflected-chain"
    if args.mode == "full" and not (
            cost.get("method") == required_method
            and cost.get("acceptedNodeCount", 0) >= 128):
        raise ValueError("Full generation requires an accepted same-method 128-node cost checkpoint")
    selected, frozen = prepare_literals(args.repo)
    prefix = "NormNum" if args.method == "normnum" else "Primorial"
    start_node = len(selected) - args.nodes if args.start == -1 else args.start
    if args.mode == "batch":
        if start_node < 0 or start_node + args.nodes > len(selected):
            raise ValueError("Batch outside selected literals")
        outputs = [block(args.repo, f"{prefix}Batch{start_node:05d}", selected[start_node:start_node + args.nodes], args.method)]
    else:
        outputs = []
        for start in range(0, len(selected) - 1, args.nodes - 1):
            values = selected[start:min(start + args.nodes, len(selected))]
            outputs.append(block(args.repo, f"{prefix}Block{len(outputs):03d}", values, args.method))
        outputs.append(complete(args.repo, outputs))
    report = {"selectionRule": "farthest fixed literal <= previous+4883; no primality search",
              "method": args.method,
              "frozenInputs": frozen, "selected": selected, "selectedCount": len(selected),
              "outputs": outputs, "scope": "closed chain 2..20000093 only after actual acceptance",
              "actualCostCheckpoint": str(args.accepted_cost_receipt), "executedLean": False}
    target = args.repo / NEW / "generated" / (f"{args.method}-{args.mode}-{start_node}-source-map.json")
    target.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"selectedCount": len(selected), "sourceCount": len(outputs), "executedLean": False}))


if __name__ == "__main__":
    main()
