from common import *
from collections import Counter
O=ROOT/'certificates/probe';O.mkdir(exist_ok=True)
for idx in [1907,1908,1910]:
 z=STATES[idx]; C=z['C'];h=z['h'];ty=[x for x in RAW if all(a<=b for a,b in zip(x[1:],C))];noty=[x for x in ty if x!=T]
 arr=calc(C,noty);print(idx,'h',h,'C',C,'fit',len(ty),'noT',int(arr[8][C]),flush=True)
 viable=[]
 for x in noty:
  if x[0]+int(arr[7][tuple(b-a for a,b in zip(x[1:],C))])<=h:viable.append(x)
 print('participating',len(viable),viable,flush=True)
 # All unordered budget-valid noT tuples, residual min uses full noT (safe pruning).
 count=0;commons=None;uses=Counter();out=[]
 def dfs(start,k,B,budget,path):
  global count,commons
  if int(arr[k][B])>budget:return
  if not k:
   count+=1;ss=set(path);commons=ss if commons is None else commons&ss
   for a in ss:uses[a]+=1
   out.append(path);return
  for i in range(start,len(viable)):
   e,*c=viable[i]
   if e*k>budget:break
   if all(a<=b for a,b in zip(c,B)):
    rem=tuple(b-a for a,b in zip(c,B))
    dfs(i,k-1,rem,budget-e,path+[i])
 dfs(0,8,C,h,[])
 print('noT combos',count,'common',[(viable[k],uses[k]) for k in sorted(commons or [])],flush=True)
 rec={'state':z,'fitting_types':ty,'viable_noT':viable,'noT_count':count,'common_types':[viable[k] for k in sorted(commons or [])],'support_counts':[[viable[k],v] for k,v in sorted(uses.items())],'combinations':[[viable[i] for i in x] for x in out]}
 (O/f's{idx}_not.json').write_text(json.dumps(rec,indent=2)+'\n')
 (O/f's{idx}_fullG.input').write_text(source_input(h,2*h,z['v']))
