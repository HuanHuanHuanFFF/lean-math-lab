"""Independent finite certificate for the bounded earlier-start region n<=369k."""
from math import lcm,isqrt
from collections import Counter
from pathlib import Path
import hashlib,json,sys,time
BASE=Path(__file__).resolve().parent
LIMIT=89693
START_MULTIPLE=369
T0=time.monotonic()

# A second exact sieve; audit every indicator by direct trial division.
SIEVE_END=2*LIMIT+1
isp=bytearray(b'\x01')*(SIEVE_END+1)
isp[:2]=b'\x00\x00'
for p in range(2,isqrt(SIEVE_END)+1):
    if isp[p]:
        for c in range(p*p,SIEVE_END+1,p): isp[c]=0
for x in range(2,SIEVE_END+1):
    trial=all(x%d for d in range(2,isqrt(x)+1))
    assert bool(isp[x])==trial,(x,isp[x],trial)
next_p=[None]*LIMIT
p=None
for x in range(SIEVE_END,-1,-1):
    if x<LIMIT: next_p[x]=p
    if isp[x]: p=x
assert all(next_p[m] is not None for m in range(1,LIMIT))
K=max(min(m,next_p[m]-m-1) for m in range(1,LIMIT))

def windows(k):
    left=[]; right=[]
    def push(x): right.append((x,lcm(x,right[-1][1] if right else 1)))
    def pop():
        if not left:
            while right:
                x=right.pop()[0]
                left.append((x,lcm(x,left[-1][1] if left else 1)))
        return left.pop()[0]
    def value(): return lcm(left[-1][1] if left else 1,right[-1][1] if right else 1)
    for x in range(1,k+1): push(x)
    vals=[value()]
    for n in range(1,LIMIT):
        assert pop()==n
        push(n+k)
        vals.append(value())
    for n in range(201): assert vals[n]==lcm(*range(n+1,n+k+1))
    return vals

queries=0
triples=0
collisions=[]
for k in range(1,K+1):
    vals=windows(k)
    earlier=Counter()
    for m in range(k,LIMIT):
        n_new=m-k
        if n_new<=START_MULTIPLE*k: earlier[vals[n_new]]+=1
        if next_p[m]<=m+k: continue
        queries+=1
        n_max=min(m-k,START_MULTIPLE*k)
        triples+=n_max+1
        if vals[m] in earlier:
            for n in range(n_max+1):
                if vals[n]==vals[m]:
                    assert n<=START_MULTIPLE*k and n+k<=m
                    assert lcm(*range(n+1,n+k+1))==lcm(*range(m+1,m+k+1))
                    collisions.append({'n':n,'m':m,'k':k,'lcm':str(vals[m])})
    if k%10==0: print(json.dumps({'progress_k':k,'elapsed_seconds':time.monotonic()-T0}),flush=True)
out={'claim':'No original-definition LCM collision in bounded earlier-start finite region',
     'range':{'1<=m<LIMIT':LIMIT,'n>=0':True,'k>0':True,'n+k<=m':True,'n<=369*k':True},
     'max_k':K,'prime_sieve_end_inclusive':SIEVE_END,'every_sieve_bit_trial_division_checked':True,
     'direct_lcm_crosscheck':'0<=n<=200, 1<=k<=71; no candidate collision bypasses direct original-definition recheck',
     'prime_free_mk_queries':queries,'integer_triples_compared_via_exact_counter':triples,
     'collisions':collisions,'python':sys.version,
     'source_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
     'elapsed_seconds':time.monotonic()-T0}
(BASE/'bounded-start-result.json').write_text(json.dumps(out,indent=2),encoding='utf8')
print(json.dumps(out,indent=2),flush=True)
