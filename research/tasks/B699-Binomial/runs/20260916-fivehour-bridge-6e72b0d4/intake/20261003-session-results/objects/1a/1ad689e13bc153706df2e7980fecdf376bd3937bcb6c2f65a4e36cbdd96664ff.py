"""Counterfactual family-licence budget diagnostics for the two remaining states.
These masks are NEVER fed into the certified ledger; no quotient proof is run.
"""
from common import *
O=ROOT/'certificates';cat={(a['q'],*a['fee']):a['mask'] for a in json.loads((O/'ledger/catalog112.json').read_text())}
fam={1:'S5',2:'Fstar',4:'P4',8:'U4',16:'A35'};out=[]
for idx in [2000,2029]:
 z=STATES[idx];h=z['h'];C=z['C'];old=calc(C,RAW);fee_data=[]
 for c in itertools.product(*[range(0,b+1,2 if r%2 else 1) for r,b in zip(range(3,9),C)]):
  fs=[q for q,*b in RAW if all(x<=y for x,y in zip(b,c))]
  if fs:fee_data.append((c,min(fs),h-int(old[7][tuple(b-a for a,b in zip(c,C))])))
 rows=[]
 for mask in [0,1,2,4,8,16,31]:
  ty=[]
  for c,lo,up in fee_data:
   q=lo
   while q<=up and (q,*c) in cat and not cat[q,*c]&~mask:q+=1
   if q<=up:ty.append((q,*c))
  m=int(calc(C,ty)[8][C]);rows.append({'hypothetical_mask':mask,'families':[f for bit,f in fam.items() if mask&bit],'M8':m,'would_exceed_h':m>h,'new_licence_obtained':False})
 r={'state':idx,'h':h,'v':z['v'],'C':C,'certified_actual_mask':0,'counterfactual_only':True,'tested_masks':[0,1,2,4,8,16,31],'not_a_complete_search_of_all_family_subsets':True,'quotient_source_systems_executed':0,'rows':rows};out.append(r);print(json.dumps(r,indent=2),flush=True)
(O/'NEXT_FRONTIER.json').write_text(json.dumps(out,indent=2)+'\n')
