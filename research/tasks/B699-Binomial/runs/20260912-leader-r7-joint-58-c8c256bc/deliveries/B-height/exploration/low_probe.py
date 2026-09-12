import sys,json
from math import gcd,isqrt,comb
from pathlib import Path
sys.path.insert(0,str(Path(__file__).parent))
from block_probe import ell_n

def valuation(n,p):
 a=0
 while n and n%p==0:n//=p;a+=1
 return a

def exact_ell(n):
 return (3 if valuation(n-1,3)==1 else 1)*(3 if valuation((n-2)//2,3)==1 else 1)

def all_models(C,side):
 for ell in [1,3]:
  if C%3==0 and ell==3:continue
  w=C*ell
  for h in range(1,w):
   if gcd(h,C)>1:continue
   if side=='outer':odds={a for a in range(1,h+1,2) if h%a==0}
   else:odds={a for a in range(1,isqrt(h)+1,2) if h%(a*a)==0}
   if ell==1:odds|={3*a for a in odds.copy() if a%3}
   for m in sorted(odds):yield ell,h,m

def low(C,side):
 V=max(7,(18*C-1).bit_length());states=0;eq=[];legal=[]
 for ell,h,m in all_models(C,side):
  w=ell*C
  for v in range(2,V):
   n=m*2**v
   if n<8 or exact_ell(n)!=ell:continue
   M=(n-2)//2;mu=3 if valuation(M,3)==1 else 1;K=M//mu
   if K%C or (h*(n-1)*(n-2)-2*w)%(C*C):continue
   states+=1
   rhs=4*h*(n-1)*(n-2)+w if side=='outer' else (w-2*h)*n*n+6*h*n-4*h
   if rhs<0 or rhs%w:continue
   y=isqrt(rhs//w)
   if y*y*w!=rhs:continue
   eq.append([ell,h,m,v,n,y])
   if side=='outer':
    xs=[(1-y)//2,(1+y)//2] if y%2 else []
    js={j for x in xs for j in [x,n-x] if 4<=j<n//2}
   else:js={(n-y)//2} if (n-y)%2==0 and 4<=(n-y)//2<n//2 else set()
   for j in js:
    C0,C1,C2=[gcd(K,j-s) for s in range(3)]
    canon=(C==C1 if side=='middle' else C in [C0,C2])
    G=gcd(comb(n,3),comb(n,j))
    while G%2==0:G//=2
    legal.append([ell,h,m,v,n,j,canon,G])
 return dict(C=C,side=side,V=V,states=states,equation_solutions=eq,legal=legal)
if __name__=='__main__':
 rs=[]
 for C in [7,11,13,17,19,25,27]:
  for side in ['outer','middle']:
   r=low(C,side);rs.append(r);print(C,side,r['V'],r['states'],len(r['equation_solutions']),r['legal'])
 Path(__file__).with_suffix('.json').write_text(json.dumps(rs,indent=2))
