"""Full serial replay; no downloaded dependencies or repository access.
Run from a fresh extraction: python code/replay.py.
A manifest check alone never counts as executing mathematics.
"""
from pathlib import Path
import datetime, hashlib, json, os, platform, shutil, subprocess, sys, time, traceback
ROOT=Path(__file__).resolve().parents[1]
LOG=ROOT/'logs/replay'; LOG.mkdir(parents=True,exist_ok=True)
(ROOT/'work').mkdir(exist_ok=True)
def utc():return datetime.datetime.now(datetime.timezone.utc).isoformat()
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def normalize(x):
    if isinstance(x,dict):return {k:normalize(v) for k,v in x.items() if k!='seconds'}
    if isinstance(x,list):return [normalize(v) for v in x]
    return x
def structural(p):return hashlib.sha256(json.dumps(normalize(json.loads(p.read_text())),sort_keys=True,separators=(',',':')).encode()).hexdigest()
def manifests():
    totals={}
    for filename,fun in [('MATH_SHA256SUMS',sha),('STRUCTURE_SHA256SUMS',structural)]:
        checked=0
        for line in (ROOT/filename).read_text().splitlines():
            if not line.strip():continue
            expected,rel=line.split('  ',1);p=ROOT/rel
            assert p.is_file() and p.resolve().is_relative_to(ROOT),rel
            actual=fun(p)
            assert expected==actual,(filename,rel,expected,actual)
            checked+=1
        totals[filename]=checked
    return totals

def read_text(path):
    p=Path(path)
    return p.read_text().strip() if p.exists() else None
commands=[]
def add(name,args):commands.append((name,args))
add('input_zip_and_reused_bytes',[sys.executable,'code/verify_inputs.py'])
for src,out,flags in [
 ('module_kernel.cpp','module_kernel',[]),('check_trace.cpp','check_trace',[]),
 ('ledger_receiver.cpp','ledger_receiver',[]),('enumeration_receiver.cpp','enumeration_receiver',[]),
 ('preimage_receiver.cpp','preimage_receiver',[]),
 ('root_gates_fast2.cpp','root_gates',[]),('root_gates_fast2.cpp','root_gates_alt',['-DALT']),
 ('six_jets_adopted.cpp','six_jets_p32749',['-DMODULUS=32749']),
 ('receive_geometry_r3.cpp','receive_geometry_p32749',['-DMODULUS=32749']),
 ('six_jets_adopted.cpp','six_jets_p32719',['-DMODULUS=32719']),
 ('receive_geometry_r3.cpp','receive_geometry_p32719',['-DMODULUS=32719'])]:
    add('compile_'+out,['g++','-O3','-std=c++17',*flags,'code/'+src,'-o','work/'+out])
for name,args in [
 ('all_parameter_source_audit',['audit_s5.py']),
 ('complete_dense_algorithm_controls',['dense_tests.py']),
 ('2029_four_complete_modules',['kernel_work.py','2029']),
 ('2029_licence_ledger_binding',['build_ledger.py']),
 ('full_residual_diagnostics',['residual_diagnostics.py']),
 ('new_quintic_all_splits_and_dual_minors',['geometry_work.py']),
 ('four_exact_rational_minors',['exact_quintic_minors.py']),
 ('2000_four_complete_modules',['kernel_work.py','2000']),
 ('two_state_final_ledger_and_ablation',['build_final_ledger.py']),
 ('complete_actual_types_and_growth_preimages',['final_exact_cases.py']),
 ('nine_tamper_controls',['negative_controls.py']),
 ('strict_current_difference',['difference_audit.py'])]:
    add(name,[sys.executable,'code/'+args[0],*args[1:]])
receipt={'started_utc':utc(),'execution_location':'freshly extracted current conversation sandbox, not user machine',
         'full_new_mathematics_replayed':False,'historical_mathematics_replayed':False,
         'independent_external_review':False,'Lean_run':False,'repository_access':False,
         'steps':[], 'environment':{'python':sys.version,'platform':platform.platform(),
         'compiler':subprocess.check_output(['g++','--version'],text=True).splitlines()[0],
         'memory_max':read_text('/sys/fs/cgroup/memory.max'),
         'memory_current':read_text('/sys/fs/cgroup/memory.current'),
         'cpu_max':read_text('/sys/fs/cgroup/cpu.max'),'disk_free_bytes':shutil.disk_usage(ROOT).free}}
start=time.monotonic()
try:
    receipt['before']=manifests()
    print('BEFORE',receipt['before'],flush=True)
    for number,(name,cmd) in enumerate(commands,1):
        print(f'START {number}/{len(commands)} {name}',flush=True)
        t=time.monotonic();now=utc();log=LOG/f'{number:02d}_{name}.log'
        env=os.environ.copy();env.update({'PYTHONDONTWRITEBYTECODE':'1','OMP_NUM_THREADS':'1','OPENBLAS_NUM_THREADS':'1','MKL_NUM_THREADS':'1','PYTHONUNBUFFERED':'1'})
        with log.open('w') as f:p=subprocess.run(cmd,cwd=ROOT,stdout=f,stderr=subprocess.STDOUT,env=env)
        step={'number':number,'name':name,'command':cmd,'started_utc':now,'exit_code':p.returncode,
              'seconds':round(time.monotonic()-t,6),'log':str(log.relative_to(ROOT)),'log_sha256':sha(log)}
        receipt['steps'].append(step)
        (ROOT/'REPLAY_PROGRESS.json').write_text(json.dumps(receipt,indent=2)+'\n')
        assert p.returncode==0,(name,p.returncode,log.read_text()[-2500:])
        print(f'PASS {number}/{len(commands)} {name}',flush=True)
    receipt['after']=manifests()
    assert receipt['before']==receipt['after']
    receipt.update({'all_steps_passed':True,'full_new_mathematics_replayed':True,
                    'mathematical_payload_unchanged':True,'steps_completed':len(commands),
                    'manifest_hashes':{n:sha(ROOT/n) for n in ['MATH_SHA256SUMS','STRUCTURE_SHA256SUMS']}})
except Exception as e:
    receipt.update({'all_steps_passed':False,'error':repr(e),'traceback':traceback.format_exc()})
    raise
finally:
    receipt['finished_utc']=utc();receipt['elapsed_seconds']=round(time.monotonic()-start,6)
    (ROOT/'REPLAY_RECEIPT.json').write_text(json.dumps(receipt,indent=2)+'\n')
print('FULL REPLAY PASS',receipt['steps_completed'],receipt['after'],flush=True)
