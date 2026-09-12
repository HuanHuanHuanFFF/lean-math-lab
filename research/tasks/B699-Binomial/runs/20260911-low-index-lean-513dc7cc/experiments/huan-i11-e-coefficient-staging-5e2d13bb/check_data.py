from pathlib import Path
from fractions import Fraction
from math import comb,factorial
import json,re,hashlib
out=Path(__file__).resolve().parent
d=json.loads((out/'exact-checks.json').read_text())
c=[(-1)**r*comb(15+r,r)*comb(38,31+r) for r in range(8)]
f=[(-1)**r*(factorial(15+r)//(factorial(r)*factorial(15)))*(factorial(38)//(factorial(31+r)*factorial(7-r))) for r in range(8)]
assert c==f==d['coefficients']
assert sum((Fraction(v,9**r) for r,v in enumerate(c)),Fraction())==Fraction(13515592997264,1594323)
text=(out/'Coeff0.lean').read_text()+(out/'Coefficients.lean').read_text()
found={int(r):int(v) for r,v in re.findall(r'fastECoefficient 15 7 15 (\d+) = \((-?\d+) : ℤ\)',text)}
assert found==dict(enumerate(c))
rs=(out/'RatSum.lean').read_text()
terms=[(int(v),int(r)) for v,r in re.findall(r'\(Int.castRingHom ℚ\) \((-?\d+) : ℤ\) \* \(1 / 9 : ℚ\) \^ (\d+)',rs)]
assert terms==[(v,r) for r,v in enumerate(c)]
for name in ['ClosedEval.lean','ActualEval.lean']:
 code=(out/name).read_text();assert not re.search(r'^\s+(?:rw|simp|simp_all|norm_num|decide|native_decide)\b',code,re.M)
 assert '13515592997264 : ℚ' in code and '/ 1594323' in code
for p in out.glob('*.lean'):
 assert not re.search(r'\b(?:sorry|admit|axiom|native_decide)\b',p.read_text())
freeze=out/'FREEZE.json'
if freeze.exists():
 data=json.loads(freeze.read_text());assert all(hashlib.sha256((out/n).read_bytes()).hexdigest()==v['sha256'] for n,v in data['files'].items())
print(json.dumps({'status':'PASS_EXACT_STATIC_CHECKS_ONLY','coefficient_count':8,'coefficients':c,'actual_target_unchanged':True,'lean_invocations':0}))
