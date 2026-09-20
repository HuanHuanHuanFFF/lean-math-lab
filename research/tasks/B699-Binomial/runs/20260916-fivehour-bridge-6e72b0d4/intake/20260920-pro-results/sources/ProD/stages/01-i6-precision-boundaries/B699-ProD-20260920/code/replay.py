#!/usr/bin/env python3
"""Replay exact algebra and explicit weak-model certificates; standard library only.
This does not certify NC6, frontier reduction, or the unexecuted frozen sources.
"""
from __future__ import annotations
import argparse
from fractions import Fraction
from math import gcd
from pathlib import Path
import hashlib
import json

Poly = dict[tuple[int, int], int]

def add(*ps: Poly) -> Poly:
    out: Poly = {}
    for p in ps:
        for k, v in p.items():
            out[k] = out.get(k, 0) + v
    return {k: v for k, v in out.items() if v}

def scale(p: Poly, c: int) -> Poly:
    return {k: c*v for k, v in p.items() if c*v}

def mul(p: Poly, q: Poly) -> Poly:
    out: Poly = {}
    for (a,b), u in p.items():
        for (c,d), v in q.items():
            key = (a+c,b+d)
            out[key] = out.get(key, 0) + u*v
    return {k: v for k, v in out.items() if v}

def power(p: Poly, e: int) -> Poly:
    if e < 0:
        raise ValueError('negative polynomial exponent')
    r = {(0,0): 1}
    for _ in range(e):
        r = mul(r,p)
    return r

def const(c: int) -> Poly:
    return {(0,0): c} if c else {}

def vp(x: int | Fraction, p: int) -> int:
    if x == 0:
        raise ValueError('valuation at zero is not finite')
    if isinstance(x, Fraction):
        return vp(x.numerator,p)-vp(x.denominator,p)
    x = abs(x)
    a = 0
    while x % p == 0:
        x //= p
        a += 1
    return a

def binomial_vp(n: int, j: int, p: int) -> int:
    if n < 0 or j < 0 or j > n or p < 2:
        raise ValueError('invalid binomial valuation input')
    ans = 0
    Q = p
    while Q <= n:
        ans += n//Q-j//Q-(n-j)//Q
        Q *= p
    return ans

