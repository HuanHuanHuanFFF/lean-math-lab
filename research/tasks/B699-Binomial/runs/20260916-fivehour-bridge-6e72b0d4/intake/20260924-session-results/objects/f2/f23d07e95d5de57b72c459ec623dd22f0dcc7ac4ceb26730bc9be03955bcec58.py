#!/usr/bin/env python3
"""Regenerate this round only. Python 3.10+, C++17; no Lean/network/repository.
A slice is not complete. `finish` requires both primes on every quotient case.
"""
from __future__ import annotations
import argparse,concurrent.futures,json,os,platform,shutil,subprocess,sys,time
from pathlib import Path
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
import frozen_model as model
from checks import dump,sha,gates,ranks,trace,reference_fees
STATES=model.all_states()

def load_inputs():
    for x in json.loads((ROOT/'inputs/SOURCE_BYTES.json').read_text()):
        assert sha(ROOT/x['path'])==x['sha256'],('modified adopted bytes',x['path'])
    old=json.loads((ROOT/'inputs/signatures478.json').read_text());assert len(old)==478
    for e,c,n,d,k in old:
        assert e>=4 and len(c)==len(d)==len(k)==6 and all(x>=0 for x in c+d+k)
        assert c==[2*a+b for a,b in zip(d,k)] and all(k[i]==0 for i in(0,2,4))
    ids=[]
    for l in(ROOT/'inputs/frontier173.tsv').read_text().splitlines()[1:]:
        i,h,E,v=l.split();i,h,E=int(i),int(h),int(E);vv=list(map(int,v.split(',')))
        st=STATES[i];assert(st['h'],st['E'],st['v'])==(h,E,vv)and E==0
        ids.append(i)
    assert len(ids)==len(set(ids))==173 and ids[:2]==[1633,1636]
    return old,ids

def run(cmd,out,label,check=True):
    cmd=list(map(str,cmd));t=time.monotonic();r=subprocess.run(cmd,capture_output=True,text=True)
    (out/'logs'/f'{label}.log').write_text(r.stdout+r.stderr)
    dump(out/'runs'/f'{label}.json',{'command':cmd,'exit_code':r.returncode,'elapsed_seconds':time.monotonic()-t})
    if check and r.returncode:raise RuntimeError((label,r.returncode,r.stderr))
    return r

def init(out):
    out.mkdir(parents=True,exist_ok=False)
    for p in ['bin','logs','runs','cases','certificates/geometry','certificates/fees','certificates/modules/p257','certificates/modules/p263','certificates/diagnostics']:(out/p).mkdir(parents=True)
    load_inputs()
    builds=[('gates','near3_gates.cpp',[]),('gates_alt','near3_gates_alt.cpp',['-DANCHOR_ROW=7']),('jets32749','near3_jets.cpp',[]),('jets32719','near3_jets.cpp',['-DMODULUS=32719']),('verify_minors','verify_minors.cpp',[]),('fees','fee_dp.cpp',[]),('aggregate','aggregate.cpp',[])]
    builds +=[(f'module{p}','quotient_module.cpp',[f'-DPRIME={p}'])for p in(257,263)]
    for name,src,opts in builds:run(['g++','-O3','-march=native','-std=c++17',*opts,ROOT/'code'/src,'-o',out/'bin'/name],out,'compile_'+name)
    dump(out/'environment.json',{'python':sys.version,'platform':platform.platform(),'compiler':subprocess.check_output(['g++','--version'],text=True).splitlines()[0],'network':False,'Lean':False,'repository_operations':False})
    dump(out/'RUN_INPUT_HASHES.json',{str(p.relative_to(ROOT)):sha(p)for d in('code','inputs')for p in sorted((ROOT/d).rglob('*'))if p.is_file()and'__pycache__'not in p.parts})

def guard(out):
    for rel,h in json.loads((out/'RUN_INPUT_HASHES.json').read_text()).items():assert sha(ROOT/rel)==h,rel

