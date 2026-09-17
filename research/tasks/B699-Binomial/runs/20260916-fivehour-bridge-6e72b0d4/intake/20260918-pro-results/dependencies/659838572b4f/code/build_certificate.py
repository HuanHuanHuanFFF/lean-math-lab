"""Author implementation A: exact symbolic construction (SymPy required)."""
from __future__ import annotations
import argparse, json
from pathlib import Path
import sympy as s

def construct() -> dict:
    d,W,E,V,r,X=s.symbols('d W E V r X')
    M=d*d+2*d-2; B=d*d+d-3
    M2=d*d+6*d-18; B2=d*d+3*d-27
    Q=M*W*W-(d+2)*W*E+E*E
    Q2=M2*V*V-(d+6)*V*E+E*E
    q=r*r-3; dr=2*q*q+r-1; me=4*q**3+4*r*q+1; mr=dr*dr+2*dr-2; br=dr*dr+dr-3
    identities={
      'family1_factor':(d*W+E)*Q-(d*M*W**3-2*W*W*E-2*W*E*E+E**3),
      'family2_factor':(d*V+E)*Q2-(d*M2*V**3-18*V*V*E-6*V*E*E+E**3),
      'family1_positive_gap':Q-B*W*W-(W-E)*((d+1)*W-E),
      'family2_positive_gap':9*Q2-B2*(3*V)**2-3*(3*V-E)*((d+3)*3*V-3*E),
      'family1_g_squared_congruence':Q-B*E*E-(W-E)*(M*W+(M-d-2)*E),
      'family2_g_squared_congruence':9*Q2-B2*E*E-(3*V-E)*(M2*3*V+(M2-3*d-18)*E),
      'unbounded_coefficient_model':mr-q*me,
      'family2_three_scaling':(d*3*V+3*E)*(M2*(3*V)**2-(3*d+18)*3*V*E+9*E*E)-27*(d*V+E)*Q2,
    }
    for key,val in identities.items():
        assert s.expand(val)==0,key
    expressions=[
      ('family1_full_endpoint',s.expand(((d+2*M)**2-3*M*d*d).subs(d,X+3)),3),
      ('family2_full_endpoint',s.expand((16*B2*B2*M2*M2-81*d**3*(M2*M2+27)).subs(d,X+7)),7),
      ('model_grow_E',s.expand((me**3-2*br*br).subs(r,X+6)),6),
      ('model_grow_T',s.expand((5*q**3-72*dr).subs(r,X+6)),6),
      ('model_joint_size',s.expand((me*(dr*mr)**2-(dr*mr+2*me*me)**2).subs(r,X+6)),6),
    ]
    pos=[]
    for name,expression,start in expressions:
        p=s.Poly(expression,X)
        cs=[int(p.nth(i)) for i in range(p.degree()+1)]
        assert all(c>0 for c in cs)
        pos.append({'name':name,'shift_start':start,'coefficients_low_to_high':cs})
    small=16*2**3*13**2*37**2-81*5**3*(37**2+27)
    assert small>0
    return {
      'schema':'b699-negative-root-split-v1',
      'scope':'Exact algebra/positivity certificate; unrestricted valuation arguments remain in PROOFS.md.',
      'identity_names':sorted(identities),
      'positive_polynomials':pos,
      'd5_boundary':{'d':5,'M':37,'B':13,'z_mod_3':2,'z_lower_bound':2,'strict_gap':small},
      'normalization_cases':[
        {'A':1,'h':1,'z_divisor':1}, {'A':9,'h':1,'z_divisor':9},
        {'A':9,'h':3,'z_divisor':1}, {'A':27,'h':1,'z_divisor':27},
        {'A':27,'h':3,'z_divisor':3}],
      'coefficient_model_seed':{'r':6,'d':2183,'M':4769853,'M_epsilon':144541,'M_T':33},
      'non_claims':['not a Lean proof','not an external independent review','not a proof of the complete i=3 problem','coefficient model is not an NC3 input'],
    }

def main() -> None:
    a=argparse.ArgumentParser();a.add_argument('--output',type=Path,required=True);ns=a.parse_args()
    cert=construct();ns.output.parent.mkdir(parents=True,exist_ok=True)
    ns.output.write_text(json.dumps(cert,ensure_ascii=False,indent=2,sort_keys=True)+'\n',encoding='utf-8')
    print(json.dumps({'identities':len(cert['identity_names']),'positive_polynomials':len(cert['positive_polynomials']),'output':str(ns.output)}))
if __name__=='__main__':main()
