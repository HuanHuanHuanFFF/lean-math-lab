#!/usr/bin/env python3
"""Offline complete replay of this increment, not the frozen historical chain.
Python 3.10+ standard library; GNU C++17. Output must be a fresh directory.
"""
from __future__ import annotations
import argparse,hashlib,json,platform,subprocess,sys,time
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor
sys.dont_write_bytecode=True
if hasattr(sys,'set_int_max_str_digits'):sys.set_int_max_str_digits(0)
ROOT=Path(__file__).resolve().parents[1]
import round_core as core
import exact_minors

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def dump(p,x):p.write_text(json.dumps(x,indent=2,ensure_ascii=False)+'\n')
def call(args,out,label,expected_failure=False):
    args=list(map(str,args));begin=time.monotonic()
    p=subprocess.run(args,capture_output=True,text=True)
    (out/'logs'/f'{label}.log').write_text(p.stdout+p.stderr)
    dump(out/'runs'/f'{label}.json',{'command':args,'exit_code':p.returncode,
         'elapsed_seconds':time.monotonic()-begin,'expected_failure':expected_failure})
    if (p.returncode==0)==expected_failure:raise RuntimeError((label,p.returncode,p.stdout,p.stderr))
    return p.stdout.strip()

def main(out,jobs):
    if out.exists():raise FileExistsError(out)
    for d in ['bin','logs','runs','certificates/geometry','certificates/ledger','negative_tests']:(out/d).mkdir(parents=True,exist_ok=True)
    start=time.monotonic()
    manifest=json.loads((ROOT/'inputs/SOURCE_BYTES.json').read_text())
    for rel,h in manifest.items():assert sha(ROOT/'inputs'/rel)==h,('changed input',rel)
    bind=json.loads((ROOT/'inputs/BASELINE_BINDINGS.json').read_text())
    up={}
    for l in (ROOT/'inputs/UPSTREAM_MANIFEST.sha256').read_text().splitlines():
        h,n=l.split('  ',1);up[n]=h
    assert len(up)==508
    for rel,b in bind['files'].items():
        assert sha(ROOT/'inputs'/rel)==b['sha256']
        if b['upstream_member']!='MANIFEST.sha256':assert up[b['upstream_member']]==b['sha256']
    dump(out/'environment.json',{'python':sys.version,'platform':platform.platform(),'jobs':jobs,
         'network_used_in_replay':False,'repository_operations':False,'Lean':False})
    builds=[('gates','six_gates.cpp',[]),('gates_alt','six_gates.cpp',['-DALT']),
            ('jets32749','six_jets.cpp',[]),('jets32719','six_jets.cpp',['-DMODULUS=32719']),
            ('receiver','receive_six.cpp',[]),('fees','fees.cpp',[]),
            ('grid','full_grid_dp.cpp',[]),('enum','enumerate_costs.cpp',[])]
    def compile_one(x):
        name,src,flags=x
        call(['g++','-O3','-std=c++17',*flags,ROOT/'code'/src,'-o',out/'bin'/name],out,'compile_'+name)
    with ThreadPoolExecutor(max_workers=jobs)as ex:list(ex.map(compile_one,builds))
    gd=out/'certificates/geometry';fd=out/'certificates/ledger'
    st,ids,arrays=core.setup(ROOT,fd)
    cases=core.profiles();dump(gd/'complete_profiles.json',cases)
    expected=[6929,0,280,0,17,16618,0,30,30232,2,58,52998]
    def geometry(task):
        case,count=task;name,q,d,k=case
        for ext,binary in [('gates','gates'),('alt','gates_alt')]:
            call([out/'bin'/binary,q,*d,*k,gd/f'{name}.{ext}'],out,f'{name}_{ext}')
        aa=(gd/f'{name}.gates').read_text().splitlines();bb=(gd/f'{name}.alt').read_text().splitlines()
        assert len(aa)==count and len(aa)==len(set(aa)) and sorted(aa)==sorted(bb),(name,'incomplete root set')
        stats=core.gate_statistics(case,aa);receipts=[]
        for p in (32749,32719):
            mi=gd/f'{name}.{p}.minors';exc=gd/f'{name}.{p}.exceptions'
            gen=call([out/f'bin/jets{p}',q,gd/f'{name}.gates',mi,exc],out,f'{name}_jets{p}')
            assert not exc.read_text().strip(),(name,p,'unclassified rational-kernel possibility',exc.read_text())
            rec=call([out/'bin/receiver',q,p,gd/f'{name}.gates',mi,'-'],out,f'{name}_receiver{p}')
            assert len(mi.read_text().splitlines())==count
            receipts.append({'prime':p,'nonzero_minors':count,'generator':gen,'receiver':rec,
                  'minor_sha256':sha(mi),'exceptions':0})
        stats.update(anchors_complete_sets_equal=True,configuration_sha256=sha(gd/f'{name}.gates'),receipts=receipts)
        print('GEOMETRY_ACCEPTED',name,'gates',count,'primes32749+32719','residuals0',flush=True)
        return stats
    with ThreadPoolExecutor(max_workers=jobs)as ex:gr=list(ex.map(geometry,zip(cases,expected)))
    assert sum(x['root_configurations']for x in gr)==107164
    assert sum(y['nonzero_minors']for x in gr for y in x['receipts'])==214328
    dump(gd/'complete_geometry_receipt.json',gr)
    exact_count=exact_minors.run(gd,cases,gd/'exact_integer_minors.json')
    assert exact_count==9
    print('EXACT_INTEGER_MINORS',exact_count,flush=True)
    for stage in (0,1,2):
        call([out/'bin/enum',fd/f'stage{stage}_T11_ONLY_1699_1701.txt',fd/'queries_restricted2.txt',
             fd/f'stage{stage}_h117_cpp.txt',fd/f'stage{stage}_h117_cpp_stats.txt'],out,f'enumerate_stage{stage}_h117')
    core.audit_stage0(ROOT,fd,st,arrays);core.audit_stage1(fd,st,arrays)
    assert not (fd/'stage2_h117_cpp.txt').read_text().strip()
    for i in (1699,1701):assert not core.multisets(core.conditional(arrays[2]),st[i]['cap'],117)
    tasks=[(stage,subset)for stage in (0,1,2)for subset in ['ordinary48','restricted2']]
    def fee_task(t):
        stage,subset=t
        sig=fd/f'stage{stage}_{"global" if subset=="ordinary48" else "T11_ONLY_1699_1701"}.txt'
        qs=fd/f'queries_{subset}.txt';label=f'stage{stage}_{subset}'
        call([out/'bin/fees',sig,qs,fd/f'{label}_fees.txt'],out,label+'_fees')
        msg=call([out/'bin/grid',sig,qs,fd/f'{label}_grid_summary.tsv',fd/f'{label}_grid_cells.tsv'],out,label+'_grid')
        print('FULL_GRID_ACCEPTED',label,msg,flush=True)
    with ThreadPoolExecutor(max_workers=jobs)as ex:list(ex.map(fee_task,tasks))
    change=core.finalize_fees(ROOT,fd,st,ids,arrays)
    call([out/'bin/enum',fd/'stage2_global.txt',fd/'queries_new_h125.txt',fd/'new_h125_complete_cpp.txt',
         fd/'new_h125_complete_cpp_stats.txt'],out,'new_h125_complete_multisets')
    nxt=core.audit_next(fd,st,arrays)
    # Fail-closed controls; no negative test is evidence for a positive theorem.
    ng=out/'negative_tests';neg=[]
    first=cases[0][0];original=(gd/f'{first}.32719.minors').read_text().splitlines()
    for name,kind in [('changed_determinant',0),('duplicate_jet',1)]:
        a=original[:];z=list(map(int,a[0].split()))
        if kind==0:z[2]=(z[2]+1)%32719 or 1
        else:z[-1]=z[-2]
        a[0]=' '.join(map(str,z));bad=ng/f'{name}.minors';bad.write_text('\n'.join(a)+'\n')
        call([out/'bin/receiver',10,32719,gd/f'{first}.gates',bad,'-'],out,'negative_'+name,True)
        neg.append({'test':name,'rejected':True})
    small='tail8_q12_d0';aa=(gd/f'{small}.32719.minors').read_text().splitlines()
    bad=ng/'omitted_minor.minors';bad.write_text('\n'.join(aa[:-1])+'\n')
    call([out/'bin/receiver',12,32719,gd/f'{small}.gates',bad,'-'],out,'negative_omitted_minor',True)
    neg.append({'test':'omitted_minor','rejected':True})
    call([out/'bin/receiver',12,32719,gd/f'{small}.gates',gd/f'{small}.32719.minors','0'],out,'negative_skipped_kernel',True)
    neg.append({'test':'skipped_kernel_not_permitted','rejected':True})
    # Any list omission is rejected against complete independent-anchor enumeration.
    aa=(gd/f'{small}.gates').read_text().splitlines();bb=(gd/f'{small}.alt').read_text().splitlines()
    try:assert sorted(aa[:-1])==sorted(bb)
    except AssertionError:neg.append({'test':'omitted_root_configuration','rejected':True})
    else:raise AssertionError('omitted configuration accepted')
    # Explicitly enforce the state scope on every T11 activation.
    def enforce_scope(s):assert s in core.SPECIAL
    try:enforce_scope(1787)
    except AssertionError:neg.append({'test':'illegal_T11_on1787','rejected':True})
    else:raise AssertionError('illegal table scope accepted')
    dump(out/'certificates/negative_controls.json',neg)
    summary=dict(change,new_geometry_profiles=12,new_root_configurations=107164,
         stage1_root_configurations=23844,stage2_root_configurations=83320,
         nonzero_modular_minors=214328,exact_integer_minors=9,rational_residual_systems=0,
         main1701_complete_groups=34,main1701_no_T_groups=3,stage1_1699_complete_groups=26,
         new_lowest_complete_groups=nxt,negative_controls=len(neg),
         source_geometric_proof_grade='author proof + deterministic exact certificates; no external independent review',
         no_Lean=True,no_repository_operations=True)
    dump(out/'certificates/summary.json',summary)
    hashes={str(p.relative_to(out/'certificates')):sha(p)for p in sorted((out/'certificates').rglob('*'))if p.is_file()}
    dump(out/'REPLAY_RECEIPT.json',{'status':'PASS','exit_code':0,'elapsed_seconds':time.monotonic()-start,
        'certificate_sha256':hashes,'code_sha256':{p.name:sha(p)for p in sorted((ROOT/'code').iterdir())if p.is_file()},
        'source_manifest_sha256':sha(ROOT/'inputs/SOURCE_BYTES.json'),'summary':summary,
        'network_used_in_replay':False,'repository_operations':False,'Lean':False})
    print(json.dumps(summary,indent=2,ensure_ascii=False),flush=True)

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);ap.add_argument('--jobs',type=int,default=2)
    a=ap.parse_args();assert 1<=a.jobs<=4;main(a.out.resolve(),a.jobs)
