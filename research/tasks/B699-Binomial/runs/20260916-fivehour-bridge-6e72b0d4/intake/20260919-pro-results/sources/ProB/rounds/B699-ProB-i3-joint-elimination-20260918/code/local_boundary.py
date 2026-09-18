#!/usr/bin/env python3
"""Standard-library exact replay of local solvability and labelled NON-NC examples.

There is no global NC3 enumeration here. Hensel existence for all parameters is
proved in proofs/PROOFS.md; these finite lifts exercise its exact arithmetic.
"""
from __future__ import annotations
from fractions import Fraction as F
from functools import reduce
from math import gcd, comb
from pathlib import Path
import json

BASE=Path(__file__).resolve().parents[1]
ALPHA=2**25
H=341
DELTA=107
BETA=ALPHA//2-H*DELTA
GAMMA=ALPHA-BETA

# Polynomials are integer coefficient lists in ascending order.
def trim(a):
    a=list(a)
    while len(a)>1 and a[-1]==0:a.pop()
    return a

def add(a,b):
    r=[0]*max(len(a),len(b))
    for i,v in enumerate(a):r[i]+=v
    for i,v in enumerate(b):r[i]+=v
    return trim(r)

def scale(a,c):return trim([v*c for v in a])

def mul(a,b):
    r=[0]*(len(a)+len(b)-1)
    for i,u in enumerate(a):
        for j,v in enumerate(b):r[i+j]+=u*v
    return trim(r)

def power(a,k):
    r=[1]
    for _ in range(k):r=mul(r,a)
    return r

def compose(a,b):
    r=[0]
    for v in reversed(a):r=add(mul(r,b),[v])
    return r

def evaluate(a,x):
    r=0
    for v in reversed(a):r=r*x+v
    return r

def derivative(a):return [i*a[i] for i in range(1,len(a))] or [0]

