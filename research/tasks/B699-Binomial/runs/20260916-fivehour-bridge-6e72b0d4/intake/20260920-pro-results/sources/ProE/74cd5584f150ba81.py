#!/usr/bin/env python3
"""Conditional consumers only. Never certifies membership in NC3 or recovers j."""
from __future__ import annotations
import argparse,json

def minimal(c:int,s:int)->dict:
    if c not in (1,3) or s<2:raise ValueError('c must be 1 or 3; s must be at least 2')
    common={'scope':'same original input; omega(t3)=2, g=lambda=w=1, xi=2*mu, b=2*r',
            'membership_verified':False,'c':c,'s':s,'whole_row_claim':False}
    if c==1 and s%2:
        return dict(common,status='EXCLUDED_BY_NEW_ODD',dependency='new HS2 + adopted minimum-branch P>4Q')
    if c==1 and s%6:
        return dict(common,status='EXCLUDED_BY_ADOPTED_LAMBDA',dependency='true lambda=1; not new coverage')
    return dict(common,status='NO_NEW_EXCLUSION',necessary_mu=1,necessary_xi=2,
                warning='This does not assert existence of an NC3 point.')

def high_side(X:int,a:int,P:int,Q:int)->dict:
    if X<2 or X%2 or a<1 or min(P,Q)<11 or P%2==0 or Q%2==0:
        raise ValueError('positive even X; Axi>=1; odd P,Q>=11 required')
    return {'scope':'same input; omega(t3)=2, g=lambda=w=1, b=2*r; n=2*X^2; full original P,Q and recoveries required',
            'membership_verified':False,'X':X,'Axi':a,'P':P,'Q':Q,
            'status':'EXCLUDED_BY_NEW_HS2' if P>=4*a*Q else 'NO_NEW_EXCLUSION',
            'whole_row_claim':False,'old_L_h13_needed':False}

def main():
    p=argparse.ArgumentParser();sub=p.add_subparsers(dest='command',required=True)
    m=sub.add_parser('minimal');m.add_argument('--c',type=int,default=1);m.add_argument('--s',type=int,required=True)
    g=sub.add_parser('high-side');g.add_argument('--X',type=int,required=True);g.add_argument('--Axi',type=int,required=True);g.add_argument('--P',type=int,required=True);g.add_argument('--Q',type=int,required=True)
    a=p.parse_args()
    out=minimal(a.c,a.s) if a.command=='minimal' else high_side(a.X,a.Axi,a.P,a.Q)
    print(json.dumps(out,ensure_ascii=False,indent=2))
if __name__=='__main__':main()
