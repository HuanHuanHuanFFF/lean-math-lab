#!/usr/bin/env python3
"""Deterministic exact checks for a paper-proved, uniformly bounded classification.
No unrestricted exponent search or old proof-chain replay is performed.
"""
from __future__ import annotations
import argparse
from fractions import Fraction as F
from itertools import product
from math import gcd, lcm, isqrt
from pathlib import Path
import json
from exact import Poly, var, vp, vchoose, digits3, prime_trial
ROOT=Path(__file__).resolve().parents[1]
BLOCK=(4,5,7,8,10,11,19,20)
TRIPLES=sorted(set((a,b,c) for a,b,c in product((1,2)+BLOCK,repeat=3)
                   if sum(x in BLOCK for x in (a,b,c))==1))
assert len(TRIPLES)==96

def p3(e:int)->F:
    return F(3**e) if e>=0 else F(1,3**(-e))

def log3(n:int)->int:
    if n<1:raise ValueError('Positive integer required')
    e=0;p=1
    while p*3<=n:p*=3;e+=1
    return e

def cap(d:int,c:int)->int:
    return max(2*d*c+c*c+d+c+1, 2*d*d*c*c*(c+1))

def recover(alpha:int,x:int):
    if not 0<x<alpha or gcd(alpha,x)!=1:return None
    quotient,t=divmod(x*x,alpha)
    if not quotient or not t or x<=quotient:return None
    g,rem=divmod(x-quotient,t)
    if rem or g<10:return None
    assert x*(alpha-x)==t*(g*alpha-1)
    return dict(x=x,alpha=alpha,a=log3(alpha),g=g,t=t,n=g*alpha,j=g*min(x,alpha-x))

def bounded_binomial_endpoint():
    rows={};stats={'binomial_types':0,'binomial_values':0,'alpha_tests':0,
                   'max_variable_exponent':0}
    for mode in ('low_h','low_gap'):
        for A,B,C in TRIPLES:
            for fixed in range(1,8):
                if mode=='low_h':d,c,emin=A,B*3**fixed+C,fixed+1
                else:d,c,emin=A*3**fixed+B,C,1
                assert d%3 and c%3
                emax=log3(cap(d,c));stats['binomial_types']+=1
                stats['max_variable_exponent']=max(emax,stats['max_variable_exponent'])
                for e in range(emin,emax+1):
                    x=d*3**e+c;stats['binomial_values']+=1
                    for a in range(max(2,log3(x)+1),log3(x*x)+1):
                        stats['alpha_tests']+=1
                        row=recover(3**a,x)
                        if row:rows[(row['x'],row['alpha'],row['g'])]=row
    out=sorted(rows.values(),key=lambda x:(x['alpha'],x['x']))
    assert [(r['x'],r['alpha'],r['g'],r['t']) for r in out]==[(175,729,19,7),(175,2187,23,7)]
    assert stats=={'binomial_types':1344,'binomial_values':17504,'alpha_tests':234088,
                   'max_variable_exponent':31}
    return {'proof_bound':'PROOFS sections 3–4, not a discovery scan',
            'stats':stats,'recoveries':out}