def geometry(out):
    guard(out);dest=out/'certificates/geometry'
    run([out/'bin/gates',16,dest/'gates.txt'],out,'gates_q16')
    run([out/'bin/gates_alt',16,3,dest/'gates_alt.txt'],out,'gates_reanchor_q16')
    g=gates(dest/'gates.txt');assert sorted((dest/'gates.txt').read_text().splitlines())==sorted((dest/'gates_alt.txt').read_text().splitlines())
    records=[]
    for p in(32749,32719):
        run([out/f'bin/jets{p}',dest/'gates.txt',dest/f'minors{p}.txt',16],out,f'jets_q16_{p}')
        records.append(ranks(dest/f'minors{p}.txt',p))
    z=run([out/'bin/verify_minors',dest/'gates.txt',dest/'minors32719.txt',16,3],out,'independent_local_minors')
    assert 'count=474'in z.stdout
    dump(dest/'receipt.json',{'status':'PASS_R3K16_COMPLETE_ROOTS_AND_MINORS','gates':g,'ranks':records,'cross_anchor_set_equal':True,'independent_local_minors':474})
    print('PASS_R3K16_COMPLETE_ROOTS_AND_MINORS',flush=True)

def signatures(old):
    new=[];mapping=[]
    for i,x in enumerate(old):
        e,c,n,d,k=x;start=len(new)
        if n=='near16_24_early'and d==[1,0,0,0,0,0]:
            assert e==16 and not any(k)
            new.append([17,c,'near3_17plus',d,k])
            for j in(1,3,5):
                cc=c.copy();kk=k.copy();cc[j]+=1;kk[j]+=1
                new.append([16,cc,'near3_16_kappa',d,kk])
        else:new.append(x)
        mapping.append({'old':i,'new':list(range(start,len(new)))})
    assert len(new)==481
    return new,mapping

def fee_values(path):return {i:(h,e)for i,h,e in(map(int,l.split())for l in path.read_text().splitlines())}

