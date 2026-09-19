from pathlib import Path
import json,time,sys,math
from sympy.polys.matrices import DomainMatrix
from sympy import ZZ
ROOT=Path(__file__).parents[1]
def choose(n,k):return math.comb(n,k) if 0<=k<=n else 0

def matrix(mask,d,ms):
 mon=[(a,b)for b in range(d//2+1)for a in range(d-2*b+1)];rows=[];idx=0
 for r in range(3,9):
  for s in range(r//2+1):
   v=s*(r-s);hit=bool(mask>>idx&1);idx+=1
   if not hit:continue
   m=ms[r-3]
   for i in range(m):
    for h in range(m):
     if i+(2 if r==2*s else 1)*h>=m:continue
     row=[]
     for a,b in mon:
      if r!=2*s:
       val=choose(a,i)*choose(b,h)*r**(a-i)*v**(b-h) if a>=i and b>=h else 0
      else:
       val=sum(choose(b,h)*choose(b-h,l)*s**l*(s*s)**(b-h-l)*choose(a,i-l)*r**(a-i+l) for l in range(b-h+1)if 0<=i-l<=a)if b>=h else 0
      row.append(val)
     rows.append(row)
 return mon,rows
if __name__=='__main__':
 cases=[list(map(int,l.split()))for l in (ROOT/'evidence/jet_ranks.txt').read_text().splitlines()]
 cases=[x for x in cases if x[-2]<x[-1]]
 ix=int(sys.argv[1]) if len(sys.argv)>1 else 0;case=cases[ix];m,d,*rest=case;ms=rest[:6];mon,rows=matrix(m,d,ms)
 t=time.monotonic();A=DomainMatrix.from_list(rows,ZZ);ker=A.nullspace().to_Matrix();print('mask',m,'shape',A.shape,'kernel',ker.shape,'elapsed',time.monotonic()-t)
 best=None
 for raw in ker.tolist():
  coeff=list(map(int,raw));g=math.gcd(*coeff);coeff=[c//g for c in coeff];b=sum(map(abs,coeff)).bit_length()
  if best is None or b<best[0]:best=b,coeff
 if best:
  assert all(sum(c*x for c,x in zip(best[1],row))==0 for row in rows)
  cert={'mask':m,'d':d,'weights':ms,'coefficients':best[1],'l1_bits':best[0],'rows':len(rows)}
  (ROOT/f'evidence/kernel_probe_{m}.json').write_text(json.dumps(cert));print('bits',best[0])
