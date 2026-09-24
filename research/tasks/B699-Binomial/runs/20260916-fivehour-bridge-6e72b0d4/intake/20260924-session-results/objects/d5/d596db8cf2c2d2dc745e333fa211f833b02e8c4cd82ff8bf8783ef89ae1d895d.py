#!/usr/bin/env python3
"""Exact rational receiver for q=3 or q=4 modular residual configurations."""
from __future__ import annotations
import argparse,json
from math import comb,gcd,lcm
from functools import reduce
from pathlib import Path
import sympy as sp
from sympy.polys.matrices import DomainMatrix
from sympy import ZZ

N,X=sp.symbols('N X')

def comps(n,k):
    if k==1:
        yield (n,); return
    for a in range(n+1):
        for b in comps(n-a,k-1):
            yield (a,)+b

def coeff(a,b,r,v,shear,i,j):
    if j>b:return 0
    return sum(comb(b,j)*comb(b-j,z)*v**(b-j-z)*shear**z*
               comb(a,i-z)*r**(a-i+z)
               for z in range(b-j+1) if 0<=i-z<=a)

def primitive(v):
    den=1
    for x in v:den=lcm(den,sp.Rational(x).q)
    nums=[int(sp.Rational(x)*den) for x in v]
    g=reduce(gcd,[abs(x) for x in nums if x],0) or 1
    nums=[x//g for x in nums]
    for x in nums:
        if x:
            if x<0:nums=[-y for y in nums]
            break
    return nums

def main():
    ap=argparse.ArgumentParser();ap.add_argument('q',type=int,choices=(3,4));ap.add_argument('residual');ap.add_argument('output');a=ap.parse_args()
    q=a.q;D=2*q+1;K=(q+1)*(q+2)
    mons=[(aa,b) for b in range(q,-1,-1) for aa in range(D-2*b,-1,-1)]
    opts={r:list(comps(q,r//2+1)) for r in range(3,9)}
    def rows(cfg):
        out=[]
        for r,idx in zip(range(3,9),cfg):
            m=opts[r][idx]
            for s,mm in enumerate(m):
                if not mm:continue
                v=s*(r-s);diag=2*s==r
                if diag:
                    for w in range(2*mm):
                        for j in range(w//2+1):
                            i=w-2*j
                            out.append([coeff(aa,b,r,v,s,i,j) for aa,b in mons])
                else:
                    for t in range(mm):
                        for j in range(t+1):
                            i=t-j
                            out.append([coeff(aa,b,r,v,0,i,j) for aa,b in mons])
        return out
    ans=[]
    for li,line in enumerate(Path(a.residual).read_text().splitlines()):
        f=list(map(int,line.split()));mr,z=f[:2];cfg=f[2:]
        ms=[opts[r][idx] for r,idx in zip(range(3,9),cfg)]
        loads=[0]*9
        for r,m in zip(range(3,9),ms):
            for s,c in enumerate(m):loads[s]+=c;loads[r-s]+=c
        DM=DomainMatrix.from_list(rows(cfg),ZZ); rr=DM.rank()
        rec={'index':li,'mod_rank':mr,'rational_rank':rr,'z':z,'config':cfg,
             'multiplicities':[list(x) for x in ms],'line_loads':loads}
        if rr==K:
            rec['status']='no_rational_solution';ans.append(rec);continue
        NS=DM.to_field().nullspace();nullity=NS.shape[0];rec['nullity']=nullity
        if nullity==1:
            vv=primitive(list(NS.to_Matrix().row(0)))
            H=sp.expand(sum(c*N**aa*X**b for c,(aa,b) in zip(vv,mons)))
            fac=sp.factor(H)
            rec.update(coefficients=vv,polynomial=str(H),factorization=str(fac),
                       l1=sum(abs(c) for c in vv),degree_X=sp.Poly(H,X).degree(),
                       weighted_degree=max(aa+2*b for c,(aa,b) in zip(vv,mons) if c),
                       status='one_dimensional')
        else:
            rec['status']='higher_dimensional'
            rec['basis']=[primitive(list(NS.to_Matrix().row(i))) for i in range(nullity)]
        ans.append(rec)
    Path(a.output).write_text(json.dumps(ans,indent=2)+'\n')
    print(json.dumps({'q':q,'residuals':len(ans),'rational_full_rank':sum(x['rational_rank']==K for x in ans),
                      'one_dimensional':sum(x.get('nullity')==1 for x in ans),
                      'higher_dimensional':sum(x.get('nullity',0)>1 for x in ans)},sort_keys=True))
if __name__=='__main__':main()