def fees(out):
    guard(out);old,ids=load_inputs();raw,mapping=signatures(old);no=[x for x in raw if x[2]!='S5'];assert len(no)==480
    dest=out/'certificates/fees';dump(dest/'signatures481.json',raw);dump(dest/'mapping.json',mapping)
    queries=dest/'queries173.txt';queries.write_text(''.join(' '.join(map(str,[i,STATES[i]['h'],*STATES[i]['cap']]))+'\n'for i in ids))
    for label,items in[('all',raw),('withoutS5',no)]:
        spec=dest/(label+'.txt');spec.write_text(''.join(' '.join(map(str,[x[0],*x[1]]))+'\n'for x in items))
        for mode in(0,1):run([out/'bin/fees',spec,queries,dest/f'{label}_fees_{mode}.txt',mode],out,f'fees_{label}_{mode}')
        assert(dest/f'{label}_fees_0.txt').read_bytes()==(dest/f'{label}_fees_1.txt').read_bytes()
    allv=fee_values(dest/'all_fees_0.txt');nov=fee_values(dest/'withoutS5_fees_0.txt');assert list(allv)==list(nov)==ids
    geometric=[i for i,(h,e)in allv.items()if e>h];assert geometric==[1633,1951,1993]
    cases=[]
    U=((2,2),(1,2),(1,1,1),(1,1,1),(1,1,1,1),(1,1,1,1));WU=(0,2,0,1,0,0)
    frozen=json.loads((ROOT/'inputs/frozen_profiles.json').read_text())['S5'];assert frozen['off_upper']==list(map(list,U))and frozen['weighted_upper']==list(WU)
    for i in ids:
        h,e=nov[i]
        if e<=h or i in geometric:continue
        st=STATES[i];assert all(a<=b for a,b in zip(frozen['cost'],st['cap']))
        M,B=model.initial_orders(st);off=[[max(a-b,0)for a,b in zip(r,u)]for r,u in zip(M,U)];w=[max(a-b,0)for a,b in zip(B,WU)];q=h-4
        pts=[(r,s,w[r-3]if 2*s==r else off[r-3][s])for r in range(3,9)for s in range(r//2+1)]
        nr=sum(sum(max(m-(2 if 2*s==r else 1)*j,0)for j in range(m))for r,s,m in pts)
        cases.append({'state':i,'h':h,'minimum_without_S5':e,'quotient_degree':q,'constraints':nr,'columns':(q+1)**2,'points':pts,'off':off,'weighted':w})
        (out/f'cases/{i}.txt').write_text(str(q)+'\n'+''.join(f'{r} {s} {m}\n'for r,s,m in pts))
    assert len(cases)==46
    dump(dest/'quotient_cases.json',cases)
    dump(dest/'fee_summary.json',{'input_states':173,'geometric_fee_deletions':geometric,'S5_required_cases':[x['state']for x in cases],'all_signatures':481,'without_S5_signatures':480,'both_fee_modes_identical':True})
    # Preliminary diagnostics use the unchanged 478-signature model on current, open states only.
    agfile=dest/'old478_aggregate_signatures.txt';agfile.write_text(model.signature_text(old))
    for i in(1633,1636):
        st=STATES[i]
        for rev in(0,1):run([out/'bin/aggregate',st['h'],*st['cap'],agfile,out/f'certificates/diagnostics/aggregates_{i}_{rev}.txt',rev],out,f'aggregates_{i}_{rev}')
        assert(out/f'certificates/diagnostics/aggregates_{i}_0.txt').read_bytes()==(out/f'certificates/diagnostics/aggregates_{i}_1.txt').read_bytes()
    print('PASS_CURRENT_173_FEE_QUERIES',flush=True)

def modules(out,p,start,stop,workers):
    guard(out);cases=json.loads((out/'certificates/fees/quotient_cases.json').read_text());stop=min(stop,len(cases));assert 0<=start<=stop
    def one(c):
        i=c['state'];target=out/f'certificates/modules/p{p}/{i}.txt'
        run([out/f'bin/module{p}',out/f'cases/{i}.txt',target,int(p==263)],out,f'module_{i}_{p}')
        return trace(target,c,p)
    with concurrent.futures.ThreadPoolExecutor(max_workers=workers)as ex:r=list(ex.map(one,cases[start:stop]))
    dump(out/f'runs/module_slice_{p}_{start}_{stop}.json',{'count':len(r),'start':start,'stop':stop,'prime':p,'records':r})
    print('PASS_QUOTIENT_MODULE_SLICE',p,start,stop,flush=True)

def reference(out):
    guard(out);raw=json.loads((out/'certificates/fees/signatures481.json').read_text());ans=[]
    for i,noS in[(1633,False),(1636,True)]:
        rr=[x for x in raw if not(noS and x[2]=='S5')]
        txt,res=reference_fees(rr,STATES[i]['cap']);(out/f'certificates/fees/reference_{i}.txt').write_text(txt)
        ans.append({'state':i,**res,'S5_deleted':noS})
    assert ans[0]['minimum_eight_degree']==113 and ans[1]['minimum_eight_degree']==122
    assert sum(x['comparisons']for x in ans)==46494
    dump(out/'certificates/fees/independent_reference.json',{'status':'PASS_46494_INDEPENDENT_FEE_CELLS','records':ans,'comparisons':46494})
    from tests import exercise
    exercise(out)
    print('PASS_REFERENCE_AND_NEGATIVE_CHECKS',flush=True)

def finish(out):
    guard(out);old,ids=load_inputs();g=gates(out/'certificates/geometry/gates.txt')
    for p in(32749,32719):ranks(out/f'certificates/geometry/minors{p}.txt',p)
    assert json.loads((out/'certificates/geometry/receipt.json').read_text())['independent_local_minors']==474
    cases=json.loads((out/'certificates/fees/quotient_cases.json').read_text());rec=[trace(out/f'certificates/modules/p{p}/{c["state"]}.txt',c,p)for p in(257,263)for c in cases]
    dump(out/'certificates/module_receipts.json',rec)
    allv=fee_values(out/'certificates/fees/all_fees_0.txt');nov=fee_values(out/'certificates/fees/withoutS5_fees_0.txt')
    kg={i for i,(h,e)in allv.items()if e>h};kq={c['state']for c in cases};assert not kg&kq and all(nov[i][1]>nov[i][0]for i in kq)
    removed=sorted(kg|kq);rem=[i for i in ids if i not in removed];assert len(removed)==49 and len(rem)==124
    assert min(STATES[i]['h']for i in rem)==113 and max(sum(STATES[i]['v'])for i in rem)==79
    nxt=[i for i in rem if STATES[i]['h']==113];assert nxt==[1643,1644,1646,1650,1651]
    head='idx\th\tE\tv3,v4,v5,v6,v7,v8\n'
    (out/'certificates/final_E0_frontier.tsv').write_text(head+''.join(f'{i}\t{STATES[i]["h"]}\t0\t'+','.join(map(str,STATES[i]['v']))+'\n'for i in rem))
    dump(out/'certificates/removed_states.json',[{'state':i,'h':STATES[i]['h'],'reason':'R3K16_fee'if i in kg else 'S5_required_but_complete_cofactor_kernel_zero','minimum_degree':allv[i][1]if i in kg else nov[i][1]}for i in removed])
    assert json.loads((out/'certificates/fees/independent_reference.json').read_text())['comparisons']==46494
    controls=json.loads((out/'certificates/controls.json').read_text());assert controls['all_negative_rejected']
    summary={'status':'PASS_R3K16_S5_COFACTOR_H113_FRONTIER124','old_E0_states':173,'remaining_E0_states':124,'removed_states':removed,'R3K16_fee_deletions':sorted(kg),'S5_cofactor_state_deletions':sorted(kq),'geometry_systems':474,'geometry_full_rank_prime_checks':948,'geometry_independent_reconstructed_minors':474,'cofactor_systems':46,'cofactor_full_rank_prime_checks':92,'largest_cofactor_rows':max(x['rows']for x in rec),'largest_cofactor_columns':max(x['columns']for x in rec),'independent_fee_cell_checks':46494,'small_dense_comparisons':controls['small_dense_comparisons'],'negative_tests':controls['negative_count'],'minimum_equality_h':113,'maximum_vertical_sum':79,'fixed_G_cover':8,'COVER7_proved':False,'next_states':[{'state':i,**STATES[i],'current_minimum_fee':allv[i][1]}for i in nxt],'unbounded_original_nj':True,'original_nj_descent':False,'auxiliary_same_point_descent':False,'Lean':False,'external_independent_review':False,'repository_operations':False,'local_batch_round':4,'shared_global_round_count':'unknown'}
    dump(out/'certificates/summary.json',summary)
    print(summary['status'],flush=True)

def compare(out):
    expected=[p for p in(ROOT/'certificates').rglob('*')if p.is_file()]
    assert expected
    for p in expected:
        q=out/p.relative_to(ROOT);assert q.is_file()and p.read_bytes()==q.read_bytes(),str(p.relative_to(ROOT))
    actual=[p for p in(out/'certificates').rglob('*')if p.is_file()];assert len(actual)==len(expected)
    dump(out/'BYTE_COMPARISON.json',{'status':'PASS_BYTE_IDENTICAL_FULL_ROUND_REPLAY','certificate_files':len(expected),'all_byte_identical':True,'files':{str(p.relative_to(ROOT)):sha(p)for p in sorted(expected)}})
    print('PASS_BYTE_IDENTICAL_FULL_ROUND_REPLAY',len(expected),flush=True)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);ap.add_argument('--stage',choices=['all','init','geometry','fees','modules','reference','finish','compare'],default='all');ap.add_argument('--prime',type=int,choices=[257,263],default=257);ap.add_argument('--start',type=int,default=0);ap.add_argument('--stop',type=int,default=46);ap.add_argument('--workers',type=int,default=4);args=ap.parse_args();o=args.out
    if args.stage in('all','init'):init(o)
    if args.stage in('all','geometry'):geometry(o)
    if args.stage in('all','fees'):fees(o)
    if args.stage=='modules':modules(o,args.prime,args.start,args.stop,args.workers)
    if args.stage=='all':
        for p in(257,263):modules(o,p,0,46,args.workers)
    if args.stage in('all','reference'):reference(o)
    if args.stage in('all','finish'):finish(o)
    if args.stage=='compare':compare(o)
if __name__=='__main__':main()
