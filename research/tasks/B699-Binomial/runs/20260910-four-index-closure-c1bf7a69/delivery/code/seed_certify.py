"""Exact source-constant evaluation for three BFT seed consumers.
The symmetrized §7 consumer uses kappa2/2, plus min(N1,N2)>=2D.
Publication inputs Prop 5.1 are literal rationals, not recomputed here.
"""
from pathlib import Path
from fractions import Fraction as F
from math import comb, factorial, gcd
import json,time
from intervals import I,ceil,max_interval,min_interval
ROOT=Path(__file__).resolve().parents[1]
SEEDS=[dict(pair=[2,17],p=17,k0=1,a=1,q=2,l0=4,b=1,c=7,d=5,L1='1.4135',m0=74,eps='0.007',goal='0.330'),
 dict(pair=[17,19],p=17,k0=2,a=5,q=19,l0=2,b=4,c=2,d=1,L1='1.9377',m0=150,eps='0.002',goal='0.190'),
 dict(pair=[11,23],p=23,k0=1,a=1,q=11,l0=1,b=2,c=7,d=4,L1='1.6219',m0=60,eps='0.007',goal='0.110')]

def beta(a,b):return F(factorial(a)*factorial(b),factorial(a+b+1))
def integrals(c,d,z,delta):
    # Expand just the last factor; beta integral evaluates the first two.
    i1=sum((comb(d-delta,r)*(-(1-z))**r*beta(c-d-1+delta+r,d-delta) for r in range(d-delta+1)),F(0))
    i2=sum((comb(c-d-1+delta,r)*(-z)**r*beta(d-delta+r,d-delta) for r in range(c-d+delta)),F(0))
    assert i1>0 and i2>0
    return i1,i2

def certify(row):
    p,q,a,b,k0,l0,c,d=(row[k] for k in ['p','q','a','b','k0','l0','c','d'])
    P=p**k0;Q0=q**l0;D0=a*P-b*Q0
    assert D0>0 and gcd(c,d)==1
    L1=F(row['L1']);eps=F(row['eps']);goal=F(row['goal']);s=F(c,d);z=F(D0,a*P)
    assert 1<s<1/z
    alpha_d=F((c+d)**(c+d),(c-d)**(c-d)*d**(2*d))
    root=I(s*s*z*z+4-4*z).sqrt()
    u1=(s*(2-z)-root)/(2*(1-z)*(s+1))
    # u2 rationalized: exactly equal to original formula, avoiding cancellation.
    u2=2/(s*z+2+root)
    assert 0<u1.lo<u1.hi<1 and 0<u2.lo<u2.hi<1
    Qd=alpha_d*u1**(c-d)*(1-u1)**d*(1-(1-z)*u1)**d
    Ed=alpha_d*u2**d*(1-u2)**d*(1-z*u2)**(c-d)
    Om3d=I(F(P**(c-d),a**d*b**c)*L1**d)/Qd
    Om4d=I(F(min(P,Q0)**c,(a*P)**(c-d)*D0**(2*d))*L1**d)/Ed
    assert Om3d.lo>1 and Om4d.lo>1
    logM2=I(max(P,Q0)).log();den=c*logM2+Om4d.log()
    lam=Om4d.log()/den
    assert lam.lo-eps>goal and lam.hi<1
    C1=[];C2=[];integs=[]
    for delta in [0,1]:
        v1,v2=integrals(c,d,z,delta);integs.append([str(v1),str(v2)])
        sqrtfactor=I(s*s-1).sqrt()
        if delta:sqrtfactor=1/sqrtfactor
        # 3 < pi < 4 is an elementary certified coarse bound.
        common=alpha_d*sqrtfactor/I(6,8)
        C1.append(common/Qd*v1);C2.append(common/Ed*v2)
    kap1=max_interval([2*32*C1[delta]/((a*P)**delta) for delta in [0,1]])
    kap2=min_interval([I(F((a*P)**(1-delta),2)*F(D0)**(2*delta-1))/C2[delta] for delta in [0,1]])/2
    # Conservative symmetrization is the last /2.
    terms=[kap1.log()/Om3d.log(), (1+lam)*(c*logM2-kap2.log())/(eps*den), (1+lam)*kap2.log()/(eps*den),I(row['m0'])]
    M=max_interval(terms)
    h0=c*(M+1)*logM2/((1-lam)*I(2).log())
    bits=ceil(h0.hi)+1
    assert bits>=7
    return dict(input=row,D=32,D0=D0,z=str(z),M1=min(P,Q0),M2=max(P,Q0),
        alpha_d=str(alpha_d),u1=u1.out(),u2=u2.out(),Qd=Qd.out(),Ed=Ed.out(),
        Omega3d=Om3d.out(),Omega4d=Om4d.out(),lambda3=lam.out(),
        integrals=integs,C1=[v.out() for v in C1],C2=[v.out() for v in C2],
        kappa1=kap1.out(),kappa2_symmetrized=kap2.out(),M_terms=[v.out() for v in terms],
        M=M.out(),log2_x0=h0.out(),accepted_min_bits=bits)
if __name__=='__main__':
    start=time.monotonic();rows=[certify(r) for r in SEEDS]
    out=dict(status='exact_rational_intervals_passed',rounding_bits=80,pi_enclosure=[3,4],
       caveat='BFT analytic lemmas and Prop5.1 adopted, not re-proved by this computation',rows=rows)
    (ROOT/'outputs/seed_constants.json').write_text(json.dumps(out,indent=2))
    print(json.dumps(dict(status=out['status'],seconds=time.monotonic()-start,rows=[dict(pair=r['input']['pair'],bits=r['accepted_min_bits'],lambda_interval=r['lambda3'],M=r['M']) for r in rows]),indent=2))
