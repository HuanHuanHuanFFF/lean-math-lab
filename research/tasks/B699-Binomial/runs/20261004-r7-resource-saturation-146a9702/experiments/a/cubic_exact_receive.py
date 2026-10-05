from pathlib import Path
from math import comb,gcd,lcm
import json,sys,time
import sympy as sp
BASE=Path(__file__).resolve().parent
N,X=sp.symbols('N X');MONS=[(a,b) for b in range(3,-1,-1) for a in range(7-2*b,-1,-1)]
def jet(a,b,r,v,sh,i,j):
 if j>b:return 0
 return sum(comb(b,j)*comb(b-j,t)*v**(b-j-t)*sh**t*comb(a,i-t)*r**(a-i+t) for t in range(b-j+1) if 0<=i-t<=a)
def matrix(cfg):
 rows=[]
 for r,(kp,ms) in zip(range(3,9),cfg):
  for s,m in enumerate(ms):
   diag=2*s==r;w=2*m-kp if diag else 0
   for i in range(8):
    for j in range(4):
     if i+j<m or diag and i+2*j<w:rows.append([jet(a,b,r,s*(r-s),s if diag else 0,i,j) for a,b in MONS])
 return sp.Matrix(rows)
def primitive(v):
 d=lcm(*(int(x.q) for x in v));c=[int(x*d) for x in v];g=gcd(*c);c=[x//g for x in c]
 if next(x for x in c if x)<0:c=[-x for x in c]
 return c
def expr(c):return sum(k*N**a*X**b for k,(a,b) in zip(c,MONS))
if __name__=='__main__':
 start=time.monotonic();cfgs={};profile_cfg={}
 for profile in (4,6,8):
  keys=[]
  for line in (BASE/f'cubic-cost-row{profile}.txt').read_text().splitlines():
   parts=line.split('|');cfg=tuple((int(x.split()[0]),tuple(map(int,x.split()[1:]))) for x in parts[1:]);keys.append(cfg);cfgs[cfg]=None
  profile_cfg[profile]=keys
 stats={};results=[]
 for cfg in cfgs:
  ns=matrix(cfg).nullspace();polys=[expr(primitive(v)) for v in ns]
  if not polys:result=dict(status='full_rank_Q',dimension=0)
  else:
   common=polys[0]
   for f in polys[1:]:common=sp.gcd(common,f)
   cp=sp.Poly(common,N,X);den,cp=cp.clear_denoms();content,cp=cp.primitive();norm=sum(abs(int(c)) for c in cp.coeffs());wd=max(a+2*b for (a,b),c in cp.terms())
   status='fixed_common_polynomial_consumer' if cp.total_degree()>0 and wd<=11 and norm.bit_length()<=24980 else 'unresolved_family'
   result=dict(status=status,dimension=len(ns),common_polynomial=str(cp.as_expr()),common_l1=norm,common_weight=wd,basis=[str(f) for f in polys] if status=='unresolved_family' else None)
  cfgs[cfg]=result;stats[result['status']]=stats.get(result['status'],0)+1;results.append(dict(configuration=cfg,**result))
 summary={p:{s:sum(cfgs[c]['status']==s for c in cs) for s in stats} for p,cs in profile_cfg.items()}
 out=dict(scope='exact rational receive of all modular survivors for q3/D7 and minimal even-row costs; preceding enumeration completeness still needs review',unique_configurations=len(cfgs),status_counts=stats,profile_counts=summary,results=results,seconds=round(time.monotonic()-start,3))
 (BASE/sys.argv[1]).write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n',encoding='utf-8');print(json.dumps({k:v for k,v in out.items() if k!='results'}));print('unresolved first',next((x for x in results if x['status']=='unresolved_family'),None))
