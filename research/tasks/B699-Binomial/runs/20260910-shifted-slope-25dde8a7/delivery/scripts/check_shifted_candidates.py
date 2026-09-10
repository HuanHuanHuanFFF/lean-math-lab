#!/usr/bin/env python3
"""Independent a-first reconstruction and exact common-prime witnesses.
Does not import the generator, use its factorization routines, or trust its list.
"""
import argparse, json, math, time
from pathlib import Path

def reconstruct(B):
    ans=[]
    for s in (0,1):
        K=36 if s==0 else 32
        for b in range(1,B+1):
            U=K*b*b-1
            A=6*b**3+U
            for a in range(2*b,A+1):
                if a%2==0 or math.gcd(a,b)!=1: continue
                if s==1 and a<=2*b: continue
                residue=(-6*b**3 if s==0 else 6*b**3)%a
                first=residue if residue else a
                for u in range(first,U+1,a):
                    if s==1 and u==6*b**3: continue
                    R=6*b*((a-b)*(2*a-b) if s==0 else (a*a-b*b))
                    g,rem=divmod(R+u,u*a)
                    if rem or g<1: continue
                    n=g*a+1; j=g*b+s
                    if n%4 or j<=3 or 2*j>n: continue
                    t,rem=divmod(3*(j-1 if s==0 else j),a)
                    if rem or t<1: continue
                    assert u*t<K*b*b
                    assert u*(n-2)==R
                    ans.append(dict(s=s,b=b,a=a,g=g,n=n,j=j,u=u,t=t))
    return sorted(ans,key=lambda r:(r['s'],r['b'],r['n'],r['j']))

def is_prime(p):
    return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))

def exponent_choose(n,j,p):
    q=p; value=0; carry_moduli=[]
    while q<=n:
        v=n//q-j//q-(n-j)//q
        assert v in (0,1)
        value+=v
        if v: carry_moduli.append(q)
        q*=p
    return value,carry_moduli

def witness(n,j):
    C3=n*(n-1)*(n-2)//6
    factors=set()
    for r in (0,1,2):
        x=n-r; d=2
        while d*d<=x:
            while x%d==0:
                if d>=3: factors.add(d)
                x//=d
            d+=1
        if x>=3: factors.add(x)
    for p in sorted(factors):
        e3,_=exponent_choose(n,3,p); ej,qs=exponent_choose(n,j,p)
        if e3 and ej:
            assert is_prime(p)
            # Independent actual binomial computation; no Lucas/Legendre code in this test.
            assert C3%p==0 and math.comb(n,j)%p==0
            q=qs[0]
            assert j%q>n%q
            return dict(n=n,j=j,p=p,valuation_C_n_3=e3,valuation_C_n_j=ej,
                        carry_modulus=q,n_mod_q=n%q,j_mod_q=j%q,
                        primality='exhaustive trial division through isqrt(p)',
                        independent_binomial_mod_check=True)
    raise AssertionError(f'UNRESOLVED {n=},{j=}')

if __name__=='__main__':
    ap=argparse.ArgumentParser(); ap.add_argument('--input',type=Path,required=True); ap.add_argument('--output',type=Path,required=True)
    args=ap.parse_args(); start=time.time(); supplied=json.loads(args.input.read_text()); B=supplied['B']; actual=reconstruct(B)
    assert actual==supplied['records'],'Candidate reconstruction mismatch'
    triples=sorted({(r['n'],r['j']) for r in actual}); ws=[witness(n,j) for n,j in triples]
    out={'B':B,'independent_reconstruction':'a-first modular progression; no generator imports',
         'records':len(actual),'unique_triples':len(triples),'max_n':max(n for n,j in triples),
         'all_candidates_excluded':True,'witnesses':ws,'elapsed_seconds':time.time()-start}
    args.output.write_text(json.dumps(out,indent=2)+'\n'); print(json.dumps(out,indent=2))
