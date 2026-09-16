from probe_full import nullvectors
from probe_kernel import *
import sympy as sp
x=sp.Symbol('x');out=[]
for D in range(49,82):
 w=weights(D,[2,4,5,6,7,8]);st=time.time();A,bs,spec=matrix(D,w,3)
 if A.shape[0]>=A.shape[1]:continue
 E,piv=rref(A);vs=nullvectors(E,piv)
 fs=[sp.Poly.from_dict({(b,):int(c) for (a,b),c in zip(bs,v) if a==0 and c},x,modulus=P) for v in vs]
 GG=sp.Poly(0,x,modulus=P)
 for f in fs:GG=sp.gcd(GG,f)
 r={'D':D,'w':w,'nr':A.shape[0],'nc':A.shape[1],'rank':len(piv),'null':len(vs),'gcddeg':GG.degree(),'seconds':time.time()-st}
 out.append(r);print(json.dumps(r),flush=True)
 (ROOT/'logs/liftable_probe.json').write_text(json.dumps(out,indent=2))
 if len(piv)==A.shape[0] and GG.degree()==0:break
