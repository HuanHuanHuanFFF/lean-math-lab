#!/usr/bin/env python3
"""A second, self-contained certificate replay. No imports from the generator/checker."""
import argparse, hashlib, json, time
from pathlib import Path

def need(x,msg):
    if not x:raise ValueError(msg)
def gcd(a,b):
    while b:a,b=b,a%b
    return abs(a)
def modpow(a,b,m):
    ans=1
    while b:
        if b&1:ans=ans*a%m
        a=a*a%m;b//=2
    return ans

def inverse(a,m):
    aa,bb,x,y=a,m,1,0
    while bb:
        q=aa//bb;aa,bb=bb,aa-q*bb;x,y=y,x-q*y
    need(aa==1,'noncoprime CRT factors');return x%m

def three(x): return 3 if x%9 in (3,6) else 1

def main():
    ap=argparse.ArgumentParser();ap.add_argument('certificate',type=Path);ap.add_argument('--candidates',type=Path,required=True);ap.add_argument('--output',type=Path)
    ar=ap.parse_args();start=time.monotonic();D=json.loads(ar.certificate.read_text());need(D['vmax']==36 and D['version']==1,'theorem')
    proved=set();pc=0
    for key in sorted(D['primes'],key=int):
        p=int(key);rec=D['primes'][key];a=rec['a'];fs=rec['factors']
        if p==2:need(a==1 and fs==[],'2');proved.add(p);continue
        need(1<a<p,'witness range');z=1;last=1
        for q,e in fs:
            need(last<q<p and q in proved and type(e) is int and e>0,'prime recursion');last=q
            z*=q**e
        need(z==p-1,'order factorization');need(modpow(a,z,p)==1,'order multiple')
        for q,e in fs:
            need(gcd(modpow(a,z//q,p)-1,p)==1,'order exactness');pc+=1
        proved.add(p)
    expected=[];uniform=0;maxm=1
    while 128*maxm**3<27*(2**36+4):maxm+=2
    # Different loop order and no cube-root routine.
    for m in range(1,maxm,2):
        for v in range(2,37):
            n=m*2**v
            if n<8 or 128*m**3>=27*(2**v+4):continue
            uniform+=1
            # Residue-only form of delta^3 lambda^3 mu^2.
            residue=n%9
            kappa=1 if residue in (0,1,2) else 9 if residue in (5,8) else 27
            if 128*m**4*(n-1)**3<kappa*n**4:expected.append((v,m))
    rows={}
    for v,m,fs in D['rows']:
        need((v,m) not in rows,'duplicate row');rows[v,m]=fs
    need(set(rows)==set(expected),'complete row domain')
    candidates=[];roots_n=legal=0
    for v,m in expected:
        n=m*2**v;lam=three(n-1);mu=three((n-2)//2);N=(n-1)//lam;K=(n-2)//(2*mu)
        fs=rows[v,m];product=1;powers=[];last=1
        for p,e in fs:
            need(p in proved and last<p and type(e) is int and e>0,'row prime factor');last=p
            q=p**e;product*=q;powers.append(q)
        need(product==N,'row product')
        basis=[(N//q)*inverse(N//q,q)%N for q in powers]
        # Direct subset sums of CRT idempotents, not incremental root lifting.
        residues=[]
        for mask in range(1<<len(powers)):
            r=sum(b for z,b in enumerate(basis) if mask>>z&1)%N
            need(r*(r-1)%N==0,'root');residues.append(r)
        need(len(set(residues))==len(residues),'root bijection');roots_n+=len(residues)
        for r in residues:
            j=r
            while j<=n//2:
                if j>=4:
                    legal+=1;g=gcd(n,j);a=n//g
                    pure=a>=2 and a&(a-1)==0
                    times_three=(n%9 in (3,6) and a%3==0 and a//3>=2 and (a//3)&(a//3-1)==0)
                    if pure or times_three:
                        rem=(j%K)*((j-1)%K)*((j-2)%K)%K
                        need(rem!=0,'unexcluded candidate');candidates.append([n,j,rem])
                j+=N
    frozen=json.loads(ar.candidates.read_text());need(sorted(candidates)==sorted(frozen),'candidate array disagreement')
    result={'status':'PASS','uniform_rows':uniform,'certified_rows':len(rows),'crt_roots':roots_n,'legal_first_projection':legal,'alpha_shape':len(candidates),'both_projections_and_alpha':0,'prime_certificates':len(proved),'prime_order_gcd_checks':pc,'canonical_candidate_sha256':hashlib.sha256((json.dumps(sorted(candidates),separators=(',',':'))+'\n').encode()).hexdigest(),'seconds':time.monotonic()-start}
    if ar.output:ar.output.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result))
if __name__=='__main__':main()
