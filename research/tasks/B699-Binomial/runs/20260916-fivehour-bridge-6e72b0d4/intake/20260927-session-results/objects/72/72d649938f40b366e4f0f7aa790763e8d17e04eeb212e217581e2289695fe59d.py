"""Offline acceptance checker (standard library only).
Re-derives the Laurent coefficients by triangular extraction, checks exact
identities and numerical constants, and checks finite diagnostic certificates.
This is a same-author arithmetic checker, not Lean or external peer review.
"""
from pathlib import Path
from fractions import Fraction as F
import sys,json,math,hashlib,argparse
from exact_kernel import (K,term,add,scale,mul,power,source_polynomials,
                          serialize,norm_sum,evaluate)
if hasattr(sys,'set_int_max_str_digits'):sys.set_int_max_str_digits(0)
ROOT=Path(__file__).resolve().parents[1]
def require(condition,message):
    if not condition:raise ValueError(message)
def read(p):return json.loads(p.read_text(encoding='utf-8'))
def inv(c):
    n=c.a*c.a-3*c.b*c.b
    require(n!=0,'zero field denominator')
    return K(c.a/n,-c.b/n)
def recurrence_pell(t):
    # Different from binary powering in the generator.
    u,x=1,0
    for _ in range(t):u,x=2*u+3*x,u+2*x
    return u,x

def check_origin_identity():
    # Independent three-variable integer polynomial calculation in (d,v,nu).
    def plus(*ps):
        o={}
        for p in ps:
            for k,c in p.items():o[k]=o.get(k,0)+c
        return {k:c for k,c in o.items() if c}
    def times(p,q):
        o={}
        for k,c in p.items():
            for kk,cc in q.items():
                key=tuple(a+b for a,b in zip(k,kk));o[key]=o.get(key,0)+c*cc
        return {k:c for k,c in o.items() if c}
    def sc(p,c):return {k:c*x for k,x in p.items()}
    def pw(p,n):
        out={(0,0,0):1}
        for _ in range(n):out=times(out,p)
        return out
    d={(1,0,0):1};v={(0,1,0):1};nu={(0,0,1):1}
    Q=plus(d,v);Y=plus(times(d,nu),sc(pw(Q,2),-1))
    Fn=plus(times(times(d,v),pw(nu,2)),sc(times(times(v,pw(Q,2)),nu),-2),sc(pw(Q,4),-1),d)
    residual=plus(times(v,pw(Y,2)),sc(pw(Q,5),-1),pw(d,2),sc(times(d,Fn),-1))
    require(not residual,'same-input quadratic recovery identity failed')

