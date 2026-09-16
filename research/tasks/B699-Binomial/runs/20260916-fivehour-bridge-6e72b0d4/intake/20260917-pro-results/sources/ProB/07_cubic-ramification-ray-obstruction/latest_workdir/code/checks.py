#!/usr/bin/env python3
"""Generate exact evidence. These checks do NOT prove class field theory."""
import argparse, json, hashlib
from pathlib import Path
from math import gcd, isqrt, comb
from fractions import Fraction as Q
from exact import *


def dump(path,data):
    Path(path).parent.mkdir(parents=True,exist_ok=True)
    Path(path).write_text(json.dumps(data,ensure_ascii=False,sort_keys=True,indent=2)+'\n')


def symbolic():
    n={(1,0):Q(1)};j={(0,1):Q(1)};k=sub(n,j)
    nm1=sub(n,const(1));nm2=sub(n,const(2));jm1=sub(j,const(1));jm2=sub(j,const(2));km1=sub(k,const(1))
    L=scale(mul(mul(n,nm1),nm2),Q(1,6))
    B=scale(mul(mul(j,nm1),nm2),Q(1,2))
    C=scale(mul(mul(j,jm1),nm2),Q(1,2))
    D=scale(mul(mul(j,jm1),jm2),Q(1,6))
    I=sub(power(B,2),scale(mul(L,C),3))
    J=add(sub(scale(power(B,3),2),scale(mul(mul(L,B),C),9)),scale(mul(power(L,2),D),27))
    disc=add(add(sub(mul(power(B,2),power(C,2)),scale(mul(L,power(C,3)),4)),scale(mul(power(B,3),D),-4)),add(scale(mul(power(L,2),power(D,2)),-27),scale(mul(mul(mul(L,B),C),D),18)))
    expectI=scale(mul(mul(mul(j,k),nm1),power(nm2,2)),Q(1,4))
    expectJ=scale(mul(mul(mul(mul(j,k),sub(n,scale(j,2))),power(nm1,2)),power(nm2,2)),Q(1,4))
    expectDisc=scale(mul(mul(mul(mul(mul(power(j,2),power(k,2)),jm1),km1),power(nm2,2)),nm1),Q(1,12))
    identities={
        'I_actual':sub(I,expectI),
        'J_actual':sub(J,expectJ),
        'disc_actual':sub(disc,expectDisc),
        'invariant_relation':sub(sub(scale(power(I,3),4),power(J,2)),scale(mul(power(L,2),disc),27)),
        'recover_n':sub(mul(n,I),scale(mul(L,sub(B,C)),3)),
        'recover_j':sub(mul(j,I),mul(B,sub(B,C))),
    }
    assert all(not v for v in identities.values())
    # Independent full interpolation check, all bivariate degrees <= 12.
    grid=0
    for nn in range(1,14):
        for jj in range(1,14):
            ll=Q(nn*(nn-1)*(nn-2),6);bb=Q(jj*(nn-1)*(nn-2),2)
            cc=Q(jj*(jj-1)*(nn-2),2);dd=Q(jj*(jj-1)*(jj-2),6)
            ii=bb*bb-3*ll*cc;jjj=2*bb**3-9*ll*bb*cc+27*ll**2*dd
            dis=disc4([ll,-bb,cc,-dd])
            assert ii==Q(jj*(nn-jj)*(nn-1)*(nn-2)**2,4)
            assert jjj==Q(jj*(nn-jj)*(nn-2*jj)*(nn-1)**2*(nn-2)**2,4)
            assert dis==Q(jj**2*(nn-jj)**2*(jj-1)*(nn-jj-1)*(nn-2)**2*(nn-1),12)
            assert 4*ii**3-jjj**2==27*ll**2*dis
            grid+=1
    return {'status':'PASS','identities':list(identities),'independent_exact_grid_points':grid,'max_bidegree_used':12,
            'scope':'Polynomial identities only; no number-field or original-domain enumeration.'}


