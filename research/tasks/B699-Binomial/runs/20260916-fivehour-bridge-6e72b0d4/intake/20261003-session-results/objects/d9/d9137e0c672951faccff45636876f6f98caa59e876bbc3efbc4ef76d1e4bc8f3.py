"""Necessary-resource diagnostics only. In particular no-T witnesses are not factors."""
from pathlib import Path
import csv,json,numpy as np,subprocess,itertools
R=Path(__file__).resolve().parents[1];O=R/'certificates/next_frontier';O.mkdir(exist_ok=True)
OFF=[[77,74],[67,57],[51,54,46],[40,43,48],[31,34,39,45],[25,28,33,39]];DIAG=[0,56,0,41,0,52];T=(4,0,0,2,1,0,0)
raw=sorted(set(tuple(map(int,s.split())) for s in (R/'sources/global649.txt').read_text().splitlines()))
# All 90 domains used by this round's consumer; extracted from the adopted and generated sets.
p=json.loads((R/'certificates/ledger_probe.json').read_text());known=set()
P43=[((0,0,2,1,0,0),range(4,11)),((0,0,2,1,0,1),range(4,11)),((0,0,2,1,0,2),range(4,8)),((0,0,2,1,2,0),range(4,8)),((0,0,2,2,0,0),range(4,10)),((0,0,2,2,0,1),range(4,6)),((0,1,2,1,0,0),range(4,11)),((0,1,2,1,0,1),range(4,6)),((0,1,2,2,0,0),range(4,6)),((0,0,2,3,0,0),[4]),((0,2,2,1,0,0),[4])]
P16=[((0,0,2,3,0,0),range(5,10)),((0,0,2,2,0,1),range(6,10)),((0,0,2,1,0,2),range(8,11)),((0,0,2,1,2,0),range(8,11)),((0,0,2,2,0,0),[10])]
known={(q,c) for c,qs in P43+P16 for q in qs}
for folder in ['geometry','extra_geometry']:
 for x in json.loads((R/f'certificates/{folder}/profiles.json').read_text()):known.add((x['q'],tuple(x['fee'])))
assert len(known)==90
records=[]
for row in csv.DictReader((R/'certificates/frontier17.tsv').open(),delimiter='\t'):
 idx=int(row['idx'])
 if idx not in [1907,1908,1910]:continue
 h=int(row['h']);v=list(map(int,row['v3,v4,v5,v6,v7,v8'].split(',')));C=tuple(2*h-2*sum(max(a-v[k],0) for a in OFF[k])-max(DIAG[k]-v[k],0) for k in range(6));sh=tuple(x+1 for x in C)
 fitting=[x for x in raw if all(a<=b for a,b in zip(x[1:],C))]
 def calc(types):
  arr=[np.zeros(sh,dtype=np.int64)]
  for k in range(8):
   new=np.full(sh,10000,dtype=np.int64)
   for e,*c in types:
    dst=tuple(slice(x,None) for x in c);src=tuple(slice(0,b-a) for a,b in zip(c,sh));new[dst]=np.minimum(new[dst],arr[-1][src]+e)
   arr.append(new)
  return arr
 noT=[x for x in fitting if x!=T];a=calc(noT);value=int(a[8][C]);budget=C;need=value;wit=[]
 for k in range(8,0,-1):
  for x in noT:
   e,*c=x
   if all(u<=v0 for u,v0 in zip(c,budget)):
    rem=tuple(v0-u for u,v0 in zip(c,budget))
    if e+int(a[k-1][rem])==need:wit.append(x);budget=rem;need-=e;break
  else:raise AssertionError('no weak witness')
 assert need==0 and len(wit)==8 and all(tuple(x)!=T for x in wit)
 prefix=O/f's{idx}_omit_T';np.asarray(a,dtype='<i8').tofile(prefix.with_suffix('.bin'))
 prefix.with_suffix('.input').write_text(f'{h} -1 0\n'+' '.join(map(str,C))+'\n')
 subprocess.run([str(R/'code/ledger_exact_receiver'),str(prefix.with_suffix('.input')),str(R/'sources/global649.txt'),str(prefix.with_suffix('.bin')),str(prefix.with_suffix('.low.tsv')),str(prefix.with_suffix('.receipt.json'))],check=True,capture_output=True,text=True)
 old=calc(fitting);floor=None
 for f in range(4,32):
  aa=calc([(f,*x[1:]) if x==T else x for x in fitting])
  if int(aa[8][C])>h:floor=f;break
 low=[]
 if floor:
  for q in range(4,floor):
   for c in itertools.product(*[range(t,cap+1,2 if r%2 else 1) for r,t,cap in zip(range(3,9),T[1:],C)]):
    m=int(old[7][tuple(a-b for a,b in zip(C,c))])
    if q+m<=h:low.append({'q':q,'fee':c,'known_catalog':(q,c) in known})
 rr={'state':idx,'h':h,'v':v,'C':C,'M8_old':int(old[8][C]),'M8_omit_T':value,'weak_no_T_witness':wit,
 'T_only_pricing_obstructed_in_old649':value<=h,'conditional_floor_within31':floor,
 'conditional_low_preimage_count':len(low),'conditional_missing_count':sum(not x['known_catalog'] for x in low),'conditional_low':low,
 'licenses_proved_for_this_state':[],'actual_factors_or_NC_points':False}
 records.append(rr);print(idx,'M8 no-T',value,'h',h,'conditional T floor',floor,'low',len(low),'missing',rr['conditional_missing_count'],flush=True)
(R/'certificates/next_frontier_probe.json').write_text(json.dumps(records,indent=2)+'\n')
