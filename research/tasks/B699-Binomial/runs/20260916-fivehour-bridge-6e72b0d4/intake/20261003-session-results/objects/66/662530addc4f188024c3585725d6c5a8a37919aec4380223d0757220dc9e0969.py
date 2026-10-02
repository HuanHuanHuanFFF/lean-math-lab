from pathlib import Path
import itertools,json,csv,numpy as np
R=Path(__file__).resolve().parents[1]
raw=sorted(set(tuple(map(int,s.split())) for s in (R/'sources/global649.txt').read_text().splitlines() if s.strip()))
OFF=[[77,74],[67,57],[51,54,46],[40,43,48],[31,34,39,45],[25,28,33,39]];DIAG=[0,56,0,41,0,52];T=(4,0,0,2,1,0,0)
P43=[((0,0,2,1,0,0),range(4,11)),((0,0,2,1,0,1),range(4,11)),((0,0,2,1,0,2),range(4,8)),((0,0,2,1,2,0),range(4,8)),((0,0,2,2,0,0),range(4,10)),((0,0,2,2,0,1),range(4,6)),((0,1,2,1,0,0),range(4,11)),((0,1,2,1,0,1),range(4,6)),((0,1,2,2,0,0),range(4,6)),((0,0,2,3,0,0),[4]),((0,2,2,1,0,0),[4])]
P16=[((0,0,2,3,0,0),range(5,10)),((0,0,2,2,0,1),range(6,10)),((0,0,2,1,0,2),range(8,11)),((0,0,2,1,2,0),range(8,11)),((0,0,2,2,0,0),[10])]
known={(q,c) for c,qs in P43+P16 for q in qs}
known.update((x['q'],tuple(x['fee'])) for x in json.loads((R/'certificates/ledger_probe.json').read_text())['missing'])
res=[]
for row in csv.DictReader((R/'sources/frontier26.tsv').open(),delimiter='\t'):
 idx,h=int(row['idx']),int(row['h']);v=list(map(int,row['v3,v4,v5,v6,v7,v8'].split(',')))
 C=tuple(2*h-2*sum(max(x-v[k],0) for x in OFF[k])-max(DIAG[k]-v[k],0) for k in range(6));assert min(C)>=0
 sh=tuple(x+1 for x in C);ty=[x for x in raw if all(a<=b for a,b in zip(x[1:],C))]
 def layers(floor):
  old=np.zeros(sh,dtype=np.int64);ans=[old]
  for k in range(8):
   new=np.full(sh,10000,dtype=np.int64)
   for x in ty:
    e=floor if x==T else x[0];c=x[1:];dst=tuple(slice(a,None) for a in c);src=tuple(slice(0,b-a) for a,b in zip(c,sh))
    new[dst]=np.minimum(new[dst],old[src]+e)
   old=new;ans.append(old)
  return ans
 old=layers(4);threshold=None;vals=[]
 # Minimal T floor sought; 31+ is only a diagnostic sentinel, not a proven degree bound.
 for b in range(4,32):
  val=int(layers(b)[8][C]) if b!=4 else int(old[8][C]);vals.append([b,val])
  if val>h:threshold=b;break
 low=[];missing=[]
 if threshold:
  for q in range(4,threshold):
   for c in itertools.product(*[range(t,b+1,2 if r%2 else 1) for r,t,b in zip(range(3,9),T[1:],C)]):
    rem=tuple(a-b for a,b in zip(C,c))
    if q+int(old[7][rem])<=h:
     it=[q,list(c)];low.append(it)
     if (q,c) not in known:missing.append(it)
 rec={'state':idx,'h':h,'v':v,'C':C,'old_M8':int(old[8][C]),'conditional_T_floor':threshold,'conditional_cost':vals[-1][1],'low_count':len(low),'missing_count':len(missing),'low':low,'missing':missing,'conditional_only':True}
 res.append(rec);print(idx,h,C,'T',threshold,'low',len(low),'missing',len(missing),flush=True)
 (R/'discovery/reuse_probe.json').write_text(json.dumps({'known_domain_count':len(known),'states':res},indent=2)+'\n')
