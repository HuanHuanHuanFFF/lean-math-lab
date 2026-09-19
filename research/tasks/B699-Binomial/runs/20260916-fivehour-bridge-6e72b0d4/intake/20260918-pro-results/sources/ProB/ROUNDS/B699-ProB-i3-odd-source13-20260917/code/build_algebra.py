#!/usr/bin/env python3
"""Optional symbolic constructor. Verification itself needs no SymPy."""
import argparse,json
from pathlib import Path
import sympy as s

def rows(expr,vs):
    return [[list(p),int(c)] for p,c in s.Poly(s.expand(expr),*vs).terms()]

def build():
    r,k,d,W,E,a,m,q,X=s.symbols('r k d W E a m q X')
    M=d*d+2*k*d-2*k*k;B=d*d+k*d-3*k*k
    Q=M*W*W-k*(d+2*k)*W*E+k*k*E*E
    identities={
      'amgm':(27*(1+r)**4-256*r, (3*r-1)**2*(3*r*r+14*r+27),[r]),
      'positive_quadratic_gap':(Q-B*W*W,k*(W-E)*((d+k)*W-k*E),[k,d,W,E]),
      'discriminant13':((2*d+k)**2-4*B,13*k*k,[k,d]),
      'M_upper':(3*d*d-2*M,(d-2*k)**2,[k,d]),
      'old_recovery_product':((d+k)*B,d*M-3*k**3,[k,d]),
      'quadratic_discriminant':(((d+2*k)*a*m)**2-4*M*((a*m)**2-q*m**3),
              m*m*(4*q*M*m-a*a*(3*d*d+4*k*d-12*k*k)),[k,d,a,m,q]),
    }
    out={}
    for name,(l,rhs,vs) in identities.items():
        assert s.expand(l-rhs)==0
        out[name]={'variables':[str(x) for x in vs],'coefficients':rows(l,vs)}
    M1=(d*d+2*d-2);B1=d*d+d-3;M3=d*d+6*d-18;B3=d*d+3*d-27
    positive={
      'd_bound_I':(B1**2-(d-1)*d*M1).subs(d,X+3),
      'd_bound_II':(B3**2-(d-6)*d*M3).subs(d,X+5),
      'B_lower_II':(2*B3-d*d).subs(d,X+5),
    }
    pp={}
    for name,expr in positive.items():
        cc=rows(expr,[X]);assert all(c>0 for _,c in cc)
        pp[name]=cc
    return {'schema':'B699-ODD13-algebra-v1','identities':out,'positive_coefficients':pp,
            'constants':{'height_II':72*11**6,'height_cap':2**27,
                         'height_I_denominator':12**6//24,
                         'QR13':sorted({x*x%13 for x in range(1,13)}),
                         'nonQR13':[2,5,6,7,8,11]}}
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True)
    a=ap.parse_args();a.output.parent.mkdir(parents=True,exist_ok=True)
    a.output.write_text(json.dumps(build(),ensure_ascii=False,indent=2)+'\n')
