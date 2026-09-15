import sympy as s,json,time
from pathlib import Path
root=Path(__file__).parent
t,A,Z=s.symbols('t A Z');F=2*t**3-t**2+A;G=Z-A*A*(1-4*t)*(2-5*t)**2
R=s.factor(s.resultant(F,G,t));print('R=',R,flush=True)
(root/'relation_formula.txt').write_text(str(R))
n,X=s.symbols('n X')
P1=X*(X-n+1)*(n*n-2*X-3*n+2);D1=(n-1)**3*(n-2)**2*(n-5)
P2sq=P1**2*(n*n-4*X)*(2*n*n-5*X-6*n+4)**2;D2=(n-1)**4*(n-2)**3*(n-5)*(n-6)
pr=s.Poly(R,A,Z);dA=pr.degree(A);dZ=pr.degree(Z);print('degrees',dA,dZ,'terms',len(pr.terms()),flush=True)
# use common simplified P2sq/D2^2=(P1/D1)^2 * [Delta^2 F3^2/((n-1)^2(n-2)^2(n-6)^2)]
# set Z=A^2 Y, divide A^6 expected then compute rational simpler
Y=s.symbols('Y');R2=s.factor(R.subs(Z,A*A*Y));print('R2=',R2,flush=True)
L=(n-1)**3*(n-2)**2*(n-5)*(n-6)**2
ap=s.Poly(s.expand(P1*(n-6)**2),X,n);yp=s.Poly(s.expand((n*n-4*X)*(2*n*n-5*X-6*n+4)**2*(n-1)*(n-5)),X,n);lp=s.Poly(s.expand(L),X,n)
T=500000*ap**3-30000*ap**2*yp-47625*ap**2*lp+600*ap*yp**2+2730*ap*yp*lp+1512*ap*lp**2-4*yp**3+31*yp**2*lp-56*yp*lp**2-16*lp**3
print('T terms',len(T.terms()),'deg',T.total_degree(),flush=True)
fact=s.factor_list(T.as_expr(),X,n);print('factor count',len(fact[1]),flush=True)
for f,e in fact[1]:print('factor',e,'terms',len(s.Poly(f,X,n).terms()),'degree',s.Poly(f,X,n).total_degree(),':',str(f)[:250],flush=True)
(root/'relation_exact.txt').write_text(str(fact))
wt=max(2*a+b for (a,b),c in T.terms());lead=s.factor(sum(c*t**a for (a,b),c in T.terms() if 2*a+b==wt));print('weighteddegree',wt,'lead',lead,flush=True)
for nn,jj in [(16,8),(17,8),(20,9),(100,20),(100,49),(1000,499),(10000,2000)]:
 print('sign',nn,jj,s.sign(T.eval({n:nn,X:jj*(nn-jj)})),flush=True)
# polynomial substitution n=2j+delta, j=8+u. Seek same sign coefficient expansion.
u,v=s.symbols('u v');ex=s.Poly(T.as_expr().subs({X:(8+u)*(8+u+v),n:16+2*u+v}).expand(),u,v)
print('translated terms',len(ex.terms()),'pos',sum(1 for c in ex.coeffs() if c>0),'neg',sum(1 for c in ex.coeffs() if c<0),flush=True)
(root/'relation_translated.json').write_text(json.dumps([[list(a),int(c)] for a,c in ex.terms()]))
ss=sum(abs(int(c)) for c in T.coeffs());KK=2**5*3**4*5*7**4;bound=2**36*ss*KK**9;EE=bound.bit_length()
print('HEIGHT',{'S':ss,'S_bits':ss.bit_length(),'K':KK,'K_bits':KK.bit_length(),'E':EE},flush=True)
(root/'relation_certificate.json').write_text(json.dumps({'R':[[list(e),int(c)] for e,c in s.Poly(-R/2,A,Z).terms()],'T':[[list(e),int(c)] for e,c in T.terms()],'S':ss,'K':KK,'bound':str(bound),'E':EE},indent=2))
