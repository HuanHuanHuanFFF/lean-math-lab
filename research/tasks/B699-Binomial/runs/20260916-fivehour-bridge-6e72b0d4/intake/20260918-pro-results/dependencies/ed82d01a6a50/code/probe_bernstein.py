from fractions import Fraction
from math import comb, log2
from pathlib import Path
import json
D=json.loads((Path(__file__).resolve().parents[1]/'sources/frozen_i5_kernels.json').read_text())
def split(c):
 levels=[c]
 while len(levels[-1])>1:
  prev=levels[-1];levels.append([(a+b)/2 for a,b in zip(prev,prev[1:])])
 return [x[0] for x in levels],[x[-1] for x in levels[::-1]]
for tag,k in D.items():
 c=[Fraction(0)]*26
 for a,b,t in k['terms']:
  if a+b==25:c[a]=Fraction(t,comb(25,a))
 L=[c]
 for depth in range(8):
  B=max(max(l) for l in L);cu=(B.numerator+B.denominator-1)//B.denominator
  print(tag,depth,'ceil upper',cu,'log2',log2(cu))
  if depth<7:L=[a for c in L for a in split(c)]
