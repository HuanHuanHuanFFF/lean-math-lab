#!/usr/bin/env python3
"""Generate a sparse sequence of prime witnesses with gaps at most 72.

The old prime table is used only as untrusted input. The generated Lean proof
checks primality and each gap; no claim that the table contains all primes is
needed for interval coverage.
"""
from bisect import bisect_right
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path

repo = next(p for p in Path(__file__).resolve().parents if (p / "lake-manifest.json").is_file())
old = repo / "research/tasks/B677-Lcm/runs/20260908-interval-lcm-f0a6539/primary/prime-gap-certificate-89693.json"
primes = json.loads(old.read_text())["primes"]
chain = []
previous = 0
while previous < 89693:
    q = primes[bisect_right(primes, previous + 72) - 1]
    assert previous < q <= previous + 72
    chain.append(q)
    previous = q
run = repo / "research/tasks/B677-Lcm/runs/20260908-formalization-92c221"
output = run / "lean/finite/PrimeCertificateKernel.lean"
output.write_text(
    "import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.PrimeChain\n"
    "set_option maxHeartbeats 0\nset_option maxRecDepth 1000000\n"
    "namespace B677Finite\n"
    "def primeWitnessChain : List ℕ := [\n  " + ",".join(map(str, chain)) + "\n]\n"
    "theorem prime_witness_chain_checked : primeChainCheck 89693 72 0 primeWitnessChain = true := by decide +kernel\n"
    "theorem prime_within_72 {m : ℕ} (hm : m < 89693) : ∃ p : ℕ, p.Prime ∧ m < p ∧ p ≤ m + 72 := by\n"
    "  exact primeChainCheck_sound prime_witness_chain_checked (Nat.zero_le m) hm\n"
    "/-- info: 'B677Finite.prime_within_72' depends on axioms: [propext, Classical.choice, Quot.sound] -/\n"
    "#guard_msgs in\n#print axioms prime_within_72\n"
    "end B677Finite\n")
stamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%S%fZ")
report = {"evidence": "untrusted generated chain; requires Lean checker acceptance",
          "chain_size": len(chain), "last_prime": chain[-1],
          "max_gap": max(b - a for a, b in zip([0] + chain, chain)),
          "old_input_sha256": hashlib.sha256(old.read_bytes()).hexdigest(),
          "source_sha256": hashlib.sha256(output.read_bytes()).hexdigest(),
          "generator_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
(Path(__file__).resolve().parent / ("prime-chain-" + stamp + ".json")).write_text(json.dumps(report, indent=2) + "\n")
print(json.dumps(report, indent=2))
