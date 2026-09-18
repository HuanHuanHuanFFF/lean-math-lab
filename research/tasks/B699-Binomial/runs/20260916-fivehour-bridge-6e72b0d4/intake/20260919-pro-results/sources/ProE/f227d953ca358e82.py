#!/usr/bin/env python3
"""Generate exact algebra certificates; no integer-input or prime search."""
from __future__ import annotations
import argparse, hashlib, json
from pathlib import Path
import sympy as sp

ROOT=Path(__file__).resolve().parents[1]
IDENTITIES = [
 ('nu_modulus_identity','n v l t s', '(n-1)*(v+l*t)-l*t*(s+n-2)', '(n-1)*v-l*t*(s-1)'),
 ('endpoint_factor_residual','l E F g P Q', '(l*E-g*P)*F-(g*E*Q-1)', 'l*E*F+1-g*(E*Q+F*P)'),
 ('nu_endpoint_formula','g l E P', 'g*(l*E-g*P)', 'l*(g*E)-g**2*P'),
 ('h3_forces_three','t Q', '6*t-3*Q', '3*(2*t-Q)'),
 ('r1_n_recovery','n v t Q P', 'n*v-(3*t**2*Q**2-P)', '((n-1)*v-3*t*(t*Q**2-1))+(v-3*t+P)'),
 ('r1_second_window_recovery','n v t Q P D x', 'x*(n*v-3*t**2*Q**2+P)-v*((n-2)*x-2*D*Q*v)', 'Q*(2*D*v**2-x*(3*t**2*Q-5))+x*(P+2*v-5*Q)'),
 ('h5_linear_compatibility','t Q', '(6*t-5*Q)+2*(5*Q-3*t)', '5*Q'),
 ('head_integer_gap','n v t Q P', 'Q**2*(3*t**2-Q*v)', 'v*(n-Q**3)+P-(n*v-3*t**2*Q**2+P)'),
 ('eight_ninths_threshold','Q Z', '27*(3*((8*Q+Z)/9)**2+3*Q*((8*Q+Z)/9)-5*Q**2)', 'Q**2+25*Q*Z+Z**2'),
 ('positive_R_definition','Q t', 'Q-3*(6*t-5*Q)', '2*(8*Q-9*t)'),
 ('gap_in_full_P','Q P', '12*(3*((5*Q+P)/6)**2*Q-P*((5*Q-P)/2)**2)', '25*Q**3-65*P*Q**2+31*P**2*Q-3*P**3'),
 ('positive_gap_transform','P R', '25*(3*P+R)**3-65*P*(3*P+R)**2+31*P**2*(3*P+R)-3*P**3', '180*P**3+316*P**2*R+160*P*R**2+25*R**3'),
 ('q_ge_five_gap','X', '(5+X)**2-6*((5+X)-1)', 'X**2+4*X+1'),
 ('template_head_gap','Q X Y', 'Q**3-((Q-1-X)*Q**2+(Q-1-Y)*Q+2)', 'X*Q**2+Y*Q+Q-2'),
]
POSITIVES=[
 ('q_ge_five_gap_positive','X','(5+X)**2-6*((5+X)-1)'),
 ('g_ge_two_impossible','X','2*(2+X)**3-9'),
 ('threshold_positive','X Z','(1+X)**2+25*(1+X)*Z+Z**2'),
 ('final_gap_minus_five','X Y','180*(1+X)**3+316*(1+X)**2*(1+Y)+160*(1+X)*(1+Y)**2+25*(1+Y)**3-60'),
 ('single_digit_head_positive','X Y W','X*(3+W)**2+Y*(3+W)+(3+W)-2'),
]
CONTRACT={
 'original_index':3,'same_original_input':True,
 'lambda_mu_pairs':[[1,1],[1,3],[3,1]],
 'q3_source_min_exponent':2,
 'complete_prime_powers':True,
 'unitarity':'K_source_blocks_only; not gcd(C,u)',
 'psi_recovery':['nI=3ell(b0-c0)','jI=b0(b0-c0)','3(n-2)d0=c0(j-2)'],
 'original_interval':'4<=j<=floor(n/2)',
 'source_exponents_closed':[1,2,3,4],
 'main_necessary_bound':'n>q^(b+r) for every two-support high side b>=2r',
 'entire_i3_closed':False,'finite_input_scan':False,'lean_used':False,
}

def polynomial(expr: str, names: str):
    variables=names.split(); syms=sp.symbols(names)
    if len(variables)==1: syms=(syms,)
    local=dict(zip(variables,syms))
    pol=sp.Poly(sp.expand(sp.sympify(expr,locals=local)),*syms,domain=sp.QQ)
    terms=[]
    for powers,coefficient in sorted(pol.terms()):
        if not coefficient: continue
        terms.append({'powers':list(powers),'numerator':int(sp.numer(coefficient)),'denominator':int(sp.denom(coefficient))})
    return variables, terms

def generate(out: Path):
    out.mkdir(parents=True,exist_ok=True)
    rows=[]
    for ident,names,lhs,rhs in IDENTITIES:
        variables,lp=polynomial(lhs,names); _,rp=polynomial(rhs,names)
        if lp!=rp: raise ArithmeticError('Identity failed: '+ident)
        rows.append({'id':ident,'variables':variables,'lhs':lp,'rhs':rp})
    positives=[]
    for ident,names,expr in POSITIVES:
        variables,terms=polynomial(expr,names)
        if any(t['numerator']<0 for t in terms): raise ArithmeticError('Negative coefficient '+ident)
        const=next((t for t in terms if not any(t['powers'])),None)
        if const is None or const['numerator']<=0: raise ArithmeticError('No positive constant '+ident)
        positives.append({'id':ident,'variables':variables,'terms':terms})
    certificate={'schema':'B699-four-template-v1','proof_sha256':hashlib.sha256((ROOT/'PROOFS.md').read_bytes()).hexdigest(),
      'contract':CONTRACT,'identities':rows,'positive_polynomials':positives}
    (out/'certificate.json').write_text(json.dumps(certificate,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    report={'status':'PASS','identity_count':len(rows),'positive_certificate_count':len(positives),
      'sympy_version':sp.__version__,'integer_input_cases_scanned':0,'prime_values_scanned':0,
      'note':'Exact polynomial generation only; the unrestricted theorem is in PROOFS.md.'}
    (out/'generator_result.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(report,ensure_ascii=False))

if __name__=='__main__':
    p=argparse.ArgumentParser(); p.add_argument('--out',type=Path,required=True)
    generate(p.parse_args().out)
