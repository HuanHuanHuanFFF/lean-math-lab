exec(open('/mnt/data/prod_20260915_work/exploration/conic_refine.py').read().split('for d,hcount in')[0])
for d,hcount in [(4,2),(6,2),(8,3)]:
 dat=json.loads(Path('/mnt/data/prod_20260915_work/exploration') .joinpath(f'conic_{d}_{hcount}.json').read_text());funcs=[q for q in dat['functions'] if q[0]==1]
 pts=[(b,r-b) for r in range(d) for b in range(r+1)]; rows=[sum(p) for p in pts]
 mat=np.array([[int(i in inds) for i in range(len(pts))] for deg,l,inds in funcs]);rowmat=np.array([[int(rows[i]==r) for i in range(len(pts))] for r in range(d)])
 out=[]
 for H in combinations(range(d),hcount):
  rough=set(range(d))-set(H)
  eligible=[k for k,(deg,l,inds) in enumerate(funcs) if signcert(d,deg,l) or any(all(rows[i]!=r for i in inds) for r in rough)]
  L=np.concatenate([mat[eligible],-rowmat[list(rough)]],axis=0);b=np.array([funcs[k][0] for k in eligible]+[-1]*len(rough))
  res=linprog(np.zeros(len(pts)),A_ub=L,b_ub=b,bounds=(0,None),method='highs')
  out.append((H,res.status,None if res.x is None else res.x.tolist()))
 print('linear-refined',d,hcount,'infeasible',[H for H,s,x in out if s==2],flush=True)
 Path('/mnt/data/prod_20260915_work/exploration').joinpath(f'linear_refined_{d}_{hcount}.json').write_text(json.dumps({'cases':out}))
