#!/usr/bin/env python3
"""Offline regeneration of all quotient kernels and finite resource certificates.
Python >=3.10 and C++17; no Lean, network, repository, or external CAS.
A modules slice is not a full verification. --stage finish requires every case at both primes.
"""
from __future__ import annotations
import argparse,hashlib,importlib.util,itertools,json,platform,subprocess,sys,time
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
sp=importlib.util.spec_from_file_location('frozen_model',ROOT/'inputs/frozen_model.py');model=importlib.util.module_from_spec(sp);sp.loader.exec_module(model)
RAW=model.raw_signatures(ROOT/'inputs/frozen_signatures.json');STATES=model.all_states();OLD=model.read_frontier(ROOT/'inputs/h111_frontier.tsv')
assert len(OLD)==227
from check_boundary import is_family

def sha(p:Path)->str:return hashlib.sha256(p.read_bytes()).hexdigest()
def dump(p:Path,z:object)->None:
    p.parent.mkdir(parents=True,exist_ok=True);p.write_text(json.dumps(z,ensure_ascii=False,indent=2,sort_keys=True)+'\n')
def run(cmd:list,out:Path,label:str)->str:
    t=time.monotonic();r=subprocess.run([str(x)for x in cmd],text=True,capture_output=True)
    (out/'logs'/f'{label}.log').write_text(r.stdout+r.stderr)
    dump(out/'runs'/f'{label}.json',dict(command=[str(x)for x in cmd],exit_code=r.returncode,elapsed_seconds=time.monotonic()-t))
    if r.returncode:raise RuntimeError((label,r.returncode,r.stdout,r.stderr))
    return r.stdout

def init(out:Path):
    out.mkdir(parents=True,exist_ok=False)
    for d in ['bin','logs','runs','cases','certificates/modules/p257','certificates/modules/p263']:(out/d).mkdir(parents=True)
    for p in (257,263):run(['g++','-O3','-march=native','-std=c++17',f'-DPRIME={p}',ROOT/'code/quotient_module.cpp','-o',out/f'bin/qmod{p}'],out,f'compile_module{p}')
    run(['g++','-O3','-march=native','-std=c++17',ROOT/'code/fee_dp.cpp','-o',out/'bin/fee_dp'],out,'compile_fee')
    dump(out/'environment.json',dict(python=sys.version,platform=platform.platform(),compiler=subprocess.check_output(['g++','--version'],text=True).splitlines()[0]))
    dump(out/'FROZEN_INPUTS.json',{str(p.relative_to(ROOT)):sha(p)for d in ('code','inputs')for p in (ROOT/d).rglob('*')if p.is_file() and '__pycache__' not in p.parts})

def guard(out:Path):
    for rel,digest in json.loads((out/'FROZEN_INPUTS.json').read_text()).items():
        if sha(ROOT/rel)!=digest:raise AssertionError(('changed run input',rel))

def profiles():
    base=[[2,2],[1,2],[1,1,2],[1,1,1],[1,1,1,1],[1,1,1,1]];pairs=list(itertools.combinations(range(4),2));points=[(0,0),(0,1),(1,1),(2,2)];ans={}
    for e,c,name,d,k in RAW:
        if not is_family(name):continue
        assert e==4
        off=[x[:]for x in base];weighted=[0,2,0,2,0,0]
        if name=='S4':off[1][1]-=1
        elif name=='S5':off[2][2]-=1
        else:
            keep=pairs[int(name.split('_')[1][5:])]
            for j,(r,s)in enumerate(points):
                if j not in keep:off[r][s]-=1
        for j in (1,3,5):weighted[j]-=k[j]
        mu=[sum(x)+(1 if j in (1,3)else 0)for j,x in enumerate(off)]
        assert [4-x for x in mu]==d
        assert all(x>=0 for x in weighted)
        ans[name]=dict(off_upper=off,weighted_upper=weighted,cost=c)
    assert len(ans)==14 and ans==json.loads((ROOT/'inputs/profiles.json').read_text())
    return ans

