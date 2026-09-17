from probe_kernel import *
from probe_full import nullvectors
import sympy as sp
x=sp.Symbol('x');out=[]
for D in [12,16,20,24,28,32,36,40,48,56,64,72,80]:
 w=weights(D-1,[3,4,5,6,7,8]);st=time.time();A,bs,spec=matrix(D,w,4)
 E,piv=rref(A);nullity=len(bs)-len(piv)
 item={'D':D,'W':sum(w.values()),'weights':w,'shape':A.shape,'rank_mod':len(piv),'nullity':nullity,'seconds':time.time()-st}
 print(json.dumps(item),flush=True);out.append(item);(ROOT/'logs/h012_probe.json').write_text(json.dumps(out,indent=2))
 if nullity:
  vs=nullvectors(E,piv);GG=sp.Poly(0,x,modulus=P)
  for v in vs:
   f=sp.Poly.from_dict({(b,):int(c) for (a,b),c in zip(bs,v) if a==0 and c},x,modulus=P);GG=sp.gcd(GG,f)
  print('diaggcd',GG,flush=True)