def ring_mul(x,y,m=27):
    return ((x[0]*y[0]+x[1]*y[1])%m,(x[0]*y[1]+x[1]*y[0]+x[1]*y[1])%m)


def verify_ray_certificate(c):
    if c.get('modulus') != 27 or c.get('units') != 648 or c.get('phi_order') != 72:
        raise ValueError('wrong ambient finite ring or group order')
    def mm(A,B):
        return tuple(sum(A[2*i+t]*B[2*t+j] for t in range(2))%27 for i in range(2) for j in range(2))
    def mpow(h):
        a=(0,1,1,1);r=(1,0,0,1)
        while h:
            if h&1:r=mm(r,a)
            a=mm(a,a);h//=2
        return r
    actual=set()
    rows=c.get('witnesses',[])
    if len(rows)!=648:raise ValueError('coverage count missing')
    for row in rows:
        x=tuple(row['element']);a=row['rational_unit'];h=row['phi_exponent']
        if not (len(x)==2 and all(0<=t<27 for t in x) and 0<=a<27 and gcd(a,27)==1 and 0<=h<72):
            raise ValueError('invalid witness')
        mat=mpow(h)
        if x!=(a*mat[0]%27,a*mat[2]%27):raise ValueError('false multiplication witness')
        if x in actual:raise ValueError('duplicate coverage')
        actual.add(x)
    expected={(a,b) for a in range(27) for b in range(27) if (a*a+a*b-b*b)%3!=0}
    if actual!=expected:raise ValueError('incomplete unit group')
    if set(c.get('rational_base_2_powers',[]))!={a for a in range(27) if a%3}:
        raise ValueError('rational generator missing')
    return True


def ray():
    phi=(0,1);x=(1,0);powers=[]
    while x not in powers:
        powers.append(x);x=ring_mul(x,phi)
    assert len(powers)==72 and x==(1,0)
    assert powers[24]==(10,9) and powers[36]==(26,0)
    rational=[a for a in range(27) if gcd(a,27)==1]
    units=[(a,b) for a in range(27) for b in range(27) if gcd(a*a+a*b-b*b,27)==1]
    witnesses={}
    for a in rational:
        for h,z in enumerate(powers):
            witnesses.setdefault(ring_mul((a,0),z),(a,h))
    assert set(witnesses)==set(units) and len(units)==648
    assert set(powers)&{(a,0) for a in rational}=={(1,0),(26,0)}
    # Independent realization: multiplication by a+b*phi is a 2x2 matrix.
    def mm(A,B):return tuple(sum(A[2*i+t]*B[2*t+j] for t in range(2))%27 for i in range(2) for j in range(2))
    M=(0,1,1,1);X=(1,0,0,1);mats=[]
    for h in range(72):
        mats.append(X);X=mm(X,M)
    assert X==(1,0,0,1)
    independent=set()
    for a in range(27):
        if a%3==0:continue
        for X in mats:
            independent.add((a*X[0]%27,a*X[2]%27))
    # Independent unit test by direct inverse search for all 729 residues.
    inverse_units=set()
    for a in range(27):
        for b in range(27):
            conj=(a+b,-b)
            norm=(a*a+a*b-b*b)%27
            if norm%3:
                inv=(conj[0]*pow(norm,-1,27)%27,conj[1]*pow(norm,-1,27)%27)
                assert ring_mul((a,b),inv)==(1,0)
                inverse_units.add((a,b))
    assert inverse_units==independent==set(units)
    # Q ray class: 2 generates modulo 27, including sign quotient.
    two=[pow(2,h,27) for h in range(18)]
    assert set(two)==set(rational) and two[9]==26
    rows=[{'element':[a,b],'rational_unit':witnesses[(a,b)][0],'phi_exponent':witnesses[(a,b)][1]} for a,b in units]
    return {'status':'PASS','modulus':27,'quadratic_relation':[1,1],
            'phi_order':72,'phi_24':list(powers[24]),'phi_36':list(powers[36]),
            'units':648,'rational_units':18,'intersection_order':2,
            'rational_base_2_powers':two,'witnesses':rows,
            'independent_check':'2x2 matrices + conjugate/norm inverses',
            'scope':'Entire finite residue unit group. PID and class-field implication are proved in PROOFS.md, not computed.'}


