#!/usr/bin/env python3
"""Independent standard-library QQ-polynomial checker, not a Lean/axiom checker.
Checks coefficient identities and symbolic valuation inequalities. Does NOT
independently establish the adopted VG8 theorem or certify an NC3 input.
"""
from __future__ import annotations
from fractions import Fraction as Q
from pathlib import Path
from typing import Any
import argparse,json,sys
from math import isqrt
ROOT=Path(__file__).resolve().parents[1]
if not __debug__:
    raise RuntimeError('Run this checker without Python -O; assertions are part of its checks.')
class P:
    def __init__(self,n:int,data=None):
        self.n=n; self.d={k:Q(v) for k,v in (data or {}).items() if v}
    @staticmethod
    def const(n,x):return P(n,{(0,)*n:Q(x)})
    def conv(self,x):
        if isinstance(x,P):
            assert x.n==self.n; return x
        return P.const(self.n,x)
    def __add__(self,other):
        o=self.conv(other);d=self.d.copy()
        for k,v in o.d.items():d[k]=d.get(k,Q(0))+v
        return P(self.n,d)
    __radd__=__add__
    def __neg__(self):return P(self.n,{k:-v for k,v in self.d.items()})
    def __sub__(self,o):return self+-self.conv(o)
    def __rsub__(self,o):return self.conv(o)+-self
    def __mul__(self,other):
        o=self.conv(other);d={}
        for ka,va in self.d.items():
            for kb,vb in o.d.items():
                k=tuple(a+b for a,b in zip(ka,kb));d[k]=d.get(k,Q(0))+va*vb
        return P(self.n,d)
    __rmul__=__mul__
    def __pow__(self,e):
        assert isinstance(e,int) and e>=0
        out=P.const(self.n,1);base=self
        while e:
            if e&1:out=out*base
            base=base*base;e//=2
        return out
    def enc(self):return [[list(k),v.numerator,v.denominator] for k,v in sorted(self.d.items())]
def variables(names):
    n=len(names);out=[]
    for i in range(n):
        e=[0]*n;e[i]=1;out.append(P(n,{tuple(e):1}))
    return out

def expected_identities():
    out=[]
    def put(name,names,left,right):
        assert isinstance(left,P)
        right=left.conv(right)
        assert not (left-right).d, 'internal independent formula error: '+name
        out.append({'name':name,'variables':names,'left':left.enc(),'right':right.enc()})
    names=['x','z','e','T','A'];x,z,e,T,A=variables(names);S=4*z*x+6*z*e+3*T
    put('REC_from_norm',names,2*(4*z*x+4*z*e+T)*(2*x+e)+2*A,
        4*x*S+2*(e*T-3*A)+8*(z*e**2-x*T+A))
    put('C2_from_norm',names,z*(2*x+e)**2+A-x*(4*z*x+4*z*e+T),z*e**2+A-x*T)
    names=['d','k'];d,k=variables(names);M=d*d+2*k*d-2*k*k;B=d*d+k*d-3*k*k
    put('reducible_eta',names,d*M-3*k**3,(d+k)*B)
    names=['d','k','Y'];d,k,Y=variables(names);M=d*d+2*k*d-2*k*k
    put('reducible_P',names,d*M*Y**3-2*k**3*Y**2-2*k**3*Y+k**3,
        (d*Y+k)*(M*Y**2-k*(d+2*k)*Y+k*k))
    names=['g','H','v','w','X','Y','lam','mu','C'];g,H,v,w,X,Y,lam,mu,C=variables(names)
    put('cross_endpoint_norm',names,
        2*lam*mu*C*H+2*lam-2*g*g*X*Y-g*H*(v*X+w*Y),
        H*(2*lam*mu*C-2*v*w*H-g*(v*X+w*Y))-2*(g*g*X*Y-v*w*H*H-lam))
    names=['L','R','U','V'];L,R,U,V=variables(names)
    put('cross_complete_surplus',names,(L*U)*(R*V),(L*R)*(U*V))
    names=['l','b','c','f'];l,b,c,f=variables(names);I=b*b-3*l*c;h=b-c
    put('third_coefficient_recovery',names,3*(3*l*h-2*I)*f-c*(b*h-2*I),
        3*(3*l*(b+c)-2*b*b)*f-c*(6*l*c-b*b-b*c))
    names=['r','Y'];r,Y=variables(names);p=r*Y**3-2*Y**2-2*Y+1
    f=2*r*r*Y**3-8*r*Y**2+(8-5*r)*Y+r+10
    put('same_input_square_coupling',names,Y*(6*p-2)+(2*p-1)*(2*p-2),2*Y**3*f)
    names=['n','j','l'];n,j,l=variables(names)
    put('actual_I_cleared',names,(3*l*j)**2*(n-1)-3*l*(3*l*j*(j-1))*n,9*l*l*j*(n-j))
    names=['t'];t,=variables(names);d=11+48504*t
    put('mixed_M',names,d*d+2*d-2,141*(1+8256*t+16685376*t*t))
    put('mixed_B',names,d*d+d-3,129*(1+8648*t+18237504*t*t))
    put('mixed_even_valuation',names,d+1,4*(3+12126*t))
    names=['x'];x,=variables(names);l=2*x;b=3*(x-1);c=Q(3,2)*(x-2);I=b*b-3*l*c
    put('pseudo_I',names,I,9)
    put('pseudo_n_recovery',names,x*x*I,3*l*(b-c))
    put('pseudo_j_recovery',names,Q(1,2)*x*(x-1)*I,b*(b-c))
    put('pseudo_third_defect',names,3*(3*l*(b+c)-2*b*b)-c*(6*l*c-b*b-b*c),
        -Q(27,4)*(x**3-7*x*x-2*x+16))
    names=['q'];q,=variables(names)
    put('pseudo_defect_strict_sign',names,(8+q)**3-7*(8+q)**2-2*(8+q)+16,
        q**3+17*q*q+78*q+64)
    return out

