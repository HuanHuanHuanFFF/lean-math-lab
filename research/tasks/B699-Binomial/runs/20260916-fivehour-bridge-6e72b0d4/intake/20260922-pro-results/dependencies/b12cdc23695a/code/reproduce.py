#!/usr/bin/env python3
"""Recompute the new finite proof only. Refuses existing output directories.
Requires Python 3.10+, a C++17 compiler (g++), and Boost.Multiprecision headers.
No network, SymPy, NumPy, Numba, Lean, or historical source directory is used.
"""
import sys
sys.dont_write_bytecode=True
import argparse,contextlib,datetime,hashlib,json,platform,shutil,subprocess,time
from pathlib import Path
import classify,ledger,counterexample
from exact import *

def damaged_inputs(enum_path,cert_path,out_dir):
    original_enum=json.loads(enum_path.read_text());original_cert=json.loads(cert_path.read_text())
    results=[]
    for label in ('missing_source_configuration','corrupted_coefficient','wrong_rank_field'):
        a=json.loads(json.dumps(original_enum));b=json.loads(json.dumps(original_cert))
        if label=='missing_source_configuration':a['multiplicities'].pop()
        elif label=='corrupted_coefficient':b['families'][0]['base'][0]=str(Q(b['families'][0]['base'][0])+1)
        else:a['prime']=32751
        aa=out_dir/(label+'_enum.json');bb=out_dir/(label+'_cert.json')
        aa.write_text(json.dumps(a));bb.write_text(json.dumps(b))
        rejected=False
        try:classify.certify(aa,bb,out_dir/(label+'_UNEXPECTED.json'))
        except AssertionError:rejected=True
        if not rejected:raise RuntimeError('damaged input accepted: '+label)
        # Tiny mutation specification, not multiple duplicated 50KB certificates.
        aa.unlink();bb.unlink();results.append(dict(test=label,result='REJECTED'))
    positive=to_vec(add(P4,mul(W,{(1,0):Q(1),(0,0):Q(-3)})))
    assert dot(jet(4,3,0,1),positive)==0 and dot(jet(4,3,1,0),positive)!=0
    results.append(dict(test='ordinary_order_not_specialized_root_multiplicity',result='COUNTEREXAMPLE_VERIFIED'))
    trap=(32749,)+(0,)*23+(1,)
    solution=affine([trap]);assert solution is not None and solution[0][0]==-Q(1,32749)
    results.append(dict(test='mod_p_affine_inconsistency_not_a_Q_obstruction',result='RATIONAL_SOLUTION_VERIFIED'))
    f=next(x for x in original_cert['families'] if x['ids']==[70])
    V=tuple(Q(x) for x in f['base'])+(Q(1),)
    sig=generic_signature((V,));assert sig['mu']==22 and sig['diagonal'][1][2]==0
    assert primitive(V)[1]<2**28
    results.append(dict(test='generic_kappa6_one_at_pencil70_parameter_zero',result='FALSE_ASSERTION_REJECTED_FIXED_CONSUMER_APPLIES'))
    return results

def main():
    if sys.flags.optimize:raise RuntimeError('Do not run with -O: assertion checks must remain active.')
    parser=argparse.ArgumentParser();parser.add_argument('--out',required=True,type=Path);args=parser.parse_args()
    out=args.out.resolve()
    if out.exists():raise FileExistsError('Refusing existing output directory: '+str(out))
    out.mkdir(parents=True)
    root=Path(__file__).resolve().parent.parent
    start=time.monotonic();timestamp=datetime.datetime.now(datetime.timezone.utc).isoformat()
    gxx=shutil.which('g++')
    if not gxx:raise RuntimeError('g++ C++17 compiler is required')
    inputs={str(p.relative_to(root)):hashlib.sha256(p.read_bytes()).hexdigest() for folder in ('code','certificates') for p in sorted((root/folder).glob('*')) if p.is_file()}
    log_path=out/'replay.log'
    with log_path.open('w') as log,contextlib.redirect_stdout(log):
        print('START',timestamp,flush=True)
        print('PYTHON',platform.python_version(),flush=True)
        compiler=subprocess.run([gxx,'--version'],capture_output=True,text=True,check=True).stdout.splitlines()[0]
        print('COMPILER',compiler,flush=True)
        subprocess.run([gxx,'-O2','-std=c++17',str(root/'code/enumerate.cpp'),'-o',str(out/'enumerate')],stdout=log,stderr=subprocess.STDOUT,check=True)
        subprocess.run([str(out/'enumerate'),str(out/'enumeration.json')],stdout=log,stderr=subprocess.STDOUT,check=True)
        classification=classify.certify(out/'enumeration.json',root/'certificates/b22_spaces.json',out/'classification.json')
        budget=ledger.run(out)
        counterexample.run(out/'auxiliary_counterexample.json')
        negative=damaged_inputs(out/'enumeration.json',root/'certificates/b22_spaces.json',out)
        print('NEGATIVE_TESTS',len(negative),'PASS',flush=True)
        print('PASS_NEW_B22_CLASSIFICATION_AND_H117',flush=True)
    receipt=dict(status='PASS_NEW_B22_CLASSIFICATION_AND_H117',started_utc=timestamp,finished_utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),elapsed_seconds=round(time.monotonic()-start,6),python=platform.python_version(),compiler=compiler,source_hashes=inputs,new_claims=dict(B22_classification=True,B22_loadable_source_hits=[19,20],B22_kappa4_plus_kappa6_at_least_one=True,same_G_cover_upper_bound=10,equality_min_X_degree=117,cover9_proved=False),finite_results=dict(enumerated_consistent_models=180,affine_spaces=41,B22_spaces=38,planes=6,pencils=5,fixed=25,universally_reducible_pencils=2,vertical_states=2035,E0_states=1540,max10_states=60,weak_TRACE0_max10_states=54),negative_tests=negative,scope='New author paper proof plus same-session cross-implementation exact computations. Historical consumers and middle13/LOC/free25/EDGE10 interfaces adopted, not replayed. No Lean or external peer review.',outputs={p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(out.iterdir()) if p.is_file() and p.name!='enumerate'})
    (out/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
    print(receipt['status'],'seconds',receipt['elapsed_seconds'],'receipt',out/'receipt.json')
if __name__=='__main__':main()
