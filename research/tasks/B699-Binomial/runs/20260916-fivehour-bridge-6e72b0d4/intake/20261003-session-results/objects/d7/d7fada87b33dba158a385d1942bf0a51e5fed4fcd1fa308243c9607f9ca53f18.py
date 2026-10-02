"""Certified 104->106 exact catalogue plus only state1964's own S5 permission."""
from common import *
import hashlib,subprocess,collections,sys
TARGET=Path(sys.argv[1]).resolve() if len(sys.argv)>1 else ROOT
out=TARGET/'certificates/ledger';out.mkdir(parents=True,exist_ok=True)
cat=json.loads((ROOT/'sources/catalog104.json').read_text());assert len(cat)==104
geom=json.loads((ROOT/'certificates/geometry/RECEIPT.json').read_text());assert geom['complete'] and geom['all_full_rank'] and geom['exact_domains']==2 and geom['root_configurations']==1216
for q,fee,ix in [(11,[0,0,0,0,2,2],[0,1]),(18,[0,0,0,1,0,2],[2,3])]:
 assert not any(a['q']==q and a['fee']==fee for a in cat)
 cat.append({'q':q,'fee':fee,'mask':0,'classes':[],'source':'round5_complete_exact_domain','profiles':ix})
 cat.sort(key=lambda x:(x['q'],*x['fee']))
 if q==11:
  (out/'catalog105.json').write_text(json.dumps(cat,indent=2)+'\n');(out/'catalog105.tsv').write_text(''.join(' '.join(map(str,[a['q'],*a['fee'],a['mask']]))+'\n' for a in cat))
cm={(a['q'],*a['fee']):a['mask'] for a in cat};assert len(cm)==106
source=json.loads((ROOT/'sources/factor_source_bounds.json').read_text());lic={i:0 for i in STATES};kr=[]
for p in sorted((ROOT/'certificates/kernels').glob('*.receipt.json')):
 r=json.loads(p.read_text());assert r['state']==1964 and r['family']=='S5' and r['received'] and r['dimension']==0 and r['min_weight']>r['D']
 z=STATES[r['state']];assert r['e']==z['h']-4 and r['D']==2*(z['h']-4)
 name=p.name.removesuffix('.receipt.json');base=p.parent/name
 inp=source_input(r['e'],r['D'],z['v'],r['p'],r['mode'],[a['upper_order'] for a in source['S5']['points']])
 assert base.with_suffix('.input').read_text()==inp and hashlib.sha256(inp.encode()).hexdigest()==r['input_sha256']
 assert hashlib.sha256(Path(str(base)+'.trace.tsv').read_bytes()).hexdigest()==r['trace_sha256']
 actual=json.loads((ROOT/f'logs/{name}.receive.json').read_text());assert actual['verified']
 for k in ['e','D','p','mode','dimension','min_weight','weights','conditions']:assert actual[k]==r[k]
 kr.append(r)
assert {(r['state'],r['p'],r['mode']) for r in kr}=={(1964,257,0),(1964,263,1)};lic[1964]=1
(out/'catalog106.json').write_text(json.dumps(cat,indent=2)+'\n');(out/'catalog106.tsv').write_text(''.join(' '.join(map(str,[a['q'],*a['fee'],a['mask']]))+'\n' for a in cat))
previous={a['state']:a for a in json.loads((ROOT/'sources/ROUND4_LEDGER_SUMMARY.json').read_text())['states']};results=[]
for idx,z in STATES.items():
 C=z['C'];h=z['h'];old=calc(C,RAW);ty=[];fees=[];cuts=[]
 for c in itertools.product(*[range(0,b+1,2 if r%2 else 1) for r,b in zip(range(3,9),C)]):
  fits=[e for e,*v in RAW if all(a<=b for a,b in zip(v,c))]
  if not fits:continue
  q0=min(fits);u=h-int(old[7][tuple(b-a for a,b in zip(c,C))]);q=q0
  while q<=u and (q,*c) in cm and not cm[q,*c]&~lic[idx]:cuts.append({'q':q,'fee':c,'mask':cm[q,*c]});q+=1
  fees.append((*c,q0,u,q,int(q<=u)))
  if q<=u:ty.append((q,*c))
 arr=calc(C,ty);d=out/f's{idx}';d.mkdir(exist_ok=True)
 (d/'job.txt').write_text(' '.join(map(str,[idx,h,lic[idx],*z['v'],*C]))+'\n');(d/'fees.tsv').write_text(''.join(' '.join(map(str,a))+'\n' for a in fees))
 for n,a in [('old',old),('new',arr)]:np.stack(a).astype('<i4').tofile(d/f'{n}.i32')
 rec={'state':idx,'h':h,'v':z['v'],'C':C,'license_mask':lic[idx],'licensed_families':['S5'] if lic[idx] else [],'M8_old649':int(old[8][C]),'M8_previous104':previous[idx]['M8_new'],'M8_new':int(arr[8][C]),'types':ty,'blocked':cuts,'eliminated':bool(arr[8][C]>h),'old_M7_only_cutoff':True}
 (d/'certificate.json').write_text(json.dumps(rec,indent=2)+'\n')
 rr=subprocess.run([str(ROOT/'work/ledger_receiver'),str(ROOT/'sources/global649.txt'),str(out/'catalog106.tsv'),str(d/'job.txt'),str(d)],capture_output=True,text=True,check=True);recv=json.loads(rr.stdout);assert recv['verified'] and recv['M8_new']==rec['M8_new'];(d/'receiver.json').write_text(json.dumps(recv,indent=2)+'\n');rec['receiver']=recv;results.append(rec)
 print(idx,'h',h,'M8',rec['M8_previous104'],'->',rec['M8_new'],'licensed',lic[idx],flush=True)
removed=[a['state'] for a in results if a['eliminated']];assert removed==[1964,1977]
inputrows=list(csv.DictReader((ROOT/'sources/frontier7.tsv').open(),delimiter='\t'));keep=[a for a in inputrows if int(a['idx']) not in removed];remain=[int(a['idx']) for a in keep];assert remain==[1972,1974,1975,2000,2029]
with (TARGET/'certificates/frontier5.tsv').open('w') as f:
 w=csv.DictWriter(f,fieldnames=inputrows[0].keys(),delimiter='\t',lineterminator='\n');w.writeheader();w.writerows(keep)
rec={'input_count':7,'output_count':5,'removed':removed,'remaining':remain,'strict_set_difference_checked':True,'historical_math_acceptance_upgraded':False,'h_min':min(int(a['h']) for a in keep),'V_max':max(sum(map(int,a['v3,v4,v5,v6,v7,v8'].split(','))) for a in keep),'catalog_domains':106,'new_global_domains':2,'kernel_state_family_count':1,'kernel_runs':len(kr),'integer_DP_cells_compared':sum(a['receiver']['cells_compared'] for a in results),'states':[{k:v for k,v in a.items() if k not in ['types','blocked']} for a in results]}
(out/'SUMMARY.json').write_text(json.dumps(rec,indent=2)+'\n');print('FINAL',removed,rec['h_min'],rec['V_max'],rec['integer_DP_cells_compared'])
