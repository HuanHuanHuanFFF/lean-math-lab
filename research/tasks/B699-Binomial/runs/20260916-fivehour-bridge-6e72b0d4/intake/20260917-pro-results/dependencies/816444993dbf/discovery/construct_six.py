import sympy as S, math, json, time
from sympy.polys.matrices import DomainMatrix
from sympy.polys.domains import ZZ
from pathlib import Path
base=Path(__file__).resolve().parent; rec=json.loads((base/'six_probe.json').read_text())[-1]
D=rec['D'];rs=rec['rs'];ws=rec['ws'];ex=[(a,b)for a in range(D+1)for b in range(D+1-a)]
rows=[]
for r,w in zip(rs,ws):
 for x in range(r+1):
  y=r-x
  for u in range(w):
   for v in range(w-u):rows.append([math.comb(a,u)*math.comb(b,v)*x**(a-u)*y**(b-v)if a>=u and b>=v else 0 for a,b in ex])
t0=time.monotonic(); ns=DomainMatrix.from_list(rows,ZZ).nullspace().to_list();print('nullseconds',time.monotonic()-t0,'dim',len(ns),flush=True)
x,y=S.symbols('x y');data=[]
for vec in ns:
 vv=[int(v)for v in vec];gg=math.gcd(*vv);vv=[v//gg for v in vv]
 f=S.Poly(sum(c*x**a*y**b for c,(a,b)in zip(vv,ex)),x,y)
 print('terms',len(f.terms()),'l1bits',sum(abs(c)for e,c in f.terms()).bit_length()if isinstance(sum(abs(c)for e,c in f.terms()),int)else int(sum(abs(c)for e,c in f.terms())).bit_length())
 print('factor degrees',[(S.total_degree(ff),ee) for ff,ee in S.factor_list(f.as_expr())[1]],flush=True)
 tr=S.Poly(f.as_expr().subs({x:x+7,y:y+7},simultaneous=True),x,y)
 cs=[int(c) for e,c in tr.terms()]; print('shift signs',len(cs),sum(c>0 for c in cs),sum(c<0 for c in cs),flush=True)
 if all(c<0 for c in cs):f=-f;tr=-tr
 factors=S.factor_list(f.as_expr())[1]
 print('factors signs',[(S.total_degree(ff),e)for ff,e in factors])
 data.append(dict(**rec,poly=[[a,b,int(c)]for(a,b),c in f.terms()],shift7=[[a,b,int(c)]for(a,b),c in tr.terms()],factors=[dict(power=int(e),poly=[[a,b,int(c)]for(a,b),c in S.Poly(ff,x,y).terms()])for ff,e in factors]))
(base/'six_kernel.json').write_text(json.dumps(data,indent=2))
