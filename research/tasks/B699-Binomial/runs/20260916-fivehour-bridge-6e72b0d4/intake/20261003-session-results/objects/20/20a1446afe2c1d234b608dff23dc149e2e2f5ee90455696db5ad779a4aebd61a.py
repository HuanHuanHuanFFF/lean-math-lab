#!/usr/bin/env python3
"""Recompile and reproduce this round in a freshly extracted directory.
Offline; no Lean, repository operation, or inherited mathematical replay.
Requirements: Python 3, NumPy, and a C++17 compiler named g++.
"""
from pathlib import Path
import hashlib,json,datetime,os,platform,subprocess,sys,time
R=Path(__file__).resolve().parents[1];W=R/'work';L=R/'logs/replay';W.mkdir(exist_ok=True);L.mkdir(parents=True,exist_ok=True)
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def check():
 n=0
 for line in (R/'MATH_SHA256SUMS').read_text().splitlines():
  h,f=line.split('  ',1);assert sha(R/f)==h,('fixed payload mismatch',f);n+=1
 return n
def resources():
 d={}
 for n in ['memory.max','memory.current','cpu.max']:
  p=Path('/sys/fs/cgroup')/n
  if p.exists():d[n]=p.read_text().strip()
 s=os.statvfs(R);d['available_disk_bytes']=s.f_bavail*s.f_frsize;return d
start=datetime.datetime.now(datetime.timezone.utc).isoformat();t0=time.monotonic();steps=[]
receipt={'status':'RUNNING','start_utc':start,'execution_location':'fresh extracted current ChatGPT conversation sandbox; NOT user machine','root':str(R),'environment':{'python':sys.version,'numpy':__import__('numpy').__version__,'platform':platform.platform(),'compiler':subprocess.check_output(['g++','--version'],text=True).splitlines()[0]},'resource_before':resources(),'mathematical_manifest_sha256':sha(R/'MATH_SHA256SUMS'),'initial_fixed_sha_entries':check(),'inherited_mathematics_replayed':False,'external_independent_mathematical_review':False,'Lean_run':False}
def run(cmd,label,timeout=1200):
 log=L/f'{len(steps)+1:02d}-{label}.log';t=time.monotonic();env=os.environ.copy();env['OPENBLAS_NUM_THREADS']='1';env['GEOMETRY_WORKERS']='2'
 with log.open('w') as f:r=subprocess.run(list(map(str,cmd)),cwd=R,stdout=f,stderr=subprocess.STDOUT,env=env,timeout=timeout)
 item={'step':len(steps)+1,'label':label,'command':[str(x).replace(str(R),'$ROOT') for x in cmd],'exit_code':r.returncode,'seconds':round(time.monotonic()-t,6),'log':log.relative_to(R).as_posix()};steps.append(item);print(json.dumps(item),flush=True)
 if r.returncode:raise RuntimeError(f'failed {label}: {log}')
try:
 for src,exe,flags in [('root_gates_fast2.cpp','root_gates',[]),('root_gates_fast2.cpp','root_gates_alt',['-DALT']),('six_jets_adopted.cpp','six_jets_p32749',['-DMODULUS=32749']),('six_jets_adopted.cpp','six_jets_p32719',['-DMODULUS=32719']),('receive_geometry_r3.cpp','receive_geometry_p32749',['-DCHECK_PRIME=32749']),('receive_geometry_r3.cpp','receive_geometry_p32719',['-DCHECK_PRIME=32719']),('ledger_receiver.cpp','ledger_receiver',[]),('enumeration_receiver.cpp','enumeration_receiver',[]),('preimage_receiver.cpp','preimage_receiver',[])]:
  run(['g++','-O3','-std=c++17',*flags,R/'code'/src,'-o',W/exe],'compile-'+exe)
 for f in ['geometry_jobs','finalize_geometry','build_ledger','exact_cases','difference_audit','next_frontier','negative_controls']:
  run([sys.executable,R/'code'/f'{f}.py'],f)
 receipt['final_fixed_sha_entries']=check();receipt['geometry_summary']={k:v for k,v in json.loads((R/'certificates/geometry/RECEIPT.json').read_text()).items() if k!='profiles'};receipt['ledger_summary']=json.loads((R/'certificates/ledger/SUMMARY.json').read_text());receipt['preimage_receivers']=[a['receiver'] for a in json.loads((R/'certificates/PREIMAGE_SUMMARY.json').read_text())];receipt['exact_multiset_receivers']=[json.loads(p.read_text()) for p in sorted((R/'certificates').glob('exact_s*.receipt.json'))];receipt['negative_controls']=json.loads((R/'certificates/NEGATIVE_CONTROLS_RECEIPT.json').read_text());receipt['regenerated_scope']=['all 13 geometric profiles, both complete root orders, both primes, all selected minors checked by literal local convolution','all five raw/new DP arrays and independent exact-used-cost receivers','eleven complete actual-degree enumeration cases and independent multiplicity receivers','all five full old-M7 preimage sets and independent cost-first receivers','precise current/previous set difference, explicitly counterfactual family-licence budgets for two remaining states, six corruption tests'];receipt['preserved_scope']=['FRONTIER5_INPUT.zip and inherited mathematical claims/catalogue','source-byte/provenance records and original discovery logs'];receipt['status']='PASS'
except Exception as e:
 receipt['status']='FAIL';receipt['error']=repr(e);raise
finally:
 receipt['steps']=steps;receipt['top_level_steps']=len(steps);receipt['end_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat();receipt['elapsed_seconds']=round(time.monotonic()-t0,6);receipt['resource_after']=resources();(R/'REPLAY_RECEIPT.json').write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n')
print('REPLAY PASS',len(steps),receipt['elapsed_seconds'],flush=True)
