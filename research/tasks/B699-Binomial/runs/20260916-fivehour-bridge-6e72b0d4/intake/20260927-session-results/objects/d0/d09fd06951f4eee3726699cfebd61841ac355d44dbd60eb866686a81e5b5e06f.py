#!/usr/bin/env python3
"""Falsifiable route diagnosis for A382; not an i3 proof or an input search."""
import sys
sys.dont_write_bytecode=True
import math,json
from collections import Counter
from generate import orbit,FN,powers

def main():
 records=[]
 for p in (5,11,13,17,19):
  os=orbit(p);T=math.lcm(1140,len(os));pp=powers(p);logs={n:s for s,n in enumerate(pp)};cnt=Counter()
  memo={}
  for q in range(T):
   if q%1140 not in (0,760):continue
   cnt['entry']+=1;d,y=os[q%len(os)]
   if math.gcd(d,p)!=1:cnt['unresolved_nonunit_d']+=1;continue
   if (d,y) not in memo:
    rr=[FN(d,y,382,H,p) for H in range(p) if FN(d,y,382,H,p)['F']==0]
    memo[d,y]=[r for r in rr if r['n'] in logs and (logs[r['n']]-3)%math.gcd(15,len(pp))==0]
   if memo[d,y]:cnt['same_c_s_rows']+=1
  records.append({'p':p,'source_period':len(os),'power2_order':len(pp),'joint_q_period':T,'counts':dict(cnt),'same_c':1,'s_mod15':3})
 print(json.dumps({'scope':'A382 necessary modular diagnosis only','records':records,'all_source_periods_closed':True,'original_input_constructed':False},indent=2))
if __name__=='__main__':main()
