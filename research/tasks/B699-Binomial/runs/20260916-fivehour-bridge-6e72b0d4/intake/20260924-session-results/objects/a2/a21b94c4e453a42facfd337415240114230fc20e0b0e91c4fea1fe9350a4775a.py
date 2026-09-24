#!/usr/bin/env python3
"""Standard-library exact verifier: Sylvester determinants + degree bounds.
Does not import SymPy. It verifies 13 resultant identities at provably enough
points, complete finite-field obstructions, and the single-slot 3-adic
polynomial identities. It is a second implementation by the SAME author.
"""
from __future__ import annotations
import argparse,copy,json,math
from fractions import Fraction as F
from pathlib import Path

def trim(p):
    p=list(p)
    while len(p)>1 and p[-1]==0:p.pop()
    return p

def add(p,q):
    r=[0]*max(len(p),len(q))
    for i,c in enumerate(p):r[i]+=c
    for i,c in enumerate(q):r[i]+=c
    return trim(r)

def mul(p,q):
    r=[0]*(len(p)+len(q)-1)
    for i,a in enumerate(p):
        for j,b in enumerate(q):r[i+j]+=a*b
    return trim(r)

def prod(*ps):
    r=[1]
    for p in ps:r=mul(r,p)
    return r

def scale(p,k):return trim([c*k for c in p])

def power(p,n):
    r=[1]
    for _ in range(n):r=mul(r,p)
    return r

def horner(p,z):
    r=0
    for c in reversed(p):r=r*z+c
    return r

def prime(p):return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))

def check_no_root(r):
    p=r['prime'];cs=r['coefficients_ascending']
    assert prime(p) and cs[-1]%p
    vals=[horner(cs,x)%p for x in range(p)]
    assert vals==r['values'] and all(vals)
    return p

def bareiss(M):
    A=[row[:] for row in M];n=len(A)
    if n==0:return 1
    sign=1;prev=1
    for k in range(n-1):
        row=next((i for i in range(k,n) if A[i][k]),None)
        if row is None:return 0
        if row!=k:A[k],A[row]=A[row],A[k];sign=-sign
        piv=A[k][k]
        for i in range(k+1,n):
            for j in range(k+1,n):
                v=A[i][j]*piv-A[i][k]*A[k][j]
                quotient,remainder=divmod(v,prev)
                assert remainder==0
                A[i][j]=quotient
            A[i][k]=0
        prev=piv
    return sign*A[-1][-1]

def sparse_eval(terms,z,degree):
    cs=[0]*(degree+1)
    for i,j,c in terms:cs[i]+=c*z**j
    return list(reversed(cs))

def check_resultant(r):
    E=r['E_sparse'];G=r['F_sparse'];cs=r['resultant_coefficients_ascending']
    n=max(i for i,j,c in E);m=max(i for i,j,c in G)
    de=max(j for i,j,c in E);dg=max(j for i,j,c in G)
    bound=m*de+n*dg
    assert len(trim(cs))-1<=bound and any(cs)
    for z in range(bound+1):
        ec=sparse_eval(E,z,n);gc=sparse_eval(G,z,m)
        rows=[]
        for j in range(m):rows.append([0]*j+ec+[0]*(m-1-j))
        for j in range(n):rows.append([0]*j+gc+[0]*(n-1-j))
        assert len(rows)==n+m and all(len(row)==n+m for row in rows)
        assert bareiss(rows)==horner(cs,z),('resultant mismatch',r['eliminand'],z)
    return bound+1

def check_factorization(record,factors):
    product=[1]
    for r in factors:
        cs=r['coefficients_ascending']
        if 'no_rational_root' in r:
            assert cs==r['no_rational_root']['coefficients_ascending']
            check_no_root(r['no_rational_root'])
        elif 'excluded_by' in r:assert cs==[1,12]
        elif 'exception' in r:assert cs==[-64,275]
        else:raise AssertionError('unclassified resultant factor')
        product=mul(product,power(cs,r['multiplicity']))
    result=record['resultant_coefficients_ascending']
    factor=F(result[-1],product[-1])
    assert factor and trim(scale(product,factor))==trim(result)

def v3(n):
    assert n>0
    r=0
    while n%3==0:n//=3;r+=1
    return r

