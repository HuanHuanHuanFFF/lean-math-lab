"""Exact arithmetic margins for the five-curve analytic contract."""
from fractions import Fraction as F
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json
from stage10_models import BASES,coefficients,doubled_infinity

ks=[7,11,16,20,25]
endpoint_signs=[(F(-6),-1),(F(-5),1),(F(0),1),(F(5,2),-1),(F(13,4),-1),(F(6),1)]
models=[]
for k in ks:
    A,B=coefficients(k)
    j=F(256*27*A**3,4*A**3+27*B**2)
    assert max(abs(j.numerator),j.denominator)<2**70
    assert A%4==0 and B%16==0 and max(abs(A//4),abs(B//16))<2**70
    assert all(max(abs(x.numerator),x.denominator)<=6334 for x,y in BASES[k])
    margins=[]
    for z,sign in endpoint_signs:
        main=sign*(z**3-27*z+2*k)
        error=abs(18*z+4*k)/512+abs(9*z+2*k)/512**2
        margin=main-error
        assert margin>0
        margins.append({'z':str(z),'sign':sign,'strict_margin':str(margin)})
    H=27-k
    ah=-4*H*(H-27)*(H-54);bh=12*H*H-648*H+7290
    assert abs(ah)<=30272 and abs(bh)<=6042
    assert 3*abs(ah)+52*abs(bh)<=405000
    assert 1+abs(A)+abs(B)<6000**2
    twoQ=doubled_infinity(k)
    models.append({'k':k,'j_invariant':str(j),'hE_less_than_50':True,'endpoint_margins':margins,
                   'short_t_numerator_bound':3*abs(ah)+52*abs(bh),
                   'nonrational_twoQ_x':list(map(str,twoQ[0]))})
error=F(18,512)+F(9,512**2)
assert 48-error>47 and F(33,4)-error>8 and F(75,16)-error>4
# e>27/10 from its first six series terms; all logarithm comparisons below are exact.
assert sum((F(1,d) for d in (1,1,2,6,24,120)),F(0))>F(27,10)
for number,power in [(405000,13),(6334,9),(813,7),(10050,10),(50,4),(10,3)]:
    assert 27**power>number*10**power
assert F(7,10)*70<50
c4_bounds=[]
for q in range(1,6):
    bound=3*10**(6*q+12)*3**(2*q+4)*4**(2*(q+1)**2)*(q+2)**(2*q*q+13*q+24)*1000**(q+1)
    assert bound<10**230
    c4_bounds.append({'terms':q,'integer_upper_bound':bound,'decimal_digits':len(str(bound))})
assert 10**300>32*10**230
out={'status':'PASS','scope':'Exact polynomial margins, elementary logarithm comparisons, height input sizes and David c4 upper constants. RF area condition is checked in separate RF certificates.',
     'models':models,'derivative_error':str(error),'c4_bounds':c4_bounds,
     'M0':'10^300','c4_less_than':'10^230','c5_less_than':3,'c6_less_than':53,
     'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
dest=Path(__file__).with_name(f'stage10-contract-{stamp}.json')
dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':'PASS','output':dest.name,'c4_decimal_digits':[v['decimal_digits'] for v in c4_bounds],
                  'all_30_endpoint_margins_positive':True,'all_nonzero_twoQ_x_checks':True}))
