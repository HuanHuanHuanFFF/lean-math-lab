#!/usr/bin/env python3
"""Offline, deterministic replay of this round only.
Python 3.10+ standard library and GNU C++17. A fresh output directory is required.
No network, repository actions, Lean, or replay of historical mathematical proofs.
"""
from __future__ import annotations
import argparse,hashlib,json,platform,subprocess,sys,time
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
import round_ledger as ledger
import round_algebra as algebra


def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def dump(p,x):p.write_text(json.dumps(x,indent=2,ensure_ascii=False)+'\n')

def call(args,out,label,fail=False):
    t=time.monotonic();args=list(map(str,args));r=subprocess.run(args,text=True,capture_output=True)
    (out/'logs'/f'{label}.log').write_text(r.stdout+r.stderr)
    dump(out/'runs'/f'{label}.json',{'command':args,'exit_code':r.returncode,'duration_seconds':time.monotonic()-t,'expected_failure':fail})
    if (r.returncode==0)==fail:raise RuntimeError((label,r.returncode,r.stdout,r.stderr))
    return r.stdout.strip()

def main(out,jobs):
    if out.exists():raise FileExistsError(out)
    for d in ['bin','logs','runs','certificates/geometry','certificates/ledger','certificates/cofactor','negative_tests']:
        (out/d).mkdir(parents=True,exist_ok=True)
    begin=time.monotonic()
    for rel,digest in json.loads((ROOT/'inputs/SOURCE_BYTES.json').read_text()).items():
        assert sha(ROOT/'inputs'/rel)==digest,('source changed',rel)
    # Verify copied source bytes against the adopted archive's recorded identities too.
    for rel,b in json.loads((ROOT/'inputs/BASELINE_BINDINGS.json').read_text())['files'].items():
        assert sha(ROOT/'inputs'/rel)==b['sha256']
    dump(out/'environment.json',{'python':sys.version,'platform':platform.platform(),'jobs':jobs,'offline':True,
                                'repository_operations':False,'Lean':False})
    build=[('gates','six_gates.cpp',[]),('gates_alt','six_gates.cpp',['-DALT']),
        ('jets32749','six_jets.cpp',[]),('jets32719','six_jets.cpp',['-DMODULUS=32719']),('receiver','receive_six.cpp',[]),
        ('module257','module.cpp',[]),('module263','module.cpp',['-DPRIME=263']),
        ('module_receive257','module_receiver.cpp',[]),('module_receive263','module_receiver.cpp',['-DRECEIVER_PRIME=263']),
        ('fees','fees.cpp',[]),('grid','full_grid_dp.cpp',[]),('enum','enumerate_costs.cpp',[])]
    def compile_one(job):
        name,src,flags=job
        call(['g++','-O3','-std=c++17',*flags,ROOT/'code'/src,'-o',out/'bin'/name],out,'compile_'+name)
    with ThreadPoolExecutor(max_workers=jobs) as ex:list(ex.map(compile_one,build))
    gd=out/'certificates/geometry';fd=out/'certificates/ledger';cd=out/'certificates/cofactor'
    st,ids,raw,conditional=ledger.init(ROOT,fd)
    cover,cases=ledger.registry(ROOT,fd)
    call([out/'bin/enum',ROOT/'inputs/signatures619.txt',fd/'h117_queries.txt',fd/'original_h117_cpp.txt',fd/'original_h117_cpp_stats.txt'],out,'main_complete_multisets')
    mainpre,main_summary=ledger.main_groups(ROOT,fd,st,raw,cover)
    print('MAIN_LOW_PREIMAGES',len(mainpre),'ONLY_NEW q10 baseT',flush=True)

    def geometry(case):
        name,q,d,k=case
        for tag,binname in [('gates','gates'),('alt','gates_alt')]:
            call([out/'bin'/binname,q,*d,*k,gd/f'{name}.{tag}'],out,f'{name}_{tag}')
        a=(gd/f'{name}.gates').read_text().splitlines();b=(gd/f'{name}.alt').read_text().splitlines()
        assert sorted(a)==sorted(b) and len(a)==len(set(a))
        exception_ids=[1,7,8] if name=='ext01_q4' else []
        receipts=[]
        for p in (32749,32719):
            minors=gd/f'{name}.{p}.minors';exceptions=gd/f'{name}.{p}.exceptions'
            msg=call([out/f'bin/jets{p}',q,gd/f'{name}.gates',minors,exceptions],out,f'{name}_jets{p}')
            er=[list(map(int,l.split())) for l in exceptions.read_text().splitlines()]
            assert [r[0] for r in er]==exception_ids,(name,p,er)
            skip=','.join(map(str,exception_ids)) or '-'
            received=call([out/'bin/receiver',q,p,gd/f'{name}.gates',minors,skip],out,f'{name}_receive{p}')
            assert len(minors.read_text().splitlines())+len(er)==len(a)
            receipts.append({'prime':p,'nonzero_minors':len(a)-len(er),'exceptions':er,'generator':msg,'receiver':received,
                             'minor_sha256':sha(minors)})
        print('GEOMETRY_ACCEPTED',name,'gates',len(a),'residuals',len(exception_ids),flush=True)
        return {'profile':name,'q':q,'delta':d,'kappa':k,'root_configurations':len(a),'anchors_equal':True,
                'configuration_sha256':sha(gd/f'{name}.gates'),'receipts':receipts}
    with ThreadPoolExecutor(max_workers=jobs) as ex:gr=list(ex.map(geometry,cases))
    assert sum(x['root_configurations'] for x in gr)==260
    assert sum(y['nonzero_minors'] for x in gr for y in x['receipts'])==514
    dump(gd/'geometry_receipt.json',gr)
    E=algebra.recover(gd,gd)
    s5,esources=algebra.source_bounds(gd,E)
    exact_count=algebra.exact_minors(gd,cases,gd)

    for label,sigs in [('original',ROOT/'inputs/signatures619.txt'),('conditional',fd/'CONDITIONAL_T11_NOT_GLOBAL.txt')]:
        call([out/'bin/fees',sigs,fd/'queries56.txt',fd/f'{label}_fees56.txt'],out,f'{label}_fees')
        call([out/'bin/grid',sigs,fd/'queries56.txt',fd/f'{label}_full_DP_summary.tsv',fd/f'{label}_full_DP_cells.tsv'],out,f'{label}_full_grid')
    cond=ledger.read_fees(fd/'conditional_fees56.txt',conditional,st,ids)
    assert [r['state'] for r in cond if r['minimum']>r['h']]==ledger.REMOVED
    domains=ledger.all_domains(fd,st,cover,mainpre)
    cof=ledger.quotient_cases(st,cd,s5,esources)
    tasks=[(r,257,0) for r in cof]
    maincase=next(r for r in cof if r['tag']=='1704_S5')
    tasks.extend([(maincase,257,1),(maincase,263,0),(maincase,263,1)])
    def module(task):
        rec,p,rev=task;tag=rec['tag'];case=cd/f'{tag}.case';trace=cd/f'{tag}_p{p}_reverse{rev}.trace'
        msg=call([out/f'bin/module{p}',case,trace,rev],out,f'module_{tag}_{p}_{rev}')
        rx=call([out/f'bin/module_receive{p}',case,trace,rev,p],out,f'module_receive_{tag}_{p}_{rev}')
        lines=trace.read_text().splitlines();pp,e,n=map(int,lines[0].split());w=list(map(int,lines[-1].split()[1:]))
        assert pp==p and e==rec['quotient_e'] and len(w)==e+1 and min(w)>2*e
        result={'tag':tag,'state':rec['state'],'family':rec['family'],'prime':p,'reverse_sources':rev,
                'quotient_e':e,'quotient_D':2*e,'constraints':n,'weights':w,'nullity':0,
                'trace_sha256':sha(trace),'generator':msg,'receiver':rx}
        print('QUOTIENT_ACCEPTED',tag,p,rev,'min_weight',min(w),flush=True)
        return result
    with ThreadPoolExecutor(max_workers=jobs) as ex:mr=list(ex.map(module,tasks))
    assert len(mr)==12
    dump(cd/'module_receipt.json',mr)
    summary=ledger.finish(ROOT,fd,st,ids,raw,conditional,domains,mr)
    call([out/'bin/enum',fd/'CONDITIONAL_T11_NOT_GLOBAL.txt',fd/'remaining_h117_queries.txt',fd/'remaining_h117_conditional_cpp.txt',fd/'remaining_h117_conditional_cpp_stats.txt'],out,'remaining_h117_complete_multisets')
    nxt=ledger.next_states(ROOT,fd,st,raw,conditional)
    summary.update(main1704=main_summary,geometry_new_profiles=11,adopted_profile_count=48,complete_LOW_T43_pairs=43,
        new_root_configurations=260,nonzero_modular_minors=514,exact_rational_residual_systems=3,
        exact_integer_minors=exact_count,all_five_main_q10_minors_computed_as_integers=True,
        state_specific_quotient_systems=9,module_generations_with_receivers=12,
        complete_activated_low_pair_records=sum(r['count'] for r in domains),next_lowest_states=nxt)

    # Fail-closed controls. A rejected corruption is not counted as positive mathematics.
    ng=out/'negative_tests';negative=[]
    def reject(label,cmd):
        call(cmd,out,'negative_'+label,True);negative.append({'test':label,'rejected':True})
    original=(gd/'base_q10.32719.minors').read_text().splitlines()
    for name,which in [('wrong_determinant',0),('duplicate_jet',1),('missing_configuration',2)]:
        ls=original[:]
        if which==2:ls=ls[:-1]
        else:
            z=list(map(int,ls[0].split()))
            if which==0:z[2]=(z[2]+1)%32719 or 1
            else:z[-1]=z[-2]
            ls[0]=' '.join(map(str,z))
        bad=ng/f'{name}.minors';bad.write_text('\n'.join(ls)+'\n')
        reject(name,[out/'bin/receiver',10,32719,gd/'base_q10.gates',bad,'-'])
    reject('duplicate_residual',[out/'bin/receiver',4,32719,gd/'ext01_q4.gates',gd/'ext01_q4.32719.minors','1,7,7,8'])
    reject('missing_residual',[out/'bin/receiver',4,32719,gd/'ext01_q4.gates',gd/'ext01_q4.32719.minors','1,7'])
    reject('out_of_range_residual',[out/'bin/receiver',4,32719,gd/'ext01_q4.gates',gd/'ext01_q4.32719.minors','1,7,8,999'])
    tr=(cd/'1704_S5_p257_reverse0.trace').read_text().splitlines()
    wrong=tr[:];wrong[0]='263 '+wrong[0].split(' ',1)[1];bad=ng/'wrong_prime.trace';bad.write_text('\n'.join(wrong)+'\n')
    reject('module_prime_mismatch',[out/'bin/module_receive257',cd/'1704_S5.case',bad,0,257])
    wrong=tr[:];idx=next(i for i,l in enumerate(wrong[1:],1) if len(l.split())==4)
    z=wrong[idx].split();z[2]=str((int(z[2])+1)%257);wrong[idx]=' '.join(z)
    bad=ng/'wrong_pivot.trace';bad.write_text('\n'.join(wrong)+'\n')
    reject('module_pivot_corruption',[out/'bin/module_receive257',cd/'1704_S5.case',bad,0,257])
    summary['negative_controls']=len(negative)
    dump(out/'certificates/negative_controls.json',negative)
    dump(out/'certificates/summary.json',summary)
    certs={str(p.relative_to(out/'certificates')):sha(p) for p in sorted((out/'certificates').rglob('*')) if p.is_file()}
    dump(out/'REPLAY_RECEIPT.json',{'status':'PASS','exit_code':0,'duration_seconds':time.monotonic()-begin,
        'certificate_sha256':certs,'code_sha256':{p.name:sha(p) for p in sorted((ROOT/'code').glob('*')) if p.is_file()},
        'source_manifest_sha256':sha(ROOT/'inputs/SOURCE_BYTES.json'),'summary':summary,
        'offline':True,'repository_operations':False,'Lean':False})
    print(json.dumps(summary,indent=2,ensure_ascii=False),flush=True)

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',required=True,type=Path);ap.add_argument('--jobs',type=int,default=2)
    a=ap.parse_args();assert 1<=a.jobs<=4;main(a.out.resolve(),a.jobs)
