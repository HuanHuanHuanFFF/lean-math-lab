import json,math,time
from pathlib import Path
from sympy.polys.matrices import DomainMatrix
from sympy.polys.domains import ZZ
root=Path(__file__).parent;rec=json.loads((root/'symmetric_degree_probe.json').read_text())[0];D=rec['D'];rs=rec['rs'];ws=rec['weights'];exps=[(a,b)for a in range(D+1)for b in range(min(a,D-a)+1)];rows=[];start=time.time()
for r,w in zip(rs,ws):
 for x in range(r//2+1):
  y=r-x
  for u in range(w):
   for v in range(w-u):
    if x==y and u>v:continue
    row=[]
    for a,b in exps:
     c=(math.comb(a,u)*math.comb(b,v)*x**(a-u)*y**(b-v)if a>=u and b>=v else 0)
     if a!=b and b>=u and a>=v:c+=math.comb(b,u)*math.comb(a,v)*x**(b-u)*y**(a-v)
     row.append(c)
    rows.append(row)
print('START',len(rows),len(exps),flush=True)
vs=DomainMatrix.from_list(rows,ZZ).nullspace().to_list();print('NULL',len(vs),'seconds',time.time()-start,flush=True)
out=[]
for vv in vs:
 gg=math.gcd(*(int(c)for c in vv));vv=[int(c)//gg for c in vv];p={}
 for (a,b),c in zip(exps,vv):
  if not c:continue
  p[a,b]=c
  if a!=b:p[b,a]=c
 z={}
 for(a,b),c in p.items():
  for u in range(a+1):
   for v in range(b+1):z[u,v]=z.get((u,v),0)+c*math.comb(a,u)*math.comb(b,v)*8**(a+b-u-v)
 z={t:c for t,c in z.items()if c};print('SIGN',len(z),sum(c>0 for c in z.values()),sum(c<0 for c in z.values()),'bits',max(abs(c).bit_length()for c in p.values()),flush=True)
 rr=dict(H=rec['H'],degree=D,weights=dict(zip(rs,ws)),poly=[[a,b,c]for(a,b),c in sorted(p.items())],shift=[[a,b,c]for(a,b),c in sorted(z.items())]);out.append(rr)
(root/'fat_symmetric024.json').write_text(json.dumps(out,indent=2))
