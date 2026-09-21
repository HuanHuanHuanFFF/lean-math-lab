#!/usr/bin/env python3
"""Deterministic C3 certificate replay; standard library only.

Finite regressions are implementation checks, not unrestricted B699 proofs.
Only the 16 residue classes are a proved finite terminal inside the UC80 proof.
No repository, network, Lean, external CAS or historical proof chain is run.
"""
from __future__ import annotations
import json
from pathlib import Path
from math import gcd, isqrt
from carry_gate import residue_certificate, assess_b5
from norm_order import primitive_norm_solutions, recover
from source_interface import assess

ROOT = Path(__file__).resolve().parent.parent
OUT = ROOT / 'outputs'


class Poly:
    """Small exact six-variable integer polynomial for identity certificates."""
    count = 6
    def __init__(self, terms=None):
        self.terms = {k: int(v) for k, v in (terms or {}).items() if v}
    @classmethod
    def val(cls, value):
        return value if isinstance(value, cls) else cls({(0,)*cls.count: value})
    def __add__(self, other):
        terms = dict(self.terms)
        for k, v in self.val(other).terms.items():
            terms[k] = terms.get(k, 0)+v
        return Poly(terms)
    __radd__ = __add__
    def __neg__(self):
        return Poly({k: -v for k, v in self.terms.items()})
    def __sub__(self, other): return self+-self.val(other)
    def __rsub__(self, other): return self.val(other)+-self
    def __mul__(self, other):
        terms = {}
        for k, v in self.terms.items():
            for l, w in self.val(other).terms.items():
                kl = tuple(x+y for x, y in zip(k, l))
                terms[kl] = terms.get(kl, 0)+v*w
        return Poly(terms)
    __rmul__ = __mul__
    def __pow__(self, exponent):
        if exponent < 0: raise ValueError('Nonnegative powers only.')
        result = Poly.val(1)
        for _ in range(exponent): result = result*self
        return result


def algebra_certificates():
    variables=[]
    for i in range(6):
        e=[0]*6; e[i]=1; variables.append(Poly({tuple(e):1}))
    S,T,A,b,c,g=variables
    b0=1-T*(S-1)
    b8=1+3*T-S*T
    F=4*S**3*T**3-12*S**2*T**3-5*S**2*T**2-S**2*T+8*S*T**2+9*T**2+6*T+1
    checks={
        'I5': (2*b0-S)*S*T+b0**2+(T+1)*(S*S*T-T-1),
        'I16': (2*b8-S+8*T-4*T*b8*S)*S*T+b8**2-F,
        'UC_actual_square_remainder': (A*S*T+b)**2-S*S*T*(A*A*T+1)-(c*S*T+b*b)-S*T*(2*A*b-S-c),
        'UC_original_recovery': (A*S*T+b)-(A*A*T+1)-g*(c*S*T+b*b)-(T*(S-A*A)-g*b*b+b-1+S*T*(A-g*c-1)),
        'B5_r2_strict_bound': 2*T**4-(2*(T-1)**2*T**2+(T-1)**2)-(4*T**3-3*T**2+2*T-1),
        'B5_r3_strict_bound': 2*T**3-((T-1)**2*T+(T-1)**3)-(5*T**2-4*T+1),
        'B5_r4_strict_bound': T**3-((T-1)**3+T-1)-(3*T**2-4*T+2),
    }
    for name, residual in checks.items():
        if residual.terms:
            raise AssertionError((name,residual.terms))
    # Replace T by 3+X: all coefficients of these three strict-bound polynomials are positive.
    positive={
        'r2': 4*(3+T)**3-3*(3+T)**2+2*(3+T)-1,
        'r3': 5*(3+T)**2-4*(3+T)+1,
        'r4': 3*(3+T)**2-4*(3+T)+2,
    }
    for p in positive.values():
        if not all(v>0 for v in p.terms.values()): raise AssertionError('Positivity certificate failed.')
    return {'coefficientwise_zero_identities': list(checks),
            'positive_after_T_equals_3_plus_X': {k:[{'exponents':list(e),'coefficient':v} for e,v in sorted(p.terms.items())] for k,p in positive.items()}}


def vp_fact(n,p):
    value=0
    while n:
        n//=p; value+=n
    return value


def vp_binom(n,j,p):
    return vp_fact(n,p)-vp_fact(j,p)-vp_fact(n-j,p)


def prime_trial(n):
    return n>=2 and all(n%d for d in range(2,isqrt(n)+1))


