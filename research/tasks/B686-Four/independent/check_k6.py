"""Exact audit of the k=6 exclusion, not a Lean proof or the full 686 claim."""
from itertools import product
from math import prod
from pathlib import Path
import json
import sympy as s

x, q = s.symbols('x q')
S = (x*x-1)*(x*x-9)*(x*x-25)
H = x**3 - s.Rational(35, 2)*x
assert s.expand(H*H-S) == s.Rational(189, 4)*x*x+225
D = s.expand(16*(S-(H-s.Rational(1, 4))**2))
assert D == 8*x**3-756*x*x-140*x-3601
shifted = s.Poly(D.subs(x, q+95), q)
assert all(c > 0 for c in shifted.all_coeffs())

def block(t, k=6):
    return prod(range(t+1, t+k+1))

# For m >= 2*n+6, each factor m+i >= 2*(n+i), so ratio >= 64.
# Exhaust the remaining admissible m for every n below the analytic bound 44.
checked = 0
hits = []
for n in range(44):
    for m in range(n+6, 2*n+6):
        checked += 1
        if block(m) == 4*block(n):
            hits.append({'n': n, 'm': m})
assert not hits
# Direct rational checks independently guard the transcription of the radical band.
for t in range(44, 1000):
    h = H.subs(x, 2*t+7)
    p = 64*block(t)
    assert (h-s.Rational(1,4))**2 < p < h*h
report = {
    'scope': 'k=6 only; symbolic identities and finite residual search',
    'threshold_n': 44,
    'shifted_polynomial': str(shifted.as_expr()),
    'finite_n_range': [0, 43],
    'finite_m_range': 'n+6 <= m < 2*n+6',
    'finite_pairs_checked': checked,
    'hits': hits,
    'rational_band_checks': 956,
    'proof_status': 'informal universal argument in coordinator.md; no Lean claim',
}
Path(__file__).with_suffix('.json').write_text(json.dumps(report, indent=2)+'\n', encoding='utf-8', newline='\n')
print(json.dumps(report, indent=2))
