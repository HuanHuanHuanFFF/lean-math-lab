"""Bounded 15000 extension. Exact candidates only; no old writes or Lean runs."""
from datetime import datetime, timezone
from pathlib import Path
import hashlib
import json
import math
import time

HERE = Path(__file__).resolve().parent
BASE = "research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations"
OLD = BASE + ".«20261004-tail-ninetymin».supply"
MOD = BASE + ".«20261004-tail-until2020».supply"
NS = "B699TailUntil202020261004"
SEED, K, WIDTH = 40956329, 15000, 64
STOP = datetime.fromisoformat("2026-10-04T12:08:00+00:00")


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


divisors = [2]
for v in range(3, 9000, 2):
    if all(v % p for p in divisors if p*p <= v):
        divisors.append(v)


def prime(n):
    if not 2 <= n < 9000**2:
        raise ValueError("Exact trial-divisor range exceeded")
    return all(n % p for p in divisors if p*p <= n)


def save(name, lines, roots, **extra):
    path = HERE / (name + ".lean")
    if path.exists():
        raise ValueError("Refuse overwrite " + name)
    path.write_text("\n".join(lines)+"\n", encoding="utf-8", newline="\n")
    return {"file": path.name, "module": MOD+"."+name, "bytes": path.stat().st_size,
            "sha256": sha(path), "roots": roots, **extra}


def main():
    begun = time.perf_counter()
    if datetime.now(timezone.utc) >= STOP:
        raise TimeoutError("Shared proof stop reached")
    records, nodes = [], [SEED]
    prior_module = OLD + ".RatioBlock044"
    prior_prime = "B699TailNinety20261004.RatioBlock044.prime48"
    while nodes[-1] < 4095*K:
        values = [nodes[-1]]
        for _ in range(WIDTH):
            q = (4096*values[-1])//4095
            if not q % 2:
                q -= 1
            while q > values[-1] and not prime(q):
                q -= 2
            if q <= values[-1]:
                raise ValueError("No valid next ratio prime")
            values.append(q)
            if q >= 4095*K:
                break
        name = f"RatioBlock{len(records):03d}"
        ns = NS + "." + name
        lines = ["module", "public import " + OLD + ".RatioCore",
                 "public import Mathlib.Tactic.NormNum.Prime", "public import " + prior_module,
                 "set_option autoImplicit false", "set_option relaxedAutoImplicit false",
                 "set_option Elab.async false", "set_option maxRecDepth 8192",
                 "set_option maxHeartbeats 4000000", "@[expose] public section", "namespace " + ns]
        roots = []
        for index, p in enumerate(values[1:], 1):
            lines += [f"theorem prime{index} : Nat.Prime {p} := by norm_num"]
            roots += [ns+f".prime{index}"]
        lines += [f"theorem chain : B699TailNinety20261004.RatioPrimeChain {values[0]} {values[-1]} := by"]
        for index in range(len(values)-1):
            term = prior_prime if index == 0 else f"prime{index}"
            lines += [f"  refine .step (q := {values[index+1]}) {term} (by decide) (by decide) ?_"]
        lines += [f"  exact .singleton prime{len(values)-1}", "end " + ns]
        roots += [ns + ".chain"]
        lines += ["#print axioms " + r for r in roots]
        record = save(name, lines, roots, firstPrime=values[0], lastPrime=values[-1],
                      edgeCount=len(values)-1, namespace=ns)
        records.append(record)
        nodes += values[1:]
        prior_module = record["module"]
        prior_prime = ns+f".prime{len(values)-1}"
    lines = ["import " + OLD + ".Tail10000Legacy", "import " + records[-1]["module"],
             "set_option autoImplicit false", "set_option relaxedAutoImplicit false",
             "set_option Elab.async false", "namespace " + NS,
             f"theorem tail_chain_15000 : B699TailNinety20261004.RatioPrimeChain 20482069 {nodes[-1]} := by",
             "  have h0 := B699TailNinety20261004.tail_chain_10000"]
    for index, r in enumerate(records, 1):
        lines += [f"  have h{index} := B699TailNinety20261004.RatioPrimeChain.trans h{index-1} {r['namespace']}.chain"]
    lines += [f"  exact h{len(records)}",
              "theorem common_upto_15000 {n i j : Nat} (hi : 4883 ≤ i) (hiK : i ≤ 15000)",
              "    (hij : i < j) (hjn : j ≤ n / 2) :",
              "    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=",
              "  B699TailNinety20261004.common_of_ratio_tail_endpoint tail_chain_15000",
              "    (by decide) hi hiK hij hjn",
              "theorem complete_15000 {n j : Nat} (hij : 15000 < j) (hjn : j ≤ n / 2) :",
              "    ∃ p : Nat, p.Prime ∧ 15000 ≤ p ∧ p ∣ n.choose 15000 ∧ p ∣ n.choose j :=",
              "  common_upto_15000 (by decide) (by decide) hij hjn", "end " + NS]
    roots = [NS+"."+r for r in ["tail_chain_15000", "common_upto_15000", "complete_15000"]]
    lines += ["#print axioms " + r for r in roots]
    consumer = save("Tail15000Legacy", lines, roots, K=K, lastPrime=nodes[-1])
    payload = {"status": "exact-Python-candidates-not-Lean-accepted", "utc": datetime.now(timezone.utc).isoformat(),
               "elapsedSeconds": time.perf_counter()-begun, "seed": SEED, "K": K, "width": WIDTH,
               "ratio": [4095,4096], "lastPrime": nodes[-1], "additionalPrimeCount": len(nodes)-1,
               "blocks": records, "consumer": consumer, "nodes": nodes,
               "generator": {"file": "prepare.py", "sha256": sha(HERE/"prepare.py")},
               "fixedBaseline": "1c2987754", "kernelAccepted": False,
               "infiniteGapProvided": False, "extraMathematicalInputs": []}
    (HERE/"candidates.json").write_text(json.dumps(payload,indent=2)+"\n",encoding="utf-8")
    print(json.dumps({k:payload[k] for k in ["status","elapsedSeconds","K","lastPrime","additionalPrimeCount"]}
                     | {"blocks":len(records),"lastBlockEdges":records[-1]["edgeCount"]}))


if __name__ == "__main__":
    main()
