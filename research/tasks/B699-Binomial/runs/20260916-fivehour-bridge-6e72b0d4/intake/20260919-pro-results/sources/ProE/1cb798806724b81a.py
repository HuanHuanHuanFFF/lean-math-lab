#!/usr/bin/env python3
"""Independent standard-library checker for explicit algebraic certificates.
This is not a formal verification of the paper's unbounded number-theoretic arguments.
"""
from __future__ import annotations
import argparse, copy, json, math
from fractions import Fraction as Fr
from pathlib import Path

class Poly:
    def __init__(self, terms=None):
        self.terms={m:Fr(c) for m,c in (terms or {}).items() if c}
    @staticmethod
    def c(a): return Poly({():Fr(a)})
    @staticmethod
    def v(a): return Poly({((a,1),):Fr(1)})
    def __add__(self,b):
        b=as_poly(b);out=dict(self.terms)
        for m,c in b.terms.items():out[m]=out.get(m,Fr(0))+c
        return Poly(out)
    __radd__=__add__
    def __neg__(self):return Poly({m:-c for m,c in self.terms.items()})
    def __sub__(self,b):return self+-as_poly(b)
    def __rsub__(self,b):return as_poly(b)+-self
    def __mul__(self,b):
        b=as_poly(b);out={}
        for a,c in self.terms.items():
            for z,e in b.terms.items():
                p=dict(a)
                for v,k in z:p[v]=p.get(v,0)+k
                m=tuple(sorted(p.items()));out[m]=out.get(m,Fr(0))+c*e
        return Poly(out)
    __rmul__=__mul__
    def __pow__(self,k):
        if not isinstance(k,int) or k<0:raise ValueError('negative exponent')
        out=Poly.c(1);v=self
        while k:
            if k&1:out=out*v
            v=v*v;k//=2
        return out
    def subst(self,values):
        out=Poly()
        for mon,c in self.terms.items():
            t=Poly.c(c)
            for var,e in mon:t=t*as_poly(values.get(var,Poly.v(var)))**e
            out=out+t
        return out
    def __eq__(self,b):return self.terms==as_poly(b).terms
    def coefficients(self,var):
        degree=0
        for m in self.terms:
            if any(k!=var for k,e in m):raise ValueError('not univariate')
            degree=max(degree,dict(m).get(var,0))
        out=[Fr(0)]*(degree+1)
        for m,c in self.terms.items():out[dict(m).get(var,0)]+=c
        return out

def as_poly(x):return x if isinstance(x,Poly) else Poly.c(x)
def need(x,msg):
    if not x:raise ValueError(msg)
def unpack(obj):
    need(set(obj)=={'vars','terms'},'polynomial fields')
    vs=obj['vars'];need(len(vs)==len(set(vs)),'duplicate variable')
    out={}
    for m,c in obj['terms']:
        need(len(m)==len(vs),'monomial arity')
        need(all(isinstance(e,int) and e>=0 for e in m),'monomial exponent')
        term=tuple(sorted((v,e) for v,e in zip(vs,m) if e));val=Fr(c)
        need(val!=0 and term not in out,'zero or duplicate monomial')
        out[term]=val
    return Poly(out)

CONTRACTS={'d_min':64,'d_parity':'even','h':'d^2+2*d+5','Q_min':3,
    'extra':'Q^3>h','root_branch':'P>=4*Q','minimal_branch':'g=1,lambda=1,w=1,xi=2*mu',
    'isolated_case':'mu=3 and 3 does not divide t3','gcd_odd_g':6,'gcd_even_g':3}

