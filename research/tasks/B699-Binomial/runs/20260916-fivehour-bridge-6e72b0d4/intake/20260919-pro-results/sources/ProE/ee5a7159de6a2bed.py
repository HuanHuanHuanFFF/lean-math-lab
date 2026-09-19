from math import isqrt
rows=[]
for e in range(2,12):
 x=2**e
 for D in range(1,30,2):
  if D**4>=288*x*x: continue
  for T in range(-40,41,2):
   F=D*D-T*T-8*D
   if F*x*x+2*D*T*x+T*T+4*D: continue
   Xnum=D*x+(x+1)*T;Ynum=D*x+(1-x)*T
   rows.append((e,x,D,T,Xnum//2,Ynum//2,Xnum%2,Ynum%2))
print('POLYNOMIAL_SOLUTIONS',rows)
print('all with positivity', [q for q in rows if q[4]>0 and q[5]>0])
# no alpha or prime assumption in this search, just derived integer system
