"""Saturated multi-dimensional contact kernels and weighted LLL candidates."""
import json
import math
from fractions import Fraction as Q
from pathlib import Path
from datetime import datetime,timezone
import sympy as S
import four_contact_probe as base
from exact_lll import lll_transform

old=base.old
HERE=Path(__file__).resolve().parent

def egcd(a,b):
    if not b:return abs(a),1 if a>=0 else -1,0
    g,x,y=egcd(b,a%b)
    return g,y,x-(a//b)*y

def matmul(A,B):
    return [[sum(a*b for a,b in zip(row,col)) for col in zip(*B)] for row in A]

def transpose(A):return list(map(list,zip(*A)))

def saturated(slots,D):
    R=D+1
    mons=[(a,b) for a in range(5) for b in range(D-a+1)]
    branches={i:old.branch(i,R) for i in slots}
    columns={i:[old.evaluate({m:1},branches[i],R) for m in mons] for i in slots}
    rank,B=old.nullspace([[col[r] for col in columns[i]] for i in slots for r in range(R)])
    r=len(B);L=[[int(i==j) for j in range(r)] for i in range(r)]
    for k in range(len(mons)):
        row=[sum(B[j][k]*L[j][t] for j in range(r)) for t in range(r)]
        den=math.lcm(*(x.denominator for x in row))
        if den==1:continue
        u=[int(x*den) for x in row]
        T=[[int(i==j) for j in range(r)] for i in range(r)]
        for j in range(1,r):
            a,b=u[0],u[j]
            if not b:continue
            g,x,y=egcd(a,b)
            for i in range(r):
                v,w=T[i][0],T[i][j]
                T[i][0]=x*v+y*w
                T[i][j]=-(b//g)*v+(a//g)*w
            u[0],u[j]=g,0
        mult=den//math.gcd(den,u[0])
        for i in range(r):T[i][0]*=mult
        L=matmul(L,T)
        full=matmul(transpose(L),B)
        clear=math.lcm(*(x.denominator for row in full for x in row))
        M=S.Matrix([[int(x*clear) for x in row] for row in full])
        _,tr=lll_transform(M.tolist())
        L=matmul(L,transpose([[int(x) for x in row] for row in tr]))
    full=matmul(transpose(L),B)
    assert all(x.denominator==1 for row in full for x in row)
    polynomials=[{m:int(c) for m,c in zip(mons,row) if c} for row in full]
    assert all(not any(old.evaluate(P,root,R)) for P in polynomials for root in branches.values())
    return polynomials

def features(G,D,N,lo,hi):
    out=[]
    for k in range(D+1):
        for j in range(5):
            c=sum(c*math.comb(a,j)*lo**(a-j) for (a,b),c in G.items() if a+b==k and a>=j)
            out.append(c*(hi-lo)**j/Q(N)**(D-k))
    return out

def run(slots,D,N):
    polys=saturated(slots,D)
    print('saturated',slots,D,'dim',len(polys),flush=True)
    f=[features(G,D,N,base.L,base.U) for G in polys]
    largest=max(abs(x) for row in f for x in row)
    scale=Q(10**55)/largest
    M=S.Matrix([[round(x*scale) for x in row] for row in f])
    _,tr=lll_transform(M.tolist())
    rows=[]
    for v in tr:
        P={m:sum(int(c)*G.get(m,0) for c,G in zip(v,polys)) for m in set().union(*polys)}
        l,u=base.bounds(P,D,N)
        rows.append({'combination':[int(x) for x in v],'terms':[[a,b,c] for (a,b),c in P.items() if c],
                     'lower':str(l),'upper':str(u),'lo_float':float(l),'hi_float':float(u),
                     'stable_sign':bool(l>0 or u<0),'closes_at_N':bool((l>0 or u<0) and max(abs(l),abs(u))<N)})
    return dict(slots=slots,D=D,R=D+1,N=N,dimension=len(polys),rows=rows)

if __name__=='__main__':
    result={'started_utc':datetime.now(timezone.utc).isoformat(),'evidence':'exact contact and rational height; LLL selection only; not Lean','results':[]}
    for D in (12,13,14,15):
        for slots in ((1,2,3,4),(1,2,3,5)):
            row=run(slots,D,50000)
            result['results'].append(row)
            (HERE/'weighted-contact-probe.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
            print('result',slots,D,[(r['lo_float'],r['hi_float'],r['closes_at_N']) for r in row['rows']],flush=True)
