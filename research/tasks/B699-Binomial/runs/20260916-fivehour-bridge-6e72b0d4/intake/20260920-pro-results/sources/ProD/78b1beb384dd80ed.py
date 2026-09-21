#!/usr/bin/env python3
"""Exact, standard-library replay. The unbounded carry argument is in PROOFS.md.
No original-(n,j) range scan is used to prove either consumer.
"""
from __future__ import annotations
import argparse
from fractions import Fraction
from hashlib import sha256
import json
from math import gcd, isqrt
from pathlib import Path
from typing import Any

NAMES = ('H','K','X','B','g','alpha','beta','t')
ZERO_MON = (0,) * len(NAMES)

class Poly:
    def __init__(self, terms: Any = 0):
        if isinstance(terms, Poly): self.d = dict(terms.d)
        elif isinstance(terms, dict): self.d = {m: Fraction(c) for m,c in terms.items() if c}
        else: self.d = {ZERO_MON: Fraction(terms)} if terms else {}
    def __add__(self, other: Any) -> 'Poly':
        d=dict(self.d)
        for m,c in Poly(other).d.items(): d[m]=d.get(m,0)+c
        return Poly(d)
    __radd__=__add__
    def __neg__(self) -> 'Poly': return Poly({m:-c for m,c in self.d.items()})
    def __sub__(self, other: Any) -> 'Poly': return self+-Poly(other)
    def __rsub__(self, other: Any) -> 'Poly': return Poly(other)+-self
    def __mul__(self, other: Any) -> 'Poly':
        d={}
        for m,c in self.d.items():
            for n,b in Poly(other).d.items():
                q=tuple(x+y for x,y in zip(m,n)); d[q]=d.get(q,0)+c*b
        return Poly(d)
    __rmul__=__mul__
    def __truediv__(self, scalar: int) -> 'Poly':
        if not scalar: raise ZeroDivisionError
        return self*Fraction(1,scalar)
    def __pow__(self, exp: int) -> 'Poly':
        if exp<0: raise ValueError('Nonnegative polynomial exponent required')
        ans=Poly(1)
        for _ in range(exp): ans=ans*self
        return ans
    def subst(self, name: str, value: Any) -> 'Poly':
        pos=NAMES.index(name); out=Poly()
        for m,c in self.d.items():
            n=list(m); n[pos]=0
            out += Poly({tuple(n):c})*(Poly(value)**m[pos])
        return out

def var(name: str) -> Poly:
    m=list(ZERO_MON);m[NAMES.index(name)]=1;return Poly({tuple(m):1})

def vp(x: int,p: int) -> int:
    if x==0: raise ValueError('Valuation at zero is not a finite integer')
    x=abs(x); e=0
    while x%p==0:x//=p;e+=1
    return e

def vchoose(n: int,j: int,p: int) -> int:
    if not 0<=j<=n or p<2: raise ValueError('Bad valuation arguments')
    q=p; out=0
    while q<=n:out+=n//q-j//q-(n-j)//q;q*=p
    return out

def prime_trial(p: int) -> bool:
    return p>=2 and all(p%d for d in range(2,isqrt(p)+1))

def digits3(x: int) -> list[tuple[int,int]]:
    if x<1: raise ValueError('Positive integer required')
    out=[];i=0
    while x:
        x,r=divmod(x,3)
        if r:out.append((i,r))
        i+=1
    return out

def recover(alpha: int,beta: int, *, half: bool=True) -> dict[str,int] | None:
    if not (0<beta<alpha) or (half and 2*beta>=alpha) or gcd(alpha,beta)!=1:return None
    H,t=divmod(beta*beta,alpha)
    if H<=0 or t<=0 or beta<=H or (beta-H)%t:return None
    g=(beta-H)//t
    if g<1:return None
    n=g*alpha;j=g*beta
    if j<2 or gcd(n,j)!=g:return None
    assert beta*(alpha-beta)==t*(g*alpha-1)
    return dict(alpha=alpha,beta=beta,H=H,t=t,g=g,n=n,j=j)


