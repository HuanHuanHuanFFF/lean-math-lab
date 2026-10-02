#!/usr/bin/env python3
"""Regenerate and receive all R2 evidence in an initially empty workspace.
No repository/network/Lean operations; historical ZIP is byte-checked, not executed.
"""
from pathlib import Path
import argparse,concurrent.futures as cf,datetime,hashlib,json,os,platform,shutil,subprocess,sys,tempfile,time,traceback
R=Path(__file__).resolve().parent
ap=argparse.ArgumentParser();ap.add_argument('--clean-context',type=Path);args=ap.parse_args()
started=datetime.datetime.now(datetime.timezone.utc).isoformat();start=time.perf_counter();V=R/'verification/fresh_replay';V.mkdir(parents=True,exist_ok=True);steps=[]
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def save(rec):
 (R/'REPLAY_RECEIPT.json').write_text(json.dumps(rec,indent=2,ensure_ascii=False)+'\n')
rec={'status':'RUNNING','started_utc':started,'source_root':str(R),'Lean_run':False,'repository_writes':False,'network_used':False,'external_independent_review':False,'steps':steps}
try:
 manifest=R/'PAYLOAD_SHA256SUMS';lines=manifest.read_text().splitlines();count=0
 for line in lines:
  if not line.strip():continue
  digest,name=line.split('  ',1);p=R/name
  assert p.resolve().is_relative_to(R.resolve()) and p.is_file() and sha(p)==digest,(name,'payload hash')
  count+=1
 rec.update({'frozen_payload_files':count,'payload_manifest_sha256':sha(manifest),'payload_hash_check_passed':True})
 if args.clean_context:
  context=json.loads(args.clean_context.read_text());assert Path(context['extraction_root']).resolve()==R.resolve() and context['new_empty_directory'] and context['zip_test_passed']
  rec['clean_extraction']=context
 else:rec['clean_extraction']={'claimed':False,'note':'No external extraction receipt supplied; fresh computation workspace still created.'}
 save(rec)
 expected=json.loads((R/'REPLAY_EXPECTED.json').read_text())
 with tempfile.TemporaryDirectory(prefix='replay_work_',dir=R) as td:
  W=Path(td);(W/'code').mkdir();(W/'sources').mkdir();(W/'certificates').mkdir();(W/'logs').mkdir();(W/'discovery').mkdir()
  for f in (R/'code').iterdir():
   if f.suffix in ['.py','.cpp']:shutil.copy2(f,W/'code'/f.name)
  for f in (R/'sources').iterdir():
   if f.is_file():shutil.copy2(f,W/'sources'/f.name)
  shutil.copy2(R/'discovery/additional_domains.json',W/'discovery/additional_domains.json')
  shutil.copytree(R/'dependencies',W/'dependencies')
  def run(name,cmd):
   t=time.perf_counter();log=V/f'{name}.log'
   with log.open('w') as out:
    ans=subprocess.run(cmd,cwd=W,stdout=out,stderr=subprocess.STDOUT)
   entry={'name':name,'command':[str(x).replace(str(W),'<fresh-workspace>') for x in cmd],'exit_code':ans.returncode,'seconds':time.perf_counter()-t,'log':str(log.relative_to(R))}
   steps.append(entry);print(name,'exit',ans.returncode,flush=True)
   if ans.returncode:raise RuntimeError(f'{name} failed; see {log}')
  def py(name,script,*extra):return run(name,[sys.executable,str(W/'code'/script),*extra])
  py('00_input_byte_bindings_no_old_mathematics','source_bindings.py')
  compile_jobs=[('root_gates.cpp','root_gates',[]),('root_gates.cpp','root_gates_alt',['-DALT']),('six_jets_adopted.cpp','six_jets',[]),('six_jets_adopted.cpp','six_jets_32719',['-DMODULUS=32719']),('receive_geometry_r2.cpp','receive_geometry_r2',[]),('module_kernel.cpp','module_kernel',[]),('check_trace.cpp','check_trace',[]),('ledger_exact_receiver.cpp','ledger_exact_receiver',[])]
  for source,target,extra in compile_jobs:run('compile_'+target,['g++','-std=c++17','-O3',*extra,str(W/'code'/source),'-o',str(W/'code'/target)])
  py('01_old_M7_and1874_preimages','ledger_probe.py')
  def main_geometry():
   py('02_main_root_configs','geometry_generate.py');py('03_main_double_prime_minors','minors_generate.py');py('04_main_other_receiver','geometry_receive_all.py')
  def extra_geometry():
   py('05_extra_configs_and_minors','extra_generate.py');py('06_extra_other_receiver','geometry_receive_all.py','--extra')
  with cf.ThreadPoolExecutor(max_workers=2) as pool:
   a=pool.submit(main_geometry);b=pool.submit(extra_geometry);a.result();b.result()
  py('07_all_Q_exception_kernels','rational_all.py')
  py('08_all_parameter_source_bounds','factor_sources.py')
  py('09_own_state_quotient_inputs','multi_kernel_inputs.py')
  py('10_25_fresh_modules_and_other_receivers','replay_kernels.py')
  py('11_all_true_fee_preimages_and_DP','final_ledger.py')
  py('12_exact_26_to17_difference','frontier_audit.py')
  py('13_next_frontier_noT_diagnostic','next_frontier_probe.py')
  py('14_four_negative_controls','negative_controls.py')
  py('15_aggregate_scope_acceptance','aggregate_accept.py')
  compared=0
  for name,digest in expected['deterministic_file_sha256'].items():
   assert (W/name).is_file() and sha(W/name)==digest,(name,'fresh deterministic mismatch')
   compared+=1
  def strip_timing(z):
   if isinstance(z,dict):return {k:strip_timing(v) for k,v in z.items() if k not in ['seconds','elapsed_seconds']}
   if isinstance(z,list):return [strip_timing(x) for x in z]
   return z
  structured=0
  for name,obj in expected['structured_without_timing'].items():
   assert strip_timing(json.loads((W/name).read_text()))==obj,(name,'structured mismatch')
   structured+=1
  acceptance=json.loads((W/'certificates/ROUND_ACCEPTANCE.json').read_text());assert acceptance['accepted_for_round']
  shutil.copytree(W/'logs',V/'generated_logs',dirs_exist_ok=True)
  for name in ['ROUND_ACCEPTANCE.json','kernel_receipts.json','negative_controls.json','frontier_audit.json']:
   shutil.copy2(W/'certificates'/name,V/name)
  # Full generated proof objects matched their hashes; receipt does not relabel an old run as fresh.
  rec.update({'fresh_workspace_initially_empty':True,'ordinary_binaries_built_from_sources':8,'fresh_module_jobs':25,'deterministic_files_compared':compared,'structured_files_compared':structured,'all_fresh_expected_equal':True,'acceptance':acceptance})
 rec.update({'status':'PASS','finished_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'elapsed_seconds':time.perf_counter()-start,'all_steps_exit_zero':all(s['exit_code']==0 for s in steps),'steps':steps,'versions':{'python':sys.version,'g++':subprocess.check_output(['g++','--version'],text=True).splitlines()[0]}})
 save(rec);print('REPLAY PASS',len(steps),'steps',flush=True)
except Exception:
 rec.update({'status':'FAIL','finished_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'elapsed_seconds':time.perf_counter()-start,'traceback':traceback.format_exc(),'steps':steps});save(rec);raise
