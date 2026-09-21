#!/usr/bin/env python3
"""Classify one h exactly, using both independent algorithms."""
import argparse,json
from pathlib import Path
import phase_a,phase_b

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('h',type=int)
    p.add_argument('--certificate',type=Path)
    a=p.parse_args()
    c=phase_a.classify(a.h);b=phase_b.classify(a.h)
    if not phase_a.verify_certificate(c) or any(c[k]!=v for k,v in b.items()):
        raise ArithmeticError('independent algorithms disagree')
    if a.certificate:
        if a.certificate.exists():raise SystemExit('refusing to overwrite certificate')
        a.certificate.write_text(json.dumps(c,indent=2,sort_keys=True)+'\n')
    print(json.dumps({'h':a.h,'chi':c['chi'],'floor_y':c['floor_y'],
        'floor_Z':c['floor_Z'],'floor_T':c['floor_T'],
        'meaning':('original q carry eliminates all matching genuine inputs'
                   if c['chi'] else 'this q layer gives no witness; not an NC3 certificate'),
        'requires':'same-input minimal branch, P>=4Q, n<Q^4; q must be a genuine source',
        'scope':'h classifier only; no original (n,j) is created'},indent=2))
if __name__=='__main__':main()
