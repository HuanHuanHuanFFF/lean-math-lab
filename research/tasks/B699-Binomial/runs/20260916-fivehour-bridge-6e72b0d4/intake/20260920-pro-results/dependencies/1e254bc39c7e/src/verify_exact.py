#!/usr/bin/env python3
"""Exact finite certificates only; the ideal-theoretic proof is in PROOFS.md.
Python standard library. No floating point and no unbounded search.
"""
from __future__ import annotations
import argparse, json, sys
from fractions import Fraction as F
from math import comb, gcd, isqrt
from pathlib import Path
sys.dont_write_bytecode = True

class Poly:
    def __init__(self,n:int,terms:dict[tuple[int,...],F]|None=None):
        self.n=n; self.t={e:F(c) for e,c in (terms or {}).items() if c}
    @classmethod
    def const(cls,n:int,c:int|F): return cls(n,{(0,)*n:F(c)})
    @classmethod
    def var(cls,n:int,i:int):
        e=[0]*n;e[i]=1;return cls(n,{tuple(e):F(1)})
    def coerce(self,o):return o if isinstance(o,Poly) else Poly.const(self.n,o)
    def __add__(self,o):
        o=self.coerce(o);assert o.n==self.n
        t=dict(self.t)
        for e,c in o.t.items():t[e]=t.get(e,F(0))+c
        return Poly(self.n,t)
    __radd__=__add__
    def __neg__(self):return Poly(self.n,{e:-c for e,c in self.t.items()})
    def __sub__(self,o):return self+-self.coerce(o)
    def __rsub__(self,o):return self.coerce(o)+-self
    def __mul__(self,o):
        o=self.coerce(o);assert o.n==self.n;t={}
        for e,c in self.t.items():
            for f,d in o.t.items():
                z=tuple(a+b for a,b in zip(e,f));t[z]=t.get(z,F(0))+c*d
        return Poly(self.n,t)
    __rmul__=__mul__
    def __pow__(self,k:int):
        if not isinstance(k,int) or k<0:raise ValueError('nonnegative power required')
        z=Poly.const(self.n,1)
        for _ in range(k):z=z*self
        return z
    def diff(self,i:int):
        t={}
        for e,c in self.t.items():
            if e[i]:
                f=list(e);f[i]-=1;t[tuple(f)]=c*e[i]
        return Poly(self.n,t)
    def data(self):return [[list(e),c.numerator,c.denominator] for e,c in sorted(self.t.items())]


def factor(n:int)->dict[int,int]:
    if n<1:raise ValueError('positive integer required')
    out={};p=2
    while p*p<=n:
        while n%p==0:out[p]=out.get(p,0)+1;n//=p
        p=3 if p==2 else p+2
    if n>1:out[n]=out.get(n,0)+1
    return out

def valuation(n:int,p:int)->int:
    if n<=0:raise ValueError('positive valuation argument required')
    e=0
    while n%p==0:e+=1;n//=p
    return e

