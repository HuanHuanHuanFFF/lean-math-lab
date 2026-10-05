from common import *
BITS={'S5':1,'Fstar':2,'P4':4,'U4':8,'A35':16}
cat={(a['q'],*a['fee']):a['mask'] for a in json.loads((ROOT/'sources/catalog102.json').read_text())}|{(19,0,0,0,0,0,3):0,(25,0,0,0,0,0,2):0}
out=[]
for idx,z in STATES.items():
 if idx==1937:continue
 C=z['C'];h=z['h'];old=calc(C,RAW);bounds=[]
 for c in itertools.product(*[range(0,b+1,2 if r%2 else 1) for r,b in zip(range(3,9),C)]):
  fitted=[e for e,*v in RAW if all(a<=b for a,b in zip(v,c))]
  if not fitted:continue
  q0=min(fitted);u=h-int(old[7][tuple(b-a for a,b in zip(c,C))]);bounds.append((c,q0,u))
 res=[]
 for mask in range(32):
  ty=[]
  for c,q0,u in bounds:
   q=q0
   while q<=u and (q,*c) in cat and not cat[q,*c]&~mask:q+=1
   if q<=u:ty.append((q,*c))
  m=int(calc(C,ty)[8][C]);res.append(m)
 minimal=[mask for mask,m in enumerate(res) if m>h and not any(mask&sub==sub and res[sub]>h for sub in range(mask))]
 print(idx,h,'full',res[31],'minimal licenses',[(m,[f for f,b in BITS.items() if b&m],res[m]) for m in minimal],flush=True)
 out.append({'state':idx,'h':h,'values_by_mask':res,'minimal_masks':minimal})
(ROOT/'certificates/LICENSE_COUNTERFACTUAL.json').write_text(json.dumps({'unproved_licenses':True,'states':out},indent=2)+'\n')
