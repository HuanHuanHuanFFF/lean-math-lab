from pathlib import Path
import json,time
from sympy import QQ
from sympy.polys.rings import ring
out=Path(__file__).resolve().parents[1];root=Path('/mnt/data/reg4_r1_input/B699-ProB-REG4-SCALE-20261002')
data=json.loads((root/'certificates/scale.json').read_text());lo=json.loads((out/'certificates/low.json').read_text())['low']
R,L,u,y,r=ring('L,u,y,r',QQ)
def cv(terms):return R.from_dict({(m[3],m[0],m[1],m[2]):QQ(c) for m,c in terms})
def pack(p):return [[list(m),str(c)] for m,c in sorted(p.items())]
Q2,a=cv(data['Q2']),cv(data['a']);ans={}
for i in range(4,-1,-1):
 pp=cv(lo[str(i)]['factors'][0][0]);t=time.monotonic();q=R.zero;rem=pp;power=0
 while rem.degree(L)>=2:
  n=rem.degree(L);cf=rem.coeff_wrt(L,n)
  try:
   qq=cf.exquo(a);rem-=qq*L**(n-2)*Q2;q+=qq*L**(n-2)
  except Exception:
   rem=a*rem-cf*L**(n-2)*Q2;q=a*q+cf*L**(n-2);power+=1
 assert a**power*pp==q*Q2+rem
 print(i,'a power',power,'time',time.monotonic()-t,'terms',len(rem),'degrees',rem.degrees(),flush=True)
 facs={}
 for n in range(2):
  co,fa=rem.coeff_wrt(L,n).factor_list();print(i,'coeff',n,'scalar',co,'factor',[(len(p),p.degrees(),e) for p,e in fa],flush=True)
  facs[str(n)]={'constant':str(co),'factors':[[pack(p),e] for p,e in fa]}
 ans[str(i)]={'a_power':power,'quotient':pack(q),'remainder':pack(rem),'factors':facs}
 (out/'experiments/low_remainders.json').write_text(json.dumps({'variables':['L','u','y','r'],'data':ans},separators=(',',':')))
