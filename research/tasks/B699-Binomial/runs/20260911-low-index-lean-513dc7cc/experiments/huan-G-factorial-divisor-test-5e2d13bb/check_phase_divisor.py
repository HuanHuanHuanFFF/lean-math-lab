from __future__ import annotations
from datetime import datetime, timezone
from fractions import Fraction as Q
from math import comb, floor, ceil, isqrt
from pathlib import Path
import hashlib
import json
import time

OUT = Path(__file__).resolve().parent
RUN = OUT.parent.parent
REPO = RUN.parents[4]
PAIRS = [(3, 2), (15, 8), (15, 11), (5, 4), (5, 3), (25, 17)]


def frac(x): return x - floor(x)
def qs(x): return f'{x.numerator}/{x.denominator}'


def phase(c, d, t, s):
    D, B = d * t, (c - d) * t
    assert 0 <= s <= D
    return (floor(2 * D - s) - floor(D) - floor(D - s)
            + floor(B + s) - floor(B) - floor(s))


def phase_cells(c, d, t):
    D, B = d * t, (c - d) * t
    cuts = {Q(0), D}
    candidates = ([2 * D - k for k in range(ceil(2 * D) + 1)]
                  + [D - k for k in range(ceil(D) + 1)]
                  + [k - B for k in range(ceil(B + D) + 1)]
                  + [Q(k) for k in range(ceil(D) + 1)])
    cuts.update(s for s in candidates if 0 <= s <= D)
    cuts = sorted(cuts)
    mids = [(left + right) / 2 for left, right in zip(cuts, cuts[1:])]
    values = [(s, phase(c, d, t, s)) for s in cuts + mids]
    return min(v for s, v in values), mids


def closed_phi(c, d, t):
    return int(2 * frac(d * t) + frac((c - d) * t) >= 2)


def witness(c, d, t):
    value, mids = phase_cells(c, d, t)
    assert value == 0
    if (c, d, t) == (3, 2, Q(3, 10)): return Q(2, 5)
    if (c, d, t) == (3, 2, Q(7, 10)): return Q(1, 10)
    return next(s for s in mids if phase(c, d, t, s) == 0)


def safe_radius(c, d, t, s):
    values = [(2*d*t-s, 2*d), (d*t, d), (d*t-s, d),
              ((c-d)*t+s, c-d), ((c-d)*t, c-d), (s, 0)]
    assert 0 < s < d*t
    assert all(v.denominator != 1 for v, a in values)
    return min([t / 2, (1-t) / 2] +
               [min(frac(v), 1-frac(v)) / (2*a) for v, a in values if a])


def prime(p):
    return p >= 2 and all(p % k for k in range(2, isqrt(p) + 1))


def vfact(n, p):
    result = 0
    while n:
        n //= p
        result += n
    return result


def vchoose(n, k, p):
    assert 0 <= k <= n
    return vfact(n, p)-vfact(k, p)-vfact(n-k, p)