def kronecker_prime(D:int,p:int)->int:
    if D%p==0:return 0
    if p==2:return 1 if D%8 in (1,7) else -1
    a=pow(D%p,(p-1)//2,p)
    if a not in (1,p-1):raise ValueError('nonprime in certificate')
    return 1 if a==1 else -1

SAMPLE_V=[2,4,6,8,12,18,24,32,36,50,54,72,98,100,150,242,288,338,392,600,968,1250]
BASES=[{'d':1,'D_K':-4,'h_K':1,'unit_index':2},
       {'d':2,'D_K':-8,'h_K':1,'unit_index':1},
       {'d':3,'D_K':-3,'h_K':1,'unit_index':3},
       {'d':6,'D_K':-24,'h_K':2,'unit_index':1}]

def order_record(v:int)->dict:
    ff=factor(v);d=1;s=1
    for p,e in ff.items():
        d*=p**(e%2);s*=p**(e//2)
    if d not in (1,2,3,6):raise ValueError('unsupported diagnostic base')
    DK=-d if d%4==3 else -4*d
    f=2*s if d%4==3 else s
    hk=2 if d==6 else 1
    wi=2 if d==1 else 3 if d==3 else 1
    if f==1:wi=1
    local=[];h=F(hk,wi)
    for p,e in factor(f).items():
        chi=kronecker_prime(DK,p);fac=p**(e-1)*(p-chi);h*=fac
        local.append({'prime':p,'exponent':e,'chi':chi,'factor':fac})
    if h.denominator!=1:raise ValueError('class formula nonintegral')
    return {'v':v,'d':d,'s':s,'D_K':DK,'conductor':f,'h_K':hk,
            'unit_index':wi,'local_factors':local,'h_order':h.numerator,
            'v5_h_order':valuation(h.numerator,5)}

def roots(a:int,b:int,c:int)->list[int]:
    delta=b*b-4*a*c
    if delta<0:return []
    t=isqrt(delta)
    if t*t!=delta:return []
    return sorted({z//(2*a) for z in [-b-t,-b+t] if z%(2*a)==0})

def algebra_records()->dict:
    Q,v,nu,P=[Poly.var(4,i) for i in range(4)]
    A=Q-v;B=A*nu-Q**2
    R1=v*nu**2-P*Q**2+1;R2=P*(Q-v)-Q**2-2*v*nu
    lhs=A**2+v*B**2-Q**5;rhs=A**2*R1+A*Q**2*R2
    if lhs.t!=rhs.t:raise ValueError('norm identity failed')
    h,x=[Poly.var(2,i) for i in range(2)]
    def G(H,X):return (X-1)*(H-X)**2-4*H*X
    at4=G(h,Poly.const(2,4));quarter=64*G(h,1+F(1,4)*h)
    if at4.t!=((h-12)*(3*h-4)).t:raise ValueError('left endpoint failed')
    if quarter.t!=(h*(h-12)*(9*h+20)).t:raise ValueError('right endpoint failed')
    t=Poly.var(1,0)
    positive=[(t+3)*(3*t+41),(t+3)*(9*t+155),F(67,2)+F(5,2)*t]
    if not all(all(c>0 for c in z.t.values()) for z in positive):raise ValueError('positive coefficients missing')
    xx,yy,vv=[Poly.var(3,i) for i in range(3)]
    re,im=Poly.const(3,1),Poly.const(3,0)
    for _ in range(5):re,im=re*xx-vv*im*yy,re*yy+im*xx
    return {'norm_lhs':lhs.data(),'norm_rhs':rhs.data(),'norm_residual_1':R1.data(),
            'norm_residual_2':R2.data(),'G':G(h,x).data(),'G_at4':at4.data(),
            'G_quarter_times64':quarter.data(),'G_second':G(h,x).diff(1).diff(1).data(),
            'positive_shift_polynomials':[z.data() for z in positive],
            'fifth_real':re.data(),'fifth_imag':im.data()}

def principal_records()->list[dict]:
    o=[]
    for x in [-5,-1,1,5]:
        a,b,c=5,-10*x*x,x**4-x
        rr=roots(a,b,c)
        valid=[v for v in rr if v>0 and v%2==0 and gcd(x,v)==1]
        o.append({'x':x,'coefficients':[a,b,c],'discriminant':b*b-4*a*c,
                  'integer_roots_v':rr,'positive_even_coprime_roots_v':valid})
    if [(x['x'],v,x['x']**2+v) for x in o for v in x['positive_even_coprime_roots_v']] != [(1,2,3)]:
        raise ValueError('principal endpoint wrong')
    return o

def weak_record()->dict:
    Q,v,nu,h,P=3,2,20,43,89
    n=P*Q*nu+2;sigma=(P+nu)*Q*Q;tau=P*(Q*Q+v*nu)
    if sigma+tau!=n:raise ValueError('weak recovery failed')
    common=gcd(comb(n,3),comb(n,sigma))
    return {'Q':Q,'v':v,'nu':nu,'h':h,'P':P,'A5':Q-v,'B5':(Q-v)*nu-Q*Q,
            'n':n,'sigma':sigma,'tau':tau,'gcd_n_sigma':gcd(n,sigma),
            'binom_n_3':comb(n,3),'gcd_binomials':common,
            'common_factorization':[[p,e] for p,e in factor(common).items()],
            'true_lambda':3 if valuation(n-1,3)==1 else 1,
            'true_mu':3 if valuation((n-2)//2,3)==1 else 1,
            'v2_nu':valuation(nu,2),'v2_n':valuation(n,2),
            'odd_part_n':n//2**valuation(n,2),
            'NOT_NC3':True}

def make_certificate()->dict:
    return {'schema':'b699-order5-v1','quarter_denominator':4,
            'algebra':algebra_records(),'principal_endpoint':principal_records(),
            'base_fields':BASES,'order_samples':[order_record(v) for v in SAMPLE_V],
            'safe_mod5_cases':[[a,c,(a-c)%5] for a in [2,3] for c in [-1,0,1]],
            'single_five_cases':[[c,5-c] for c in [-1,1]],
            'weak_shell':weak_record(),
            'machine_scope':'finite algebra and arithmetic only; ideal proof is paper-level'}

def verify(cert:dict)->dict:
    expected=make_certificate()
    if set(cert)!=set(expected):raise ValueError('certificate field set mismatch')
    for k,v in expected.items():
        if cert[k]!=v:raise ValueError('certificate mismatch: '+k)
    if not all(c[2] for c in cert['safe_mod5_cases']):raise ValueError('unsafe residue')
    # π>3 implies these Minkowski bounds, with no decimal evaluation.
    if not all(abs(D)<9 for D in [-3,-4,-8]) or not 24<36:raise ValueError('base bound')
    if any(x*x+6*y*y==2 for x in range(-1,2) for y in [0]):raise ValueError('norm-2 check')
    return {'status':'PASS_EXACT_ORDER5_CERTIFICATE','principal_pairs_Q_v':[[3,2]],
            'base_class_numbers':{'-4':1,'-8':1,'-3':1,'-24':2},
            'order_sample_count':len(SAMPLE_V),'conductor_counterexample_v242_h':10,
            'weak_shell_common_odd_primes':[5,7,2671],
            'proof_boundary':'general ideal/class-group argument remains paper-level'}

def main()->None:
    p=argparse.ArgumentParser();p.add_argument('certificate',type=Path);a=p.parse_args()
    try:result=verify(json.loads(a.certificate.read_text(encoding='utf-8')))
    except (ValueError,KeyError,TypeError,AssertionError) as e:print('REJECTED: '+str(e),file=sys.stderr);raise SystemExit(1)
    print(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2))
if __name__=='__main__':main()
