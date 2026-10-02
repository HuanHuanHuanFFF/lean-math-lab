from pathlib import Path
import json,time
from sympy import QQ
from sympy.polys.rings import ring
out=Path(__file__).resolve().parents[1];root=Path('/mnt/data/reg4_r1_input/B699-ProB-REG4-SCALE-20261002')
data=json.loads((root/'certificates/scale.json').read_text());ed=json.loads((out/'certificates/exception_linear.json').read_text());rs=json.loads((out/'certificates/rsub.json').read_text())['data']
R,u,y,L=ring('u,y,L',QQ)
def pack(p):return [[list(m),str(c)] for m,c in sorted(p.items())]
def edp(terms):return R.from_dict({(m[1],m[2],m[3]):QQ(c) for m,c in terms})
C=next(edp(terms) for terms,e in ed['K_substitution_factors'] if len(terms)==88)
print('C lc_u',C.coeff_wrt(u,9).factor_list(),flush=True)
A,B=edp(ed['A']),edp(ed['B'])
# H discrimination numerator
hd=R.zero;deg=max(m[2] for m,c in data['H'])
for i in range(deg+1):hd+=R.from_dict({(m[0],m[1],m[3]):QQ(c) for m,c in data['H'] if m[2]==i})*B**i*A**(deg-i)
co,fa=hd.factor_list();print('H factors',co,[(len(p),p.degrees(),e) for p,e in fa],flush=True)
# prem + known power removal, prime C reduction. Store exact full identity via quotient at later production.
result={}
for name,p in [('Hnum',hd)]+[(name,next(R.from_dict({tuple(m):QQ(c) for m,c in terms}) for terms,e in rs[name]['factors'] if max(m[2] for m,c in terms)>0)) for name in ['Q2','R4']]:
 t=time.monotonic();rem=p.prem(C);print(name,'prem time',time.monotonic()-t,'terms',len(rem),'degrees',rem.degrees(),flush=True)
 co,fa=rem.factor_list();print(name,'factors',co,[(len(q),q.degrees(),e) for q,e in fa],flush=True)
 result[name]={'prem':pack(rem),'constant':str(co),'factors':[[pack(q),e] for q,e in fa]}
 for q,e in fa:
  if len(q)<60:print(name,'small',q,e,flush=True)
 (out/'experiments/curve_reduce.json').write_text(json.dumps({'vars':['u','y','L'],'data':result},separators=(',',':')))
