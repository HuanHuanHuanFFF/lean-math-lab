"""Independent symbolic and finite audit of the k=8 Lean statement."""
from math import prod
from pathlib import Path
import json
import sympy as s

t, q = s.symbols('t q')
p = s.prod(t+i for i in range(1,9))
h = t**4+18*t**3+111*t**2+270*t+204
e = 16*(2*t+9)**2
assert s.expand(h*h-p-e) == 0
shifted = s.Poly((h-e).subs(t,q+5),q)
assert all(c > 0 for c in shifted.all_coeffs())
checked = 0
for n in range(5):
    # m >= 2n+8 gives each factor >= twice its counterpart, ratio >= 256.
    for m in range(n+8,2*n+8):
        checked += 1
        assert prod(range(m+1,m+9)) != 4*prod(range(n+1,n+9))
report = {'scope':'k=8 only; independent polynomial and residual arithmetic',
          'threshold_n':5, 'identity': 'H(t)^2-P8(t)=16*(2*t+9)^2',
          'positive_shifted_gap':str(shifted.as_expr()),
          'finite_n_range':[0,4], 'finite_pairs_checked':checked, 'hits':[]}
Path(__file__).with_suffix('.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps(report,indent=2))
