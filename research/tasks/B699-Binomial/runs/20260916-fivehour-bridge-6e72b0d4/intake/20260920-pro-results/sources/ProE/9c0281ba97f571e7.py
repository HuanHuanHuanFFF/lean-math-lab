#!/usr/bin/env python3
"""Separate verification: integer-value grids, not sparse polynomial arithmetic.
A polynomial of coordinate degrees <= d_i vanishing on a product of d_i+1
integer points vanishes identically. The boxes below are fixed in this source.
This checker does not import check_primary or claim to formalize the paper proof.
"""
from __future__ import annotations
import argparse,itertools,json,math
from fractions import Fraction
from pathlib import Path

class CertificateError(ValueError):pass

def demand(ok,msg):
    if not ok:raise CertificateError(msg)

BOXES=[
 ('norm_budget',('A','B','D','Q','T','g','w','chi','eta'),(2,2,2,4,2,2,2,2,2)),
 ('source_recovery',('A','B','D','Q','T','g','w','chi','eta'),(1,1,1,2,2,2,1,1,1)),
 ('window_F',('D','Q','T','E','F','g','chi','x','y'),(1,2,1,1,1,1,1,1,1)),
 ('window_E',('D','Q','T','E','F','g','w','x','y'),(1,1,1,1,1,1,1,1,1)),
 ('source_block_reduction',('D','U','eps'),(2,2,2)),
 ('kappa_gap',('D','Q','U','V','Ahat','kappa','eps'),(1,1,1,1,1,1,1)),
 ('positive_source_gap',('Y',),(2,)),
 ('terminal_sos',('U','Q'),(2,2)),
]
EXPECTED_CONTRACT={
 'scope':'NC3, omega(t3)=2, n=2*X^2, X positive even',
 'high_side':'b>=2*r; interchange sides for a>=2*ell',
 'source_D':'p^ell, complete source power',
 'source_Q':'q^r, complete source power, p!=q',
 'minimum_source_power':11,'eta_min':3,
 'g':'unbounded positive integer','w':'unbounded p^(a-ell)',
 'chi':'integer q^(b-2*r)>=1','mu':'actual value, including isolated-3 saturation',
 'orientations':[-1,1],
 'logical_status':'necessary NC3 system -> contradiction; not an NC3 characterization',
 'machine_scope':'finite polynomial identities and exact diagnostic checks only',
}

def integer_values(name,t):
    if name=='norm_budget':
        A,B,D,Q,T,G,W,S,H=t
        u=A*S*Q*Q;v=W*B*D
        return ((u+v)*(u+v)-H*H*T*T,
                (u-v)*(u-v)+H+(4*A*B-G*G*H)*W*S*D*Q*Q-H*(H*T*T+1-G*G*W*S*D*Q*Q))
    if name=='source_recovery':
        A,B,D,Q,T,G,W,S,H=t
        l=A*S*Q*Q*T-1-D*Q*T+D*W*B*T+D*G*G*W*S*Q*Q
        r=-T*(D*Q-A*S*Q*Q-W*B*D-H*T)-(H*T*T+1-G*G*W*S*D*Q*Q)
        return l,r
    if name=='window_F':
        D,Q,T,E,F,G,S,x,y=t
        l=E*F-G*S*E*Q*Q-y*E*T
        r=E*F-2*D*Q*T-1-(G*E*S*Q*Q-1-x*F*T)-T*(x*F+y*E-2*D*Q)
        return l,r
    if name=='window_E':
        D,Q,T,E,F,G,W,x,y=t
        l=F*E-G*W*F*D-x*F*T
        r=E*F-2*D*Q*T-1-(G*W*F*D-1-y*E*T)-T*(x*F+y*E-2*D*Q)
        return l,r
    if name=='source_block_reduction':
        D,U,e=t
        return (D*U-2*e)**2-4, (D*U)*(D*U-4*e)+4*e*e-4
    if name=='kappa_gap':
        D,Q,U,V,A,k,e=t
        return 4*U*(D-A*Q)-3*Q*V-8*e+k*D*Q,4*(D*U-Q*V-2*e)-Q*(4*A*U-k*D-V)
    if name=='positive_source_gap':
        y=t[0];x=y+2
        return 6*(x-1)*(x-1)-(x*x-1),5*y*y+8*y+3
    if name=='terminal_sos':
        u,q=t
        return 12*u*u-12*u*q+4*q*q,3*(2*u-q)*(2*u-q)+q*q
    raise CertificateError('unrecognized formula')

def value_of_submitted_terms(terms,t):
    answer=0
    for powers,coefficient in terms:
        monomial=coefficient
        for x,k in zip(t,powers):monomial*=x**k
        answer+=monomial
    return answer

