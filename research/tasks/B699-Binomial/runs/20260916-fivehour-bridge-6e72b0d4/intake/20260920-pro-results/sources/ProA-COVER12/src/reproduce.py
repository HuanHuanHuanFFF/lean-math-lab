#!/usr/bin/env python3
"""Final acceptance entry. Refuses an existing output directory.
Requires Python >=3.10, its standard library, and a C++17 compiler (CXX or g++).
No network, SymPy, old evidence, or old repository checkout is used.
"""
from pathlib import Path
from datetime import datetime,timezone
import argparse,hashlib,json,os,platform,shutil,subprocess,sys,time
from accept_exact import verify as exact_verify
from accept_ledger import verify as ledger_verify
from accept_boundaries import verify as boundary_verify
ROOT=Path(__file__).resolve().parents[1]

def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def main():
    if not __debug__:raise RuntimeError('Do not use Python -O: assertions are mathematical checks.')
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);args=ap.parse_args()
    out=args.out.resolve()
    if out.exists():raise FileExistsError('Output directory must not already exist: '+str(out))
    out.mkdir(parents=True);start=time.monotonic();commands=[]
    manifest=ROOT/'MANIFEST.json'
    if manifest.exists():
        files=json.loads(manifest.read_text())['files']
        for rel,digest in files.items():
            p=(ROOT/rel).resolve();assert p.is_relative_to(ROOT.resolve()) and p.is_file()
            assert sha(p)==digest, 'payload hash mismatch: '+rel
        print('PASS_PAYLOAD_MANIFEST',len(files),flush=True)
    def run(cmd,name):
        t=time.monotonic();res=subprocess.run(cmd,capture_output=True,text=True)
        (out/(name+'.log')).write_text(res.stdout+res.stderr)
        commands.append({'command':cmd,'exit_code':res.returncode,'seconds':round(time.monotonic()-t,6)})
        if res.returncode:raise RuntimeError(name+' failed: '+res.stderr[-1500:])
        if res.stdout:print(res.stdout.strip(),flush=True)
        return res
    cxx=shutil.which(os.environ.get('CXX','g++'))
    if not cxx:raise RuntimeError('C++17 compiler not found; set CXX.')
    compilers={}
    for code in ['accept_candidates','accept_minors']:
        binary=out/code;run([cxx,'-O3','-std=c++17',str(ROOT/'src'/f'{code}.cpp'),'-o',str(binary)],'build_'+code);compilers[code]=str(binary)
    jobs=[(f'nf59_d{i}',10,i,14) for i in range(6)]+[('sat96',16,-1,0),('sat102',17,-1,0)]
    totals={'candidates':0,'full_augmented_nonzero_minors':0,'rank_lower_minors':0}
    for name,q,defect,zmin in jobs:
        csv=ROOT/'certificates'/f'{name}.csv'
        run([compilers['accept_candidates'],str(q),str(defect),str(csv),str(zmin)],name+'_gate')
        cert=[json.loads(l) for l in (ROOT/'certificates'/f'{name}_jets.jsonl').read_text().splitlines()]
        index=out/f'{name}_indices.txt'
        with index.open('w') as f:
            for i,r in enumerate(cert):
                assert r['case']==i and r['q']==q and r['unknowns']==(q-2)**2
                assert r['status'] in ['INCONSISTENT_FULL_MINOR','MODULAR_CONSISTENT']
                a,b=r['pivot_rows'],r['pivot_cols'];full=r['status']=='INCONSISTENT_FULL_MINOR'
                assert len(a)==len(b) and len(a)==r['rankA_mod']+int(full)
                if full:assert r['rankA_mod']==r['unknowns']
                else:assert name=='nf59_d0' and i in [338,339,717]
                totals['candidates']+=1;totals['full_augmented_nonzero_minors']+=full;totals['rank_lower_minors']+=not full
                f.write(' '.join(map(str,[i,len(a),int(full),r['rows'],*a,*b]))+'\n')
        run([compilers['accept_minors'],str(q),str(csv),str(index),str(out/f'{name}_determinants.csv'),'1'],name+'_minors')
    assert totals=={'candidates':4115,'full_augmented_nonzero_minors':4112,'rank_lower_minors':3}
    exact=exact_verify(ROOT,out);ledger=ledger_verify(ROOT,out);boundaries=boundary_verify(ROOT,out)
    # Verify the source numbers from the original K152 exponents, independently of hardcoded tables.
    ps=[27,24,19,13]+[0]*5;ws=[137,110,91,78,68,61];vs=[20,16,13,11,10,9]
    source=[]
    for r,w,v in zip(range(3,9),ws,vs):
        off=[];diag=0
        for s in range(r//2+1):
            m=w-ps[s]-ps[r-s]-v
            if 2*s==r:diag=m
            else:off.append(m)
        source.append({'r':r,'off':off,'diagonal_weight':diag})
    assert [x['off'] for x in source]==[[77,74],[67,57],[51,54,46],[40,43,48],[31,34,39,45],[25,28,33,39]]
    assert [x['diagonal_weight'] for x in source]==[0,56,0,41,0,52]
    (out/'reconstructed_source_orders.json').write_text(json.dumps(source,indent=2))
    # Boundary regression: remove one candidate and duplicate one minor row; both must be rejected.
    damaged=out/'damaged_candidates.csv';lines=(ROOT/'certificates/nf59_d1.csv').read_text().splitlines();damaged.write_text('\n'.join(lines[1:])+'\n')
    test=subprocess.run([compilers['accept_candidates'],'10','1',str(damaged),'14'],capture_output=True,text=True)
    assert test.returncode!=0;(out/'negative_missing_candidate.log').write_text(test.stdout+test.stderr);damaged.unlink()
    f=out/'nf59_d1_indices.txt';lines=f.read_text().splitlines();head=list(map(int,lines[0].split()));head[5]=head[4];lines[0]=' '.join(map(str,head))
    damaged=out/'damaged_minor_indices.txt';damaged.write_text('\n'.join(lines)+'\n')
    test=subprocess.run([compilers['accept_minors'],'10',str(ROOT/'certificates/nf59_d1.csv'),str(damaged),str(out/'damaged_output.csv'),'0'],capture_output=True,text=True)
    assert test.returncode!=0;(out/'negative_duplicate_minor.log').write_text(test.stdout+test.stderr);damaged.unlink();(out/'damaged_output.csv').unlink()
    result={'status':'PASS_NEW_NF59_SAT102_SAME_G_COVER12','cover':12,'same_fixed_G':True,
            'middle11':True,'free18':True,'saturation_all_rational_coefficients_through_q':17,
            'NF59_residual_affine_dimensions':[2,1,0],**totals,
            'vertical_states':2035,'maximal_relaxed_configurations':577,'positive_excess_maximum':12,
            'R7':[3,4,5,6,7,8,9],'templates':57,'per_400_multiple_row_target_bound':152,
            'general_factor_minima':{'weighted_degree':7,'X_degree':3,'source_zeros':14},
            'ordinary_parameter_signatures_verified':True,'all_diagonal_cancellations_verified':True,
            'publication_genus_theorem_and_frozen_inputs':'adopted mathematical inputs; not proved by finite checker',
            'external_independent_peer_review':False,'Lean':False,'repository_modified':False,
            'UTC_finished':datetime.now(timezone.utc).isoformat(),'seconds':round(time.monotonic()-start,6),
            'python':platform.python_version(),'compiler':subprocess.check_output([cxx,'--version'],text=True).splitlines()[0],
            'commands':commands,'script_sha256':{str(p.relative_to(ROOT)):sha(p) for p in sorted((ROOT/'src').glob('*')) if p.is_file()}}
    (out/'RECEIPT.json').write_text(json.dumps(result,indent=2,ensure_ascii=False)+'\n')
    print(result['status'],json.dumps(totals),'cover=12','seconds',result['seconds'],flush=True)
if __name__=='__main__':main()
