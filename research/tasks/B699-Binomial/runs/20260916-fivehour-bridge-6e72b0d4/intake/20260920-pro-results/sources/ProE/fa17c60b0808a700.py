#!/usr/bin/env python3
"""Exact polynomial certificates for SQ-HIGH. This is not a proof assistant.
All arithmetic uses Python integers. No bounded search in n is used.
"""
from __future__ import annotations
import argparse, itertools, json, math
from fractions import Fraction
from pathlib import Path

class CertificateError(ValueError): pass

def require(ok: bool, message: str) -> None:
    if not ok: raise CertificateError(message)

class Poly:
    def __init__(self, n, terms=None):
        self.n=n
        self.terms={tuple(e):int(c) for e,c in (terms or {}).items() if c}
    @classmethod
    def const(cls,n,c): return cls(n,{(0,)*n:c})
    def cast(self,x): return x if isinstance(x,Poly) else Poly.const(self.n,x)
    def __add__(self,other):
        other=self.cast(other); out=dict(self.terms)
        for e,c in other.terms.items(): out[e]=out.get(e,0)+c
        return Poly(self.n,out)
    __radd__=__add__
    def __neg__(self): return Poly(self.n,{e:-c for e,c in self.terms.items()})
    def __sub__(self,other): return self+-self.cast(other)
    def __rsub__(self,other): return self.cast(other)+-self
    def __mul__(self,other):
        other=self.cast(other); out={}
        for e,c in self.terms.items():
            for f,d in other.terms.items():
                ef=tuple(a+b for a,b in zip(e,f)); out[ef]=out.get(ef,0)+c*d
        return Poly(self.n,out)
    __rmul__=__mul__
    def __pow__(self,k):
        require(isinstance(k,int) and k>=0,'non-polynomial exponent')
        r=Poly.const(self.n,1)
        for _ in range(k):r=r*self
        return r
    def __eq__(self,other):
        other=self.cast(other);return self.n==other.n and self.terms==other.terms

def ring(names):
    n=len(names);out={}
    for i,name in enumerate(names):
        e=[0]*n;e[i]=1;out[name]=Poly(n,{tuple(e):1})
    return out

# The degree boxes are structural bounds, not inferred from a submitted certificate.
SPECS=[
 ('norm_budget',['A','B','D','Q','T','g','w','chi','eta'],[2,2,2,4,2,2,2,2,2]),
 ('source_recovery',['A','B','D','Q','T','g','w','chi','eta'],[1,1,1,2,2,2,1,1,1]),
 ('window_F',['D','Q','T','E','F','g','chi','x','y'],[1,2,1,1,1,1,1,1,1]),
 ('window_E',['D','Q','T','E','F','g','w','x','y'],[1,1,1,1,1,1,1,1,1]),
 ('source_block_reduction',['D','U','eps'],[2,2,2]),
 ('kappa_gap',['D','Q','U','V','Ahat','kappa','eps'],[1,1,1,1,1,1,1]),
 ('positive_source_gap',['Y'],[2]),
 ('terminal_sos',['U','Q'],[2,2]),
]

def formulas(name,z):
    if name in ('norm_budget','source_recovery'):
        A,B,D,Q,T,g,w,chi,eta=[z[k] for k in ['A','B','D','Q','T','g','w','chi','eta']]
        u=A*chi*Q**2;v=w*B*D
        rn=eta*T**2-g**2*w*chi*D*Q**2+1
        rc=D*Q-u-v-eta*T
        if name=='norm_budget':
            return (u+v)**2-(eta*T)**2, (u-v)**2+eta+w*chi*D*Q**2*(4*A*B-g**2*eta)-eta*rn
        return u*T-1-D*((Q-w*B)*T-g**2*w*chi*Q**2), -T*rc-rn
    if name=='window_F':
        D,Q,T,E,F,g,chi,x,y=[z[k] for k in ['D','Q','T','E','F','g','chi','x','y']]
        return E*(F-g*chi*Q**2-y*T), E*F-(2*D*Q*T+1)-(g*E*chi*Q**2-1-x*F*T)-T*(x*F+y*E-2*D*Q)
    if name=='window_E':
        D,Q,T,E,F,g,w,x,y=[z[k] for k in ['D','Q','T','E','F','g','w','x','y']]
        return F*(E-g*w*D-x*T), E*F-(2*D*Q*T+1)-(g*w*F*D-1-y*E*T)-T*(x*F+y*E-2*D*Q)
    if name=='source_block_reduction':
        D,U,e=[z[k] for k in ['D','U','eps']]
        return (D*U-2*e)**2-4, D*U*(D*U-4*e)+4*(e**2-1)
    if name=='kappa_gap':
        D,Q,U,V,A,k,e=[z[t] for t in ['D','Q','U','V','Ahat','kappa','eps']]
        return 4*U*(D-A*Q)-(3*Q*V+8*e-k*D*Q), 4*(D*U-Q*V-2*e)-Q*(4*A*U-k*D-V)
    if name=='positive_source_gap':
        Y=z['Y'];X=Y+2
        return 6*(X-1)**2-(X**2-1),5*Y**2+8*Y+3
    if name=='terminal_sos':
        U,Q=z['U'],z['Q']
        return 4*(3*U**2-3*U*Q+Q**2),3*(2*U-Q)**2+Q**2
    raise CertificateError('unknown identity')

