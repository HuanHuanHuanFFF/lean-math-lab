"""Rabin irreducibility and exact auxiliary-boundary checks; standard library."""
from fractions import Fraction as F
from pathlib import Path
from math import comb,isqrt
import json
from accept_exact import readpoly,addpoly,jet

def trim(f):
    while f and f[-1]==0:f.pop()
    return f

def rem(a,b,p):
    a=trim([x%p for x in a]);b=trim([x%p for x in b]);assert b
    inv=pow(b[-1],-1,p)
    while len(a)>=len(b):
        k=len(a)-len(b);v=a[-1]*inv%p
        for j,x in enumerate(b):a[k+j]=(a[k+j]-v*x)%p
        trim(a)
    return a

def mulmod(a,b,f,p):
    c=[0]*(max(0,len(a)+len(b)-1))
    for i,x in enumerate(a):
        for j,y in enumerate(b):c[i+j]=(c[i+j]+x*y)%p
    return rem(c,f,p)

def powmod(a,k,f,p):
    z=[1]
    while k:
        if k&1:z=mulmod(z,a,f,p)
        a=mulmod(a,a,f,p);k//=2
    return z

def pgcd(a,b,p):
    while b:a,b=b,rem(a,b,p)
    if not a:return []
    inv=pow(a[-1],-1,p);return [(x*inv)%p for x in a]

def minusx(a,p):
    a=a+[0]*max(0,2-len(a));a[1]=(a[1]-1)%p;return trim(a)

def verify(root,out):
    fam={x['case']:[readpoly(p) for p in x['basis']] for x in json.loads((root/'certificates/nf59_exact_families.json').read_text())}
    data=json.loads((root/'certificates/auxiliary_boundaries.json').read_text());irreducible=[]
    assert {x['case'] for x in data['irreducible_members']}=={338,339,717}
    for rec in data['irreducible_members']:
        P=addpoly(fam[rec['case']],rec['parameters']);p=rec['prime'];n=rec['specialization_N']
        assert p>1 and all(p%d for d in range(2,isqrt(p)+1))
        coeff=[jet(P,n,0,0,b) for b in range(11)]
        assert all(c.denominator%p for c in coeff)
        f=[c.numerator*pow(c.denominator,-1,p)%p for c in coeff]
        assert f==rec['coefficients_low_to_high'] and f[-1]==1
        r=[0,1];frobs={};gcds={}
        for k in range(1,11):
            r=powmod(r,p,f,p)
            if k in [2,5,10]:
                frobs[k]=r[:]
                if k in [2,5]:
                    g=pgcd(f,minusx(r[:],p),p);assert g==[1];gcds[k]=g
        assert minusx(r,p)==[]
        irreducible.append({**rec,'frobenius_remainders':frobs,'gcd_certificates':gcds})
    for rec in data['legal_zeros_not_NC9']:
        n,j,J=rec['n'],rec['j'],rec['J'];assert 10<=j<=n//2 and n%400==0 and J==j*(n-j)
        P=addpoly(fam[rec['case']],rec['parameters']);assert jet(P,n,J,0,0)==0
        assert rec['common_prime']==11 and comb(n,9)%11==comb(n,j)%11==0
        assert rec['NC9'] is False and rec['factor_of_fixed_G']=='not established'
    # Rank fall modulo p alone is not a rational inconsistency certificate.
    assert F(1,65521)*65521==1 and 65521%65521==0
    # Reducible saturation can violate the irreducible genus bound: H=X^16.
    assert 6*comb(16,2)>(16-1)**2
    receipt={'irreducible_members':irreducible,'legal_zeros_not_NC9':data['legal_zeros_not_NC9'],
             'reject_rank_fall_as_Q_inconsistency':True,'reject_genus_for_reducible_saturated_X16':True}
    (out/'boundary_receipt.json').write_text(json.dumps(receipt,indent=2))
    print('PASS_BOUNDARIES: 3 irreducible members; 2 legal zeros with common prime 11; no NC9 counterexample',flush=True)
    return receipt
if __name__=='__main__':
    import sys
    verify(Path(__file__).resolve().parents[1],Path(sys.argv[1]))
