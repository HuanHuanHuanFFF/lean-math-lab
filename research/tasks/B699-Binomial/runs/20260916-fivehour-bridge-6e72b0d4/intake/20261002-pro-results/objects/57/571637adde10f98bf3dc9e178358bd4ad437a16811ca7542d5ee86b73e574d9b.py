"""Bounded regression of new identities, NOT a completed NC search or a height proof.
A: (k,u,z,a). B: (k,u,d,P), original Bezout arithmetic and independent source stripping.
"""
import hashlib,json
from math import gcd,lcm
from pathlib import Path
from arith import restore,domain,source0,source2,capacity
RANGE={'k_min':7,'k_max':22,'z_min':3,'z_max':48}

def line(r,T0,T2):
    keys=['k','u','z','epsilon','a','d','P','Q','n','j']
    return ','.join(map(str,[r[x] for x in keys]+r['C']+[T0,T2]))+'\n'

def finish(it):
    h=hashlib.sha256();cnt=zero=negative=small_d=t0_pass=t2_pass=0
    for r,T0,T2 in it:
        h.update(line(r,T0,T2).encode());cnt+=1
        k,u,z,a,d,P,n,j=[r[x] for x in ('k','u','z','a','d','P','n','j')]
        C=r['C'];e=r['epsilon']
        assert a>0
        if d<k:small_d+=1
        if e==-1:
            assert C[1]>0 and C[2]>0
            negative+=C[0]<0
        else: assert min(C)>0
        t0_pass+=j%T0==0
        if C[0]==0:
            zero+=1;assert e==-1 and a%u==0
            v=a//u;A=z*v-1;B=k*k*P-u*d
            assert v>=3 and v%2 and d>2*k and k<3*u
            assert n-2==A*B and j==u*r['Q']*A and B%2
            assert gcd(B,k*u*d)==1
            assert B>(2*u*d+1)*((k-2*u)*d-1)
        else:
            L=capacity(C)
            if e==-1:assert L*u*u<2*k**6*z**3
            else:assert 4*L*u*u<15*k**6*z**3
            assert T2*583443*u**4>20000*k**5*z**4
            if L%T2==0:
                t2_pass+=1
                assert (10000*z<583443*k*u*u if e==-1 else 16000*z<1750329*k*u*u)
                assert n<10**7*k**13
    return {'scope':RANGE,'rows':cnt,'zero_C0':zero,'negative_C0_nonzero':negative,
            'd_less_than_k':small_d,'T0_pass':t0_pass,'nonzero_T2_capacity_pass':t2_pass,
            'stream_sha256':h.hexdigest(),'role':'REGRESSION_ONLY_NOT_GLOBAL_CLOSURE'}

def enum_A():
    for k in range(RANGE['k_min'],RANGE['k_max']+1):
        for u in range(1,(k-1)//2+1):
            for z in range(RANGE['z_min'],RANGE['z_max']+1):
                if (k*z-1)%u:continue
                d=(k*z-1)//u
                if not(d>2*z and k<2*d):continue
                H=max(d,k)
                for e in (-1,1):
                    lo=max(0,(d*H//2+1-e*k+d-1)//d)
                    hi=min(d-z,(d*H-1-e*k)//d)
                    for a in range(lo,hi+1):
                        r=restore(k,u,z,a,e)
                        if domain(r):yield r,source0(r['n']),source2(r['n'])

def enum_B():
    for k in range(RANGE['k_min'],RANGE['k_max']+1):
        for u in range(1,(k-1)//2+1):
            lowd=(k*RANGE['z_min']-1+u-1)//u
            highd=(k*RANGE['z_max']-1)//u
            for d in range(lowd,highd+1):
                if (d*u+1)%k:continue
                z=(d*u+1)//k
                if not(RANGE['z_min']<=z<=RANGE['z_max'] and d>2*z and k<2*d):continue
                H=max(d,k)
                for e in (-1,1):
                    lo=max(5,d*H//2+1)
                    hi=min(d*H-1,d*(d-z)+e*k)
                    start=lo+(e*k-lo)%d
                    for P in range(start,hi+1,d):
                        a=(P-e*k)//d;Q=k*P+d;n=P*Q+1
                        if P%2==0 or Q%2==0 or n%4 or Q>=P*P or a+z<0:continue
                        X=u*P+a+z;Y=z*a+e*u;j=Q*Y+(1+e)//2
                        if not(4<=j<=n//2 and j==P*X+(1-e)//2):continue
                        F=n-2
                        if e==-1:
                            Vs=[Y,X,Q-X];As=[u*z,u*z,-(k-u)*((k-u)*z-1)]
                            Bs=[k*k-u*d*Q,k-u*d*P,u*a*(k-u)*d*d-k*k*((k-u)*z-1)]
                        else:
                            Vs=[X,Y,2*Q-X];As=[-u*z,-u*z,-(2*k-u)*((2*k-u)*z-2)]
                            Bs=[u*d*P+k,u*d*Q+k*k,u*a*(2*k-u)*d*d+k*k*((2*k-u)*z-2)]
                        C=[A*F+B*V for A,B,V in zip(As,Bs,Vs)]
                        T0=n
                        while T0%2==0:T0//=2
                        t=T0;v3=0
                        while t%3==0:t//=3;v3+=1
                        if v3==1:T0//=3
                        T2=F//2;t=T2;v3=0
                        while t%3==0:t//=3;v3+=1
                        if v3==1:T2//=3
                        r=dict(k=k,u=u,z=z,epsilon=e,a=a,d=d,P=P,Q=Q,n=n,j=j,C=C)
                        yield r,T0,T2

if __name__=='__main__':
    A=finish(enum_A());B=finish(enum_B());assert A==B
    p=Path(__file__).resolve().parents[1]/'certificates/diagnostic.json'
    p.write_text(json.dumps(A,indent=2)+'\n')
    print(json.dumps(A,ensure_ascii=False))
