#!/usr/bin/env python3
"""Regenerate this round only; Python standard library and C++17.
No network, repository operation, Lean, or historical whole-chain replay.
"""
from __future__ import annotations
import argparse,hashlib,itertools,json,platform,subprocess,sys,time
from pathlib import Path
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
import frozen_model as model
from verify_geometry import verify_dir,check_gate,check_minor

def dump(p,x):p.write_text(json.dumps(x,indent=2,ensure_ascii=False)+'\n')
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def call(cmd,out,label):
    t=time.monotonic();r=subprocess.run(list(map(str,cmd)),text=True,capture_output=True)
    (out/'logs'/f'{label}.log').write_text(r.stdout+r.stderr)
    dump(out/'runs'/f'{label}.json',{'exit_code':r.returncode,'elapsed_seconds':time.monotonic()-t,'command':list(map(str,cmd))})
    if r.returncode:raise RuntimeError((label,r.returncode,r.stderr))
    return r.stdout

def strengthen(raw):
    patterns=([0,1,1,0,0,0],[0,1,0,0,1,0],[0,0,1,0,1,0])
    new=[];mapping=[]
    for ix,(e,c,name,d,k)in enumerate(raw):
        before=len(new)
        if name in('double5','double67')and d in patterns and not any(k):
            assert e==(5 if name=='double5'else 6)
            for j in(1,3,5):
                cc=c.copy();kk=k.copy();cc[j]+=1;kk[j]+=1
                new.append([e,cc,name+'_DOUBLE457_kappa',d,kk])
        else:new.append([e,c,name,d,k])
        mapping.append({'old_index':ix,'new_indices':list(range(before,len(new)))})
    assert len(raw)==481 and len(new)==493
    return new,mapping

def price_certificate(raw):
    C=(0,2,8,0,8,5);pi=[0,6,2,4];records=[]
    for ix,(e,c,name,d,k)in enumerate(raw):
        assert c==[2*a+b for a,b in zip(d,k)]and e>=4
        if any(a>b for a,b in zip(c,C)):continue
        a=c[1]+c[2];b=c[4]+c[5];lhs=2*e+13*a+12*b;rhs=64+pi[b%4]
        assert lhs>=rhs,(ix,lhs,rhs)
        records.append({'index':ix,'e':e,'cost':c,'a':a,'b':b,'lhs':lhs,'rhs':rhs,'slack':lhs-rhs})
    assert len(records)==108
    sub=[{'r':r,'s':s,'lhs':pi[r]+pi[s],'rhs':pi[(r+s)%4]}for r in range(4)for s in range(4)]
    assert all(x['lhs']>=x['rhs']for x in sub)
    bounds=[{'B':b,'twice_degree_lower_bound':512-13*10-12*b+pi[b%4]}for b in range(14)]
    assert min(x['twice_degree_lower_bound']for x in bounds)==232
    return {'state':1651,'capacity':C,'signatures_checked':records,'pi':pi,'subadditivity':sub,'all_B_bounds':bounds,'degree_lower_bound':116,'available_degree':113}

def reference(raw):
    C=(0,2,8,0,8,5);grid=list(itertools.product(*(range(c+1)for c in C)));zero=(0,)*6
    items=sorted({(e,tuple(c))for e,c,*_ in raw if all(a<=b for a,b in zip(c,C))})
    exact={zero:0};tables=[]
    for n in range(9):
        lower={c:exact.get(c,10**6)for c in grid}
        for j in range(6):
            for c in grid:
                if c[j]:
                    pred=list(c);pred[j]-=1;lower[c]=min(lower[c],lower[tuple(pred)])
        tables.extend((n,*c,lower[c])for c in grid)
        nxt={}
        if n<8:
            for c,e0 in exact.items():
                for e,co in items:
                    u=tuple(a+b for a,b in zip(c,co))
                    if any(a>b for a,b in zip(u,C)):continue
                    v=e0+e
                    if v<nxt.get(u,10**6):nxt[u]=v
        exact=nxt
    assert len(tables)==13122 and tables[-1][-1]==116
    # A concrete optimal weak witness via an independent backtracking evaluator.
    from functools import lru_cache
    @lru_cache(None)
    def best(n,c):
        if not n:return 0,()
        ans=(10**6,())
        for ix,(e,co,*_)in enumerate(raw):
            rem=tuple(a-b for a,b in zip(c,co))
            if min(rem)<0:continue
            v,seq=best(n-1,rem)
            if e+v<ans[0]:ans=(e+v,(ix,)+seq)
        return ans
    need,witness=best(8,C);assert need==116
    assert sum(raw[i][0]for i in witness)==116
    return tables,{'state':1651,'subcapacities':len(grid),'comparisons':len(tables),'minimum_degree':116,'witness_indices':witness,'witness_signatures':[raw[i]for i in witness]}

