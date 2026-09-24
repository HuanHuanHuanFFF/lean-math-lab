import sympy as s
from math import gcd,lcm

def f(y,m): return (48*y**5+200*y**4+280*y**3+150*y*y+25*y+2)%m
for c in (1,3):
 states={0};period=1
 print('c',c)
 for p in list(s.primerange(3,150)):
  if p==5: mod=125; vals={2}
  elif p==3: mod=81; vals={f(y,mod) for y in range(mod)}
  else:mod=p; vals={f(y,mod) for y in range(mod)}
  order=int(s.n_order(2,mod));allowed={a for a in range(order) if c*pow(2,a,mod)%mod in vals}
  print(p,mod,order,sorted(set(range(order))-allowed))
