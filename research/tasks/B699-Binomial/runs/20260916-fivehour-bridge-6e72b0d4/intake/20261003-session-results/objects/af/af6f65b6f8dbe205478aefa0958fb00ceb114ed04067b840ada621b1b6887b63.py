import json,math
from fractions import Fraction
from pathlib import Path
w=Path('/mnt/data/r6_work')
for tag,order in [('rev_first',[5,0,4,3,2,1]),('rev_reg',[5,4,3,2,1,0])]:
 with open(w/(tag+'.txt'),'w')as f:
  f.write('6\n')
  for i in order:
   ts=json.load(open(w/f'rev_{i}.json'))['poly'];den=math.lcm(*[Fraction(c).denominator for e,c in ts]);f.write(str(len(ts))+'\n')
   for e,c in ts:f.write(f'{e[2]} {e[0]} {e[1]} {int(Fraction(c)*den)}\n')
