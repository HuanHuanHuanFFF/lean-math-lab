#!/usr/bin/env python3
"""Show that not_covered is not a counterexample. Finite examples only."""
from pathlib import Path
from math import gcd,comb
import json
from consumer import assess,small_lt
ROOT=Path(__file__).resolve().parents[1];out=[]
for n in range(18,2501):
 for i in (5,6,7,8):
  for j in range(i+1,n//2+1):
   z=assess(n,i,j)
   if z['status']=='not_covered':
    G=gcd(comb(n,i),comb(n,j));large=G//small_lt(G,i);assert large>1
    out.append({'n':n,'i':i,'j':j,'assessment':z,'actual_qualified_gcd':str(large)});break
  if len(out)>=5:break
 if len(out)>=5:break
(ROOT/'evidence/uncovered-examples.json').write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
print('PASS_UNCOVERED_EXAMPLES',len(out))
