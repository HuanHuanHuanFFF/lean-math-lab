#!/usr/bin/env python3
"""Exact scalar certificate for B699 uniform-gap Round 2.

Only Python integers/Fraction are used in proof checks. No prime sieve, zeta
zero evaluation, Lean, or external data is called. The 16 rows bound analytic
functions on zero-height intervals; they are NOT a list of zeta zeros.
"""
from fractions import Fraction as F
from math import factorial
import json
from pathlib import Path

N = 48
A = 100_000_000
T0 = 122_568_684
B = 14_400_000_000
C = 14_403_516_484
D = 4095
r = F(4096, D)
eps = F(1, 16384)
c = 18
H = 294912
T = 16384
pi_lo = F(31, 10)
checks = []

def check(name: str, relation: bool, **data):
    if not relation:
        raise AssertionError(name)
    checks.append({'name': name, 'ok': True, **{k:str(v) for k,v in data.items()}})

def log_unit(q: F):
    assert F(1) <= q <= F(2)
    z = (q-1)/(q+1)
    lo = 2*sum((z**(2*j+1)/F(2*j+1) for j in range(N)), F(0))
    rem = 2*z**(2*N+1)/(F(2*N+1)*(1-z*z))
    return lo, lo+rem

log2_lo, log2_hi = log_unit(F(2))

def log_bounds(q):
    q = F(q)
    assert q > 0
    k = 0
    while q >= 2:
        q /= 2
        k += 1
    while q < 1:
        q *= 2
        k -= 1
    lo, hi = log_unit(q)
    if k >= 0:
        return lo+k*log2_lo, hi+k*log2_hi
    return lo+k*log2_hi, hi+k*log2_lo

def exp_bounds(q):
    q = F(q)
    assert 0 <= q < N+2
    lo = sum((q**j/F(factorial(j)) for j in range(N+1)), F(0))
    first = q**(N+1)/F(factorial(N+1))
    hi = lo + first/(1-q/F(N+2))
    return lo, hi

def entire_sinhc_bounds(Q):
    """sinh(sqrt(Q))/sqrt(Q), including Q=0 by its series."""
    Q = F(Q)
    assert 0 <= Q < (2*N+4)*(2*N+5)
    lo = sum((Q**j/F(factorial(2*j+1)) for j in range(N+1)), F(0))
    first = Q**(N+1)/F(factorial(2*N+3))
    hi = lo + first/(1-Q/F((2*N+4)*(2*N+5)))
    return lo, hi

