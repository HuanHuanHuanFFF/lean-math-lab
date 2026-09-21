#!/usr/bin/env python3
"""Independent standard-library-only verification of the finite certificates.
No SymPy, PARI, floating point, or reuse of the generator's symbolic engine.
This checks algebraic identities and positivity certificates; it does not
replace human verification of their mathematical application to NC3.
"""
from __future__ import annotations
from fractions import Fraction as F
from pathlib import Path
import argparse, copy, json

class Poly:
    def __init__(self,n:int,terms=None):
        self.n=n
        self.terms={tuple(k):F(v) for k,v in (terms or {}).items() if v}
    @classmethod
    def const(cls,n,v):return cls(n,{(0,)*n:F(v)})
    @classmethod
    def var(cls,n,i):
        e=[0]*n;e[i]=1
        return cls(n,{tuple(e):F(1)})
    def coerce(self,o):
        if isinstance(o,Poly):
            assert o.n==self.n
            return o
        return Poly.const(self.n,o)
    def __add__(self,o):
        o=self.coerce(o);d=dict(self.terms)
        for k,v in o.terms.items():d[k]=d.get(k,F(0))+v
        return Poly(self.n,d)
    __radd__=__add__
    def __neg__(self):return Poly(self.n,{k:-v for k,v in self.terms.items()})
    def __sub__(self,o):return self+-self.coerce(o)
    def __rsub__(self,o):return self.coerce(o)+-self
    def __mul__(self,o):
        o=self.coerce(o);d={}
        for a,x in self.terms.items():
            for b,y in o.terms.items():
                k=tuple(i+j for i,j in zip(a,b));d[k]=d.get(k,F(0))+x*y
        return Poly(self.n,d)
    __rmul__=__mul__
    def __truediv__(self,k):
        assert not isinstance(k,Poly)
        return self*F(1,k)
    def __pow__(self,k):
        assert isinstance(k,int) and k>=0
        r=Poly.const(self.n,1);a=self
        while k:
            if k&1:r=r*a
            a=a*a;k//=2
        return r
    def __eq__(self,o):return self.terms==self.coerce(o).terms

def strip_expected():
    e,t=Poly.var(2,0),Poly.var(2,1)
    m=16*(e+1)**2+129+t;h=m*m+e
    b7=4*m*(e+1)+7;b9=4*m*(e+1)+9
    A7=8*m**3+b7;A9=8*m**3+b9
    return {
      'f_lower_gt_1':A7**3-4*m*m*(h-1)*A7**2-64*h*m**4*A7+256*m**6*(h*h-1),
      'f_upper_lt_0':-A9**3+4*m*m*(h-1)*A9**2+64*h*m**4*A9-256*m**6*h*h,
      'B_lower':4*m*m*(h-4*m)*b7-b7*b7-16*m**5*(e+1)+(64*e+40)*m**4,
      'B_upper_with_2_over_h':h*(16*m**5*(e+1)-(64*e+24)*m**4-4*m*m*(h-4*m)*b9+b9*b9)-64*m**4,
      'e_upper_lt_quarter':2*m*m-b9,
      'B_increasing':2*m*m*(h-4*m)-b9,
      'root_left_derivative':-3*A9*A9+8*m*m*(h-1)*A9+64*h*m**4,
      'root_right_negative':(3*h*h-40*h+48)/4,
      'root_window_nonempty':4*m*m*(h-4)-A9,
    }

def check_strip(data):
    expected=strip_expected();assert set(data)==set(expected)
    total=0
    for name,p in expected.items():
        d=data[name]
        assert d['variables']==['eta','t']
        assert d['substitution']=='m=16*(eta+1)^2+129+t'
        terms={}
        for mon,coef in d['terms']:
            assert len(mon)==2 and all(isinstance(k,int) and k>=0 for k in mon)
            key=tuple(mon);assert key not in terms
            terms[key]=F(coef)
        supplied=Poly(2,terms)
        assert supplied==p,(name,'polynomial identity mismatch')
        assert supplied.terms.get((0,0),F(0))>0,(name,'missing positive constant')
        assert all(coef>=0 for coef in supplied.terms.values()),(name,'negative coefficient')
        total+=len(supplied.terms)
    return {'polynomials':len(expected),'exact_terms':total}

def f(h,t):
    A=F(h-1,2)
    return 2*t*(A-t)**2-(h-2*t)**2

def df(h,t):
    A=F(h-1,2)
    return 2*(A-t)*(A-3*t)+4*(h-2*t)

def R(h,t):return 4-2*t+(t+2*t*t)/h

def G(h,t):return 1-3*t/h+(2*t*t-t)/(h*h)

def check_small(data):
    entries=data['entries'];assert [r['h'] for r in entries]==list(range(15,33,2))
    for a in entries:
        h=a['h'];K=F(a['K']);lo=F(a['lower']);hi=F(a['upper'])
        assert K==F(2*h*h,(h-4)**2)
        assert 2<lo<hi<K<F(h+1,3)
        assert df(h,K)>0
        vals={
          'monotone_f_lower':df(h,K),
          'left_sign_margin':-(f(h,lo)+F(1,8*h)),
          'right_sign_margin':f(h,hi),
          'R_decreasing_margin':2-(1+4*hi)/h,
          'R_lower':R(h,hi),'R_upper':R(h,lo)+F(1,4*h**3),
          'G_decreasing_margin':F(3,h)-(4*hi-1)/(h*h),
          'G_lower':G(h,hi),'G_upper':G(h,lo),
        }
        assert {k:F(v) for k,v in a['exact_bounds'].items()}==vals
        assert all(vals[k]>0 for k in ['monotone_f_lower','left_sign_margin','right_sign_margin','R_decreasing_margin','G_decreasing_margin'])
        assert 0<vals['R_lower']<vals['R_upper']<vals['G_lower']<vals['G_upper']<1
    return {'uniform_h_certificates':len(entries)}

