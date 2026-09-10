import sympy as S
import json
j,k=S.symbols('j k')
def choose(x,r):return S.prod(x-h for h in range(r))/S.factorial(r)
f=[choose(j,r)*choose(k,4-r) for r in range(5)]
e,d,c,b,a=f
I=S.factor(12*a*e-3*b*d+c*c)
J=S.factor(72*a*c*e+9*b*c*d-27*a*d*d-27*b*b*e-2*c*c*c)
W=S.factor(2*I**3-J**2)
print('I=',I)
print('J=',J)
print('2I^3-J^2=',W)
print('degrees:',S.Poly(I,j,k).total_degree(),S.Poly(J,j,k).total_degree(),S.Poly(W,j,k).total_degree())
n,z=S.symbols('n z')
print('W(n,j)=',S.factor(W.subs(k,n-j)))
# Symmetric residual
print('symmetric W=',S.symmetrize(W,[j,k], formal=True))