def polynomial_checks():
    H,K,X,Y,Z,g,D,C,q,r,n,j=(var(x) for x in ('H','K','X','Y','Z','g','D','C','q','r','n','j'))
    done=[]
    def ident(name,P):
        assert not P.d,(name,P.d)
        assert (P+1).d,'Damaged identity must be rejected'
        done.append(name)
    def positive(name,P,v,base):
        Q=P.subst(v,var(v)+base)
        assert Q.d and all(c>0 for c in Q.d.values()),(name,Q.d)
        done.append(name)
    # Binomial residue recovery and the nonzero determinant.
    Ft=D*(q-D)*H+q*C-2*D*C+r
    ident('binomial_integrality_identity',q*(D*H+C)-(D*D*H+2*D*C-r)-Ft)
    determinant=r*(q*C-2*D*C+r)-C*C*D*(q-D)
    ident('binomial_determinant_factorization',determinant-(r-D*C)*(r+(q-D)*C))
    ident('linear_divisor_remainder',
          D*D*(q*H*H+r*H+C)-((D*q*H+D*r-Y*q)*(D*H+Y)+D*D*C-D*Y*r+Y*Y*q))
    # The two genuinely zero remainders are dealt with symbolically.
    ident('zero_remainder_noninteger_family',2*H*H+2*H-(H/24)*3*(16*H+16))
    ident('zero_remainder_actual_family',2*H*H-2*H-12-((H-3)/48)*3*(32*H+64))
    x=2*H*H+2*H+8;alpha=3*H*H;t=32*(H+2);gg=(H-3)/48
    quotient=(4*H*H+8*H+36)/3
    ident('actual_family_square',x*x-alpha*quotient-t)
    ident('actual_family_g',x-quotient-gg*t)
    ident('actual_family_first_row',x*(alpha-x)-t*(gg*alpha-1))
    # Larger-side dispersed quadruples: all eight additional coefficient cases.
    for v in (1,2):
        x=2*K*K+v*K+2*H+2
        alpha=3*K*K;t=4*(H+1)*(v*K+H+1)
        quotient=(4*K*K+4*v*K+8*H+v*v+8)/3
        P=2*K*K-v*K-2*H-2-v*v
        ident(f'upper_l2k_v{v}_square',x*x-alpha*quotient-t)
        ident(f'upper_l2k_v{v}_P',3*(x-quotient)-P)
    P=2*K*K-K-2*H-3
    ident('upper_l2k_v1_divisor',P-(K+H+1)*(2*K-2*H-3)-H*(2*H+3))
    f=K*K-K-H-3
    ident('upper_l2k_v2_divisor',4*f-(2*K+H+1)*(2*K-H-3)-(H*H-9))
    positive('upper_l2k_v2_quotient_bound',(H-18)*(55*H+1)-(2*H*H-18),'H',27)
    for b in (1,2):
        x=2*H*H*X+H*X+b*H+b;alpha=3*H*H*X
        t=b*b*(H+1)**2+2*b*H*X
        quotient=(4*H*H*X+4*H*X+4*b*H+X+6*b)/3
        P=X*(2*H+1)*(H-1)-b*(H+3)
        ident(f'upper_lhk_b{b}_square',x*x-alpha*quotient-t)
        ident(f'upper_lhk_b{b}_P',3*(x-quotient)-P)
        ident(f'upper_lhk_b{b}_d_ge_h',P-((H-3)/b)*t-
              (X*(5*H-1)-b*H*(H*H-H-4)))
        for m in ((1,2) if b==1 else (1,)):
            Q=X*Z*Z*((2-b*m)*X+3*b)+Z*(-2*m*X*X+(5-2*b*m)*X+5*b)-(1+b*m)
            ident(f'upper_lhk_b{b}_m{m}_d_lt_h',
                  (P-((m*X-3)/b)*t).subst('H',X*Z)-X*Q)
    positive('upper_lhk_last_b1',2*X*X-5*X-2,'X',27)
    positive('upper_lhk_last_b2',2*X*X-19*X-9,'X',27)
    for v,w in product((1,2),repeat=2):
        x=2*H*H+v*H*X+w*H+2;alpha=3*H*H
        t=4*(H*(v*X+w)+1)
        quotient=(4*H*H+4*v*H*X+4*w*H+v*v*X*X+2*v*w*X+w*w+8)/3
        P=2*H*H-H*(v*X+w)-(v*X+w)**2-2
        ident(f'upper_l2h_v{v}_w{w}_square',x*x-alpha*quotient-t)
        ident(f'upper_l2h_v{v}_w{w}_P',3*(x-quotient)-P)
    P=2*H*H-H*Y-Y*Y-2
    ident('upper_l2h_resultant',Y*Y*P-(H*Y+1)*(2*H*Y-Y*Y-2)+(Y*Y+2)*(Y*Y-1))
    for v in (1,2):
        R=v*(v*X+2)*(v*v*X*X+2*v*X+3)
        positive(f'upper_l2h_w1_v{v}_q_lt_X',27*X*X*(v*X+1)+X-R,'X',27)
        ident(f'upper_l2h_w1_v{v}_q6v',
              R-6*v*(H*(v*X+1)+1)-v*(v*X*(v*v*X*X+4*v*X+7)-6*H*(v*X+1)))
    positive('upper_l2h_w2_gap_impossible',2*X**3-6*X*X-14*X-12,'X',27)
    positive('weak_family_outside_low_mass',(H-3)**3-3*48**3*H*H,'H',3**14)
    return done

