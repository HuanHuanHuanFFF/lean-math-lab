#!/usr/bin/env python3
"""Rebuild the new round only. Never invokes Git, Lean, a network, or upstream research jobs."""
from __future__ import annotations
import argparse,json,subprocess,sys,time,hashlib,shutil,math
from pathlib import Path
import certify as C
ROOT=Path(__file__).resolve().parents[1]

def run(cmd:list[str],log:Path)->None:
    with log.open('w')as f:
        result=subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,check=False)
    if result.returncode:raise RuntimeError(f'command failed ({result.returncode}): {cmd}; log={log}')

def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('--out',required=True);ap.add_argument('--phase',choices=['geometry','ledger','all'],default='all');args=ap.parse_args()
    out=Path(args.out).resolve();out.mkdir(parents=True,exist_ok=False);(out/'bin').mkdir();(out/'logs').mkdir()
    for prime in [32749,32719]:
        assert all(prime%d for d in range(2,math.isqrt(prime)+1)) and math.gcd(prime,120)==1
    started=time.time();b=out/'bin';g=out/'geometry';l=out/'ledger';g.mkdir();l.mkdir()
    if args.phase in ['geometry','all']:
        specs=[('gates','early_near_gates.cpp',[]),('gates_cross','early_near_gates.cpp',['-DANCHOR_ROW=7']),('jets','early_near_jets.cpp',[]),('jets_cross','early_near_jets.cpp',['-DMODULUS=32719']),('minors','verify_early_minors.cpp',[])]
        for exe,src,flags in specs:run(['g++','-O3','-std=c++17',*flags,str(ROOT/'code'/src),'-o',str(b/exe)],out/'logs'/f'compile_{exe}.log')
        gate_records=[]
        for q in [16,17,18]:
            for r in [4,5]:
                tag=f'q{q}r{r}'
                for exe,suffix in [('gates','gates'),('gates_cross','cross.gates')]:
                    run([str(b/exe),str(q),str(r),str(g/f'{tag}.{suffix}')],out/'logs'/f'{tag}.{exe}.log')
                    C.validate_gates(g/f'{tag}.{suffix}',q,r)
                assert sorted((g/f'{tag}.gates').read_text().splitlines())==sorted((g/f'{tag}.cross.gates').read_text().splitlines())
                for exe,suffix in [('jets','ranks'),('jets_cross','cross.ranks')]:
                    run([str(b/exe),str(g/f'{tag}.gates'),str(g/f'{tag}.{suffix}'),str(q)],out/'logs'/f'{tag}.{exe}.log')
                    rr=[list(map(int,x.split()))for x in (g/f'{tag}.{suffix}').read_text().splitlines()]
                    assert len(rr)==C.EXPECTED[q,r]
                    assert all(a[0]==i and a[1]==(q-2)**2+1 and a[2]!=0 for i,a in enumerate(rr))
                run([str(b/'minors'),str(g/f'{tag}.gates'),str(g/f'{tag}.cross.ranks'),str(q),str(r)],out/'logs'/f'{tag}.minors.log')
                gate_records.append(dict(q=q,deficit_row=r,root_gates=C.EXPECTED[q,r],matrix_columns=(q-2)**2+1,primes=[32749,32719],all_full_rank=True,all_independent_minors_nonzero=True,two_anchor_sets_match=True))
                print('PASS_GEOMETRY',q,r,C.EXPECTED[q,r],flush=True)
        C.dump(g/'geometry_summary.json',dict(total_gates=779,full_rank_prime_system_checks=1558,independent_local_convolution_minors=779,systems=gate_records))
    if args.phase in ['ledger','all']:
        new,mapping,frontier=C.inputs_and_signatures(l);C.parity_certificate(new,mapping,l)
        run(['g++','-O3','-std=c++17',str(ROOT/'code/fee_dp.cpp'),'-o',str(b/'fees')],out/'logs/compile_fees.log')
        for no_quartics in [False,True]:
            sig=l/('signatures_without_quartics.txt'if no_quartics else'signatures_all.txt');query=l/('1626query.txt'if no_quartics else'205queries.txt')
            name='1626newfees'if no_quartics else'all_new_fees'
            for mode,suffix in [(0,''),(1,'_raw')]:run([str(b/'fees'),str(sig),str(query),str(l/(name+suffix+'.txt')),str(mode)],out/'logs'/(name+suffix+'.log'))
        C.finish(l,frontier);print('PASS_PARITY_PRICE_113_AND_LEDGER_FRONTIER173',flush=True)
    if args.phase=='all':
        run([sys.executable,'-B',str(ROOT/'code/negative_tests.py'),'--out',str(out/'negative_tests'),'--minor-bin',str(b/'minors')],out/'logs/negative_tests.log')
    # Compare only deterministic certificate files; logs contain real timings.
    comparisons={}
    for sub in ['geometry','ledger']:
        for p in sorted((out/sub).iterdir()):
            ref=ROOT/'certificates'/sub/p.name
            if ref.is_file():
                ok=p.read_bytes()==ref.read_bytes();comparisons[sub+'/'+p.name]=ok
                if not ok:raise AssertionError(('reference mismatch',p.name))
    C.dump(out/'REPLAY_RECEIPT.json',dict(status='PASS_CLEAN_REPLAY_EARLY_NEAR_H112',phase=args.phase,comparisons=comparisons,all_byte_identical=all(comparisons.values()),elapsed_seconds=time.time()-started,negative_tests_rejected=6 if args.phase=='all' else None,Lean=False,repository_operations=False,network_used=False,does_not_replay_frozen_upstream=True))
    print('PASS_CLEAN_REPLAY_EARLY_NEAR_H112',args.phase,len(comparisons),flush=True)
if __name__=='__main__':main()
