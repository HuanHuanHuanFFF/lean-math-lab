#!/usr/bin/env python3
"""Standard-library acceptance: completeness, primality, CRT and exact remainders."""
from __future__ import annotations
import argparse, hashlib, json, math, time
from pathlib import Path

TARGET_V = 36
class Invalid(ValueError): pass

def require(ok, message):
    if not ok: raise Invalid(message)

def integer(x): return type(x) is int

def cube_root(n):
    lo, hi = 0, 1
    while hi**3 <= n: hi *= 2
    while hi-lo > 1:
        mid=(lo+hi)//2
        if mid**3 <= n: lo=mid
        else: hi=mid
    return lo

def single_three(x):
    return 3 if x%3==0 and x%9!=0 else 1

def parameters(n):
    lam=single_three(n-1); mu=single_three((n-2)//2); delta=single_three(n)
    return lam,mu,delta,(n-1)//lam,(n-2)//(2*mu)

def expected_domain():
    rows=[]; uniform=0
    for v in range(2,TARGET_V+1):
        top=cube_root((27*((1<<v)+4)-1)//128)
        for m in range(1,top+1,2):
            n=m*(1<<v)
            if n<8: continue
            uniform+=1
            lam,mu,delta,_,_=parameters(n)
            if 128*m**4*(n-1)**3 < delta**3*lam**3*mu**2*n**4:
                rows.append((v,m))
    return rows,uniform

def factor_list(fs, upper, primes):
    require(type(fs) is list and len(fs)<=64,'factor-list size/type')
    product=1;last=1
    for rec in fs:
        require(type(rec) in (list,tuple) and len(rec)==2,'factor record')
        p,e=rec
        require(integer(p) and integer(e) and last<p<=upper and 1<=e<=64,'factor range/order')
        require(p in primes,'unproved factor prime')
        product*=p**e
        require(product<=upper,'factor product exceeds target')
        last=p
    return product

def validate_primes(certs):
    require(type(certs) is dict and len(certs)<=20000,'prime dictionary')
    keys=[]
    for key in certs:
        require(type(key) is str and key.isascii() and key.isdigit() and len(key)<=16,'prime key')
        p=int(key)
        require(str(p)==key and 2<=p<2**50,'prime key range')
        keys.append(p)
    proved=set(); witnesses=0
    for p in sorted(keys):
        rec=certs[str(p)]
        require(type(rec) is dict and set(rec)=={'a','factors'},'prime record schema')
        a,fs=rec['a'],rec['factors']
        if p==2:
            require(a==1 and fs==[],'base prime 2');proved.add(2);continue
        require(integer(a) and 1<a<p,'order witness range')
        require(factor_list(fs,p-1,proved)==p-1,'incomplete factorization of p-1')
        require(pow(a,p-1,p)==1,'Fermat order check')
        for q,e in fs:
            require(math.gcd(pow(a,(p-1)//q,p)-1,p)==1,'full-order gcd check')
            witnesses+=1
        proved.add(p)
    return proved,witnesses

def crt_roots(fs):
    roots=[0];mod=1
    for p,e in fs:
        power=p**e
        inverse=pow(mod,-1,power)
        nxt=[]
        for r in roots:
            nxt.append(r+mod*((-r*inverse)%power))
            nxt.append(r+mod*(((1-r)*inverse)%power))
        mod*=power;roots=nxt
    require(len(roots)==len(set(roots)),'CRT duplication')
    return sorted(roots)

def alpha_allowed(n,j):
    g=math.gcd(n,j);a=n//g;s=0
    while a%2==0:a//=2;s+=1
    return s>=1 and a in (1,3) and (a!=3 or single_three(n)==3)

def validate(data):
    require(type(data) is dict and set(data)=={'version','vmax','rows','primes'},'certificate schema')
    require(data['version']==1 and data['vmax']==TARGET_V,'target theorem mismatch')
    rows=data['rows'];require(type(rows) is list and len(rows)<=10000,'row count/type')
    expected,uniform=expected_domain();actual=[]
    for r in rows:
        require(type(r) is list and len(r)==3,'row record')
        v,m,fs=r
        require(integer(v) and integer(m) and 2<=v<=TARGET_V and 1<=m<=4096 and m%2==1,'row parameter')
        actual.append((v,m))
    require(actual==expected,'row domain is not exactly the complete derived domain')
    proved,pchecks=validate_primes(data['primes'])
    counts={'uniform_rows':uniform,'analytic_exclusions':uniform-len(rows),'certified_rows':len(rows),'crt_roots':0,'legal_first_projection':0,'alpha_shape':0,'both_projections_and_alpha':0,'prime_certificates':len(proved),'prime_order_gcd_checks':pchecks}
    candidates=[]
    for v,m,fs in rows:
        n=m*(1<<v);lam,mu,delta,N,K=parameters(n)
        require(factor_list(fs,N,proved)==N,'row factorization is not N')
        roots=crt_roots(fs);counts['crt_roots']+=len(roots)
        for r in roots:
            require(0<=r<N and r*(r-1)%N==0,'bad first-projection root')
            for t in range(1+lam//2):
                j=r+t*N
                if not 4<=j<=n//2:continue
                counts['legal_first_projection']+=1
                if not alpha_allowed(n,j):continue
                counts['alpha_shape']+=1
                rem=j*(j-1)*(j-2)%K;candidates.append([n,j,rem])
                require(rem!=0,'unexcluded exact-projection candidate')
    counts['candidate_sha256']=hashlib.sha256((json.dumps(candidates,separators=(',',':'))+'\n').encode()).hexdigest()
    counts['max_n']=max(m*(1<<v) for v,m,fs in rows)
    return counts,candidates

def main():
    ap=argparse.ArgumentParser();ap.add_argument('certificate',type=Path);ap.add_argument('--output',type=Path)
    args=ap.parse_args();t=time.monotonic();data=json.loads(args.certificate.read_text())
    counts,candidates=validate(data);result={'status':'PASS',**counts,'seconds':time.monotonic()-t}
    if args.output:args.output.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result))
if __name__=='__main__': main()
