import json,pathlib,time
from sympy.polys.rings import ring
from sympy import QQ,primerange,GF
from sympy.polys.galoistools import gf_irreducible_p
from sympy.polys.domains import ZZ
W=pathlib.Path('/mnt/data/r4_work');R,u,y=ring('u,y',QQ);f=json.loads((W/'branch_factors.json').read_text());B=[z for z in f['KN']['factors'] if z['degrees']==[9,10]][0];B=R.from_dict({tuple(m):QQ(c) for m,c in B['terms']});J=u*u+u*y*y-3*u*y+y;A=8*u**3*y-5*(u-1)**2*(y-1)**3
for name,P in [('B9',B),('J',J),('A5',A)]:
 p=P.evaluate(y,2);print(name,'y2',p,'factor QQ',p.factor_list(),flush=True)
 coeff=[int(p.get((j,),0)) for j in range(p.degree(),-1,-1)]
 for prime in primerange(7,10000):
  if coeff[0]%prime and gf_irreducible_p([v%prime for v in coeff],prime,ZZ):print('IRRED PRIME',prime,flush=True);break
 else:print('not found prime',flush=True)