def single_slot_polynomial_checks(r):
    U=[1,60,540,1512,1296];V=[1,183,3060,15444,29808,19440]
    W=[0,40,432,1296,1152]
    Fp=add(mul(U,V),[1]);Sig=mul(V,W)
    raw=r['canonical']['integer_polynomials']
    assert Fp==raw['F'] and Sig==raw['Sigma']
    A3=[1,18,72,72];A4=[1,40,324,864,720]
    assert A3==raw['A3'] and A4==raw['A4']
    B3=[5,54,162,144];C3=[1,54,216,216];B5=[-1,60,1800,10800,22680,15552]
    assert add(Fp,[-2])==scale(prod([0,1],[1,2],A3,A4),3**5)
    assert Sig==scale(prod([0,1],B3,V),8)
    assert add(Sig,[-1])==prod([1,2],[1,6],[-1,120],A3,C3)
    assert add(Sig,[-2])==scale(mul(A4,B5),2)
    assert math.gcd(math.gcd(U[1],V[1]),W[1])==1
    for y in range(3):
        assert horner(Sig,y)%3==y
        assert all(horner(p,y)%3 for p in (A3,B3,C3,B5,V,[1,6],[-1,120]))
        if y==0:assert horner(A4,y)%3 and (2*y+1)%3
        if y==1:assert horner(A4,y)%3
        if y==2:assert (2*y+1)%3
    # Not used as the infinite proof: stress regression on high valuations.
    tests=list(range(1,301))+[3**k for k in range(1,31)]+[(3**k-1)//2 for k in range(1,31)]
    for y in tests:
        n=horner(Fp,y);sig=horner(Sig,y);j0=y%3
        assert v3(n-2)-v3(sig-j0)==5
    for nr in r['nonlinear_root_obstructions'].values():check_no_root(nr)
    for candidate in r['candidates']:
        for rt,cs0 in candidate['taylor_coefficients_1_to_9'].items():
            cs=[F(z) for z in cs0]
            if candidate['k']==0 and F(rt)==0:assert all(c>=0 for c in cs)
            else:
                assert any(c<0 for c in cs)
                assert any((-1)**(i+1)*c<0 for i,c in enumerate(cs))
    return len(tests)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('certificate');ap.add_argument('--output',required=True);args=ap.parse_args()
    data=json.loads(Path(args.certificate).read_text())
    counts=0;records=0;modcerts=0
    pairs=data['two_plus_one']['rows']
    assert {(r['quadratic_slot'],r['linear_slot']) for r in pairs}=={(0,1),(0,2),(1,0),(1,2),(2,0),(2,1)}
    for r in pairs:
        assert r['constant_term_policy'].endswith('C[0] NOT USED.')
        for name in ('a1_resultant','a0_resultant'):
            counts+=check_resultant(r[name]);records+=1
        check_factorization(r['a1_resultant'],r['a1_factors'])
        modcerts+=sum('no_rational_root' in z for z in r['a1_factors'])
        cs=r['a0_resultant']['resultant_coefficients_ascending']
        assert cs[-1]!=0 and all(z==0 for z in cs[:-1])
    r=data['one_one_one'];counts+=check_resultant(r['resultant']);records+=1
    check_factorization(r['resultant'],r['factors'])
    check_no_root(r['special_no_rational_root']);modcerts+=2
    D=r['special_discriminant'];a=r['special_discriminant_floor_sqrt']
    assert a*a<D<(a+1)**2
    valuation_tests=single_slot_polynomial_checks(data['single_slot']);modcerts+=4
    # Three deliberately corrupted certificates must be rejected.
    rejected=[]
    bad=copy.deepcopy(pairs[0]['a1_resultant']);bad['resultant_coefficients_ascending'][0]+=1
    try:check_resultant(bad)
    except AssertionError:rejected.append('resultant_constant_mutation')
    else:raise AssertionError('bad resultant accepted')
    nr=next(z['no_rational_root'] for z in pairs[0]['a1_factors'] if 'no_rational_root' in z)
    bad=copy.deepcopy(nr);bad['values'][0]=(bad['values'][0]+1)%bad['prime']
    try:check_no_root(bad)
    except AssertionError:rejected.append('modular_table_mutation')
    else:raise AssertionError('bad modular table accepted')
    bad=copy.deepcopy(nr);bad['coefficients_ascending']=[0,1];bad['values']=list(range(bad['prime']))
    try:check_no_root(bad)
    except AssertionError:rejected.append('root_at_zero_mutation')
    else:raise AssertionError('root-containing polynomial accepted')
    receipt={'status':'STANDARD_LIBRARY_EXACT_CROSSCHECK=PASS','resultant_identities':records,
             'degree_bounded_sylvester_evaluations':counts,'finite_field_certificates':modcerts,
             'single_slot_valuation_regression_points':valuation_tests,
             'single_slot_infinite_valuation_basis':'exact polynomial identities + complete mod3 unit cases, not the regression',
             'rejected_corrupt_certificates':rejected,'sympy_imported':False,
             'evidence_limit':'same-author second implementation; not Lean or external review'}
    Path(args.output).write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n')
    print(json.dumps(receipt,indent=2))
if __name__=='__main__':main()
