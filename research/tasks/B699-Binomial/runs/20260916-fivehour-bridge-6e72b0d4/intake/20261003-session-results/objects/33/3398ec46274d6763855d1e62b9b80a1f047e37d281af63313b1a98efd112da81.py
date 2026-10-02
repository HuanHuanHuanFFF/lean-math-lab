"""Final chain: 2029/S5 (catalog112) + 2000/S5 and NEW quintic exact empty domain.
No cross-state transfer; the two receipts separately bind v,e,D and all source jets.
"""
from common import *
import subprocess,hashlib
O=ROOT/'certificates/final_ledger';O.mkdir(exist_ok=True)
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
audit=ROOT/'certificates/S5_ALL_PARAMETER_AUDIT.json';upper=[a['upper_order'] for a in json.loads(audit.read_text())['points']]
licenses={}
for idx in (2029,2000):
 lp=ROOT/f'certificates/kernels/LICENCE_{idx}_S5.json';lic=json.loads(lp.read_text());z=STATES[idx];e=z['h']-4;D=2*e
 assert lic['state']==idx and lic['family']=='S5' and lic['license_mask']==1 and lic['full_bounded_kernel_zero'] and lic['source_audit_sha256']==sha(audit)
 for a in lic['receipts']:
  p=lp.parent/a['file'];assert sha(p)==a['sha256'];r=json.loads(p.read_text());assert r['state']==idx and r['family']=='S5' and r['e']==e and r['D']==D and r['dimension']==0 and r['min_weight']>D and r['received']
  stem=a['file'].removesuffix('.receipt.json');inp=lp.parent/(stem+'.input');trace=lp.parent/(stem+'.trace.tsv')
  assert r['input_sha256']==sha(inp) and r['trace_sha256']==sha(trace)
  assert inp.read_text()==source_input(e,D,z['v'],r['p'],r['mode'],upper)
  rr=json.loads((ROOT/f'logs/{stem}.receive.json').read_text());assert rr['verified']
  for k in ['e','D','conditions','weights','dimension','nonredundant','min_weight']:assert rr[k]==r[k]
 licenses[idx]=lp