CONTRACT={
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

def terms(p):return [[list(e),c] for e,c in sorted(p.terms.items())]

def make_certificate():
    identities=[]
    for name,variables,degrees in SPECS:
        l,r=formulas(name,ring(variables));require(l==r,'author identity mismatch '+name)
        identities.append({'name':name,'variables':variables,'degrees':degrees,'terms':terms(l)})
    return {'schema':'SQ-HIGH-v1','contract':CONTRACT,'identities':identities,
        'positive_gap_coefficients':[3,8,5],'terminal_sos_weights':[3,1],
        'diagnostics':{
          'rational_high_coefficient':{'X':12,'D':13,'Q':11,'T':1,'Ahat':'6/11','eta':3,'source_quotient':'5','kappa':'1/11'},
          'non_source_aggregate':{'X':78,'D':553,'Q':11,'T':1,'Ahat':32,'eta':3,'factor_D':[7,79],'source_quotient':7},
          'incorrect_capacity_3eta':{'g':2,'A':1,'B':3,'D':6,'Q':1,'w':'13/144','chi':'13/8','T':'11/12','eta':3,'DQ':'6','two_eta_T':'11/2','three_eta_T':'33/4'}
        }}

def check_diagnostics(diag):
    require(set(diag)=={'rational_high_coefficient','non_source_aggregate','incorrect_capacity_3eta'},'diagnostic list changed')
    z=diag['rational_high_coefficient'];require(z==make_certificate()['diagnostics']['rational_high_coefficient'],'low-side diagnostic changed')
    X,D,Q,T,A,e=z['X'],z['D'],z['Q'],z['T'],Fraction(z['Ahat']),z['eta']
    require(D*Q*T==X*X-1 and D*Q>2*e*T and D*Q>A*Q*Q+e*T,'low diagnostic conditions')
    require((A*Q*Q*T-1)/D==5 and (4*A-1)/D==Fraction(1,11),'low diagnostic exact quotient')
    z=diag['non_source_aggregate'];require(z==make_certificate()['diagnostics']['non_source_aggregate'],'aggregate diagnostic changed')
    X,D,Q,T,A,e=[z[k] for k in ['X','D','Q','T','Ahat','eta']]
    require(D==7*79 and math.gcd(D,Q)==1 and D*Q*T==X*X-1,'aggregate factorization')
    require((X-1)%D and (X+1)%D and D*Q>A*Q*Q+e*T and (A*Q*Q*T-1)==7*D,'aggregate weak equations')
    z=diag['incorrect_capacity_3eta'];require(z==make_certificate()['diagnostics']['incorrect_capacity_3eta'],'capacity diagnostic changed')
    g,A,B,D,Q,e=[z[k] for k in ['g','A','B','D','Q','eta']];w,c,T=[Fraction(z[k]) for k in ['w','chi','T']]
    require(4*A*B==g*g*e and D*Q==A*c*Q*Q+w*B*D+e*T,'rational core')
    require(e*T*T==g*g*w*c*D*Q*Q-1 and 2*e*T<D*Q<3*e*T,'rational capacity diagnostic')

def verify(data):
    require(set(data)=={'schema','contract','identities','positive_gap_coefficients','terminal_sos_weights','diagnostics'},'top-level fields')
    require(data['schema']=='SQ-HIGH-v1' and data['contract']==CONTRACT,'theorem contract mismatch')
    require(data['positive_gap_coefficients']==[3,8,5] and data['terminal_sos_weights']==[3,1],'positive certificate changed')
    require(len(data['identities'])==len(SPECS),'identity omitted or duplicated')
    for item,(name,variables,degrees) in zip(data['identities'],SPECS):
        require(set(item)=={'name','variables','degrees','terms'},'identity fields')
        require(item['name']==name and item['variables']==variables and item['degrees']==degrees,'identity scope '+name)
        l,r=formulas(name,ring(variables));require(l==r,'polynomial identity '+name)
        require(item['terms']==terms(l),'expanded coefficient mismatch '+name)
        require(all(all(k<=bound for k,bound in zip(e,degrees)) for e in l.terms),'degree bound '+name)
    check_diagnostics(data['diagnostics'])
    print('PASS_PRIMARY_SPARSE_POLYNOMIAL_CERTIFICATES')
    print('PASS_PRIMARY_EXACT_FAILURE_DIAGNOSTICS')
    print('Checked identities:',len(SPECS),'| No original-input scan and no remaining finite endpoint.')

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--certificate',type=Path,default=Path(__file__).resolve().parent/'certificates'/'certificate.json');parser.add_argument('--generate',action='store_true');args=parser.parse_args()
    if args.generate:
        args.certificate.write_text(json.dumps(make_certificate(),ensure_ascii=False,indent=2)+'\n',encoding='utf-8');print('WROTE',args.certificate.name)
    else:verify(json.loads(args.certificate.read_text(encoding='utf-8')))
if __name__=='__main__':main()
