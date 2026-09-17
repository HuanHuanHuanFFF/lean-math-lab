"""Exact local identities and rational inequalities for the common analytic chain."""
from pathlib import Path
from fractions import Fraction as F
from math import factorial
from datetime import datetime, timezone
import hashlib
import json
import sympy as sp

ROOT = Path(__file__).resolve().parent
RUN = ROOT.parents[1]
SOURCES = RUN/'experiments/cubic'
D, W, a, x, k = sp.symbols('D W a x k')
G = W**3-27*W*D**2+2*k*D**3+18*D*W+4*k*D**2-9*W-2*k*D
L = 9*W+2*k*D
C = 8*k*(729-k*k)
s0 = 486-4*k*k
At = -36*(8*k*k+243)
Bt = 32*k**4+31104*k*k-314928
t, v = (C*D/L-s0)/9, C*(1-D)/L
GW, GD = sp.diff(G, W), sp.diff(G, D)
assert sp.expand(W*GW+D*GD-3*G-2*L*(1-D)) == 0
curve_numerator = sp.fraction(sp.factor(v*v-t**3-At*t-Bt))[0]
assert sp.rem(curve_numerator, G, W) == 0
derivative_numerator = sp.fraction(sp.factor(sp.diff(t, D)*GW-sp.diff(t, W)*GD-2*v))[0]
assert sp.rem(derivative_numerator, G, W) == 0
assert sp.expand(G.subs(W, -2*k*D/9)-8*k*(729-k*k)*D**3/729) == 0

def polynomial(epsilon, h, xx, aa):
    dd = xx-epsilon
    return 4*aa*(aa-3*dd)*(aa-6*dd)-(h*dd-9*aa)*(xx*xx-2)

h = sp.symbols('h')
assert sp.expand(polynomial(1, h, D+1, (W+6*D)/2).subs(h, 27-k)-G/2) == 0
for epsilon in (1, -1):
    dd = x-epsilon
    assert sp.expand(polynomial(epsilon, h, x, 6*dd-a)+polynomial(epsilon, 54-h, x, a)) == 0
assert sp.expand(polynomial(1, h, -x, -a)+polynomial(-1, h, x, a)) == 0

# Elementary, rationally certified logarithm comparisons.
partial_e = sum((F(1, factorial(i)) for i in range(6)), F(0))
assert partial_e > F(27, 10)
assert partial_e+F(7, 6*factorial(6)) < F(11, 4)
assert 27**7 > 2**10*10**7  # log(2)<7/10.
assert 11**20 < 10**9*4**20  # exp(1000/3)<10^150.
for integer, power in ((405000, 13), (6335, 9), (813, 7), (10050, 10), (50, 4), (10, 3)):
    assert 27**power > integer*10**power

models = []
derivative_error = F(18, 512)+F(9, 512**2)
assert 48-derivative_error > 47
assert F(33, 4)-derivative_error > 8
assert F(75, 16)-derivative_error > 4
for kk in (7, 11, 16, 20, 25):
    aa, bb = int(At.subs(k, kk)), int(Bt.subs(k, kk))
    j = F(256*27*aa**3, 4*aa**3+27*bb**2)
    assert max(abs(j.numerator), j.denominator) < 2**70
    assert aa % 4 == bb % 16 == 0
    assert max(abs(aa//4), abs(bb//16)) < 2**70
    margins = []
    for endpoint, sign in ((F(-6), -1), (F(-5), 1), (F(0), 1),
                           (F(5, 2), -1), (F(13, 4), -1), (F(6), 1)):
        margin = sign*(endpoint**3-27*endpoint+2*kk)
        margin -= abs(18*endpoint+4*kk)/512+abs(9*endpoint+2*kk)/512**2
        assert margin > 0
        margins.append(str(margin))
    hh = 27-kk
    Ah, Bh = -4*hh*(hh-27)*(hh-54), 12*hh*hh-648*hh+7290
    assert abs(Ah) <= 30272 and abs(Bh) <= 6042
    assert 3*abs(Ah)+52*abs(Bh) <= 405000
    assert 1+abs(aa)+abs(bb) < 6000**2
    # A direct integer polynomial coefficient bound, valid over every number field.
    norm_f = 1+2*abs(aa)+8*abs(bb)+aa*aa
    norm_g = 4*(1+abs(aa)+abs(bb))
    ss = max(norm_f, norm_g)
    assert 27**27 > ss*10**27  # log(S)/3<9.
    models.append({'k': kk, 'endpoint_margins': margins, 'height_upper_norm_S': ss,
                   'hE_lt_50': True, 'upper_height_over_any_number_field_lt_h_plus_9': True})

c4 = []
for terms in range(1, 6):
    bound = (3*10**(6*terms+12)*3**(2*terms+4)*4**(2*(terms+1)**2)
             *(terms+2)**(2*terms*terms+13*terms+24)*1000**(terms+1))
    assert bound < 10**230
    c4.append({'terms': terms, 'integer_upper_bound': bound})
assert 10**300 > 32*10**230
assert F(30)-F(250**2, 16) < -1230*3
assert 119+3*38*250**2 == 7125119

source_files = [RUN/'notes/cubic/10-FROZEN.json', RUN/'notes/cubic/10-uniform-analytic-contract.md',
                RUN/'notes/cubic/10-certificates-and-height-addendum.md',
                RUN/'notes/cubic/10bc-FROZEN.json',
                RUN/'experiments/geometry/b3_height_manifest.json',
                RUN/'experiments/geometry/b3_tail_manifest.json']
out = {'status': 'PASS', 'utc': datetime.now(timezone.utc).isoformat(),
       'reviewer': '/root/geometry', 'common_polynomial_identities': True,
       'auxiliary_reflection_and_sign_identities': True, 'models': models,
       'all_30_branch_endpoint_margins_positive': True,
       'David_c4_integer_upper_bounds': c4,
       'exceptional_threshold_lt_10_power_150': True,
       'log10_lt_3_and_log2_lt_7_over_10': True,
       'source_hashes': {p.relative_to(RUN).as_posix(): hashlib.sha256(p.read_bytes()).hexdigest()
                         for p in source_files},
       'scope': 'local exact identities and elementary constants; Area topology and David application are in the accompanying mathematical review'}
dest = ROOT/'b3-five-analytic-independent.json'
assert not dest.exists(), 'Version outputs rather than overwriting prior evidence.'
dest.write_text(json.dumps(out, indent=2), encoding='utf-8')
print(json.dumps({key: out[key] for key in ('status', 'common_polynomial_identities',
                  'all_30_branch_endpoint_margins_positive', 'exceptional_threshold_lt_10_power_150')}))