def norm_regression():
    # This is a finite implementation regression, NOT a source of the infinite theorem.
    count=0; solutions=0
    for D in range(2,101,3):
        for a in range(1,6):
            M=3**(2*a)
            brute=[]
            for y in range(1,isqrt(M//D)+1):
                rem=M-D*y*y
                if rem<=0: continue
                x=isqrt(rem)
                if x*x==rem and gcd(x,y)==1: brute.append((x,y))
            found,_=primitive_norm_solutions(D,a)
            if found!=brute: raise AssertionError((D,a,found,brute))
            count+=1; solutions+=len(found)
    return {'meaning':'bounded implementation regression only','D':'2,5,...,98','a':'1..5',
            'fixed_parameter_checks':count,'positive_primitive_solutions':solutions}


def norm_certificates():
    g=22801932293924839964495280670096909541988843295029343600579930
    beta=376264973812837493389949955734320185693609354522974580855244915
    a=132; n=g*3**a; j=g*beta
    original=recover(n,a)
    if original['status']!='CANDIDATE_NOT_NC' or original['j']!=j or original['z']!=1:
        raise AssertionError('Named historical weak input did not recover exactly.')
    source=assess(n,j)
    if not source['source1'] or any(source['source'+str(r)] for r in range(2,6)):
        raise AssertionError('Unexpected full-source status on weak input.')
    valuations={str(i):vp_binom(n,i,7) for i in (4,5,6,j)}
    if valuations['6']!=1 or valuations[str(j)]!=69: raise AssertionError('Historical witness mismatch.')
    empties=[]
    for fixed_g,fixed_a in ((190,3),(190,103),(5730,4),(5730,104)):
        record=recover(fixed_g*3**fixed_a,fixed_a)
        if record['status']!='EMPTY': raise AssertionError('Named EMPTY regression failed.')
        empties.append(record)
    return {'known_weak_input':original,'full_source_status':source,
            'common_prime_7_valuations':valuations,'named_empty_cases':empties,
            'meaning':'ord_R(P)=264 certifies norm recovery, not q2..q5 or NC6'}


def b5_input_certificate():
    # A genuine W10/B-tail input, selected only as an implementation illustration.
    # h=2, x=14 is also in older low-digit regions; no net-new coverage is claimed.
    n=573942509913146130; j=136076735233180
    data=assess_b5(n,j)
    if not data.get('triggered'): raise AssertionError('Expected a B5 sufficient-condition trigger.')
    g=gcd(n,j); Y=isqrt((n-1)*j*(n-j)//10)
    if 10*Y*Y!=(n-1)*j*(n-j): raise AssertionError('W10 illustration failed.')
    primes=(7,541,4871,11807)
    if not all(prime_trial(p) for p in primes): raise AssertionError('Trial division failed.')
    if n-1!=7*541**2*4871**2*11807: raise AssertionError('Complete source factorization mismatch.')
    if data['source1_defect']!=541**2*4871**2: raise AssertionError('Deficit mismatch.')
    vals={str(i):vp_binom(n,i,541) for i in (4,5,6,j)}
    if min(vals.values())<1: raise AssertionError('Common prime certificate failed.')
    return {'n':n,'j':j,'g':g,'Y':Y,'recognizer':data,'prime_witness':541,
            'valuations':vals,'meaning':'actual original input, not NC; older digit consumer also applies'}


def weak_modular_family():
    # Formula proven in FAILURES.md. Seed arithmetic validates only the implementation.
    g=5730;c=203;b=193;A=1+g*c
    nperiod=pow(3,100,1000)
    if nperiod!=1: raise AssertionError('Tail period failed.')
    records=[]
    for u,v in ((0,1),(1,1),(0,2)):
        h=2+100*u; d=1+100*v; T=3**h;S=3**d
        alpha=S*S*T;n=g*alpha;x=A*S*T+b;j=g*x
        if not (n%9000==5130 and gcd(n,j)==g and 7<=j<n//2 and 8*g**4<n):
            raise AssertionError('Actual weak-family input conditions failed.')
        if A-g*c!=1: raise AssertionError('Unit coefficient identity failed.')
        relations={
            '2Ab_equals_S_plus_c_mod80':(2*A*b-S-c)%80==0,
            'unit_recovery_mod80':(T*(S-A*A)-g*b*b+b-1)%80==0,
            'claimed_residual_is_10_mod80':(c*S*T+b*b)%80==10,
        }
        if not all(relations.values()): raise AssertionError('Modular weak shell mismatch.')
        if not (2*A*b<S and b*b<S*T): raise AssertionError('Expected actual carry zero.')
        if j*(n-j)%(n-1)==0: raise AssertionError('This family must fail the first source.')
        H,t=divmod(x*x,alpha)
        if H!=A*A*T or t!=2*A*b*S*T+b*b or not t>x:
            raise AssertionError('Actual zero-carry remainder mismatch.')
        records.append({'u':u,'v':v,'a':2*d+h,'n_decimal_digits':len(str(n)),
                        'actual_carry':0,'asserted_unit_carry':1,
                        'first_source':False,'modular_relations':relations})
    return {'g':g,'A':A,'b':b,'c':c,'h':'2+100u, u>=0','d':'1+100v, v>=1',
            'period_3_100_mod1000':nperiod,'seed_checks':records,
            'meaning':'unbounded modular weak shell; fails exact carry, first source and complete recovery; not NC6'}


def write(name,data):
    (OUT/name).write_text(json.dumps(data,ensure_ascii=False,indent=2,sort_keys=True)+'\n',encoding='utf-8')


def main():
    OUT.mkdir(exist_ok=True)
    algebra=algebra_certificates();write('algebra_certificate.json',algebra)
    residues=residue_certificate()
    surviving=[(r['h_mod4'],r['d_mod4']) for r in residues if r['survives']]
    if surviving!=[(2,1),(2,3)]: raise AssertionError('Wrong complete residue survivors.')
    write('unit_carry_certificate.json',residues)
    norm=norm_certificates();write('norm_order_certificate.json',norm)
    regression=norm_regression();write('norm_regression.json',regression)
    b5=b5_input_certificate();write('b5_original_input.json',b5)
    weak=weak_modular_family();write('weak_modular_family.json',weak)
    summary={'status':'PASS','algebra_identities':len(algebra['coefficientwise_zero_identities']),
             'complete_residue_classes':len(residues),'surviving_h_d_mod4':surviving,
             'primitive_norm_fixed_cases_regression':regression['fixed_parameter_checks'],
             'historical_norm_order':norm['known_weak_input']['original_order_prime_class_order'],
             'historical_weak_input_still_fails_all_q2_to_q5':True,
             'new_B5_original_witness':b5['prime_witness'],
             'original_problem_finite_terminal_completed':False,
             'new_uniform_absolute_bound':False,
             'frontier_reduction':0,
             'grade':'author paper proofs plus same-session deterministic checks; not Lean or independent review'}
    write('replay_summary.json',summary)
    print(json.dumps(summary,ensure_ascii=False,sort_keys=True))


if __name__=='__main__': main()
