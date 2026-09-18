"""Small ordinary jet systems. Modular discovery with exact rational completion."""
from fractions import Fraction as Q
from math import comb
from collections import Counter
from pathlib import Path
import json,time
ROOT=Path(__file__).resolve().parents[1]; RS=tuple(range(3,9));P=1000003
QB=[(a,b) for b in range(3) for a in range(5-2*b)]
def pmul(a,b):
 out={}
 for (i,j),x in a.items():
  for (k,l),y in b.items():out[i+k,j+l]=out.get((i+k,j+l),0)+x*y
 return {m:v for m,v in out.items() if v}
def linear(a,b):return {(1,0):a,(0,0):b}
W={(0,0):1}
for r in RS:W=pmul(W,linear(1,-r))
BAS=[{(a+i,b+j):v for (i,j),v in W.items()} for a,b in QB]
LAG=[]
for r in RS:
 p={(0,0):Q(1)}
 for s in RS:
  if s!=r:p=pmul(p,linear(Q(1,r-s),Q(-s,r-s)))
 LAG.append(p)
def jet(poly,r,v,i,j):
 return sum(c*comb(a,i)*comb(b,j)*r**(a-i)*v**(b-j) for (a,b),c in poly.items() if a>=i and b>=j)
CACHE={}
def matrixrow(r,v,i,j):
 key=(r,v,i,j)
 if key not in CACHE:CACHE[key]=[jet(p,r,v,i,j) for p in BAS]
 return CACHE[key]
def h0_of(rec):
 out={}
 for idx,r in enumerate(RS):
  roots=list(map(Q,rec['ordinary_roots'][str(r)]))
  if r==rec['h']:roots.append(Q(*rec['lambda']))
  p={(0,0):Q(1)}
  for v in roots:p=pmul(p,{(0,1):Q(1),(0,0):-v})
  for key,x in pmul(p,LAG[idx]).items():out[key]=out.get(key,0)+x
 out={k:v for k,v in out.items() if v}
 assert max(a+2*b for a,b in out)==10 and out[0,5]==1
 return out
def mod(x):return int(x.numerator)*pow(int(x.denominator),-1,P)%P if isinstance(x,Q) else int(x)%P
def modular(mat):
 a=[[mod(x) for x in row] for row in mat];ids=list(range(len(a)));piv=[];cols=[];rr=0
 for c in range(len(a[0])):
  k=next((k for k in range(rr,len(a)) if a[k][c]),None)
  if k is None:continue
  piv.append(ids[k]);cols.append(c);a[rr],a[k]=a[k],a[rr];ids[rr],ids[k]=ids[k],ids[rr]
  inv=pow(a[rr][c],-1,P);a[rr]=[v*inv%P for v in a[rr]]
  for k in range(rr+1,len(a)):
   d=a[k][c]
   if d:a[k]=[(x-d*y)%P for x,y in zip(a[k],a[rr])]
  rr+=1
  if rr==len(a):break
 return cols,piv

def exact(mat):
 a=[list(map(Q,row)) for row in mat];piv=[];rr=0
 for c in range(9):
  k=next((k for k in range(rr,len(a)) if a[k][c]),None)
  if k is None:continue
  a[rr],a[k]=a[k],a[rr];d=a[rr][c];a[rr]=[x/d for x in a[rr]]
  for k in range(len(a)):
   if k!=rr:
    d=a[k][c]
    if d:a[k]=[x-d*y for x,y in zip(a[k],a[rr])]
  piv.append(c);rr+=1
  if rr==len(a):break
 if any(all(x==0 for x in row[:9]) and row[9] for row in a):return None,len(piv),None
 free=[i for i in range(9) if i not in piv]
 base=[Q(0)]*9
 for row,c in zip(a,piv):base[c]=row[9]
 vec=[]
 for f in free:
  z=[Q(0)]*9;z[f]=Q(1)
  for row,c in zip(a,piv):z[c]=-row[f]
  vec.append(z)
 return base,len(piv),vec

def enc(xs):return [[x.numerator,x.denominator] for x in xs]
def main():
 records=json.loads((ROOT/'evidence/mu29_gates.json').read_text())['records']; out=[];counts=Counter();start=time.monotonic()
 for idx,rec in enumerate(records):
  h0=h0_of(rec);eqs=[];labels=[]
  for r in RS:
   for v,e in Counter(rec['ordinary_roots'][str(r)]).items():
    for i in range(1,e):
     for j in range(e-i):
      labels.append([r,v,i,j]);eqs.append(matrixrow(r,v,i,j)+[-jet(h0,r,v,i,j)])
  cols,piv=modular(eqs)
  info={'index':idx,'rows':labels,'pivot_rows':piv,'modular_pivot_columns':cols}
  if cols==list(range(10)):
   info['status']='inconsistent_rank10';counts[info['status']]+=1
  else:
   b,rank,vs=exact(eqs)
   if b is None:info['status']='inconsistent_rational';counts[info['status']]+=1
   else:
    info.update(status='soluble',rank=rank,base=enc(b),directions=[enc(v) for v in vs]);counts['rank'+str(rank)]+=1
  out.append(info)
  if (idx+1)%250==0: print(idx+1,dict(counts),round(time.monotonic()-start,2),flush=True)
 (ROOT/'evidence/mu29_jets.json').write_text(json.dumps({'prime':P,'q_basis':QB,'counts':dict(counts),'systems':out},separators=(',',':')))
 print('DONE',dict(counts),round(time.monotonic()-start,2),flush=True)
if __name__=='__main__':main()
