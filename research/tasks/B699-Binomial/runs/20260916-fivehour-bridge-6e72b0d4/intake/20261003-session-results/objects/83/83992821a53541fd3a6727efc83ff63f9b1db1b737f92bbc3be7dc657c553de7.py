from pathlib import Path
import json,time
import sympy as s
from sympy import QQ
from sympy.polys.rings import ring
W=Path('/mnt/data/r7_work');t=s.symbols('t')
for F in [t*t+1,t**4+10*t*t-8*t+13]:
 st=time.time(); print('factor',s.factor_list(F),flush=True)
 K=QQ.alg_field_from_poly(s.Poly(F,t),alias='a'); R,r=ring('r',K)
 def load(n):
  d=json.loads((W/f'H_{n}.json').read_text());a={}
  for (i,j),c in d['poly']:
   row=a.setdefault(j,{})
   row[i]=QQ(c)
  return R.from_dict({(j,):K(s.Poly.from_dict({(i,):c for i,c in v.items()},t,domain=QQ).rem(s.Poly(F,t,domain=QQ)).all_coeffs()) for j,v in a.items()})
 names=['P5','V4','V3','V2','V1','V0'];ps=[load(n)for n in names];kk=load('K');nn=load('N')
 print('degrees',[p.degree()for p in ps],flush=True)
 g=ps[0]; reps=[R.one]+[R.zero]*5
 for i in range(1,6):
  a,b,gg=g.gcdex(ps[i]);reps=[a*v for v in reps];reps[i]+=b;g=gg
  print('gcd',i,'degree',g.degree(),'terms',len(g),'seconds',time.time()-st,flush=True)
  if g==R.one:break
 print('g=',g,flush=True)
 for m in range(1,max(1,g.degree())+1):
  target=r**m;quo,rem=target.div(g)
  if not rem: break
 if rem: print('NOT_GATE_SUPPORTED',flush=True);continue
 reps=[quo*v for v in reps]
 assert sum((v*p for v,p in zip(reps,ps)),R.zero)==target
 def ser(poly):
  out=[]
  for (j,),val in poly.items():
   co=val.to_list()
   for i,c in enumerate(reversed(co)):
    if c:out.append([[i,j],str(c)])
  return sorted(out)
 out={'F':list(map(str,s.Poly(F,t).all_coeffs()[::-1])),'names':names,'gate_power':m,'target':'r^m','multipliers':[ser(v)for v in reps],'gcd':ser(g),'field_degree':K.mod.degree()}
 (W/f'H_terminal_{s.degree(F,t)}.json').write_text(json.dumps(out))
 print('DONE',m,[len(v)for v in out['multipliers']],time.time()-st,flush=True)
