#!/usr/bin/env python3
"""Generate positive prime witnesses, not an assumed prime-gap table."""
from pathlib import Path
from math import isqrt
import json,time,hashlib
ROOT=Path(__file__).resolve().parents[1]
N=20_000_000;GAP=184
start=time.perf_counter();limit=N+GAP
sieve=bytearray(b'\1')*(limit//2+1);sieve[0]=0
for p in range(3,isqrt(limit)+1,2):
    if sieve[p//2]:
        a=p*p//2
        sieve[a::p]=b'\0'*((len(sieve)-1-a)//p+1)
chain=[2]
while chain[-1]<N:
    candidate=chain[-1]+GAP
    if candidate%2==0:candidate-=1
    while candidate>chain[-1] and not sieve[candidate//2]:candidate-=2
    assert candidate>chain[-1],('prime chain stuck',chain[-1])
    chain.append(candidate)
path=ROOT/'outputs'/'prime_chain_20m.txt'
path.write_text(''.join(f'{x}\n' for x in chain))
out={'status':'GENERATED_NOT_YET_INDEPENDENTLY_CHECKED','target':N,'max_allowed_gap':GAP,'count':len(chain),'first':chain[0],'last':chain[-1],'max_actual_gap':max(b-a for a,b in zip(chain,chain[1:])),'sha256':hashlib.sha256(path.read_bytes()).hexdigest(),'elapsed_seconds_diagnostic':time.perf_counter()-start}
(ROOT/'outputs'/'prime_chain_generation.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2))
