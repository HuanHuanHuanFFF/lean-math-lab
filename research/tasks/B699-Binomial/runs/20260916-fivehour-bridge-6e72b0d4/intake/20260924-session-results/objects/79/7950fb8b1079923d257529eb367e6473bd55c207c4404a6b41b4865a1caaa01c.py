#!/usr/bin/env python3
"""Rebuild all modular-module certificates and exact resource checks.
Default mode creates a new output directory and completes every stage.
Staged execution is provided only to make interrupted tool calls recoverable.
"""
from __future__ import annotations
import argparse,hashlib,json,subprocess,sys,time,platform
from pathlib import Path
import model
ROOT=Path(__file__).resolve().parents[1]

def dump(p,obj):
    p.parent.mkdir(parents=True,exist_ok=True)
    p.write_text(json.dumps(obj,ensure_ascii=False,indent=2,sort_keys=True)+'\n')

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def cases():
    result=[];states=model.all_states()
    for ln in (ROOT/'inputs/cases.tsv').read_text().splitlines()[1:]:
        x=ln.split();label=x[0];n=list(map(int,x[1:]));idx,h=n[:2];v=n[2:8];K=n[8:11];s=n[11]
        assert states[idx]['h']==h and states[idx]['v']==v
        result.append(dict(label=label,index=idx,h=h,v=v,K=K,S5=s))
    assert len(result)==111
    return result

def init(out):
    out.mkdir(parents=True,exist_ok=False)
    for sub in ['bin','traces','records','certificates','logs']:(out/sub).mkdir()
    for prime in (257,263):
        subprocess.run(['g++','-std=c++17','-O3','-march=native',f'-DPRIME={prime}',str(ROOT/'code/source_module.cpp'),'-o',str(out/f'bin/module{prime}')],check=True)
    subprocess.run(['g++','-std=c++17','-O3',str(ROOT/'code/aggregate.cpp'),'-o',str(out/'bin/aggregate')],check=True)
    code_hashes={p.name:sha(p) for p in (ROOT/'code').glob('*') if p.is_file()}
    dump(out/'code_hashes.json',code_hashes)
    dump(out/'environment.json',dict(python=sys.version,platform=platform.platform(),compiler=subprocess.check_output(['g++','--version'],text=True).splitlines()[0]))

def guard(out):
    for name,digest in json.loads((out/'code_hashes.json').read_text()).items():assert sha(ROOT/'code'/name)==digest,name

def parse_trace(path,case,prime,reverse):
    lines=path.read_text().splitlines();head=lines[0].split();J=int(head[-1]);h=case['h']
    assert head==['p',str(prime),'h',str(h),'constraints',str(J)]
    jets=model.jets(model.all_states()[case['index']],case['K'],case['S5'],bool(reverse))
    assert J==len(jets) and len(lines)==J+2
    w=[2*b for b in range(h+1)];nonzero=0;bounded_pivots=[]
    for i,ln in enumerate(lines[1:-1]):
        z=list(map(int,ln.split()));assert z[0]==i
        if z[1]<0:
            assert z==[i,-1];continue
        _,a,d,weight=z
        assert 0<=a<=h and 1<=d<prime and w[a]==weight
        if weight<=2*h:bounded_pivots.append(i)
        w[a]+=1;nonzero+=1
    stored=list(map(int,lines[-1].split()[1:]));assert lines[-1].split()[0]=='weights' and stored==w
    assert sum(w)==h*(h+1)+nonzero
    nullity=sum(max(0,2*h-a+1) for a in w)
    assert (h+1)**2-len(bounded_pivots)==nullity
    if case['label']!='1615_boundary':assert nullity==0
    else:
        assert J==12097 and (h+1)**2==12100 and nullity==3 and w[h]==2*h
    return dict(**case,prime=prime,reverse_sources=bool(reverse),constraints=J,variables=(h+1)**2,
                rank=(h+1)**2-nullity,kernel_dimension_mod_p=nullity,weights=w,
                independent_module_constraints=nonzero,trace_sha256=sha(path),
                bounded_independent_rows=bounded_pivots)

def modules(out,start,stop):
    guard(out);allcases=cases()
    for k in range(start,min(stop,len(allcases))):
        case=allcases[k]
        for prime,reverse in [(257,0),(263,1)]:
            name=f"{case['label']}_p{prime}";target=out/'traces'/f'{name}.txt'
            cmd=[str(out/f'bin/module{prime}'),str(case['h']),*map(str,case['v']),*map(str,case['K']),str(case['S5']),str(target),str(reverse)]
            r=subprocess.run(cmd,capture_output=True,text=True,check=True)
            (out/'logs'/f'{name}.log').write_text(r.stdout+r.stderr)
            dump(out/'records'/f'{name}.json',parse_trace(target,case,prime,reverse))
        if (k+1)%10==0 or k+1==len(allcases):print('CERTIFIED_CASES',k+1,len(allcases),flush=True)

