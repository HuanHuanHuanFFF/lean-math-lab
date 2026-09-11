"""One-command receiving audit, including every finite block. No Padé search.
Uses <= one heavy subprocess at a time. Cache is deterministic and rebuildable;
it is excluded from the downloadable evidence package.
"""
from pathlib import Path
import json,subprocess,sys,time,platform,hashlib
R=Path(__file__).resolve().parents[1]

def main():
    if not __debug__:raise RuntimeError('Do not run under python -O')
    start=time.monotonic();records=[]
    for path in ['bin','cache/primes','logs/replay']:(R/path).mkdir(parents=True,exist_ok=True)
    def run(name,cmd,output=None):
        t=time.monotonic();log=R/'logs/replay'/f'{len(records)+1:02d}-{name}.log'
        with log.open('w') as out:subprocess.run(cmd,cwd=R,stdout=out,stderr=subprocess.STDOUT,check=True)
        if output:(R/output).write_bytes(log.read_bytes())
        records.append(dict(stage=name,command=[str(x) for x in cmd],seconds=time.monotonic()-t,log=str(log.relative_to(R))))
        print('PASS',name,flush=True)
    for name in ['make_prime_cache','build_dense_prefix','check_prime_cache','check_dense','hybrid_content_check','check_graph_grid']:
        flags=['-lgmpxx','-lgmp'] if name in ['make_prime_cache','check_prime_cache'] else []
        run('compile-'+name,['g++','-O3','-std=c++17',str(R/'code'/f'{name}.cpp'),*flags,'-o',str(R/'bin'/name)])
    cache=R/'cache/primes'
    if not all((cache/n).exists() for n in ['primes.u32','weights.u64']):run('rebuild-primes',[str(R/'bin/make_prime_cache'),'100000000',str(cache)])
    if not (cache/'dense.u64').exists():run('rebuild-dense',[str(R/'bin/build_dense_prefix'),str(cache)])
    run('independent-primes',[str(R/'bin/check_prime_cache'),'100000000',str(cache)],'evidence/prime_cache_independent.json')
    run('independent-dense',[str(R/'bin/check_dense'),str(cache)],'evidence/dense_independent.json')
    for name in ['verify_content_resume','verify_cuts','check_cuts_grid','check_graph_and_height']:
        run(name,[sys.executable,str(R/'code'/f'{name}.py')])
    run('exhaustive-graph-grid',[str(R/'bin/check_graph_grid'),str(R/'input/graph.txt')],'evidence/graph_grid_check.json')
    for name in ['check_scalar_bridge','regress_i14_math','negative_tests']:
        run(name,[sys.executable,str(R/'code'/f'{name}.py')])
    content=json.loads((R/'evidence/content_check.json').read_text());cuts=json.loads((R/'evidence/cuts_check.json').read_text());alternate=json.loads((R/'evidence/cuts_grid_check.json').read_text());height=json.loads((R/'evidence/graph_height_check.json').read_text());grid=json.loads((R/'evidence/graph_grid_check.json').read_text())
    assert content['status']=='PASS_ALL_SELECTED_CONTENT_FAMILIES' and content['family_count']==33
    assert len(cuts['cuts'])==len(alternate['rows'])==45
    assert cuts['H']==alternate['H']==height['H_Y']==33554432
    assert [x['lower'] for x in height['profiles']]==grid['minima']
    out=dict(status='PASS_FULL_RECEIVING_REPLAY_NO_PADE_SEARCH',paper_status='explicit effective i14 height, publication dependencies; not Lean; not full i14 closure',height_n_bits=height['height_n_bits'],content_families=33,permutations=content['permutation_count'],finite_blocks=content['total_finite_blocks'],tail_terms=content['total_tail_terms'],cuts=45,stages=records,python=platform.python_version(),wall_seconds=time.monotonic()-start)
    (R/'evidence/reproduction.json').write_text(json.dumps(out,indent=2)+'\n');print('PASS FULL REPLAY; n < 2^33554433 for every legal i14 counterexample',flush=True)
if __name__=='__main__':main()
