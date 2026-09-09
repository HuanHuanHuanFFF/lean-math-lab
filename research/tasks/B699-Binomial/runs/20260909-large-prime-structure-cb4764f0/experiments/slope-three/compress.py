"""Compress the NEW slope-three finite box by certified prime-cover intervals.
Reuses the 217 saved exact K3/binomial cutoffs. It does not replay a B699 campaign.
"""
import json, math, hashlib
from pathlib import Path
base=Path(__file__).resolve().parent
curve=json.loads((base/"curve.json").read_text(encoding="utf-8"))
rows={r["i"]:r for r in curve["rows"]}
def table(N):
    mark=bytearray(b"\1")*(N+1)
    mark[:2]=b"\0\0"
    for p in range(2,math.isqrt(N)+1):
        if mark[p]: mark[p*p:N+1:p]=b"\0"*(((N-p*p)//p)+1)
    prev=[0]*(N+1); last=0
    for n in range(2,N+1):
        if mark[n]:last=n
        prev[n]=last
    return mark,prev
def independent_prime(p):
    return p>=2 and all(p%q for q in range(2,math.isqrt(p)+1))
steps=[]; I=219
while True:
    N=max((r["n_last"] or 0 for i,r in rows.items() if i<=I),default=0)
    mark,prev=table(N)
    G=max((n-prev[n] for n in range(3,N+1,3)),default=0)
    certificates=[]; j=1
    while j<=N//3:
        p=prev[3*j]
        end=min(N//3,(p+G)//3)
        assert end>=j and p<=3*j
        certificates.append(dict(j_first=j,j_last=end,p=p))
        j=end+1
    # Independent checker does not trust the sieve or largest-prime claims.
    start=1
    for c in certificates:
        assert c["j_first"]==start and c["j_last"]>=start
        assert independent_prime(c["p"])
        assert c["p"]<=3*start
        assert 3*c["j_last"]-c["p"]<=G
        start=c["j_last"]+1
    assert start==N//3+1
    steps.append(dict(i_cap_before=I,n_cap=N,proved_i_cap=G,
                      prime_cover_certificates=certificates))
    if G>=I:break
    I=G
finalN=steps[-1]["n_cap"]
mark,prev=table(finalN)
prime_list=[p for p in range(2,finalN+1) if mark[p]]
remaining=[]
checked_pairs=0
for i,r in rows.items():
    if i>I or r["j_first"] is None:continue
    for j in range(r["j_first"],r["j_last"]+1):
        n=3*j
        assert n<=finalN
        if i>n-prev[n]:continue
        checked_pairs+=1
        A,B=math.comb(n,i),math.comb(n,j)
        common=math.gcd(A,B)
        witnesses=[p for p in prime_list if p>=i and common%p==0]
        assert witnesses,("ORIGINAL_TARGET_CANDIDATE",n,i,j,A,B,common)
        p=witnesses[0]
        assert independent_prime(p)
        assert A%p==0 and B%p==0
        powers=[]
        for k in (i,j):
            e=1
            while not n%(p**e)<k%(p**e):
                e+=1
                assert p**e<=n
            powers.append(e)
        remaining.append(dict(n=n,i=i,j=j,p=p,e_i=powers[0],e_j=powers[1],
                              A=A,B=B,gcd=common))
output=dict(status="PASS",scope="New slope-three coefficient/prime-cover compression and its exact remaining pairs",
            initial_i_cap=219,steps=steps,final_i_cap=I,final_n_cap=finalN,
            original_pairs_checked=checked_pairs,remaining_pair_certificates=remaining,
            original_counterexamples=[],
            inherited_gap_evidence_not_replayed=True,
            source_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest())
(base/"compression.json").write_text(json.dumps(output,indent=2)+"\n",encoding="utf-8")
print(json.dumps({k:v for k,v in output.items() if k not in ["steps","remaining_pair_certificates"]},indent=2))
print(json.dumps({"steps":[{k:v for k,v in s.items() if k!="prime_cover_certificates"}|
                                 {"certificate_count":len(s["prime_cover_certificates"])} for s in steps],
                  "remaining_inputs":[[r["n"],r["i"],r["j"],r["p"]] for r in remaining]},indent=2))

