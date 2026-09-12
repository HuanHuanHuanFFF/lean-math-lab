#!/usr/bin/env python3
"""Generate the NEW bounded square-row certificate; no historical replay."""
import argparse, json
from math import gcd, isqrt
from pathlib import Path

BASE = 2097153
CONFIG = {'beta': (30, 3, 8, 81), 'gamma': (95, 9, 2, 21)}

def generate():
    rows, boxes = [], []
    for side, (gu_cap, slope, mul, rhs) in CONFIG.items():
        for g in range(1, gu_cap + 1):
            xmax = slope * (gu_cap // g)**2 + 1
            s, n = 1, 2*g
            while n <= xmax*xmax:
                X = isqrt(n)
                if n > BASE and X*X == n:
                    rows.append(dict(side=side, g=g, s=s, X=X, n=n))
                    for eps in (-1, 1):
                        for u in range(1, gu_cap//g + 1, 2):
                            if (X-eps) % u:
                                continue
                            d = (X-eps)//u
                            if d < 33 or d % 2 == 0 or d > slope*u:
                                continue
                            if mul*g*(n-2) >= rhs*d**3:
                                continue
                            alpha = n//g
                            if side == 'beta':
                                lo = max(1, (4+g*d*d-1)//(g*d*d))
                                hi = (alpha-1)//(2*d*d)
                            else:
                                lo = alpha//(2*d*d)+1
                                hi = (alpha-(4+g-1)//g)//(d*d)
                            if lo > hi:
                                continue
                            h = (n-1)//d
                            modulus = h//gcd(h, 3)
                            a = g*d*d
                            common = gcd(a, modulus)
                            rec = dict(side=side, g=g, s=s, X=X, n=n,
                                       eps=eps, d=d, u=u, lo=lo, hi=hi,
                                       h=h, modulus=modulus, coefficient=a,
                                       coefficient_gcd=common)
                            if common == 1:
                                root = pow(a, -1, modulus)
                                first = lo + (root-lo) % modulus
                                rec.update(inverse=root, first_solution=first)
                                if first <= hi:
                                    raise RuntimeError('Unexcluded complete interval: '+str(rec))
                            boxes.append(rec)
                s += 1
                n *= 2
    key = lambda r: (r['side'], r['g'], r['s'], r.get('eps', 0), r.get('d', 0))
    rows.sort(key=key); boxes.sort(key=key)
    return {'schema':'b699-r7-bilateral-square-v1', 'base_n_inclusive':BASE,
            'scope':{'beta':{'gu':30,'d_over_u':3},
                     'gamma':{'gu':95,'d_over_u':9}},
            'parameter_rows':rows, 'congruence_boxes':boxes,
            'summary':{'parameter_rows':len(rows), 'boxes':len(boxes),
                       'direct_m_count':sum(r['hi']-r['lo']+1 for r in boxes),
                       'residuals':0}}

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--output', required=True)
    args=parser.parse_args();out=generate();p=Path(args.output);p.parent.mkdir(parents=True,exist_ok=True)
    p.write_text(json.dumps(out,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps(out['summary'],sort_keys=True))
if __name__=='__main__':
    if not __debug__:raise SystemExit('Do not run this checker with Python -O.')
    main()
