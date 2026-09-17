#!/usr/bin/env python3
"""Complete necessary-system test for 1 <= t <= limit. Standard library only.
Uses alpha < (27 for lambda=1, 1 for lambda=3)*t**4.
This bound follows from BOTH windows; it is not a bound for arbitrary W1 inputs.
"""
import argparse,json,time
from math import gcd

def isolated_three(x:int)->int:
    return 3 if x%3==0 and x%9!=0 else 1

def roots_levels(t:int,lam:int,max_s:int):
    roots=[1];modulus=2
    for s in range(1,max_s+1):
        yield s,modulus,roots
        new=2*modulus
        roots=[y for x in roots for y in (x,x+modulus) if (lam*y*y-t)%new==0]
        modulus=new
        if not roots:break

def certify(limit:int):
    if limit<1:raise ValueError('limit must be positive')
    start=time.perf_counter();count=0;records=[];survivors=[]
    for t in range(1,limit+1,2):
      for lam in (1,3):
        bound=(27 if lam==1 else 1)*t**4
        for s,pow2,roots in roots_levels(t,lam,bound.bit_length()):
          for c in ((1,3) if lam==1 else (1,)):
            alpha=c*pow2
            if alpha>=bound or gcd(t,alpha)!=1:continue
            bs=roots if c==1 else [b+k*pow2 for b in roots for k in (0,1,2) if ((b+k*pow2)**2-t)%3==0]
            count+=len(bs)
            for beta in bs:
              if not 0<2*beta<alpha or gcd(beta,alpha)!=1:continue
              product=beta*(alpha-beta)
              if product%t:continue
              n=1+lam*(product//t)
              if n%alpha or n%4:continue
              g=n//alpha;j=g*beta
              if g<1 or j<4:continue
              if c==3 and n%9==0:continue
              if isolated_three(n-1)!=lam:continue
              mu=isolated_three((n-2)//2)
              if g**3>=3*alpha or g>=mu*t:continue
              if lam*alpha>=3*mu*mu*t**4:continue
              K=(n-2)//(2*mu)
              rem=t*(j-1)%K
              assert gcd(n,j)==g
              assert lam*j*(j-1)%(n-1)==0
              assert (rem==0)==(j*(j-1)*(j-2)%K==0)
              row=[t,n,j,g,alpha,beta,lam,mu,rem]
              records.append(row)
              if rem==0:survivors.append(row)
    records.sort();survivors.sort()
    return {'limit':limit,'record_fields':['t','n','j','g','alpha','beta','lambda','mu','linear_remainder_mod_K'],
            'root_residues_visited':count,'pre_second_window_records':records,'survivors':survivors,
            'elapsed_seconds':round(time.perf_counter()-start,3)}

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--limit',type=int,default=100000);p.add_argument('--output',required=True)
    a=p.parse_args();r=certify(a.limit)
    with open(a.output,'w',encoding='utf-8') as f:json.dump(r,f,indent=2);f.write('\n')
    print(json.dumps({'limit':r['limit'],'root_residues_visited':r['root_residues_visited'],
      'pre_second_window_count':len(r['pre_second_window_records']),'survivors':len(r['survivors']),
      'max_candidate_n':max((x[1] for x in r['pre_second_window_records']),default=0),'elapsed_seconds':r['elapsed_seconds']}))
    if r['survivors']:raise SystemExit('UNRESOLVED NECESSARY MODELS: see output')
