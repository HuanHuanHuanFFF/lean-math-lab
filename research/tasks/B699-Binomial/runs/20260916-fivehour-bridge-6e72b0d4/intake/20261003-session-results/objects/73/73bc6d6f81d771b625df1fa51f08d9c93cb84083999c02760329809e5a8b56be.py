"""112-domain real-fee consumer. State-scoped licence, immutable old M7."""
from common import *
import subprocess,hashlib
O=ROOT/'certificates/ledger';O.mkdir(exist_ok=True)
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
catp=ROOT/'sources/catalog112.json';cat=json.loads(catp.read_text());assert len(cat)==112
cm={(a['q'],*a['fee']):a['mask'] for a in cat};assert len(cm)==112
licpath=ROOT/'certificates/kernels/LICENCE_2029_S5.json';lic=json.loads(licpath.read_text())
audit=ROOT/'certificates/S5_ALL_PARAMETER_AUDIT.json';assert lic['state']==2029 and lic['family']=='S5' and lic['license_mask']==1 and lic['full_bounded_kernel_zero'] and lic['source_audit_sha256']==sha(audit)
upper=[a['upper_order'] for a in json.loads(audit.read_text())['points']]
for a in lic['receipts']:
 p=licpath.parent/a['file'];assert sha(p)==a['sha256'];r=json.loads(p.read_text());assert r['state']==2029 and r['family']=='S5' and r['e']==148 and r['D']==296 and r['dimension']==0 and r['min_weight']>296 and r['received']
 stem=a['file'].removesuffix('.receipt.json');inp=licpath.parent/(stem+'.input');trace=licpath.parent/(stem+'.trace.tsv')
 assert r['input_sha256']==sha(inp) and r['trace_sha256']==sha(trace)
 assert inp.read_text()==source_input(148,296,STATES[2029]['v'],r['p'],r['mode'],upper)
 rr=json.loads((ROOT/f'logs/{stem}.receive.json').read_text()); assert rr['verified']
 for k in ['e','D','conditions','weights','dimension','nonredundant','min_weight']: assert rr[k]==r[k]
results=[]
# Both baseline and actual are checked; baseline has no licence.
for idx,mask,tag in [(2000,0,'actual'),(2029,0,'baseline'),(2029,1,'actual')]:
 assert mask==0 or (idx==2029 and mask==1)
 z=STATES[idx];C=z['C'];h=z['h'];old=calc(C,RAW);ty=[];fees=[];cuts=[];full_types=[]
 for c in itertools.product(*[range(0,b+1,2 if r%2 else 1) for r,b in zip(range(3,9),C)]):
  fs=[e for e,*v in RAW if all(a<=b for a,b in zip(v,c))]
  if not fs:continue
  q0=min(fs);up=h-int(old[7][tuple(b-a for a,b in zip(c,C))]);q=q0
  for qq in range(q0,up+1):
   m=cm.get((qq,*c))
   if m is None or m&~mask:full_types.append((qq,*c))
  while q<=up and (q,*c) in cm and not(cm[q,*c]&~mask):cuts.append({'q':q,'fee':c,'required_mask':cm[q,*c]});q+=1
  fees.append((*c,q0,up,q,int(q<=up)))
  if q<=up:ty.append((q,*c))
 arr=calc(C,ty);d=O/f's{idx}_{tag}';d.mkdir(exist_ok=True)
 (d/'job.txt').write_text(' '.join(map(str,[idx,h,mask,*z['v'],*C]))+'\n');(d/'fees.tsv').write_text(''.join(' '.join(map(str,a))+'\n' for a in fees))
 (d/'all_actual_types.tsv').write_text(''.join(' '.join(map(str,a))+'\n' for a in sorted(full_types)))
 for name,a in [('old',old),('new',arr)]:np.stack(a).astype('<i4').tofile(d/f'{name}.i32')
 rr=subprocess.run([str(ROOT/'work/ledger_receiver'),str(ROOT/'sources/global649.txt'),str(ROOT/'sources/catalog112.tsv'),str(d/'job.txt'),str(d)],capture_output=True,text=True,check=True);r=json.loads(rr.stdout);assert r['verified'] and r['license_mask']==mask and not(r['required_mask']&~mask)
 (d/'receiver.json').write_text(json.dumps(r,indent=2)+'\n')
 rec={'state':idx,'tag':tag,'h':h,'v':z['v'],'C':C,'license_mask':mask,'licensed_families':['S5'] if mask else [],'M8_raw649':int(old[8][C]),'M8':int(arr[8][C]),'types_count':len(ty),'all_actual_types_count':len(full_types),'types':ty,'blocked':cuts,'eliminated':bool(arr[8][C]>h),'old_M7_only_upper_bound':True,'receiver':r,'raw649_sha256':sha(ROOT/'sources/global649.txt'),'catalog112_sha256':sha(catp),'licence_sha256':sha(licpath) if mask else None}
 (d/'certificate.json').write_text(json.dumps(rec,indent=2)+'\n');results.append(rec)
 print(idx,tag,'mask',mask,'M8',rec['M8'],'exact types',len(full_types),flush=True)
assert [(a['state'],a['M8']) for a in results]==[(2000,127),(2029,144),(2029,153)]
actual=[a for a in results if a['tag']=='actual'];removed=[a['state'] for a in actual if a['eliminated']];assert removed==[2029]
rows=list(csv.DictReader((ROOT/'sources/frontier2.tsv').open(),delimiter='\t'));keep=[a for a in rows if int(a['idx']) not in removed]
with (ROOT/'certificates/frontier1.tsv').open('w') as f:
 w=csv.DictWriter(f,fieldnames=rows[0].keys(),delimiter='\t',lineterminator='\n');w.writeheader();w.writerows(keep)
summ={'input_count':2,'output_count':1,'removed':removed,'remaining':[int(a['idx']) for a in keep],'strict_set_difference_checked':True,'historical_mathematical_acceptance_upgraded':False,'h_min':min(int(a['h']) for a in keep),'V_max':max(sum(map(int,a['v3,v4,v5,v6,v7,v8'].split(','))) for a in keep),'catalogue_domains':112,'new_exact_empty_domains':0,'new_state_family_licences':[[2029,'S5']],'integer_DP_cells_compared':sum(a['receiver']['cells_compared'] for a in results),'states':[{k:v for k,v in a.items() if k not in ['types','blocked']} for a in results]}
(O/'SUMMARY.json').write_text(json.dumps(summ,indent=2)+'\n');print('FINAL removed',removed,'cells',summ['integer_DP_cells_compared'])