def negatives(out,raw):
    import copy
    results=[]
    def rejected(name,fn):
        try:fn()
        except (AssertionError,ValueError,ZeroDivisionError):results.append({'test':name,'rejected':True});return
        raise AssertionError('corruption accepted: '+name)
    d=out/'certificates/geometry';gl=(d/'q5_47.gates').read_text().splitlines()[0];ml=(d/'q5_47.32719.minors').read_text().splitlines()[0]
    z=gl.split();z[10]=str(int(z[10])+1);rejected('changed ordinary multiplicity',lambda:check_gate(' '.join(z)))
    z=gl.split();z[3]='119';rejected('wrong denominator',lambda:check_gate(' '.join(z)))
    z=ml.split();z[2]='0';rejected('zero determinant record',lambda:check_minor(gl,' '.join(z),32719))
    z=ml.split();z[-1]=z[-2];rejected('duplicate jet row',lambda:check_minor(gl,' '.join(z),32719))
    z=ml.split();z[-1]='399999';rejected('out-of-range jet row',lambda:check_minor(gl,' '.join(z),32719))
    r=copy.deepcopy(raw);r[0][0]=0;rejected('undercharged signature',lambda:price_certificate(r))
    # Missing directions/gates are not detected by a determinant test alone.
    gs=(d/'q5_47.gates').read_text().splitlines();alt=(d/'q5_47.alt').read_text().splitlines()
    def compare_bad():assert sorted(gs[:-1])==sorted(alt)
    rejected('omitted root gate against regenerated anchor',compare_bad)
    return {'status':'PASS_ALL_7_NEGATIVE_CONTROLS','tests':results}

def main(out):
    if out.exists():raise FileExistsError(out)
    for d in('bin','logs','runs','certificates/geometry','certificates/fees'):(out/d).mkdir(parents=True,exist_ok=True)
    manifest=json.loads((ROOT/'inputs/SOURCE_BYTES.json').read_text())
    for n,h in manifest.items():assert sha(ROOT/'inputs'/n)==h,n
    dump(out/'environment.json',{'python':sys.version,'platform':platform.platform(),'network':False,'Lean':False,'repository_operations':False})
    jobs=[('gates','double_gates.cpp',[]),('gates_alt','double_gates.cpp',['-DALT_ANCHOR']),('jets32749','double_jets.cpp',[]),('jets32719','double_jets.cpp',['-DMODULUS=32719']),('fees','fee_dp.cpp',[]),('fee_cells','fee_cells.cpp',[])]
    for name,src,flags in jobs:call(['g++','-O3','-std=c++17',*flags,ROOT/'code'/src,'-o',out/'bin'/name],out,'compile_'+name)
    gd=out/'certificates/geometry'
    for q in(5,6,7):
        for a,b in((4,5),(4,7),(5,7)):
            name=f'q{q}_{a}{b}'
            call([out/'bin/gates',q,a,b,gd/f'{name}.gates'],out,'gates_'+name)
            call([out/'bin/gates_alt',q,a,b,gd/f'{name}.alt'],out,'alt_'+name)
            for p in(32749,32719):call([out/f'bin/jets{p}',gd/f'{name}.gates',gd/f'{name}.{p}.minors',q],out,f'minors_{name}_{p}')
    receipt=verify_dir(gd);dump(gd/'receipt.json',receipt)
    old=json.loads((ROOT/'inputs/signatures481.json').read_text());raw,mapping=strengthen(old)
    fd=out/'certificates/fees';dump(fd/'signatures493.json',raw);dump(fd/'mapping.json',mapping)
    spec=fd/'signatures.txt';spec.write_text(''.join(' '.join(map(str,[e,*c]))+'\n'for e,c,*_ in raw))
    states=model.all_states();ids=model.read_frontier(ROOT/'inputs/frontier124.tsv');assert len(ids)==124
    queries=fd/'queries.txt';queries.write_text(''.join(' '.join(map(str,[i,states[i]['h'],*states[i]['cap']]))+'\n'for i in ids))
    for mode in(0,1):call([out/'bin/fees',spec,queries,fd/f'fees{mode}.txt',mode],out,f'fees_{mode}')
    assert(fd/'fees0.txt').read_bytes()==(fd/'fees1.txt').read_bytes()
    vals=[list(map(int,l.split()))for l in(fd/'fees0.txt').read_text().splitlines()]
    removed=[i for i,h,e in vals if e>h];assert removed==[1651]
    rem=[i for i in ids if i not in removed];assert len(rem)==123
    lines=(ROOT/'inputs/frontier124.tsv').read_text().splitlines()
    (out/'certificates/final_E0_frontier.tsv').write_text(lines[0]+'\n'+'\n'.join(l for l in lines[1:]if int(l.split()[0])in rem)+'\n')
    dump(fd/'mod4_price_1651.json',price_certificate(raw))
    tables,ref=reference(raw);txt=''.join(' '.join(map(str,x))+'\n'for x in tables);(fd/'reference_python.txt').write_text(txt)
    call([out/'bin/fee_cells',spec,fd/'reference_cpp.txt'],out,'fee_subcapacities_cpp')
    assert (fd/'reference_cpp.txt').read_text()==txt;dump(fd/'reference.json',ref)
    dump(out/'certificates/negative_controls.json',negatives(out,raw))
    summary={'status':'PASS_DOUBLE457_MOD4_FRONTIER123','input_states':124,'remaining_E0_states':123,'removed_states':removed,'minimum_equality_h':113,'maximum_vertical_sum':79,'minimum_h_states':[i for i in rem if states[i]['h']==113],'geometry_systems':2351,'geometry_prime_checks':4702,'independent_local_minors':2351,'exact_integer_minors':109,'raw_signatures':493,'price_signature_checks':108,'price_modulus':4,'state1651_minimum_eight_degree':116,'state1651_available_degree':113,'independent_fee_cells':13122,'negative_controls':7,'COVER7_proved':False,'H114_proved':False,'Lean':False,'external_independent_review':False,'repository_operations':False}
    dump(out/'certificates/summary.json',summary);print(json.dumps(summary,ensure_ascii=False,indent=2))

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);args=ap.parse_args();main(args.out.resolve())
