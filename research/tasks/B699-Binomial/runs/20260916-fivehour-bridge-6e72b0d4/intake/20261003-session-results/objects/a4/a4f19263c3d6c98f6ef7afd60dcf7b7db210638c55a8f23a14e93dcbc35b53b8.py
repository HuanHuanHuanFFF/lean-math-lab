"""Six globally empty exact domains. No new state/family licence whatsoever.
All actual-degree upper bounds use immutable raw649 M7; full higher unknowns stay.
"""
from common import *
from geometry_jobs import DOMAINS
import subprocess,hashlib
O=ROOT/'certificates/ledger';O.mkdir(exist_ok=True)
cat=json.loads((ROOT/'sources/catalog106.json').read_text());assert len(cat)==106
geom=json.loads((ROOT/'certificates/geometry/RECEIPT.json').read_text());assert geom['complete'] and geom['all_full_rank'] and geom['exact_domains']==6 and geom['root_configurations']==159689
for q,fee in DOMAINS:
 assert not any(a['q']==q and a['fee']==list(fee) for a in cat)
for name,ix in [('106',[]),('108_AB',[0,2]),('109_ABC',[0,1,2]),('108_CD',[3,4]),('111',list(range(5))),('112',list(range(6)))]:
 cur=cat+[{'q':DOMAINS[i][0],'fee':list(DOMAINS[i][1]),'mask':0,'classes':[],'source':'round6_complete_geometric_empty_domain','profiles':[a['index'] for a in geom['profiles'] if a['q']==DOMAINS[i][0] and a['fee']==list(DOMAINS[i][1])]} for i in ix]
 cur.sort(key=lambda a:(a['q'],*a['fee']));assert len(cur)==len({(a['q'],*a['fee']) for a in cur})
 (O/f'catalog{name}.json').write_text(json.dumps(cur,indent=2)+'\n');(O/f'catalog{name}.tsv').write_text(''.join(' '.join(map(str,[a['q'],*a['fee'],a['mask']]))+'\n' for a in cur))
cm={(a['q'],*a['fee']):a['mask'] for a in json.loads((O/'catalog112.json').read_text())}
prev={a['state']:a for a in json.loads((ROOT/'sources/ROUND5_LEDGER_SUMMARY.json').read_text())['states']};results=[]
for idx,z in STATES.items():
 C=z['C'];h=z['h'];old=calc(C,RAW);ty=[];fees=[];cuts=[]
 for c in itertools.product(*[range(0,b+1,2 if r%2 else 1) for r,b in zip(range(3,9),C)]):
  fs=[e for e,*v in RAW if all(a<=b for a,b in zip(v,c))]
  if not fs:continue
  q0=min(fs);up=h-int(old[7][tuple(b-a for a,b in zip(c,C))]);q=q0
  while q<=up and (q,*c) in cm and cm[q,*c]==0:cuts.append({'q':q,'fee':c});q+=1
  fees.append((*c,q0,up,q,int(q<=up)))
  if q<=up:ty.append((q,*c))
 arr=calc(C,ty);d=O/f's{idx}';d.mkdir(exist_ok=True)
 (d/'job.txt').write_text(' '.join(map(str,[idx,h,0,*z['v'],*C]))+'\n');(d/'fees.tsv').write_text(''.join(' '.join(map(str,a))+'\n' for a in fees))
 for name,a in [('old',old),('new',arr)]:np.stack(a).astype('<i4').tofile(d/f'{name}.i32')
 rr=subprocess.run([str(ROOT/'work/ledger_receiver'),str(ROOT/'sources/global649.txt'),str(O/'catalog112.tsv'),str(d/'job.txt'),str(d)],capture_output=True,text=True,check=True);r=json.loads(rr.stdout);assert r['verified'] and r['license_mask']==0 and r['required_mask']==0
 (d/'receiver.json').write_text(json.dumps(r,indent=2)+'\n')
 rec={'state':idx,'h':h,'v':z['v'],'C':C,'license_mask':0,'licensed_families':[],'M8_old649':int(old[8][C]),'M8_previous106':prev[idx]['M8_new'],'M8_new':int(arr[8][C]),'types':ty,'blocked':cuts,'eliminated':bool(arr[8][C]>h),'old_M7_only_upper_bound':True,'receiver':r}
 (d/'certificate.json').write_text(json.dumps(rec,indent=2)+'\n');results.append(rec)
 print(idx,'h',h,'M8',rec['M8_previous106'],'->',rec['M8_new'],'licence 0',flush=True)
removed=[a['state'] for a in results if a['eliminated']];assert removed==[1972,1974,1975]
rows=list(csv.DictReader((ROOT/'sources/frontier5.tsv').open(),delimiter='\t'));keep=[a for a in rows if int(a['idx']) not in removed]
with (ROOT/'certificates/frontier2.tsv').open('w') as f:
 w=csv.DictWriter(f,fieldnames=rows[0].keys(),delimiter='\t',lineterminator='\n');w.writeheader();w.writerows(keep)
r={'input_count':5,'output_count':2,'removed':removed,'remaining':[int(a['idx']) for a in keep],'strict_set_difference_checked':True,'historical_mathematical_acceptance_upgraded':False,'h_min':min(int(a['h']) for a in keep),'V_max':max(sum(map(int,a['v3,v4,v5,v6,v7,v8'].split(','))) for a in keep),'catalogue_domains':112,'new_exact_empty_domains':6,'new_state_family_licences':[],'new_quotient_systems':0,'integer_DP_cells_compared':sum(a['receiver']['cells_compared'] for a in results),'states':[{k:v for k,v in a.items() if k not in ['types','blocked']} for a in results]}
(O/'SUMMARY.json').write_text(json.dumps(r,indent=2)+'\n');print('FINAL',removed,r['integer_DP_cells_compared'])
