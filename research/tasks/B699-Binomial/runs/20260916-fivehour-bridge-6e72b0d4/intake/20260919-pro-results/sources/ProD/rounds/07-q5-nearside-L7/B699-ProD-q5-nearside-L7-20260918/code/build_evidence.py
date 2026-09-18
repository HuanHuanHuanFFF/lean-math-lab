#!/usr/bin/env python3
"""Optional deterministic certificate builder. Does not update the frozen manifest.
Requires only the standard library. LLL is a search tool, never an acceptance assumption.
All exponent enumeration below H=45/44 relies on the paper's preceding absolute bound.
"""
from __future__ import annotations
import argparse,hashlib,json,math,sys
from fractions import Fraction as F
from pathlib import Path
sys.dont_write_bytecode=True
from discovery_tools import lll
from poly_exact import const,add,sub,scale,mul,power
from new_algebra import R,S,R_old,substitute,order,records

def dlog(p,h,num,den=1):
 k0=2 if p==2 else 1
 starts=[0] if p==2 else [0,1]
 opts=[e for e in starts if (den*pow(5,e,p**k0)-num)%p**k0==0]
 assert len(opts)==1
 a=opts[0];per=1 if p==2 else 2
 for k in range(k0+1,h+1):
  mod=p**k
  ls=[a+t*per for t in range(p) if (den*pow(5,a+t*per,mod)-num)%mod==0]
  assert len(ls)==1
  a=ls[0];per*=p
 return a,per
TARG={('A',2):(-5,3),('A',3):(-1,1),('B',2):(-3,1),('B',3):(-5,1)}
def cert(case,p,h,X):
 a,M=dlog(p,h,13);b,M2=dlog(p,h,61);num,den=TARG[case,p];T,M3=dlog(p,h,num,den);assert M==M2==M3
 rows,steps=lll([[1,a,b],[0,M,0],[0,0,M]])
 candidates=rows+[[rows[i][k]+z*rows[j][k] for k in range(3)] for i in range(3) for j in range(i) for z in (-2,-1,1,2)]
 vals=[]
 for row in candidates:
  res=row[0]*T%M;dist=min(res,M-res);cost=X*sum(map(abs,row));vals.append((F(dist,max(cost,1)),row,dist,cost))
 rat,row,dist,cost=max(vals)
 assert dist>cost,(case,p,h,X,rat)
 return dict(case=case,p=p,h=h,coordinate_bound=str(X),period=str(M),log13=str(a),log61=str(b),target=str(T),numerator=num,denominator=den,dual=list(map(str,row)),distance=str(dist),cost=str(cost))
def triples(case,H):
 for E in range(2,H+1):
  for b in range(H-E+1):
   for c in range(H-E-b+1):
    if case=='A' and E%2 and (b+c)%2:yield E,b,c
    elif case=='B' and E%2==0 and (b+c)%2 and (E+4*b+2*c)%6==4:yield E,b,c

def vp(n,p):
 assert n>0;e=0
 while n%p==0:e+=1;n//=p
 return e

def row(case,E,b,c):return (3 if case=='A' else 1)*5**E*13**b*61**c+5

def algebra_data():
    x={(1,0):F(1)};y={(0,1):F(1)};n=add(x,y);J=mul(x,y)
    A=mul(sub(x,const(1)),sub(y,const(1)))
    r=R(n,J);s=S(n,J);f=mul(power(J,2),power(A,3),r,s)
    shifts={}
    for name,p in [('R_positive',r),('S_positive',s),('R_upper',sub(scale(power(n,4),4),r)),('S_upper',sub(scale(power(n,6),8),s))]:
        q=substitute(p,add(x,const(7)),add(x,y,const(7)))
        assert all(c>0 for c in q.values()) and q.get((0,0),0)>0
        shifts[name]=records(q)
    pts=[(0,1),(0,3),(1,2),(0,4),(1,3),(2,2),(1,4)]
    pool={'J':J,'A':A,'R0':R_old(n,J),'R':r,'S':s}
    pr=[dict(name=k,degree=max(sum(e) for e in p),orders=[order(p,*pt) for pt in pts]) for k,p in pool.items()]
    nodes=[(0,1),(1,0),(0,3),(1,2),(2,1),(3,0),(0,4),(1,3),(2,2),(3,1),(4,0),(0,5),(1,4),(2,3),(3,2),(4,1),(5,0)]
    return dict(polynomials={k:records(p) for k,p in {'R':r,'S':s,'F20':f}.items()},
                positive_shifts=shifts,source_orders=[[a,b,order(f,a,b)] for a,b in nodes],
                pool_points=pts,pool_weights=[4,2,2,2,1,1,1],pool_records=pr)

def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('--output',type=Path,required=True,help='new empty directory outside the frozen evidence directory')
    args=parser.parse_args();out=args.output.resolve()
    if out.exists() and any(out.iterdir()):
        parser.error('output directory must be empty; refusing to overwrite frozen evidence')
    out.mkdir(parents=True,exist_ok=True)
    certs=[cert(case,p,h,X) for X,h2,h3 in [(10**33,420,275),(500,45,30)]
           for case in ('A','B') for p,h in [(2,h2),(3,h3)]]
    stages=[];tails=[]
    for case in ('A','B'):
        H=45 if case=='A' else 44
        for _ in range(2):
            vals=[]
            for E,b,c in triples(case,H):
                n=row(case,E,b,c);u=vp(n-(0 if case=='A' else 2),2);w=vp(n-(2 if case=='A' else 0),3)
                vals.append((E,b,c,u,w))
            umax=max(t[-2] for t in vals);wmax=max(t[-1] for t in vals)
            new=(12+6*umax+12*wmax)//14
            assert new<H
            stages.append(dict(case=case,H_max=H,u_max=umax,w_max=wmax,next_H_max=new,
                               count=len(vals),digest=hashlib.sha256(json.dumps(sorted(vals),separators=(',',':')).encode()).hexdigest()))
            H=new
        for E,b,c in triples(case,H):
            n=row(case,E,b,c);T=1
            for r in range(4):
                z=n-r
                for p in (2,3,5):
                    while z%p==0:T*=p;z//=p
            lhs=T**6*(3*n*n-12*n+8);rhs=2**20*(n-1)**6*(n-3)**3
            assert lhs<rhs
            tails.append(dict(case=case,E=E,b=b,c=c,n=str(n),T=str(T),lhs=str(lhs),rhs=str(rhs)))
    data={'algebra.json':algebra_data(),'dual_certificates.json':certs,'modular_caps.json':stages,
          'finite_tail.json':tails,'witnesses.json':[{'n':5130,'j':370,'p':23},{'n':5130,'j':250,'p':23},{'n':4880,'j':300,'p':61},{'n':1530,'j':610,'p':17}]}
    for name,value in data.items():
        (out/name).write_text(json.dumps(value,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'output':str(out),'files':len(data),'certificates':len(certs),'terminal_rows':len(tails)},indent=2))

if __name__=='__main__':main()
