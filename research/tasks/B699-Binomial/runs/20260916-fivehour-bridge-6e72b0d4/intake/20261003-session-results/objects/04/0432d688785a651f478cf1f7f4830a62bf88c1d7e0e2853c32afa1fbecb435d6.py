from common import *
P43=[((0,0,2,1,0,0),range(4,11)),((0,0,2,1,0,1),range(4,11)),((0,0,2,1,0,2),range(4,8)),((0,0,2,1,2,0),range(4,8)),((0,0,2,2,0,0),range(4,10)),((0,0,2,2,0,1),range(4,6)),((0,1,2,1,0,0),range(4,11)),((0,1,2,1,0,1),range(4,6)),((0,1,2,2,0,0),range(4,6)),((0,0,2,3,0,0),[4]),((0,2,2,1,0,0),[4])]
P16=[((0,0,2,3,0,0),range(5,10)),((0,0,2,2,0,1),range(6,10)),((0,0,2,1,0,2),range(8,11)),((0,0,2,1,2,0),range(8,11)),((0,0,2,2,0,0),[10])]
cat={}
for q,c in [(q,c) for c,qs in P43 for q in qs]:cat[(q,*c)]=['S5','Fstar'] if q==4 and c==(0,2,2,1,0,0) else ['S5'] if q==4 else []
for q,c in [(q,c) for c,qs in P16 for q in qs]:cat[(q,*c)]=[]
for folder in ['geometry','extra_geometry']:
 profiles=json.loads((ROOT/f'sources/ROUND2_{folder}_profiles.json').read_text())
 (ROOT/f'sources/ROUND2_{folder}_profiles.json').write_text(json.dumps(profiles,indent=2)+'\n')
 for x in profiles:
  if x.get('purpose')=='Fstar_recovery':continue
  q,c=x['q'],tuple(x['fee']);key=(q,*c)
  if key not in cat:cat[key]=['P4','U4'] if q==4 and c==(0,0,2,2,0,2) else []
assert len(cat)==90
(ROOT/'sources/ADOPTED_CATALOG.json').write_text(json.dumps([{'q':x[0],'fee':x[1:],'classes':v} for x,v in sorted(cat.items())],indent=2)+'\n')
for idx in [1907,1908,1910]:
 z=STATES[idx];C=z['C'];ty=[];types0=[];requirements=set();banned=[]
 for c in itertools.product(*[range(0,b+1,2 if r%2 else 1) for r,b in zip(range(3,9),C)]):
  fitted=[x for x in RAW if all(a<=b for a,b in zip(x[1:],c))]
  if not fitted:continue
  e=min(x[0] for x in fitted);e0=e
  while (e,*c) in cat:
   requirements.update(cat[(e,*c)]);banned.append((e,*c));e+=1
  ty.append((e,*c));types0.append((e0,*c))
 ar=calc(C,ty);v=int(ar[8][C]);print(idx,'after90 conditional',v,'classes',requirements,flush=True)
 # only exact fees appearing in budget-valid combinations
 viable=[]
 for x in ty:
  m=int(ar[7][tuple(b-a for a,b in zip(x[1:],C))])
  if x[0]+m<=z['h']:viable.append((x,z['h']-m))
 print('viable exact types',len(viable),flush=True)
 for x,qmax in viable:print(x,'qmax',qmax,flush=True)
 (ROOT/f'certificates/probe/s{idx}_exact90.json').write_text(json.dumps({'state':idx,'h':z['h'],'C':C,'types':ty,'M8':v,'required_quotient_classes':sorted(requirements),'known_domains_considered':banned,'viable_types_and_qmax':viable},indent=2)+'\n')
