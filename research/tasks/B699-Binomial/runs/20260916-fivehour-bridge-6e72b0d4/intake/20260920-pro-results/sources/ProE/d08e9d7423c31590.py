#!/usr/bin/env python3
"""Checker A: exact integer coefficient arithmetic, complete tiny endpoints."""
import json,sys
from pathlib import Path
from math import prod,isqrt
from fractions import Fraction
from build_data import build_payload,mul,power,sub,val,phi
from consumer import evaluate

def require(c,msg):
    if not c:raise ValueError(msg)
def prime(p):return p>=2 and all(p%d for d in range(2,isqrt(p)+1))

def check(path):
    data=json.loads(Path(path).read_text())
    require(data==build_payload(),'certificate differs from exact derived coefficients/contract')
    p=data['polynomials']
    require(mul(mul(p['A'],p['B']),mul(p['C'],p['D']))==p['M4'],'four blocks')
    require(mul(p['M4'],p['T'])==p['M8'],'five blocks')
    for name in('f_shift2','g_shift2'):require(all(c>0 for c in p[name]),'positivity')
    for ep in data['endpoints']:
        fs=ep['complete_odd_powers']
        require(all(prime(a) for a in fs) and len(fs)==len(set(fs)),'endpoint primes')
        require(prod(fs)==ep['M']==ep['x']**ep['D']-1,'endpoint product')
        require(sum(a>=11 for a in fs)==ep['count_at_least_11']<2,'endpoint sources')
    for n in(20,28):
        ps=[a for key,a in p.items() if key.startswith(f'Phi_{n}_')]
        prodp=[1]
        for a in ps:prodp=mul(prodp,a)
        require(prodp==[-1]+[0]*(n-1)+[1],'cyclotomic factorization')
    c=data['collision5'];a=c['M'];w=1
    while a%5==0:w*=5;a//=5
    require(w==25==c['complete_5_power'],'full exceptional valuation')
    require(val(p['Phi_20_4'],2)==5 and val(p['Phi_20_20'],2)==205,'split 5')
    for r in data['joint_examples']:
        require(r['phi']==phi(r['S']) and r['gap']>=14,'joint examples')
    for r in data['consumer_cases']:
        got=evaluate(r['s'],r['c_alpha'],r['S_hint'])
        require(got['theorems']==r['expected'],'consumer condition')
        if got['theorems']:require('CONDITIONALLY' in got['status'],'scope loss')
    # Exact constant inequalities underlying the infinite proof.
    require(2**14==4*16**3,'regular pair constant')
    require(256*5**3<2**15<=2**19,'single 5 constant')
    require(Fraction(56,3)>18,'integer E5>=19')
    require(7*31>=176,'large exceptional prime threshold')
    for ell,row in((5,[4,32,4,500]),(7,[2,32,8,1372])):
        require(8**row[0]>=row[1] and 8**row[2]>=row[3],'special small kernel')
    w=data['mod9_witness'];P,Q,nu,v,h=[w[k] for k in('P','Q','nu','v','h')]
    require((P-Q-h*v)%9==(h*Q-P-2*nu)%9==(v*nu*nu-P*Q*Q+1)%9==0,'mod9 witness')
    require((P*Q*nu+2)%9==3,'mixed3 witness')
    return {'status':'PASS_EXACT_JOINT_CYC_CHECKS','polynomial_records':len(p),
            'endpoint_count':len(data['endpoints']),'consumer_cases':len(data['consumer_cases'])}

if __name__=='__main__':
    try:
        result=check(sys.argv[1] if len(sys.argv)>1 else Path(__file__).parent/'certificates/certificate.json')
    except Exception as exc:
        print('REJECT: '+str(exc),file=sys.stderr);raise SystemExit(1)
    print(json.dumps(result,sort_keys=True))
