from probe_kernel import *
from probe_full import nullvectors
from fractions import Fraction
import sympy as sp
D=55;w=weights(D,[2,4,5,6,7,8]);A,bs,spec=matrix(D,w,3)
E,piv=rref(A);vs=nullvectors(E,piv)
x=sp.Symbol('x')
for i,v in enumerate(vs):
 f=sp.Poly.from_dict({(b,):int(c) for (a,b),c in zip(bs,v) if a==0 and c},x,modulus=P)
 print('v',i,'degree',f.degree(),'terms',len(f.terms()),'poly',str(f.as_expr()),flush=True)
 for j,vv in enumerate(vs[:i]):
  ff=sp.Poly.from_dict({(b,):int(c) for (a,b),c in zip(bs,vv) if a==0 and c},x,modulus=P)
  print('pair',j,i,'gcd',sp.gcd(f,ff),flush=True)
E2,piv2=rref(A.T);lv=nullvectors(E2,piv2)
for i,v in enumerate(lv):
 support=[(idx,spec[idx],int(c) if c<P//2 else int(c)-P) for idx,c in enumerate(v) if c]
 print('dep',i,'count',len(support),'support',support,flush=True)
np.savez_compressed(ROOT/'evidence/modular_D55_probe.npz',A=A,basis=np.array(bs),spec=np.array(spec),piv=piv,vs=vs,leftvs=lv)
