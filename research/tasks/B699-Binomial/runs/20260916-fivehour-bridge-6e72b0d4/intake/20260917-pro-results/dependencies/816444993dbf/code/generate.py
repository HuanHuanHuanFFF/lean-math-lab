from __future__ import annotations
import argparse, hashlib, json, math
from pathlib import Path
from common import ROOT, WEIGHTS, write_json, shift, residue_data, in_H02, recover_domain, prime, source_v, crt


def generate(out: Path) -> None:
    raw = (ROOT/'sources/frozen-fatpoint-height_certificates.json').read_bytes()
    record = next(x for x in json.loads(raw) if x['H']==[0,2,6])
    poly = sorted(record['poly'])
    norm = sum(abs(c) for a,b,c in poly)
    cost_exp = {}
    for p in (2,3,5):
        def val(x):
            e=0
            while x%p==0:
                x//=p;e+=1
            return e
        cost_exp[str(p)] = max(sum(w*val(abs(r-h)) for r,w in WEIGHTS.items()) for h in (0,2))
    cost = math.prod(int(p)**e for p,e in cost_exp.items())
    kernel = dict(target=6, H=[0,2], source_H=[0,2,6],
                  source_sha256=hashlib.sha256(raw).hexdigest(),
                  degree=16, origin_order=2, weights={str(r):w for r,w in WEIGHTS.items()},
                  poly=poly, shift7=shift(poly,7,7), norm=norm,
                  cost_exponents=cost_exp, cost=cost,
                  absolute_bound=2**17*cost*norm, exponent=71)
    write_json(out/'kernel.json',kernel)
    residues = residue_data()
    classes = [r for r in range(1800) if in_H02(r)]
    old_d6 = [r for r in range(1800) if r%72 in (18,56) and r%5 in (0,2)]
    remaining = [r for r in old_d6 if not in_H02(r)]
    write_json(out/'classes.json',dict(period=1800,prime_classes=residues,
               classes=classes,old_D6=old_d6,remaining_D6=remaining))
    domain = recover_domain()
    intervals = []
    for n in domain['terminal']:
        pp = next((n-r for r in range(6) if prime(n-r) and n-r>=6),None)
        if pp is None:
            raise RuntimeError(f'No certified top-prime terminal for {n}')
        intervals.append(dict(target=6,n=n,intervals=[[7,n//2,pp,pp]]))
    domain['intervals'] = intervals
    write_json(out/'domain.json',domain)
    # Exact CRT family: all three small-prime exponents are independent.
    exponents = [6,4,3]
    a,b,c=exponents
    base_items=[(2**a,2**(a+1)),(2+3**b,3**(b+1)),(2+5**c,5**(c+1))]
    coarse={0:[7,11],1:[13,17],2:[19,23],3:[29,31,37,41],4:[43,47,53],5:[59,61]}
    items=base_items+[(r,math.prod(ps)) for r,ps in coarse.items()]
    n,M=crt(items)
    while n<14:n+=M
    j=n//3
    p=next(p for ps in coarse.values() for p in ps if source_v(n,6,p)>0 and source_v(n,j,p)>0)
    family=dict(exponent_lower_bounds=[3,2,2],sample_exponents=exponents,
                sample_n=n, sample_modulus=M, sample_j=j, sample_witness=p,
                source_valuation=source_v(n,6,p),target_valuation=source_v(n,j,p),
                coarse_witnesses={str(r):ps for r,ps in coarse.items()},
                conclusion='all a>=3,b>=2,c>=2 and all nonnegative CRT lifts, with n>=14')
    write_json(out/'family.json',family)

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True)
    generate(ap.parse_args().out)
