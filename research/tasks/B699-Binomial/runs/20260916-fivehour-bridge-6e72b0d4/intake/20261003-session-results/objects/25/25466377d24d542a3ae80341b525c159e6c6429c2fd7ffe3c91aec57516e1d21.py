from pathlib import Path
import numpy as np,json,itertools
ROOT=Path(__file__).resolve().parents[1]
RAW=[tuple(map(int,s.split())) for s in (ROOT/'sources/global649.txt').read_text().splitlines() if s.strip()]
assert len(RAW)==649 and all(len(x)==7 for x in RAW)
C=(0,2,6,5,0,9);h=133;T=(4,0,0,2,1,0,0)
sh=tuple(v+1 for v in C); INF=10000
TY=sorted(set(x for x in RAW if all(a<=b for a,b in zip(x[1:],C))))
def layers(types):
 old=np.zeros(sh,dtype=np.int64);ans=[old]
 for k in range(8):
  new=np.full(sh,INF,dtype=np.int64)
  for (e,*c) in types:
   dst=tuple(slice(x,None) for x in c);src=tuple(slice(0,n-x) for n,x in zip(sh,c))
   new[dst]=np.minimum(new[dst],old[src]+e)
  old=new;ans.append(old)
 return ans
M=layers(TY);np.save(ROOT/'certificates/M7_old649_1874.npy',M[7])
threshold=[]
for floor in range(4,31):
 types=[(floor,*x[1:]) if x==T else x for x in TY]
 arr=layers(types);threshold.append([floor,int(arr[8][C])])
print('types',len(TY),'M8',M[8][C],'T_floor tests',threshold)
P43=[((0,0,2,1,0,0),range(4,11)),((0,0,2,1,0,1),range(4,11)),((0,0,2,1,0,2),range(4,8)),((0,0,2,1,2,0),range(4,8)),((0,0,2,2,0,0),range(4,10)),((0,0,2,2,0,1),range(4,6)),((0,1,2,1,0,0),range(4,11)),((0,1,2,1,0,1),range(4,6)),((0,1,2,2,0,0),range(4,6)),((0,0,2,3,0,0),[4]),((0,2,2,1,0,0),[4])]
P16=[((0,0,2,3,0,0),range(5,10)),((0,0,2,2,0,1),range(6,10)),((0,0,2,1,0,2),range(8,11)),((0,0,2,1,2,0),range(8,11)),((0,0,2,2,0,0),[10])]
known43={(q,c) for c,qs in P43 for q in qs};known16={(q,c) for c,qs in P16 for q in qs}
first=next((t for t,m in threshold if m>h),None)
maxq=first-1 if first else 15
low=[]
for q in range(4,maxq+1):
 for c in itertools.product(*[range(t,cap+1,2 if r%2 else 1) for r,t,cap in zip(range(3,9),T[1:],C)]):
  rem=tuple(a-b for a,b in zip(C,c));m=int(M[7][rem])
  if q+m<=h:
   prior='LOW-T43' if (q,c) in known43 else 'ROUND1_LOW16' if (q,c) in known16 else 'NEW'
   low.append({'q':q,'fee':c,'M7':m,'prior':prior})
rec={'state':1874,'h':h,'C':C,'old_table_rows':len(RAW),'fitting_types':len(TY),'T_floor_tests':threshold,'required_T_floor':first,'low_count':len(low),'low':low,'missing':[x for x in low if x['prior']=='NEW']}
(ROOT/'certificates/ledger_probe.json').write_text(json.dumps(rec,indent=2)+'\n')
print('required',first,'low',len(low),'missing',len(rec['missing']))
from collections import defaultdict,Counter
print('prior',Counter(x['prior'] for x in low));d=defaultdict(list)
for x in rec['missing']:d[tuple(x['fee'])].append(x['q'])
print(dict(d))
