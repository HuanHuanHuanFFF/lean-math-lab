#!/usr/bin/env python3
"""R05 exact generator. Standard library; no repository or network access."""
from __future__ import annotations
import argparse, json
from fractions import Fraction
from pathlib import Path
from math import factorial

NAMES=('d','A','H','B','y','h'); ZERO=(0,)*6

def add(a,b):
    c=dict(a)
    for k,v in b.items():
        c[k]=c.get(k,0)+v
        if c[k]==0:del c[k]
    return c

def sc(k,a):return {e:k*v for e,v in a.items() if k*v}
def sub(a,b):return add(a,sc(-1,b))
def mul(a,b):
    c={}
    for e,v in a.items():
        for f,w in b.items():
            k=tuple(x+y for x,y in zip(e,f));c[k]=c.get(k,0)+v*w
    return {k:v for k,v in c.items() if v}
def pw(a,k):
    r={ZERO:1}
    for _ in range(k):r=mul(r,a)
    return r
def plus(*args):
    r={}
    for a in args:r=add(r,a)
    return r

def polynomials():
    xs=[]
    for j in range(6):
        e=[0]*6;e[j]=1;xs.append({tuple(e):1})
    d,A,H,B,y,h=xs;one={ZERO:1}
    v=mul(A,y);W=mul(B,y);Q=add(d,v);P=add(Q,mul(h,v))
    lin=plus(mul(h,d),sc(-4,H),sc(-1,Q))
    E=plus(sc(4,mul(v,pw(H,2))),sc(-1,mul(P,pw(Q,2))),one)
    F=plus(sc(4,mul(mul(d,v),pw(H,2))),sc(-4,mul(mul(v,pw(Q,2)),H)),sc(-1,pw(Q,4)),d)
    C=plus(sc(4,pw(d,3)),sc(6,mul(pw(d,2),v)),sc(4,mul(d,pw(v,2))),pw(v,3),mul(d,W))
    G=plus(sc(4,mul(d,pw(H,2))),sc(-4,mul(pw(Q,2),H)),sc(-1,C))
    Z=plus(sc(2,mul(d,H)),sc(-1,pw(Q,2)))
    n=plus(sc(2,mul(mul(P,Q),H)),sc(2,one))
    N=plus(sc(4,mul(v,pw(H,3))),H,Q)
    old= sc(4,mul(d,plus(pw(H,2),sc(-1,mul(d,H)),sc(-1,pw(d,2)))))
    ycoeff=plus(sc(-8,mul(mul(d,A),H)),sc(-4,mul(mul(pw(A,2),y),H)),sc(-6,mul(pw(d,2),A)),sc(-4,mul(mul(d,pw(A,2)),y)),sc(-1,mul(pw(A,3),pw(y,2))),sc(-1,mul(d,B)))
    alloc=plus(mul(v,W),sc(-1,pw(d,3)),one)
    pairs=[
      ('F_minus_dE',sub(F,mul(d,E)),mul(mul(v,pw(Q,2)),lin)),
      ('integer_saturation',sub(F,mul(v,G)),mul(d,alloc)),
      ('mod_y_identity',sub(G,old),mul(y,ycoeff)),
      ('original_linear',plus(mul(P,d),sc(-1,pw(Q,2)),sc(-4,mul(v,H))),mul(v,lin)),
      ('square_norm',plus(mul(v,pw(Z,2)),sc(-1,pw(Q,5)),pw(d,2)),mul(d,F)),
      ('original_n',sub(sc(2,N),mul(n,Q)),sc(2,mul(H,E))),
      ('coprime_factorization',sub(C,sc(4,mul(H,sub(mul(d,H),pw(Q,2))))),sc(-1,G)),
      ('saturated_S',sub(add(pw(Q,4),mul(d,C)),pw(Z,2)),sc(-1,mul(d,G))),
      ('balanced_allocation',alloc,plus(mul(plus(mul(A,B),sc(-3,d),sc(3,one)),pw(y,2)),mul(sub(d,one),plus(sc(3,pw(y,2)),sc(-1,pw(d,2)),sc(-1,d),sc(-1,one)))))
    ]
    out=[]
    for name,l,r in pairs:
        assert l==r
        out.append({'name':name,'left':[[list(e),c] for e,c in sorted(l.items())], 'right':[[list(e),c] for e,c in sorted(r.items())]})
    return {'variables':list(NAMES),'degree_box':[5,5,3,1,5,1],'identities':out}