def validate(cert:dict[str,Any]):
    assert set(cert)=={'schema','identities','valuation_certificate','source_contract','scope'},'top-level schema'
    assert cert['schema']=='B699-i3-cross-recovery-v1','version'
    expected=expected_identities()
    assert cert['identities']==expected,'polynomial coefficient/content/order mismatch'
    vc={
      'dyadic_exponents':{'n_lower':[9,4],'four_x_S':[2,2],'eta':[1,2],'strict_gap':[7,2]},
      'odd_prime_exponents':{'nA':[0,1],'four_x_S_lower':[0,2],'eta':[0,1]},
      'odd_saturation':'unitary divisor','eta_dyadic_valuation_parity':'odd',
      'requires_v2_n_gt_2e_plus_2':True}
    assert cert['valuation_certificate']==vc,'valuation contract'
    # Affine exponents: strict positivity for every e>=0 (not sampling e).
    n0,n1=vc['dyadic_exponents']['n_lower'];t0,t1=vc['dyadic_exponents']['four_x_S']
    assert n0-t0>0 and n1-t1>=0
    assert [t0-1,t1]==vc['dyadic_exponents']['eta']
    assert [n0-t0,n1-t1]==vc['dyadic_exponents']['strict_gap']
    # For every integer r>=1, 2r>r. At odd p, v_p(2)=v_p(A)=v_p(c)=0.
    assert vc['odd_prime_exponents']['four_x_S_lower'][1]>vc['odd_prime_exponents']['nA'][1]
    assert cert['source_contract']=={'allowed_lambda_mu':[[1,1],[1,3],[3,1]],'VG8_adopted_not_reproved':True},'source scope / isolated 3'
    assert cert['scope']=={'conditional_reducible_even_valuation_exclusion':True,
       'general_cross_domain_closed':False,'general_i3_closed':False,
       'absolute_bound_on_unbounded_input_parameter':False,
       'finite_endpoint_needed':False,'finite_search_performed':False},'unsupported claim'
    # Exact all-t congruence in the mixed-support family, no t enumeration.
    assert 48504%8==0 and (11+1)%8==4
    assert 48504%(3*43*47)==0
    assert 12126%2==0
    for prime in (3,43,47):
        assert all(prime % d for d in range(2,isqrt(prime)+1)), 'fixed prime certificate'
    return {'status':'PASS','method':'independent fractions/dictionary polynomial arithmetic',
            'identities':len(expected),'sample_inputs_tested':0,
            'valuation_proof':'affine exponent comparison for all e>=0 and all odd-prime exponents r>=1',
            'scope':'new algebra/valuation consequences only; VG8 adopted, not reverified'}

def main():
    p=argparse.ArgumentParser();p.add_argument('certificate',nargs='?',type=Path,default=ROOT/'outputs/certificate.json');args=p.parse_args()
    try:
        cert=json.loads(args.certificate.read_text());res=validate(cert)
    except (AssertionError,KeyError,TypeError,ValueError,OSError) as exc:
        print(json.dumps({'status':'REJECT','reason':str(exc)},ensure_ascii=False));return 1
    print(json.dumps(res,ensure_ascii=False));return 0
if __name__=='__main__':sys.exit(main())