def local():
    primes=[5,7,11,13,17,19,23]
    repeated=0;triple=0;separable=0
    for p in primes:
        for I in range(p):
            for J in range(p):
                disc=(4*I**3-J*J)%p
                if disc:
                    separable+=1;continue
                if I==J==0:
                    triple+=1;continue
                roots=[x for x in range(p) if (x*x*x-3*I*x-J)%p==0]
                simple=[x for x in roots if (3*x*x-3*I)%p]
                assert len(simple)==1
                # Formula for the double and simple roots, independent of exhaustive list.
                d=-J*pow(2*I,-1,p)%p
                assert (d*d-I)%p==0 and (-2*d)%p==simple[0]
                repeated+=1
    # Valuation profile and separable reductions after exact scaling by p^(r/3).
    profiles=[]
    for p in [5,7,11,13]:
        for r in range(1,13):
            for a in [0,1,4]:
                I=p**(r+a);J=p**r*2
                assert valuation(J,p)==r and valuation(I,p)>=r
                if r%3==0:
                    h=r//3
                    scaled=[1,0,-3*I//p**(2*h),-J//p**(3*h)]
                    assert scaled[2]%p==0 and scaled[3]%p!=0
                    assert disc4(scaled)%p
                else:
                    # At root valuation r/3, middle point is strictly above polygon.
                    assert 3*valuation(-3*I,p)>2*r
                profiles.append([p,r,a,'unramified' if r%3==0 else 'tame-e3'])
    # Exact cube lifting modulo 3^h, illustrating (not proving) the universal Hensel statement.
    cubes=[]
    for h in range(3,9):
        modulus=3**h
        table={pow(a,3,modulus) for a in range(modulus) if a%3}
        targets={a for a in range(modulus) if a%27==1}
        assert targets<=table
        cubes.append({'power':h,'targets':len(targets)})
    return {'status':'PASS','primes':primes,'nontriple_repeated_profiles':repeated,
            'triple_profiles':triple,'separable_profiles':separable,'scaled_valuation_profiles':profiles,
            'cube_lifting_regressions':cubes,
            'scope':'Finite local algebra regression. General ramification theorem and conductor use the written proof/Hensel/CFT.'}


def icbrt(n):
    lo=0;hi=1 << ((n.bit_length()+2)//3+1)
    while hi-lo>1:
        m=(lo+hi)//2
        if m**3<=n:lo=m
        else:hi=m
    return lo


def consumer(d):
    dis=d['disc']
    sf=1 if isqrt(dis)**2==dis else (5 if dis%5==0 and isqrt(dis//5)**2==dis//5 else None)
    raw=remove(gcd(d['I'],d['J']))
    return sf if sf and icbrt(raw)**3==raw else None


def regress():
    count=0;hit=[];formulas=0
    for n in range(8,1001,4):
        for j in range(4,n//2+1):
            d=content(n,j);L=d['L'];B=-d['psi'][1];C=d['psi'][2]
            assert Q(3*L*(B-C),d['I'])==n
            assert Q(B*(B-C),d['I'])==j
            assert 4*d['I']**3-d['J']**2==27*L**2*d['disc']
            assert valuation(d['H'],2)==min(valuation(n,2),valuation(j,2))
            sf=consumer(d)
            if sf:
                G=gcd(comb(n,3),comb(n,j));assert remove(G,(2,))>1
                hit.append({'n':n,'j':j,'disc_squareclass':sf,'gcd':G,'gcd_invariants_away_6':remove(gcd(d['I'],d['J']))})
            count+=1
    # Nonempty exact full-power projection example from frozen sources; not NC3.
    n,j=18610024,7865522
    c=canonical(n,j);d=content(n,j);eta=Q(n,c['g']*d['L'])
    assert c['R'].denominator==c['U'].denominator==c['t'].denominator==1
    assert gcd(int(c['R'])*c['F'],int(c['t']))==1
    assert d['I']==9*c['R']*c['F']/(eta**2*c['lam'])
    assert d['J']==54*c['R']*c['t']/(eta**3*c['lam']*c['mu'])
    assert d['disc']==27*c['R']**2*c['U']/(eta**4*c['lam']**3*c['mu']**2)
    assert remove(gcd(d['I'],d['J']))==remove(int(c['R']))
    assert d['L']&(d['L']-1) # NOT a power of two.
    example={'n':n,'j':j,'R':int(c['R']),'U':int(c['U']),'t':int(c['t']),'F':c['F'],
             'I':d['I'],'J':d['J'],'L':d['L'],'disc':d['disc'],'warning':'Full projections hold, but L is not a 2-power; not NC3.'}
    # Direct full-power p=3 test: weak 3 and 6 projection is insufficient.
    n,j=56,11
    assert 3*j*(j-1)%(n-1)==0 and 6*j*(j-1)*(j-2)%(n-2)==0
    assert j*(j-1)*(j-2)%27!=0
    v3=[valuation(comb(n,3),3),valuation(comb(n,j),3)]
    assert v3==[2,1]
    return {'status':'PASS','legal_inputs':count,'consumer_hits':hit,'full_projection_example':example,
            'p_equals_i':{'n':56,'j':11,'complete_source_modulus':27,'binomial_valuations':v3},
            'scope':'Finite implementation tests only. The consumer hits here are centers already covered by older proofs; no strict historical-union coverage claim.'}


def boundary():
    psi=[16,-23,9,-1]
    I=23**2-3*16*9;J=2*23**3-9*16*23*9+27*16**2
    assert disc4(psi)==229 and isprime(229)
    assert (I,J)==(97,1438) and gcd(I,J)==1
    assert [peval(psi,x) for x in [Q(0),Q(1,4),Q(1,2),Q(1)]]==[-1,Q(1,16),Q(-1,4),1]
    # Q2 simple-root reciprocal and inverse coefficients.
    inverse=[]
    # (1-y)^3 psi(1/(1-y)) = 16-23(1-y)+9(1-y)^2-(1-y)^3.
    for degree in range(4):
        inverse.append(sum(psi[t]*comb(t,degree)*(-1)**degree for t in range(degree,4)))
    assert inverse==[1,8,6,1] and sum(inverse)==16
    assert Q(3*16*(23-9),I)==Q(672,97)
    assert Q(23*(23-9),I)==Q(322,97)
    # f(X)=X^3-4X+1. Rational roots can only be +-1.
    assert peval([1,0,-4,1],1)!=0 and peval([1,0,-4,1],-1)!=0
    # Exact substitution X=3-1/Z, scaled Z^3.
    z={(1,0):Q(1)};term=sub(scale(z,3),const(1))
    transformed=add(sub(power(term,3),scale(mul(term,power(z,2)),4)),power(z,3))
    assert transformed=={(3,0):Q(16),(2,0):Q(-23),(1,0):Q(9),(0,0):Q(-1)}
    tests=[]
    # Models disprove wrong omissions, not B699.
    assert disc4([1,0,-3,-1])==81
    assert all(peval([1,0,-3,-1],a)%2 for a in range(2))
    tests.append({'wrong_claim':'A cyclic cubic ramified only at 3 is impossible without splitting at 2.',
                  'polynomial':[1,0,-3,-1],'disc':81,'mod2_no_root':True})
    assert disc4([1,-6,0,2])==1620==5*18**2
    tests.append({'wrong_claim':'Quadratic base sqrt(5) and no primes >=5 suffice without controlling 2.',
                  'polynomial':[1,-6,0,2],'disc':1620,'Eisenstein_prime':2})
    # Never delete cubically divisible exponents by radical alone.
    r1=5**3;r2=5**4
    assert valuation(r1,5)%3==0 and valuation(r2,5)%3!=0
    assert set(factor(r1))==set(factor(r2))
    # Empty activity does not force class-field obstruction in all quadratic fields.
    from copy import deepcopy
    valid=ray();assert verify_ray_certificate(valid)
    mutations=[]
    bad=deepcopy(valid);bad['witnesses'].pop();mutations.append(bad)
    bad=deepcopy(valid);bad['witnesses'][0]=bad['witnesses'][1];mutations.append(bad)
    bad=deepcopy(valid);bad['witnesses'][0]['phi_exponent']=(bad['witnesses'][0]['phi_exponent']+1)%72;mutations.append(bad)
    bad=deepcopy(valid);bad['phi_order']=24;mutations.append(bad)
    bad=deepcopy(valid);bad['modulus']=9;mutations.append(bad)
    bad=deepcopy(valid);bad['rational_base_2_powers'].pop();mutations.append(bad)
    rejected=0
    for corrupt in mutations:
        try:verify_ray_certificate(corrupt)
        except ValueError:rejected+=1
        else:raise AssertionError('corruption accepted')
    def require_normal(n,j):return canonical(n,j)
    for n,j in [(56,11),(496,210),(1420,44)]:
        try:require_normal(n,j)
        except ValueError:rejected+=1
        else:raise AssertionError('weak projection mislabeled exact')
    # Direct necessary coefficient moment omitted by the field model.
    assert 3*(23-9)%97!=0
    modular_cubic=[]
    for p in [7,13,19,31,37,43,61,73,109]:
        assert isprime(p) and p%3==1
        cube_set={pow(a,3,p) for a in range(1,p)}
        assert len(cube_set)==(p-1)//3
        assert (2 in cube_set)==(pow(2,(p-1)//3,p)==1)
        modular_cubic.append([p,pow(2,(p-1)//3,p)])
    return {'status':'PASS','generic_non_B699_model':{'psi':psi,'disc':229,'I':I,'J':J,
            'positive_inverse_coefficients':inverse,'recovered_n':'672/97','recovered_j':'322/97',
            'irreducibility':'Mobius transform of X^3-4X+1, rational roots +-1 rejected.',
            'warning':'A genuine irreducible cubic, NOT a legal B699 input or a projection solution.'},
            'single_active_prime_regression':modular_cubic,'false_omission_models':tests,'radical_counterexample':[r1,r2],
            'rejected_bad_certificates_or_normalizations':rejected,
            'scope':'Exact capability boundary, not a counterexample to B699.'}


def sources():
    root=Path(__file__).resolve().parents[1]
    entries=json.loads((root/'sources/SOURCE_MAP.json').read_text())
    verified=[]
    for x in entries:
        if 'copy' in x:
            p=root/x['copy'];b=p.read_bytes()
            assert len(b)==x['size'] and hashlib.sha256(b).hexdigest()==x['sha256']
            verified.append(x['copy'])
    return {'status':'PASS','verified_original_copies':verified,
            'external_sources':'MIT primary PDFs read with web open/screenshot. Container PDF downloads failed DNS and are not claimed present.'}


if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('suite',choices=['symbolic','ray','local','regress','boundary','sources']);p.add_argument('output')
    a=p.parse_args();data=globals()[a.suite]();dump(a.output,data)
    small={k:v for k,v in data.items() if k in {'status','legal_inputs','units','phi_order','independent_exact_grid_points','rejected_bad_certificates_or_normalizations'}}
    print(a.suite,json.dumps(small,ensure_ascii=False))
