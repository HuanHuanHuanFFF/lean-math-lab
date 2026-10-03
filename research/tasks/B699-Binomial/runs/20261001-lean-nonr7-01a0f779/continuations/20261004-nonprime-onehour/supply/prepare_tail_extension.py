"""Bounded six-edge candidate generation; this is not Lean acceptance."""
from datetime import datetime, timezone
from pathlib import Path
import hashlib
import json
import math
import time

HERE = Path(__file__).resolve().parent
SEED, GAP, K = 20000093, 4883, 4889
TARGET = 4096 * K
DEADLINE = datetime.fromisoformat("2026-10-03T18:28:13+00:00")


def is_prime(n):
    if n < 2 or n % 2 == 0:
        return n == 2
    return all(n % d for d in range(3, math.isqrt(n) + 1, 2))


def main():
    if datetime.now(timezone.utc) >= DEADLINE:
        raise TimeoutError("Candidate source window expired")
    started = time.perf_counter()
    values, tested = [SEED], 0
    while values[-1] < TARGET:
        if len(values) > 7:
            raise ValueError("Six-edge bounded scope exceeded")
        top = values[-1] + GAP
        q = top if top % 2 else top - 1
        while q > values[-1]:
            tested += 1
            if is_prime(q):
                break
            q -= 2
        if q <= values[-1]:
            raise ValueError("No candidate in the fixed edge")
        values.append(q)
    mod = "research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-nonprime-onehour».supply"
    leaf = ["module", "public import Mathlib.Tactic.NormNum.Prime",
            "set_option autoImplicit false", "set_option relaxedAutoImplicit false",
            "set_option Elab.async false", "set_option maxRecDepth 8192",
            "set_option maxHeartbeats 4000000", "@[expose] public section",
            "namespace B699TailExtension20261004"]
    leaf += [f"theorem prime{k} : Nat.Prime {p} := by norm_num" for k, p in enumerate(values[1:], 1)]
    leaf += ["end B699TailExtension20261004"]
    leaf += [f"#print axioms B699TailExtension20261004.prime{k}" for k in range(1, len(values))]
    raw = ("\n".join(leaf) + "\n").encode()
    (HERE / "TailPrimes.lean").write_bytes(raw)
    receipt = {
        "utc": datetime.now(timezone.utc).isoformat(), "status": "exact-Python-candidate-not-Lean-accepted",
        "seedAlreadyLeanAccepted": SEED, "seedReproved": False, "gap": GAP,
        "candidateCompleteUpperIndex": K, "targetNExclusive": TARGET,
        "values": values, "edgeCount": len(values) - 1,
        "edgeDifferences": [b - a for a, b in zip(values, values[1:])],
        "newCandidateTrialCount": tested, "elapsedSeconds": time.perf_counter() - started,
        "newLeafBytes": len(raw), "newLeafSha256": hashlib.sha256(raw).hexdigest(),
        "leafModule": mod + ".TailPrimes", "kernelAccepted": False,
        "genuineUnboundedGapProvided": False,
    }
    (HERE / "tail-candidate.json").write_text(json.dumps(receipt, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(receipt))


if __name__ == "__main__":
    main()