def finish(out,dense=False):
    guard(out);states=model.all_states();old=model.read_frontier(ROOT/'inputs/h73/final_E0_frontier.tsv');assert len(old)==343
    cs=cases();records=[]
    for case in cs:
        for prime,reverse in [(257,0),(263,1)]:
            p=out/'traces'/f"{case['label']}_p{prime}.txt"
            record=parse_trace(p,case,prime,reverse)
            assert record==json.loads((out/'records'/f"{case['label']}_p{prime}.json").read_text());records.append(record)
    # The 109 baseline tests are exactly all current states with J >= dim.
    count_candidates=[i for i in old if len(model.jets(states[i]))>=(states[i]['h']+1)**2]
    baseline=[c['index'] for c in cs if c['label'].isdigit()]
    assert baseline==count_candidates and len(baseline)==109
    raw=model.raw_signatures(ROOT/'inputs/frozen_signatures.json');signfile=out/'signatures.tsv';signfile.write_text(model.signature_text(raw))
    aggregates={}
    for idx in (1610,1615):
        st=states[idx];files=[]
        for rev in (0,1):
            target=out/'certificates'/f'aggregate_{idx}_{rev}.tsv';files.append(target)
            subprocess.run([str(out/'bin/aggregate'),str(st['h']),*map(str,st['cap']),str(signfile),str(target),str(rev)],check=True,capture_output=True)
        assert files[0].read_bytes()==files[1].read_bytes()
        a=model.read_aggregates(files[0]);assert a
        if idx==1610:
            assert len(a)==8 and all(x['S5']>=1 and x['kappa'][1]>=2 for x in a)
            py=model.aggregate_python(st,raw)
            canon=lambda zz:sorted(zz,key=lambda z:tuple(z['cost']+z['kappa']+[z['S5'],z['degree']]))
            assert canon(a)==py
        else:assert len(a)==66 and any(x['S5']==0 and x['kappa']==[0,0,0] for x in a)
        aggregates[idx]=a
    # Exact two new rows in state1610: ordinary center boost and true S5 root.
    st=states[1610];base=set(model.jets(st));extra=set(model.jets(st,(0,2,0),1))-base
    assert extra=={(5,6,0,0,31),(6,9,3,0,14)}
    killed=sorted(baseline+[1610]);assert len(killed)==110
    final=[i for i in old if i not in killed];assert len(final)==233 and min(states[i]['h'] for i in final)==109
    text='idx\th\tE\tv3,v4,v5,v6,v7,v8\n'
    for i in final:text+=f"{i}\t{states[i]['h']}\t0\t"+','.join(map(str,states[i]['v']))+'\n'
    (out/'certificates/final_E0_frontier.tsv').write_text(text)
    summary=dict(status='PASS_FULL_JET_MODULE_H109',input_E0_states=343,baseline_full_rank_eliminations=109,
        enhanced_state_eliminations=[1610],eliminated_states=killed,final_E0_states=233,minimum_equality_h=109,
        maximum_vertical_sum=87,same_fixed_G_cover_upper_bound=8,COVER7_proved=False,Lean=False,
        original_NC9_finite_bound=False,external_independent_full_review=False,repository_writes=False,
        modular_problems=111,modular_problem_prime_runs=222,full_rank_problem_prime_runs=220,
        primes=[257,263],source_orders=['forward','reverse'],new_geometric_factor_classification=False,
        maximum_square_full_rank_size=max(r['variables'] for r in records if r['kernel_dimension_mod_p']==0),
        boundary_state1615=dict(h=109,constraints=12097,variables=12100,exact_Q_kernel_dimension=3,
            exact_Q_monic_affine_dimension=2,raw_aggregate_count=66),
        enhanced_state1610=dict(base_constraints=11879,variables=11881,extra_jets=sorted(extra),
            aggregate_count=8,mandatory_S5_at_least=1,mandatory_kappa6_at_least=2))
    dump(out/'certificates/summary.json',summary)
    dump(out/'certificates/rank_summary.json',[{k:v for k,v in r.items() if k not in ['bounded_independent_rows']} for r in records])
    dump(out/'certificates/mandatory_1610.json',dict(state=st,aggregates=aggregates[1610],extra_jets=sorted(extra),python_tuple_DP_matches=True))
    dump(out/'certificates/boundary1615.json',dict(state=states[1615],aggregates=aggregates[1615],
        rank_records=[{k:v for k,v in r.items() if k not in ['bounded_independent_rows']} for r in records if r['index']==1615],
        actual_G_or_NC9_realization_claimed=False))
    if dense:
        subprocess.run([sys.executable,str(ROOT/'code/dense_reference.py'),'--out',str(out/'certificates/dense_reference.json')],check=True)
    print(summary['status'],'remaining233 minimum_h109',flush=True)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);ap.add_argument('--stage',choices=['all','init','modules','finish'],default='all');ap.add_argument('--start',type=int,default=0);ap.add_argument('--stop',type=int,default=111);ap.add_argument('--dense',action='store_true');a=ap.parse_args()
    if a.stage in ['all','init']:init(a.out)
    if a.stage in ['all','modules']:modules(a.out,a.start,a.stop)
    if a.stage in ['all','finish']:finish(a.out,a.dense)
if __name__=='__main__':main()
