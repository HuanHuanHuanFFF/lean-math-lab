#!/usr/bin/env python3
"""Recompute this round's finite certificates. Does not write into the evidence tree."""
from pathlib import Path
import argparse,json,sys,time,platform
from core import canonical,digest,is_prime,vp_binomial,lucas_nonzero
from experiments import *
R=Path(__file__).resolve().parents[1]

def independent_witness_checks(obj):
    """Second arithmetical entry: stored n,j witness valuations and Lucas digits."""
    # Generation is still by the same author; this is not an independent human audit.
    c=0
    def walk(x,context=None):
        nonlocal c
        if isinstance(x,dict):
            ctx=(x['n'],x['j']) if 'n' in x and 'j' in x else context
            if 'prime' in x and 'valuation_Cn3' in x and ctx:
                p=x['prime'];n,j=ctx
                assert is_prime(p) and p>=3
                assert vp_binomial(n,3,p)==x['valuation_Cn3']>0
                assert vp_binomial(n,j,p)==x['valuation_Cnj']>0
                assert not lucas_nonzero(n,j,p)
                c+=1
            for v in x.values():walk(v,ctx)
        elif isinstance(x,list):
            for v in x:walk(v,context)
    walk(obj)
    return c


def run():
    jobs=[('algebra',check_all),('terminal',terminal_cases),('boundaries',boundaries),
          ('direct_full_rows',direct_full_rows),('pair_grid',pair_grid),
          ('target_rows',target_rows),('zero_rows_P2000',zero_rows),
          ('split_lemma_grid',split_lemma_grid),
          ('old_ledger_audit',lambda:old_ledger_audit(json.loads((R/'sources/PREVIOUS_EXTERIOR_P1000.json').read_text())))]
    out=[];wc=0
    for name,fn in jobs:
        t=time.monotonic();expected=json.loads((R/'certificates'/f'{name}.json').read_text())
        actual=fn()
        # Canonical JSON is also used to normalize tuple/list representation.
        assert canonical(actual)==canonical(expected),f'Certificate mismatch: {name}'
        wc+=independent_witness_checks(expected)
        out.append(dict(certificate=name,status='PASS',sha256=digest(expected),
                        seconds=round(time.monotonic()-t,6)))
    return dict(status='PASS',python=platform.python_version(),certificates=out,
                stored_witness_checks=wc,external_network=False,
                evidence_level='same-author deterministic arithmetic verification, not Lean or independent mathematical review')

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--output',type=Path);a=p.parse_args()
    try:o=run()
    except Exception as exc:
        o=dict(status='FAIL',error=f'{type(exc).__name__}: {exc}')
        if a.output:a.output.write_bytes(canonical(o))
        else:sys.stdout.buffer.write(canonical(o))
        raise
    if a.output:
        a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_bytes(canonical(o))
    else:sys.stdout.buffer.write(canonical(o))
