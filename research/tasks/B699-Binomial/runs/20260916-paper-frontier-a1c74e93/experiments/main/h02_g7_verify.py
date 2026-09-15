"""Exact new H02 g^7 certificate; no imports from the discovery program."""
from datetime import datetime,timezone
from pathlib import Path
import json
import sympy as sp

j,k,a,d=sp.symbols('j k a d')
n=j+k
X=j*k
B=n*n-n-3*X
A=X-n+1
R=27*X*X-36*X*n*n+117*X*n-81*X+10*n**4-54*n**3+90*n*n-58*n+12
F=sp.expand(X**3*B*A*A*R)
D=(n-1)**8*(n-3)**4*(n-4)**3
Fpoly=sp.Poly(F,j,k)
origin=min(sum(exp) for exp,c in Fpoly.terms())
grid=[]
for r,w in ((1,8),(3,4),(4,3)):
    shifted=sp.Poly(sp.expand(F.subs({j:j+r*0,k:k+r})),j,k) if False else None
    for b in range(r+1):
        # Translation coefficients are integer Taylor coefficients, with no division issue.
        shifted=sp.Poly(sp.expand(F.subs({j:j+b,k:k+r-b}, simultaneous=True)),j,k)
        for u in range(w):
            for v in range(w-u):
                value=int(shifted.coeff_monomial(j**u*k**v))
                grid.append({'r':r,'b':b,'u':u,'v':v,'coefficient':value})
assert origin==7 and all(row['coefficient']==0 for row in grid)
certs=[]
for name,expr in (('R_positive',R),('F_positive',F),('nD_minus_64F',n*D-64*F)):
    poly=sp.Poly(sp.expand(expr.subs({j:a+6,k:a+6+d}, simultaneous=True)),a,d)
    terms=[{'powers':list(e),'coefficient':int(c)} for e,c in poly.terms()]
    ok=all(c>0 for c in poly.coeffs())
    certs.append({'name':name,'positive_all':ok,'term_count':len(terms),'min_coefficient':min(int(c) for c in poly.coeffs()),'terms':terms})
    assert ok
cost1=4**3*5**8
cost2=3**4*2**3*5**8
assert cost2==253125000 and cost2<64*2**22
result={'time_utc':datetime.now(timezone.utc).isoformat(),'origin_order':origin,'degree':16,'weights':{'1':8,'3':4,'4':3},'grid_zero_conditions':len(grid),'grid':grid,'certificates':certs,'costs':{'two_at_zero':cost1,'three_at_zero':cost2},'conclusion':'NC5 with Q2>=8,Q3>=9 at distinct positions {0,2} implies g^7<2^22*n, hence n^6<2^22*alpha^7. Relative bound only.'}
Path(__file__).with_suffix('.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
print(json.dumps({'origin_order':origin,'grid_zero_conditions':len(grid),'certificates':[{k:c[k] for k in ('name','positive_all','term_count','min_coefficient')} for c in certs],'costs':result['costs'],'conclusion':result['conclusion']}))