def exact_div(a,q):
    assert all(v%q==0 for v in a),('nonexact polynomial division',q)
    return trim([v//q for v in a])

def vp(n,p):
    if n==0:raise ValueError('vp(0) is not represented as a finite integer')
    n=abs(n);e=0
    while n%p==0:n//=p;e+=1
    return e

def val(q,p):
    q=F(q)
    return vp(q.numerator,p)-vp(q.denominator,p)

def modf(q,m):
    q=F(q)
    assert gcd(q.denominator,m)==1
    return q.numerator*pow(q.denominator,-1,m)%m

def lift(a,p,root,k):
    assert k>=1 and 0<=root<p
    assert evaluate(a,root)%p==0
    der=derivative(a)
    assert evaluate(der,root)%p!=0
    r=root;mod=p;rs=[r]
    for _ in range(1,k):
        fr=evaluate(a,r)
        assert fr%mod==0
        digit=-(fr//mod)*pow(evaluate(der,r)%p,-1,p)%p
        r+=digit*mod;mod*=p
        assert evaluate(a,r)%mod==0
        rs.append(r)
    return r,mod,rs

def crt(congruences):
    r=0;M=1
    for a,m in congruences:
        assert gcd(M,m)==1
        r+=M*((a-r)*pow(M,-1,m)%m)
        M*=m;r%=M
    return r,M

# rho(g)=(n/2-1)*(R0/D0)^3+2*(R0/D0)^2+2*R0/D0.
D0=mul([-1,ALPHA],[-1,ALPHA//2])
R0=add(D0,[0,0,-2*BETA*GAMMA])
PN=add(add(mul([-1,ALPHA//2],power(R0,3)),
           scale(mul(R0,power(D0,2)),2)),
       scale(mul(power(R0,2),D0),2))
QD=power(D0,3)
PN3=exact_div(compose(PN,[19,27]),3**9)
QD3=exact_div(compose(QD,[19,27]),3**9)
PN2=compose(PN,[1,64]);QD2=compose(QD,[1,64])

def rho(g):return F(evaluate(PN,g),evaluate(QD,g))

def rho_derivative_mod(g,p):
    v=evaluate(QD,g)%p
    return ((evaluate(derivative(PN),g)*v-evaluate(PN,g)*evaluate(derivative(QD),g))*pow(v,-2,p))%p

def target_lifts(target,k):
    assert target%256==29 and target%3==0 and target%17==3
    f2=exact_div(add(PN2,scale(QD2,-target)),256)
    roots=[b for b in [0,1] if evaluate(f2,b)%2==0]
    assert len(roots)==1
    w,m2,c2=lift(f2,2,roots[0],k)
    f3=add(PN3,scale(QD3,-target))
    t,m3,c3=lift(f3,3,0,k)
    f17=add(PN,scale(QD,-target))
    g17,m17,c17=lift(f17,17,10,k)
    # g is lifted in its proper local coordinate: rho has a 3-adic pole off
    # this residue disc, so g precision and rho precision are not interchangeable.
    return [(1+64*w,64*m2),(19+27*t,27*m3),(g17,m17)],{
        'precision_k':k,'two_w_roots':c2,'three_t_roots':c3,'seventeen_g_roots':c17}

def choose_d(e):
    r,mod,_=lift([-3,1,1],17,4,e)
    correct=-(r*r+r-3)//mod*pow((2*r+1)%17,-1,17)%17
    wrong=(correct+1)%17
    d,period=crt([(157,256),(2,3),(r+wrong*mod,17*mod)])
    if d<13:d+=period
    assert d%256==157 and d%3==2 and vp(d*d+d-3,17)==e
    assert vp(d*d+2*d-2,3)==1
    return d,period

def binom_val(n,j,p):
    ans=0;q=p
    while q<=n:
        ans+=n//q-j//q-(n-j)//q
        q*=p
    return ans

def original_input(g):
    n=ALPHA*g;j=BETA*g;k=GAMMA*g
    assert 4<=j<n//2
    assert gcd(n,j)==g
    assert gcd((n-2)//2,j-1)==H
    assert (n-2*j)//(2*g*H)==DELTA and (n-2*j)%(2*g*H)==0
    assert vp(n,2)==25 and vp(j,2)==0
    assert vp(n-2,3)==3 and vp(j,3)==3
    assert (n-1)%3!=0
    N=n-1;C=F(n-2,2*H)
    assert C.denominator==1
    u=F(BETA*GAMMA,N)/C
    z=F((j-1)*(k-1),N*H*H)
    x=u*g*g;eps=H-2*x
    T=(z*eps*eps+1)/x;r=eps*T
    assert x*C-z*H*H==1 and x*T-z*eps*eps==1
    assert r==rho(g)
    y=F(H,1)/eps
    assert n==2*(r*y**3-2*y*y-2*y+1)
    G=2*r*r*y**3-8*r*y*y+(8-5*r)*y+r+10
    assert G==2*(g*eps*DELTA)**2
    ell=F(ALPHA);b=F(3*BETA)
    c=F(3*BETA*(j-1),n-1)
    d0=F(BETA*(j-1)*(j-2),(n-1)*(n-2))
    I=b*b-3*ell*c;J=2*b**3-9*ell*b*c+27*ell*ell*d0
    disc=(4*I**3-J*J)/(27*ell*ell)
    assert n*I==3*ell*(b-c) and j*I==b*(b-c)
    assert I==9*C*u and J==54*u*DELTA and disc==27*u*u*z
    assert DELTA**2+z*F(ALPHA,2)**2==u*C**3
    for p in [2,3,17]:
        assert all(v==0 or val(v,p)>=0 for v in [ell,b,c,d0,u,z,eps,T,r])
        assert min(val(v,p) for v in [ell,b,c,d0] if v)==0
    assert [modf(v,17) for v in [ell,b,c,d0]]==[2,5,8,7]
    assert val(3*z,2)==4 and modf(3*z/16,8)==1
    # Actual integer binomial-content polynomial: not confused with arbitrary
    # integer coefficients or the rational normalization above.
    fc=[comb(k,3),j*comb(k,2),comb(j,2)*k,comb(j,3)]
    content=reduce(gcd,fc)
    actual_ell=comb(n,3)//content
    assert comb(n,3)%content==0 and actual_ell%ALPHA==0
    factor=actual_ell//ALPHA
    assert all((v*factor).denominator==1 for v in [ell,b,c,d0])
    assert all(factor%p!=0 for p in [2,3,17])
    assert factor%5==0
    assert n%5==1 and j%5==2
    v5a=binom_val(n,3,5);v5b=binom_val(n,j,5)
    assert v5a>=1 and v5b>=1
    return {'n':n,'j':j,'g':g,'true_H':H,'true_delta':DELTA,
            'norms_and_j_discriminant_exact_over_Q':True,
            'true_gcd_alpha_and_isolated3_rules':True,
            'actual_content_leading_coefficient':actual_ell,
            'actual_leading_odd_factor':factor,
            'u_positive_but_less_than_one':0<u<1,
            'rho_is_not_the_integer_target_in_general':True,
            'common_prime_witness':5,'v5_binom_n_3':v5a,'v5_binom_n_j':v5b,
            'classification':'NOT_NC3; first window fails at p=5; no global integrality claim for u,z,eps,T,rho'}, r

def main():
    assert BETA==16740729 and GAMMA==16813703 and gcd(ALPHA,BETA)==1
    assert rho_derivative_mod(10,17)==5 and modf(rho(10),17)==3
    # Polynomial identities establishing the Hensel hypotheses, using integer
    # coefficient arithmetic rather than trusting a CAS factorization.
    num3=PN3;den3=QD3
    assert evaluate(den3,0)%3!=0 and evaluate(num3,0)%3==0
    d3=((evaluate(derivative(num3),0)*evaluate(den3,0)-evaluate(num3,0)*evaluate(derivative(den3),0))*pow(evaluate(den3,0),-2,3))%3
    assert d3==2
    assert modf(rho(1),256)==29
    f2=exact_div(add(PN2,scale(QD2,-29)),256)
    assert all(v%2==0 for v in f2[2:]) and f2[1]%2==1
    assert [v%2 for v in QD2]==[1]+[0]*(len(QD2)-1)
    psi17=[evaluate([-7,8,-5,2],r)%17 for r in range(17)]
    P7=[evaluate([1,-2,-2,2],r)%7 for r in range(7)]
    assert all(psi17) and all(P7)
    assert (5*5-3*2*8)%17==11
    assert (2*5**3-9*2*5*8+27*2**2*7)%17==14
    assert ((4*11**3-14**2)*pow(27*2**2,-1,17))%17==16
    recs=[]
    for exponent in [1,2,3,6]:
        d,period=choose_d(exponent)
        M=d*d+2*d-2;B=d*d+d-3
        target=d*M;kprec=exponent+3
        residues,cert=target_lifts(target,kprec)
        # Same ordinary (n,j) for all finite precision checks. H is the TRUE gcd,
        # while an explicit common prime 5 prevents mislabelling this as NC3.
        gres,modulus=crt(residues+[(pow(ALPHA//2,-1,H),H),(0,DELTA),(3,5)])
        if gres==0:gres+=modulus
        point,rr=original_input(gres)
        assert rr!=target
        errors={str(p):val(rr-target,p) for p in [2,3,17]}
        assert errors['2']>=kprec+8 and errors['3']>=kprec and errors['17']>=kprec
        # Missing block is exact locally; no invented global Q0 is assigned.
        assert point['n']%17!=0 and vp(B,17)==exponent
        cert.update({'e':exponent,'d':d,'d_progression_period':period,'M':M,'B':B,
                     'rho_target':target,'missing_B_17_exponent':exponent,
                     'rho_error_valuations':errors,'same_integer_approximation':point,
                     'crt_period':modulus})
        recs.append(cert)
    irreducible=[]
    for t in [0,1,7]:
        target=84765+91392*t
        assert [target%m for m in [256,3,17,7]]==[29,0,3,2]
        _,cert=target_lifts(target,5)
        assert -27*target*target+104*target+48<0
        irreducible.append({'rho':target,'irreducible_mod7':True,'local_lifts':cert})
    # Reject damaged local hypotheses. These tests do not amount to mathematical
    # independent review, nor do they test all possible certificate corruptions.
    rejected=[]
    for name,target in [('wrong_two_class',3),('wrong_three_class',29),('wrong_seventeen_class',285)]:
        try: target_lifts(target,3)
        except AssertionError: rejected.append(name)
        else: raise AssertionError(('bad target accepted',name))
    out={'kind':'local_obstruction_theorem_replay_NOT_GLOBAL_NC3_CERTIFICATE',
         'alpha':ALPHA,'beta':BETA,'gamma':GAMMA,'H':H,'delta':DELTA,
         'rho_numerator_coefficients_ascending':PN,'rho_denominator_coefficients_ascending':QD,
         'derivative_mod17':5,'derivative_three_coordinate_mod3':2,
         'two_target_class':{'modulus':256,'rho':29,'g_mod64':1},
         'reducible_d_class':{'modulus':256,'d':157},
         'psi_mod17_nonzero_values':psi17,'P_mod7_nonzero_values':P7,
         'reducible_examples':recs,'irreducible_examples':irreducible,
         'damaged_hypotheses_rejected':rejected,
         'infinite_quantifiers':'Proved on paper by simple-root lifting and CRT; sample counts are not closure counts.',
         'global_frontier':'No new NC3 exclusion, no absolute height, no complete index, no Lean.'}
    (BASE/'outputs'/'local_boundary.json').write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print('LOCAL_BOUNDARY: p=2,3,17 simple-root lifting verified; 4 labelled non-NC integer approximations; 3 irreducible targets')
    print('Every ordinary approximation has the explicit common prime 5. None is a B699 counterexample.')

if __name__=='__main__':main()
