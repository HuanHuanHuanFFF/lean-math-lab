from probe_kernel import *
import sympy as sp

def nullvectors(E,piv,p=P):
 nc=E.shape[1];free=[i for i in range(nc) if i not in piv]
 out=[]
 for f in free:
  v=np.zeros(nc,dtype=np.int64);v[f]=1
  for i,col in reversed(list(enumerate(piv))):
   v[col]=-sum(int(x)*int(y) for x,y in zip(E[i,col+1:],v[col+1:]))%p
  out.append(v)
 return out

if __name__=='__main__':
 x=sp.Symbol('x');results=[]
 for D in [16,20,24,28,32,40,48,56,62]:
  w=weights(D,[2,4,5,6,7,8]);st=time.time();A,bs,spec=matrix(D,w,3)
  E,piv=rref(A);vecs=nullvectors(E,piv)
  pol=[]
  for v in vecs:
   pol.append(sp.Poly.from_dict({(b,):int(c) for (a,b),c in zip(bs,v) if a==0 and c},x,modulus=P))
  G=None
  for f in pol:
   if f.is_zero:continue
   G=f if G is None else sp.gcd(G,f)
  result={'D':D,'weights':w,'shape':A.shape,'rank':len(piv),'nullity':len(vecs),'diag_gcd':str(G.as_expr()) if G is not None else None,'diag_gcd_fact':str(sp.factor(G.as_expr(),modulus=P)) if G is not None else None,'seconds':time.time()-st}
  print(json.dumps(result),flush=True);results.append(result)
  (ROOT/'logs/full_probe.json').write_text(json.dumps(results,indent=2))