def main():
    start = time.perf_counter()
    sources = {}
    paths = [REPO/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/PadeInteger.lean',
             RUN/'lean/Factorial/FactorialCommon.lean',
             RUN/'experiments/huan-i18-adoption-5e2d13bb/REPORT.md',
             Path(r'D:\CodingProject\Math\.lake\packages\mathlib\Mathlib\NumberTheory\Padics\PadicVal\Basic.lean')]
    for p in paths:
        data = p.read_bytes()
        sources[str(p)] = {'bytes': len(data), 'sha256': hashlib.sha256(data).hexdigest()}
    records = []
    total_phases = 0
    for c, d in PAIRS:
        b, a = c-d, c+d
        # The exact s-cell boundaries have slopes 2d,d,-b,0 and integer intercepts.
        # All pairwise intersections on 0<t<1 are covered by these denominators.
        denominators = {d, 2*d, b, c, a}
        t_cuts = sorted({Q(0), Q(1)} | {Q(k, n) for n in denominators for k in range(1, n)})
        t_mids = [(x+y)/2 for x,y in zip(t_cuts, t_cuts[1:])]
        for t in t_cuts + t_mids:
            direct, _ = phase_cells(c, d, t)
            assert direct == closed_phi(c, d, t), (c, d, t, direct, closed_phi(c,d,t))
        total_phases += len(t_cuts) + len(t_mids)
        t = Q(3, 2*a)
        assert 0 < d*t < 1 and 0 < b*t < 1
        s0, s1 = witness(c, d, t), witness(c, d, 1-t)
        eps = min(safe_radius(c,d,t,s0), safe_radius(c,d,1-t,s1))
        for epsilon in [-eps, Q(0), eps]:
            assert phase(c,d,t+epsilon,s0) == 0
            assert phase(c,d,1-t-epsilon,s1) == 0
        concrete = []
        for p in [1009, 10007]:
            assert prime(p)
            for side, tp, sp in [('t', t, s0), ('1-t', 1-t, s1)]:
                m, r = floor(tp*p), floor(sp*p)
                for delta in [0, 1]:
                    u, v = d*m-delta, b*m+delta-1
                    assert m >= 1 and v >= 0 and 0 <= r <= u
                    top1, top2 = 2*u-r, v+r
                    assert max(top1,top2,a*m) < p*p
                    vpq = vchoose(top1,u,p) + vchoose(top2,r,p)
                    # D is the explicit balanced multinomial factorial ratio.
                    vpd = vfact(a*m,p)-2*vfact(d*m,p)-vfact(b*m,p)
                    assert vpq == 0 and vpd == 1, (c,d,p,side,delta,m,r,vpq,vpd)
                    row = {'p':p,'prime_checked_by_trial_division':True,'phase':side,
                           'm':m,'delta':delta,'u':u,'v':v,'r':r,
                           'r_in_actual_coefficient_range':True,'all_factorial_arguments_below_p_squared':True,
                           'v_p_actual_qMagnitude':vpq,'v_p_balanced_multinomial_D':vpd}
                    if p == 1009:
                        qmod = (comb(top1,u)*comb(top2,r)) % p
                        assert qmod != 0
                        row['direct_actual_qMagnitude_mod_p'] = qmod
                    concrete.append(row)
        records.append({'c':c,'d':d,'b':b,'a':a,
                        'exact_phase_arrangement_denominators':sorted(denominators),
                        'direct_phase_minimum_checks':len(t_cuts)+len(t_mids),
                        'closed_phi_matches_all_cells_and_boundaries':True,
                        't':qs(t),'reflected_t':qs(1-t),'witness_s':qs(s0),'reflected_witness_s':qs(s1),
                        'phi_t':0,'phi_reflected_t':0,
                        'open_radius':qs(eps),'open_interval':[qs(t-eps),qs(t+eps)],
                        'reflected_open_interval':[qs(1-t-eps),qs(1-t+eps)],
                        'all_witness_floor_arguments_nonintegral':True,
                        'concrete_checks':concrete})
    c3_cuts=[Q(0),Q(2,5),Q(1,2),Q(4,5),Q(1)]
    c3_intervals=[{'open_left':qs(l),'open_right':qs(r),'phi':closed_phi(3,2,(l+r)/2)} for l,r in zip(c3_cuts,c3_cuts[1:])]
    result={'schema':1,'utc':datetime.now(timezone.utc).isoformat(),
            'status':'exact finite phase/prime tests plus separate paper obstruction; no Lean execution',
            'source_hashes':sources,'actual_coefficient':'choose(2u-r,u)*choose(v+r,r), u=d*m-delta, v=(c-d)*m+delta-1, 0<=r<=u',
            'phase_minimum':'min_{0<=s<=dt} floor(2dt-s)-floor(dt)-floor(dt-s)+floor((c-d)t+s)-floor((c-d)t)-floor(s)',
            'closed_phi':'indicator(2*frac(d*t)+frac((c-d)*t)>=2)',
            'phase_arrangement_checks':total_phases,'records':records,'c3_open_intervals':c3_intervals,
            'prime_checks':48,'direct_bigint_q_residue_checks':24,
            'elapsed_seconds':time.perf_counter()-start,'worker_lean_invocations':0,
            'no_gcd_recurrence_assumed':True,'new_original_indices':[]}
    (OUT/'phase-and-prime-checks.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'phase_arrangement_checks':total_phases,'prime_checks':48,'direct_q_residue_checks':24,
                      'seconds':result['elapsed_seconds'],
                      'paired_zeros':[{'pair':[r['c'],r['d']],'t':r['t'],'s':r['witness_s'],'reflected_s':r['reflected_witness_s'],'radius':r['open_radius']} for r in records],
                      'c3_intervals':c3_intervals,'c3_prime1009':records[0]['concrete_checks'][:4]},indent=2))


if __name__ == '__main__': main()