def verify(root):
    certdir=root/'certificates';sym=read(certdir/'symbolic.json');bounds=read(certdir/'uniform_bounds.json')
    o=source_polynomials();S=o['S']
    require(sym['polynomials']=={k:serialize(v) for k,v in o.items()},'source polynomial certificate mismatch')
    # Independently discover the positive Laurent square-root part, no table call.
    vlead={k:c for k,c in power(o['v'],2).items() if k[1]==6}
    require(len(vlead)==1,'unexpected leading monomial')
    (er,ez),lc=next(iter(vlead.items()))
    P=dict(vlead)
    for target in range(11,5,-1):
        residual=add(S,scale(power(P,2),-1))
        correction={(r-er,target-ez):c*inv(2*lc) for (r,z),c in residual.items() if z==target}
        P=add(P,correction)
    require(serialize(P)==sym['sqrt_positive_part'],'triangular Laurent coefficients differ')
    R=add(S,scale(power(P,2),-1))
    require(serialize(R)==sym['residual_S_minus_P_squared'],'residual certificate mismatch')
    require(max(z for r,z in R)==5 and min(z for r,z in R)==-12,'wrong residual support')
    require(all(z<6 for r,z in R),'nonzero high residual coefficient')
    identities={
      'Pell':add(power(o['V'],2),scale(power(o['X'],2),-3),term(a=-1)),
      'y=UV-1':add(o['y'],scale(mul(o['U'],o['V']),-1),term(a=1)),
      'd=1+3UX':add(o['d'],scale(mul(o['U'],o['X']),-3),term(a=-1)),
      'd^2+d+1=3y^2':add(power(o['d'],2),o['d'],term(a=1),scale(power(o['y'],2),-3)),
      'vW=d^3-1':add(mul(o['v'],o['W']),scale(power(o['d'],3),-1),term(a=1)),
      'vS=Q^5-d^2':add(mul(o['v'],S),scale(power(add(o['d'],o['v']),5),-1),power(o['d'],2))}
    require(all(not p for p in identities.values()),'source identity is nonzero')
    require(sym['identity_residuals']=={k:[] for k in identities},'identity certificate mismatch')
    check_origin_identity()
    cp,cs=norm_sum(P),norm_sum(S)
    require(cp==F(152651,3072)<50 and cs==F(1084601,2304)<512,'wrong coefficient norm')
    require(bounds['P_norm_exact']==str(cp) and bounds['S_norm_exact']==str(cs),'wrong norm certificate')
    crude_cs=F(4,3)**4+5*4*F(4,3)**3+10*4**2*F(4,3)**2+10*4**3*F(4,3)+5*4**4+4**2*72
    require(crude_cs==F(293248,81)<4096,'coarse elementary S bound failed')
    require(bounds['S_norm_coarse_exact']==str(crude_cs),'coarse bound certificate mismatch')
    require(all(-4<=r<=2 for r,z in P) and all(-1<=r<=4 for r,z in S),'eta degree bounds failed')
    for (r,z),c in P.items():
        require(3072%c.a.denominator==0 and 3072%c.b.denominator==0,'coefficient denominator')
        require(4+r>=0 and 2-r>=0,'D does not clear eta denominator')
    beta={r:c.b for (r,z),c in P.items() if z==0 and c.b}
    require(beta=={-2:-F(45,64),-4:-F(1215,256)},'irrational constant formula incorrect')
    # Concrete exact trace evaluations complement the all-parameter denominator proof.
    for q,a,b in [(1,1,2),(2,7,3),(8,15,16)]:
        zz=K(*recurrence_pell(4*q));eta=F(a,b)
        T=evaluate(P,eta,zz)
        for (r,z),c in P.items():
            if z>=1:T=T+evaluate({(r,-z):c.conj()},eta,zz)
        D=3072*a**4*b*b;DT=D*T
        require(DT.a.denominator==1,'trace rational part not integral')
        require(DT.b==-540*b**4*(4*a*a+27*b*b),'trace irrational coefficient incorrect')
    require(64*(4096+50**2)+50==422194<2**19,'error constant')
    require(3072<2**12 and 3072*27**4<2**31,'denominator bounds')
    require(24+19+8==51<52 and 12+10+4==26,'norm threshold arithmetic')
    require(2**52>32*50 and 2**(19-52)<1,'dominance / small error')
    require(bounds['threshold_power_of_two']==52 and bounds['threshold_H_power']==26,'threshold certificate')
    # lambda^4 = 97+56sqrt(3) > 128; sqrt(3)>1 gives the stronger >153.
    require(97+56>128,'Pell growth base')
    require((432*64)**26<2**(7*64),'q=64 exponential dominance base')
    require(65**26<128*64**26,'all-q induction inequality')
    require(int(bounds['base_left'])==(432*64)**26 and int(bounds['base_right'])==2**448,'base certificate')
    require(int(bounds['induction_left'])==65**26 and int(bounds['induction_right'])==128*64**26,'induction certificate')
    samples=read(certdir/'sample_diagnostics.json')
    require([(r['q'],r['m']) for r in samples]==[(q,m) for q in [512,1024,1536] for m in [1,3,9]],'sample coverage list')
    for row in samples:
        q,m=row['q'],row['m'];V,X=recurrence_pell(4*q);U=2*V+3*X;y=U*V-1;d=1+3*U*X
        rho=(X&-X).bit_length()-1;b=2**(rho-1)
        require(rho==row['rho'] and b==row['b'] and b<=4*q,'sample valuation')
        require((9*(U//2))%m==0,'sample multiplier divisibility')
        A=m*X//b;B=9*U*b//m;v=A*y;W=B*y;Q=d+v
        require(v*W==d**3-1 and d*d+d+1==3*y*y,'sample Pell identities')
        numerator=Q**5-d*d
        require(numerator%v==0,'sample square target not integral')
        ss=numerator//v;rt=math.isqrt(ss)
        require(rt*rt<ss<(rt+1)**2,'sample unexpectedly square')
        require(hashlib.sha256(str(ss).encode()).hexdigest()==row['S_sha256_decimal'],'sample S digest')
        require(hashlib.sha256(str(rt).encode()).hexdigest()==row['sqrt_floor_sha256_decimal'],'sample isqrt digest')
        if q==512 and m==1:
            ex=read(certdir/'example_q512_m1.json')
            for name,val in dict(U=U,X=X,V=V,y=y,d=d,A=A,B=B,v=v,W=W,Q=Q,S=ss,sqrt_floor=rt).items():
                require(ex[name]==str(val),'full example integer differs: '+name)
    bd=read(certdir/'boundary_large_denominator.json');q=64;V,X=recurrence_pell(4*q);U=2*V+3*X;y=U*V-1;d=1+3*U*X
    b=X//2
    require(bd['b']==str(b) and b>108*q and 2*V<(4*b)**26,'large-height failure boundary')
    require(2*int(bd['B'])==3*(d-1),'boundary allocation')
    print('PASS same-input square recovery identity: independent integer-polynomial expansion')
    print('PASS Laurent coefficients: derived recursively, seven coefficients; residual degrees -12..5')
    print('PASS six exact Pell/source identities and all coefficient certificates')
    print('PASS denominator clearing, nonzero irrational constant, and three exact trace checks')
    print('PASS elementary error bounds and integer-norm threshold Z <= (4 H)^26')
    print('PASS q>=64 induction and BRIDGE4096 height specialization (q>=512)')
    print('PASS nine finite diagnostics using iterative Pell recurrence and integer square roots')
    print('PASS large-height boundary: no NC3 / odd--odd realization asserted')
    print('ACCEPTED: new arithmetic evidence; mathematical scope conditional on imported NC3-to-bridge entrance')
    print('NOT CLAIMED: full i=3, full B699, Lean, external independent review, or an original counterexample')

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--root',type=Path,default=ROOT);args=p.parse_args()
    verify(args.root)
