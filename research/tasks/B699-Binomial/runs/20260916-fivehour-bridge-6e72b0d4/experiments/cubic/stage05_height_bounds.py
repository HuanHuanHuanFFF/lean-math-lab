"""Rigorous rational bounds for the canonical-height pairing via exact duplication.

H(P)=lim h(t(2^k P))/4^k (twice the half-height convention).
Only Fraction and integer arithmetic carry acceptance; floats are display-only.
"""
from fractions import Fraction as F
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json


def log2_bounds(terms=40):
    low=sum((F(2,(2*k+1)*3**(2*k+1)) for k in range(terms)),F(0))
    high=low+F(9,4*(2*terms+1)*3**(2*terms+1))
    return low,high


def double_x(x):
    a,b=x.numerator,x.denominator
    return F((a*a+8700*b*b)**2,4*a*b*(a*a-60*a*b-8700*b*b))


def interval(x,steps,lo2,hi2):
    for _ in range(steps): x=double_x(x)
    bits=max(abs(x.numerator),x.denominator).bit_length()
    R=69600**4*9600**2
    C=8701**2
    low=(F(bits-1)*lo2-F(R.bit_length(),3)*hi2)/4**steps
    high=(F(bits)*hi2+F(C.bit_length(),3)*hi2)/4**steps
    return low,high,{'x_numerator_bits':abs(x.numerator).bit_length(),
                    'x_denominator_bits':x.denominator.bit_length(),
                    'final_x_hash':hashlib.sha256(
                        (str(x.numerator%10**100)+':'+str(x.denominator%10**100)).encode()).hexdigest()}


def pair(fr):return [fr.numerator,fr.denominator]


lo2,hi2=log2_bounds()
assert F(693147180559945309417232121458,10**30)<lo2<hi2<F(693147180559945309417232121459,10**30)
steps=6
records={}
ivals={}
for name,x in [('A',F(-290,9)),('B',F(-60)),('A_plus_B',F(21054,25))]:
    low,high,meta=interval(x,steps,lo2,hi2)
    ivals[name]=(low,high)
    records[name]={'lower':pair(low),'upper':pair(high),'display':[float(low),float(high)],**meta}
al,au=ivals['A'];bl,bu=ivals['B'];cl,cu=ivals['A_plus_B']
cross_lo=(cl-au-bu)/2;cross_hi=(cu-al-bl)/2
cross_abs=max(abs(cross_lo),abs(cross_hi))
gersh=min(al-cross_abs,bl-cross_abs)
result={'status':'PASS','utc':datetime.now(timezone.utc).isoformat(),
        'exact_arithmetic':'Fraction and integer only; display floats not used in inequalities',
        'steps':steps,'log2_lower':pair(lo2),'log2_upper':pair(hi2),
        'duplication_resultant':str(69600**4*9600**2),
        'resultant_bits':(69600**4*9600**2).bit_length(),
        'height_upper_constant_less_than_7':F((8701**2).bit_length(),3)*hi2<7,
        'basis_height_intervals':records,
        'cross_pairing_interval':[pair(cross_lo),pair(cross_hi)],
        'cross_pairing_display':[float(cross_lo),float(cross_hi)],
        'gershgorin_lower':pair(gersh),'gershgorin_lower_display':float(gersh),
        'lower_exceeds_one_tenth':gersh>F(1,10),
        'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
out=Path(__file__).with_name(f'stage05-height-{stamp}.json')
out.write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':result['status'],'steps':steps,
                  'diagonal_displays':{k:v['display'] for k,v in records.items()},
                  'cross_pairing':result['cross_pairing_display'],
                  'gershgorin_lower':result['gershgorin_lower_display'],
                  'lower_exceeds_one_tenth':result['lower_exceeds_one_tenth'],
                  'resultant_bits':result['resultant_bits'],'saved':out.name},separators=(',',':')))