def diagnostics(d):
    demand(set(d)=={'rational_high_coefficient','non_source_aggregate','incorrect_capacity_3eta'},'diagnostic membership')
    z=d['rational_high_coefficient']
    demand([z[k] for k in ('X','D','Q','T','Ahat','eta')]==[12,13,11,1,'6/11',3],'rational test inputs')
    x,p,q,t,h,e=z['X'],z['D'],z['Q'],z['T'],Fraction(z['Ahat']),z['eta']
    capacity=Fraction(p*q,t);first=Fraction(p*q)-h*q*q-e*t
    demand(x*x-1==p*q*t and capacity>2*e and first>0,'rational weak-shell inequalities')
    sq=(h*q*q*t-1)/p; k=(4*h-1)/p
    demand(sq==Fraction(z['source_quotient'])==5 and k==Fraction(z['kappa'])==Fraction(1,11),'rational small-quotient calculation')
    z=d['non_source_aggregate']
    demand(z=={'X':78,'D':553,'Q':11,'T':1,'Ahat':32,'eta':3,'factor_D':[7,79],'source_quotient':7},'aggregate test inputs')
    factors=[];v=z['D'];trial=2
    while trial*trial<=v:
        while v%trial==0:factors.append(trial);v//=trial
        trial+=1
    if v>1:factors.append(v)
    demand(factors==[7,79] and 78**2-1==553*11,'independent factorization')
    demand(77%553!=0 and 79%553!=0 and (32*121-1)==7*553,'aggregate lacks one-block property')
    demand(553*11>32*121+3 and math.gcd(553,11)==1,'aggregate weak conditions')
    z=d['incorrect_capacity_3eta']
    demand(z=={'g':2,'A':1,'B':3,'D':6,'Q':1,'w':'13/144','chi':'13/8','T':'11/12','eta':3,'DQ':'6','two_eta_T':'11/2','three_eta_T':'33/4'},'outer-shell test inputs')
    G,A,B,D,Q,H=[Fraction(z[k]) for k in ('g','A','B','D','Q','eta')]
    W,S,T=[Fraction(z[k]) for k in ('w','chi','T')]
    terms=[A*S*Q*Q,W*B*D,H*T]
    demand(sum(terms)==D*Q and 4*A*B==G*G*H,'positive rational recovery')
    demand(H*T*T+1==G*G*W*S*D*Q*Q,'positive rational norm')
    demand(2*H*T==Fraction(z['two_eta_T'])<D*Q==Fraction(z['DQ'])<3*H*T==Fraction(z['three_eta_T']),'factor-3 failure')

def verify(cert):
    demand(set(cert)=={'schema','contract','identities','positive_gap_coefficients','terminal_sos_weights','diagnostics'},'top-level certificate shape')
    demand(cert['schema']=='SQ-HIGH-v1' and cert['contract']==EXPECTED_CONTRACT,'scope or integrality changed')
    demand(cert['positive_gap_coefficients']==[3,8,5] and cert['terminal_sos_weights']==[3,1],'positive weights altered')
    demand(len(cert['identities'])==len(BOXES),'missing identity')
    grid_points=0
    for item,(name,variables,degrees) in zip(cert['identities'],BOXES):
        demand(set(item)=={'name','variables','degrees','terms'},'identity fields')
        demand(item['name']==name and tuple(item['variables'])==variables and tuple(item['degrees'])==degrees,'coordinate box changed')
        exponents=[]
        for powers,coefficient in item['terms']:
            demand(type(coefficient) is int and coefficient!=0,'invalid coefficient')
            demand(len(powers)==len(degrees) and all(type(k) is int and 0<=k<=d for k,d in zip(powers,degrees)),'degree outside fixed bound')
            exponents.append(tuple(powers))
        demand(exponents==sorted(set(exponents)),'repeated or noncanonical monomial')
        for t in itertools.product(*(range(d+1) for d in degrees)):
            left,right=integer_values(name,t)
            demand(left==right==value_of_submitted_terms(item['terms'],t),'integer grid failure: '+name+' '+str(t))
            grid_points+=1
    diagnostics(cert['diagnostics'])
    print('PASS_INDEPENDENT_DEGREE_COMPLETE_INTEGER_GRIDS')
    print('PASS_INDEPENDENT_RATIONAL_FAILURE_DIAGNOSTICS')
    print('Checked grid points:',grid_points,'across',len(BOXES),'symbolic identities; these are not NC3 instances.')

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--certificate',type=Path,default=Path(__file__).resolve().parent/'certificates'/'certificate.json');a=parser.parse_args()
    verify(json.loads(a.certificate.read_text(encoding='utf-8')))
if __name__=='__main__':main()
