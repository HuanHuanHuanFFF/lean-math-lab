"""Small exact check for the dyadic H=25 transfer; not an NC3 search."""
import hashlib
import json
from datetime import datetime, timezone
from pathlib import Path

import sympy as sp

x, a, t, v = sp.symbols('x a t v')
D = x - 1
Z = 25 * D - 9 * a
F = 4*a*(a-3*D)*(a-6*D) - Z*(x*x-2)
W = 2*a - 6*D
G = W**3 - 27*W*D**2 + 4*D**3 + 18*D*W + 8*D**2 - 9*W - 4*D
assert sp.expand(G - 2*F) == 0
tx = 58*(5*a-25*D)/Z
vx = 5800*(x-2)/Z
assert sp.factor((vx*vx-tx**3+60*tx**2+8700*tx)*Z**3/F) == 33640000
q = vx + 9*tx + 290
assert sp.factor((vx+18*tx+580)/q - x) == 0
assert sp.factor(25*(tx+58)/q - a) == 0
assert sp.factor(F.subs(a,25*D/9)) == 5800*D**3/729
assert 16 - sp.Rational(2,5)*50**2 < -315*3

root = Path(__file__).resolve().parent
out = {
    'status': 'PASS',
    'scope': 'Exact polynomial identities and the safe UP16-to-M<50 inequality only.',
    'G_equals_2_F25': True,
    'pullback_curve_factor': '33640000 / Z25^3',
    'inverse_x_and_a': True,
    'Z25_zero_value': '5800*(x-1)^3/729',
    'discovery_correction': 'The first run overcounted a factor 25 in the expected Z25=0 constant and stopped at its assertion; the symbolic value is 5800/729. No certificate was produced by that failed run.',
    'UP16_M50_exponent': '-984 < -945',
    'dependencies_not_rechecked': ['stage05 analytic theorem', 'stage05 RF and lattice certificate', 'parent periodic certificate'],
    'script_sha256': hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
}
stamp = datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
dest = root / f'stage06-h25-transfer-{stamp}.json'
dest.write_text(json.dumps(out, indent=2, ensure_ascii=False)+'\n', encoding='utf-8')
print(json.dumps({'status':out['status'], 'output':str(dest)}, ensure_ascii=False))
