from pathlib import Path
import numpy as np,json
root=Path(__file__).resolve().parents[1];C=(6,7,4,6); inf=10000
raw=[tuple(map(int,s.split())) for s in (root/'sources/global649_c3c4zero_excerpt.txt').read_text().splitlines()]
a=sorted(set((x[0],tuple(x[3:])) for x in raw if all(x[i+3]<=C[i] for i in range(4))))
sh=tuple(x+1 for x in C)
def layers(types):
 old=np.zeros(sh,dtype=np.int64);alll=[old]
 for k in range(8):
  new=np.full(sh,inf,dtype=np.int64)
  for e,c in types:
   dst=tuple(slice(x,None) for x in c);src=tuple(slice(0,n-x) for n,x in zip(sh,c))
   new[dst]=np.minimum(new[dst],old[src]+e)
  old=new;alll.append(old)
 return alll
m=layers(a);out={'source':'older649_c3c4zero_projection','M8':int(m[8][C]),'conditional':[]}
for f in [5,10,11]:
 ty=[(max(e,f) if (e,c)==(4,(2,1,0,0)) else e,c) for e,c in a]
 t=layers(ty);out['conditional'].append({'T_floor':f,'M8':int(t[8][C])})
print(out);(root/'certificates/ledger_fast_diagnostic.json').write_text(json.dumps(out,indent=2)+'\n')
np.save(root/'certificates/M7_old649.npy',m[7])
