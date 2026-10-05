from common import *
cat={(x['q'],*x['fee']):x['classes'] for x in json.loads((ROOT/'sources/ADOPTED_CATALOG.json').read_text())}
cat[(10,0,0,0,2,0,2)]=[]
cat[(10,0,0,0,2,2,0)]=[]
res=[]
for idx,z in STATES.items():
 C=z['C'];h=z['h'];old=calc(C,RAW);types=[];need=set();blocked=[]
 for c in itertools.product(*[range(0,b+1,2 if r%2 else 1) for r,b in zip(range(3,9),C)]):
  a=[t[0] for t in RAW if all(x<=y for x,y in zip(t[1:],c))]
  if not a:continue
  e=min(a);maxq=h-int(old[7][tuple(b-a for a,b in zip(c,C))]);e0=e
  while e<=maxq and (e,*c) in cat:
   need.update(cat[(e,*c)]);blocked.append({'q':e,'fee':c,'classes':cat[(e,*c)]});e+=1
  if e<=maxq:types.append((e,*c))
 after=calc(C,types);val=int(after[8][C]); print(idx,h,'old',int(old[8][C]),'exact92',val,'required',sorted(need),'cuts',len(blocked),'typecount',len(types),flush=True)
 res.append({'state':idx,'h':h,'v':z['v'],'C':C,'M8_before':int(old[8][C]),'M8_conditional90':val,'required_classes':sorted(need),'classified_blocked':blocked,'types_conditional':types})
(ROOT/'certificates/probe/exact_fee92_all17.json').write_text(json.dumps(res,indent=2)+'\n')
