import sympy as S
from pathlib import Path
x,z,B,ell=S.symbols('x z B ell');cases=[(0,1,S.Rational(4)),(0,2,S.Rational(-6)),(1,2,-S.Rational(154,125))]
for k,l,rr in cases:
 us=S.symbols('u0:3');ws=S.symbols('w0:3');U=sum(us[i]*x**i for i in range(3));W=sum(ws[i]*x**i for i in range(3));R=x*(x-1)
 E=3*R*S.diff(W,x)-S.diff(R,x)*W-2*R*S.diff(U,x)+((k+l)*x-k)*U
 sol=list(S.linsolve(S.Poly(E,x).all_coeffs(),(*ws,*us)))[0];sub=dict(zip((*ws,*us),sol));U=S.factor(U.subs(sub,simultaneous=True).subs({us[1]:rr*B,us[2]:B}));W=S.factor(W.subs(sub,simultaneous=True).subs({us[1]:rr*B,us[2]:B}));rem=S.rem(W**3+ell*R,U,x);ev=S.solve(S.Poly(rem,x).all_coeffs(),ell)[ell];V=S.cancel((1+W*(W-U)*(W-2*U)/(ev*R))/U);f=S.factor(U*V+1);J=S.factor(V*W)
 print('CASE',k,l,'U',U,'W',W,'ell',ev,'V',S.factor(V),'first rem',S.factor(S.rem(V*W-1,U,x)),flush=True)
 print('f=',f,'f2=',S.factor(f-2),'J=',J,'K=',S.factor(f-J))
 roots=S.roots(f-2,x)
 for root in roots:
  if root.is_Rational:
   bv=S.solve(U.subs(x,root)-1,B)[0]
   print('origin',root,'B',bv)
   for s in (1,-1):
    print('sign',s,'f=',S.expand(f.subs(x,root+s*z)),'J=',S.expand(J.subs(x,root+s*z)))
