"""Examples + exact fixed constants for symbolically proved infinite row families."""
from __future__ import annotations
import argparse,json
from pathlib import Path
from fractions import Fraction
from math import gcd,isqrt,lcm
from exact import row_data,row_test,vp_choose

def A(a):
    if a<12 or a%2:raise ValueError('even a>=12 required')
    return (3*2**(a-2)-1)*2**(3*a+1)
def B(t):
    if t<2:raise ValueError('t>=2 required')
    return 3*(2**(6*t)-1)*2**(18*t+13)
def C(t):
    if t<1:raise ValueError('t>=1 required')
    a=12*t+10
    return 3*(2**(a-2)-9)*2**(3*a+1)

def prime(p):
    return p>=2 and all(p%d for d in range(2,isqrt(p)+1))

def mixed_sample(t):
    n=C(t);d=row_data(n);alpha=1<<d['v'];m=d['m']
    E=2431;D=1995
    b=D*((alpha*pow(D,-1,E))%E);period=D*E
    if b%2==0:b+=period
    period*=2
    beta=b+((alpha//3-b)//period)*period
    gamma=alpha-beta;j=m*beta
    assert 4<=j<n//2 and gcd(n,j)==m and beta%D==0 and gamma%E==0
    assert gcd(beta,alpha)==1
    assert beta>2**20
    p=next((p for p in range(11,2001,2) if prime(p) and vp_choose(n,3,p)>0 and vp_choose(n,j,p)>0),None)
    result={'t':t,'n':n,'j':j,'g':m,'alpha':alpha,'beta':beta,'gamma':gamma,
            'beta_forced_primes':[3,5,7,19],'gamma_forced_primes':[11,13,17],
            'cofactor_lower_bounds':[105,143],'row128_excludes':row_test(n,128),
            'row256_excludes':row_test(n,256),'gcd_Cn3_105':gcd(n*(n-1)*(n-2)//6,105),
            'small_prime_probe_limit':2000,'common_prime':p}
    if p is not None:
        result['valuations']=[vp_choose(n,3,p),vp_choose(n,j,p)]
        result['transferred_valuations']={str(i):vp_choose(n,i,p) for i in range(3,10)}
        assert min(result['transferred_valuations'].values())>0
    return result

def run():
    assert Fraction(2)*Fraction(5,2)**3*Fraction(7,8)-27==Fraction(11,32)
    assert Fraction(4)*Fraction(2,3)**3*Fraction(7,8)-1==Fraction(1,27)
    examples=[]
    for label,domain,fn in [('A',range(12,21,2),A),('B',range(2,7),B),('C',range(1,6),C)]:
        for u in domain:
            n=fn(u);d=row_data(n)
            assert d['v']>=37 and d['v']%3==1 and d['mu']==1
            assert not row_test(n,128)
            if label=='B':
                assert n%9==0 and not row_test(n,256) and row_test(n,512)
            else:assert row_test(n,256)
            if label=='C':
                assert d['v']%2==1 and n%9==6 and n%5==3 and n%7==5 and n%17 in (5,15)
                assert gcd(n*(n-1)*(n-2)//6,105)==1
            examples.append({'family':label,'parameter':u,**d,'inequality_128':row_test(n,128),
                             'inequality_256':row_test(n,256),'inequality_512':row_test(n,512),
                             'applied_consumer':512 if label=='B' else 256})
    # Optional exact AP witness: >=3 prime factors in EACH N,K, with no large factoring.
    psN=[107,191,2767];psK=[131,307,5683]
    assert all(prime(p) for p in psN+psK)
    period=lcm(*(p-1 for p in psN+psK))
    n=C(5)
    residues=[]
    for p in psN+psK:
        assert pow(2,12*period,p)==1 and pow(2,36*period,p)==1
        val=n-1 if p in psN else (n-2)//2
        assert val%p==0
        residues.append([p,pow(2,12*period,p),val%p])
    return {'status':'PASS','proof_constants':{'A_C_margin':'11/32','B_margin':'1/27'},
            'examples':examples,'mixed_examples':[mixed_sample(1),mixed_sample(5)],
            'AP_nonempty_factor_witness':{'t':f'5+{period}z, z>=0','period':period,
                'N_primes':psN,'K_primes':psK,'period_checks':residues},
            'scope':'samples verify implementation; unbounded families and AP coverage proved symbolically; no comparison to unavailable D bands'}
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);a=p.parse_args()
    r=run();a.out.parent.mkdir(parents=True,exist_ok=True);a.out.write_text(json.dumps(r,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print('PASS: 3 infinite-family consumers, exact constants, 2 mixed examples; paper proof supplies unbounded coverage')
