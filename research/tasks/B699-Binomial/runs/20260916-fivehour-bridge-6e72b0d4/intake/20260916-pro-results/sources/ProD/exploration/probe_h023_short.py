import sys,json,time
from pathlib import Path
root=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(root/'sources/frozen/two-power/code'))
import generate as old
# Reimplemented scalar filters, preserving target 7.
from math import prod
def small(x):
 s=1
 for p in [2,3,5]:
  while x%p==0:s*=p;x//=p
 if x%7==0 and x%49:s*=7
 return s
def scal(n):
 ts=[small(n-r)for r in range(6)];t=prod(ts[:4]);u=prod(ts)
 return t**6*(3*n*n-12*n+8)<(1<<20)*(n-1)**6*(n-3)**3 or u**4*(3*n*n-20*n+24)<(1<<18)*27*(n-1)**4*(n-3)**3*(n-5)**2
st=time.time();mask=old.residues(6,[0,2,3]);b=old.high_domain({'d':6,'H':[0,2,3],'N':str(1<<204),'T':1<<18},mask)
b['post_scalar']=[n for n in b['candidates']if not scal(n)];b['seconds']=time.time()-st
(root/'exploration/H023_D2_probe.json').write_text(json.dumps(b,indent=2));print(b['stats']);print('mass',len(b['candidates']),'post',len(b['post_scalar']),'sec',b['seconds']);print(b['post_scalar'])
