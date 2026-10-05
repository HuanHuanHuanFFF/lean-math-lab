#!/usr/bin/env python3
"""Exact arithmetic checks for two proved lemmas; stdlib only.
No tests here establish the unrestricted Erdős 25 statement.
"""
import argparse, json, math, time
from fractions import Fraction
from pathlib import Path


def sharp_bound(k):
    r=k//2-math.isqrt(k)
    assert k>=16 and 4*r>=k
    return r, Fraction(math.comb(k,r), 1 << (2*r*k+r*(r+1)))


def capacity():
    table=[]
    for j in [4096,5183,5184,6400,7744,9216,16384,65536,262144,1048576]:
        k=2*(math.isqrt(j)//8)
        r,E=sharp_bound(k)
        # Verify the exact intermediate quadratic bound, avoiding irrational powers.
        assert E <= Fraction(1,1 << (k*k//4))
        table.append({'j':j,'k':k,'r':r,
           'E_upper_exact':f'{E.numerator} / 2^{E.denominator.bit_length()-1}',
           'E_upper_log2_float':math.log2(E.numerator)-math.log2(E.denominator),
           'reciprocal_band_factor_exact':'21/19',
           'window_harmonic_factor_exact':'21/22'})
    finite=Fraction(0)
    for h in range(8,12):
        _,E=sharp_bound(2*h)
        finite+=64*(2*h+1)*E
    # For h>=12, T_h=(128h+64)2^(-h^2), T_(h+1)/T_h<1/2.
    # Hence sum_{h>=12} T_h <= 2*T_12=3200*2^(-144).
    tail=Fraction(3200,1<<144)
    bound=Fraction(21,19)*(finite+tail)
    broad_finite=Fraction(0)
    for h in range(8,12):
        _,E=sharp_bound(2*h)
        broad_finite+=64*(2*h+1)*(1+64*(h+1)**2)*E
    broad_tail=Fraction(3200*(1+64*13**2),1<<144)
    broad_bound=broad_finite+broad_tail
    assert broad_bound < Fraction(1,1<<114)
    assert bound < Fraction(1,1<<126)
    return {'table':table,'all_j_ge_4096_reciprocal_upper_exact':str(bound),
            'upper_less_than_exact':str(Fraction(1,1<<126)),
            'comparison_verified':True,
            'all_active_moduli_broad_upper_exact':str(broad_bound),
            'broad_upper_less_than_exact':str(Fraction(1,1<<114)),
            'broad_comparison_verified':True,
            'tail_certificate':'sum h>=12 (128h+64)2^(-h^2) <= 3200*2^(-144)'}


def tower(r,u):
    rows=[]
    last=u*3**r
    for j in range(r):
        n=u*2**(r-j)*3**j
        a=last*(1+2**(r-j-1)) % n
        rows.append((n,a))
    rows.append((last,0))
    assert all(rows[i][0]<rows[i+1][0] for i in range(r))
    # Independently evaluate the raw congruence predicates on EVERY multiple
    # of the last modulus in a full common period. Only these can survive
    # into the last first-kill set. This is exact periodic-density checking.
    survivors=[]
    for t in range(2**r):
        x=last*t
        if all(x%n != a for n,a in rows[:-1]):
            survivors.append(t)
    assert survivors==[1]
    # Direct activated checking for last first-kills over [1,period].
    activated=[]
    for t in range(1,2**r+1):
        x=last*t
        if all(x<n or x%n!=a for n,a in rows[:-1]):
            activated.append(t)
    assert activated==[1]
    assert all(last>=n and last%n!=a for n,a in rows[:-1])
    e=Fraction(1,last*2**r)
    Hfirst=Fraction(1,last)
    return {'r':r,'u':u,'rows':rows,'period':last*2**r,
            'periodic_candidate_multiples_checked':2**r,
            'activated_candidate_multiples_checked':2**r,
            'periodic_surviving_t':survivors,
            'activated_surviving_t':activated,
            'last_first_kill_density_exact':str(e),
            'harmonic_mass_at_N_equal_last_modulus_exact':str(Hfirst),
            'Hfirst_over_e_exact':str(Hfirst/e)}


if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',default='data/capacity_and_tower.json');args=p.parse_args()
    start=time.monotonic()
    data={'capacity':capacity(),'tower':[tower(r,u) for u in [1,5] for r in range(1,17)]}
    data['seconds']=time.monotonic()-start
    data['tower_total_candidate_tests']=sum(t['periodic_candidate_multiples_checked']+t['activated_candidate_multiples_checked'] for t in data['tower'])
    Path(args.out).write_text(json.dumps(data,indent=2))
    print(json.dumps({'capacity_comparison_verified':data['capacity']['comparison_verified'],
      'tower_instances':len(data['tower']),'tower_total_candidate_tests':data['tower_total_candidate_tests'],
      'all_checks_passed':True,'seconds':data['seconds']},indent=2))
