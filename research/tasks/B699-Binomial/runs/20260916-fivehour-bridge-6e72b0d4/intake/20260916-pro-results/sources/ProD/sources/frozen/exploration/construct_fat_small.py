import json,math,time
from pathlib import Path
from sympy.polys.matrices import DomainMatrix
from sympy.polys.domains import ZZ
import sympy as s
root=Path(__file__).parent;j,k=s.symbols('j k');out=[]
def shift(poly,base=8):
 z={}
 for(a,b),c in poly.items():
  for u in range(a+1):
   for v in range(b+1):z[u,v]=z.get((u,v),0)+c*math.comb(a,u)*math.comb(b,v)*base**(a+b-u-v)
 return {p:c for p,c in z.items()if c}
for rec in json.loads((root/'fat_degree_probe.json').read_text()):
 D=rec['D'];rs=rec['rs'];ws=rec['weights'];exps=[(a,b)for a in range(D+1)for b in range(D+1-a)];rows=[];t0=time.time()
 for r,w in zip(rs,ws):
  for b in range(r+1):
   c=r-b
   for u in range(w):
    for v in range(w-u):rows.append([math.comb(a,u)*math.comb(d,v)*b**(a-u)*c**(d-v)if a>=u and d>=v else 0 for a,d in exps])
 ns=DomainMatrix.from_list(rows,ZZ).nullspace().to_list();print('NULL',rec['H'],D,'dim',len(ns),'secs',time.time()-t0,flush=True)
 for ind,vec in enumerate(ns):
  g=math.gcd(*(int(v)for v in vec));vec=[int(v)//g for v in vec];poly={tuple(p):c for p,c in zip(exps,vec)if c};tr=shift(poly)
  print('SIGN',ind,len(tr),sum(v>0 for v in tr.values()),sum(v<0 for v in tr.values()),flush=True)
  P=sum(c*j**a*k**b for(a,b),c in poly.items());facs=s.factor_list(P)
  print('FACTORS',[(s.total_degree(f),e,len(s.Poly(f,j,k).terms()))for f,e in facs[1]],flush=True)
  ff=[]
  for f,e in facs[1]:
   pp=dict(s.Poly(f,j,k).terms());trf=shift(pp); print(' factor sign',s.total_degree(f),len(trf),sum(1 for v in trf.values() if v>0),sum(1 for v in trf.values() if v<0),flush=True)
   ff.append(dict(power=e,poly=[[a,b,int(c)]for(a,b),c in sorted(pp.items())],shift=[[a,b,int(c)]for(a,b),c in sorted(trf.items())]))
  rr=dict(H=rec['H'],degree=D,weights=dict(zip(rs,ws)),poly=[[a,b,c]for(a,b),c in sorted(poly.items())],shift=[[a,b,c]for(a,b),c in sorted(tr.items())],factors=ff);out.append(rr)
(root/'fat_small_certificates.json').write_text(json.dumps(out,indent=2))
