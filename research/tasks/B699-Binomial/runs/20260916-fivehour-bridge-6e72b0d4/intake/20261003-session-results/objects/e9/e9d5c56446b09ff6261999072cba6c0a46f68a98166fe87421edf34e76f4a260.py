from pathlib import Path
import json,time
import sympy as s
from sympy import GF
from sympy.polys.rings import ring
out=Path(__file__).resolve().parents[1];ed=json.loads((out/'certificates/exception_linear.json').read_text());rs=json.loads((out/'certificates/rsub.json').read_text())['data']
ct=next(terms for terms,e in ed['K_substitution_factors'] if len(terms)==88)
q2=next(terms for terms,e in rs['Q2']['factors'] if any(m[2] for m,c in terms))
q4=next(terms for terms,e in rs['R4']['factors'] if any(m[2] for m,c in terms))
z=s.Symbol('z');cs=s.symbols('a0:3')+s.symbols('b0:5');temp=s.Poly(s.resultant(sum(cs[i]*z**i for i in range(3)),sum(cs[i+3]*z**i for i in range(5)),z),cs)
print('template terms',len(temp.terms()),flush=True)
for p in [5,7,11,13,17,19,23,31]:
 R,y=ring('y',GF(p));res=[]
 for uv in [2,3,4]:
  if uv%p in [0,1]:continue
  def evco(terms,idx,source='new'):
   d={}
   for m,c in terms:
    uu,yy,ll=(m[1],m[2],m[3]) if source=='C' else m
    if ll!=idx:continue
    cf=s.Rational(c);val=(int(cf.p)*pow(int(cf.q),-1,p)*pow(uv,uu,p))%p
    d[(yy,)]=(d.get((yy,),0)+val)%p
   return R.from_dict(d)
  C=evco(ct,0,'C');vs=[evco(q2,i).rem(C) for i in range(3)]+[evco(q4,i).rem(C) for i in range(5)]
  rr=R.zero
  for m,c in temp.terms():
   term=R.ground_new(int(c))
   for i,exp in enumerate(m):
    if exp:term=(term*vs[i]**exp).rem(C)
   rr=(rr+term).rem(C)
  gg=C.gcd(rr);print('p,u',p,uv,'Cdegree',C.degree(),'resremdeg',rr.degree(),'gcd',gg,flush=True)
  if gg==R.one:
   ss,tt,g=rr.gcdex(C);assert ss*rr+tt*C==R.one
   def pack(q):return [[list(m),str(int(c))] for m,c in sorted(q.items())]
   cert={'p':p,'u':uv,'C':pack(C),'resultant_mod_C':pack(rr),'bezout_res':pack(ss),'bezout_C':pack(tt),'template_variables':[str(v) for v in cs],'resultant_template':[[list(m),str(c)] for m,c in temp.terms()]}
   (out/'certificates/finite_exception_specialization.json').write_text(json.dumps(cert,indent=2))
   print('FOUND CERTIFICATE',flush=True);raise SystemExit
