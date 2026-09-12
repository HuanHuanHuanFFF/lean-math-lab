from pathlib import Path
from fractions import Fraction as F
from math import factorial, prod
import json
OUT=Path(__file__).resolve().parent
saved=json.loads((OUT/'COSTS.json').read_text())
checks=0
for item in saved['items']:
 c,d=item['cd'];r=c-d;step=1 if r%2==0 else 2
 assert item['G_step_m']==step
 assert item['raw_step_numerator_and_denominator_degrees']==c*step
 assert item['factorial_prefactor_step_degree']==c+d
 assert item['q_e_core_degrees']==c+d
 assert item['weighted_gap_tree_degree_delta0_delta1']==[2*(c+d)-1,2*(c+d)-2]
 R2=F((c+d)**(c+d),d**(2*d)*r**r*4**c)
 assert str(R2)==item['R2']
 assert [R2.numerator.bit_length(),R2.denominator.bit_length()]==item['R2_numerator_denominator_bits']
 def D(m,delta):
  u=d*m-delta;v=r*m+delta-1;f=v//2
  return F(factorial(u+f)*factorial(f),factorial(u)*factorial(v))
 for t in item['tracks']:
  m=t['initial_m'];delta=t['delta'];u=d*m-delta;v=r*m+delta-1;f=v//2
  assert (t['u'],t['v'],t['f'])==(u,v,f)
  assert str(D(m,delta))==t['initial_D']
  if step==2:assert m%2==t['m_parity']
 for m in range(1,13):
  for delta in [0,1]:
   u=d*m-delta;v=r*m+delta-1;f=v//2
   up=d*(m+step)-delta;vp=r*(m+step)+delta-1;fp=vp//2
   ratio=F(prod(range(u+f+1,up+fp+1))*prod(range(f+1,fp+1)),prod(range(u+1,up+1))*prod(range(v+1,vp+1)))
   assert D(m+step,delta)==D(m,delta)*ratio;checks+=1
  adjacent=F(d*m,2) if (r*m)%2==0 else F(2*d,r*((c+d)*m-1))
  assert D(m,1)==D(m,0)*adjacent
print(json.dumps({'status':'PASS_EXACT_SMALL_COST_CHECKS_NOT_LEAN','cds':[r['cd']for r in saved['items']],'factorial_step_cases':checks,'adjacent_cases':36,'initial_tracks':sum(len(r['tracks'])for r in saved['items'])}))
