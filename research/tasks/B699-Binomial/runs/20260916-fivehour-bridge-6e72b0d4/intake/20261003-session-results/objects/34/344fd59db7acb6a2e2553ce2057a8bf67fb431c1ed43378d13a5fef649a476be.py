from probe import *
from fractions import Fraction as Q
H=3*N**3-18*N**2*X-12*N**2+30*N*X**2+48*N*X+9*N-8*X**3-78*X**2+26*X
lay=((0,2),(1,2),(1,3,5))
for h in (3,4):
 fs=kernel(lay,h,origin=2,source1=False)
 print('H',h,'dim',len(fs))
 for G in fs:
  print('G',s.factor(G))
  print('res',s.factor(s.resultant(H,G,X)))
  C=sum(Q(abs(int(c)),2**b*352**(4-a-b)) for (a,b),c in s.Poly(G,N,X).terms())
  print('C',C,float(C))
  for a,ss in {352:[1,12,1],425:[2,1,60],776:[1,4,3],1026:[3,2,1],1377:[6,1,4],1450:[1,6,5]}.items():
   K=Q(352,335)*C*math.prod(ss)*ss[h-3]
   print(a,'g2<',float(K),'g',math.isqrt(K.numerator//K.denominator))
