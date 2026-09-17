#!/usr/bin/env python3
"""Targeted replay of the previously complete C<=3 terminal, not new coverage."""
import argparse,json
from pathlib import Path
from math import comb,isqrt

def check(path):
    c=json.loads(path.read_text())
    expected=[(n,j) for n in range(8,82) for j in range(4,n//2+1)]
    assert c['small_C_n_range']==[8,81]
    assert len(expected)==c['small_C_pair_count']==1406
    assert [(n,j) for n,j,p in c['witnesses']]==expected
    for n,j,p in c['witnesses']:
        assert p>=3 and all(p%d for d in range(2,isqrt(p)+1))
        assert comb(n,3)%p==0 and comb(n,j)%p==0
    return {'source':'frozen small-C-terminals.json','complete_old_pairs':1406,
            'new_coverage':False,'check':'direct binomial divisibility and deterministic primality'}
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--source',type=Path,required=True)
    ap.add_argument('--output',type=Path,required=True);a=ap.parse_args()
    x=check(a.source);a.output.parent.mkdir(parents=True,exist_ok=True)
    a.output.write_text(json.dumps(x,ensure_ascii=False,indent=2)+'\n');print('old small-C: 1406 verified')
