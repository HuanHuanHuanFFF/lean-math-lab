from pathlib import Path
from fractions import Fraction
from math import factorial,prod
import json

out=Path(__file__).resolve().parent
data=json.loads((out/'factorial-certificates.json').read_text())
checks=[]
for row in data['pairs']:
    c,d=row['c'],row['d']
    a,b=c+d,c-d
    beta=Fraction(a**a,d**(2*d)*b**b)
    coeff=list(map(int,row['primitive_coefficients_ascending']))
    assert all(v>0 for v in coeff)
    coeff_checks=[]
    for x in [0,1,2,7]:
        m=x+1
        U=prod(a*m+j for j in range(1,a))
        W=prod(d*m+j for j in range(1,d))**2*prod(b*m+j for j in range(1,b))
        residual=beta.numerator*b*d*d*(m+1)**3*W-a*beta.denominator*(m+2)*U
        explicit=int(row['residual_content'])*sum(v*x**i for i,v in enumerate(coeff))
        assert residual==explicit and residual>0
        coeff_checks.append({'x':x,'direct_product_matches_coefficient_evaluation':True})
    cases=[]
    for delta in [0,1]:
        F1=Fraction(factorial(a-delta),factorial(d-delta)**2*factorial(b+delta-1))
        K=2*F1/beta
        assert K<Fraction(1,2)
        for m in [1,2,3,5,10,25]:
            Fm=Fraction(factorial(a*m-delta),factorial(d*m-delta)**2*factorial(b*m+delta-1))
            Fnext=Fraction(factorial(a*(m+1)-delta),factorial(d*(m+1)-delta)**2*factorial(b*(m+1)+delta-1))
            R=Fraction(prod(a*m+j for j in range(1-delta,a-delta+1)),prod(d*m+j for j in range(1-delta,d-delta+1))**2*prod(b*m+j for j in range(delta,b+delta)))
            assert Fnext==Fm*R
            assert R<=beta*Fraction((m+1)**2,m*(m+2))
            assert Fm<=K*beta**m*Fraction(m,m+1)
            assert Fm<Fraction(1,2)*beta**m
        cases.append({'delta':delta,'m_values':[1,2,3,5,10,25],'actual_factorial_recurrence_checks':6,'telescoping_bound_checks':6,'uniform_half_bound_checks':6,'K_lt_half':True})
    checks.append({'c':c,'d':d,'coefficient_spot_checks':coeff_checks,'cases':cases})
report={'evidence':'independent standard-library integer/rational checks only; not Lean verification','checks':checks,'all_passed':True,'lean_executed':False}
(out/'independent-check.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
print('PASS: 36 actual factorial recurrence/telescoping/uniform checks; 12 direct coefficient evaluations; 6 exact K<1/2 comparisons. No Lean run.')
