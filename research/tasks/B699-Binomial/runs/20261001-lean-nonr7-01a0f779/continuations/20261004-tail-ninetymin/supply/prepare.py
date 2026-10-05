"""Exact finite candidates, not Lean acceptance. Writes only this supply folder."""
from datetime import datetime, timezone
from pathlib import Path
import hashlib
import json
import math
import time

HERE = Path(__file__).resolve().parent
MOD = "research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-ninetymin».supply"
OLD = "research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-nonprime-onehour».supply"
CORE = "research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.ChainCore"
NS = "B699TailNinety20261004"
SEED = 20482069
STOP = datetime.fromisoformat("2026-10-04T11:32:50+00:00")


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


divisors = [2]
for value in range(3, 7000, 2):
    if all(value % p for p in divisors if p * p <= value):
        divisors.append(value)


def prime(n):
    return n >= 2 and all(n % p for p in divisors if p * p <= n)


def next_prime(p, ratio=True):
    bound = (4096 * p) // 4095 if ratio else p + 4883
    q = bound if bound % 2 else bound - 1
    while q > p and not prime(q):
        q -= 2
    if q <= p:
        raise ValueError("No prime for requested edge")
    return q


def save(name, lines, roots, extra=None):
    path = HERE / (name + ".lean")
    if path.exists():
        raise ValueError("Refuse overwrite: " + name)
    path.write_text("\n".join(lines) + "\n", encoding="utf-8", newline="\n")
    return {"file": path.name, "bytes": path.stat().st_size, "sha256": sha(path),
            "module": MOD + "." + name, "roots": roots, **(extra or {})}


def header(imports):
    return ["module", *("public import " + m for m in imports),
            "set_option autoImplicit false", "set_option relaxedAutoImplicit false",
            "set_option Elab.async false", "set_option maxRecDepth 8192",
            "set_option maxHeartbeats 4000000", "@[expose] public section"]


def block(name, values, prior_module, prior_prime, ratio):
    ns = NS + "." + name
    lines = header([MOD + ".RatioCore" if ratio else CORE,
                    "Mathlib.Tactic.NormNum.Prime", prior_module]) + ["namespace " + ns]
    roots = []
    for k, p in enumerate(values[1:], 1):
        lines += [f"theorem prime{k} : Nat.Prime {p} := by norm_num"]
        roots += [ns + f".prime{k}"]
    target = f"RatioPrimeChain {values[0]} {values[-1]}" if ratio else \
             f"B699Finite20261002.PrimeChain 4883 {values[0]} {values[-1]}"
    lines += [f"theorem chain : {target} := by"]
    for k in range(len(values) - 1):
        term = prior_prime if k == 0 else f"prime{k}"
        lines += [f"  refine .step (q := {values[k+1]}) {term} (by decide) (by decide) ?_"]
    lines += [f"  exact .singleton prime{len(values)-1}", "end " + ns]
    roots += [ns + ".chain"]
    lines += ["#print axioms " + r for r in roots]
    return save(name, lines, roots, {"firstPrime": values[0], "lastPrime": values[-1],
                                   "edgeCount": len(values) - 1, "namespace": ns})


