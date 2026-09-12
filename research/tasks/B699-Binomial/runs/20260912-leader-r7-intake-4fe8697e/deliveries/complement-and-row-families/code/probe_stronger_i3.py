#!/usr/bin/env python3
from probe_i3 import factor_sieve,valuation_binom
import math,json,time,argparse
from pathlib import Path

def run(N):
 t=time.monotonic();fac=factor_sieve(N);weak=[];actual=[];central_count=0
 for n in range(8,N+1):
  bl=[];step=1
  for r in range(3):
   for p,a in fac(n-r).items():
    if p<=3:continue
    q=p**a;bl.append((r,p,q))
    if r==0:step*=q
  for j in range(((4+step-1)//step)*step,(n-1)//2+1,step):
   if any(j%q>r for r,p,q in bl):continue
   row={'n':n,'j':j,'blocks':bl,'gcd':math.gcd(math.comb(n,3),math.comb(n,j))}
   if len(weak)<30:weak.append(row)
   if all(valuation_binom(n,j,p)==0 for r,p,q in bl):
    actual.append(row)
    if len(actual)>=20:break
  if len(actual)>=20:break
 return {'N_requested':N,'last_n':n,'strict_off_center':True,'weak_sample':weak,'actual_p_ge_5_absence':actual,'elapsed_seconds':time.monotonic()-t,'status':'probe only'}
if __name__=='__main__':
 a=argparse.ArgumentParser();a.add_argument('--N',type=int,default=1000000);a.add_argument('--output',required=True);args=a.parse_args();r=run(args.N);Path(args.output).write_text(json.dumps(r,indent=2));print(json.dumps(r,indent=2))
