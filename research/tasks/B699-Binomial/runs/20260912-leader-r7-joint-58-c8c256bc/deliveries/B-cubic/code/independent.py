"""Second implementation: no imports of exact.py or generating modules."""
from __future__ import annotations
import argparse,json
from pathlib import Path
from fractions import Fraction
from math import gcd,isqrt

def root3(n):
    if n<0:raise ValueError('negative root input')
    prefix=r=0
    for shift in reversed(range((n.bit_length()+2)//3)):
        prefix=8*prefix+((n>>(3*shift))&7);r*=2
        if (r+1)**3<=prefix:r+=1
    assert r**3<=n<(r+1)**3
    return r

def ordp(n,p):
    if n<=0:raise ValueError('zero/negative valuation')
    t=0
    while n%p==0:n//=p;t+=1
    return t

def vp(n,j,p):
    q=p;out=0
    while q<=n:
        out+=int(j%q>n%q);q*=p
    return out

def norm(n):
    if n<8 or n%4:raise ValueError('illegal normalized row')
    la=3 if (n-1)%3==0 and (n-1)%9!=0 else 1
    mm=(n-2)//2
    mu=3 if mm%3==0 and mm%9!=0 else 1
    de=3 if n%3==0 and n%9!=0 else 1
    v=ordp(n,2);m=n//2**v
    return la,mu,de,v,m

def testrow(n,c):
    la,mu,de,v,m=norm(n)
    if c==256 and not(mu==1 and v%3==1):raise ValueError('R256 domain omitted')
    if c==512 and not(n%9==0 and v%3==1):raise ValueError('R512 domain omitted')
    return c*m**4*(n-1)**3>=de**3*la**3*mu**2*n**4

def check_families(a):
    for rec in a['examples']:
        f=rec['family'];t=rec['parameter']
        if f=='A':
            if t<12 or t%2:raise ValueError('family A domain')
            x=4**((t-2)//2);n=(3*x-1)*2**(3*t+1)
        elif f=='B':
            if t<2:raise ValueError('family B domain')
            n=3*(64**t-1)*(2**13)*(2**18)**t
        elif f=='C':
            if t<1:raise ValueError('family C domain')
            n=(3*2**8*(2**12)**t-27)*2**31*(2**36)**t
        else:raise ValueError('unknown family')
        if rec['n']!=n:raise ValueError('altered family member')
        la,mu,de,v,m=norm(n)
        for key,val in [('m',m),('v',v),('lambda_',la),('mu',mu),('delta',de),('kappa',de**3*la**3*mu**2)]:
            if rec[key]!=val:raise ValueError('wrong normalization')
        for cc in [128,256,512]:
            raw=cc*m**4*(n-1)**3>=de**3*la**3*mu**2*n**4
            if rec['inequality_'+str(cc)]!=raw:raise ValueError('wrong numeric inequality flag')
        if rec['applied_consumer']!=(512 if f=='B' else 256):raise ValueError('wrong consumer domain')
        if testrow(n,128):raise ValueError('not outside OLD row128')
        if not testrow(n,512 if f=='B' else 256):raise ValueError('new row condition failed')
        if f=='B' and testrow(n,256):raise ValueError('not a strict second improvement')
    for rec in a['mixed_examples']:
        n=rec['n'];j=rec['j'];g=gcd(n,j);be=j//g;ga=(n-j)//g
        if (g,be,ga)!=(rec['g'],rec['beta'],rec['gamma']):raise ValueError('wrong canonical ratio')
        if any(be%p for p in [3,5,7,19]) or any(ga%p for p in [11,13,17]):raise ValueError('mixed cofactor witness')
        if rec['cofactor_lower_bounds']!=[1995//19,2431//17]:raise ValueError('wrong cofactor bound')
        p=rec['common_prime']
        if p is not None:
            if p<11 or any(p%d==0 for d in range(2,isqrt(p)+1)):raise ValueError('composite witness')
            vv=[vp(n,3,p),vp(n,j,p)]
            if vv!=rec['valuations'] or min(vv)==0:raise ValueError('carry witness')
            for i in range(3,10):
                if vp(n,i,p)!=rec['transferred_valuations'][str(i)]:raise ValueError('transfer valuation')
    ap=a['AP_nonempty_factor_witness'];L=ap['period'];t=5
    n=(3*2**8*(2**12)**t-27)*2**31*(2**36)**t
    for group,z in [('N_primes',n-1),('K_primes',(n-2)//2)]:
        ps=ap[group]
        if len(ps)!=3 or len(set(ps))!=3:raise ValueError('factor witnesses missing')
        for p in ps:
            if not(p>23 and all(p%d for d in range(2,isqrt(p)+1))):raise ValueError('prime witness')
            if z%p or pow(2,12*L,p)!=1 or pow(2,36*L,p)!=1:raise ValueError('AP coverage')
    return True

def run(root):
    fam=json.loads((root/'families.json').read_text());check_families(fam)
    records=json.loads((root/'projections.json').read_text())['nonempty_exact_projection_records']
    for r in records:
        n=r['n'];j=r['j'];k=n-j;g=gcd(n,j);la,mu,_,_,_=norm(n);N=(n-1)//la;K=(n-2)//(2*mu)
        cs=[gcd(K,j-s) for s in range(3)];R=Fraction(j*k,g*g*N*cs[0]*cs[2]);U=Fraction((j-1)*(k-1),N*cs[1]**2)
        if R.denominator!=1 or U.denominator!=1:raise ValueError('not exact projections')
        h=R.numerator*g*g;rr=Fraction(n*h,2*mu*U)
        if root3(rr.numerator//rr.denominator)!=cs[1]:raise ValueError('cube floor')
        primitive=Fraction((n//g)*R,2*mu*U)
        if root3(primitive.numerator)**3==primitive.numerator and root3(primitive.denominator)**3==primitive.denominator:
            raise ValueError('rational cube unexpectedly admitted')
        reflected=[gcd(K,r['tested_j']-s) for s in range(3)]
        if reflected!=r['tested_C']:raise ValueError('reflection incorrectly normalized')
        if cs!=r['C'] or h!=r['h'] or int(U)!=r['U'] or int(R)!=r['R']:raise ValueError('canonical mismatch')
        for p,a,b in r['full_common_prime_valuations']:
            if (vp(n,3,p),vp(n,j,p))!=(a,b):raise ValueError('nonempty common-prime mismatch')
    # Exhaustive root endpoints independently validate arithmetic utility.
    for r in range(1,1501):
        assert root3(r**3)==r and root3(r**3-1)==r-1 and root3((r+1)**3-1)==r
    # Scalar-only countermodel: keeps all NEW scalar constraints, not the exact full system.
    for t in range(1,9):
        v=6*t+7;n=2**v
        assert norm(n)[:3]==(1,1,1)
        assert 256*(n-1)**3<n**4
        rr=Fraction(n,32)
        assert root3(rr.numerator)**3!=rr.numerator
    return {'status':'PASS','method':'second canonical-gcd/carry/root construction, no generator imports',
            'projection_records':len(records),'family_examples':len(fam['examples']),
            'mixed_examples':len(fam['mixed_examples']),'root_boundary_tests':4500,
            'scalar_only_unbounded_model':{'n':'2^(6t+7), t>=1','g':1,'R':1,'U':16,
              'note':'passes parity, row lower bound and NON-CUBE only; NOT claimed to solve the exact cubic/projection system'}}
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--dir',type=Path,required=True);p.add_argument('--out',type=Path,required=True);a=p.parse_args()
    r=run(a.dir);a.out.parent.mkdir(parents=True,exist_ok=True);a.out.write_text(json.dumps(r,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print('PASS: independent reconstruction, carries, family criteria and scalar-method boundary')
