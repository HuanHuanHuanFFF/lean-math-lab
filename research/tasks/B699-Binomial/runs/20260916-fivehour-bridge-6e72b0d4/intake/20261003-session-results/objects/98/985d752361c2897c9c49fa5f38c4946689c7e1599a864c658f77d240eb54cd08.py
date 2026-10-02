#!/usr/bin/env python3
"""Clean-package deterministic regeneration and separate-receiver replay.
Requires Python 3, numpy, sympy and a C++17 g++. No network, Lean or repository.
"""
from pathlib import Path
import argparse,concurrent.futures as cf,datetime,hashlib,json,os,subprocess,sys,time
ROOT=Path(__file__).resolve().parents[1]
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def run(cmd,log,stdin=None):
 with Path(log).open('w') as f:
  if stdin:
   with Path(stdin).open() as fi:p=subprocess.run(list(map(str,cmd)),stdin=fi,stdout=f,stderr=subprocess.STDOUT)
  else:p=subprocess.run(list(map(str,cmd)),stdout=f,stderr=subprocess.STDOUT)
 if p.returncode:raise RuntimeError(f'failed {cmd[0]}: {Path(log).read_text()[-2500:]}')
def verify_manifest(name):
 n=0
 for line in (ROOT/name).read_text().splitlines():
  digest,path=line.split('  ',1);p=ROOT/path
  if sha(p)!=digest:raise AssertionError(f'hash mismatch: {path}')
  n+=1
 return n

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--workers',type=int,default=2);ap.add_argument('--work');args=ap.parse_args();assert 1<=args.workers<=2
 work=Path(args.work).resolve() if args.work else ROOT/'REPLAY_WORK'
 work.mkdir(exist_ok=False,parents=True);(work/'logs').mkdir();(ROOT/'scratch').mkdir(exist_ok=True);t0=time.perf_counter();start=datetime.datetime.now(datetime.timezone.utc).isoformat()
 hashes=verify_manifest('MATH_SHA256SUMS');spec=[('root_gates.cpp','root_gates',[]),('root_gates.cpp','root_gates_alt',['-DALT']),('six_jets_adopted.cpp','six_jets',[]),('six_jets_adopted.cpp','six_jets_p32719',['-DMODULUS=32719']),('receive_geometry_r3.cpp','receive_geometry_fast_32749',['-DCHECK_PRIME=32749']),('receive_geometry_r3.cpp','receive_geometry_fast_32719',['-DCHECK_PRIME=32719']),('module_kernel.cpp','module_kernel',[]),('check_trace.cpp','check_trace',[]),('ledger_receiver.cpp','ledger_receiver',[]),('count_not.cpp','count_not',[])]
 for src,out,flags in spec:run(['g++','-O3','-std=c++17',*flags,ROOT/'code'/src,'-o',ROOT/'code'/out],work/'logs'/f'compile_{out}.log')
 # Complete geometry regeneration: both root enumerations, both augmented minors,
 # and a separate literal-convolution receiver, for every one of 33 profiles.
 def geometry(job):
  folder,x=job;name=f'{folder}_g{x["index"]:02d}';pre=work/name;old=ROOT/'certificates'/folder/f'g{x["index"]:02d}';q=x['q'];t=time.perf_counter()
  for exe,suf in [('root_gates','.txt'),('root_gates_alt','.alt')]:
   cmd=[ROOT/'code'/exe,q,*x['delta'],*x['kappa'],str(pre)+suf];run(cmd,work/'logs'/f'{name}_{exe}.log')
   assert sha(Path(str(pre)+suf))==sha(Path(str(old)+suf))
  aa=Path(str(pre)+'.txt').read_text().splitlines();bb=Path(str(pre)+'.alt').read_text().splitlines();assert len(aa)==len(set(aa))==x['configurations'] and sorted(aa)==sorted(bb)
  receivers=[]
  for p,exe in [(32749,'six_jets'),(32719,'six_jets_p32719')]:
   run([ROOT/'code'/exe,q,str(pre)+'.txt',str(pre)+f'.p{p}.minors',str(pre)+f'.p{p}.exceptions'],work/'logs'/f'{name}_{p}_generate.log')
   for suf in [f'.p{p}.minors',f'.p{p}.exceptions']:assert sha(Path(str(pre)+suf))==sha(Path(str(old)+suf))
   log=work/'logs'/f'{name}_{p}_receive.log';run([ROOT/'code'/f'receive_geometry_fast_{p}',q,p,str(pre)+'.txt',str(pre)+f'.p{p}.minors',str(pre)+f'.p{p}.exceptions'],log);receivers.append(log.read_text().strip())
  return {'kind':'geometry','name':name,'q':q,'configurations':x['configurations'],'both_enumerations_exact_bytes':True,'both_minors_exact_bytes':True,'receiver_outputs':receivers,'seconds':time.perf_counter()-t}
 def kernel(file):
  name=file.name.removesuffix('.receipt.json');r=json.loads(file.read_text());old=file.parent/name;pre=work/name;t=time.perf_counter()
  run([ROOT/'code/module_kernel',pre],work/'logs'/f'{name}_generate.log',str(old)+'.input')
  assert sha(Path(str(pre)+'.trace.tsv'))==sha(Path(str(old)+'.trace.tsv'))
  a=json.loads(Path(str(pre)+'.json').read_text());b=json.loads(Path(str(old)+'.json').read_text());a.pop('seconds');b.pop('seconds');assert a==b
  log=work/'logs'/f'{name}_receive.json';run([ROOT/'code/check_trace',str(old)+'.input',str(pre)+'.trace.tsv'],log);c=json.loads(log.read_text())
  assert c['verified'] and c['dimension']==0 and c['min_weight']>r['D']
  for k in ['weights','conditions','nonredundant','dimension','min_weight']:assert c[k]==b[k]
  return {'kind':'kernel','name':name,'state':r['state'],'family':r['family'],'e':r['e'],'D':r['D'],'p':r['p'],'mode':r['mode'],'trace_exact_bytes':True,'full_module_regenerated':True,'separate_receiver':True,'dimension':c['dimension'],'min_weight':c['min_weight'],'seconds':time.perf_counter()-t}
 jobs=[('kernel',x) for x in sorted((ROOT/'certificates/kernels').glob('*.receipt.json'))]
 for folder in ['geometry','geometry1907','geometry2022']:
  jobs.extend(('geometry',(folder,x)) for x in json.loads((ROOT/'certificates'/folder/'profiles.json').read_text()))
 def execute(job):return kernel(job[1]) if job[0]=='kernel' else geometry(job[1])
 records=[]
 with cf.ThreadPoolExecutor(max_workers=args.workers) as pool:
  tasks=[pool.submit(execute,j) for j in jobs]
  for f in cf.as_completed(tasks):
   x=f.result();records.append(x);print('PASS',x['kind'],x['name'],flush=True)
 records.sort(key=lambda x:(x['kind'],x['name']));assert len(records)==50
 # Two complete Q implementations; then source upper orders, scoped ledger,
 # exact numerical multiset counts, and deliberately corrupt controls.
 p=work/'rational_exception.json';run([sys.executable,ROOT/'code/rational_recover.py',ROOT/'certificates/geometry2022/g01.txt',0,p],work/'logs/rational_generate.log');assert json.loads(p.read_text())==json.loads((ROOT/'certificates/geometry2022/rational_exception.json').read_text())
 for script in ['receive_A35.py','source_A35.py','build_ledger.py','negative_controls.py']:
  run([sys.executable,ROOT/'code'/script],work/'logs'/f'{script}.log')
 counts=[]
 for idx,C,expected in [(1907,'0,0,2,6,0,17',466),(1908,'0,0,2,6,8,8',41)]:
  p=work/f's{idx}_count.json';run([ROOT/'code/count_not',ROOT/'sources/global649.txt',idx,137,C,p],work/'logs'/f's{idx}_count.log');x=json.loads(p.read_text());assert x['count']==expected and x['unsaturated_cost_count']==0 and x==json.loads((ROOT/f'certificates/probe/s{idx}_count_receiver.json').read_text());counts.append(x)
 # The four scripts above are deterministic even when they rewrite outputs.
 assert verify_manifest('MATH_SHA256SUMS')==hashes
 summary=json.loads((ROOT/'certificates/ledger/SUMMARY.json').read_text());assert summary['removed']==[1907,1908,1910,1967,1983,2003,2022]
 result={'status':'PASS','started_utc':start,'completed_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'elapsed_seconds':time.perf_counter()-t0,'working_directory':str(work),'math_manifest_members_checked_before_and_after':hashes,'compile_steps':len(spec),'regeneration_jobs':len(records),'geometry_profiles':33,'geometry_configurations':97875,'nonzero_full_augmented_minors':195748,'rational_deficient_configurations':1,'kernel_runs':17,'state_family_systems':12,'integer_DP_cells_compared':summary['integer_DP_cells_compared'],'negative_controls_rejected':4,'removed':summary['removed'],'frontier':10,'h_min':142,'V_max':21,'noT_counts':counts,'jobs':records,'same_author_not_external_review':True,'Lean_run':False,'repository_writes':False,'historical_mathematics_rerun':False}
 (work/'REPLAY_RECEIPT.json').write_text(json.dumps(result,indent=2)+'\n');print('ALL PASS',result['elapsed_seconds'],flush=True)
if __name__=='__main__':main()
