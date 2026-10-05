from common import *
from collections import Counter
records=json.loads((ROOT/'certificates/probe/exact_fee92_all17.json').read_text())
for idx in [1907,1937,1964,1977,2014,2022]:
 r=next(x for x in records if x['state']==idx);C=tuple(r['C']);h=r['h'];ty=sorted(map(tuple,r['types_conditional']));arr=calc(C,ty)
 viable=[x for x in ty if x[0]+int(arr[7][tuple(b-a for a,b in zip(x[1:],C))])<=h]
 combos=[]
 def dfs(start,k,B,bud,path):
  if int(arr[k][B])>bud:return
  if not k:combos.append(path);return
  for i in range(start,len(viable)):
   e,*c=viable[i]
   if e*k>bud:break
   if all(a<=b for a,b in zip(c,B)):
    dfs(i,k-1,tuple(b-a for a,b in zip(c,B)),bud-e,path+[i])
 dfs(0,8,C,h,[])
 print('\n',idx,'M8',int(arr[8][C]),'combinations',len(combos),'viable',len(viable),flush=True)
 if combos:
  common=set.intersection(*map(set,combos));print('common',[viable[i] for i in sorted(common)],flush=True)
  counts=Counter(i for path in combos for i in set(path))
  print('most frequent',[(viable[i],n) for i,n in counts.most_common(10)],flush=True)
  cheap=[]
  for x in viable:
   for d in [1,2,3]:
    nty=[(y[0]+d,*y[1:]) if y==x else y for y in ty];m=int(calc(C,nty)[8][C])
    if m>h:cheap.append({'type':x,'extra':d,'M8':m});break
  print('single fee stair sufficient',cheap,flush=True)
  pair=[]
  for i,j in itertools.combinations(range(len(viable)),2):
   if all(i in path or j in path for path in combos):pair.append([viable[i],viable[j]])
  print('hitting pairs',pair[:15],flush=True)
 (ROOT/f'certificates/probe/s{idx}_after92_combinations.json').write_text(json.dumps({'state':idx,'types':viable,'combinations':[[viable[i] for i in path] for path in combos],'single_fee_stair':cheap},indent=2)+'\n')
