#!/usr/bin/env python3
"""Recover exact diagnostic models from saved LP runs; never used in positive proofs."""
import argparse,json
from fractions import Fraction
from pathlib import Path

def signcert(d,deg,c):
 h=d+1
 if deg==1:a,b,z=c;t=[a+b,b,h*(a+b)+z]
 else:
  a,b,e,D,E,F=c;t=[a+b+e,b+2*e,e,2*h*(a+b+e)+D+E,h*(b+2*e)+E,h*h*(a+b+e)+h*(D+E)+F]
 return (all(z>=0 for z in t) and t[-1]>0) or (all(z<=0 for z in t) and t[-1]<0)

def main(src,out):
 result={'meaning':'Exact feasible rational relaxation models only; not integer solutions, NC inputs, or counterexamples.','cases':[],'pools':{}}
 for d,hcount in [(6,2),(8,3)]:
  pool=json.loads((src/f'conic_{d}_{hcount}.json').read_text())['functions']
  cases=json.loads((src/f'refined_{d}_{hcount}.json').read_text())['cases']
  pts=[(b,r-b) for r in range(d) for b in range(r+1)]
  result['pools'][str(d)]=pool
  for H,status,xx in cases:
   if status!=0:continue
   x=[Fraction(float(a)).limit_denominator(10**6) for a in xx];rough=set(range(d))-set(H);cnt=0
   assert min(x)>=0
   for r in rough:assert sum(a for a,pt in zip(x,pts) if sum(pt)==r)>=1
   for deg,c,inds in pool:
    if signcert(d,deg,c) or any(all(sum(pts[k])!=r for k in inds) for r in rough):
     assert sum(x[k] for k in inds)<=deg;cnt+=1
   result['cases'].append({'d':d,'H':H,'values':[str(a) for a in x],'constraints':cnt})
 out.write_text(json.dumps(result,separators=(',',':'))+'\n')
 print('EXACT_RATIONAL_FAILURE_MODELS',len(result['cases']))
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('source',type=Path);ap.add_argument('out',type=Path);a=ap.parse_args();main(a.source,a.out)
