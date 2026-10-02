"""Fresh generation and full reception of every quotient system, at most two jobs."""
from pathlib import Path
import concurrent.futures as cf,json,subprocess,hashlib,time,collections,os
R=Path(__file__).resolve().parents[1];jobs=[]
for x in json.loads((R/'certificates/state_quotient_sources.json').read_text()):
 for p,m in ([(257,0),(257,1),(263,0),(263,1)] if x['state']==1874 else [(257,0)]):
  jobs.append({'state':x['state'],'factor':x['factor_label'],'prime':p,'mode':m,'e_Q':x['e_Q'],'D_Q':x['D_Q']})
(R/'certificates/kernel_jobs.json').write_text(json.dumps(jobs,indent=2)+'\n')
def run(job):
 idx,L,p,m=job['state'],job['factor'],job['prime'],job['mode'];name=f's{idx}_{L}quot_p{p}_m{m}';pre=R/'certificates'/name;src=pre.with_suffix('.input');t=time.perf_counter()
 with src.open() as fi,(R/'logs'/f'{name}.log').open('w') as log:
  subprocess.run([str(R/'code/module_kernel'),str(pre)],stdin=fi,stdout=log,stderr=subprocess.STDOUT,check=True)
 v=json.loads(pre.with_suffix('.json').read_text());assert v['e']==job['e_Q'] and v['L']==job['D_Q'] and v['prime']==p and v['mode']==m
 ans=subprocess.run([str(R/'code/check_trace'),str(src),str(pre.with_suffix('.trace.tsv'))],check=True,capture_output=True,text=True)
 other=json.loads(ans.stdout);assert other['verified'] and other['D']==v['L'] and other['e']==v['e'] and other['p']==p and other['mode']==m
 for k in ['weights','conditions','nonredundant','dimension','min_weight']:assert v[k]==other[k]
 assert v['dimension']==0 and v['min_weight']>v['L'] and len(v['weights'])==v['e']+1
 (R/'logs'/f'{name}.receive.json').write_text(ans.stdout)
 receipt={**job,'conditions':v['conditions'],'dimension':v['dimension'],'min_weight':v['min_weight'],'weight_histogram':dict(collections.Counter(v['weights'])),'input_sha256':hashlib.sha256(src.read_bytes()).hexdigest(),'trace_sha256':hashlib.sha256(pre.with_suffix('.trace.tsv').read_bytes()).hexdigest(),'second_implementation_pass':True,'elapsed_seconds':time.perf_counter()-t}
 print(idx,L,p,m,'fresh module+second receiver PASS',flush=True);return receipt
workers=min(2,max(1,int(os.environ.get('B699_REPLAY_WORKERS','2'))))
with cf.ThreadPoolExecutor(max_workers=workers) as pool:receipts=list(pool.map(run,jobs))
(R/'certificates/kernel_receipts.json').write_text(json.dumps({'jobs':len(jobs),'state_factor_systems':len(set((x['state'],x['factor']) for x in jobs)),'all_passed':True,'receipts':receipts},indent=2)+'\n')
assert len(jobs)==25
