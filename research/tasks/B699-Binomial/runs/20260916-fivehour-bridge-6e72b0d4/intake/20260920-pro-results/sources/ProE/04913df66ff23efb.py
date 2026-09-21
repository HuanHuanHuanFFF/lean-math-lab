"""Primary checker: coefficient identities and direct binomial arithmetic.
This is not a formal proof checker for the infinite argument in PROOFS.md.
"""
from __future__ import annotations
import json
import math
import sys
from pathlib import Path
from poly_kernel import Poly

META = {
    'format': 'B699-MINUS-SLOT-v1',
    'core': {'P_min': 3, 'P_parity': 'odd', 'j_min': 4,
             'j_max': '(P-1)^2', 'c_branches': [0,1,2],
             'c01_b_max': 'P-2', 'c2_b_max': 'P-3', 'c2_t': [1,2]},
    'row': {'p': 'odd prime', 'h_min': 1, 'n': '2*(p^h-1)^2',
            'isolated3_exception': {'P': 3, 'n': 8, 'j': 4}},
    'slot': {'X': 'positive even', 'n': '2*X^2',
             'condition': 'j%(X+1) in {0,1,2}',
             'not_equivalent_to': '(X+1) divides j*(j-1)*(j-2)'},
    'claims': {'full_i3': False, 'all_double_square_rows': False,
               'requires_P_prime_for_integer_kernel': False,
               'requires_old_low_ratio_chain': False},
}

def polys():
    out = {}
    def add(key, names, bounds, pair):
        variables = [Poly.var(len(names), i) for i in range(len(names))]
        left, right = pair(*variables)
        if left.terms != right.terms:
            raise AssertionError('symbolic identity fails: '+key)
        if any(any(a > b for a,b in zip(e,bounds)) for e in left.terms):
            raise AssertionError('wrong degree cap: '+key)
        out[key] = {'variables':names, 'degree_bounds':bounds, 'terms':left.encoded()}
    N = lambda P: 2*(P-1)**2-1
    add('c0_recovery', ['P','b'], [3,2], lambda P,b: (
        b*(b*P-1)-(P-b)*N(P),
        P*((b+P-2)**2-(P-1)*(3*P-5))))
    add('c1_recovery', ['P','b'], [2,2], lambda P,b: (
        b*(b*P+1)-b*N(P), P*b*(b-2*P+4)))
    add('c2_quotient', ['P','b','k'], [3,2,1], lambda P,b,k: (
        (b*P+2)*(b*P+1)-(P*k+2)*N(P),
        P*((b*b-4)*P+3*b+8-k*N(P))))
    add('c2_square', ['P','b','t'], [3,2,1], lambda P,b,t: (
        (b*b-4)*P+3*b+8-(3*b+8-t*P)*N(P),
        P*((3*P-6-b)**2-((9-2*t)*P*P+(4*t-20)*P+8-t))))
    add('quotient_upper', ['P'], [2], lambda P:(
        N(P)-((P-2)*P+1), P*(P-2)))
    add('quotient_upper_positive', ['x'], [2], lambda x:(
        (x+3)*(x+1), x*x+4*x+3))
    add('c0_coprime_square', ['z'], [2], lambda z:(
        ((2*z+1)-1)*(3*(2*z+1)-5),4*z*(3*z-1)))
    add('c0_bezout', ['z'], [1], lambda z:(3*z-(3*z-1),Poly.const(1,1)))
    def gap(B,D):
        b=B+1;P=b+3+D
        left=b*N(P)-((b*b-4)*P+3*b+8)
        right=B**3+3*B*B*D+8*B*B+2*B*D*D+14*B*D+21*B+2*D*D+15*D+18
        return left,right
    add('c2_positive_gap', ['B','D'], [3,2], gap)
    add('t_upper', ['b','d'], [1,1], lambda b,d:(
        3*(b+3+d)-(3*b+8),3*d+1))
    add('complete_source', ['P'], [2], lambda P:(
        2*(P-1)**2-2,2*P*(P-2)))
    return out

def odd_prime_factor(x):
    if x <= 0: raise AssertionError('positive gcd required')
    while x % 2 == 0: x //= 2
    if x == 1: raise AssertionError('no odd common factor')
    for q in range(3,math.isqrt(x)+1,2):
        if x%q==0: return q
    return x

def endpoint():
    a=math.comb(8,3);b=math.comb(8,4);g=math.gcd(a,b)
    return {'P':3,'n':8,'j':4,'C_n3':a,'C_nj':b,'gcd':g,'odd_witness':odd_prime_factor(g)}

def regression_rows():
    result=[]
    for P in [3,5,9,25,27]:
        n=2*(P-1)**2;c3=math.comb(n,3);cj=c3;ws=[]
        for j in range(4,n//2+1):
            cj=cj*(n-j+1)//j
            ws.append(odd_prime_factor(math.gcd(c3,cj)))
        result.append({'P':P,'n':n,'j_first':4,'j_last':n//2,'witnesses':ws})
    return result

def diagnostic(P,sign,j,w):
    n=2*(P+sign)**2;N=n-1
    return {'P':P,'sign':sign,'n':n,'j':j,'N':N,
            'legal':4<=j<=n//2,'j_mod_P':j%P,
            'first_window_remainder':j*(j-1)%N,
            'triple_mod_P':j*(j-1)*(j-2)%P,
            'common_witness':w,
            'witness_verified':math.comb(n,3)%w==0 and math.comb(n,j)%w==0}

def expected():
    return {'metadata':META, 'polynomials':polys(),
            'mod8':[{'Pmod8':r,'t1':(7*r*r-16*r+7)%8,
                     't2':(5*r*r-12*r+6)%8} for r in [1,3,5,7]],
            'squares_mod8':sorted({r*r%8 for r in range(8)}),
            'mod3_c0':[(3*z-1)%3 for z in range(3)],
            'endpoint':endpoint(),
            'diagnostics':[diagnostic(122,-1,10858,11),
                           diagnostic(31,1,713,31),
                           diagnostic(45,-1,1422,11)],
            'regression_rows':regression_rows()}

def check(path):
    got=json.loads(Path(path).read_text())
    exp=expected()
    if got!=exp: raise ValueError('certificate content differs from exact primary reconstruction')
    for key in ['quotient_upper_positive','c2_positive_gap','t_upper']:
        ts=got['polynomials'][key]['terms']
        if any(c<0 for _,c in ts) or not any(all(e==0 for e in es) and c>0 for es,c in ts):
            raise AssertionError('invalid strict positive coefficient certificate')
    if got['squares_mod8']!=[0,1,4] or any(r['t1']!=6 or r['t2']!=7 for r in got['mod8']):
        raise AssertionError('modular exclusion failed')
    print('PASS_PRIMARY_COEFFICIENTS_AND_BINOMIALS')
    print('identities='+str(len(got['polynomials']))+' required_endpoint=1 diagnostic_rows=5')

if __name__=='__main__':
    try:
        check(sys.argv[1] if len(sys.argv)>1 else Path(__file__).parents[1]/'certificates/certificate.json')
    except (ValueError,AssertionError,KeyError,TypeError,IndexError) as exc:
        print('REJECT_PRIMARY: '+str(exc),file=sys.stderr)
        sys.exit(1)
