#!/usr/bin/env python3
"""Generate exact polynomial evidence. No prime/exponent/input-range search."""
from __future__ import annotations
import argparse, json, math
from pathlib import Path
import sympy as sp

NAMES = ['Q','P','t','h','nu','n','g','xi','mu','lam','D','E','y','x','q','v','j']
S = dict(zip(NAMES, sp.symbols(' '.join(NAMES))))
globals().update(S)

def terms(expr):
    poly = sp.Poly(sp.expand(expr), *[S[k] for k in NAMES], domain=sp.ZZ)
    return [[list(monom), int(coef)] for monom, coef in sorted(poly.terms()) if coef]

def valuation(a: int, p: int) -> int:
    if a <= 0 or p < 2:
        raise ValueError('positive a and p>=2 required')
    count = 0
    while a % p == 0:
        a //= p; count += 1
    return count

def binomial_v(n: int, j: int, p: int) -> int:
    total, power = 0, p
    while power <= n:
        total += n//power - j//power - (n-j)//power
        power *= p
    return total

def build():
    identities = {}
    positives = {}
    def identity(name, lhs, rhs):
        assert sp.expand(lhs-rhs) == 0, name
        identities[name] = {'lhs': terms(lhs), 'rhs': terms(rhs)}
    def positive(name, expr):
        co = terms(expr)
        assert co and all(c > 0 for _,c in co), name
        positives[name] = co

    # A dependency identity, not a new independent equation.
    f1=n*nu-lam*t*t*Q*Q+g*g*P
    f2=g*xi*(n-2)-2*mu*D*Q*nu
    f3=h*Q-nu-lam*t
    f4=nu-lam*t+g*g*P
    identity('recovery_dependency', Q*(2*mu*D*nu**2-g*xi*(lam*t*t*Q-h)),
             g*xi*f1-nu*f2-g*xi*f4+g*xi*f3)

    identity('odd_square_plus', (4*x+1)**2-1, 8*(2*x*x+x))
    identity('odd_square_minus', (4*x-1)**2-1, 8*(2*x*x-x))

    h3 = (2*Q-y)**2*Q-3*(Q-2*y)*(Q+y)**2
    identity('h3_positive_gap', h3, Q*(Q-2*y)**2+6*Q*y*y+6*y**3)
    d9=(5*Q-y)**2*Q-(Q-2*y)*(4*Q+y)**2
    d11=(6*Q-y)**2*Q-(Q-2*y)*(5*Q+y)**2
    identity('unit_h9_gap', d9, 9*Q**3+14*Q*Q*y+16*Q*y*y+2*y**3)
    identity('unit_h11_gap', d11, 11*Q**3+28*Q*Q*y+20*Q*y*y+2*y**3)
    positive('unit_h9_coefficients', d9)
    positive('unit_h11_coefficients', d11)

    norm = 3*P*(h*Q-P)**2-Q*(h*Q+P)**2+4*h
    factor = (3*P-Q)*(h*h*Q*Q+P*P)-2*h*(P*Q*(3*P+Q)-2)
    identity('primitive_factorization', norm, factor)
    carry = 2*(h*Q-P)*n-(h*Q-P)*(h+1)*Q**3 - (Q*Q*(h*Q*(3*P-Q)+P*(Q+P))-4*P)
    restoration = 2*(h*Q-P)*n-(h*Q+P)**2*Q*Q+4*P
    identity('carry_recovery_difference', carry, restoration)
    identity('ratio_h9_bound', 25*(9+x-1)**2-16*(9+x+1)**2, x*(9*x+80))
    positive('carry_strictness', ((3+x)**2*((3+x)+(3+y))-4))
    positive('primitive_factor_strictness', (3+x)*(3+y)*(3*(3+x)+(3+y))-2)

    badD=(6*Q-y)**2*Q-3*(3*Q-2*y)*(3*Q+y)**2
    decomposition=11*Q**3+12*Q*Q*y+28*Q*(Q-y)*(Q+y)+6*(Q-y)*(Q*Q+Q*y+y*y)
    identity('h9_upper_positive_negative_gap', -badD, decomposition)
    positive('h9_upper_cone', decomposition.subs(Q,y+x))

    # Actual content coefficients, scaled by the same positive 6*hF.
    L=n*(n-1)*(n-2)
    b0=3*j*(n-1)*(n-2)
    c0=3*j*(j-1)*(n-2)
    d0=j*(j-1)*(j-2)
    I=b0*b0-3*L*c0
    identity('actual_psi_n', n*I, 3*L*(b0-c0))
    identity('actual_psi_j', j*I, b0*(b0-c0))
    identity('actual_psi_third', 3*(n-2)*d0, c0*(j-2))

    row=9*q**3+4*q*q+q+2
    sigma=(7*q+2)*q*q
    tau=2*q**3+2*q*q+q+2
    identity('digit_shell_sum', row, sigma+tau)
    identity('digit_shell_source', row-2, q*(9*q*q+4*q+1))
    identity('digit_shell_vg_failure', (row-4).subs(q,8*v+3), 8*(576*v**3+680*v*v+268*v+35))
    positive('digit_shell_order', (sigma-tau).subs(q,11+x))
    positive('digit_shell_upper', (q**4-row).subs(q,11+x))
    positive('digit_shell_legal_j', (tau-4).subs(q,11+x))

    branches = {
        'lambda3': {'weight_strict_upper':27,'g_possible':[1,2],'exit':'SQ-CHAR'},
        'lambda1_mu1': {'weight':2,'g':1,'w':1,'xi':2,'h':[9,11],'exit':'positive gaps'},
        'lambda1_mu3_even_g': {'weight':8,'g':2,'w':1,'xi':1,'h':8,'exit':'nu<4Q and nu>16Q/3'},
        'lambda1_mu3_odd_g': {'g':1,'w':1,'xi':[2,4,6,8],
            'xi2_h':[3,9], 'xi4_exit':'TWICE-SQ-CHAR','xi6_h':11,'xi8_h':[],
            'xi2_exit':'global P<Q carry, then negative gap'}
    }
    eq=11; en=9*eq**3+4*eq*eq+eq+2; es=(7*eq+2)*eq*eq; ej=en-es
    example={
        'q':eq,'n':en,'j':ej,'sigma':es,'g':math.gcd(en,ej),
        'head':en//(eq*eq),'t':es//(eq*eq),
        'source_exponent':valuation(en-2,eq),'endpoint_exponent':valuation(es,eq),
        'q_binomial_valuation':binomial_v(en,ej,eq),
        'first_window_remainder':es*(es-1)%(en-1),
        'v2_n':valuation(en,2),'v2_j':valuation(ej,2),
        'actual_common_prime':3119,
        'common_prime_binom3_v':binomial_v(en,3,3119),
        'common_prime_binomj_v':binomial_v(en,ej,3119)
    }
    return {'schema':1,'variables':NAMES,'identities':identities,'positive_coefficients':positives,
            'finite_branch_contract':branches,'weak_digit_example':example}

def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args()
    cert=build()
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(cert,ensure_ascii=False,sort_keys=True,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'identities':len(cert['identities']),'positive_certificates':len(cert['positive_coefficients']),
                      'parameter_scans':0,'weak_examples':1},ensure_ascii=False))
if __name__=='__main__': main()
