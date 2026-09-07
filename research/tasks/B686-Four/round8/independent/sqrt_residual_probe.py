import sympy as s
x=s.Symbol('x'); n=s.Symbol('n')
for k in (6,8,10,12,14,16,20):
 r=k//2; q=r//2
 F=s.prod(x*x-s.Rational((2*j-1)**2,4) for j in range(1,r+1))
 c=[s.S(1)]
 for j in range(1,q+1):
  c.append((s.Poly(F,x).coeff_monomial(x**(2*r-2*j))-sum(c[i]*c[j-i] for i in range(1,j)))/2)
 A=sum(c[j]*x**(r-2*j) for j in range(q+1))
 E=s.Poly(s.expand(A*A-F),x)
 print('k=',k,'A(n)=',s.expand(A.subs(x,n+s.Rational(k+1,2))))
 print(' E(x)=',E.as_expr())
 print(' E(x+(k+1)/2) signs=',[s.sign(z) for z in s.Poly(E.as_expr().subs(x,n+s.Rational(k+1,2)),n).all_coeffs()])
