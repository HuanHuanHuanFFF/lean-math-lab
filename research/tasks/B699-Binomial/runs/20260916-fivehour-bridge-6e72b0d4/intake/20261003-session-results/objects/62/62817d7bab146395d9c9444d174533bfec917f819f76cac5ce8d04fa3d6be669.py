"""Build a state-scoped exact-real-fee envelope, never a global T surcharge.
The upper cutoff uses ONLY raw649 M7. A catalog entry is usable only if all
its residual factor families have zero quotient kernels for this very state.
"""
from common import *
import hashlib,subprocess,collections
BITS={'S5':1,'Fstar':2,'P4':4,'U4':8,'A35':16}
cat={(x['q'],*x['fee']):{'classes':x['classes'],'source':'adopted90'} for x in json.loads((ROOT/'sources/ADOPTED_CATALOG.json').read_text())}
assert len(cat)==90
new=[]
for folder in ['geometry','geometry1907','geometry2022']:
 p=ROOT/'certificates'/folder
 receipt=json.loads((p/'RECEIPT.json').read_text())
 assert receipt.get('all_full_rank') or folder=='geometry2022' and receipt.get('rational_exception_completed')
 profiles=json.loads((p/'profiles.json').read_text());groups=collections.defaultdict(list)
 for x in profiles:groups[(x['q'],*x['fee'])].append(x)
 for key,prof in sorted(groups.items()):
  # Verify exact completeness of all Delta/kappa fee splits, not just present rows.
  q=key[0];fee=key[1:]
  expect=set()
  for dk in itertools.product(*[[(c//2,0)] if r%2 else [(d,c-2*d) for d in range(c//2+1)] for r,c in zip(range(3,9),fee)]):
   ds,ks=zip(*dk);expect.add((ds,ks))
  assert expect=={(tuple(x['delta']),tuple(x['kappa'])) for x in prof}
  assert len(prof)==len(expect)
  classes=['A35'] if folder=='geometry2022' and q==4 else []
  assert key not in cat
  cat[key]={'classes':classes,'source':folder,'profiles':[x['index'] for x in prof]};new.append(key)
assert len(cat)==102 and len(new)==12
assert json.loads((ROOT/'certificates/geometry2022/rational_receiver.json').read_text())['verified']
# Check each kernel's source against its own h/v and the exact upper-order contract.
bounds=json.loads((ROOT/'sources/factor_source_bounds.json').read_text());bounds['A35']=json.loads((ROOT/'certificates/A35_source_bounds.json').read_text())
licenses={i:0 for i in STATES};kernel_summary=[]
for p in sorted((ROOT/'certificates/kernels').glob('*.receipt.json')):
 r=json.loads(p.read_text());i=r['state'];fam=r['family'];z=STATES[i]
 assert r['received'] and r['dimension']==0 and r['min_weight']>r['D']
 assert r['e']==z['h']-4 and r['D']==2*(z['h']-4)
 name=p.name.removesuffix('.receipt.json');base=p.parent/name
 expected=source_input(r['e'],r['D'],z['v'],r['p'],r['mode'],[a['upper_order'] for a in bounds[fam]['points']])
 assert base.with_suffix('.input').read_text()==expected
 assert hashlib.sha256(expected.encode()).hexdigest()==r['input_sha256']
 assert hashlib.sha256(Path(str(base)+'.trace.tsv').read_bytes()).hexdigest()==r['trace_sha256']
 licenses[i]|=BITS[fam];kernel_summary.append(r)
assert len(kernel_summary)==17
out=ROOT/'certificates/ledger';out.mkdir(exist_ok=True)
records=[{'q':k[0],'fee':k[1:],'classes':v['classes'],'mask':sum(BITS[x] for x in v['classes']),'source':v['source'],'profiles':v.get('profiles',[])} for k,v in sorted(cat.items())]
(out/'catalog102.json').write_text(json.dumps(records,indent=2)+'\n')
(out/'catalog102.tsv').write_text(''.join(' '.join(map(str,[x['q'],*x['fee'],x['mask']]))+'\n' for x in records))
catmask={(x['q'],*x['fee']):x['mask'] for x in records}
results=[]
for idx,z in STATES.items():
 C=z['C'];h=z['h'];old=calc(C,RAW);types=[];cuts=[];fees=[]
 for c in itertools.product(*[range(0,b+1,2 if r%2 else 1) for r,b in zip(range(3,9),C)]):
  fitted=[e for e,*v in RAW if all(a<=b for a,b in zip(v,c))]
  if not fitted:continue
  q0=min(fitted);upper=h-int(old[7][tuple(b-a for a,b in zip(c,C))]);q=q0
  while q<=upper and (q,*c) in catmask and not (catmask[(q,*c)]&~licenses[idx]):
   cuts.append({'q':q,'fee':c,'mask':catmask[(q,*c)],'source':cat[(q,*c)]['source']});q+=1
  fees.append((*c,q0,upper,q,int(q<=upper)))
  if q<=upper:types.append((q,*c))
 now=calc(C,types);folder=out/f's{idx}';folder.mkdir(exist_ok=True)
 (folder/'job.txt').write_text(' '.join(map(str,[idx,h,licenses[idx],*z['v'],*C]))+'\n')
 (folder/'fees.tsv').write_text(''.join(' '.join(map(str,row))+'\n' for row in fees))
 for name,arr in [('old',old),('new',now)]:np.stack(arr).astype('<i4').tofile(folder/f'{name}.i32')
 doc={'state':idx,'h':h,'v':z['v'],'C':C,'licensed_families':[f for f,b in BITS.items() if licenses[idx]&b],'license_mask':licenses[idx],'M8_old':int(old[8][C]),'M8_new':int(now[8][C]),'blocked':cuts,'types':types,'eliminated':bool(now[8][C]>h),'old_M7_only_cutoff':True}
 (folder/'certificate.json').write_text(json.dumps(doc,indent=2)+'\n')
 cmd=[str(ROOT/'code/ledger_receiver'),str(ROOT/'sources/global649.txt'),str(out/'catalog102.tsv'),str(folder/'job.txt'),str(folder)]
 rr=subprocess.run(cmd,capture_output=True,text=True,check=True);receiver=json.loads(rr.stdout);assert receiver['verified'] and receiver['M8_new']==doc['M8_new']
 (folder/'receiver.json').write_text(json.dumps(receiver,indent=2)+'\n');doc['receiver_summary']=receiver
 results.append(doc);print(idx,h,doc['M8_new'],'removed',doc['eliminated'],'families',doc['licensed_families'],flush=True)
removed=[x['state'] for x in results if x['eliminated']];remain=[x for x in results if not x['eliminated']]
oldremoved={1874,1899,1946,1982,2001,2020,2025,2030,2032};assert not (set(removed)&oldremoved)
assert removed==[1907,1908,1910,1967,1983,2003,2022]
source_rows=list(csv.DictReader((ROOT/'sources/frontier17.tsv').open(),delimiter='\t'));keep=[x for x in source_rows if int(x['idx']) not in removed]
with (ROOT/'certificates/frontier10.tsv').open('w') as f:
 w=csv.DictWriter(f,fieldnames=source_rows[0].keys(),delimiter='\t',lineterminator='\n');w.writeheader();w.writerows(keep)
summary={'input_count':17,'output_count':len(keep),'removed':removed,'remaining':[int(x['idx']) for x in keep],'strict_set_difference_checked':True,'historical_removed_recounted':False,'h_min':min(int(x['h']) for x in keep),'V_max':max(sum(map(int,x['v3,v4,v5,v6,v7,v8'].split(','))) for x in keep),'states':[{k:v for k,v in x.items() if k not in ['blocked','types']} for x in results],'catalog_exact_domains':102,'new_round_domains':12,'kernel_runs':len(kernel_summary),'kernel_state_families':len({(x['state'],x['family']) for x in kernel_summary}),'integer_DP_cells_compared':sum(x['receiver_summary']['cells_compared'] for x in results)}
(out/'SUMMARY.json').write_text(json.dumps(summary,indent=2)+'\n');(out/'KERNELS.json').write_text(json.dumps(kernel_summary,indent=2)+'\n');print('strict diff',removed,'H',summary['h_min'],'V',summary['V_max'],'cells',summary['integer_DP_cells_compared'])