def check_general_low():
    t=Poly.var(1,0);h=t+33
    ps={
     'kappa_less_3':h*h-24*h+48,
     'f2_negative':16*h*h-72*h-1,
     'f_2plus5h_positive':h**4-32*h**3+65*h*h+500*h+500,
     'R_decreasing':2*h-13,
     'Remainder_lt_1':4*h**3-40*h*h-1,
     'carry_gap':4*h**3-76*h*h-1,
    }
    for name,p in ps.items():
        assert all(v>=0 for v in p.terms.values()) and p.terms[(0,)]>0,name
    # Confirm the expansion of f(2+5/h), with the denominator cleared,
    # using a polynomial numerator representation rather than a CAS.
    A=(h-1)/2;U=2*h+5
    fnum=2*U*(A*h-U)**2-h*(h*h-2*U)**2
    assert 2*fnum==ps['f_2plus5h_positive']
    return {'all_h_ge_33_positive_polynomials':len(ps)}

def check_small_h_impossible():
    hh,T=Poly.var(2,0),Poly.var(2,1)
    b=-(2*hh+1);c=hh*hh-2*hh;d=-hh*hh+4*hh*T
    disc=b*b*c*c-4*c**3-4*b**3*d-27*d*d+18*b*c*d
    expanded=-16*hh*(-hh**4+hh**3*T+11*hh**3-39*hh*hh*T+hh*hh+27*hh*T*T-15*hh*T-T)
    assert disc==expanded
    # Discriminant of f_h(x)+4h T.  T=Q^-3 <= 1/1331.
    bounds={}
    for h in [3,5,7,9,11]:
        a0=16*h**3*(h*h-11*h-1)
        a1=-16*h*(h**3-39*h*h-15*h-1)
        a2=-432*h*h
        upper=F(a0)+max(F(a1),F(0))/1331+max(F(a2),F(0))/1331**2
        assert upper<0
        bounds[str(h)]=str(upper)
    return {'negative_discriminant_bounds':bounds}

def check_interfaces():
    P,Q,nu,h,v=[Poly.var(5,i) for i in range(5)]
    E=P+nu;FF=Q*Q+v*nu;N=P*Q*nu+2
    g1=v*nu*nu-P*Q*Q+1
    g2=P*Q-P*v-Q*Q-2*v*nu
    assert g2==Q*(P-Q-h*v)+v*(h*Q-P-2*nu)
    assert E*FF-(N-1)==-g1-nu*g2
    assert E*Q*Q+P*FF-N==-2*g1-nu*g2
    assert FF*FF+v-P*Q**3==v*g1-Q*Q*g2
    assert (Q*E)**2-N*nu-P==-nu*nu*g2-(P+2*nu)*g1
    # General fixed-h norm form, with v=2V and nu=AQ-hV.
    Q,V,h=[Poly.var(3,i) for i in range(3)]
    A=(h-1)/2;P=Q+2*h*V;nu=A*Q-h*V
    norm=Q**3-((h*h-6*h+1)/2)*V*Q*Q+2*h*(h-1)*V*V*Q-2*h*h*V**3
    assert norm-1==-(2*V*nu*nu-P*Q*Q+1)
    D=(A*Q-h*V)**2-h*Q*Q
    defect=A*A-h
    assert D-defect*Q*Q==V*(-2*A*h*Q+h*h*V)
    # At h=13, the only possible common defect prime is 23.
    assert ((13-1)//2)**2-13==23
    assert all(23%d for d in range(2,5))
    assert [q for q in range(1,23) if pow(q,3,23)==1]==[1]
    return {'core_polynomial_identities':7,'h13_defect_prime':23}


def main():
    ap=argparse.ArgumentParser();ap.add_argument('--self-test',action='store_true');args=ap.parse_args()
    root=Path(__file__).resolve().parents[1]
    strip=json.loads((root/'certificates/strip-positive-polynomials.json').read_text())
    small=json.loads((root/'certificates/low-root-small-h.json').read_text())
    result={'strip':check_strip(strip),'small_h':check_small(small),'general_low':check_general_low(),
            'h_minimum':check_small_h_impossible(),'interfaces':check_interfaces()}
    if args.self_test:
        rejected=[]
        z=copy.deepcopy(strip);k=next(iter(z));z[k]['terms'][0][1]=str(F(z[k]['terms'][0][1])+1)
        for label,func,bad in [
           ('altered_positive_coefficient',check_strip,z),
           ('missing_polynomial',check_strip,{k:v for k,v in strip.items() if k!='B_lower'}),
        ]:
            try:func(bad)
            except (AssertionError,KeyError,ValueError):rejected.append(label)
            else:raise AssertionError('BAD CERTIFICATE ACCEPTED: '+label)
        z=copy.deepcopy(small);z['entries'][0]['upper']='2'
        try:check_small(z)
        except (AssertionError,KeyError,ValueError):rejected.append('invalid_root_interval')
        else:raise AssertionError('BAD INTERVAL ACCEPTED')
        z=copy.deepcopy(small);z['entries']=z['entries'][1:]
        try:check_small(z)
        except (AssertionError,KeyError,ValueError):rejected.append('missing_h_boundary')
        else:raise AssertionError('MISSING CASE ACCEPTED')
        result['bad_certificates_rejected']=rejected
    result['status']='PASS_STANDARD_LIBRARY_EXACT_CHECKS'
    print(json.dumps(result,indent=2))
if __name__=='__main__':
    if not __debug__:raise SystemExit('Run without -O: assertions are part of verification.')
    main()
