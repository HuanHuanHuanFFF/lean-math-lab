#!/usr/bin/env python3
"""Clean offline replay. Python standard library + g++ C++17 + Boost headers.
No old repository, network, symbolic CAS or existing output directory is used.
"""
import argparse,hashlib,json,os,platform,re,subprocess,sys,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
BATCHES=[(q,h) for q in range(16,25) for h in (6,7,8)]+[(q,0) for q in range(25,29)]
def sha(p):return hashlib.sha256(Path(p).read_bytes()).hexdigest()
def command(args,log):
    with Path(log).open('w') as f:
        p=subprocess.run(list(map(str,args)),stdout=f,stderr=subprocess.STDOUT)
    if p.returncode:raise RuntimeError(f'exit {p.returncode}: {args}; log={log}')
def run(out):
    out=Path(out).resolve()
    if out.exists():raise FileExistsError(f'refusing existing output directory: {out}')
    out.mkdir(parents=True);(out/'logs').mkdir();(out/'bin').mkdir();(out/'roots').mkdir();(out/'determinants').mkdir()
    started=time.time();logs=out/'logs';bn=out/'bin'
    for name,src,opts in [('roots','enumerate_roots.cpp',[]),('minors','verify_minors.cpp',[]),('minors_cross','verify_minors.cpp',['-DPRIME=65521'])]:
        command(['g++','-O3','-std=c++17',*opts,ROOT/'code'/src,'-o',bn/name],logs/f'build_{name}.log')
    geometry=[]
    for q,h in BATCHES:
        tag=f'q{q}h{h}';rp=out/'roots'/f'{tag}.txt';cg=ROOT/'certificates'/f'gates{q}h{h}.txt';cm=ROOT/'certificates'/f'minors{q}h{h}.txt'
        command([bn/'roots',q,h,rp],logs/f'roots_{tag}.log')
        raw=[tuple(map(int,x.split())) for x in rp.read_text().splitlines()]
        expected=[tuple(map(int,x.split())) for x in cg.read_text().splitlines()]
        assert len(raw)==len(set(raw)) and sorted(raw)==expected
        command([bn/'minors',q,cg,cm,out/'determinants'/f'{tag}.txt'],logs/f'minors_{tag}.log')
        command([bn/'minors_cross',q,cg,cm,out/'determinants'/f'{tag}_cross.txt',2],logs/f'cross_{tag}.log')
        n=len(expected);assert len((out/'determinants'/f'{tag}.txt').read_text().splitlines())==n
        text=(logs/f'roots_{tag}.log').read_text();tokens=text.split();countkeys=['triples','pairs','root','line','z','genus'];counts={k:int(tokens[tokens.index(k)+1]) for k in countkeys}
        assert counts['genus']==n
        geometry.append(dict(q=q,deficit_row=h,monomials=(q-2)**2+1,candidates=n,counts=counts,
                             canonical_gates_sha256=sha(cg),minors_sha256=sha(cm),determinants_sha256=sha(out/'determinants'/f'{tag}.txt'),cross_prime_samples=2))
        print('ACCEPTED',tag,n,flush=True)
    assert sum(x['candidates'] for x in geometry if x['deficit_row'])==20085
    assert sum(x['candidates'] for x in geometry if not x['deficit_row'])==372
    for q in [4,5]:
        for cross in [False,True]:
            tag=f'triple{q}'+('_cross' if cross else '')
            flags=[f'-DDEG={q}','-DMODE=1','-DWEIGHTED_PEEL=1']
            if cross:flags+=['-DMODULUS=65521','-DALT_ORDER=1']
            command(['g++','-O3','-std=c++17',*flags,ROOT/'code/triple.cpp','-o',bn/tag],logs/f'build_{tag}.log')
            command([bn/tag,out/f'{tag}.json'],logs/f'{tag}.log')
    from accept_small import run as small
    small(out)
    from cover import run as cover
    ledger=cover(out)
    from accept_boundary import run as boundary
    boundary(out)
    # Deliberately damaged selected minors must be rejected. Every run is bounded to one candidate.
    cg=ROOT/'certificates/gates16h6.txt';cm=ROOT/'certificates/minors16h6.txt'
    gl=cg.read_text().splitlines()[0];cl=list(map(int,cm.read_text().splitlines()[0].split()))
    tests=[];bad=out/'negative';bad.mkdir()
    variants=[]
    c=cl.copy();c[0]=(c[0]+1)%32749;variants.append(('changed_pivot_product',gl,c))
    c=cl.copy();c[2]=c[1];variants.append(('duplicate_equation',gl,c))
    c=cl.copy();c[1]=300000;variants.append(('pure_row_not_allowed',gl,c))
    c=cl.copy();c.pop();variants.append(('missing_equation',gl,c))
    g=list(map(int,gl.split()));g[4]+=1;variants.append(('changed_multiplicity',' '.join(map(str,g)),cl))
    g=list(map(int,gl.split()));g[3]-=1;variants.append(('changed_genus_cost',' '.join(map(str,g)),cl))
    for name,g,c in variants:
        gp=bad/f'{name}.gates';cp=bad/f'{name}.minor';op=bad/f'{name}.out';gp.write_text(g+'\n');cp.write_text(' '.join(map(str,c))+'\n')
        with (logs/f'negative_{name}.log').open('w') as f:p=subprocess.run([str(bn/'minors'),'16',str(gp),str(cp),str(op),'1'],stdout=f,stderr=subprocess.STDOUT)
        assert p.returncode!=0;tests.append(dict(name=name,rejected=True,exit_code=p.returncode))
    # Output overwrite protection is tested in a separate process, before any expensive operation.
    p=subprocess.run([sys.executable,str(ROOT/'code/reproduce.py'),'--out',str(out)],stdout=subprocess.PIPE,stderr=subprocess.STDOUT,text=True)
    assert p.returncode!=0 and 'refusing existing output' in p.stdout
    (logs/'negative_existing_output.log').write_text(p.stdout);tests.append(dict(name='existing_output',rejected=True,exit_code=p.returncode))
    geo=dict(status='PASS_KNEAR16_24_KSAT25_28',near_candidates=20085,saturated_candidates=372,total_full_column_minors=20457,all_selected_minors_nonzero=True,independent_E2_root_enumeration=True,batches=geometry)
    (out/'geometry.json').write_text(json.dumps(geo,indent=2)+'\n');(out/'negative_tests.json').write_text(json.dumps(dict(status='PASS_NEGATIVE_TESTS',tests=tests),indent=2)+'\n')
    outputs={str(p.relative_to(out)):sha(p) for p in sorted(out.rglob('*')) if p.is_file() and 'logs' not in p.parts and 'bin' not in p.parts and 'negative' not in p.parts}
    receipt=dict(status='PASS_NEW_KAPPA_GENUS_SAME_G_COVER9',elapsed_seconds=time.time()-started,
                 actual_exit_code=0,python=platform.python_version(),output_hashes=outputs,
                 mathematical_status='author proof plus exact certificates; frozen inputs retain source status',
                 independent_external_review=False,Lean=False,repository_writes=False)
    (out/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
    print(receipt['status'],flush=True)
    return receipt
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',required=True);args=p.parse_args()
    try:run(args.out)
    except Exception as e:
        print(type(e).__name__+': '+str(e),file=sys.stderr);sys.exit(1)
