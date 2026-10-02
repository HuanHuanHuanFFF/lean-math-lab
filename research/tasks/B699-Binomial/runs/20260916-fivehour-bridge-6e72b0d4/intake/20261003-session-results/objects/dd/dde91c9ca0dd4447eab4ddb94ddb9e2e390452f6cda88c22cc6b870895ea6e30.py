from pathlib import Path
import itertools,json,csv,subprocess,numpy as np
R=Path(__file__).resolve().parents[1];O=R/'certificates/ledger';O.mkdir(exist_ok=True)
OFF=[[77,74],[67,57],[51,54,46],[40,43,48],[31,34,39,45],[25,28,33,39]];DIAG=[0,56,0,41,0,52];T=(4,0,0,2,1,0,0);INF=10000
raw=sorted(set(tuple(map(int,s.split())) for s in (R/'sources/global649.txt').read_text().splitlines() if s.strip()))
P43=[((0,0,2,1,0,0),range(4,11)),((0,0,2,1,0,1),range(4,11)),((0,0,2,1,0,2),range(4,8)),((0,0,2,1,2,0),range(4,8)),((0,0,2,2,0,0),range(4,10)),((0,0,2,2,0,1),range(4,6)),((0,1,2,1,0,0),range(4,11)),((0,1,2,1,0,1),range(4,6)),((0,1,2,2,0,0),range(4,6)),((0,0,2,3,0,0),[4]),((0,2,2,1,0,0),[4])]
P16=[((0,0,2,3,0,0),range(5,10)),((0,0,2,2,0,1),range(6,10)),((0,0,2,1,0,2),range(8,11)),((0,0,2,1,2,0),range(8,11)),((0,0,2,2,0,0),[10])]
S43={(q,c) for c,qs in P43 for q in qs};S16={(q,c) for c,qs in P16 for q in qs};assert len(S43)==43 and len(S16)==16 and not S43&S16
main=json.loads((R/'certificates/geometry/profiles.json').read_text());extra=json.loads((R/'certificates/extra_geometry/profiles.json').read_text())
SM={(x['q'],tuple(x['fee'])) for x in main if x['purpose']=='new_low_preimage'};SX={(x['q'],tuple(x['fee'])) for x in extra};assert len(SM)==21 and len(SX)==10
assert len(S43|S16|SM|SX)==90
# R2 classifications: only one new q4 domain has candidates (P4 and U4).
def classify(q,c):
 if (q,c) in S43:return ['S5','Fstar'] if q==4 and c==(0,2,2,1,0,0) else ['S5'] if q==4 else []
 if (q,c) in S16:return []
 if (q,c) in SM:return ['P4','U4'] if q==4 and c==(0,0,2,2,0,2) else []
 if (q,c) in SX:return []
 raise AssertionError(('unclassified',q,c))
floors={1874:12,1899:14,1946:13,1982:14,2001:14,2020:12,2025:12,2030:14,2032:12}
state_sources=json.loads((R/'certificates/state_quotient_sources.json').read_text())
records=[];allcomparisons=0
for row in csv.DictReader((R/'sources/frontier26.tsv').open(),delimiter='\t'):
 idx=int(row['idx'])
 if idx not in floors:continue
 h=int(row['h']);v=list(map(int,row['v3,v4,v5,v6,v7,v8'].split(',')));C=tuple(2*h-2*sum(max(a-v[k],0) for a in OFF[k])-max(DIAG[k]-v[k],0) for k in range(6));sh=tuple(x+1 for x in C);ty=[x for x in raw if all(a<=b for a,b in zip(x[1:],C))];price=floors[idx]
 def compute(pr):
  types=[(pr,*x[1:]) if x==T else x for x in ty];old=np.zeros(sh,dtype=np.int64);arr=[old]
  for k in range(8):
   new=np.full(sh,INF,dtype=np.int64)
   for e,*c in types:
    dst=tuple(slice(a,None) for a in c);src=tuple(slice(0,b-a) for a,b in zip(c,sh));new[dst]=np.minimum(new[dst],old[src]+e)
   old=new;arr.append(old)
  return arr,types
 old,_=compute(4);low=[];needed=set()
 for q in range(4,price):
  for c in itertools.product(*[range(t,cap+1,2 if r%2 else 1) for r,t,cap in zip(range(3,9),T[1:],C)]):
   rem=tuple(a-b for a,b in zip(C,c));m=int(old[7][rem])
   if q+m<=h:
    classes=classify(q,c);needed.update(classes);low.append({'q':q,'fee':list(c),'M7_old':m,'candidate_classes':classes})
 got={x['factor_label'] for x in state_sources if x['state']==idx};assert needed==got,(idx,needed,got)
 checks=[];allarr={}
 for pr in [4,price-1,price]:
  arr,types=compute(pr);allarr[pr]=arr;prefix=O/f's{idx}_T{pr}';np.asarray(arr,dtype='<i8').tofile(prefix.with_suffix('.bin'))
  prefix.with_suffix('.input').write_text(f'{h} {pr} {price-1 if pr==4 else 0}\n'+ ' '.join(map(str,C))+'\n')
  cmd=[str(R/'code/ledger_exact_receiver'),str(prefix.with_suffix('.input')),str(R/'sources/global649.txt'),str(prefix.with_suffix('.bin')),str(prefix.with_suffix('.low.tsv')),str(prefix.with_suffix('.receipt.json'))]
  ans=subprocess.run(cmd,check=True,capture_output=True,text=True);check=json.loads(prefix.with_suffix('.receipt.json').read_text());checks.append(check);allcomparisons+=check['compared_cells']
  if pr==4:
   received=[tuple(map(int,s.split())) for s in prefix.with_suffix('.low.tsv').read_text().splitlines()]
   expected=[(x['q'],*x['fee'],x['M7_old']) for x in low];assert sorted(received)==sorted(expected) and len(received)==len(set(received))
 target=int(allarr[price][8][C]);previous=int(allarr[price-1][8][C]);assert target>h and previous<=h
 # Reconstruct a concrete weak minimizer for the new relaxation (not actual factors).
 budget=C;value=target;wit=[]
 _,types=compute(price)
 for k in range(8,0,-1):
  for e,*cc in types:
   c=tuple(cc)
   if all(a<=b for a,b in zip(c,budget)):
    rem=tuple(a-b for a,b in zip(budget,c))
    if e+int(allarr[price][k-1][rem])==value:
     wit.append([e,*c]);budget=rem;value-=e;break
  else:raise AssertionError('no witness')
 assert value==0 and len(wit)==8 and sum(x[0] for x in wit)==target
 rec={'state':idx,'h':h,'v':v,'C':C,'T_floor_licensed':price,'M8_before':int(old[8][C]),'M8_one_less':previous,'M8_after':target,'low_count':len(low),'low':low,'required_factor_classes':sorted(needed),'weak_minimum_witness':wit,'checks':checks,'state_removed':True}
 records.append(rec);(O/f's{idx}_proof_ledger.json').write_text(json.dumps(rec,indent=2)+'\n');print(idx,'h',h,'T>=',price,'M8',target,'low',len(low),'types',sorted(needed),'PASS',flush=True)
 summary={'original_table_unchanged':True,'catalog_domains':90,'states':len(records),'removed':[x['state'] for x in records],'all_compared_cells':allcomparisons,'total_tagged_low_preimages':sum(x['low_count'] for x in records),'records':records}
 (R/'certificates/ledger_verification.json').write_text(json.dumps(summary,indent=2)+'\n')
assert len(records)==9
