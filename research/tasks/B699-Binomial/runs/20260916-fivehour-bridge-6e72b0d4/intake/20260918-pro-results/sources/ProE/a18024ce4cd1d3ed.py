#!/usr/bin/env python3
"""Exact polynomial checks, supplementary to the integer proof (requires SymPy)."""
from __future__ import annotations
import argparse
import json
from pathlib import Path
import sympy as s


def build() -> dict:
    n,j,d,R,S,z,la,mu,C,r = s.symbols('n j delta R S z lambda mu C rho')
    T=n-2*j
    F=d*(n*n-3*n+2)-2*R*j*(n-j)
    rel=S*n*n+6*d*n-4*d-R*T*T
    X=S*n+3*d
    K=d*(9*d+4*S)
    checks={
      'raw_split_predicate': ((n-1)*(n-2))*(((n-1)*(n-2))-4*j*(n-j))-(n-1)*(n-2)*(T*T-3*n+2),
      'rational_conic_relation': rel+2*F-(S-R+2*d)*n*n,
      'correct_square_completion': X*X-R*S*T*T-K-S*rel,
      'four_lattice_gap': X*X-(X-4)**2-(8*X-16),
      'sharp_height_algebra': K-(8*X-16)-(-8*S*n+4*d*S+(3*d-4)**2),
      'sharp_height_rhs': d/s.Integer(2)+(3*d-4)**2/s.Integer(8)-(9*d*d-20*d+16)/s.Integer(8),
      'norm_to_n': la*d*(2*mu*C*R)-2*R*(z*R*R+la)-2*R*(la*mu*C*d-z*R*R-la),
      'strict_lower_positive_remainder': 2*z*(S+2*d)**3+2*la*(S+2*d)-4*la*d-16*z*d**3-(2*S**3*z+12*S*S*d*z+24*S*d*d*z+2*S*la),
      'height_gap_positive_coefficients': 24*((16*d*d/s.Integer(3)+6)-(9*d*d/s.Integer(8)-5*d/s.Integer(2)+2))-(101*d*d+60*d+96),
      'wrong_sign_exact_residual': (S*n-3*d)**2-R*S*T*T-d*(9*d-4*S)-S*rel+4*S*d*(3*n-2),
    }
    nf=(9*r**3+3*r*r+4)/4
    jf=3*(r*r-1)*(3*r-2)/8
    df=(r*r-1)/2
    checks.update({
      'family_ratio': df*(nf-1)*(nf-2)-2*r*r*jf*(nf-jf),
      'family_square': (nf-1)*(nf-2)*((nf-2*jf)**2-3*nf+2)-((nf-1)*(nf-2)/r)**2,
      'family_positive_distance': (nf-2*jf)-(9*r*r+9*r-2)/4,
      'family_n_minus_one': nf-1-3*r*r*(3*r+1)/4,
      'factor_pair_n': (((r-1)/2+(r+1)*(9*r*r-1)/2)/2)-3*df-nf,
      'factor_pair_T': (((r+1)*(9*r*r-1)/2-(r-1)/2)/2)/r-(nf-2*jf),
    })
    records=[]
    for name,expr in checks.items():
        remainder=s.cancel(s.expand(expr))
        if remainder != 0:
            raise ArithmeticError(f'{name}: {remainder}')
        records.append({'name':name,'remainder':'0'})
    a,b=s.symbols('a b')
    bad=s.expand((-4*S*d*(3*n-2)).subs({S:1,d:4,n:20}))
    assert bad == -928
    return {'status':'PASS','count':len(records),'checks':records,
            'wrong_sign_is_not_identity': {'residual':'-4*S*delta*(3*n-2)','test_input':{'S':1,'delta':4,'n':20},'test_residual':int(bad)},
            'scope':'exact polynomial identities only; no infinite integrality or window theorem is delegated to SymPy',
            'sympy_version':s.__version__}


def main() -> None:
    ap=argparse.ArgumentParser(); ap.add_argument('--output',type=Path,required=True)
    args=ap.parse_args(); obj=build(); args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':obj['status'],'identities':obj['count']},sort_keys=True))

if __name__=='__main__':
    main()
