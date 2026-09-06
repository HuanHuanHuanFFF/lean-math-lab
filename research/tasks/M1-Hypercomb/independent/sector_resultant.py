"""Exact resultant probe for a sector boundary; a positive certificate is not assumed."""
import sympy as S
from pathlib import Path
import json
u=S.symbols('u'); c1,c2,c3,c4=S.symbols('c1 c2 c3 c4')
I=c1-2*c2*u+8*c4*u**3
R=1-c1*u-2*c2*u**2+8*c3*u**3-8*c4*u**4
res=S.factor(S.resultant(I,R,u))
print('generic resultant',res,flush=True)
a,e,s,q,v,w=S.symbols('a e s q v w'); b=a+1; c=2*a+1+e; k=a*b
concrete=S.factor(res.subs({c1:2*c+s,c2:c*c+2*k+s*b,c3:2*k*c,c4:k*k}))
print('specialization saved',flush=True)
Path(__file__).with_name('sector-resultant.txt').write_text(str(concrete)+'\n',encoding='utf-8')
# Polynomial in a-1 and Bernstein-positive variables for e and s.
factors=S.factor_list(concrete)[1]
records=[]
for f,multiplicity in factors:
 if len(f.free_symbols)<2: continue
 if f.subs({a:1,e:0,s:0})<0: f=-f
 pp=S.Poly(f,a,e,s); E=pp.degree(e); N=pp.degree(s)
 transformed=0
 for (ia,ie,iss),coeff in pp.terms():
  transformed+=coeff*(1+q)**ia*v**ie*(1+v)**(E-ie)*(4*w)**iss*(1+w)**(N-iss)
 p=S.Poly(S.expand(transformed),q,v,w)
 coeffs=p.coeffs(); neg=[(list(mon),str(co)) for mon,co in p.terms() if co<0]
 rec={'factor_degrees':[pp.degree(t) for t in [a,e,s]],'multiplicity':multiplicity,'terms':len(coeffs),'negative_terms':neg,'positive':sum(1 for co in coeffs if co>0)}
 print(json.dumps(rec),flush=True);records.append(rec)
Path(__file__).with_name('sector-bernstein.json').write_text(json.dumps(records,indent=2)+'\n',encoding='utf-8')
