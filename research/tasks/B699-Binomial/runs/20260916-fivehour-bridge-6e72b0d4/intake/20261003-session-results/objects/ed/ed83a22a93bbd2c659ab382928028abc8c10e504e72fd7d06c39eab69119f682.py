from common import *
cat={(a['q'],*a['fee']):a['mask'] for a in json.loads((ROOT/'sources/catalog104.json').read_text())};cat[(11,0,0,0,0,2,2)]=0
results=[]
for idx,z in STATES.items():
 C=z['C'];h=z['h'];old=calc(C,RAW);rec={'state':idx,'h':h,'C':C,'values':{},'diagnostic_not_license':True}
 for license in [0,1,31]:
  ty=[]
  for c in itertools.product(*[range(0,b+1,2 if r%2 else 1) for r,b in zip(range(3,9),C)]):
   f=[e for e,*v in RAW if all(a<=b for a,b in zip(v,c))]
   if not f:continue
   q=min(f);u=h-int(old[7][tuple(b-a for a,b in zip(c,C))]);q0=q
   while q<=u and (q,*c) in cat and not cat[q,*c]&~license:q+=1
   if q<=u:ty.append((q,*c))
  arr=calc(C,ty);rec['values'][license]=int(arr[8][C]);(ROOT/f'work/types105_s{idx}_m{license}.json').write_text(json.dumps(ty))
 results.append(rec);print(idx,'h',h,rec['values'],flush=True)
(ROOT/'certificates/CATALOG105_LICENSE_PROBE.json').write_text(json.dumps(results,indent=2)+'\n')
