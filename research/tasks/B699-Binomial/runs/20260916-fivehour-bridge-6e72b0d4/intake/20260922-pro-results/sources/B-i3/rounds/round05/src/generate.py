#!/usr/bin/env python3
"""Generate deterministic finite regression/identity certificates; not the infinite proof.
Requires SymPy only for the generating algorithm. Default replay is standard-library only.
"""
from __future__ import annotations
import argparse, json, random, zipfile
from math import comb, prod
from pathlib import Path
import sympy as sp

ROOT=Path(__file__).resolve().parents[1]
X=sp.Symbol('X')

def dump(p: Path, o: object) -> None:
    p.write_text(json.dumps(o,ensure_ascii=False,sort_keys=True,indent=2)+'\n',encoding='utf-8')

def coeff(poly) -> list[int]:
    p=sp.Poly(poly,X)
    if p.is_zero: return [0]
    return [int(p.nth(i)) for i in range(p.degree()+1)]

def value(f: list[int], t: int) -> int:
    z=0
    for a in reversed(f): z=z*t+a
    return z

def vp(n: int,p: int) -> int:
    if n<=0: raise ValueError('valuation expects positive input')
    e=0
    while n%p==0: n//=p;e+=1
    return e

def bound_power(c: int,m: int,d: int) -> int:
    return 32*(9 if c==2 else 64)**d*m**((2 if c==2 else 3)*d-1)

def row_power(c: int,m: int,d: int,p: int,e: int, label: str) -> dict:
    T=p**e;n=c*(m*T+1)**d
    f=[c*comb(d,k)*m**k for k in range(d+1)]
    E=e+vp(m*d,p)
    return dict(kind='affine_power',label=label,c=c,m=m,d=d,p=p,e=e,T=T,n=n,
                source_offset=c,transport_offset=1 if c==2 else 2,
                full_source_exponent=E,full_source=p**E,
                threshold=bound_power(c,m,d),f=f)

def row_sparse(S: list[int], p: int,e: int,label: str) -> dict:
    T=p**e; f=[0]*(max(S)+1);f[0]=2
    for i in S:f[i]=3
    n=value(f,T);E=e*min(S)+(1 if p==3 else 0)
    return dict(kind='sparse_eisenstein3',label=label,positions=S,p=p,e=e,T=T,n=n,
                source_offset=2,transport_offset=1,full_source_exponent=E,full_source=p**E,
                threshold=4*(3*len(S)+4)**4,f=f)

def above(p: int, limit: int) -> int:
    e=1
    while p**e<limit:e+=1
    return e

