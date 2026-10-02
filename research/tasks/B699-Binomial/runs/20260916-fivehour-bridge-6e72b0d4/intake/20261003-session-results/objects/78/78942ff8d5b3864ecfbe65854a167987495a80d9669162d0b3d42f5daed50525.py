"""Complete exact-real-fee envelope. New global domains plus two NEW state licenses.
All upper cutoffs use raw649 M7, never a newly increased price.
"""
from common import *
import hashlib,subprocess,collections,sys
TARGET=Path(sys.argv[1]).resolve() if len(sys.argv)>1 else ROOT
(TARGET/"certificates").mkdir(parents=True,exist_ok=True)
cat=json.loads((ROOT/'sources/catalog102.json').read_text());assert len(cat)==102
geom=json.loads((ROOT/'certificates/geometry/RECEIPT.json').read_text());assert geom['complete'] and geom['all_full_rank'] and geom['exact_domains']==2
for q,c in [(19,(0,0,0,0,0,3)),(25,(0,0,0,0,0,2))]:
 assert not any(a['q']==q and tuple(a['fee'])==c for a in cat)
 cat.append({'q':q,'fee':c,'mask':0,'classes':[],'source':'round4_tail1925_complete','profiles':[x['index'] for x in geom['profiles'] if x['q']==q]})
cat.sort(key=lambda x:(x['q'],*x['fee']));catmask={(x['q'],*x['fee']):x['mask'] for x in cat};assert len(catmask)==104
source=json.loads((ROOT/'sources/factor_source_bounds.json').read_text()); licenses={i:0 for i in STATES}; kernels=[]
for p in sorted((ROOT/'certificates/kernels').glob('*.receipt.json')):
 r=json.loads(p.read_text());idx=r['state'];z=STATES[idx]
 assert idx in [1981,2014] and r['family']=='S5' and r['received'] and r['dimension']==0 and r['min_weight']>r['D']
 assert r['e']==z['h']-4 and r['D']==2*(z['h']-4)
 name=p.name.removesuffix('.receipt.json'); base=p.parent/name
 expected=source_input(r['e'],r['D'],z['v'],r['p'],r['mode'],[a['upper_order'] for a in source['S5']['points']])
 assert base.with_suffix('.input').read_text()==expected and hashlib.sha256(expected.encode()).hexdigest()==r['input_sha256']
 assert hashlib.sha256(Path(str(base)+'.trace.tsv').read_bytes()).hexdigest()==r['trace_sha256']
 actual=json.loads((ROOT/f'logs/{name}.receive.json').read_text()); assert actual['verified']
 for key in ['e','D','p','mode','dimension','min_weight','weights','conditions']:assert actual[key]==r[key]
 licenses[idx]=1;kernels.append(r)
assert {(a['state'],a['p'],a['mode']) for a in kernels}=={(i,p,m) for i in [1981,2014] for p,m in [(257,0),(263,1)]}
out=TARGET/'certificates/ledger';out.mkdir(exist_ok=True)
(out/'catalog104.json').write_text(json.dumps(cat,indent=2)+'\n');(out/'catalog104.tsv').write_text(''.join(' '.join(map(str,[a['q'],*a['fee'],a['mask']]))+'\n' for a in cat))
results=[]
previous={s['state']:s for s in json.loads((ROOT/'sources/ROUND3_LEDGER_SUMMARY.json').read_text())['states']}
for idx,z in STATES.items():
 C=z['C'];h=z['h'];old=calc(C,RAW);types=[];cuts=[];fees=[]
 for c in itertools.product(*[range(0,b+1,2 if r%2 else 1) for r,b in zip(range(3,9),C)]):
  fit=[e for e,*v in RAW if all(a<=b for a,b in zip(v,c))]
  if not fit:continue
  q0=min(fit);upper=h-int(old[7][tuple(b-a for a,b in zip(c,C))]);q=q0
  while q<=upper and (q,*c) in catmask and not catmask[(q,*c)]&~licenses[idx]:
   cuts.append({'q':q,'fee':c,'mask':catmask[(q,*c)]});q+=1
  fees.append((*c,q0,upper,q,int(q<=upper)))
  if q<=upper:types.append((q,*c))
 now=calc(C,types);folder=out/f's{idx}';folder.mkdir(exist_ok=True)
 (folder/'job.txt').write_text(' '.join(map(str,[idx,h,licenses[idx],*z['v'],*C]))+'\n')
 (folder/'fees.tsv').write_text(''.join(' '.join(map(str,a))+'\n' for a in fees))
 for name,arr in [('old',old),('new',now)]:np.stack(arr).astype('<i4').tofile(folder/f'{name}.i32')
 doc={'state':idx,'h':h,'v':z['v'],'C':C,'licensed_families':['S5'] if licenses[idx] else [],'license_mask':licenses[idx],'M8_old649':int(old[8][C]),'M8_previous102':previous[idx]['M8_new'],'M8_new':int(now[8][C]),'blocked':cuts,'types':types,'eliminated':bool(now[8][C]>h),'old_M7_only_cutoff':True}
 (folder/'certificate.json').write_text(json.dumps(doc,indent=2)+'\n')
 rr=subprocess.run([str(ROOT/'work/ledger_receiver'),str(ROOT/'sources/global649.txt'),str(out/'catalog104.tsv'),str(folder/'job.txt'),str(folder)],capture_output=True,text=True,check=True)
 recv=json.loads(rr.stdout);assert recv['verified'] and recv['M8_new']==doc['M8_new'];doc['receiver_summary']=recv
 (folder/'receiver.json').write_text(json.dumps(recv,indent=2)+'\n');results.append(doc)
 print(idx,'h',h,'M8',doc['M8_previous102'],'->',doc['M8_new'],'removed',doc['eliminated'],'license',licenses[idx],flush=True)
removed=[a['state'] for a in results if a['eliminated']];assert removed==[1937,1981,2014]
previous_removed={1907,1908,1910,1967,1983,2003,2022};assert not set(removed)&previous_removed
source_rows=list(csv.DictReader((ROOT/'sources/frontier10.tsv').open(),delimiter='\t'));keep=[a for a in source_rows if int(a['idx']) not in removed]
with (TARGET/'certificates/frontier7.tsv').open('w') as f:
 w=csv.DictWriter(f,fieldnames=source_rows[0].keys(),delimiter='\t',lineterminator='\n');w.writeheader();w.writerows(keep)
summary={'input_count':10,'output_count':len(keep),'removed':removed,'remaining':[int(a['idx']) for a in keep],'strict_set_difference_checked':True,'historical_removed_recounted':False,'h_min':min(int(a['h']) for a in keep),'V_max':max(sum(map(int,a['v3,v4,v5,v6,v7,v8'].split(','))) for a in keep),'states':[{k:v for k,v in a.items() if k not in ['blocked','types']} for a in results],'catalog_domains':104,'new_exact_domains':2,'kernel_runs':len(kernels),'kernel_state_families':2,'integer_DP_cells_compared':sum(a['receiver_summary']['cells_compared'] for a in results)}
(out/'SUMMARY.json').write_text(json.dumps(summary,indent=2)+'\n');print('FINAL',removed,summary['h_min'],summary['V_max'],summary['integer_DP_cells_compared'])
