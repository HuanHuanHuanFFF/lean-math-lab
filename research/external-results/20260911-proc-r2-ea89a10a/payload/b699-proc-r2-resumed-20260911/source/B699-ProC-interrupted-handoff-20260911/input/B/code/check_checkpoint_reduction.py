#!/usr/bin/env python3
"""Verify the completed e<52 checkpoint and its exact reduction to the final tail.
This is new-work regression, not a replay of historical Pro A/B research suites.
"""
from __future__ import annotations
import argparse,hashlib,importlib.util,json
from pathlib import Path
from check_certificate import check
ROOT=Path(__file__).resolve().parents[1]

def run(current:dict)->dict:
    cp=ROOT/'checkpoints/e52';meta=json.loads((cp/'CHECKPOINT.json').read_text())
    for name,h in meta['files'].items():
        if hashlib.sha256((cp/name).read_bytes()).hexdigest()!=h:raise ValueError('checkpoint hash mismatch')
    spec=importlib.util.spec_from_file_location('frozen_e52_checker',cp/'check_certificate.py')
    mod=importlib.util.module_from_spec(spec);spec.loader.exec_module(mod)
    old=json.loads((cp/'certificate.json').read_text());old_stats=mod.check(old);new_stats=check(current)
    old_rows={r['n']:r for r in old['rows']};new_rows={r['n']:r for r in current['rows']}
    if not set(new_rows)<=set(old_rows):raise ValueError('new row set not contained in checkpoint')
    for n,row in new_rows.items():
        if row!=old_rows[n]:raise ValueError('a retained finite row changed: '+str(n))
    gone=[old_rows[n] for n in sorted(set(old_rows)-set(new_rows))]
    if not all(r['kind'] in ('I','W') for r in gone):raise ValueError('CRT row removed without a tail proof')
    return {'status':'both_finite_checks_passed_and_reduction_exact',
            'checkpoint_rows':old_stats['rows'],'final_rows':new_stats['rows'],
            'rows_removed_by_stronger_infinite_tail':len(gone),
            'removed_I_rows':sum(r['kind']=='I' for r in gone),
            'removed_W_rows':sum(r['kind']=='W' for r in gone),
            'CRT_rows_unchanged':new_stats['crt'],
            'interpretation':'Infinite completeness is proved separately; this comparison checks the new finite data and preserves the earlier successful checkpoint.'}

def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',type=Path,required=True);ap.add_argument('--out',type=Path,required=True);a=ap.parse_args()
    out=run(json.loads(a.certificate.read_text()));a.out.parent.mkdir(parents=True,exist_ok=True)
    a.out.write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out))
if __name__=='__main__':main()