def prepare(out:Path):
    guard(out);rr=[x for x in RAW if not is_family(x[2])];assert len(rr)==458
    (out/'signatures_noP4.txt').write_text(''.join(' '.join(map(str,[x[0],*x[1]]))+'\n'for x in rr))
    (out/'queries.txt').write_text(''.join(' '.join(map(str,[i,STATES[i]['h'],*STATES[i]['cap']]))+'\n'for i in OLD))
    for mode,name in [(0,'fees_noP4.txt'),(1,'fees_noP4_raw_reverse.txt')]:run([out/'bin/fee_dp',out/'signatures_noP4.txt',out/'queries.txt',out/'certificates'/name,mode],out,f'fees_mode{mode}')
    assert (out/'certificates/fees_noP4.txt').read_bytes()==(out/'certificates/fees_noP4_raw_reverse.txt').read_bytes()
    fees=[tuple(map(int,s.split()))for s in (out/'certificates/fees_noP4.txt').read_text().splitlines()];assert [i for i,h,n in fees]==OLD
    kills=[i for i,h,n in fees if n>h];assert len(kills)==22
    ids=sorted(set(kills+[1626]));prof=profiles();cases=[]
    for i in ids:
        st=STATES[i];a,d=model.initial_orders(st)
        for name,pf in prof.items():
            if any(x>c for x,c in zip(pf['cost'],st['cap'])):continue
            off=[[max(x-y,0)for x,y in zip(ar,mm)]for ar,mm in zip(a,pf['off_upper'])];weighted=[max(x-y,0)for x,y in zip(d,pf['weighted_upper'])];h=st['h']-4
            J=sum(x*(x+1)//2 for ar in off for x in ar)+sum(sum(max(x-2*j,0)for j in range((x+1)//2))for x in weighted)
            case=dict(state=i,name=name,h=h,off=off,weighted=weighted,constraints=J,columns=(h+1)**2);cases.append(case)
            txt=str(h)+'\n'+''.join(f'{r} {s} {weighted[r-3]if 2*s==r else off[r-3][s]}\n'for r in range(3,9)for s in range(r//2+1))
            f=f'case_{i}_{name}.txt';(out/'cases'/f).write_text(txt);assert (out/'cases'/f).read_bytes()==(ROOT/'inputs/cases'/f).read_bytes()
    assert cases==json.loads((ROOT/'inputs/quotient_cases.json').read_text()) and len(cases)==141
    dump(out/'certificates/case_generation.json',dict(status='PASS_ALL227_FEE_AND_141_QUOTIENT_CASES',input_states=227,raw_signature_count=472,removed_family_signatures=14,remaining_raw_signatures=458,eliminated_candidates=kills,additional_boundary_state=1626,quotient_systems=len(cases),case_keys=[f'{x["state"]}_{x["name"]}'for x in cases]))
    print('PASS_ALL227_FEE_AND_141_QUOTIENT_CASES',flush=True)

def parse_trace(path:Path,case:dict,p:int)->dict:
    ls=path.read_text().splitlines();assert ls[0]==f'p {p} h {case["h"]} constraints {case["constraints"]}'
    assert len(ls)==case['constraints']+2 and ls[-1].startswith('weights ')
    h=case['h'];w=list(range(0,2*h+1,2));nz=0;ind=[]
    for j,line in enumerate(ls[1:-1]):
        a=list(map(int,line.split()));assert a[0]==j
        if a[1]==-1:assert len(a)==2;continue
        assert len(a)==4;_,b,d,old=a;assert 0<=b<=h and 0<d<p and old==w[b]
        if old<=2*h:ind.append(j)
        w[b]+=1;nz+=1
    assert w==list(map(int,ls[-1].split()[1:]));assert sum(w)==h*(h+1)+nz
    nu=sum(max(0,2*h-v+1)for v in w);assert nu==0 and len(ind)==(h+1)**2
    return dict(state=case['state'],profile=case['name'],prime=p,quotient_degree=h,rows=case['constraints'],columns=case['columns'],nullity=nu,minimum_terminal_weight=min(w),maximum_terminal_weight=max(w),independent_truncated_rows=len(ind),trace_sha256=sha(path))

def modules(out:Path,p:int,start:int,stop:int,workers:int):
    guard(out);cases=json.loads((ROOT/'inputs/quotient_cases.json').read_text());assert 0<=start<=stop<=len(cases)
    def one(x):
        key=f'{x["state"]}_{x["name"]}';target=out/f'certificates/modules/p{p}/{key}.txt'
        run([out/f'bin/qmod{p}',out/f'cases/case_{key}.txt',target,int(p==263)],out,f'module_{key}_p{p}')
        return parse_trace(target,x,p)
    with ThreadPoolExecutor(max_workers=workers)as ex:rr=list(ex.map(one,cases[start:stop]))
    dump(out/f'runs/module_slice_p{p}_{start}_{stop}.json',dict(count=len(rr),start=start,stop=stop,prime=p,records=rr))
    print('PASS_QUOTIENT_MODULE_SLICE',p,start,stop,flush=True)

def finish(out:Path):
    guard(out);cases=json.loads((ROOT/'inputs/quotient_cases.json').read_text());receipts=[]
    for p in (257,263):
        for case in cases:receipts.append(parse_trace(out/f'certificates/modules/p{p}/{case["state"]}_{case["name"]}.txt',case,p))
    dump(out/'certificates/module_receipts.json',receipts)
    from check_boundary import check
    boundary=check(out/'certificates')
    fees=[tuple(map(int,s.split()))for s in (out/'certificates/fees_noP4.txt').read_text().splitlines()]
    kills=[i for i,h,n in fees if n>h];targets=sorted(set(kills+[1626]));prof=profiles()
    for i in targets:
        need={name for name,pf in prof.items()if all(a<=b for a,b in zip(pf['cost'],STATES[i]['cap']))}
        actual={case['name']for case in cases if case['state']==i};assert actual==need
    final=[i for i in OLD if i not in kills];assert len(final)==205 and [i for i in final if STATES[i]['h']==111]==[1626]
    header='idx\th\tE\tv3,v4,v5,v6,v7,v8\n';text=header+''.join(f'{i}\t{STATES[i]["h"]}\t0\t'+','.join(map(str,STATES[i]['v']))+'\n'for i in final)
    (out/'certificates/final_E0_frontier.tsv').write_text(text)
    summary=dict(status='PASS_QUARTIC_COFACTOR_JETS_FRONTIER205',input_E0_states=227,remaining_E0_states=205,eliminated_states=[dict(state=i,h=h,no_family_minimum_degree=n,gap=n-h)for i,h,n in fees if n>h],minimum_equality_h=111,maximum_vertical_sum=83,same_fixed_G_cover_upper_bound=8,COVER7_proved=False,H112_proved=False,remaining_minimum_state=1626,profile_types=14,profiled_quotient_systems=141,complete_prime_system_runs=282,primes=[257,263],max_rows=max(x['rows']for x in receipts),max_columns=max(x['columns']for x in receipts),boundary_factor_degree_interval=[5,34],boundary_maximum_unselected_degree=7,independent_boundary_fee_comparisons=39600,original_nj_finite_bound=False,original_nj_descent=False,Lean=False,repository_writes=False,external_independent_math_review=False,batch_this_session_consumed=2,batch_global_consumed='unknown; shared four-session count not inferred')
    dump(out/'certificates/summary.json',summary)
    print(summary['status'],flush=True)

def compare(out:Path):
    files=[]
    for f in sorted((ROOT/'certificates').rglob('*')):
        if not f.is_file():continue
        rel=f.relative_to(ROOT);g=out/rel
        assert g.is_file()and f.read_bytes()==g.read_bytes(),('certificate mismatch',str(rel))
        files.append(dict(path=str(rel),sha256=sha(g)))
    dump(out/'BYTE_COMPARISON.json',dict(status='PASS_BYTE_IDENTICAL_CERTIFICATE_REPLAY',files_compared=len(files),files=files))
    print('PASS_BYTE_IDENTICAL_CERTIFICATE_REPLAY',len(files),flush=True)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);ap.add_argument('--stage',choices=['init','prepare','modules','finish','compare','all'],default='all');ap.add_argument('--prime',type=int,choices=[257,263],default=257);ap.add_argument('--start',type=int,default=0);ap.add_argument('--stop',type=int,default=141);ap.add_argument('--workers',type=int,default=4);a=ap.parse_args()
    if a.stage in ['all','init']:init(a.out)
    if a.stage in ['all','prepare']:prepare(a.out)
    if a.stage=='all':
        for p in (257,263):modules(a.out,p,0,141,a.workers)
    if a.stage=='modules':modules(a.out,a.prime,a.start,a.stop,a.workers)
    if a.stage in ['all','finish']:finish(a.out)
    if a.stage=='compare':compare(a.out)
if __name__=='__main__':main()
