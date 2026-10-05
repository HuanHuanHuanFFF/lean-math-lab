"""Complete clean-extraction replay for this research round (not the frozen historical proof chain)."""
from pathlib import Path
from datetime import datetime,timezone
import argparse,hashlib,json,platform,subprocess,sys,time,math
root=Path(__file__).resolve().parents[1]
ap=argparse.ArgumentParser();ap.add_argument('--receipt',default='REPLAY_LOCAL.json');args=ap.parse_args()
started=datetime.now(timezone.utc).isoformat();logdir=root/'replay_logs';logdir.mkdir(exist_ok=True)
commands=[]
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def run(cmd,name):
 st=time.monotonic();r=subprocess.run(cmd,cwd=root,text=True,capture_output=True,timeout=180)
 path=logdir/(name+'.log');path.write_text('$ '+' '.join(cmd)+'\n'+r.stdout+'\n[stderr]\n'+r.stderr+'\nexit='+str(r.returncode)+'\n')
 commands.append({'name':name,'command':cmd,'returncode':r.returncode,'seconds':round(time.monotonic()-st,3),'log':'replay_logs/'+path.name})
 print(name,'exit',r.returncode,flush=True)
 if r.returncode:raise RuntimeError(name+' failed: '+r.stderr[-1000:])
 return r.stdout
manifest=root/'PAYLOAD_SHA256SUMS'
verified=0
for s in manifest.read_text().splitlines():
 expected,name=s.split('  ',1);p=root/name
 if not p.is_file() or sha(p)!=expected:raise RuntimeError('input digest mismatch: '+name)
 verified+=1
print('payload files verified',verified,flush=True)
mods=['s1825_S5quot_p257_m0','s1825_S5quot_p257_m1','s1825_S5quot_p263_m0','s1825_S5quot_p263_m1','s1825_full_p257_m0']
expected_mod={n:json.loads((root/'certificates'/f'{n}.json').read_text()) for n in mods}
expected_trace={n:sha(root/'certificates'/f'{n}.trace.tsv') for n in mods}
for p in [257,263,32749,32719]:assert all(p%d for d in range(2,math.isqrt(p)+1))
for name,source,flags in [
 ('module_kernel','module_kernel.cpp',[]),('check_trace','check_trace.cpp',[]),
 ('six_gates','six_gates_adopted.cpp',[]),('six_gates_alt','six_gates_adopted.cpp',['-DALT']),
 ('six_jets','six_jets_adopted.cpp',[]),('six_jets_32719','six_jets_adopted.cpp',['-DMODULUS=32719']),
 ('receive_geometry','receive_geometry.cpp',[]),('ledger_receiver','ledger_receiver.cpp',[])]:
 run(['g++','-O3','-std=c++17',*flags,'code/'+source,'-o','code/'+name],'compile_'+name)
for name in ['source_bounds','make_inputs','proxy_diagnostic','geometry_profiles','run_geometry_minors','verify_geometry','finish_exception','verify_ledger']:
 run([sys.executable,'code/'+name+'.py'],name)
for n in mods:
 st=time.monotonic()
 with (root/'certificates'/f'{n}.input').open() as f:
  r=subprocess.run(['code/module_kernel','certificates/'+n],cwd=root,stdin=f,capture_output=True,text=True,timeout=40)
 (logdir/(n+'_generator.log')).write_text(r.stdout+'\n'+r.stderr)
 if r.returncode:raise RuntimeError('module generator failed '+n)
 commands.append({'name':n+'_generator','returncode':r.returncode,'seconds':round(time.monotonic()-st,3),'log':'replay_logs/'+n+'_generator.log'})
 current=json.loads((root/'certificates'/f'{n}.json').read_text())
 assert {k:v for k,v in current.items() if k!='seconds'}=={k:v for k,v in expected_mod[n].items() if k!='seconds'}
 assert sha(root/'certificates'/f'{n}.trace.tsv')==expected_trace[n]
 txt=run(['code/check_trace','certificates/'+n+'.input','certificates/'+n+'.trace.tsv'],n+'_receiver')
 data=json.loads(txt);assert data['dimension']==current['dimension'] and data['weights']==current['weights']
run([sys.executable,'code/negative_controls.py'],'negative_controls')
ledger=json.loads((root/'certificates/ledger_verification.json').read_text());g=json.loads((root/'certificates/geometry/verification.json').read_text());fr=json.loads((root/'certificates/frontier_reconstruction.json').read_text());ex=json.loads((root/'certificates/geometry/rational_exception.json').read_text())
assert ledger['low_preimages']==47 and ledger['cases'][-1]['M8']==128
assert len(g)==29 and sum(x['gates'] for x in g)==3115
assert ex['rank_Q']==8 and ex['factor_degrees_X']==[1,4]
assert fr['remaining']==26 and fr['h_min']==133 and fr['V_max']==39
receipt={'status':'PASS','started_utc':started,'finished_utc':datetime.now(timezone.utc).isoformat(),'scope':'this-round proof computations and frozen input-byte bindings; NOT replay/acceptance of the full historical mathematical chain','environment':{'python':sys.version.split()[0],'platform':platform.platform(),'g++':subprocess.run(['g++','--version'],capture_output=True,text=True).stdout.splitlines()[0]},'payload_manifest_sha256':sha(manifest),'payload_files_verified':verified,'commands':commands,'assertions':{'new_state_removed':1825,'low_preimages':47,'geometry_profiles':29,'geometry_configurations':3115,'full_column_minors_each_prime':3114,'rational_exception':'full pencil uniformly reducible','S5_quotient_cases':4,'module_traces_exact_match':True,'ledger_compared_integer_cells':70560,'activated_M8':128,'frontier_count_on_adopted_history':26,'h_min_on_adopted_history':133,'V_max_on_adopted_history':39,'negative_controls_rejected':3},'evidence_level':{'Lean':False,'external_independent_review':False,'same_author_different_implementations':True,'repository_modified':False}}
receipt_path=Path(args.receipt)
if not receipt_path.is_absolute():receipt_path=root/receipt_path
receipt_path.write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n');print('COMPLETE PASS',str(receipt_path),flush=True)
