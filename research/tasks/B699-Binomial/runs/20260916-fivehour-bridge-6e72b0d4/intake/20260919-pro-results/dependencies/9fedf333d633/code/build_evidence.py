#!/usr/bin/env python3
"""Optional deterministic discovery/rebuild. Never imported by verify.py.
All original-exponent loops follow the paper's already established D<=168/166.
Refuses to write into a nonempty directory or alter the frozen manifest.
"""
from __future__ import annotations
import argparse,hashlib,json,math,sys
from fractions import Fraction as F
from pathlib import Path
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]

def dlog(p,h,num,den=1):
    k0=2 if p==2 else 1
    starts=[0] if p==2 else [0,1]
    possible=[a for a in starts if (den*pow(5,a,p**k0)-num)%p**k0==0]
    if len(possible)!=1:raise ValueError('target outside the required cyclic group')
    a=possible[0];M=1 if p==2 else 2
    for k in range(k0+1,h+1):
        mod=p**k
        choices=[a+t*M for t in range(p) if (den*pow(5,a+t*M,mod)-num)%mod==0]
        if len(choices)!=1:raise AssertionError('nonunique logarithm lift')
        a=choices[0];M*=p
    return a,M

def discover(p,h,X):
    logs=[]
    for base in (13,17,529,61):
        a,M=dlog(p,h,base);logs.append(a)
    B=[[1]+logs]+[[0]+[M if i==j else 0 for j in range(4)] for i in range(4)]
    try:
        from sympy import Matrix
        red=Matrix(B).lll(delta=F(3,4))
        rows=[list(map(int,red.row(i))) for i in range(5)]
    except (ImportError,AssertionError):
        from discovery_tools import lll
        rows,_=lll(B)
    candidates=rows+[[rows[i][k]+z*rows[j][k] for k in range(5)]for i in range(5)for j in range(i)for z in (-2,-1,1,2)]
    out=[]
    for case in ('A','B'):
        num,den={('A',2):(-5,3),('A',3):(-1,1),('B',2):(-3,1),('B',3):(-5,1)}[case,p]
        target,M2=dlog(p,h,num,den)
        if M2!=M:raise AssertionError('period mismatch')
        ratio=lambda row:F(min(row[0]*target%M,-row[0]*target%M),X*max(sum(map(abs,row)),1))
        r=max(candidates,key=ratio)
        dis=min(r[0]*target%M,-r[0]*target%M);cost=X*sum(map(abs,r))
        if dis<=cost:raise RuntimeError('search failed; no conclusion drawn')
        out.append({'case':case,'p':p,'h':h,'X':str(X),'M':str(M),'logs':list(map(str,logs)),
                    'num':num,'den':den,'target':str(target),'dual':list(map(str,r)),
                    'distance':str(dis),'cost':str(cost)})
    return out

def valid(case,x):
    E,b,c,f,e=x
    if case=='A':return (E+b+e)%2==0 and (E+c)%2==1
    return (E+b+e)%2==1 and (E+4*b+3*c+2*f+2*e)%6==4

def tuples(case,D):
    for E in range(2,D//2+1):
     for b in range((D-2*E)//3+1):
      for c in range((D-2*E-3*b)//4+1):
       for f in range((D-2*E-3*b-4*c)//8+1):
        for e in range((D-2*E-3*b-4*c-8*f)//5+1):
         x=(E,b,c,f,e)
         if valid(case,x):yield x

def row(case,x):return (3 if case=='A' else 1)*math.prod(p**a for p,a in zip((5,13,17,529,61),x))+5

def vp(n,p):
    if n<=0:raise ValueError('valuation argument')
    out=0
    while n%p==0:n//=p;out+=1
    return out

def finite():
    stages=[];tails=[]
    for case,D in [('A',168),('B',166)]:
        for _ in range(5):
            count=umax=wmax=0;argu=argw=None;dig=hashlib.sha256()
            for x in tuples(case,D):
                n=row(case,x);u=vp(n-(0 if case=='A' else 2),2);w=vp(n-(2 if case=='A' else 0),3)
                dig.update((','.join(map(str,(*x,u,w)))+'\n').encode());count+=1
                if u>umax:umax=u;argu=x
                if w>wmax:wmax=w;argw=x
            new=(12+6*umax+12*wmax)//7
            if new>=D:raise AssertionError('expected strict compression did not hold')
            stages.append(dict(case=case,Dmax=D,count=count,u_max=umax,w_max=wmax,next_Dmax=new,hash=dig.hexdigest(),arg_u=argu,arg_w=argw))
            D=new
        for x in tuples(case,D):
            n=row(case,x);T=1
            for r in range(4):
                v=n-r
                for p in (2,3,5):
                    while v%p==0:T*=p;v//=p
            l=T**6*(3*n*n-12*n+8);r=2**20*(n-1)**6*(n-3)**3
            if l>=r:raise AssertionError('unclosed finite endpoint')
            tails.append(dict(case=case,exponents=x,n=str(n),T=str(T),lhs=str(l),rhs=str(r),pass_=True))
            tails[-1]['pass']=tails[-1].pop('pass_')
    return stages,tails

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--output',required=True,type=Path);args=parser.parse_args()
    out=args.output.resolve()
    if out==ROOT/'evidence' or out.exists() and any(out.iterdir()):parser.error('output must be a new empty directory')
    out.mkdir(parents=True,exist_ok=True)
    certs=[]
    for p,h,X in [(2,800,10**42),(3,505,10**42),(2,85,1000),(3,55,1000)]:certs+=discover(p,h,X)
    stages,tails=finite()
    values=[(0,0,1472,512,23),(1,4,320,-208,13),(2,6,68,-244,1037),(3,6,68,-244,1037),(4,4,320,-208,13),(5,0,1472,512,23)]
    data={'dual_certificates.json':certs,'finite_compression.json':stages,'finite_tail.json':tails,
          'analytic.json':{'logarithm_count':6,'height_parameters':[5]*6,'Phi_upper':str(22000*100**14*2*5**6*6),'H_cap':str(10**42),'weighted_coordinates':[2,3,4,8,5],'external_theorem_reproved':False},
          'algebra.json':{'slot_values':[dict(slot=a,J=b,Kcal=c,Hcal=d,rough_product_constant=e)for a,b,c,d,e in values]},
          'examples.json':[{'n':'215480','j':'2705','p':11,'strict_joint_example':True}]}
    for name,value in data.items():(out/name).write_text(json.dumps(value,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'output':str(out),'certificates':len(certs),'terminal_rows':len(tails),'frozen_manifest_modified':False}))
if __name__=='__main__':main()
