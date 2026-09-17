"""Parent's exact reconstruction; no imports from the arithmetic worker.

Paper inputs: QIG and Bugeaud 2002 Theorem 2, reviewed separately.
This checks the algebra and the complete finite boundary, not the external theorem.
"""
from collections import defaultdict
from math import comb, isqrt
from pathlib import Path
import hashlib
import json
import sys


def add(*terms):
    z = defaultdict(int)
    for f in terms:
        for m, c in f.items():
            z[m] += c
    return {m: c for m, c in z.items() if c}


def scale(f, c):
    return {m: c*v for m, v in f.items() if c*v}


def mul(f, g):
    z = defaultdict(int)
    for (a,b), c in f.items():
        for (d,e), h in g.items():
            z[a+d,b+e] += c*h
    return {m: c for m, c in z.items() if c}


def prod(*fs):
    z = {(0,0): 1}
    for f in fs:
        z = mul(z, f)
    return z


def power(f, n):
    return prod(*([f]*n))


def con(n):
    return {(0,0): n} if n else {}


def minus(f, g):
    return add(f, scale(g, -1))


def polynomial_checks():
    j, k = {(1,0): 1}, {(0,1): 1}
    n, x = add(j,k), mul(j,k)
    fall = lambda z,t: prod(*(add(z,con(-b)) for b in range(t)))
    a = [scale(mul(fall(j,t),fall(k,4-t)),comb(4,t)) for t in range(5)]
    inv_i = add(scale(mul(a[4],a[0]),12),scale(mul(a[3],a[1]),-3),power(a[2],2))
    inv_j = add(scale(prod(a[4],a[2],a[0]),72),scale(prod(a[3],a[2],a[1]),9),
                scale(prod(a[4],power(a[1],2)),-27),scale(prod(power(a[3],2),a[0]),-27),
                scale(power(a[2],3),-2))
    aa = add(x,scale(n,-1),con(1))
    assert inv_i == scale(prod(x,aa,add(n,con(-3)),add(n,con(-2))),72)
    assert inv_j == scale(prod(power(x,2),aa,power(add(n,con(-3)),2),add(n,con(-2))),-864)
    gap = minus(power(inv_j,2),scale(power(inv_i,3),2))
    rhs = scale(prod(power(x,3),power(aa,2),power(add(n,con(-3)),3),
                     power(add(n,con(-2)),2),minus(mul(add(n,con(-1)),add(n,con(-2))),x)),746496)
    assert gap == rhs
    # Height inequality after n = 10 + j; k remains unused.
    nn = add(j,con(10))
    h = minus(scale(prod(power(add(nn,con(-1)),4),power(add(nn,con(-3)),3)),4),
              prod(power(nn,6),add(nn,con(-2))))
    assert [h.get((b,0),0) for b in range(8)] == [1001692,2058620,1132524,296348,43028,3576,160,3]
    assert all(v>0 for v in h.values())
    return {"I_identity": True, "J_identity": True, "gap_identity": True, "height_positive_coefficients": True}


def val(n, p):
    assert n>0
    a=0
    while n%p == 0:
        n//=p
        a+=1
    return a


def small5(n):
    s=1
    for p in (2,3):
        while n%p == 0:
            n//=p
            s*=p
    if n%5 == 0 and n%25:
        s*=5
    return s


def qig(n):
    if n<12:
        return False
    t=1
    for r in range(4):
        t*=small5(n-r)
    return t**6*(3*n*n-12*n+8) < 2**20*(n-1)**6*(n-3)**3


def complete_exponents(d):
    k=d.bit_length()
    cap=5360*k*(k.bit_length()+11)**2
    # Separate parity roots in powers of 4; a root never decreases.
    u={(r,e):0 for r in (1,2) for e in (0,1) if d*2**e%3==r}
    found=set()
    levels=[]
    b,period=1,1
    while True:
        residues={f"{r}:{e}":2*z+e for (r,e),z in u.items()}
        if min(residues.values())>=cap:
            levels.append({"B":b,"residues":residues,"stop":True})
            break
        # Independent exhaustive scan only of the LINEAR range, <= 10B.
        for a in range(3,min(10*b,cap)):
            r=d*pow(2,a,3)%3
            modular=pow(3,b)
            hit=(d*pow(2,a,modular)-r)%modular==0
            e=a%2
            assert hit == (((a-e)//2-u[r,e])%period==0)
            if hit and val(d*2**a-r,3)==b:
                found.add(a)
        levels.append({"B":b,"residues":residues,"stop":False})
        modulus=3**(b+1)
        for (r,e),z in list(u.items()):
            choices=[z+t*period for t in range(3) if (d*2**e*pow(4,z+t*period,modulus)-r)%modulus==0]
            assert len(choices)==1
            assert choices[0]>=z
            u[r,e]=choices[0]
        b+=1
        period*=3
        assert b<1000  # Failure guard only; success requires the cap-certified stop.
    survivors=[a for a in sorted(found) if not qig(d*2**a)]
    return {"d":d,"cap":cap,"levels":levels,"candidate_exponents":sorted(found),"non_qig_exponents":survivors}


def prime(n):
    return n>=2 and all(n%p for p in range(2,isqrt(n)+1))


def prime_factors(n):
    ps=[]
    p=2
    while p*p<=n:
        if n%p==0:
            ps.append(p)
            while n%p==0:
                n//=p
        p+=1
    if n>1:
        ps.append(n)
    assert all(prime(p) for p in ps)
    return ps


def binval(n,j,p):
    q=p
    a=0
    while q<=n:
        a+=n//q-j//q-(n-j)//q
        q*=p
    return a


def row_check(n):
    if n//2<6:
        return {"n":n,"pairs":0}
    ps=[p for p in prime_factors(comb(n,5)) if p>=5]
    count={}
    for j in range(6,n//2+1):
        good=[p for p in ps if binval(n,j,p)>0]
        assert good,(n,j)
        count[str(good[0])]=count.get(str(good[0]),0)+1
    return {"n":n,"pairs":n//2-5,"source_primes":ps,"witness_counts":count}


def main():
    result={"scope":"Parent AI exact algebra and complete finite lifting/rows; external theorem reviewed in accompanying paper note",
            "polynomials":polynomial_checks()}
    result["cofactors"]=[complete_exponents(d) for d in (5,7,11,13,17,19,23,25,29,31)]
    rows=sorted({x["d"]*2**a for x in result["cofactors"] for a in [0,1,2]+x["non_qig_exponents"]})
    result["rows"]=[row_check(n) for n in rows]
    result["pairs"]=sum(x["pairs"] for x in result["rows"])
    assert result["pairs"]==22792
    result["script_sha256"]=hashlib.sha256(Path(__file__).read_bytes()).hexdigest()
    out=Path(sys.argv[1]) if len(sys.argv)>1 else Path(__file__).with_suffix('.json')
    out.write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({"result":"PASS","cofactors":len(result["cofactors"]),"rows":len(rows),"pairs":result["pairs"],"output":str(out)}))


if __name__=='__main__':
    main()
