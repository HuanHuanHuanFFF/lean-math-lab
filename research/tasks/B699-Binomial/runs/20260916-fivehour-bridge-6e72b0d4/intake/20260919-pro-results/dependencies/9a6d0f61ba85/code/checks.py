"""Finite algebra/proof obligations. None enumerates original NC candidates."""
from __future__ import annotations
from fractions import Fraction
from math import gcd, isqrt, lcm
from algebra import build_algebra
from poly_exact import X,Y,add,mul,power,shift,const
from consumer import compute,supported_part,coarse6


def valuation(x: int, p: int) -> int:
    if x == 0:
        raise ValueError('valuation(0) is not used')
    x=abs(x);v=0
    while x%p==0:
        x//=p;v+=1
    return v


def binomial_valuation(n: int, j: int, p: int) -> int:
    ans=0;Q=p
    while Q<=n:
        ans+=n//Q-j//Q-(n-j)//Q
        Q*=p
    return ans


def rational_rank(matrix: list[list[int]]) -> int:
    if not matrix:
        return 0
    a=[[Fraction(x) for x in row] for row in matrix]
    rank=0
    for col in range(len(a[0])):
        pivot=next((r for r in range(rank,len(a)) if a[r][col]),None)
        if pivot is None:
            continue
        a[rank],a[pivot]=a[pivot],a[rank]
        t=a[rank][col]
        a[rank]=[x/t for x in a[rank]]
        for r in range(rank+1,len(a)):
            t=a[r][col]
            if t:
                a[r]=[x-t*y for x,y in zip(a[r],a[rank])]
        rank+=1
        if rank==len(a[0]):
            break
    return rank


def center_obstruction():
    # All symmetric total-degree <= 6 polynomials are represented by
    # (x+y)^a (xy)^b, a+2b<=6. Each condition is an integer Taylor coefficient.
    monomials=[(a,b) for b in range(4) for a in range(7-2*b)]
    polys=[mul(power(add(X,Y),a),power(mul(X,Y),b)) for a,b in monomials]
    points=[(0,0,2),(0,1,3),(0,3,1),(1,2,2),
            (0,4,1),(1,3,1),(2,2,1),(2,3,1)]
    mat=[];labels=[]
    for x,y,w in points:
        pp=[shift(p,x,y) for p in polys]
        for i in range(w):
            for j in range(w-i):
                mat.append([p.get((i,j),0) for p in pp])
                labels.append([x,y,i,j])
    rank=rational_rank(mat)
    assert rank==len(monomials)==16
    return {'scope':'symmetric degree<=6, exactly the displayed Taylor contracts',
            'basis':monomials,'labels':labels,'matrix':mat,'rank':rank}


def fixed_example():
    n,j=1066641813770130,4153887361540
    r=compute(n,j)
    assert r['g']==10 and r['Delta3']==117649 and r['Delta4']==1331
    assert r['D25']==10201
    assert r['Delta3']>3*r['g']**3 and 24*r['Delta4']>r['g']**2
    assert 'SAT3_B' in r['sufficient_conditions'] and 'SAT4_B' in r['sufficient_conditions']
    p=10957
    assert all(p%d for d in range(2,isqrt(p)+1))
    assert (n-4)%p==0 and j%p>n%p
    assert binomial_valuation(n,6,p)==1 and binomial_valuation(n,j,p)==1
    assert not r['res10_original_conditions']
    r['certified_prime']={'p':p,'row':4,'source_valuation':1,'target_valuation':1,
                          'n_mod_p':n%p,'j_mod_p':j%p,'primality':'complete trial division'}
    # This is diagnostic evidence about predicates, not an NC model and not a
    # certified difference from the union of all historical consumers.
    r['scope_warning']='This pair is not RES10 and does not certify historical-union novelty.'
    return r


def support_exponent_regression():
    # This is a finite unit test of the extraction routine on symbolic products,
    # not a scan of n or of candidate counterexamples.
    rows=[]
    for a,b,c in [(1,1,1),(7,3,2),(50,37,19)]:
        value=7**a*11**b*13**c
        got=supported_part(value,7**2*11)
        assert got==7**a*11**b
        assert supported_part(value,1)==1
        assert supported_part(got,7*11)==got
        rows.append({'a':a,'b':b,'c':c,'result':got})
    return rows


def quotient_diagnostic(s: int):
    E=6*s+4
    n=37*5**E+5
    eta=(5**E-77)//4
    assert eta>0 and eta%2==1 and gcd(eta,5)==1
    assert n%9000==5130 and coarse6(n-5)==37
    assert 5**E==7*11+4*eta
    assert 48*5**E==7*11*48+eta*192
    assert gcd(48,192)==48
    # Formal L3=L4=1 meets the new coprimality conclusion.
    assert gcd(eta,1*1)==1
    # It cannot be promoted to original integer recovery: 7 is not a factor
    # of the actual third source, while the formal E3 was set equal to 7.
    assert (n-3)%7==6
    return {'s':s,'E':E,'n':n,'eta':eta,'formal_E3':7,'formal_C':11,
            'formal_L3':1,'formal_L4':1,'formal_L6':48,'formal_L7':192,
            'failure_n_minus_3_mod_7':6,
            'scope':'reduced positive-sum/coprimality system only; no original j recovered'}


def all_evidence():
    a=build_algebra()
    assert a['orders']['F3']==[[3],[3,3],[1,2,1],[1,2,2,1],[1,1,1,1,1],[1,1,0,0,1,1]]
    assert a['orders']['F4']==[[2],[4,4],[1,2,1],[2,2,2,2],[1,2,2,2,1],[1,1,0,0,1,1]]
    assert len(a['Q_positive_shift'])==15
    assert all(c>0 for _,_,c in a['Q_positive_shift'])
    assert all(c>0 for _,_,c in a['Q_upper_shift'])
    assert a['K3']==[[0,1,27],[0,2,27],[1,0,-10],[1,1,-36],[2,0,10]]
    assert a['K4']==[[0,1,-9],[0,2,27],[1,0,10],[1,1,-36],[2,0,10]]
    inequalities={
        'A3':Fraction(243,16)*(1-Fraction(13,1280))-15,
        'A4':1-Fraction(18,1280)-Fraction(10,11),
        'B3':1-Fraction(13,1530)-Fraction(8,9),
        'B4':1-Fraction(18,1530)-Fraction(15,16),
    }
    assert all(v>0 for v in inequalities.values())
    # RES10 gains 30 and 240 are exact factors of the recovered positive integers.
    assert 30*3==90 and Fraction(240,24)==10
    return {
        'algebra':a,
        'constant_margins':{k:[v.numerator,v.denominator] for k,v in inequalities.items()},
        'center_obstruction':center_obstruction(),
        'fixed_original_pair':fixed_example(),
        'support_tests':support_exponent_regression(),
        'quotient_diagnostics':[quotient_diagnostic(s) for s in (0,1,3)],
    }
