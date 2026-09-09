"""Small, targeted checks of the new weighted content constraint; no triple scan."""
from math import comb, gcd, prod, factorial
from hashlib import sha256
import json
import sys
from pathlib import Path
sys.set_int_max_str_digits(0)

def factor(a):
    out = {}
    p = 2
    while p*p <= a:
        while a % p == 0:
            out[p] = out.get(p, 0) + 1
            a //= p
        p += 1
    if a > 1:
        out[a] = out.get(a, 0) + 1
    return out

def vp(a, p):
    e = 0
    while a % p == 0:
        e += 1
        a //= p
    return e

def digest(a):
    return {"bits": a.bit_length(), "sha256_decimal": sha256(str(a).encode()).hexdigest()}

# Selected to exercise small prime grouping, false sufficient transfer, and p=i.
inputs = [(12,2,4),(16,3,7),(57,4,22),(163,3,81),(253,5,126),
          (3067,79,1022),(3091,96,1029),(3209,101,1070)]
rows = []
for n,i,j in inputs:
    assert 1 <= i < j <= n//2
    k = n-j
    a = comb(n,i)
    b = comb(n,j)
    fac = {}
    for h in range(i):
        for p,e in factor(n-h).items():
            fac[p] = fac.get(p,0)+e
    for p,e in factor(factorial(i)).items():
        fac[p] -= e
    fac = {p:e for p,e in fac.items() if e}
    assert prod(p**e for p,e in fac.items()) == a
    U = prod(p**e for p,e in fac.items() if p<i)
    V = a//U
    D = prod(p**e for p,e in fac.items() if p>=i and b%p)
    groups = {}
    assignments = []
    for p,e in sorted(fac.items()):
        if p>=i:
            continue
        vals = [vp(n-h,p) for h in range(i)]
        h = max(range(i), key=lambda x:vals[x])
        assert e <= vals[h]
        groups[h] = groups.get(h,1)*p**e
        assignments.append({"p":p,"binomialExponent":e,"position":h,"numeratorExponent":vals[h]})
    assert prod(groups.values()) == U
    assert all((n-h)%u==0 for h,u in groups.items())
    W = prod(u**h for h,u in groups.items())
    A = prod(v**(2*i-v-2) for v in range(1,i+1))
    P = prod((j-i+v)**(v-1)*(k-i+v)**(v-1)*(n-i+v)**(i-v)
             for v in range(1,i+1))
    assert P % A == 0
    disc = P//A   # Adopted old source identity; not a fresh derivation.
    assert disc > 0 and disc % D**(2*i-2) == 0
    assert P % W == 0 and gcd(W,D)==1
    assert P % (D**(2*i-2)*W) == 0
    t = len([p for p in range(2,i) if factor(p)=={p:1}])
    exponent = t*(2*i-2)-t*(t-1)//2
    weighted = prod(u**(2*i-2-h) for h,u in groups.items())
    assert len(groups)<=t and weighted <= n**exponent
    common = [p for p in fac if p>=i and b%p==0]
    assert common and any(gcd(a,b)%p==0 for p in common)
    rows.append({"n":n,"i":i,"j":j,"D":str(D),"U":str(U),"groups":{str(h):str(u) for h,u in groups.items()},
                 "assignments":assignments,"W":digest(W),"weightedQuotient":digest(weighted),
                 "disc":digest(disc),"weightedDivisibility":True,
                 "pEqualsIndexAvoids": i in fac and b%i!=0 and factor(i)=={i:1},
                 "rawCommonWitness":min(common),"notACounterexample":True})
result={"scope":"Eight explicitly selected triples; checks new grouping and weighted content only, not any unrestricted theorem.",
        "sourceIdentity":"adopted from fixed baseline 7fd3928656489afe2c80698f0a09d1d933444186",
        "count":len(rows),"allPassed":True,"rows":rows}
out=Path(__file__).with_name("result.json")
out.write_text(json.dumps(result,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
print(json.dumps({"count":len(rows),"allPassed":True,"nontrivialD":sum(int(r["D"])>1 for r in rows),
                  "pEqualsIndexAvoids":sum(r["pEqualsIndexAvoids"] for r in rows),
                  "result":out.name}))