def ceil_q(q, denominator):
    x = q*denominator
    return F(-(-x.numerator//x.denominator), denominator)

# Elementary pi bounds: integrate 26 terms of 1/(1+t^2).
pi_partial = 4*sum((F((-1)**j, 2*j+1) for j in range(26)), F(0))
check('pi_geometric_26_terms_gt_31_over_10', pi_partial > pi_lo, lower=pi_partial)
check('log2_gt_two_thirds', log2_lo > F(2,3))
check('log_rA_lt_19', log_bounds(r*A)[1] < 19)
check('log_rB_lt_24', log_bounds(r*B)[1] < 24)
check('log_rA_gt_2', log_bounds(r*A)[0] > 2)
check('B_is_120000_squared', B == 120000**2)
check('finite_right_endpoint', C-1 < r*B <= C, exact_right_endpoint=r*B)
check('old_finite_theorem_contains_new_domain', 100 <= T0 <= C <= 50_000_000_000)

lp_small = F(19, D*10000) + F(3*19**2, 4*A)
lp_tail = F(24, D*120000) + F(3*24**2, 4*B)
check('LP_small_endpoint', lp_small < F(1,300000), bound=lp_small)
check('LP_tail_endpoint', lp_tail < F(1,10000000), bound=lp_tail)
margin_small = 1/F(D) - F(3,25000)*(2+1/F(D))-F(1,300000)
check('small_consumer_margin', margin_small == F(49,58500000), margin=margin_small)
check('finite_psi_from_081_sqrt', F(81,100*10000) < F(3,25000))

# a=exp(eps), b=r/exp(eps). Each inequality is established by rational
# lower/upper bounds that dominate a,b, not by floating-point evaluations.
a_lo, a_hi = exp_bounds(eps)
b_lo, b_hi = r/a_hi, r/a_lo
d_lo, d_hi = b_lo-a_hi, b_hi-a_lo
check('inward_endpoints_order', d_lo > 0, lower=d_lo)
check('inward_width_ge_1_over_8192', d_lo > F(1,8192))
check('inward_width_le_123_over_million', d_hi < F(123,1000000))
check('inward_a_and_b_gt_one', a_lo >= 1 and b_lo > 1)
check('inward_endpoint_sum_with_two_over_B', a_hi+b_hi+F(2,B) < F(2001,1000))
# One can alternatively use elementary geometric inequalities for the width.
geometric_d_lo = r*(1-eps)-1/(1-eps)
geometric_d_hi = r/(1+eps)-(1+eps)
check('width_lower_using_geometric_bounds', geometric_d_lo > F(1,8192), bound=geometric_d_lo)
check('width_upper_using_geometric_bounds', geometric_d_hi < F(123,1000000), bound=geometric_d_hi)

# Zero-counting bound. N(t) includes multiplicities and the right endpoint.
# M(t)+log t is the only non-scalar theorem used to interpret this bound.
N_T_hi = F(T,1)/(2*pi_lo)*(log_bounds(F(T,1)/(2*pi_lo))[1]-1)+F(7,8)+log_bounds(T)[1]
check('zero_count_at_T_below_18200', N_T_hi < 18200, rounded_upper=ceil_q(N_T_hi,1000))
check('H_eq_c_over_eps', H == c/eps)
check('height_halved', 2*H == 589824)

# For 14<=a<b, partial summation gives the inclusive-right reciprocal bound
#   sum_(a<gamma<=b) 1/gamma <= (log(b/a)*(log(b/2pi)+log(a/2pi)))/(4pi)
#                              + 3 log(a)/a.
def reciprocal_bound(a,b):
    a,b = F(a),F(b)
    return (log_bounds(b/a)[1]*(log_bounds(b/(2*pi_lo))[1]+log_bounds(a/(2*pi_lo))[1])/(4*pi_lo)
            + 3*log_bounds(a)[1]/a)

base_sinhc_lo = entire_sinhc_bounds(c*c)[0]
rows = []
weighted = F(0)
for i in range(16):
    left = T+17408*i
    right = T+17408*(i+1)
    Q = F(c*c)-(eps*left)**2
    raw_kernel_hi = entire_sinhc_bounds(Q)[1]/base_sinhc_lo
    kernel_hi = ceil_q(raw_kernel_hi,10000)
    raw_sum_hi = reciprocal_bound(left,right)
    sum_hi = ceil_q(raw_sum_hi,100000)
    check(f'kernel_row_{i:02d}', raw_kernel_hi <= kernel_hi, rounded_upper=kernel_hi)
    check(f'reciprocal_row_{i:02d}', raw_sum_hi <= sum_hi, rounded_upper=sum_hi)
    weighted += kernel_hi*sum_hi
    rows.append({'i':i,'left':left,'right':right,'root_square':str(Q),
                 'kernel_upper':str(kernel_hi),'reciprocal_sum_upper':str(sum_hi),
                 'weighted_product':str(kernel_hi*sum_hi)})
check('sixteen_intervals_end_at_H', rows[0]['left']==T and rows[-1]['right']==H
      and all(rows[i]['right']==rows[i+1]['left'] for i in range(15)))
low = 2*F(123,1000000)*18200
mid = 2*F(2001,1000)*weighted
low_mid = low+mid
check('complete_low_and_middle_coefficient_lt_14', low_mid < 14,
      low=low,middle=mid,total=low_mid)

# High-height zeros: no RH above H.
check('complex_root_real_part_lt_1_over_40', c*eps/2+eps**2/4 < F(1,40)**2)
check('exp_1_over_40_lt_103_over_100', exp_bounds(F(1,40))[1] < F(103,100))
near_hi = reciprocal_bound(H,2*H)
check('high_near_reciprocal_sum_lt_13_over_10', near_hi < F(13,10), rounded_upper=ceil_q(near_hi,100000))
check('log_2H_lt_14', log_bounds(2*H)[1] < 14)
check('N_coarse_start', F(100,6)-1-log_bounds(100)[1] > 0)
check('sinh18_gt_30million', c*base_sinhc_lo > 30000000)
high_numerator = c*F(103,100)*F(13,10)+2*F(103,100)*F(5,2)
K_hi = high_numerator/F(30000000)
check('high_all_height_coefficient_lt_one_millionth', K_hi < F(1,1000000), bound=K_hi)
check('far_complex_denominator_condition', eps**2/4 < c*c)

# Exact test-function difference has 0<=J<=log(b/a)/(x^2-1), not an
# unspecified two-endpoint constant. This upper bound is <1 for x>=B.
check('archimedean_remainder_lt_one', 1/F(D) < B*B-1)
margin = F(1,8192)-F(14,120000)-F(2001,10**9)-F(1,10**7)-F(1,B)
check('large_tail_margin_exact', margin == F(475571,144000000000), margin=margin)
check('large_tail_margin_gt_one_over_400000', margin > F(1,400000))

# These are theorem-derived count upper bounds, NOT observed zero counts.
N_H_hi = F(H,1)/(2*pi_lo)*(log_bounds(F(H,1)/(2*pi_lo))[1]-1)+F(7,8)+log_bounds(H)[1]
N_H_integer = -(-N_H_hi.numerator//N_H_hi.denominator)
check('positive_zero_count_upper_lt_466000', N_H_hi < 466000, integer_upper=N_H_integer)

out = {'status':'all exact scalar checks passed; no analytic or Lean verification',
       'arithmetic':'Python int and fractions.Fraction only',
       'series_terms_parameter':N,'check_count':len(checks),
       'parameters':{'A':A,'T0':T0,'B':B,'C':C,'D':D,'r':str(r),'c':c,'epsilon':str(eps),'H':H,'T':T},
       'spectral_rows':rows,'spectral_coefficient':str(low_mid),
       'tail_margin':str(margin),'finite_RH_positive_zero_count_bound':N_H_integer,
       'checks':checks}
path = Path(__file__).with_name('CONSTANTS.json')
path.write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
print(json.dumps({k:out[k] for k in ['status','check_count','spectral_coefficient','tail_margin','finite_RH_positive_zero_count_bound']},ensure_ascii=False,indent=2))
print('Wrote',path.name)
