#!/usr/bin/env python3
"""Deterministic exact replay. No search over n or unbounded exponents is run.
Identities plus the paper proof cover the unbounded parameters; seeds do not.
"""
from __future__ import annotations
from fractions import Fraction as F
from hashlib import sha256
from math import gcd
from pathlib import Path
import json
from exact import Poly,var,NAMES,valuation,prime_trial,vchoose,weight3
from consumer import consume
ROOT=Path(__file__).resolve().parents[1]

def run() -> dict:
    checks=[]
    def eq(label: str,left: Poly,right: Poly):
        assert not (left-right).d,label
        assert (left-right-1).d,'Corruption not rejected'
        checks.append(dict(name=label,kind='exact polynomial identity',pass_check=True))
    def pos(label: str,p: Poly):
        assert p.d and all(c>0 for c in p.d.values()),label
        checks.append(dict(name=label,kind='all coefficients strictly positive',terms=len(p.d)))
    n,U,X,V,D,Q,g,N,A,y=(var(k) for k in ('n','U','X','V','D','Q','g','N','A','y'))
    km=D*(g-1)*(Q+D*(g-1))
    kp=D*(g+1)*(Q-D*(g+1))
    eq('minus exact N divisibility',D*(N-g+1)*((Q-D)*N+Q+D*(g-1))+km,
       N*(D*(Q-D)*N+D*(Q+(2*D-Q)*(g-1))))
    eq('plus exact N divisibility',D*(N+g+1)*((Q-D)*N+Q-D*(g+1))-kp,
       N*(D*(Q-D)*N+D*(Q+(Q-2*D)*(g+1))))
    eq('minus positive upper gap',Q**2*g*(g-1)-km,
       (g-1)*(Q-D)*((Q+D)*g-D))
    P=4*(n-3)*(n-4)-9*n*U+27*U**2
    H=16*(n-3)*(n-4)-36*(n-3)*U+27*U**2
    T=8*(n-5)*(n-4)*(n-3)-(U-1)*H
    eq('P complete square',P,27*(U-n/6)**2+13*n**2/4-28*n+48)
    eq('T positive decomposition',T,(n-3-U)*P+(n-3)*(n-4)*(4*n-12-3*U))
    eq('P upper bound remainder',4*(n-3)*(n-4)-P,9*U*(n-3*U))
    delta=n/3-U
    V0=27*delta**2+(18*n-81)*delta+7*n**2-49*n+84
    eq('T upper bound remainder',8*n**3-T,U*V0+80*n**2-264*n+288)
    eq('one central square identity',9*((n-1)*(U-2)+2)+(n-1)*(2*n+4-9*U),2*(n-4)**2)
    eq('P central identity',3*P.subst('n',X+4).subst('U',(2*X+12-V)/9),10*X**2-(X+12)*V+V**2)
    eq('T central identity',27*T.subst('n',X+4).subst('U',(2*X+12-V)/9),
       V**3+(6*X-15)*V**2+(12*X**2-72*X+36)*V+160*X**3+60*X**2)
    eq('P source3',P.subst('n',3),27*U*(U-1))
    eq('P source4 endpoint',P.subst('n',4).subst('U',0),Poly())
    for r,b in ((3,1),(4,0),(4,1)):
        eq(f'T source {r},{b}',T.subst('n',r).subst('U',b),Poly())
    local=T.subst('n',3+X).subst('U',V)
    assert local.d and min(sum(m) for m in local.d)>=2
    checks.append(dict(name='T at E3 has ordinary order at least two',kind='full Taylor coefficients',min_order=min(sum(m) for m in local.d)))
    pos('P constant positive n>=14',(13*n**2/4-28*n+48).subst('n',14+X))
    pos('V0 positive n>=14 delta>=0', (27*y**2+(18*n-81)*y+7*n**2-49*n+84).subst('n',14+X))
    pos('T upper constant positive',(80*n**2-264*n+288).subst('n',14+X))
    eq('plus cubic threshold identity',2*A**3-(A+2)*(A+1)**2,
       (A-6)**3+14*(A-6)**2+55*(A-6)+40)
    pos('plus cubic threshold A>=6',(2*A**3-(A+2)*(A+1)**2).subst('A',6+X))
    eq('zero branch growth contradiction',g**4-3*g**2-6*g+6,
       (g-3)**4+12*(g-3)**3+51*(g-3)**2+84*(g-3)+42)
    pos('zero branch growth g>=3',(g**4-3*g**2-6*g+6).subst('g',3+X))
    # Full finite ring identities, not a scan of original inputs.
    def cores(nn: int,uu: int):
        pp=4*(nn-3)*(nn-4)-9*nn*uu+27*uu*uu
        hh=16*(nn-3)*(nn-4)-36*(nn-3)*uu+27*uu*uu
        tt=8*(nn-5)*(nn-4)*(nn-3)-(uu-1)*hh
        return pp,tt
    acount=bcount=0
    for nn in (0,8):
        for uu in range(0,16,4):
            pp,tt=cores(nn,uu);assert pp%16==tt%16==0;acount+=1
    for nn in (18,90):
        for uu in range(0,144,8):
            pp,tt=cores(nn,uu);assert pp%24==tt%48==0;bcount+=1
    assert F(1)-F(41,1280)>F(8,9)
    assert F(1)-F(41,1530)>F(243,250)
    assert F(9,256)<F(1,8) and F(125,1152)<F(1,8)
    assert F(1280,216)>5
    # Check every exponent in the positive exact factorization (1.2).
    factors=[{'g':4,'E3':2,'E4':2,'zeta':2}, {'I3':3,'A4':3,'nu':3},
             {'E3':1,'I3':1,'E4':1,'C':2,'LP':1},
             {'E3':2,'I3':1,'E4':1,'A4':1,'C':2,'L60':1}]
    tally={}
    for f in factors:
        for key,e in f.items():tally[key]=tally.get(key,0)+e
    assert tally=={'g':4,'E3':5,'E4':4,'zeta':2,'I3':5,'A4':4,'nu':3,'C':4,'LP':1,'L60':1}
    # Small positive family seed. Infinite statements are proved in PROOFS 7.1.
    L=779400;h=3;m=3;B=3**h;al=B**m;digit=3**(h-1)+1
    be=digit*(al-1)//(B-1);ga=al-be;G=110;nn=G*al;jj=G*be
    assert gcd(nn,jj)==G and 2*jj<=nn and jj%2==0
    assert weight3(be)==2*m and weight3(ga)==h*m
    assert nn%9000==5130 and valuation(nn-5,5)==3
    assert prime_trial(17321) and (nn-5)//125%17321==0
    for mod in (100,125,37,17321):assert pow(3,L,mod)==1
    assert L%2==0 and nn%37==1 and jj%37==15
    assert 3**21>110**3
    ordinary=consume(nn,jj,1000)
    assert 'beta:DEN-' in ordinary['triggers']
    assert any(w['prime']==37 for w in ordinary['prime_witnesses'])
    # An actual dense alternating seed, with no enormous integers printed.
    hh=23;BB=3**hh;AA=BB**3;xx=BB*BB-BB+1
    nalt=110*AA;jalt=110*xx
    assert nalt%9000==5130 and gcd(nalt,jalt)==110 and 110**4<nalt
    assert weight3(xx)>4 and weight3(AA-xx)>4
    alternate=consume(nalt,jalt,10000)
    assert 'beta:DEN+' in alternate['triggers']
    # Explicit zero-branch infinite model: modular certificates and identities.
    GG=1590;qq=1591;a0=1503495;period=531234900
    assert qq==37*43 and prime_trial(37) and prime_trial(43)
    assert pow(3,a0,qq*qq)==qq*qq-1 and pow(3,period,qq*qq)==1
    assert GG*pow(3,a0,9000)%9000==5130
    assert (GG*pow(3,a0,625)-5)%625==125
    assert period%100==0 and pow(3,period,125)==1 and period%20==0
    assert a0%2==1 and period%2==0 and 3**21>GG**3
    assert prime_trial(107) and pow(3,period,107)==1
    nm=GG*pow(3,a0,107)%107
    jm=GG*(pow(3,a0,107)+1)*pow(qq,-1,107)%107
    assert (nm,jm)==(3,62)
    # Exact finite counterexample to the attempted unrestricted two-copy size claim.
    b2=179;al2=b2*b2;x2=121*(b2+1);g2=5;be2=al2-x2
    n2=g2*al2;j2=g2*be2
    assert gcd(n2,j2)==g2 and be2*x2==1395*(n2-1) and g2**4<n2
    assert n2%1800==5 and vchoose(n2,6,7)==1 and vchoose(n2,j2,7)==2
    # Global polynomial identities in the free parameter t of ZERO+.
    tt=var('t');q=var('Q');gg=q-1
    alp=q*q*tt-1;bet=q*tt;gam=gg*q*tt-1
    eq('zero family same alpha',bet+gam,alp)
    eq('zero family true first row',bet*gam,tt*(gg*alp-1))
    eq('zero family exact zero relation',q*bet,alp+1)
    result=dict(status='PASS',polynomial_checks=len(checks),checks=checks,
                modular_divisibility_cases=dict(A_mod16=acount,B_mod144=bcount),
                factorization_exponents=tally,ordinary_seed=ordinary,
                alternating_seed=dict(n=str(nalt),j=str(jalt),weight_beta=weight3(xx),weight_gamma=weight3(AA-xx),result=alternate),
                ordinary_family=dict(L=L,parameters='h=3+L*u,m=3+L*v,u+v>=1',E=3,outside_support_prime=17321,fixed_witness=37),
                zero_model=dict(g=GG,q=qq,a0=a0,period=period,E=3,v2_t=2,fixed_witness=107,
                                expanded_alpha=False,omits=['W10','F3','other full source assumptions']),
                infinite_proof='PROOFS.md; finite seeds are not a finite terminal set for B699')
    return result

def hashes():
    manifest=ROOT/'SHA256SUMS';count=0
    for line in manifest.read_text().splitlines():
        digest,name=line.split('  ',1)
        assert sha256((ROOT/name).read_bytes()).hexdigest()==digest,name
        count+=1
    return count

if __name__=='__main__':
    result=run()
    frozen=ROOT/'evidence/replay.json'
    if '--write' in __import__('sys').argv:
        frozen.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
        print(json.dumps(dict(status='PASS',polynomial_checks=result['polynomial_checks'],wrote=str(frozen))))
    else:
        assert result==json.loads(frozen.read_text()),'Deterministic replay differs'
        print(json.dumps(dict(status='PASS',polynomial_checks=result['polynomial_checks'],verified_files=hashes()),ensure_ascii=False))
