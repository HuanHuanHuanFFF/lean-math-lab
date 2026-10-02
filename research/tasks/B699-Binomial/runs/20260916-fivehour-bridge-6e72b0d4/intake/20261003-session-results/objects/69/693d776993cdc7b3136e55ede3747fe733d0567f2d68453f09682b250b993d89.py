from pathlib import Path
import json,time
from sympy import QQ
from sympy.polys.rings import ring
out=Path(__file__).resolve().parents[1];root=Path('/mnt/data/reg4_r1_input/B699-ProB-REG4-SCALE-20261002')
data=json.loads((root/'certificates/scale.json').read_text());ed=json.loads((out/'certificates/exception_linear.json').read_text());lo=json.loads((out/'certificates/low.json').read_text())
R,u,y,L=ring('u,y,L',QQ)
def edp(n):return R.from_dict({(m[1],m[2],m[3]):QQ(c) for m,c in ed[n]})
def pack(p):return [[list(m),str(c)] for m,c in sorted(p.items())]
A,B=edp('A'),edp('B')
cacheA={i:A**i for i in range(13)};cacheB={i:B**i for i in range(13)}
def subs(terms):
 degree=max(m[2] for m,c in terms);p=R.zero
 for i in range(degree+1):
  coeff=R.from_dict({(m[0],m[1],m[3]):QQ(c) for m,c in terms if m[2]==i})
  p+=coeff*cacheB[i]*cacheA[degree-i]
 return p,degree
result={}
for name in ['D','F','a','b','c','eprime']:
 t=time.monotonic();p,deg=subs(data[name]);co,fa=p.factor_list();print(name,'rdegree',deg,'elapsed',time.monotonic()-t,'factor',co,[(len(q),q.degrees(),e) for q,e in fa],flush=True)
 for q,e in fa:
  if len(q)<100:print(name,'factor',q,e,flush=True)
 result[name]={'rdegree':deg,'polynomial':pack(p),'scalar':str(co),'factors':[[pack(q),e] for q,e in fa]}
 (out/'certificates/rsub.json').write_text(json.dumps({'variables':['u','y','L'],'data':result},separators=(',',':')))
for name,terms in [('Q2',data['Q2']),('R4',lo['low']['4']['factors'][0][0])]:
 t=time.monotonic();p,deg=subs(terms);print(name,'sub elapsed',time.monotonic()-t,'terms',len(p),'degrees',p.degrees(),flush=True)
 co,fa=p.factor_list();print(name,'factor elapsed',time.monotonic()-t,'scalar',co,'factors',[(len(q),q.degrees(),e) for q,e in fa],flush=True)
 result[name]={'rdegree':deg,'polynomial':pack(p),'scalar':str(co),'factors':[[pack(q),e] for q,e in fa]}
 (out/'certificates/rsub.json').write_text(json.dumps({'variables':['u','y','L'],'data':result},separators=(',',':')))
