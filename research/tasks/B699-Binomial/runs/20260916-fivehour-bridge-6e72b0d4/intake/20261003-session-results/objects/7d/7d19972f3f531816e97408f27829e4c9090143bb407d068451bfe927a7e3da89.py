#!/usr/bin/env python3
"""Rebuild this round's new mathematics in an extracted ZIP directory.
Does not run Lean, contact a repository, or replay/upgrade inherited mathematical claims.
Requires Python 3, NumPy and g++ (C++17). Uses no network.
"""
from pathlib import Path
import datetime,hashlib,json,os,platform,subprocess,sys,time
R=Path(__file__).resolve().parents[1];W=R/'work';L=R/'logs/replay';W.mkdir(exist_ok=True);L.mkdir(parents=True,exist_ok=True)
def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def clean(x):
 if isinstance(x,dict):return {k:clean(v) for k,v in x.items() if k not in {'seconds'}}
 if isinstance(x,list):return [clean(v) for v in x]
 return x
def check_static():
 count=0
 for line in (R/'MATH_SHA256SUMS').read_text().splitlines():
  h,n=line.split('  ',1);assert digest(R/n)==h,('fixed payload mismatch',n);count+=1
 return count
def check_normalized():
 spec=json.loads((R/'NORMALIZED_JSON.json').read_text())
 for n,expected in spec.items():assert clean(json.loads((R/n).read_text()))==expected,('normalized mismatch',n)
 return len(spec)
def obs():
 result={}
 for n in ['memory.max','memory.current','cpu.max']:
  p=Path('/sys/fs/cgroup')/n
  if p.exists():result[n]=p.read_text().strip()
 st=os.statvfs(R);result['disk_available_bytes']=st.f_bavail*st.f_frsize
 return result
start=datetime.datetime.now(datetime.timezone.utc).isoformat();t0=time.monotonic();steps=[]
receipt={'status':'RUNNING','start_utc':start,'environment':{'python':sys.version,'platform':platform.platform(),'numpy':__import__('numpy').__version__,'compiler':subprocess.check_output(['g++','--version'],text=True).splitlines()[0]},'execution_location':'fresh extracted current-conversation sandbox directory; not user machine','root':str(R),'resource_before':obs(),'source_manifest_sha256':digest(R/'MATH_SHA256SUMS'),'initial_fixed_sha_entries':check_static(),'initial_normalized_json_entries':check_normalized(),'adopted_historical_proofs_replayed':False,'independent_mathematical_review':False}
def run(cmd,label):
 k=len(steps)+1;st=time.monotonic();log=L/f'{k:02d}-{label}.log'
 with log.open('w') as f:r=subprocess.run(cmd,cwd=R,stdout=f,stderr=subprocess.STDOUT,timeout=600)
 item={'step':k,'label':label,'command':[str(x).replace(str(R),'$ROOT') for x in cmd],'exit_code':r.returncode,'seconds':round(time.monotonic()-st,6),'log':log.relative_to(R).as_posix()};steps.append(item)
 print(json.dumps(item),flush=True)
 if r.returncode:raise RuntimeError(f'failed step {k}: {label}; inspect {log}')
try:
 for src,exe,flags in [
 ('module_kernel.cpp','module_kernel',[]),('check_trace.cpp','check_trace',[]),
 ('root_gates_fast2.cpp','root_gates',[]),('root_gates_fast2.cpp','root_gates_alt',['-DALT']),
 ('six_jets_adopted.cpp','six_jets_p32749',['-DMODULUS=32749']),('six_jets_adopted.cpp','six_jets_p32719',['-DMODULUS=32719']),
 ('receive_geometry_r3.cpp','receive_geometry_p32749',['-DCHECK_PRIME=32749']),('receive_geometry_r3.cpp','receive_geometry_p32719',['-DCHECK_PRIME=32719']),
 ('ledger_receiver.cpp','ledger_receiver',[]),('enumeration_receiver.cpp','enumeration_receiver',[]),('preimage_receiver.cpp','preimage_receiver',[])]:
  run(['g++','-O3','-std=c++17',*flags,str(R/'code'/src),'-o',str(W/exe)],'compile-'+exe)
 for script,args in [('geometry_work.py',[]),('finalize_geometry.py',[]),('kernel_work.py',['1964','S5']),('build_ledger.py',[]),('exact_cases.py',[]),('next_frontier.py',[]),('difference_audit.py',[]),('negative_controls.py',[])]:
  run([sys.executable,str(R/'code'/script),*args],script.removesuffix('.py'))
 receipt['final_fixed_sha_entries']=check_static();receipt['final_normalized_json_entries']=check_normalized()
 receipt['geometry']=json.loads((R/'certificates/geometry/RECEIPT.json').read_text())
 receipt['ledger_summary']=json.loads((R/'certificates/ledger/SUMMARY.json').read_text())
 receipt['exact_case_receivers']=[json.loads(p.read_text()) for p in sorted((R/'certificates').glob('exact_s*.receipt.json'))]
 receipt['negative_controls']=json.loads((R/'certificates/NEGATIVE_CONTROLS_RECEIPT.json').read_text())
 receipt['regenerated_scope']=['all four new geometry profiles: both complete root enumerations and both primes generation/receiver','state1964 S5: both complete module generations and full trace receivers','all seven old/new full DP tables and second implementation receivers','all six exact-q multiset cases and both actual preimage sets with second implementation receivers','remaining lowest-state minimal-fee diagnostics (not exact-q family proof)','adjacent set differences and five deliberately corrupted inputs']
 receipt['preserved_not_regenerated_scope']=['inherited FRONTIER7 ZIP and historical classifications/source bounds','early current-round diagnostic snapshots and superseded stage1 certificates','documentation and provenance records']
 receipt['status']='PASS'
except Exception as e:
 receipt['status']='FAIL';receipt['error']=repr(e);raise
finally:
 receipt['steps']=steps;receipt['top_level_steps']=len(steps);receipt['end_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat();receipt['elapsed_seconds']=round(time.monotonic()-t0,6);receipt['resource_after']=obs()
 (R/'REPLAY_RECEIPT.json').write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n')
print('REPLAY PASS',len(steps),'steps',receipt['elapsed_seconds'],'seconds',flush=True)
