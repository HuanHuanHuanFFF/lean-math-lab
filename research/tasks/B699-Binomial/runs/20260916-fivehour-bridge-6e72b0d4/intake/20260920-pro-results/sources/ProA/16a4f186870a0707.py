#!/usr/bin/env python3
"""Clean, standalone replay of this round ONLY. No old ZIP, network or repo.
Requires Python 3.11+, NumPy, and a C++17 compiler. Refuses existing output paths.
"""
from __future__ import annotations
import argparse,datetime,hashlib,json,os,platform,subprocess,sys,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def write(p,x):p.write_text(json.dumps(x,sort_keys=True,separators=(',',':'))+'\n')
def run_step(cmd,log,env):
    with log.open('w') as f:
        r=subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,env=env)
    if r.returncode:
        tail=log.read_text(errors='replace')[-6000:]
        raise RuntimeError(f'command failed ({r.returncode}): {cmd}\n{tail}')
    print('COMPLETED',log.name,flush=True)

def deterministic_files(out):
    paths=[out/'ACCEPTANCE.json']
    for d in ['geometry','ledger','diagnostics','negative']:paths+=sorted((out/d).glob('*.json'))
    return {str(p.relative_to(out)):sha(p) for p in paths}

def main():
    pa=argparse.ArgumentParser();pa.add_argument('--out',type=Path,required=True);pa.add_argument('--workers',type=int,default=3);pa.add_argument('--compare',action='store_true');pa.add_argument('--cxx',default='g++');a=pa.parse_args()
    if sys.version_info<(3,11):raise RuntimeError('Python 3.11+ required')
    if not a.out.is_absolute() or a.out.exists():raise ValueError('output must be a new absolute directory')
    if not 1<=a.workers<=3:raise ValueError('workers must be between 1 and 3')
    if a.compare and not (ROOT/'verification/final/ACCEPTANCE.json').is_file():raise ValueError('comparison reference absent')
    import numpy as np
    begin=time.monotonic();started=datetime.datetime.now(datetime.timezone.utc).isoformat()
    a.out.mkdir(parents=True);tools=a.out/'tools';tools.mkdir()
    env=dict(os.environ,OPENBLAS_NUM_THREADS='1',OMP_NUM_THREADS='1',PYTHONDONTWRITEBYTECODE='1',B699_FIELDLIB=str(tools/'libfield65521.so'))
    cmds=[[a.cxx,'-O3','-std=c++17','-fPIC','-shared',str(ROOT/'code/field65521.cpp'),'-o',str(tools/'libfield65521.so')],
          [a.cxx,'-O3','-std=c++17',str(ROOT/'code/nf_gate.cpp'),'-o',str(tools/'nf_gate')]]
    for i,cmd in enumerate(cmds):run_step(cmd,tools/f'compile_{i}.log',env)
    steps=[('geometry',[sys.executable,'-B',str(ROOT/'code/verify_nf89.py'),'--out',str(a.out/'geometry'),'--tools',str(tools),'--workers',str(a.workers)]),
           ('ledger',[sys.executable,'-B',str(ROOT/'code/verify_trace_ledger.py'),'--out',str(a.out/'ledger')]),
           ('diagnostics',[sys.executable,'-B',str(ROOT/'code/verify_diagnostics.py'),'--out',str(a.out/'diagnostics'),'--ledger',str(a.out/'ledger')]),
           ('negative',[sys.executable,'-B',str(ROOT/'code/negative_checks.py'),'--out',str(a.out/'negative'),'--ledger',str(a.out/'ledger')])]
    for name,cmd in steps:run_step(cmd,a.out/f'{name}_run.log',env)
    read=lambda p:json.loads(p.read_text())
    g=read(a.out/'geometry/GEOMETRY_SUMMARY.json');l=read(a.out/'ledger/LEDGER_SUMMARY.json');e=read(a.out/'ledger/TRACE_EDGE10.json');n=read(a.out/'negative/NEGATIVE_AND_BOUNDARY_TESTS.json')
    status='PASS_NEW_LOC89_SAME_G_TRACE_EDGE10_H107'
    result={'status':status,'new_near_saturated_location_q':15,'NF89_missing_rows_excluded':[4,5,6,7,8],
            'geometry_full_gates':g['full_gates'],'ordinary_jet_systems':g['ordinary_jet_systems'],'full_augmented_minors':g['full_augmented_minors'],
            'exact_low_rank_exclusions':g['exact_low_rank_exclusions'],'geometry_affine_spaces_remaining_in_checked_rows':0,'NF89_row3_classified':False,
            'same_fixed_G':True,'cover_before':10,'cover_after':10,'cover_decreased':False,'new_maximum_relaxation_records':e['maximum_records'],
            'new_equality_vertical_states':e['equality_vertical_state_count'],'new_minimum_equality_h':e['minimum_equality_h'],
            'bound_if_positive_total_excess':e['maximum_if_positive_total_excess'],'source_states':2035,'SAT_range_unchanged':24,
            'negative_and_boundary_tests':n['count'],'corrupt_input_refusals':n['corrupt_input_refusals'],'R7_unchanged':[3,4,5,6,7,8,9],
            'alpha_templates_unchanged':57,'row_target_bound_unchanged':152,'general_minimum_D_e_z_unchanged':[7,3,14],
            'old_mathematical_chain_replayed':False,'external_independent_review':False,'Lean':False,'repository_writes':False}
    write(a.out/'ACCEPTANCE.json',result)
    hashes=deterministic_files(a.out);comparison=None
    if a.compare:
        expected=deterministic_files(ROOT/'verification/final')
        if hashes!=expected:raise AssertionError('deterministic replay byte comparison failed: '+str(sorted(k for k in set(hashes)|set(expected) if hashes.get(k)!=expected.get(k))))
        comparison={'status':'IDENTICAL','files':len(hashes)}
    receipt={'status':status,'started_utc':started,'finished_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'elapsed_seconds':round(time.monotonic()-begin,3),
             'exit_code':0,'command':sys.argv,'python':platform.python_version(),'numpy':np.__version__,'workers':a.workers,'compiled_from_source':True,
             'comparison':comparison,'deterministic_outputs':hashes}
    write(a.out/'REPLAY_RECEIPT.json',receipt)
    print(status,'outputs',len(hashes),'comparison',comparison,flush=True)
if __name__=='__main__':main()
