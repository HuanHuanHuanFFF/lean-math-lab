import sympy as S
q,a,b=S.symbols('q a b')
for r in range(3):
 for s in range(r+1):
  n=b*q+r;j=a*q+s;k=n-j
  A=j*(j-1)*(j-2)/6;B=j*(j-1)*k/2;C=j*k*(k-1)/2;D=k*(k-1)*(k-2)/6
  x=b-a;y=-a
  h=S.factor((B*B-3*A*C)*x*x+(B*C-9*A*D)*x*y+(C*C-3*B*D)*y*y)
  print((r,s),h)
