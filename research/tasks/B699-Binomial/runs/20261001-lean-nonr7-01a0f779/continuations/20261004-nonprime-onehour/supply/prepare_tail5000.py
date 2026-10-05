"""Prepare a bounded optional continuation, reusing the six 4889 leaf primes.

Only writes this task's supply directory. Trial division is exact computation,
never kernel evidence. At most 16 new primality claims/edges per Lean block.
"""
from datetime import datetime, timezone
from pathlib import Path
import hashlib
import json
import math
import time

HERE = Path(__file__).resolve().parent
MOD = "research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-nonprime-onehour».supply"
CORE = "research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.ChainCore"
SEED, GAP, K, WIDTH = 20029199, 4883, 5000, 16
DEADLINE = datetime.fromisoformat("2026-10-03T18:28:13+00:00")


def digest(raw):
    return hashlib.sha256(raw).hexdigest()


def prime(n):
    return n > 1 and n % 2 != 0 and all(n % d for d in range(3, math.isqrt(n) + 1, 2))


def save(name, lines, roots, extra=None):
    path = HERE / (name + ".lean")
    raw = ("\n".join(lines) + "\n").encode()
    path.write_bytes(raw)
    return {"file": path.name, "bytes": len(raw), "sha256": digest(raw),
            "module": MOD + "." + name, "roots": roots, **(extra or {})}


def header(imports):
    return ["module", *("public import " + x for x in imports),
            "set_option autoImplicit false", "set_option relaxedAutoImplicit false",
            "set_option Elab.async false", "set_option maxRecDepth 8192",
            "set_option maxHeartbeats 4000000", "@[expose] public section"]


def main():
    if datetime.now(timezone.utc) >= DEADLINE:
        raise TimeoutError("Source window expired")
    started, tested, nodes = time.perf_counter(), 0, [SEED]
    while nodes[-1] < 4096 * K:
        if len(nodes) > 128:
            raise ValueError("Bounded candidate scope exceeded")
        q = nodes[-1] + GAP
        if q % 2 == 0:
            q -= 1
        while q > nodes[-1]:
            tested += 1
            if prime(q):
                break
            q -= 2
        if q <= nodes[-1]:
            raise ValueError("Required short edge has no candidate")
        nodes.append(q)
    blocks = []
    seed_term = "B699TailExtension20261004.prime6"
    seed_module = MOD + ".TailPrimes"
    for offset in range(0, len(nodes) - 1, WIDTH):
        values = nodes[offset:offset + WIDTH + 1]
        name = f"Tail5000Block{len(blocks):03d}"
        ns = "B699TailExtension20261004." + name
        lines = header([CORE, "Mathlib.Tactic.NormNum.Prime", seed_module]) + ["namespace " + ns]
        roots = []
        for k, p in enumerate(values[1:], 1):
            lines += [f"theorem prime{k} : Nat.Prime {p} := by norm_num"]
            roots += [ns + ".prime" + str(k)]
        lines += [f"theorem chain : B699Finite20261002.PrimeChain {GAP} {values[0]} {values[-1]} := by"]
        for k in range(len(values) - 1):
            term = seed_term if k == 0 else "prime" + str(k)
            lines += [f"  refine .step (q := {values[k+1]}) {term} (by decide) (by decide) ?_"]
        lines += [f"  exact .singleton prime{len(values)-1}", "end " + ns]
        roots += [ns + ".chain"]
        lines += ["#print axioms " + r for r in roots]
        blocks.append(save(name, lines, roots, {"firstPrime": values[0], "lastPrime": values[-1],
                                              "edgeCount": len(values) - 1, "namespace": ns}))
        seed_term = ns + ".prime" + str(len(values) - 1)
        seed_module = MOD + "." + name
    lines = ["import " + MOD + ".TailConsumerLegacy", "import " + blocks[-1]["module"],
             "set_option autoImplicit false", "set_option relaxedAutoImplicit false",
             "set_option Elab.async false", "namespace B699TailExtension20261004",
             f"theorem tail_chain_5000 : B699Finite20261002.PrimeChain {GAP} 20000093 {nodes[-1]} := by",
             "  have h0 := tail_chain"]
    for idx, b in enumerate(blocks, 1):
        lines += [f"  have h{idx} := B699Finite20261002.PrimeChain.trans h{idx-1} {b['namespace']}.chain"]
    lines += [f"  exact h{len(blocks)}", f"theorem common_upto_5000 {{n i j : Nat}} (hi : 4883 ≤ i) (hiK : i ≤ {K})",
              "    (hij : i < j) (hjn : j ≤ n / 2) :",
              "    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j :=",
              "  common_of_tail_chain tail_chain_5000 (by decide) hi hiK hij hjn",
              "theorem complete_5000 {n j : Nat} (hij : 5000 < j) (hjn : j ≤ n / 2) :",
              "    ∃ p : Nat, p.Prime ∧ 5000 ≤ p ∧ p ∣ n.choose 5000 ∧ p ∣ n.choose j :=",
              "  common_upto_5000 (by decide) (by decide) hij hjn", "end B699TailExtension20261004"]
    roots = ["B699TailExtension20261004." + x for x in ["tail_chain_5000", "common_upto_5000", "complete_5000"]]
    lines += ["#print axioms " + r for r in roots]
    final = save("Tail5000ConsumerLegacy", lines, roots)
    receipt = {"utc": datetime.now(timezone.utc).isoformat(), "status": "exact-Python-candidate-not-Lean-accepted",
               "reusedCandidateSeed": SEED, "gap": GAP, "K": K, "targetNExclusive": 4096*K,
               "lastPrime": nodes[-1], "additionalPrimeCount": len(nodes)-1, "totalNewPrimeCountIncluding4889": len(nodes)+5,
               "trialCandidateCount": tested, "elapsedSeconds": time.perf_counter()-started,
               "maxEdge": max(b-a for a,b in zip(nodes,nodes[1:])), "nodes": nodes,
               "blocks": blocks, "finalConsumer": final,
               "newMathematicalInputs": [], "kernelAccepted": False, "infiniteGapProvided": False}
    (HERE / "tail5000-candidate.json").write_text(json.dumps(receipt, indent=2)+"\n", encoding="utf-8")
    print(json.dumps({k:receipt[k] for k in ["status", "K", "lastPrime", "additionalPrimeCount", "totalNewPrimeCountIncluding4889", "trialCandidateCount", "elapsedSeconds", "maxEdge"]}))


if __name__ == "__main__":
    main()
