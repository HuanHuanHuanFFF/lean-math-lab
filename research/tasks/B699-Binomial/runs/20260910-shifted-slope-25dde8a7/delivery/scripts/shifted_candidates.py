#!/usr/bin/env python3
"""Complete candidates for proved necessary conditions with shifted numerator b<=B.
This generator does not by itself certify exclusion of its candidates.
"""
import argparse, json, math, time
from pathlib import Path

def sieve_spf(N):
    spf=list(range(N+1))
    for p in range(2,math.isqrt(N)+1):
        if spf[p]==p:
            for x in range(p*p,N+1,p):
                if spf[x]==x: spf[x]=p
    return spf

def divisors(x,spf):
    assert x>0
    d=[1]
    while x>1:
        p=spf[x]; powers=[]; q=1
        while x%p==0:
            x//=p; q*=p; powers.append(q)
        d += [z*q for z in d[:] for q in powers]
    return d

def generate(B):
    start=time.time(); spf=sieve_spf(6*B**3+36*B**2)
    records=[]; counts={}
    for s in (0,1):
        for b in range(1,B+1):
            c=0; umax=(36 if s==0 else 32)*b*b-1
            for u in range(1,umax+1):
                v=u+6*b**3 if s==0 else u-6*b**3
                if v==0:
                    # The accompanying proof excludes this branch (b=1,a=g=3,n=10).
                    continue
                for a in divisors(abs(v),spf):
                    if a<2*b or (s==1 and a==2*b) or math.gcd(a,b)!=1: continue
                    R=6*b*(a-b)*(2*a-b) if s==0 else 6*b*(a*a-b*b)
                    if (R+u)%(u*a): continue
                    g=(R+u)//(u*a)
                    n=g*a+1; j=g*b+s
                    if not(n%4==0 and 3<j<=n//2): continue
                    if 3*(g*b+(1 if s else -1))%a: continue
                    t=3*(g*b+(1 if s else -1))//a
                    assert t>0 and u*t < (36 if s==0 else 32)*b*b
                    assert u*(n-2)==R
                    records.append(dict(s=s,b=b,a=a,g=g,n=n,j=j,u=u,t=t))
                    c+=1
            counts[f'{s}:{b}']=c
    records.sort(key=lambda r:(r['s'],r['b'],r['n'],r['j']))
    return {'B':B,'records':records,'counts':counts,'elapsed_seconds':time.time()-start}
if __name__=='__main__':
    ap=argparse.ArgumentParser(); ap.add_argument('--B',type=int,default=32); ap.add_argument('--output',type=Path,required=True)
    args=ap.parse_args(); ans=generate(args.B); args.output.write_text(json.dumps(ans,indent=2)+'\n')
    print(json.dumps({'B':ans['B'],'records':len(ans['records']),'unique_triples':len({(r['n'],r['j']) for r in ans['records']}),'max_n':max((r['n'] for r in ans['records']),default=None),'by_s':{str(s):sum(r['s']==s for r in ans['records']) for s in (0,1)},'elapsed_seconds':ans['elapsed_seconds'],'b1':[r for r in ans['records'] if r['b']==1]},indent=2))
