"""Exact rational constants used by the paper proof, not a proof of analysis."""
from fractions import Fraction as F
import json

def run():
    llo=F(56,81); lhi=F(25,36)
    out={
        'status':'PASS',
        'log128_minus_derivative_threshold_lower':str(7*llo-F(9,2)),
        'base_G_minus_deficit_lower':str(F(13824,847)-F(72,7)),
        'Dusart_gap4095_at_1e7_log_square_margin':str(25*(23*llo)**2-4095),
        'Dusart_gap4095_at_1e6_log_square_margin':str(25*(19*llo)**2-4095),
        'retained_normalization_slope':str(F(5,144)-F(1,32)),
        'retained_normalization_at_1000_margin':str(F(1000,288)-F(101,48)),
        'threshold_checks':{'2^23<10000000':2**23<10**7,
                            '2^19<1000000':2**19<10**6,
                            '396738<=1000000':396738<=10**6},
        'Schoenfeld_width_slack_for_16383':16597-16383,
        'Schoenfeld_width_slack_for_4095':16597-4095,
    }
    for key in ['log128_minus_derivative_threshold_lower','base_G_minus_deficit_lower',
                'Dusart_gap4095_at_1e7_log_square_margin','Dusart_gap4095_at_1e6_log_square_margin',
                'retained_normalization_slope','retained_normalization_at_1000_margin']:
        if F(out[key])<=0:raise ArithmeticError(key)
    if not all(out['threshold_checks'].values()): raise ArithmeticError('bad thresholds')
    # Polynomial numerator of G' - c/log^2 x, with a=3/2.
    # a*(z*(z-a)-(2*z-a))-(z-a)^2
    a=F(3,2)
    expanded=[a*a-a*a, -a*a-2*a+2*a, a-1] # ascending coefficients
    expected=[F(0),-F(9,4),F(1,2)]
    if expanded!=expected:raise ArithmeticError('derivative polynomial')
    out['derivative_numerator_coefficients_ascending']=[str(x) for x in expanded]
    return out
if __name__=='__main__':print(json.dumps(run(),indent=2))