cat=json.loads((ROOT/'sources/catalog112.json').read_text());assert len(cat)==112
geo=ROOT/'certificates/geometry/RECEIPT.json';g=json.loads(geo.read_text());assert g['complete'] and g['all_full_rank'] and g['domain']==[5,0,0,0,1,2,2] and len(g['all_splits'])==2 and g['root_configurations']==4
exact=ROOT/'certificates/geometry/EXACT_RATIONAL_MINORS.json';er=json.loads(exact.read_text());assert er['complete_remaining_configurations']==4 and all(a['nonzero'] for a in er['certificates'])
cat113=sorted(cat+[{'q':5,'fee':[0,0,0,1,2,2],'mask':0,'classes':[],'source':'round7_new_quintic_exact_empty','geometry_receipt_sha256':sha(geo),'exact_rational_minors_sha256':sha(exact)}],key=lambda a:(a['q'],*a['fee']))
assert len({(a['q'],*a['fee']) for a in cat113})==113
(O/'catalog113.json').write_text(json.dumps(cat113,indent=2)+'\n');(O/'catalog113.tsv').write_text(''.join(' '.join(map(str,[a['q'],*a['fee'],a['mask']]))+'\n' for a in cat113))
results=[]
for idx,mask,nn,tag in [(2000,0,112,'baseline'),(2000,1,112,'S5_only'),(2000,0,113,'quintic_only'),(2000,1,113,'final')]:
 z=STATES[idx];C=z['C'];h=z['h'];old=calc(C,RAW);cm={(a['q'],*a['fee']):a['mask'] for a in (cat if nn==112 else cat113)};ty=[];fees=[];cuts=[];full=[]
 for c in itertools.product(*[range(0,b+1,2 if r%2 else 1) for r,b in zip(range(3,9),C)]):
  fs=[e for e,*v in RAW if all(a<=b for a,b in zip(v,c))]
  if not fs:continue
  q0=min(fs);up=h-int(old[7][tuple(b-a for a,b in zip(c,C))]);q=q0
  for qq in range(q0,up+1):
   m=cm.get((qq,*c))
   if m is None or m&~mask:full.append((qq,*c))
  while q<=up and (q,*c) in cm and not(cm[q,*c]&~mask):cuts.append({'q':q,'fee':c,'required_mask':cm[q,*c]});q+=1
  fees.append((*c,q0,up,q,int(q<=up)))
  if q<=up:ty.append((q,*c))
 arr=calc(C,ty);d=O/f's{idx}_{tag}';d.mkdir(exist_ok=True)
 (d/'job.txt').write_text(' '.join(map(str,[idx,h,mask,*z['v'],*C]))+'\n');(d/'fees.tsv').write_text(''.join(' '.join(map(str,a))+'\n' for a in fees));(d/'all_actual_types.tsv').write_text(''.join(' '.join(map(str,a))+'\n' for a in sorted(full)))
 for name,a in [('old',old),('new',arr)]:np.stack(a).astype('<i4').tofile(d/f'{name}.i32')
 cp=ROOT/'sources/catalog112.tsv' if nn==112 else O/'catalog113.tsv'
 rr=subprocess.run([str(ROOT/'work/ledger_receiver'),str(ROOT/'sources/global649.txt'),str(cp),str(d/'job.txt'),str(d)],capture_output=True,text=True,check=True);r=json.loads(rr.stdout);assert r['verified'] and r['license_mask']==mask and not(r['required_mask']&~mask)
 (d/'receiver.json').write_text(json.dumps(r,indent=2)+'\n')
 rec={'state':idx,'tag':tag,'h':h,'v':z['v'],'C':C,'license_mask':mask,'licensed_families':['S5'] if mask else [],'catalogue_size':nn,'M8':int(arr[8][C]),'types_count':len(ty),'all_actual_types_count':len(full),'types':ty,'blocked':cuts,'eliminated':bool(arr[8][C]>h),'old_M7_only_upper_bound':True,'receiver':r,'raw649_sha256':sha(ROOT/'sources/global649.txt'),'catalogue_tsv_sha256':sha(cp),'licence_sha256':sha(licenses[idx]) if mask else None}
 (d/'certificate.json').write_text(json.dumps(rec,indent=2)+'\n');results.append(rec);print(idx,tag,nn,mask,'M8',rec['M8'],flush=True)
assert results[0]['M8']==127 and results[1]['M8']==147 and results[-1]['M8']>147
stage1=json.loads((ROOT/'certificates/ledger/s2029_actual/certificate.json').read_text());assert stage1['state']==2029 and stage1['M8']==153 and stage1['h']==152 and stage1['license_mask']==1
rows=list(csv.DictReader((ROOT/'sources/frontier2.tsv').open(),delimiter='\t'));assert {int(a['idx']) for a in rows}=={2000,2029}
(ROOT/'certificates/frontier0.tsv').write_text('\t'.join(rows[0].keys())+'\n')
summary={'input_count':2,'output_count':0,'removed':[2000,2029],'remaining':[],'strict_current_difference_checked':True,'historical_acceptance_not_upgraded':True,'new_empty_domains':[[5,0,0,0,1,2,2]],'new_state_family_licences':[[2029,'S5'],[2000,'S5']],'paper_COVER7_under_adopted_historical_chain':True,'R7_unchanged':[3,4,5,6,7,8,9],'no_h_or_v_bound_asserted_for_seven_components':True,'stage_2000':[{k:v for k,v in a.items() if k not in ['types','blocked']} for a in results],'stage_2029':{k:v for k,v in stage1.items() if k not in ['types','blocked']},'new_DP_cells_compared':sum(a['receiver']['cells_compared'] for a in results)}
(O/'SUMMARY.json').write_text(json.dumps(summary,indent=2)+'\n')