def vp(x,p):
    if x==0:raise ValueError('zero has no finite valuation in certificate')
    e=0
    while x%p==0:x//=p;e+=1
    return e

def qp(q,m):
    def mul2(a,b):return ((a[0]*b[0]+3*a[1]*b[1])%m,(a[0]*b[1]+a[1]*b[0])%m)
    r=(1,0);a=(2,1);k=8*q+1
    while k:
        if k&1:r=mul2(r,a)
        a=mul2(a,a);k//=2
    i2=pow(2,-1,m)
    return ((3*r[1]-1)*i2%m,r[0]*i2%m)

def ring_values(A,n,x,m):
    y,H,B=x;d=(1+A*B*pow(3,-1,m))%m;v=A*y%m;Q=(d+v)%m
    h=(4*H+Q)*pow(d,-1,m)%m;P=(Q+h*v)%m
    C=(4*d**3+6*d*d*v+4*d*v*v+v**3+d*B*y)%m
    G=(4*d*H*H-4*Q*Q*H-C)%m
    fs=[(d*d+d+1-3*y*y)%m,G,(2*P*Q*H+2-n)%m]
    return fs,dict(d=d,y=y,H=H,B=B,v=v,Q=Q,h=h,P=P,C=C)

def implicit_lift(p,A,s,K):
    m=p**K;n=3*pow(2,s,m)%m
    H0=(n-2)*pow(2,-1,p)%p;B0=(4*H0*H0-4*H0-4)%p
    x=[1,H0,B0]; rows=[]
    for k in range(1,K):
        pk=p**k;fs,_=ring_values(A,n,x,p*pk)
        assert all(f%pk==0 for f in fs)
        r=[f//pk for f in fs]
        dy=r[0]*pow(6,-1,p)%p;dH=-r[2]*pow(2,-1,p)%p
        dB=(r[1]-B0*dy+(8*H0-4)*dH)%p
        delta=[dy,dH,dB]; x=[z+pk*t for z,t in zip(x,delta)]
        assert ring_values(A,n,x,p*pk)[0]==[0,0,0]
        rows.append({'level':k+1,'residual_divided':r,'digits':delta})
    _,z=ring_values(A,n,x,m)
    period={13:3,19:5}[p];q=0;source_rows=[]
    for k in range(1,K):
        step=period*p**(k-1);mod=p**(k+1)
        candidates=[t for t in range(p) if qp(q+t*step,mod)==(z['d']%mod,z['y']%mod)]
        assert len(candidates)==1
        t=candidates[0];q+=t*step;source_rows.append(t)
    assert qp(q,m)==(z['d'],z['y'])
    return {'prime':p,'precision':K,'modulus':m,'n_mod':n,'state':z,'implicit_digits':rows,'source_q':q,'source_period':period*p**(K-1),'source_digits':source_rows}

def exact_s(e):
    k=0
    for level in range(2,e+1):
        step=19**(level-2);m=19**level
        candidates=[k+j*step for j in range(19) if (96*pow(pow(2,36,m),k+j*step,m)-1)%m==0]
        assert len(candidates)==1;k=candidates[0]
    m=19**(e+1)
    if (96*pow(pow(2,36,m),k,m)-1)%m==0:k+=19**(e-1)
    s=6+36*k
    while s<142:s+=36*19**e
    assert vp((3*pow(2,s-1,m)-1)%m,19)==e
    return s

def crt(items):
    a=0;m=1
    for b,n in items:
        a+=m*((b-a)*pow(m,-1,n)%n);m*=n;a%=m
    return a,m

def boundary_models():
    data=[]
    for a,b,e in [(1,1,1),(2,1,3),(3,3,2),(2,4,4)]:
        K=max(a+2,b+2*e+2);s=exact_s(e)
        A,Am=crt([(13**a,13**K),(19**b,19**K),(5616%1890,1890)])
        r13=implicit_lift(13,A,s,K);r19=implicit_lift(19,A,s,K)
        q,qm=crt([(r13['source_q'],r13['source_period']),(r19['source_q'],r19['source_period'])])
        if q<9:q+=qm
        z=r19['state'];m=19**K
        ev=vp((z['P']*z['Q']**2-1)%m,19)
        assert ev==b+2*e
        assert vp(z['H'],19)==e and vp(z['v'],19)==b
        assert A%24570==5616 and s%12==6 and q%3==0
        z13=r13['state'];u13=[((z13[x]-1)//13**a)%13 for x in ['P','Q']]
        assert u13==[11,7]
        assert q%13**(a-1)==0 and q//13**(a-1)%13==12
        data.append({'a13':a,'b19':b,'e19':e,'A':A,'A_modulus':Am,'s':s,'q':q,'q_modulus':qm,'local13':r13,'local19':r19,'exact_19_norm_valuation':ev,'normalized_13_units':u13,'global_integer_recovery_claimed':False,'prime_power_PQ_recovery_claimed':False})
    return data

def fraction_data(x):return [x.numerator,x.denominator]

def constants():
    e_upper=sum(Fraction(1,factorial(k)) for k in range(5))+Fraction(1,factorial(5))*Fraction(6,5)
    exp075=sum(Fraction(3,4)**k/factorial(k) for k in range(4))
    exp6=sum(Fraction(6)**k/factorial(k) for k in range(6))
    return {'q_min':6,'s_upper_linear':[144,25],'s_upper_simple':149,'log_RH_lower_coefficient':6,
      'pmin_RH':19,'pmin_RH_general':7,'general_weighted_constant':[38400,49],'general_q_constant':[6400,49],'general_simple_constant':144,'general_polynomial_constant':20736,'general_n_height':[2985984,27],'BL_rational_T_coefficient':24,'BL_exponent_positive':[1,1],
      'E_majorant':10,'weighted_prime_sum_constant':[120000,361],'q_support_constant':[20000,361],
      'simple_support_constant':64,'polynomial_height_constant':4096,'large_q_threshold':65536,
      'n_height_constants':[589824,27],
      'exp_series':{'e_upper':fraction_data(e_upper),'exp_three_quarters_lower':fraction_data(exp075),'exp_six_lower':fraction_data(exp6)},
      'old_support_checks':{'7':{'ord2_divisor':3,'T_at_s0mod6':4},'11':{'pow2_5':pow(2,5,11),'pow3_5':pow(3,5,11)},'13':{'H':4},'17':{'pow2_8':pow(2,8,17),'pow3_8':pow(3,8,17)}},
      'jacobian_determinant':-12,'source_primes':[13,19], 'source_periods':[3,5], 'source_first_increment':{'13':[8,4],'19':[17,18]}, 'v19_2pow36_minus1':1}

def build():
    return {'schema':'B699-D-R05-exact-v1','polynomials':polynomials(),'constants':constants(),'boundary_models':boundary_models(),
      'boundaries':{'MA_upper_bound_proved':False,'whole_entry_closed':False,'BL_theorem_proved_by_code':False,'q6_reexecuted':False,'projection_counts_recomputed':False}}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',required=True);args=ap.parse_args()
    p=Path(args.output);p.parent.mkdir(parents=True,exist_ok=True)
    c=build();p.write_text(json.dumps(c,ensure_ascii=False,sort_keys=True,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'status':'PASS','identities':len(c['polynomials']['identities']),'boundary_models':len(c['boundary_models']),'output':p.name}))
if __name__=='__main__':main()
