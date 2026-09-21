from pathlib import Path
import json,sys
from fractions import Fraction as F
from math import comb
import sympy as sp
import search_b22 as e
D=Path(__file__).parent
raw=json.loads((D/'fast/leaves.json').read_text())
UNIQ={}
for idx,L in enumerate(raw['leaves'],1):
 key=json.dumps([L['base'],L['directions']]);UNIQ.setdefault(key,dict(ids=[],data=L))['ids'].append(idx)
res=[]
for u in UNIQ.values():
 L=u['data'];vecs=[[F(x) for x in L['base']]+[F(1)]]+[[F(x) for x in V]+[F(0)] for V in L['directions']]
 def form(row):return [sum(c*x for c,x in zip(row,V)) for V in vecs]
 ms=[];forms=[]
 for r in range(3,9):
  rr=[]
  for v in e.VR[r]:
   for deg in range(9):
    ff=[form(e.jet(r,v,deg-j,j)) for j in range(deg+1)]
    if any(any(x) for x in ff):break
   rr.append(deg);forms.append([[str(x) for x in f] for f in ff])
  ms.append(rr)
 mu=sum(map(sum,ms));z=sum(x>0 for rr in ms for x in rr)
 if mu!=22:continue
 pars=sp.symbols('t:'+str(len(vecs)-1));N,X=sp.symbols('N X')
 expr=sp.expand(sum((sp.Rational(vecs[0][k])+sum(pars[t]*sp.Rational(vecs[t+1][k]) for t in range(len(pars))))*N**a*X**b for k,(a,b) in enumerate(e.FULL)))
 fac=sp.factor(expr)
 common=sp.gcd_list([(sum(sp.Rational(V[k])*N**a*X**b for k,(a,b) in enumerate(e.FULL))) for V in vecs])
 rec=dict(ids=u['ids'],dimension=len(pars),m=ms,mu=mu,z=z,delta=[4-sum(rr) for rr in ms],base=L['base'],directions=L['directions'],expression=str(expr),factorization=str(fac),common_factor=str(common.as_expr()),leading_forms=forms)
 res.append(rec)
 print('FAMILY',len(res),'ids',u['ids'],'dim',len(pars),'delta',rec['delta'],'z',z,'factor',str(fac)[:280],flush=True)
(D/'families.json').write_text(json.dumps(dict(unique_spaces=len(UNIQ),raw=len(raw['leaves']),families=res),indent=2))
print('TOTAL',len(raw['leaves']),len(UNIQ),len(res),flush=True)
