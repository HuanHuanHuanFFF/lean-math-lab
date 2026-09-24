import sympy as S,json
from pathlib import Path
x=S.symbols('x');us=S.symbols('u0:3');ws=S.symbols('w0:3');U=sum(us[i]*x**i for i in range(3));W=sum(ws[i]*x**i for i in range(3))
R=x*(x-1)
p=Path(__file__).resolve().parents[1]/'outputs'
lines=[]
for k,l in ((0,1),(0,2),(1,2)):
 E=3*R*S.diff(W,x)-S.diff(R,x)*W-2*R*S.diff(U,x)+((k+l)*x-k)*U
 sol=S.linsolve(S.Poly(E,x).all_coeffs(),(*ws,*us))
 ss=list(sol)[0];subs=dict(zip((*ws,*us),ss));u=S.factor(U.subs(subs,simultaneous=True));w=S.factor(W.subs(subs,simultaneous=True))
 lines += [f'CASE {k},{l}',f'U={u}',f'W={w}',f'W-U={S.factor(w-u)}',f'W-2U={S.factor(w-2*u)}']
 ell=S.symbols('ell')
 rem=S.rem(S.Poly(w**3+ell*R,x),S.Poly(u,x))
 rc=[S.factor(t) for t in rem.all_coeffs()];lines+=['REM '+str(rc)]
 # eliminate ell, retaining all coeff degeneracies for later audit
 if len(rc)==2:
  num=[S.together(v).as_numer_denom()[0] for v in rc]
  res=S.factor(S.resultant(num[0],num[1],ell));lines+=['ELIM '+str(res)]
 lines+=['']
(p/'ode-cases.txt').write_text('\n'.join(lines));print('\n'.join(lines))
