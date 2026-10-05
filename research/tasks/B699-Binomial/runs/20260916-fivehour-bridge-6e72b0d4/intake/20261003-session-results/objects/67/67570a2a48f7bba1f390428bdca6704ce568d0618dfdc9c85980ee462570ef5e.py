"""Uniform source bounds for all four actually recovered candidate types."""
from pathlib import Path
from math import comb
import sympy as sp,json
R=Path(__file__).resolve().parents[1];N,X,u,t,lam=sp.symbols('N X u t lam')
W=sp.prod(N-r for r in range(3,9));B=(N-3)*(N-4)*W;P0=sp.prod(X-a*N+a*a for a in range(4))
P4=sp.prod(X-a*N+a*a for a in range(3))*(X-(N-3)*(N-4))+lam*B
Fstar=sp.sympify(json.loads((R/'certificates/Fstar_recovery_1.json').read_text())['H'],locals={'N':N,'X':X})
U4=sp.sympify(json.loads((R/'certificates/geometry/rational_g05_83.json').read_text())['H'],locals={'N':N,'X':X})
base=json.loads((R/'certificates/geometry/rational_g05_63.json').read_text());a0=sp.Symbol('a0');assert sp.expand(sp.sympify(base['H'],locals={'N':N,'X':X,'a0':a0}).subs(a0,14400*lam)-P4)==0
S5_bounds=[2,2,1,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0]
result={}
for label,H in [('S5',P0+lam*B),('Fstar',Fstar),('P4',P4),('U4',U4)]:
 poly=sp.Poly(sp.expand(H),N,X);assert poly.degree(X)==4 and sp.Poly(poly.as_expr(),X).LC()==1
 assert max(a+2*b for a,b in poly.monoms())==8
 points=[];point=0
 for r in range(3,9):
  for s in range(r//2+1):
   central=2*s==r;wt=2 if central else 1;sh=s if central else 0;x=s*(r-s)
   loc=sp.Poly(sp.expand(H.subs({N:r+u,X:x+sh*u+t},simultaneous=True)),u,t)
   order=S5_bounds[point] if label=='S5' else min(a+wt*b for a,b in loc.monoms())
   coeffs=[]
   for (a,b),c in loc.terms():
    if a+wt*b>order:continue
    direct=sum(cc*comb(Z,b)*comb(Z-b,k)*x**(Z-b-k)*sh**k*comb(A,a-k)*r**(A-a+k) for (A,Z),cc in poly.terms() if b<=Z for k in range(min(a,Z-b)+1) if a-k<=A)
    assert sp.expand(direct-c)==0
    coeffs.append([a,b,str(c)])
   noncancel=[]
   for a,b,c in coeffs:
    c=sp.sympify(c);terms=sp.Poly(c,lam).terms()
    if not c.free_symbols or (label=='S5' and len(terms)==1 and terms[0][0][0]==1):noncancel.append([a,b,str(c)])
   gcd=sp.gcd_list([sp.sympify(c) for a,b,c in coeffs]);assert noncancel or not gcd.free_symbols
   points.append({'r':r,'s':s,'weight_t':wt,'upper_order':order,'coefficients_at_or_below_bound':coeffs,'noncancelling_witness':noncancel[0] if noncancel else None,'gcd':str(gcd),'dual_Hasse_check':True});point+=1
 result[label]={'H':str(poly.as_expr()),'q':4,'D':8,'parameter_domain':'nonzero rational lam' if label=='S5' else 'all rational lam' if label=='P4' else 'fixed rational polynomial','points':points}
 print(label,[x['upper_order'] for x in points])
(R/'certificates/factor_source_bounds.json').write_text(json.dumps(result,indent=2)+'\n')
