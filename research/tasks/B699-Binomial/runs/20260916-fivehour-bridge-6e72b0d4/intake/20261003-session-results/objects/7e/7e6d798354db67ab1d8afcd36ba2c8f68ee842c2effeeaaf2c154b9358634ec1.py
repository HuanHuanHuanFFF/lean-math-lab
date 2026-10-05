import sympy as s,json,time
from pathlib import Path
r,u,y=s.symbols('r u y')
cs=[12*y*y-18*r-16*u-28*y+1,6*u*y-2*u+6*y+1,18*r*y+12*r+12*u+15*y-2,8*u*u+18*r+16*u+12*y-1,6*r*u-6*r-3*u-6*y-1,12*r*r+4*r+3]
for order in [(r,y,u),(r,u,y)]:
 B=s.groebner(cs,*order,order='lex');print(order, list(B),flush=True)
B=s.groebner(cs,r,y,u,order='lex');print('Cs reductions', [B.reduce(f)[1] for f in cs],flush=True)
p=Path('/mnt/data/inputs_r5/B699-ProB-REG3-DIM0-20261002-R4/inputs/generic.json');j=json.loads(p.read_text())
# triangular polynomials show r and y as linear in u denominators constants: use quotient ring substitution
q=list(B)[-1];rpoly=s.solve(list(B)[0],r)[0];ypoly=s.solve(list(B)[1],y)[0]
print('r=',rpoly,'y=',ypoly,'q=',q,flush=True)
Q=s.Poly(q,u,domain=s.QQ);RP=s.Poly(rpoly,u,domain=s.QQ);YP=s.Poly(ypoly,u,domain=s.QQ)
pows={}
for nm,terms in [('N',j['N']),('K',j['K']),('P5',j['B5'])]+[(f'G{i}',j['low'][str(i)]['stripped'])for i in range(4,-1,-1)]:
 mxu=max(e[0]for e,c in terms);mxy=max(e[1]for e,c in terms);mxr=max(e[2]for e,c in terms)
 P0=s.Poly(1,u,domain=s.QQ);UP=s.Poly(u,u,domain=s.QQ)
 U=[P0];Y=[P0];R=[P0]
 for _ in range(mxu):U.append((U[-1]*UP).rem(Q))
 for _ in range(mxy):Y.append((Y[-1]*YP).rem(Q))
 for _ in range(mxr):R.append((R[-1]*RP).rem(Q))
 out=s.Poly(0,u,domain=s.QQ)
 for (i,k,h,L),c in terms:out+=(s.Rational(c)*U[i]*Y[k]*R[h]).rem(Q)
 out=out.rem(Q);print(nm,out.as_expr(),flush=True)
