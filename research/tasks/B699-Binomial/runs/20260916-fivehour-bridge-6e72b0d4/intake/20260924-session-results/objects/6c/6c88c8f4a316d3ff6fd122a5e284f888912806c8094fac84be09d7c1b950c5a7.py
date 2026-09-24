#!/usr/bin/env python3
"""Reproduce a modular-only failure object. Does not search for NC3 counterexamples."""
from __future__ import annotations
import argparse,json
from math import prod
from pathlib import Path
from arithmetic import models_h,prime

def search()->dict:
    ps=[5,7,11,13,17,19,37,61];q=30;c0=1
    images={p:models_h(p,q) for p in ps}
    for s in range(2400,2701,6):
        allowed={p:sorted({r['V'] for r in images[p]
                         if r['n']==c0*pow(2,s,p)%p and r['V']}) for p in ps}
        allowed[5]=[v for v in allowed[5] if v==4]
        allowed[7]=[v for v in allowed[7] if v in (3,5)]
        if any(not vs for vs in allowed.values()):continue
        mods=[16,3]+ps;res=[9,1]+[allowed[p][0] for p in ps]
        modulus=prod(mods)
        V=sum(a*(modulus//m)*pow(modulus//m,-1,m) for m,a in zip(mods,res))%modulus
        for k in range(200):
            candidate=V+k*modulus
            if prime(candidate):
                return dict(q=q,c0=c0,s=s,V=candidate,crt_modulus=modulus,
                            moduli=mods,residues=res,progression_k=k)
    raise ArithmeticError('The prescribed bounded modular search found no witness')

def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);a=ap.parse_args()
    a.out.write_text(json.dumps(search(),sort_keys=True,indent=2)+'\n',encoding='utf-8')
    print('MODULAR_ONLY_BOUNDARY_SEARCH=PASS')
if __name__=='__main__':main()