def carry_and_templates():
    # Coefficient lemma used to bound the unbounded collision offset.
    coeff_checks=0
    for A,C in sorted(set((A,C) for A,B,C in TRIPLES)):
        for s in range(1,5):
            q=3**s
            if A<q<=2*A*C:
                rr=2*A*C%q
                assert rr>0 and 10*rr>=A+1
                coeff_checks+=1
    assert F(400+80,6561)+F(400,6561**2)<1
    assert F(400,729)+F(81,6561)<1
    assert F(3**8,27)>81
    rows=[];bounded_hits=[];endpoint_checks=0;maxcap=0;zeros=[];quads=[]
    H=var('H')
    for A,B,C in TRIPLES:
        for delta in range(-3,6):
            for s in range(1,9):
                q=3**s
                if q<=A:continue
                W2=F(B*B)+2*A*C*p3(delta);q0=p3(delta+s)
                if q0>W2:continue
                m0=int(W2//q0);rem=W2-m0*q0;a2=A*p3(delta)
                if 10*rem>=a2:continue
                num=[F(C-m0),F(B)-2*a2*B/q0,a2-a2*a2/q0]
                den=[F(C*C),F(2*B*C),rem]
                scale=lcm(*(u.denominator for u in num))
                ns=[int(scale*u) for u in num]
                row=dict(A=A,B=B,C=C,delta=delta,s=s,scale=scale,
                         numerator=ns,denominator=[str(u) for u in den])
                P=sum((Poly(u)*H**i for i,u in enumerate(num)),Poly())
                T=sum((Poly(u)*H**i for i,u in enumerate(den)),Poly())
                if rem:
                    key=(A,B,C,delta,s);quads.append(key)
                    if A==2:
                        assert all(c>=0 for c in (6*T-P).d.values())
                        assert (6*T-P).d
                        row['exit']='g<6'
                    elif A==4:
                        assert all(c>0 for c in ((F(20,3))*T-P).d.values())
                        row['exit']='g<20/3'
                    else:
                        lo,hi=(15,16) if s==3 else (45,46)
                        for z in (P-lo*T,hi*T-P):
                            z=z.subst('H',H+3**8)
                            assert z.d and all(c>0 for c in z.d.values())
                        row['exit']=f'{lo}<g<{hi}'
                else:
                    d0,d1=int(den[0]),int(den[1])
                    K=d1*d1*ns[0]-d1*d0*ns[1]+d0*d0*ns[2]
                    row['constant_remainder']=K
                    if not K:
                        zeros.append((A,B,C,delta,s));row['exit']='explicit zero-remainder family'
                    else:
                        hcap=(abs(K)-d0)//d1;row['H_cap']=hcap;maxcap=max(maxcap,hcap)
                        h=8;HH=3**h
                        while HH<=hcap:
                            k=2*h+delta
                            assert k-h>=8
                            xx=A*3**k+B*HH+C;aa=3**(k+s)
                            z=recover(aa,xx);endpoint_checks+=1
                            if z:bounded_hits.append(z)
                            h+=1;HH*=3
                        row['exit']='completed proof-bounded endpoint'
                rows.append(row)
    assert len(rows)==57 and len(quads)==6
    assert zeros==[(1,2,4,0,1),(2,2,8,0,1)]
    assert maxcap==662750 and endpoint_checks==22 and not bounded_hits
    return dict(coefficient_checks=coeff_checks,template_box=96*9*8,
                retained_templates=len(rows),linear_templates=51,quadratic_templates=6,
                zero_remainders=[list(z) for z in zeros],maximum_H_cap=maxcap,large_endpoint_checks=endpoint_checks,
                bounded_recoveries=bounded_hits,rows=rows)

def upper_disperse_tables():
    out=[]
    for mode in ('2k','hk','2h'):
        rows=[]
        for u,v,w,b in product((1,2),repeat=4):
            S={'2k':v*v+2*u*b,'hk':2*v*w+2*u*b,'2h':w*w+2*u*b}[mode]
            if u!=2 or S%3:continue # larger side forces alpha=3*3^l and u=2
            # The parity of the actual low remainder, not an arbitrary new condition.
            even=(w==b) if mode in ('2k','hk') else (b==2)
            if even:rows.append([u,v,w,b])
        out.append(dict(mode=mode,rows=rows))
    assert [len(x['rows']) for x in out]==[2,2,4]
    # At H=X^2 the last branch has H≡1 mod8.
    for X in (1,3):
        P=(2-X-2-(X+2)**2-2)%8
        assert P!=0
    assert {x*x%17 for x in range(17)}=={0,1,2,4,8,9,13,15,16}
    assert pow(3,16,17)==1 and pow(3,9,17)==14 and 10 not in {x*x%17 for x in range(17)}
    assert pow(3,4,16)==1 and all(pow(3,i,16)!=1 for i in (1,2,3))
    assert 80*80%3200==0 and (135*38)%200==130
    assert [r for r in range(40) if 135*r%200==130]==[38]
    return out

def examples():
    # New low-gap four-digit example, preserving the actual W=10 square.
    alpha=3**10;beta=40;D=59009;u=1354541
    N=D*u*u;n=N+1;g=n//alpha;j=g*beta;k=n-j
    assert n==108268610952065130 and j==73341537334800
    assert n%alpha==0 and gcd(n,j)==g and n%9000==5130 and vp(n-5,5)==3
    assert len(digits3(beta))==4 and len(digits3(k//g))>4
    W=N*j*k;Y=isqrt(W//10);assert W==10*Y*Y
    deficit=N//gcd(N,j*(j-1));assert deficit==317**2*4273**2
    assert prime_trial(317) and prime_trial(4273)
    valuations={str(p):[vchoose(n,i,p) for i in (4,5,6,j)] for p in (317,4273)}
    assert all(all(v>0 for v in a) for a in valuations.values())
    # Exact infinite example uses u=u0+step*t, all t≥0; no exponent sampling is proof.
    step=1250*alpha
    assert step%alpha==step%625==step%2==0
    assert D%8==1 and D*u*u%625==129 and D*u*u%alpha==alpha-1
    assert all(D%d for d in range(2,isqrt(D)+1))
    # A stronger weak family retains the exact current tail, but fails W10 and low mass.
    rr=158;H=3**(4*rr+1);gg=(H-3)//48;aa=3*H*H
    xx=2*H*H+2*H+8;bb=aa-xx;nn=gg*aa;jj=gg*bb;tt=32*(H+2)
    assert gcd(nn,jj)==gg and nn%9000==5130 and vp(nn-5,5)==3
    assert bb*xx==tt*(nn-1) and len(digits3(xx))==4 and gg**4>nn
    assert H%17==14 and (H+2)*pow(5,-1,17)%17==10
    assert nn%17==3 and jj%17==14 and prime_trial(17)
    assert pow(81,1000,80000)==1
    # q1's source is real; a higher level can still carry in the weak model.
    witnesses=[]
    for p in (7,11,13,17,19,23,29,31,37,41):
        if prime_trial(p) and vchoose(nn,6,p)>0 and vchoose(nn,jj,p)>0:
            witnesses.append(dict(p=p,source=vchoose(nn,6,p),target=vchoose(nn,jj,p)))
    assert witnesses
    return dict(new_consumer_seed=dict(n=n,j=j,g=g,alpha=alpha,beta=beta,
                     gamma=k//g,Y=Y,E=3,D1=deficit,valuations=valuations,
                     infinite_family=dict(D=D,u0=u,step=step,parameter='integer t>=0')),
                exact_weak_family=dict(r0=rr,r_step=1000,formula='PROOFS section 8',
                     seed_decimal_digits=len(str(nn)),n_mod9000=nn%9000,E=3,
                     first_row=True,actual_gcd=True,pure_three_alpha=True,
                     W10=False,low_mass=False,uniform_original_witness=17,seed_witnesses=witnesses))

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--write',action='store_true');args=ap.parse_args()
    result=dict(status='PASS',evidence_level='author paper + same-session exact replay; not Lean or independent review',
                algebra=polynomial_checks(),binomial_endpoint=bounded_binomial_endpoint(),
                large_templates=carry_and_templates(),upper_disperse=upper_disperse_tables(),examples=examples())
    text=json.dumps(result,ensure_ascii=False,indent=2)+'\n'
    path=ROOT/'evidence/replay.json'
    if args.write:path.write_text(text,encoding='utf-8')
    else:
        assert path.exists(),'Run --write only when preparing a new evidence version'
        assert json.loads(path.read_text())==result,'Evidence mismatch'
    print(json.dumps({'status':result['status'],'algebra_checks':len(result['algebra']),
          'small_endpoint':result['binomial_endpoint']['stats'],'large_templates':57,
          'large_endpoint':22,'example_valuations':result['examples']['new_consumer_seed']['valuations']},ensure_ascii=False))
if __name__=='__main__':main()