def integer_sha256(n: int) -> str:
    if n < 0:
        raise ValueError('only nonnegative integer serialization')
    return hashlib.sha256(n.to_bytes(max(1,(n.bit_length()+7)//8), 'big')).hexdigest()

def check_algebra() -> dict:
    n: Poly = {(1,0):1}; u: Poly = {(0,1):1}
    nm3=add(n,const(-3)); nm4=add(n,const(-4))
    P=add(scale(mul(nm3,nm4),4),scale(mul(n,u),-9),scale(power(u,2),27))
    target=scale(mul(u,add(n,scale(u,-3))),9)
    assert add(scale(mul(nm3,nm4),4),scale(P,-1),scale(target,-1))=={}
    # Full factorization is linear in W=10*g^2*d*v^2*E3*E4.
    # Its constant coefficient is target; its W coefficient is -9*(n-3u).
    gap_W_coefficient = add(scale(n,-9),scale(u,27))
    assert gap_W_coefficient == scale(add(n,scale(u,-3)),-9)
    # Exact double vanishing in the q4 central coordinates x=n-4, y=j-2.
    x=n; y=u; N=add(x,const(4)); J=mul(add(y,const(2)),add(x,scale(y,-1),const(2)))
    Nm1=add(N,const(-1))
    central=add(scale(mul(mul(add(N,const(-3)),add(N,const(-4))),power(Nm1,2)),4),
                scale(mul(mul(N,J),Nm1),-9),scale(power(J,2),27))
    expected={(4,0):4,(3,1):-9,(3,0):10,(2,2):36,(2,1):45,
              (2,0):6,(1,3):-54,(1,2):-45,(1,1):108,(0,4):27,(0,2):-108}
    assert central==expected
    assert all(a+b>=2 for a,b in central)
    # (n-1)(n-3U) = x+x^2-3xy+3y^2 at the same central coordinates.
    first=add(mul(N,Nm1),scale(J,-3))
    first_expected=add(x,power(x,2),scale(mul(x,y),-3),scale(power(y,2),3))
    assert first==first_expected
    # Remainder for n=K*j+D, used only in the explicit non-NC family.
    K=26342; D=110
    X=x; NN=add(scale(X,K),const(D)); JJ=mul(X,add(scale(X,K-1),const(D)))
    divisor=add(NN,const(-1))
    quotient=add(scale(X,K*(K-1)),const(K+D-1))
    assert add(scale(JJ,K*K),scale(mul(divisor,quotient),-1),const((D-1)*(K+D-1)))=={}
    return {'gap_polynomial_identity':True,'gap_square_relation_factorization':True,'central_double_zero':True,
            'central_first_order_identity':True,'affine_remainder':2883159}

def check_valuation_jets() -> dict:
    # Diagnostic substitutions in exact rational identities, NOT NC6 examples.
    count=0
    for p in (7,11,31,53):
        for e in range(1,5):
            for u in range(e,2*e+5):
                if u%2:
                    continue
                for row in (3,4):
                    n=row+p**e; U=p**u; E4=p**e if row==4 else 1
                    gap=Fraction(9*U*(n-3*U),8*E4*(n-3))
                    assert vp(gap,p)==u-e
                    count+=1
            for w in range(4):
                g=p**e; n=g*3**5; U=10*g*g*p**(2*w)
                gap=Fraction(9*U*(n-3*U),8*(n-3))
                assert vp(gap,p)==3*e+2*w
                count+=1
            for h in range(4):
                n=5+p**e; U=1+p**(e+h)
                gap=Fraction(9*U*(n-3*U),8*(n-3))
                assert vp(gap,p)==0
                count+=1
            for b in range(5):
                n=4+p**e; j=2+b*p**e; U=Fraction(j*(n-j),n-1)
                assert vp(n-3*U,p)==e
                count+=1
    return {'exact_rational_jet_tests':count,'purpose':'diagnostic, not original-problem finite termination'}

def check_global_square_model(root: Path) -> dict:
    # Recover the certificate independently from the Hensel recurrence, not by
    # trusting the stored n and j strings.
    A=3; r=1
    for a in range(2,133):
        lifted=[r+t*A for t in range(3) if ((r+t*A)**2-40)%(3*A)==0]
        assert len(lifted)==1
        r=lifted[0]; A*=3
    assert A==3**132 and (r*r-40)%A==0
    m=r if r%2 else A-r
    num=A*A-m*m+40
    assert num%(40*A)==0
    g=num//(40*A); beta=(A-m)//2
    n=g*A; j=g*beta
    assert gcd(n,j)==g and gcd(A,beta)==1 and 7<=j<=n//2
    assert n%9000==5130 and vp(n-5,5)==3
    assert j*(n-j)==10*g*g*(n-1)
    assert g**4>n
    assert n%7==5 and j%7==3 and vp(n-5,7)==1
    assert binomial_vp(n,6,7)==1 and binomial_vp(n,j,7)==69
    saved=json.loads((root/'outputs/hensel_recovery.json').read_text())['hits'][0]
    assert int(saved['n'])==n and int(saved['j'])==j and int(saved['g'])==g
    return {'a':132,'z':1,'n_digits':len(str(n)),'g_digits':len(str(g)),
            'actual_gcd':True,'alpha_pure_power_of_3':True,'square_identity':True,
            'residue_9000':5130,'E':3,'g4_lt_n':False,
            'common_prime':7,'v7_binomial_n6':1,'v7_binomial_nj':69,
            'q5_full_near':False,'reason':'the full 7^1 source is in slot b=3, not b=1 or 4',
            'n_integer_sha256':integer_sha256(n),'j_integer_sha256':integer_sha256(j)}

def check_all_layer_family(t: int) -> dict:
    if t<1:
        raise ValueError('the uniform digit-separation proof is stated for t>=1')
    p=53; L=2+1500*t; K=26342; D=110
    j=p**L+1; n=K*j+D; k=n-j
    A=(n-5)//p; B=(j-1)//p
    assert n==p*A+5 and j==p*B+1 and k==p*(A-B)+4
    assert A==497*p**L+p**(L-1)+499
    assert 499<p**(L-1)
    assert A-B==497*p**L+499
    assert gcd(n,j)==10 and 7<=j<=n//2 and 10**4<n
    assert n%9000==5130 and n%625==505 and vp(n-5,5)==3
    assert vp(n-5,53)==1 and A%53==22
    assert binomial_vp(n,6,53)==1
    assert binomial_vp(n,j,53)==binomial_vp(A,B,53)==0
    assert binomial_vp(A,6,53)==0
    assert n%7==1 and j%7==3
    assert binomial_vp(n,6,7)>0 and binomial_vp(n,j,7)>0
    assert j*k%(n-1)!=0
    assert (n-1)>2883159
    # U is only a rational number here; it is NOT the NC integer parameter.
    U=Fraction(j*k,n-1)
    assert vp(U-1,53)==L
    return {'t':t,'L':L,'n_bits':n.bit_length(),'j_bits':j.bit_length(),
            'actual_gcd':10,'residue_9000':5130,'E':3,'full_original_53_exponent':1,
            'all_53_layers_no_carry':True,'v53_binomial_n6':1,'v53_binomial_nj':0,
            'v53_binomial_A6':0,'vp_rational_U_minus_1':L,
            'first_window_integer_U':False,'uniform_common_prime':7,
            'n_integer_sha256':integer_sha256(n),'j_integer_sha256':integer_sha256(j)}

def main() -> None:
    if not __debug__:
        raise RuntimeError('Run without -O: assertion-based certificate checks must remain enabled.')
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path)
    args=parser.parse_args()
    root=Path(__file__).resolve().parent.parent
    assert pow(53,1500,9000)==1 and pow(53,1500,625)==1
    assert pow(53,1500,7)==1 and pow(9,5,11)==1
    assert pow(53,2,7)==2 and pow(53,3,7)==1
    assert all(pow(9,k,11)!=10 for k in range(5))
    base=26342*(53**2+1)+110
    assert base==74021130 and base%9000==5130 and base%625==505
    result={'status':'PASS','frontier_reduction':0,
            'evidence':'same-session exact program replay; not Lean or external review',
            'algebra':check_algebra(),'valuation_diagnostics':check_valuation_jets(),
            'global_square_countermodel':check_global_square_model(root),
            'all_layer_family_samples':[check_all_layer_family(t) for t in (1,2)],
            'warning':'Infinite-family proofs are in PROOFS.md. Samples do not prove their universal quantifiers.'}
    text=json.dumps(result,ensure_ascii=False,indent=2)+'\n'
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(text,encoding='utf-8')
    print(text)

if __name__=='__main__':
    main()
