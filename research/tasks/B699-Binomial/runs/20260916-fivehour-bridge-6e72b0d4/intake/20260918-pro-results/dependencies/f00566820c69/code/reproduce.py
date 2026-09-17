#!/usr/bin/env python3
"""Exact finite obligations for the new M39 / C3-L85 / Q8-L21 arguments.

This checks arithmetic certificates, not the frozen research chain or a Lean proof.
It never constructs the unknown polynomial G or scans original (n,j) instances.
Python >= 3.10, standard library only.
"""
from __future__ import annotations
import argparse
import copy
import hashlib
import itertools
import json
import math
import platform
import sys
import time
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def require(condition: bool, message: str) -> None:
    if not condition:
        raise ValueError(message)


def b(d: int) -> int:
    return sum(d - 2 * k + 1 for k in range(d // 2 + 1)) if d >= 0 else 0


def tri(d: int) -> int:
    return d * (d + 1) // 2 if d > 0 else 0


def ceil_log2(n: int) -> int:
    require(n > 0, 'log2 input must be positive')
    return (n - 1).bit_length()


def profiles(t: int, zmax: int, mumax: int):
    # Overapproximation of possible ordinary source multiplicities.  No claim
    # that every tuple is realized by an irreducible polynomial is made.
    for counts in itertools.product(range(zmax + 1), repeat=t):
        z = sum(counts)
        mu = sum(e * a for e, a in enumerate(counts, 1))
        if 14 <= z <= zmax and mu <= mumax:
            yield counts, z, mu


def check_local(spec: dict) -> dict:
    h, t, D = spec['height_exponent'], spec['x_degree'], spec['degree_max']
    m, d = spec['jet_order'], spec['aux_degree']
    zmax, mumax = spec['zmax'], spec['mu_cap']
    nf = b(d)
    multiple_dim = b(d - spec['degree_min'])
    recs = []
    for counts, z, mu in profiles(t, zmax, mumax):
        high = sum(tri(max(m-e, 0)) * a for e, a in enumerate(counts, 1))
        rows = tri(m) * z
        effective = rows - high
        # Independent formula for the effective jet length.
        eff2 = sum(a * sum(m-i for i in range(min(e,m)))
                   for e, a in enumerate(counts, 1))
        require(effective == eff2, 'two effective-length formulas disagree')
        require(nf - effective > multiple_dim, 'no certified escape from multiples')
        require(high <= spec['high_columns'], 'too many high coefficient columns')
        require(rows <= spec['rows'], 'too many equations')
        recs.append({'multiplicities': list(counts), 'z': z, 'mu': mu,
                     'rows': rows, 'high': high, 'effective': effective})
    require(recs, 'empty multiplicity envelope')
    R, L = spec['rows'], spec['high_columns']
    low, high_extra = spec['low_column_bits'], spec['high_column_extra']
    require(R * 9**(2*d) < 2**(2*low), 'low Taylor column bound fails')
    require(R * 9**(2*D) < 2**(2*high_extra), 'high Taylor column bound fails')
    require(h + high_extra >= low, 'Hadamard monotonicity not certified')
    B = L*h + spec['cramer_additive']
    raw_B = L*(h+high_extra) + (R-L)*low + ceil_log2(nf)
    require(raw_B < B, 'Cramer l1 bound fails')
    omega = 6*m
    require(omega-d == 1, 'this receipt uses a unit size exponent')
    require(1680 < 2**11, 'small-part bound')
    # At most seven nonhit values; all complete prime powers retained.
    nz = B + omega*11 + 7*m*(h+3*D)
    rx = (d//2)*h + t*B + ceil_log2(math.factorial(d//2+t))
    require(nz < spec['entry_exponent'], 'nonzero-value branch not below entry')
    require(rx < spec['entry_exponent'], 'resultant branch not below entry')
    return {'profile_count': len(recs), 'profiles': recs,
            'F_columns': nf, 'multiple_dimension': multiple_dim,
            'effective_max': max(q['effective'] for q in recs),
            'F_dimension_lower': nf-max(q['effective'] for q in recs),
            'B': B, 'raw_cramer_exponent': raw_B,
            'nonzero_exponent': nz, 'resultant_exponent': rx,
            'nonzero_margin': spec['entry_exponent']-nz,
            'resultant_margin': spec['entry_exponent']-rx}


def global_budget(c3_h: int, expected_bound: int) -> dict:
    monomials = b(305)
    require(monomials == 23562, 'wrong B305 dimension')
    require(monomials < 2**15, 'monomial budget')
    budget = 1242694 + 15
    c7 = c3_h-10
    c3high = 200000-305-3
    triples = []
    for u in range(44):
        for v in range(39):
            for r in range(39):
                if 7*u + 8*(v+r) <= 305 and c7*u+c3high*v < budget:
                    triples.append((u, v, r))
    require(triples, 'empty aggregate relaxation')
    best = max(sum(q) for q in triples)
    umax = (budget-1)//c7
    require(best == expected_bound, 'wrong global component bound')
    # Separate derivation, not the triple enumeration.
    require((305+umax)//8 == best, 'direct and enumerated bounds disagree')
    vmax = (budget-1)//c3high
    by_v = []
    for v in range(vmax+1):
        qs = [q for q in triples if q[1] == v]
        by_v.append({'v':v, 'u_max':max(q[0] for q in qs),
                     'K_max':max(sum(q) for q in qs)})
    return {'measure_budget': budget, 'weight7_cost': c7,
            'higher_cubic_cost': c3high, 'weight7_max': umax,
            'higher_cubic_max': vmax,
            'all_cubics_max': max(q[0]+q[1] for q in triples),
            'component_bound': best, 'feasible_aggregate_triples':len(triples),
            'maximizers':[list(q) for q in triples if sum(q)==best],
            'by_higher_cubic_count':by_v}


def check_edge() -> dict:
    rows = []
    for u in range(7,15):
        minimum_w8 = 46 - 2*u
        cost = 84990*u + (21000-12)*minimum_w8
        require(cost > 1242709, 'K39 small-factor forcing failed')
        rows.append({'u7':u, 'minimum_weight8':minimum_w8,
                     'measure_cost_if_all_large':cost})
    # An abstract necessary-conditions model, NOT polynomials, G, or NC9.
    witness = {'u7':7, 'v_cubic_ge8':0, 'r_ge4':32,
               'weight':305, 'x_degree':149,
               'log_measure_proxy':7*84991, 'K':39}
    require(7*7+8*32 == witness['weight'], 'model degree mismatch')
    require(3*7+4*32 == witness['x_degree'], 'model X degree mismatch')
    require(witness['log_measure_proxy'] < 1242709, 'model measure mismatch')
    # Bad direct extension of the quartic dimension calculation (not a
    # counterexample to a mathematical consumer).
    a = (18,2,0,0)
    eff = 4*a[0]+7*a[1]+9*a[2]+10*a[3]
    require(sum(a)==20 and a[0]+2*a[1]==22, 'mu22 gate tuple')
    require(b(23)-eff <= b(15), 'mu22 direct extension unexpectedly escapes')
    return {'edge39_rows':rows, 'abstract_39_model':witness,
            'mu22_failed_dimension':{'counts':list(a), 'effective':eff,
                                    'lower_F_dimension':b(23)-eff,
                                    'multiple_dimension':b(15)}}


def diagnostics() -> dict:
    # Coefficient l1 is not multiplicative: exact polynomial multiplication.
    f, g = [1,-1], [1,1]
    fg = [sum(f[i]*g[k-i] for i in range(2) if 0 <= k-i < 2) for k in range(3)]
    require(sum(map(abs,fg)) == 2 < 4, 'norm cancellation example')
    # Self-contained coefficient identity regressions for the NEW quartic jet
    # degree. Values here are not assigned to unknown H or original n,j.
    count=0
    for r in range(3,9):
        for s in range(r//2+1):
            v=s*(r-s)
            for bb in range(12):
                for aa in range(24-2*bb):
                    for i in range(4):
                        for j in range(4-i):
                            value=(math.comb(aa,i)*r**(aa-i)*math.comb(bb,j)*v**(bb-j)
                                   if i<=aa and j<=bb else 0)
                            # Coefficients of positive binomial products are
                            # bounded by their evaluation at (u,t)=(1,1).
                            require(value <= (r+1)**aa*(v+1)**bb <= 9**(aa+2*bb),
                                    'quartic Taylor majorant')
                            count += 1
    return {'l1_counterexample_product':fg,
            'new_quartic_monomial_Taylor_majorants':count}


def main() -> None:
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--out', type=Path, required=True)
    args=parser.parse_args()
    require(not args.out.exists() or not any(args.out.iterdir()),
            '--out must be nonexistent or empty; old evidence is never overwritten')
    args.out.mkdir(parents=True, exist_ok=True)
    start=time.perf_counter()
    spec=json.loads((ROOT/'evidence/NEW_CERTIFICATE.json').read_text())
    require(spec['entry_exponent']==14000001, 'frozen entry mismatch')
    for name in ('C3_L85','Q8_L21'):
        require(spec[name]['entry_exponent']==spec['entry_exponent'], 'entry mismatch')
    require(spec['C3_L85']['height_exponent']==85000, 'C3 target mismatch')
    require(spec['Q8_L21']['height_exponent']==21000, 'Q8 target mismatch')
    c3=check_local(spec['C3_L85'])
    q8=check_local(spec['Q8_L21'])
    require(c3['profile_count']==21 and q8['profile_count']==94, 'profile counts')
    for name, observed in [('C3_L85',c3),('Q8_L21',q8)]:
        for key,val in spec[name]['expected'].items():
            require(observed[key]==val, f'{name}: corrupted receipt field {key}')
    old=global_budget(80000,40)
    new=global_budget(85000,39)
    edge=check_edge()
    checks=diagnostics()
    rejected=[]
    tests=[('h86000', 'C3_L85', 'height_exponent', 86000),
           ('quartic_mu22', 'Q8_L21', 'mu_cap',22),
           ('cubic_mu19','C3_L85','mu_cap',19),
           ('C3_missing_coefficient_margin','C3_L85','cramer_additive',52000),
           ('Q8_missing_coefficient_margin','Q8_L21','cramer_additive',11000),
           ('entry13m','C3_L85','entry_exponent',13000000)]
    for label,name,key,value in tests:
        mutant=copy.deepcopy(spec[name]);mutant[key]=value
        try:
            check_local(mutant)
        except ValueError as error:
            rejected.append({'test':label,'reason':str(error)})
        else:
            raise ValueError(f'negative gate unexpectedly accepted: {label}')
    receipt={'status':'PASS_NEW_MAHLER39_QUARTIC_EDGE_REPLAY',
             'python':sys.version,'platform':platform.platform(),
             'elapsed_seconds':time.perf_counter()-start,
             'certificate_sha256':hashlib.sha256((ROOT/'evidence/NEW_CERTIFICATE.json').read_bytes()).hexdigest(),
             'C3_L85':c3,'Q8_L21':q8,'old_L80_accounting':old,'new_accounting':new,
             'edge':edge,'diagnostics':checks,'negative_gate_rejections':rejected,
             'scope':'finite exact obligations only; frozen input proofs not replayed; not Lean'}
    (args.out/'CHECKS.json').write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n')
    print(receipt['status'])
    print(f"cubic_profiles={len(c3['profiles'])} quartic_profiles={len(q8['profiles'])} "
          f"aggregate_triples={new['feasible_aggregate_triples']} component_bound={new['component_bound']}")
    print(f"quartic_majorants={checks['new_quartic_monomial_Taylor_majorants']} "
          f"negative_gates_rejected={len(rejected)} elapsed={receipt['elapsed_seconds']:.6f}s")

if __name__=='__main__':
    try:
        main()
    except (ValueError,OSError,KeyError,json.JSONDecodeError) as error:
        print(f'FAIL: {error}', file=sys.stderr)
        raise SystemExit(1)
