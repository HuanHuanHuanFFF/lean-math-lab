#!/usr/bin/env python3
"""Recreate final polynomial certificates from exact saved basis combinations.
No optimizer, approximate rank, or floating-point arithmetic is used here.
"""
from collections import defaultdict
from math import comb, gcd
from pathlib import Path
import json
ROOT=Path(__file__).resolve().parents[1]
COMBINATIONS={'124':[-1,0,0,0,0,0,0],
              '234':[0,247867958,-395342910,-2560737]}

def build():
 out={}
 for key,weights in COMBINATIONS.items():
  basis=json.loads((ROOT/f'evidence/three_slot_{key}_basis.json').read_text())['polynomials']
  if len(weights)!=len(basis):raise ValueError('Wrong basis size')
  ts=defaultdict(int)
  for weight,poly in zip(weights,basis):
   for a,b,c in poly:ts[a,b]+=weight*c
  common=gcd(*ts.values())
  terms=[[a,b,c//common] for (a,b),c in sorted(ts.items()) if c]
  shifted=defaultdict(int)
  for a,b,c in terms:
   for u in range(a+1):
    for v in range(b+1):
     shifted[u,v]+=c*comb(a,u)*comb(b,v)*6**(a+b-u-v)
  if any(c<0 for c in shifted.values()) or shifted[0,0]<=0:
   raise ValueError('Not positive on the legal domain')
  norm=sum(abs(c) for a,b,c in terms)
  out[key]={'q4_slots':list(map(int,key)),'degree':25,'origin_order':1,
            'l1':norm,'height_exclusive':2**26*2**16*3**6*5**12*norm,
            'weights':{'1':12,'3':6,'4':8},'checked_taylor_conditions':348,
            'positive_shift_terms':sum(c>0 for c in shifted.values()),'terms':terms}
 return out
if __name__=='__main__':
 target=ROOT/'evidence/i5_kernels.json'
 data=build()
 if target.exists() and json.loads(target.read_text())!=data:
  raise ValueError('Existing certificate differs from exact reconstruction')
 target.write_text(json.dumps(data,indent=2)+'\n')
 print('PASS: exact i5 kernel reconstruction')
