#!/usr/bin/env python3
"""Deterministic, bounded heuristic search. Final witnesses are exactly recomputed.
Candidate under test (NOT assumed): H_B(X) <= density(periodic B)*H_X.
All moduli are distinct divisors of a chosen small common period.
"""
import argparse,math,json,time,random
from pathlib import Path
from fractions import Fraction
import numpy as np

def search(L,N,minmod,seed,steps):
    rng=random.Random(seed);start=time.monotonic()
    mods=[n for n in range(max(2,minmod),min(L,N)+1) if L%n==0]
    period=np.zeros(L,dtype=np.int16);local=np.zeros(N+1,dtype=np.int16)
    weights=np.zeros(N+1);weights[1:]=1/np.arange(1,N+1)
    HN=float(weights.sum()); aa=[None]*len(mods);pop=0;hm=0.
    best_score=-math.inf;best_ratio=-math.inf;best=None;best_r=None
    def update(i,a,s):
        nonlocal pop,hm
        if a is None:return
        n=mods[i];pv=period[a::n];lv=local[n+a::n];ww=weights[n+a::n]
        if s==1:
            pop+=int(np.count_nonzero(pv==0));hm+=float(ww[lv==0].sum())
        else:
            pop-=int(np.count_nonzero(pv==1));hm-=float(ww[lv==1].sum())
        pv+=s;lv+=s
    def record():
        nonlocal best_score,best_ratio,best,best_r
        d=pop/L;score=hm-d*HN
        if score>best_score+1e-12:
            best_score=score;best=aa.copy()
        if pop and hm/(d*HN)>best_ratio+1e-12:
            best_ratio=hm/(d*HN);best_r=aa.copy()
    # Several deliberately coherent starts, not an unbounded blind search.
    for step in range(steps):
        phase=step//1000
        if step%1000==0:
            period.fill(0);local.fill(0);pop=0;hm=0.;aa=[None]*len(mods)
            shift=[0,N//3,N,2*N+1][phase%4]
            for i,n in enumerate(mods):
                if rng.random()<0.35:
                    aa[i]=shift%n;update(i,aa[i],1)
            record()
        lam=[0.6,0.8,1.0,1.1][phase%4]
        i=rng.randrange(len(mods));n=mods[i];old=aa[i]
        roll=rng.random()
        if roll<.22:new=None
        elif roll<.42:new=0
        elif roll<.80:new=rng.randint(n,N)%n
        else:new=rng.randrange(n)
        if new==old:continue
        oldobj=hm-lam*(pop/L)*HN
        update(i,old,-1);update(i,new,1)
        newobj=hm-lam*(pop/L)*HN
        temp=0.03*(1-(step%1000)/1000)+0.0001
        accept=newobj>=oldobj or rng.random()<math.exp(max(-745,(newobj-oldobj)/temp))
        if accept:aa[i]=new;record()
        else:update(i,new,-1);update(i,old,1)
        if step%500==0:
            actualpop=int(np.count_nonzero(period));actualhm=float(weights[local>0].sum())
            assert actualpop==pop and abs(actualhm-hm)<1e-8
            pop=actualpop;hm=actualhm
    def exact(a):
        if a is None:return None
        rows=[[n,r] for n,r in zip(mods,a) if r is not None]
        p=bytearray(L);loc=bytearray(N+1)
        for n,r in rows:
            for x in range(r,L,n):p[x]=1
            for x in range(n+r,N+1,n):loc[x]=1
        h=sum((Fraction(1,x) for x in range(1,N+1) if loc[x]),Fraction())
        hn=sum((Fraction(1,x) for x in range(1,N+1)),Fraction())
        d=Fraction(sum(p),L);disc=h-d*hn
        return {'rows':rows,'haar':str(d),'local_harmonic':str(h),'H_N':str(hn),
                'discrepancy':str(disc),'discrepancy_float':float(disc),
                'ratio_float':float(h/(d*hn)) if d else None,
                'exact_positive_discrepancy':disc>0}
    return {'L':L,'N':N,'minimum_modulus':minmod,'available_moduli':len(mods),'steps':steps,'seed':seed,
            'seconds':time.monotonic()-start,'best_discrepancy':exact(best),'best_ratio':exact(best_r)}

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--steps',type=int,default=4000);ap.add_argument('--out',required=True);args=ap.parse_args()
    configs=[(27720,12,2),(27720,48,2),(27720,240,12),(27720,1000,30),
      (720720,64,2),(720720,512,16),(720720,4096,64),(720720,8192,128)]
    out=[]
    for k,(L,N,m) in enumerate(configs):
        r=search(L,N,m,20261005+k,args.steps);out.append(r)
        print(json.dumps({key:r[key] for key in ['L','N','minimum_modulus','available_moduli','steps','seconds']}),flush=True)
        print('best ratio',r['best_ratio']['ratio_float'],'positive exact?',r['best_discrepancy']['exact_positive_discrepancy'],flush=True)
        Path(args.out).write_text(json.dumps(out,indent=2))
