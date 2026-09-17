"""Small exact interpolation after screening ranks mod a prime.
Decision question: can H02's deficit-one polynomial cancel more than g^5?
No installation; largest matrix has at most 121 columns.
"""
from datetime import datetime,timezone
from math import comb
from pathlib import Path
import json
import time
import sympy as sp

def entry(u,v,b,c,a,d):
    total=0
    for z in range(u+1):
        ej,ek=z+v,u-z+v
        if ej>=a and ek>=d:
            total+=comb(u,z)*comb(ej,a)*comb(ek,d)*b**(ej-a)*c**(ek-d)
    return total

def matrix(D,T,ws):
    mons=[(u,v) for v in range(D//2+1) for u in range(D-2*v+1) if u+2*v>=T]
    rows=[]
    for r,w in zip((1,3,4),ws):
        for b in range(r//2+1):
            for a in range(w):
                for d in range(w-a):
                    row=[entry(u,v,b,r-b,a,d) for u,v in mons]
                    if any(row): rows.append(row)
    return mons,rows

def rankmod(rows,p=1000003):
    if not rows: return 0
    a=[[z%p for z in r] for r in rows]
    rank=0
    for col in range(len(a[0])):
        pivot=next((i for i in range(rank,len(a)) if a[i][col]),None)
        if pivot is None: continue
        a[rank],a[pivot]=a[pivot],a[rank]
        v=pow(a[rank][col],-1,p)
        a[rank]=[z*v%p for z in a[rank]]
        for i in range(rank+1,len(a)):
            if a[i][col]:
                v=a[i][col]
                a[i]=[(x-v*y)%p for x,y in zip(a[i],a[rank])]
        rank+=1
        if rank==len(a):break
    return rank

start=time.monotonic()
n,X,a,d=sp.symbols('n X a d')
out=[]
for D in (5,6,8,10,12,16,20):
    ws=(D//2,D//4,D//5)
    if sum(ws)!=D-1:continue
    rec={'D':D,'weights':ws,'screens':[],'exact_polynomials':[]}
    best=None
    for T in range(3,D+1):
        mons,rows=matrix(D,T,ws)
        rank=rankmod(rows)
        rec['screens'].append({'origin_order':T,'rows':len(rows),'columns':len(mons),'mod_rank':rank})
        if rank<len(mons):best=(T,mons,rows)
        else:break
    if best:
        T,mons,rows=best
        mat=sp.Matrix(rows)
        kernel=mat.nullspace()
        rec['exact_kernel_dimension']=len(kernel)
        rec['candidate_origin_order']=T
        for vec in kernel:
            den=sp.ilcm(*[z.q for z in vec])
            F=sp.expand(sum(den*c*n**u*X**v for c,(u,v) in zip(vec,mons)))
            half=sp.Poly(sp.expand(F.subs({n:2*(a+6)+d,X:(a+6)*(a+6+d)})),a,d)
            cs=half.coeffs()
            rec['exact_polynomials'].append({'F':str(sp.factor(F)),'all_positive':all(c>0 for c in cs),'all_negative':all(c<0 for c in cs),'min_coefficient':str(min(cs)),'max_coefficient':str(max(cs))})
    out.append(rec)
    Path(__file__).with_suffix('.json').write_text(json.dumps({'time_utc':datetime.now(timezone.utc).isoformat(),'elapsed_seconds':time.monotonic()-start,'results':out},indent=2),encoding='utf-8')
    print(json.dumps({'D':D,'candidate_origin_order':rec.get('candidate_origin_order'),'exact_kernel_dimension':rec.get('exact_kernel_dimension'),'polynomials':rec['exact_polynomials']}),flush=True)
