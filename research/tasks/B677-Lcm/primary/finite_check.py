"""Exact independent finite check for B677. No probabilistic fingerprints."""
from pathlib import Path
from math import gcd, isqrt, lcm
import argparse, datetime, hashlib, json, time
P=Path(__file__).resolve().parent
ap=argparse.ArgumentParser()
ap.add_argument('--limit',type=int,default=89693,help='exclusive bound on later interval start m')
a=ap.parse_args(); limit=a.limit
assert limit>=3
start=time.monotonic()
maxnum=2*limit+10
sieve=bytearray(b'\x01')*(maxnum+1); sieve[0:2]=b'\x00\x00'
for q in range(2,isqrt(maxnum)+1):
    if sieve[q]: sieve[q*q::q]=b'\x00'*(((maxnum-q*q)//q)+1)
primes=[p for p in range(2,maxnum+1) if sieve[p]]
# Independent trial-division reconstruction through the first prime >= limit.
endprime=next(p for p in primes if p>=limit)
trial=[]
for x in range(2,endprime+1):
    if all(x%p for p in trial if p*p<=x): trial.append(x)
assert trial==[p for p in primes if p<=endprime]
nextp=[0]*limit
idx=0
for m in range(limit):
    while primes[idx]<=m: idx+=1
    nextp[m]=primes[idx]
maxk=max(min(m,nextp[m]-m-1) for m in range(1,limit))
print(json.dumps({'phase':'bounds','limit_exclusive':limit,'max_possible_k':maxk,'prime_gap_verified_through':endprime,'prime_count':len(trial)}),flush=True)
# Sparse exact LCM table: table[t][a] = lcm(a+1,...,a+2^t).
nums=list(range(1,limit+maxk+1)); table=[nums]
for t in range(1,maxk.bit_length()):
    half=1<<(t-1); prev=table[-1]
    table.append([lcm(prev[i],prev[i+half]) for i in range(len(nums)-(1<<t)+1)])
def query(n,k):
    t=k.bit_length()-1; span=1<<t
    return lcm(table[t][n],table[t][n+k-span])
# Independent direct definition checks, including fibre non-contiguity example.
for k in range(1,min(maxk,80)+1):
    for n in range(101):
        assert query(n,k)==lcm(*range(n+1,n+k+1))
if limit>100:
    assert query(13,6)==query(15,6)==1627920
    assert query(14,6)==232560
rows=[]; witness=None
for k in range(1,maxk+1):
    seen={}; equal_overlaps=0; checked=0
    for m in range(limit):
        v=query(m,k)
        earliest=seen.get(v)
        if earliest is not None:
            if m-earliest>=k:
                witness={'n':earliest,'m':m,'k':k,'lcm':str(v),'d_over_k_numerator':m-earliest}
                assert lcm(*range(earliest+1,earliest+k+1))==lcm(*range(m+1,m+k+1))
                break
            equal_overlaps+=1
        else: seen[v]=m
        checked+=1
    row={'k':k,'intervals_checked':checked,'distinct_lcms':len(seen),'overlap_equal_hits':equal_overlaps}
    rows.append(row)
    if k%5==0 or witness or k==maxk:
        print(json.dumps({'phase':'sweep',**row,'elapsed_seconds':time.monotonic()-start,'witness':witness}),flush=True)
    if witness: break
report={'time_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'limit_exclusive':limit,'max_k_from_complete_prime_gaps':maxk,'prime_gap_verified_through':endprime,'prime_count':len(trial),'total_interval_queries':sum(r['intervals_checked'] for r in rows),'witness':witness,'rows':rows,'elapsed_seconds':time.monotonic()-start,'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),'evidence':'Exact finite integer computation with independently reconstructed prime list and direct-definition range checks; not Lean kernel verification. Every collision with m<limit has k at most max_k because the later interval cannot contain any prime.'}
(P/f'finite-check-{limit}.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf8')
(P/f'prime-gap-certificate-{limit}.json').write_text(json.dumps({'primes':trial,'last_prime':endprime,'limit':limit,'max_k':maxk},indent=2)+'\n',encoding='utf8')
print(json.dumps({k:v for k,v in report.items() if k!='rows'}),flush=True)
