from pathlib import Path
from math import comb,gcd,lcm
import sympy as sp
import json,time
BASE=Path(__file__).parent; N,X=sp.symbols('N X'); q=6;D=13
mons=[(a,b) for b in range(q,-1,-1) for a in range(D-2*b,-1,-1)]
def jet(a,b,r,x,sh,i,j):
    if j>b:return 0
    return sum(comb(b,j)*comb(b-j,t)*x**(b-j-t)*sh**t*comb(a,i-t)*r**(a-i+t) for t in range(b-j+1) if 0<=i-t<=a)
def matrix(cfg):
    rows=[]
    for r,(kp,ms) in enumerate(cfg,3):
        for s,m in enumerate(ms):
            diag=2*s==r;w=2*m-kp if diag else 0
            for i in range(max(m,w)):
                for j in range(m):
                    if i+j<m or diag and i+2*j<w:rows.append([jet(a,b,r,s*(r-s),s if diag else 0,i,j) for a,b in mons])
    return sp.Matrix(rows)
def poly(v):
    den=lcm(*(int(x.q) for x in v)); a=[int(x*den) for x in v]; g=gcd(*a);a=[x//g for x in a]
    if next(x for x in a if x)<0:a=[-x for x in a]
    return sp.Poly(sum(c*N**aa*X**b for c,(aa,b) in zip(a,mons)),N,X)
start=time.monotonic();results=[]
for i,line in enumerate((BASE/'sextic-saturated-probe-configs.txt').read_text().splitlines()):
    cfg=[(int(s.split()[0]),list(map(int,s.split()[1:]))) for s in line.split('|')[1:]]
    ns=matrix(cfg).nullspace();pp=[poly(v) for v in ns]
    common=pp[0] if pp else sp.Poly(1,N,X)
    for p in pp[1:]:common=sp.gcd(common,p)
    fac=sp.factor_list(common.as_expr()); factors=[dict(poly=str(f),multiplicity=int(m),degree_X=sp.degree(f,X),weighted_degree=max(a+2*b for (a,b),c in sp.Poly(f,N,X).terms())) for f,m in fac[1]]
    for f in factors:f['degree_X']=int(f['degree_X'])
    rec=dict(index=i,configuration=cfg,dimension=len(pp),basis=[str(p.as_expr()) for p in pp],common=str(common.as_expr()),factors=factors)
    results.append(rec);print(json.dumps({k:v for k,v in rec.items() if k not in ('basis','common','configuration')},ensure_ascii=False),flush=True)
    (BASE/'sextic-saturated-exact.json').write_text(json.dumps(dict(scope='Exact rational receive of bounded probe outputs only; completion of enumeration assessed separately from its stopped flag and source.',processed=len(results),seconds=round(time.monotonic()-start,3),results=results),ensure_ascii=False,indent=2)+'\n')
print('seconds',round(time.monotonic()-start,3))

