"""Recheck frozen arithmetic artifacts, without new searches or Magma runs."""
import hashlib
import json
import math
from pathlib import Path
import sympy as sp

HERE = Path(__file__).resolve().parent
X, Y = sp.symbols('X Y')
basis = [sp.Integer(1), X+1, Y+1, (X+1)*(X+2)/2,
         (X+1)*(Y+1), (Y+1)*(Y+2)/2]

def matrix(points):
    return sp.Matrix([[f.subs({X:x, Y:y}) for f in basis] for x,y in points])

simple = json.loads((HERE/'truncated-binomial-grid-obstruction.json').read_text())
A = matrix(simple['support'])
assert A.rank() == 4 and A[:3, [0,1,3]].det() == -1
from itertools import combinations
minor_gcd = 0
for cols in combinations(range(6), 4):
    minor_gcd = math.gcd(minor_gcd, abs(int(A[:, list(cols)].det())))
assert minor_gcd == 7
for vector in A.nullspace():
    H = sp.expand(sum(c*f for c,f in zip(vector, basis)))
    assert H.subs({X:10, Y:21}) == 0
assert 26**5 > 4*15**5

curve = json.loads((HERE/'window-parabola-base-locus.json').read_text())
k,n,m,d = [curve[key] for key in ('k','n','m','d')]
H = (Y-X)**2-100*(X+Y)-100*k
assert matrix(curve['support']).rank() == 5
assert all(H.subs({X:x,Y:y}) == 0 for x,y in curve['support'])
assert H.subs({X:n,Y:m}) == 0 and m-n == d and d >= k
assert (m+k)**k <= 4*(n+k)**k
assert 4*(n+1)**k <= (m+1)**k
assert k*k < 18*d and n > 9*d and 50*n > k**3
assert math.prod(range(m+1,m+k+1)) != 4*math.prod(range(n+1,n+k+1))

boundary = json.loads((HERE/'jet-normalization-small-prime-boundary.json').read_text())
k,n,m = [boundary[key] for key in ('k','n','m')]
assert math.prod(range(m+1,m+k+1)) == 4*math.prod(range(n+1,n+k+1))
assert boundary['normalized_residual'] == -3255
assert -3255 % 9 == 3 and m-n < k

model = json.loads((HERE/'cyclic-transport-model.json').read_text())
low, high = model['lower_values'], model['upper_values']
assert math.prod(high) == 4*math.prod(low) and min(high) > max(low)
assert max(low)*1000 < min(low)*1001
assert max(high)*1000 < min(high)*1001
assert [[math.gcd(a,b) for b in high] for a in low] == model['gcd_matrix']
assert max(low)-min(low)>6 and max(high)-min(high)>6

xml = (HERE/'external/magma-rank-live.xml').read_text(encoding='utf-8-sig')
for marker in ('PROVED true', 'FINITE_INDEX true', 'RANK_BOUND 5',
               'RATIONAL_POINTS_PROVED_ALL false'):
    assert marker in xml

assert 4**11 > 20*3**11
report = {'status':'PASS', 'verified':'frozen exact arithmetic and recorded Magma fields',
          'new_parameter_search':False, 'magma_rerun':False, 'lean_run':False,
          'paper_theorems':'separate paper proofs; not promoted by this verifier'}
(HERE/'verification.json').write_text(json.dumps(report, indent=2)+'\n')
manifest=[]
for path in sorted(HERE.rglob('*')):
    if path.is_file() and path.name not in ('checkpoint-hashes.json',):
        manifest.append({'file':str(path.relative_to(HERE)), 'bytes':path.stat().st_size,
                         'sha256':hashlib.sha256(path.read_bytes()).hexdigest()})
(HERE/'checkpoint-hashes.json').write_text(json.dumps(manifest, indent=2)+'\n')
print(json.dumps(report, indent=2))
