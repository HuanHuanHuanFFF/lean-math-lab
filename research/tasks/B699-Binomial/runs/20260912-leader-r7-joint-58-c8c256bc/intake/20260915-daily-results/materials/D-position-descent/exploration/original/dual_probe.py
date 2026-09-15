exec(open('/mnt/data/prod_20260915_work/exploration/conic_refine.py').read().split('for d,hcount in')[0])
from fractions import Fraction

def solve(d,H,positive_only=False,linear_only=False):
 dat=json.loads(Path('/mnt/data/prod_20260915_work/exploration').joinpath(f'conic_{d}_{len(H)}.json').read_text());allfuncs=dat['functions']
 pts=[(b,r-b) for r in range(d) for b in range(r+1)];rows=[sum(p) for p in pts];rough=sorted(set(range(d))-set(H))
 funcs=[(deg,f,inds) for deg,f,inds in allfuncs if (deg==1 or not linear_only) and (signcert(d,deg,f) or (not positive_only and any(all(rows[i]!=r for i in inds) for r in rough)))]
 A=np.zeros((len(pts),len(funcs)+len(rough)))
 for k,(deg,f,inds) in enumerate(funcs):A[inds,k]=-1
 for k,r in enumerate(rough):A[:,len(funcs)+k]=[int(s==r) for s in rows]
 eq=np.zeros((1,len(funcs)+len(rough)));eq[0,len(funcs):]=1
 cost=[deg for deg,f,inds in funcs]+[0]*len(rough)
 res=linprog(cost,A_ub=A,b_ub=np.zeros(len(pts)),A_eq=eq,b_eq=[1],bounds=(0,None),method='highs')
 if not res.success:return None
 w=[Fraction(float(v)).limit_denominator(1000000) for v in res.x]
 cert=[(str(v),*funcs[k]) for k,v in enumerate(w[:len(funcs)]) if v]
 rweights={r:str(v) for r,v in zip(rough,w[len(funcs):]) if v}
 vals=[sum(w[k]*int(i in inds) for k,(deg,f,inds) in enumerate(funcs))-sum(w[len(funcs)+k]*int(rows[i]==r) for k,r in enumerate(rough)) for i in range(len(pts))]
 assert min(vals)>=0,(d,H,'failed rounding')
 C=sum(w[k]*deg for k,(deg,f,inds) in enumerate(funcs));assert sum(w[len(funcs):])==1
 return {'d':d,'H':H,'cost':str(C),'gap':str(1-C),'rows':rweights,'polynomials':cert}
if __name__=='__main__':
 for d,H in [(4,(2,3)),(6,(0,5)),(6,(0,4)),(6,(0,3)),(8,(0,3,4)),(8,(0,1,7))]:
  for po in [True,False]:
   ans=solve(d,H,po);print(json.dumps({'positive_only':po,**ans}),flush=True)
