from pathlib import Path
import json,subprocess,hashlib,sys,time,collections
R=Path(__file__).resolve().parents[1];reuse='--reuse-discovery' in sys.argv
jobs=[]
for x in json.loads((R/'certificates/state_quotient_sources.json').read_text()):
 for p,m in ([(257,0),(257,1),(263,0),(263,1)] if x['state']==1874 else [(257,0)]):
  jobs.append({'state':x['state'],'factor':x['factor_label'],'prime':p,'mode':m,'e_Q':x['e_Q'],'D_Q':x['D_Q']})
(R/'certificates/kernel_jobs.json').write_text(json.dumps(jobs,indent=2)+'\n');receipts=[]
for job in jobs:
 idx,L,p,m=job['state'],job['factor'],job['prime'],job['mode'];name=f's{idx}_{L}quot_p{p}_m{m}';pre=R/'certificates'/name;src=pre.with_suffix('.input');t=time.perf_counter()
 if not (reuse and pre.with_suffix('.json').exists() and pre.with_suffix('.trace.tsv').exists()):
  with src.open() as fi,(R/'logs'/f'{name}.log').open('w') as log:
   subprocess.run([str(R/'code/module_kernel'),str(pre)],stdin=fi,stdout=log,stderr=subprocess.STDOUT,check=True)
 v=json.loads(pre.with_suffix('.json').read_text());assert v['e']==job['e_Q'] and v['L']==job['D_Q'] and v['prime']==p and v['mode']==m
 ans=subprocess.run([str(R/'code/check_trace'),str(src),str(pre.with_suffix('.trace.tsv'))],check=True,capture_output=True,text=True)
 other=json.loads(ans.stdout);assert other['verified'] and other['D']==v['L'] and other['e']==v['e'] and other['p']==p and other['mode']==m
 for k in ['weights','conditions','nonredundant','dimension','min_weight']:assert v[k]==other[k]
 assert v['dimension']==0 and v['min_weight']>v['L'] and len(v['weights'])==v['e']+1
 (R/'logs'/f'{name}.receive.json').write_text(ans.stdout)
 trace_sha=hashlib.sha256(pre.with_suffix('.trace.tsv').read_bytes()).hexdigest();inp_sha=hashlib.sha256(src.read_bytes()).hexdigest()
 receipt={**job,'conditions':v['conditions'],'dimension':v['dimension'],'min_weight':v['min_weight'],'weight_histogram':dict(collections.Counter(v['weights'])),'input_sha256':inp_sha,'trace_sha256':trace_sha,'second_implementation_pass':True,'elapsed_seconds':time.perf_counter()-t}
 receipts.append(receipt);print(idx,L,p,m,'conditions',v['conditions'],'min_weight',v['min_weight'],'PASS',flush=True)
 (R/'certificates/kernel_receipts_progress.json').write_text(json.dumps(receipts,indent=2)+'\n')
(R/'certificates/kernel_receipts.json').write_text(json.dumps({'jobs':len(jobs),'state_factor_systems':len(set((x['state'],x['factor']) for x in jobs)),'all_passed':True,'receipts':receipts},indent=2)+'\n')
