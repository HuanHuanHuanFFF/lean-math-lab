import os
from math import gcd,isqrt
from pathlib import Path
import json
R=Path(os.environ.get("RESEARCH_OUT", Path(__file__).resolve().parents[1]))
a=1;al=3;r=1;out=[]
for a in range(1,501):
 if a>1:
  r=next(r+c*al for c in range(3) if ((r+c*al)**2-10)%(3*al)==0);al*=3
 for z in [1,2,4,5,7,8,10,11,13,14,16,17,19,20,25,28,31,32]:
  if z%3==0:continue
  b=r*z%al;b=min(b,al-b)
  bc=b*(al-b);den=10*z*z
  if not b or bc%den:continue
  N=bc//den
  if (N+1)%al:continue
  g=(N+1)//al;n=g*al;j=g*b
  if g<1 or j<7 or n%720!=450:continue
  q4=(n-4)//2;C=gcd(q4,j-2);E4=gcd(q4,j*(n-j));K=al*al-120*z*z
  if K%(3*C): raise AssertionError((a,z,C))
  T=K//(3*C)
  out.append(dict(a=a,z=z,g=g,n=n,j=j,alpha=al,beta=b,E4=E4,C=C,T=T,
   E4_square=isqrt(E4)**2==E4,C_mod12=C%12,T_mod12=T%12,
   saturated_central=(gcd(q4,K)==C),common_T_q4=gcd(T,q4),
   g_bound_pass=8*g**4<n))
print('B INPUTS',len(out),'FIRST',[(o['a'],o['z'],o['C'],o['E4'],o['C_mod12'],o['common_T_q4']) for o in out[:20]])
print('central minus',[(o['a'],o['z'],o['C'],o['E4'],o['T_mod12']) for o in out if o['C_mod12'] in (5,7)][:20])
(R/'certificates/norm_probe.json').write_text(json.dumps(out,indent=2))