def main(out:Path) -> None:
    out.mkdir(parents=True,exist_ok=False)
    old=ROOT/'inputs/B699-ProE-i3-round4-positive-digital-rows-20260921.zip'
    with zipfile.ZipFile(old) as z:
        name=next(n for n in z.namelist() if n.endswith('/certificates/primes.json'))
        primes=json.loads(z.read(name))
    dump(out/'primes.json',primes)
    big=57912614113275649087721
    rows=[row_power(1,167,2,big,1,'whole-row-2^166'),
          row_power(2,167,3,big,1,'whole-row-2^250'),
          row_power(2,167,4,big,1,'whole-row-2^333'),
          row_power(2,1,3,3,10,'p-divides-degree; full-source-3^11'),
          row_power(2,3,3,3,15,'p-divides-m-and-degree; full-source-3^17')]
    for c,m,d,p in [(1,1,3,3),(1,3,4,5),(2,5,4,5),(2,1,9,3),(2,1,24,5),(1,1,16,3)]:
        rows.append(row_power(c,m,d,p,above(p,bound_power(c,m,d)),f'power-c{c}-m{m}-d{d}-p{p}'))
    for S,p in [([1,3],5),([2,7],3),([1,2,4,9],5),([1,3,5,7,11,16],3),([101,307],5)]:
        rows.append(row_sparse(S,p,above(p,4*(3*len(S)+4)**4),f'sparse-{S}'))
    dump(out/'rows.json',{'schema':'B699.round5.rows.v1','rows':rows})
    # Coefficientwise boxes / resultants. No enumeration of any large original row.
    rng=random.Random(6990521)
    identity_rows=[]
    for c,m,d,p in [(2,1,2,5),(2,3,3,7),(2,1,5,3),(1,1,2,3),(1,3,3,5),(1,1,5,7)]:
        identity_rows.append(row_power(c,m,d,p,above(p,bound_power(c,m,d)),f'resultant-{c}-{m}-{d}'))
    for S,p in [([1,3],5),([1,2,4,7],3),([2,6],7)]:
        identity_rows.append(row_sparse(S,p,above(p,4*(3*len(S)+4)**4),'resultant-sparse'))
    cases=[]
    for ri,row in enumerate(identity_rows):
        f=row['f']; d=len(f)-1; T=row['T']; n=row['n']; s=row['transport_offset']
        F=sum(a*X**k for k,a in enumerate(f))-s
        for attempt in range(10):
            for _ in range(1000):
                js=[rng.randrange(a+1) for a in f];js[-1]//=2
                while len(js)>1 and js[-1]==0:js.pop()
                j=value(js,T)
                if 4<=j<=n//2:break
            else: raise RuntimeError('could not generate legal digit polynomial')
            J=sum(a*X**k for k,a in enumerate(js))
            witnesses=[]
            for a in range(s+1):
                G=J-a; R=int(sp.resultant(F,G,X))
                if not R: raise AssertionError('unexpected zero resultant')
                U,V,GCD=sp.gcdex(F,G,X)
                if sp.simplify(GCD)!=1: raise AssertionError('gcdex convention')
                U=sp.Poly(sp.expand(R*U),X); V=sp.Poly(sp.expand(R*V),X)
                if any(z.q!=1 for z in U.all_coeffs()+V.all_coeffs()): raise AssertionError('nonintegral adjugate identity')
                witnesses.append({'a':a,'R':R,'U':coeff(U.as_expr()),'V':coeff(V.as_expr())})
            N=n-s; iso=3 if vp(N if s==1 else N//2,3)==1 else 1
            M=iso if s==1 else 2*iso
            cases.append({'row':row,'J':js,'j':j,'multiplier':M,'N':N,'witnesses':witnesses,
                          'R_product':prod(w['R'] for w in witnesses)})
    dump(out/'resultants.json',{'schema':'B699.round5.resultants.v1','seed':6990521,'cases':cases})
    # Direct binomial and carry comparisons are regression, not the row proof.
    points=[]
    for n in [8,10,16,28,64,128,242,512,2000]:
        for j in sorted({4,5,7,n//3,n//2}):
            if not 4<=j<=n//2:continue
            C3=comb(n,3);CJ=comb(n,j)
            primes_small=[int(p) for p in sp.factorint(C3) if p>=3]
            vals={str(p):vp(CJ,p) for p in primes_small}
            points.append({'n':n,'j':j,'C3':C3,'v2_common':int(sp.factorint(sp.gcd(C3,CJ)).get(2,0)),
                           'valuations':vals,'common_primes':[p for p in primes_small if vals[str(p)]>0]})
    # Precision regressions explicitly retain working base != full source.
    negative=json.loads((ROOT/'outputs/negative_probe.json').read_text())['examples']
    for z in negative:
        nn=z['n'];z['binomial3_factors']=[[int(q),int(e)] for q,e in sorted(sp.factorint(nn*(nn-1)*(nn-2)//6).items())]
    dump(out/'direct_regressions.json',{'schema':'B699.round5.regressions.v1','points':points,'negative_examples':negative,
          'composite_base_shell':{'n':92,'j':10,'T':45,'full_source_factors':[[3,2],[5,1]],'common_primes':[7,13,23]}})
    print(json.dumps({'rows':len(rows),'resultant_cases':len(cases),'direct_points':len(points)},sort_keys=True))

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--output-dir',required=True,type=Path);args=ap.parse_args();main(args.output_dir)
