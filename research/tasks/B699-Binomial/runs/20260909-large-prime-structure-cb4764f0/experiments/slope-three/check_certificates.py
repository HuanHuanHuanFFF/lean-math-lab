"""Independent checker for NEW slope-three certificate data.
Uses product/factorial binomials and trial-prime coverage, not the generating sieve.
"""
import json, math, hashlib
from pathlib import Path
base=Path(__file__).resolve().parent
curve=json.loads((base/"curve.json").read_text())
data=json.loads((base/"compression.json").read_text())
def prime(p):
    return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))
def C(n,k):
    if not 0<=k<=n:return 0
    k=min(k,n-k)
    top=math.prod(range(n-k+1,n+1))
    bot=math.factorial(k)
    assert top%bot==0
    return top//bot
rows={r["i"]:r for r in curve["rows"]}
assert set(rows)==set(range(3,220))
ps=[p for p in range(2,434) if prime(p)]
for i,r in rows.items():
    z=(i+2)//3;h=i-2*z
    K=math.prod(p for p in ps if i<p<=2*i-5)
    assert (r["z"],r["h"],int(r["K"]))==(z,h,K)
    if not r["candidate_count"]:
        assert i in (3,4,5,7) and K==1
    else:
        first,last=r["j_first"],r["j_last"]
        assert first==i+1 and last>=first
        assert last<=198368
        assert C(last,h)<K*K<=C(last+1,h)
        assert r["candidate_count"]==last-i and r["n_last"]==3*last
I=219;cover_count=0
for ix,step in enumerate(data["steps"]):
    N=max((r["n_last"] or 0 for i,r in rows.items() if i<=I),default=0)
    assert (step["i_cap_before"],step["n_cap"])==(I,N)
    G=step["proved_i_cap"];start=1
    for c in step["prime_cover_certificates"]:
        a,b,p=c["j_first"],c["j_last"],c["p"]
        assert a==start and a<=b<=N//3 and prime(p)
        assert p<=3*a and 3*b-p<=G
        start=b+1;cover_count+=1
    assert start==N//3+1
    if ix+1<len(data["steps"]):assert G<I
    I=min(I,G)
assert data["final_i_cap"]==I and data["final_n_cap"]==N
remaining={(r["n"],r["i"],r["j"]):r for r in data["remaining_pair_certificates"]}
assert len(remaining)==len(data["remaining_pair_certificates"])
all_primes=[p for p in range(2,N+1) if prime(p)]
seen=set();omitted=0;total=0
for i,r in rows.items():
    if i>I or r["j_first"] is None:continue
    for j in range(r["j_first"],r["j_last"]+1):
        n=3*j;total+=1
        assert n<=N and 1<=i<j<=n//2
        top=next((p for p in reversed(all_primes) if p<=n),None)
        if top>n-i:
            assert top>j>i and n%top<i<j<top
            omitted+=1;continue
        key=(n,i,j)
        assert key in remaining,("missing original input",key)
        c=remaining[key];seen.add(key)
        A,B=C(n,i),C(n,j)
        assert (A,B,math.gcd(A,B))==(c["A"],c["B"],c["gcd"])
        p=c["p"]
        assert prime(p) and p>=i and A%p==0 and B%p==0
        assert c["e_i"]>=1 and c["e_j"]>=1
        assert n%(p**c["e_i"])<i%(p**c["e_i"])
        assert n%(p**c["e_j"])<j%(p**c["e_j"])
assert seen==set(remaining) and len(seen)==36
out={"status":"PASS","scope":"independent exact checker for new coefficient/certified-prime-cover/residue data",
     "coefficient_rows":217,"prime_cover_intervals":cover_count,"final_original_domain_pairs":total,
     "verified_top_prime_omissions":omitted,"original_pairs_checked_by_product_factorial_and_gcd":len(seen),
     "p_equals_i_pairs":[list(k) for k,c in remaining.items() if c["p"]==c["i"]],
     "does_not_replay_historical_sieve":True,"is_lean_kernel_certificate":False,
     "input_sha256":{name:hashlib.sha256((base/name).read_bytes()).hexdigest()
                     for name in ("curve.py","curve.json","compress.py","compression.json")},
     "checker_sha256":hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
print(json.dumps(out,indent=2))