def algebra() -> list[str]:
    H,K,X,B,g,alpha,beta,t=(var(n) for n in NAMES)
    done=[]
    def ident(name: str,p: Poly) -> None:
        assert not p.d, (name,p.d)
        # The same identity with a damaged constant must be rejected.
        assert (p+1).d
        done.append(name)
    ident('first_row_exact_recovery',beta*(alpha-beta)-t*(g*alpha-1)-
          (alpha*(beta-g*t)-beta*beta+t))
    for name,b,aa,tt,qq in (
        ('S3_111',B*B+B+1,3*B*B,2*B+1,(B*B+2*B+3)/3),
        ('S3_121',B*B+2*B+1,3*B*B,4*B+1,(B*B+4*B+6)/3),
        ('S3_212',2*B*B+B+2,9*B*B,4*B+4,(4*B*B+4*B+9)/9)):
        ident(name+'_square',b*b-aa*qq-tt)
    ident('S3_111_g',(B*B+B+1)-(B*B+2*B+3)/3-(B/3)*(2*B+1))
    b=2*B*B+B+2;tt=4*(B+1);qq=(4*B*B+4*B+9)/3
    ident('S3_upper_212_square',b*b-3*B*B*qq-tt)
    ident('S3_upper_212_g',12*(b-qq)-(2*B-3)*tt)
    b=2*B*B+2*B+2;tt=4*(2*B+1);qq=(4*B*B+8*B+12)/3
    ident('S3_upper_222_square',b*b-3*B*B*qq-tt)
    ident('S3_upper_222_g',6*(2*B+1)*(b-qq)-(B*B-B-3)*tt)
    ident('S3_upper_222_remainder',4*(B*B-B-3)-((2*B+1)**2-4*(2*B+1)-9))
    ident('S3_121_remainder',8*(2*B*B+2*B-3)-((4*B+1)**2+2*(4*B+1)-27))
    ident('S3_212_remainder',14*B*B+5*B+9-(B+1)*(14*B-9)-18)
    for v in (1,2):
        b=K*K+v*K+B;tt=B*(2*v*K+B)
        qq=(K*K+2*v*K+v*v+2*B)/3
        P=2*K*K+v*K+B-v*v
        ident('S4_l2k_u1_v'+str(v)+'_square',b*b-3*K*K*qq-tt)
        ident('S4_l2k_u1_v'+str(v)+'_g',3*(b-qq)-P)
    D=2*K+B;P=2*K*K+K+B-1
    ident('S4_l2k_v1_divisor',2*P-D*D-(1-2*B)*D-(B+2)*(B-1))
    D=4*K+B;P=2*K*K+2*K+B-4
    ident('S4_l2k_v2_divisor',8*P-D*D-(4-2*B)*D-(B+8)*(B-4))
    b=2*K*K+K+B;tt=B*(2*K+B);qq=(4*K*K+4*K+1+4*B)/9
    P=14*K*K+5*K+5*B-1
    ident('S4_l2k_u2_square',b*b-9*K*K*qq-tt)
    ident('S4_l2k_u2_g',9*(b-qq)-P)
    R=14*H*H+33*H+18
    ident('S4_l2k_u2_divisor',P.subst('B',2*(H+1))-R-(K+H+1)*(14*K-14*H-9))
    ident('S4_l2k_u2_q18',R-18*(H*(X+1)+1)-H*(14*H+15-18*X))
    ident('S4_l2k_u2_bound',H*(28*H+1)-R-(14*H*H-32*H-18))
    ident('S4_l2k_v2_bound',(13*H+1)*(H-27)-(H+9)*(H-3)-4*H*(3*H-89))
    for b0 in (1,2):
        b=H*H*X+2*H*X+b0*H+b0
        aa=3*H*H*X;tt=b0*b0*(H+1)**2+4*b0*H*X
        qq=(H*H*X+4*H*X+2*b0*H+6*b0+4*X)/3
        P=2*X*(H+2)*(H-1)+b0*(H-3)
        ident('S4_lhk_b'+str(b0)+'_square',b*b-aa*qq-tt)
        ident('S4_lhk_b'+str(b0)+'_g',3*(b-qq)-P)
    for v in (1,2):
        b=2*H*H+v*H*X+H+2;aa=9*H*H
        tt=4*(H*(v*X+1)+1)
        qq=(4*H*H+4*v*H*X+4*H+v*v*X*X+2*v*X+9)/9
        P=14*H*H+5*v*H*X+5*H+9-v*v*X*X-2*v*X
        ident('S4_l2h_v'+str(v)+'_square',b*b-aa*qq-tt)
        ident('S4_l2h_v'+str(v)+'_g',9*(b-qq)-P)
    # Bounds become polynomials with strictly positive coefficients above their threshold.
    for name,p,base in (
        ('H_bound_at27',14*H*H-32*H-18,27),
        ('quotient_bound_at81',3*H-89,81)):
        q=p.subst('H',H+base)
        assert all(c>0 for c in q.d.values());done.append(name)
    return done


