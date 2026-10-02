"""Finite algorithm controls only; main unbounded theorem uses the module induction.
Direct monomial matrices are built with integer Hasse formula and row reduced.
Includes nonzero kernels and the zero-polynomial-only boundary.
"""
from pathlib import Path
from math import comb
import subprocess,json
ROOT=Path(__file__).resolve().parents[1];O=ROOT/'certificates/dense_controls';O.mkdir(exist_ok=True)
pts=[(r,s,2 if r==2*s else 1) for r in range(3,9) for s in range(r//2+1)]
def rank(A,p):
 if not A:return 0
 A=[row[:] for row in A];nr=len(A);nc=len(A[0]);rr=0
 for col in range(nc):
  pivot=next((r for r in range(rr,nr) if A[r][col]%p),None)
  if pivot is None:continue
  A[rr],A[pivot]=A[pivot],A[rr];iv=pow(A[rr][col],p-2,p);A[rr]=[(v*iv)%p for v in A[rr]]
  for r in range(rr+1,nr):
   f=A[r][col]%p
   if f:A[r]=[(v-f*w)%p for v,w in zip(A[r],A[rr])]
  rr+=1
  if rr==nr:break
 return rr
summary=[]
for case,(e,D,style) in enumerate([(0,0,0),(0,0,1),(1,2,1),(3,6,1),(4,12,2),(6,16,3),(8,24,4),(10,27,5)]):
 p=257 if case%2==0 else 263;mode=case%2
 points=[(r,s,w,0 if style==0 else ((k*7+style*3)%5 if style<3 else (k+style)%7)) for k,(r,s,w) in enumerate(pts)]
 mon=[(a,b) for b in range(e+1) for a in range(D-2*b+1)];A=[]
 for r,s,w,m in points:
  x=s*(r-s);slope=s if w==2 else 0
  for i in range(m):
   for j in range((m-1-i)//w+1):
    row=[]
    for a,b in mon:
     z=0
     if b>=j:
      for u in range(max(0,i-(b-j)),min(i,a)+1):
       v=i-u
       z+=comb(a,u)*r**(a-u)*comb(b,j)*comb(b-j,v)*x**(b-j-v)*slope**v
     row.append(z%p)
    A.append(row)
 expected=len(mon)-rank(A,p)
 name=f'c{case}';pre=O/name;inp=pre.with_suffix('.input');inp.write_text(f'{e} {D} {p} {mode} 21\n'+''.join(' '.join(map(str,t))+'\n' for t in points))
 with inp.open() as f:r=subprocess.run([str(ROOT/'work/module_kernel'),str(pre)],stdin=f,capture_output=True,text=True,check=True)
 j=json.loads(pre.with_suffix('.json').read_text());assert j['dimension']==expected,(case,j,expected)
 rr=subprocess.run([str(ROOT/'work/check_trace'),str(inp),str(pre)+'.trace.tsv'],capture_output=True,text=True,check=True);rec=json.loads(rr.stdout);assert rec['dimension']==expected and rec['weights']==j['weights']
 summary.append({'case':case,'e':e,'D':D,'p':p,'monomials':len(mon),'conditions':len(A),'dense_rank':len(mon)-expected,'dimension':expected,'module_agrees':True,'complete_trace_received':True})
(O/'SUMMARY.json').write_text(json.dumps({'meaning':'finite algorithm controls, not full theorem or other-state licences','tests':summary},indent=2)+'\n');print(json.dumps(summary))
