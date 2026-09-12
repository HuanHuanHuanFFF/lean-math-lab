from __future__ import annotations
from datetime import datetime, timezone
from fractions import Fraction
from hashlib import sha256
from math import comb, factorial, gcd
from pathlib import Path
import json
import sys
import sympy as s

ROOT = Path(__file__).resolve().parent
z, t = s.symbols('z t')

def poly_integral_01(expr):
    return s.expand(sum(c / s.Rational(k[0] + 1) for k, c in s.Poly(s.expand(expr), t).terms()))

def integral_polynomials(a, b, c):
    k = s.Rational(factorial(a+b+c+1), factorial(a)*factorial(b)*factorial(c))
    p = k * poly_integral_01(t**a*(1-t)**b*(z-t)**c)
    q = (-1)**c*k*poly_integral_01(t**b*(1-t)**c*(1-t+z*t)**a)
    e = k * poly_integral_01(t**a*(1-t)**c*(1-z*t)**b)
    return tuple(s.expand(x) for x in (p,q,e))

def coefficient_polynomials(a,b,c):
    n = a+b+c+1
    p = sum((-1)**(c+r)*comb(n,r)*comb(a+c-r,a)*z**r for r in range(c+1))
    q = sum((-1)**c*comb(a+c-r,c)*comb(b+r,r)*z**r for r in range(a+1))
    e = sum((-1)**r*comb(a+r,r)*comb(n,a+c+r+1)*z**r for r in range(b+1))
    return tuple(s.expand(x) for x in (p,q,e))

cases = 0
source_sign_failures = 0
for a in range(4):
    for b in range(4):
        for c in range(4):
            p,q,e = coefficient_polynomials(a,b,c)
            pi,qi,ei = integral_polynomials(a,b,c)
            assert s.expand(p-pi) == s.expand(q-qi) == s.expand(e-ei) == 0
            assert s.expand(p-(1-z)**(b+c+1)*q-z**(a+c+1)*e) == 0
            assert all(v.is_Integer for h in (p,q,e) for v in s.Poly(h,z).all_coeffs())
            printed_p = (-1)**c * p
            if c % 2:
                assert s.expand(printed_p-p) != 0
                source_sign_failures += 1
            cases += 1

determinants = 0
homogenizations = 0
contents = 0
for a in range(7):
    for b in range(1,6):
        p,q,e = coefficient_polynomials(a,b,a)
        p1,q1,e1 = coefficient_polynomials(a+1,b-1,a+1)
        expected = (-1)**(a+1)*comb(2*a+b+1,2*a+1)*comb(2*a+2,a+1)*z**(2*a+1)
        assert s.expand(p*q1-q*p1-expected)==0
        determinants += 1
        cq = [int(s.Poly(q,z).nth(r)) for r in range(a+1)]
        cp = [int(s.Poly(p,z).nth(r)) for r in range(a+1)]
        g = gcd(*cq)
        assert g > 0 and all(x % g == 0 for x in cp)
        contents += 1
        for x,y in [(-5,-3),(-1,2),(0,7),(1,1),(3,8),(5,2)]:
            hvp=sum((cp[r]//g)*x**r*y**(a-r) for r in range(a+1))
            hvq=sum((cq[r]//g)*x**r*y**(a-r) for r in range(a+1))
            assert s.Rational(hvp)==s.Rational(y)**a*p.subs(z,s.Rational(x,y))/g
            assert s.Rational(hvq)==s.Rational(y)**a*q.subs(z,s.Rational(x,y))/g
            homogenizations += 1

p,q,e=coefficient_polynomials(1,1,1)
result={
    'utc':datetime.now(timezone.utc).isoformat(),
    'source_script_sha256':sha256(Path(__file__).read_bytes()).hexdigest(),
    'python':sys.version,
    'sympy':s.__version__,
    'status':'PASS',
    'scope':'bounded exact rational polynomial computations; no Lean acceptance and no unrestricted theorem follows from this test',
    'general_coefficient_and_integral_cases':cases,
    'range_ABC':'each integer in 0..3',
    'odd_C_printed_sign_failures_detected':source_sign_failures,
    'adjacent_determinant_cases':determinants,
    'adjacent_range':'A=0..6; B=1..5; C=A; next=(A+1,B-1,A+1)',
    'content_divisibility_cases':contents,
    'homogenized_integer_evaluations':homogenizations,
    'positive_parameter_sign_counterexample':{
        'ABC':[1,1,1], 'correct_P':str(p),'Q':str(q),'E':str(e),
        'printed_P_constant':2, 'integral_P_constant':-2,
        'printed_identity_failure_at_z_0':4
    }
}
(ROOT/'symbolic-check.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({k:v for k,v in result.items() if k not in ('python','positive_parameter_sign_counterexample')},ensure_ascii=False))
