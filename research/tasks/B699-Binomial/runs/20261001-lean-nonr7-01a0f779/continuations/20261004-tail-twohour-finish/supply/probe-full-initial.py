"""Exact preparation probe only; no Lean, no claimed prime acceptance."""
from datetime import datetime, timezone
from pathlib import Path
import json
import math
import time

HERE = Path(__file__).resolve().parent
DIVISOR_LIMIT = 12000
divisors = []
for v in range(2, DIVISOR_LIMIT):
    if all(v % p for p in divisors if p*p <= v):
        divisors.append(v)

def prime(n):
    if not 2 <= n < DIVISOR_LIMIT**2:
        raise ValueError("Exact trial-divisor range exceeded")
    return all(n % p for p in divisors if p*p <= n)

def segment(seed, target):
    if not prime(seed):
        raise ValueError("Nonprime candidate seed")
    start = time.perf_counter()
    nodes = [seed]
    while nodes[-1] < target:
        q = 4096 * nodes[-1] // 4095
        if q % 2 == 0:
            q -= 1
        while q > nodes[-1] and not prime(q):
            q -= 2
        if q <= nodes[-1]:
            raise ValueError("No valid candidate edge")
        nodes.append(q)
    return dict(seed=seed, target=target, endpoint=nodes[-1],
                newPrimeCount=len(nodes)-1, blocks64=math.ceil((len(nodes)-1)/64),
                lastBlockEdges=(len(nodes)-2)%64+1,
                prepareSeconds=time.perf_counter()-start, nodes=nodes)

result = dict(status="exact-candidate-count-probe-not-kernel-accepted",
              utc=datetime.now(timezone.utc).isoformat(), divisorLimit=DIVISOR_LIMIT,
              lower=segment(10000019,19995885),
              upperTheta=segment(61439401,122568684),
              upper30000=segment(61439401,4095*30000),
              ownSeedProofNeeded=True, extraMathematicalInputs=[],
              wholeFiniteInitialAccepted=False, infiniteGapProvided=False)
(HERE/"full-initial-probe.json").write_text(json.dumps(result,indent=2)+"\n",encoding="utf-8")
print(json.dumps({k:{f:v[f] for f in v if f != "nodes"}
                  for k,v in result.items() if k in ("lower","upperTheta","upper30000")}))
