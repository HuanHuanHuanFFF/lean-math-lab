from pathlib import Path
import csv,itertools,json,numpy as np
ROOT=Path(__file__).resolve().parents[1]
OFF=[[77,74],[67,57],[51,54,46],[40,43,48],[31,34,39,45],[25,28,33,39]]
DIAG=[0,56,0,41,0,52]
T=(4,0,0,2,1,0,0)
RAW=sorted(set(tuple(map(int,s.split())) for s in (ROOT/'sources/global649.txt').read_text().splitlines() if s.strip()))
STATES={int(r['idx']):{'id':int(r['idx']),'h':int(r['h']),'v':tuple(map(int,r['v3,v4,v5,v6,v7,v8'].split(',')))} for r in csv.DictReader((ROOT/'sources/frontier17.tsv').open(),delimiter='\t')}
for z in STATES.values():
 h,v=z['h'],z['v'];z['C']=tuple(2*h-2*sum(max(a-v[k],0) for a in OFF[k])-max(DIAG[k]-v[k],0) for k in range(6))
def calc(C,types,layers=8):
 sh=tuple(c+1 for c in C); arr=[np.zeros(sh,dtype=np.int64)];ty=[(e,tuple(c)) for e,*c in types if all(a<=b for a,b in zip(c,C))]
 slices=[(e,tuple(slice(a,None) for a in c),tuple(slice(0,b-a) for a,b in zip(c,sh))) for e,c in ty]
 for _ in range(layers):
  new=np.full(sh,10000,dtype=np.int64)
  for e,dst,src in slices:new[dst]=np.minimum(new[dst],arr[-1][src]+e)
  arr.append(new)
 return arr

def low(C,h,types,proxy,qmax):
 arr=calc(C,types,7);out=[]
 for c in itertools.product(*[range(t,b+1,2 if r%2 else 1) for r,t,b in zip(range(3,9),proxy[1:],C)]):
  m=int(arr[7][tuple(b-a for a,b in zip(c,C))])
  for q in range(proxy[0],min(qmax,h-m)+1):out.append((q,*c,m))
 return sorted(out)
def source_input(e,D,v,p=257,mode=0,upper=None):
 pts=[]; k=0
 for ix,r in enumerate(range(3,9)):
  for s in range(r//2+1):
   w=2 if r%2==0 and s==r//2 else 1
   m=(DIAG[ix] if w==2 else OFF[ix][s])-v[ix]-(upper[k] if upper else 0);k+=1
   pts.append((r,s,w,max(0,m)))
 return f'{e} {D} {p} {mode} 21\n'+''.join(' '.join(map(str,x))+'\n' for x in pts)
