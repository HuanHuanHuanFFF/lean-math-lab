from common import *
from collections import Counter
for idx in [1907,1908]:
 z=STATES[idx];h,C=z['h'],z['C'];ty=[x for x in RAW if all(a<=b for a,b in zip(x[1:],C))]
 pareto=[x for x in ty if not any(y!=x and all(a<=b for a,b in zip(y,x)) for y in ty)]
 print('\n',idx,'pareto',len(pareto),pareto,flush=True)
 rec=json.loads((ROOT/f'certificates/probe/s{idx}_not.json').read_text());comb=[set(tuple(y) for y in x) for x in rec['combinations']]
 candidates=rec['viable_noT'];pairs=[]
 for a,b in itertools.combinations(map(tuple,candidates),2):
  if all(a in c or b in c for c in comb):pairs.append([a,b])
 print('hitting pairs',pairs,flush=True)
 # Counterfactual all low-type degree floors then detailed cells to classify.
 for L in [8,10,12,14,16,18,20,22,24,26,28,32]:
  new=[(max(L,x[0]),*x[1:]) for x in ty];value=int(calc(C,new)[8][C]);print('all-types floor',L,value,flush=True)
  if value>h:break
 for limit in [0,4,6,10,11,13,16,18,19,21]:
  nt=[x for x in ty if x[0]>limit];val=int(calc(C,nt)[8][C]);print('omit all degree<=',limit,val,flush=True)