def consumer(K, records, previous=None):
    imports = [MOD + ".RatioEndpointLegacy", records[-1]["module"]]
    if previous:
        imports.append(previous["module"])
    lines = [*("import " + m for m in imports), "set_option autoImplicit false",
             "set_option relaxedAutoImplicit false", "set_option Elab.async false",
             "namespace " + NS,
             f"theorem tail_chain_{K} : RatioPrimeChain {SEED} {records[-1]['lastPrime']} := by"]
    if previous:
        lines += [f"  have h0 := tail_chain_{previous['K']}"]
        start = 0
    else:
        lines += ["  have h0 := " + records[0]["namespace"] + ".chain"]
        start = 1
    for index, record in enumerate(records[start:], 1):
        lines += [f"  have h{index} := RatioPrimeChain.trans h{index-1} {record['namespace']}.chain"]
    count = len(records) - start
    lines += [f"  exact h{count}",
              f"theorem common_upto_{K} {{n i j : Nat}} (hi : 4883 ≤ i) (hiK : i ≤ {K})",
              "    (hij : i < j) (hjn : j ≤ n / 2) :",
              "    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=",
              f"  common_of_ratio_tail_endpoint tail_chain_{K} (by decide) hi hiK hij hjn",
              f"theorem complete_{K} {{n j : Nat}} (hij : {K} < j) (hjn : j ≤ n / 2) :",
              f"    ∃ p : Nat, p.Prime ∧ {K} ≤ p ∧ p ∣ n.choose {K} ∧ p ∣ n.choose j :=",
              f"  common_upto_{K} (by decide) (by decide) hij hjn", "end " + NS]
    roots = [NS + "." + x + f"_{K}" for x in ["tail_chain", "common_upto", "complete"]]
    lines += ["#print axioms " + r for r in roots]
    return save(f"Tail{K}Legacy", lines, roots, {"K": K, "lastPrime": records[-1]["lastPrime"]})


def main():
    if datetime.now(timezone.utc) >= STOP:
        raise TimeoutError("Shared proof source window expired")
    begun = time.perf_counter()
    old_module = OLD + ".Tail5000Block005"
    old_prime = "B699TailExtension20261004.Tail5000Block005.prime13"
    fixed = [SEED]
    for _ in range(16):
        fixed.append(next_prime(fixed[-1], ratio=False))
    fixed_record = block("FixedPilot16", fixed, old_module, old_prime, False)
    nodes, records = [SEED], []
    seed_module, seed_prime = old_module, old_prime
    consumers, stages = [], []
    for K in [6000, 10000]:
        stage_records = []
        while nodes[-1] < 4095 * K:
            width = 16 if not records else 64
            values = [nodes[-1]]
            for _ in range(width):
                values.append(next_prime(values[-1]))
                if values[-1] >= 4095 * K:
                    break
            name = "RatioPilot16" if not records else f"RatioBlock{len(records)-1:03d}"
            record = block(name, values, seed_module, seed_prime, True)
            records.append(record)
            stage_records.append(record)
            nodes += values[1:]
            seed_module = record["module"]
            seed_prime = record["namespace"] + f".prime{len(values)-1}"
        current = consumer(K, stage_records, consumers[-1] if consumers else None)
        consumers.append(current)
        stages.append({"K": K, "firstNewPrime": stage_records[0]["firstPrime"],
                       "lastPrime": nodes[-1], "additionalPrimeCount": sum(r["edgeCount"] for r in stage_records),
                       "blocks": stage_records, "consumer": current})
    payload = {"status": "exact-Python-candidates-not-Lean-accepted",
               "utc": datetime.now(timezone.utc).isoformat(), "elapsedSeconds": time.perf_counter()-begun,
               "seed": SEED, "ratio": [4095, 4096], "nodes": nodes, "fixedPilot": fixed_record,
               "stages": stages, "kernelAccepted": False, "infiniteGapProvided": False,
               "newMathematicalInputs": [], "coreSources": [
                   {"file": name, "bytes": (HERE/name).stat().st_size, "sha256": sha(HERE/name)}
                   for name in ["EndpointLegacy.lean", "RatioCore.lean", "RatioEndpointLegacy.lean", "prepare.py"]]}
    (HERE / "candidates.json").write_text(json.dumps(payload, indent=2)+"\n", encoding="utf-8")
    print(json.dumps({"status": payload["status"], "elapsedSeconds": payload["elapsedSeconds"],
                      "stages": [{k:s[k] for k in ["K", "lastPrime", "additionalPrimeCount"]} for s in stages],
                      "blocks": len(records), "fixedPilotLast": fixed[-1]}))


if __name__ == "__main__":
    main()
