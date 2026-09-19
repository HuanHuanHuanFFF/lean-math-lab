#!/usr/bin/env python3
"""Bounded falsification probes, NOT a proof or complete NC3 enumeration."""
import math,json,argparse,time

def factor_sieve(limit):
    spf=list(range(limit+1))
    for p in range(2,math.isqrt(limit)+1):
        if spf[p]==p:
            for x in range(p*p,limit+1,p):
                if spf[x]==x: spf[x]=p
    return spf

def fac(n,spf):
    fs={}
    while n>1:
        p=spf[n];e=0
        while n%p==0:n//=p;e+=1
        fs[p]=e
    return fs

def roots01(N,spf):
    roots=[0];mod=1
    for p,e in fac(N,spf).items():
        pe=p**e; iv=pow(mod,-1,pe)
        roots=[r+mod*((v-r)*iv%pe) for r in roots for v in [0,1]]
        mod*=pe
    return roots

def main(limit):
    spf=factor_sieve(limit); examples=[];cnt=0;omega2=[];shaped=[]
    for n in range(8,limit+1,4):
        la=3 if (n-1)%3==0 and (n-1)%9 else 1
        mu=3 if ((n-2)//2)%3==0 and ((n-2)//2)%9 else 1
        N=(n-1)//la;K=(n-2)//(2*mu)
        for r in roots01(N,spf):
            for j in range(r,n//2+1,N):
                if j<4 or j*(j-1)*(j-2)%K:continue
                g=math.gcd(n,j);al=n//g;be=j//g;ga=(n-j)//g
                if be*ga%N: raise AssertionError('first source')
                t=be*ga//N;C=math.gcd(K,t);H=K//C
                a=math.gcd(N,j);b=math.gcd(N,j-1);L=math.gcd(K,j);R=math.gcd(K,j-2)
                # The source slots retain each full prime power; K is odd.
                assert K==L*H*R and C==L*R
                shape=al//(al&-al) in [1,3] and (al//(al&-al)==1 or n%3==0 and n%9!=0)
                row=dict(n=n,j=j,g=g,alpha=al,lam=la,mu=mu,N=N,K=K,t=t,C=C,H=H,a=a,b=b,L=L,R=R,u=t//C,shape=shape)
                cnt+=1
                if len(examples)<10:examples.append(row)
                if shape:shaped.append(row)
                if t< len(spf) and len(fac(t,spf))==2:omega2.append(row)
    return dict(limit=limit,description='two source divisibilities only; no carry and alpha not assumed',count=cnt,examples=examples,omega2=omega2,shaped=shaped)

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--limit',type=int,default=200000);ap.add_argument('--output',required=True);args=ap.parse_args()
    tic=time.monotonic();result=main(args.limit);result['seconds']=time.monotonic()-tic
    with open(args.output,'w') as f:json.dump(result,f,indent=2)
    print(json.dumps({k:result[k] for k in ['limit','count','seconds']}));print('omega2',len(result['omega2']),'shaped',len(result['shaped']));print('first omega2',result['omega2'][:2])