def verify(obj):
    need(obj.get('schema')=='B699-isolated3-and-quadratic-carry-v1','schema')
    need(obj.get('contracts')==CONTRACTS,'domain contract')
    names='d y x h P Q V t nu n C u g H Z D eps T R Y mu ze m'.split()
    vs={k:Poly.v(k) for k in names}
    d,y,x,h,P,Q,V,t,nu,n,C,u,g,H,Z,D,eps,T,R,Y,mu,ze,m=[vs[k] for k in names]
    hd=d*d+2*d+5;K=d*d+d+4;J=d**3+Fr(9,2)*d-8
    f=x*(h-x)**2-(h+x)**2
    F=-2*y**3+(d*d-4*d-2)*y*y+(2*d**3+2*d*d+4*d+12)*y-5*d*d-2*d-13
    delta=7-Fr(5,2)*d+(d*d-2*d+2)*y-2*y*y
    P0=(d*d+3)*Q-2*V;nu0=(d+1)*Q+V;t0=K*Q-V
    n0=P0*Q*nu0+2;tau0=n0-t0*Q*Q
    weak_n=36*m+8;weak_j=18*m+1
    expected={
      'homogeneous_recovery':P*(h*Q-P)**2-Q*(h*Q+P)**2+4*h,
      'limiting_cubic':f,
      'limiting_derivative':3*x*x-(4*h+2)*x+h*h-2*h,
      'local_F':F,'tau_polynomial':tau0,'fractional_gap':delta,
      'integer_K':K,'integer_J':J,
      'saturated_norm':C*u*g*g-Z*(3*H)**2-1,
      'saturated_row':n-2*C*(3*H)-2,
      'saturated_discriminant':Z*(n-1)-C*C+g*g*D*D,
      'saturated_epsilon':3*H-2*u*g*g,
      'saturated_T_norm':u*g*g*T-Z*eps*eps-1,
      'saturated_rho_polynomial':R*Y**3-2*Y*Y-2*Y+1,
      'same_Psi_J':18*u*(3*D),'same_Psi_discriminant':3*u*u*(9*Z),
      'minimal_divisor':V*(nu*nu-h*Q*Q)-(Q**3-1),
      'minimal_linear':h*ze-2*mu*(P-Q),
      'outer_first_window':4*weak_j*(weak_n-weak_j)-(weak_n**2-1),
    }
    need(set(obj['identities'])==set(expected),'identity member set')
    for name,poly in expected.items():need(unpack(obj['identities'][name])==poly,'identity '+name)
    # Additional cross-representation checks, not read from the constructor.
    need(f.subst({'h':hd,'x':d*d+3-2*y})==4*F,'local cubic substitution')
    need(tau0.subst({'V':y*Q})==(J+delta)*Q**3+2,'actual tau scaling')
    need((4*(P*nu*nu-t*t*Q+h)).subst({'t':Fr(1,2)*(h*Q+P),'nu':Fr(1,2)*(h*Q-P)})
         ==expected['homogeneous_recovery'],'homogeneous recovery derivation')
    need(expected['minimal_divisor']==(V*nu*nu-P*Q*Q+1)+(P-Q-h*V)*Q*Q,
         'divisor equation is a consequence, not independent')
    # The linear second-window equation for xi=2*mu, g=w=lambda=1.
    window=2*mu*P*Q-P*ze-2*mu*Q*Q-2*nu*ze
    need(window+Q*expected['minimal_linear']==ze*(h*Q-P-2*nu),
         'linear second-window consequence')
    need(J.subst({'d':2*m})==8*m**3+9*m-8,'J integrality for even d')
    # Rational sign obligations: A/B represent the two exact root barriers.
    A0=5*d*d-3*d-2;B0=2*d**3
    A1=5*d-3;B1=2*d*d
    def Fc(A,B):
        return -2*A**3+(d*d-4*d-2)*A*A*B+(2*d**3+2*d*d+4*d+12)*A*B*B-(5*d*d+2*d+13)*B**3
    rational={
      'lower_residual':(-Fc(A0,B0)-B0**3,B0**3),
      'upper_residual':(Fc(A1,B1),B1**3),
      'fraction_lower':((14-5*d)*B0*B0+2*(d*d-2*d+1)*A0*B0-4*A0*A0,2*B0*B0),
      'fraction_upper':((-328+135*d)*B1*B1-54*(d*d-2*d+2)*A1*B1+108*A1*A1,54*B1*B1),
      'y_lower_positive':(A0,B0),
      'y_upper_below_one':(B1-A1,B1),
      'gap_derivative_bound':(d*d-2*d-3,Poly.c(1)),
      'cubic_at_four':(3*hd*hd-40*hd+48,Poly.c(1)),
    }
    need(set(obj['positive_certificates'])==set(rational),'positive certificate member set')
    for name,(num0,den0) in rational.items():
        item=obj['positive_certificates'][name]
        need(item['shift']==64,'shift '+name)
        num=unpack(item['numerator']);den=unpack(item['denominator'])
        need(num*den0==den*num0,'rational barrier '+name)
        need(len(den.terms)==1,'denominator must be a positive monomial')
        mm,cc=next(iter(den.terms.items()))
        need(cc>0 and all(v=='d' for v,e in mm),'positive denominator '+name)
        cs=num.subst({'d':d+64}).coefficients('d')
        need(cs==[Fr(c) for c in item['shifted_coefficients']],'shifted polynomial '+name)
        need(all(c>0 for c in cs),'strict positive coefficients '+name)
    need(obj['f3_table']==[[0,2,0,2],[1,1,1,0],[2,0,0,2]],'complete F3 alternatives')
    sh=obj['real_shell'];need(sh['h']==13 and sh['Q_min']==100 and sh['not_integer_inputs'] is True,'shell contract')
    L=Fr(sh['L']);U=Fr(sh['U']);need((L,U)==(Fr(1683,1000),Fr(1684,1000)),'isolating interval')
    ff=lambda a:a**3-27*a*a+143*a-169
    nn=lambda a:a*(13-a)/2
    ss=lambda a:(13+a)/2
    tt=lambda a:nn(a)-ss(a)
    margins={'target_above_left':-ff(L)-Fr(52,100**3),'right_positive':ff(U),
      'sigma_above_7':ss(L)-7,'sigma_below_8':8-ss(U),
      'n_above_9':nn(L)-9,'n_below_10':10-nn(U)-Fr(2,100**3),
      'tau_above_2':tt(L)-2,'tau_below_3':3-tt(U)-Fr(2,100**3)}
    need(set(sh['strict_margins'])==set(margins),'shell margin set')
    for name,value in margins.items():
        need(Fr(sh['strict_margins'][name])==value and value>0,'shell margin '+name)
    need(sh['floors']=={'sigma':7,'tau':2,'n':9},'shell floors')
    ex=obj['weak_integer_example'];need(ex=={'n':44,'j':19,'prime_witness':43,'mu':3,'g':1,'N':43},'weak example fields')
    nn0,jj,p=ex['n'],ex['j'],ex['prime_witness']
    need(4<=jj<=nn0//2 and math.gcd(nn0,jj)==1,'weak example interval/gcd')
    need(all(p%k for k in range(2,math.isqrt(p)+1)),'weak witness primality')
    need(math.comb(nn0,3)%p==0 and math.comb(nn0,jj)%p==0,'direct original binomials')
    need((jj*(nn0-jj))%43!=0,'first window fails in weak example')
    return {'status':'PASS','identity_records':len(expected),'positive_certificates':len(rational),
      'F3_alternatives':3,'real_shell_strict_margins':len(margins),
      'explicit_weak_original_examples':1,'parameter_scans':0}

def damaged_checks(obj):
    cases=[]
    def add(name,edit):
        x=copy.deepcopy(obj);edit(x);cases.append((name,x))
    add('missing_Q_growth',lambda x:x['contracts'].__setitem__('extra','none'))
    add('remove_high_branch',lambda x:x['contracts'].__setitem__('root_branch','P>0'))
    add('remove_even_d',lambda x:x['contracts'].__setitem__('d_parity','any'))
    add('change_gcd',lambda x:x['contracts'].__setitem__('gcd_odd_g',2))
    add('wrong_cubic',lambda x:x['identities']['local_F']['terms'][0].__setitem__(1,'999'))
    add('wrong_Psi_scale',lambda x:x['identities']['same_Psi_J']['terms'][0].__setitem__(1,'18'))
    add('missing_identity',lambda x:x['identities'].pop('minimal_divisor'))
    add('wrong_shift',lambda x:x['positive_certificates']['upper_residual'].__setitem__('shift',63))
    add('wrong_positive_coefficient',lambda x:x['positive_certificates']['fraction_lower']['shifted_coefficients'].__setitem__(0,'-1'))
    add('wrong_F3_case',lambda x:x['f3_table'][0].__setitem__(2,1))
    add('pretend_integer_shell',lambda x:x['real_shell'].__setitem__('not_integer_inputs',False))
    add('wrong_root_interval',lambda x:x['real_shell'].__setitem__('L','17/10'))
    add('wrong_witness_3',lambda x:x['weak_integer_example'].__setitem__('prime_witness',3))
    add('wrong_floor',lambda x:x['real_shell']['floors'].__setitem__('n',10))
    rejected=[]
    for name,x in cases:
        try:verify(x)
        except (ValueError,KeyError,TypeError,IndexError,ZeroDivisionError):rejected.append(name)
        else:raise RuntimeError('accepted damaged certificate: '+name)
    return {'tested':len(cases),'rejected':len(rejected),'names':rejected}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('certificate',type=Path);ap.add_argument('--output',type=Path)
    args=ap.parse_args();obj=json.loads(args.certificate.read_text(encoding='utf-8'))
    result=verify(obj);result['damaged_certificates']=damaged_checks(obj)
    text=json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n'
    if args.output:args.output.parent.mkdir(parents=True,exist_ok=True);args.output.write_text(text,encoding='utf-8')
    print(text)
if __name__=='__main__':main()