def finite_boundaries() -> dict[str,Any]:
    # PROOFS: these are the only unresolved low-position cases in the S3 proof.
    # beta<=62 and H>0 imply alpha<=beta^2<3^8, hence a<=7.
    cases=[]; count=0
    for k in (2,3):
        for u in (1,2):
            for v in (1,2):
                for w in (1,2):
                    beta=u*3**k+3*v+w
                    for a in range(2,8):
                        count+=1;r=recover(3**a,beta,half=False)
                        if r:cases.append([a,k,u,v,w,r['beta'],r['g'],r['t']])
    expected=sorted([[3,2,1,1,1,13,1,7],[3,2,1,1,2,14,1,7],[3,2,2,2,2,26,1,1], [4,2,1,2,1,16,1,13],
                     [4,3,1,2,2,35,2,10], [5,3,1,2,2,35,3,10]])
    assert sorted(cases)==expected
    assert all(r[6]<10 for r in cases)
    two=[]
    for beta in (4,5,7,8):
        for a in range(2,4):
            r=recover(3**a,beta,half=False)
            if r:two.append(r)
    assert len(two)==1 and two[0]['alpha']==9 and two[0]['beta']==8 and two[0]['g']==1
    assert 3**7<=62**2<3**8 and 3**3<=8**2<3**4
    return dict(three_digit_boundary_tests=count,positive_recoveries=sorted(cases),
                two_digit_positive_recoveries=two,kind='proof-bounded coefficient endpoint, not n scan')


def carry_cases() -> dict[str,Any]:
    square=[]
    for u in (1,2):
        for d in (1,2):
            for b in (1,2):
                S=d*d+2*u*b
                for s in (1,2):
                    if s>vp(S,3) or (u==2 and s<2):continue
                    square.append([u,d,b,s])
    assert square==[[1,1,1,1],[1,2,1,1],[2,1,2,2]]
    cross=[]
    for u in (1,2):
        for v in (1,2):
            for w in (1,2):
                for b in (1,2):
                    S=2*v*w+2*u*b
                    if S%3 or u==2:continue
                    if (w+b)%2==0:cross.append([u,v,w,b,1])
    assert cross==[[1,2,1,1,1],[1,2,2,2,1]]
    parity=[]
    for b in (1,2):
        for H in (1,3):
            for X in (1,3):
                t=b*b*(H+1)**2+4*b*H*X
                P=2*X*(H+2)*(H-1)+b*(H-3)
                # Every even g gives 3gt=0 mod8 because 4|t.
                assert t%4==0 and P%8!=0
                parity.append([b,H,X,t%8,P%8])
    mod5=[]
    for H in range(1,5):
        for X in range(1,5):
            eq1=(H*(2*X+1)+1)%5
            eq2=(H*H-X*X-X+1)%5
            assert eq1 or eq2
            mod5.append([H,X,eq1,eq2])
    assert Fraction(4,27)+Fraction(8,27)+Fraction(8,729)+Fraction(4,19683)<1
    assert Fraction(37,81)<1
    assert (27+9)*(27-3)<4*27*27+27+1
    return dict(square_collision=square,cross_after_even_t=cross,
                cross_mod8=parity,l2h_mod5=mod5)


