"""Complete finite-domain generator after the absolute height in PROOFS.md.
Enumeration is over all 2/3 exponents below that proved height, not a free cutoff.
"""
from math import prod
from pathlib import Path
import json
ROOT=Path(__file__).resolve().parents[1]
NMAX=2**206

def pp(x,p):
 a=1
 while x%p==0:x//=p;a*=p
 return a

def small5(x):
 s=pp(x,2)*pp(x,3)
 if x%5==0 and x%25!=0:s*=5
 return s

def qig(n):
 T=prod(small5(n-r) for r in range(4))
 return T**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3

def main():
 p2=[];v=2
 while v<NMAX:p2.append(v);v*=2
 p3=[];v=3
 while v<NMAX:p3.append(v);v*=3
 ns=set(n for n in range(12,8192) if n%72 in (18,56));hits=0
 for tail,(r,s) in {56:(0,2),18:(2,0)}.items():
  for P in p2:
   for Q in p3:
    n=(r+P*((s-r)*pow(P,-1,Q)%Q))%(P*Q)
    if not 8192<=n<NMAX or n%72!=tail:continue
    if pp(n-r,2)!=P or pp(n-s,3)!=Q:continue
    ns.add(n);hits+=1
 terminal=[n for n in sorted(ns) if not qig(n)]
 result={'bound':NMAX,'templates':2*len(p2)*len(p3),'rows':sorted(ns),'terminals':terminal}
 (ROOT/'evidence/i5_finite.json').write_text(json.dumps(result,indent=2)+'\n')
 print('templates',result['templates'],'rows',len(ns),'QIGfail',len(terminal),'maxbits',max((n.bit_length() for n in terminal),default=0))
 print('terminals',terminal)
if __name__=='__main__':main()
