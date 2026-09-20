#!/usr/bin/env python3
"""Independent endpoint: scan the PROVED P range instead of enumerating divisors.
Regression witnesses use a sieve and base-p carries, not integer binomials.
No imports from primary.py or identities.py.
"""
from __future__ import annotations
import hashlib,json,math,sys
from pathlib import Path


def main(path: str) -> None:
    a=json.loads(Path(path).read_text())
    assert a['schema']=='B699-SATURATED-SQUARE-SLOTS-v1'
    assert a['scope']=={'i':3,'X':'positive even','slot_values':[0,1,2],
                       'isolated_3':'remove 3 exactly when v3=1',
                       'negative_dominance_constant':542,'negative_dominance_exponent':5,
                       'R7_changed':False,'Lean':False}
    ranges=[[-1,0,1,17],[-1,1,1,8],[-1,2,1,35],
            [1,0,1,21],[1,1,1,10],[1,2,-3,26]]
    assert a['endpoint']['ranges']==ranges
    zeros=[]; templates=[]; rows=[]
    for e,c,lo,hi in ranges:
        for t in range(lo,hi+1):
            # Expanded eliminants; do not share factor/product implementation.
            if c==0:d=4*t**3-45*t*t+81*t
            elif c==1:d=4*t*t+9*t
            else:d=4*t**3-387*t*t+12393*t-131220
            if d==0:zeros.append([e,c,t]);continue
            templates.append([e,c,t,d])
            # R=3P+2e <= 3|d| follows from R/iso3(R) | d.
            bound=(3*abs(d)-2*e)//3
            for p in range(3,bound+1,2):
                r=3*p+2*e
                rho=3 if r%3==0 and r%9!=0 else 1
                if d%(r//rho):continue
                if c==0:disc=(81+18*t)*p*p+e*(108+12*t)*p+36+t
                elif c==1:disc=(81-18*t)*p*p+e*(108-12*t)*p+36-t
                else:disc=(729-18*t)*p*p+e*(540-12*t)*p+72-t
                root=None if disc<0 else math.isqrt(disc)
                assert root is None or root*root<disc<(root+1)*(root+1)
                rows.append([e,c,t,p,r,rho,d,disc,root])
    rows.sort()
    assert a['endpoint']['zero_exceptions']==zeros==[[-1,0,9],[-1,2,27],[1,0,9]]
    assert a['endpoint']['templates']==templates
    assert a['endpoint']['candidate_rows']==rows
    stats={str(e):{'templates':sum(z[0]==e for z in templates),
                   'candidate_rows':sum(z[0]==e for z in rows),
                   'square_discriminants':0} for e in [-1,1]}
    assert a['endpoint']['statistics']==stats
    check_diagnostics(a['diagnostics'])
    check_rows(a['regression'])
    assert set(a)=={'schema','scope','endpoint','diagnostics','regression'}
    print('PASS_INDEPENDENT_PROVED_RANGE_AND_COMPLETE_CARRIES')
    print(json.dumps(stats,sort_keys=True))


def carry(n:int,j:int,p:int)->int:
    k=n-j; c=0; total=0
    while j or k or c:
        c=(j%p+k%p+c)//p
        total+=c;j//=p;k//=p
    return total


def check_diagnostics(d:dict)->None:
    p=63041;b=59881;x=3*p-1;n=2*x*x;j=b*p
    z=x*x-1;K=z//(3 if z%3==0 and z%9!=0 else 1)
    assert d=={'weak_first_window':{'P':p,'b':b,'X':x,'n':n,'j':j,
                   'N_remainder':0,'K_remainder':j*(j-1)*(j-2)%K,
                   'actual_gcd':math.gcd(n,j),'witness':11},
               'full_3_power':{'n':128,'j':4,'layer':9,'n_residue':2,'j_residue':4},
               'original_endpoints':{'n8_j4_witness':7,'n32_all_4_to_16_witness':31}}
    assert j*(j-1)%(n-1)==0 and 4<=j<=n//2 and j%p==0
    assert j*(j-1)*(j-2)%K!=0
    assert carry(n,3,11)>0 and carry(n,j,11)>0
    assert carry(128,3,3)>0 and carry(128,4,3)>0
    assert carry(8,3,7)>0 and carry(8,4,7)>0
    assert all(carry(32,j,31)>0 for j in range(3,17))
    # Infinite weak Pell shell recurrence and its preserved norm (diagnostic only).
    u,v=13,4
    for _ in range(4):
        assert u*u-11*v*v==-7 and (u+20)%33==0
        u,v=199*u+660*v,60*u+199*v


def check_rows(rows:list[dict])->None:
    wanted=[(p,e) for p in [3,5,7,9,11,25] for e in [-1,1]]
    assert [(z['P'],z['sign']) for z in rows]==wanted
    limit=max(2*(3*p+e)**2 for p,e in wanted)
    sieve=bytearray(b'\x01')*(limit+1);sieve[:2]=b'\x00\x00'
    for d in range(2,math.isqrt(limit)+1):
        if sieve[d]:sieve[d*d::d]=b'\x00'*(((limit-d*d)//d)+1)
    primes=[d for d in range(3,limit+1,2) if sieve[d]]
    for row in rows:
        p,e=row['P'],row['sign'];n=2*(3*p+e)**2
        # Use independent full carries even to select the source prime set.
        ps=[q for q in primes if q<=n and carry(n,3,q)>0]
        ws=[]
        for j in range(4,n//2+1):
            w=next((q for q in ps if carry(n,j,q)>0),None)
            assert w is not None
            ws.append(w)
        expect={'P':p,'sign':e,'n':n,'j_min':4,'j_max':n//2,'witnesses':ws,
                'sha256':hashlib.sha256(json.dumps(ws,separators=(',',':')).encode()).hexdigest()}
        assert row==expect

if __name__=='__main__':
    if len(sys.argv)!=2:raise SystemExit('usage: independent.py certificate.json')
    try:main(sys.argv[1])
    except (AssertionError,KeyError,ValueError,TypeError,IndexError) as e:
        raise SystemExit('REJECT: '+type(e).__name__+' '+str(e))