def examples() -> dict[str,Any]:
    # The S3 exceptional first-row family is not an NC family.
    B=81;alpha=3*B*B;beta=B*B+B+1;g=B//3
    n=g*alpha;j=g*beta;t=2*B+1
    assert gcd(n,j)==g and beta*(alpha-beta)==t*(n-1)
    assert n==B**3 and g>=10 and g%2 and t%2
    assert vchoose(n,6,7)==1 and vchoose(n,j,7)==4
    # A true native B-tail original-input family, now with fixed actual g=110.
    # All exponents h=4+10m, a=9+20m. Its first source fails by S3, not by a sampled extrapolation.
    g=110;n=g*alpha;j=g*beta
    assert gcd(n,j)==g and n%9000==5130 and 7<=j<=n//2
    D=(n-1)//gcd(n-1,j*(j-1))
    assert D==37*359 and all(prime_trial(p) for p in (37,359))
    # 3 is not a unit modulo 9. Treat that factor separately, not by an invalid order.
    assert n%9==0 and pow(3,20,100)==1
    assert (n*pow(3,20,1000)-n)%1000==0
    assert all(vchoose(n,i,37)==1 for i in (4,5,6))
    assert vchoose(n,j,37)==3
    from consumer import analyze
    assert analyze(n,j)['D1']==D
    j_upper=110*(B*B-B-2)
    upper=analyze(n,j_upper)
    assert upper['consumer']=='S3' and upper['support_component']=='gamma'
    assert upper['D1']==2165129
    assert analyze(162,70)['status']=='not_applicable'
    omitted=[]
    for a,beta,g in ((4,35,2),(5,35,3)):
        n0=g*3**a;j0=g*beta;t0=10
        assert gcd(n0,j0)==g and beta*(3**a-beta)==t0*(n0-1)
        assert g**4<n0 and n0%9000!=5130
        assert vchoose(n0,6,7)>0 and vchoose(n0,j0,7)>0
        omitted.append(dict(n=n0,j=j0,g=g,alpha=3**a,t=t0,
                            W_is_ten_square=True,correct_tail=False,
                            source7=vchoose(n0,6,7),target7=vchoose(n0,j0,7)))
    adjacent=[]
    for a0,g0,p0 in ((6,19,7),(7,23,13)):
        r=recover(3**a0,175)
        assert r is not None and r['g']==g0 and r['t']==7
        assert prime_trial(p0) and vchoose(r['n'],6,p0)==1 and vchoose(r['n'],r['j'],p0)==2
        adjacent.append(dict(n=r['n'],j=r['j'],g=g0,alpha=3**a0,beta=175,t=7,p=p0,source_vp=1,target_vp=2))
    return dict(adjacent_four_digit_models=adjacent,S3_exception_seed=dict(n=B**3,j=(B//3)*(B*B+B+1),g=B//3,t=2*B+1,
                                       source7=1,target7=4),
                native_S3_seed=dict(n=n,j=j,g=110,beta=B*B+B+1,alpha=3*B*B,
                                    D1=D,prime37_source=1,prime37_target=3),
                native_gamma_seed=upper,
                omitted_tail_examples=omitted)


def check_hashes(root: Path) -> int:
    path=root/'SHA256SUMS'
    if not path.exists():return 0
    count=0
    for line in path.read_text().splitlines():
        expected,rel=line.split('  ',1)
        actual=sha256((root/rel).read_bytes()).hexdigest()
        assert actual==expected,rel
        count+=1
    return count


def main() -> None:
    parser=argparse.ArgumentParser()
    parser.add_argument('--json',action='store_true')
    parser.add_argument('--skip-hashes',action='store_true')
    args=parser.parse_args();root=Path(__file__).resolve().parents[1]
    out=dict(status='PASS',algebra=algebra(),finite_boundaries=finite_boundaries(),
             carry_cases=carry_cases(),examples=examples(),
             hashes_checked=0 if args.skip_hashes else check_hashes(root),
             evidence_level='author paper proof + same-session exact replay; not Lean or independent review',
             global_height_bound=False,global_g4_candidate='unproved and unrefuted with its correct tail')
    if args.json:print(json.dumps(out,ensure_ascii=False,indent=2))
    else:print('PASS:',len(out['algebra']),'algebra checks;',out['hashes_checked'],'hashes')
if __name__=='__main__':main()
