from pathlib import Path
from fractions import Fraction
from math import comb,factorial
import json,re,hashlib
out=Path(__file__).resolve().parent
d=json.loads((out/'exact-checks.json').read_text())
c=[(-1)**r*comb(14+r,r)*comb(37,29+r) for r in range(9)]
f=[(-1)**r*(factorial(14+r)//(factorial(r)*factorial(14)))*(factorial(37)//(factorial(29+r)*factorial(8-r))) for r in range(9)]
assert c==f==d['coefficients']
v=sum((Fraction(a,9**r) for r,a in enumerate(c)),Fraction())
assert v==Fraction(117258057456010,4782969)
eb=Fraction(38**38,15**30*8**8)*Fraction(46880976166089921083,79228162514264337593543950336)
assert eb==Fraction(d['eBase'])
assert 2*abs(v)<=eb and 2*Fraction(13515592997264,1594323)<=eb
s=(out/'Coeff0.lean').read_text()+(out/'Coeffs.lean').read_text()
found={int(r):int(a) for r,a in re.findall(r'fastECoefficient 14 8 14 (\d+) = \((-?\d+) : ℤ\)',s)}
assert found==dict(enumerate(c))
rs=(out/'RatSum.lean').read_text()
terms=[(int(a),int(r)) for a,r in re.findall(r'\(Int.castRingHom ℚ\) \((-?\d+) : ℤ\) \* \(1 / 9 : ℚ\) \^ (\d+)',rs)]
assert terms==[(a,r) for r,a in enumerate(c)]
for name in ['Closed.lean','Actual.lean','Caps.lean']:
 s=(out/name).read_text();assert not re.search(r'^\s+(?:rw|simp|simp_all|norm_num|native_decide)\b',s,re.M)
for p in out.glob('*.lean'):
 s=p.read_text();assert not re.search(r'\b(?:sorry|admit|axiom|native_decide)\b',s)
 assert not any(l.startswith('import ') and l.endswith('.I11InitialCapComputation.ThreeTwo') for l in s.splitlines())
fz=out/'FREEZE.json'
if fz.exists():
 z=json.loads(fz.read_text());assert all(hashlib.sha256((out/n).read_bytes()).hexdigest()==v['sha256'] for n,v in z['files'].items())
print(json.dumps({'status':'PASS_EXACT_STATIC_CHECKS_ONLY','coefficient_count':9,'max_coefficient_bits':max(abs(a).bit_length() for a in c),'rat_sum':str(v),'both_caps':True,'forbidden_imports':False,'lean_invocations':0}))
