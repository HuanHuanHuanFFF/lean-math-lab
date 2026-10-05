"""Exact arithmetic on the SAME restored (n,j). Python standard library only."""
from math import gcd,lcm,isqrt
from functools import lru_cache

def valuation(n,p):
    assert n>0 and p>=2
    e=0
    while n%p==0:n//=p;e+=1
    return e

def odd(n):
    assert n>0
    return n//(n&-n)

def iso3(n):return 3 if n%3==0 and n%9!=0 else 1

def source0(n):return odd(n)//iso3(n)

def source2(n):
    assert n%4==0
    return (n-2)//(2*iso3(n-2))

@lru_cache(None)
def prime(p):
    if p<2:return False
    if p%2==0:return p==2
    for d in range(3,isqrt(p)+1,2):
        if p%d==0:return False
    return True

def lucas(n,j,p):
    while n or j:
        if j%p>n%p:return False
        n//=p;j//=p
    return True

def vf(n,p):
    r=0
    while n:n//=p;r+=n
    return r

def choose_v(n,j,p):return vf(n,p)-vf(j,p)-vf(n-j,p)

def digitsum(n,p):
    r=0
    while n:r+=n%p;n//=p
    return r

def choose_v_digits(n,j,p):
    s=digitsum(j,p)+digitsum(n-j,p)-digitsum(n,p)
    assert s%(p-1)==0
    return s//(p-1)

def restore(k,u,z,a,epsilon):
    assert epsilon in (-1,1) and u>=1 and (k*z-1)%u==0
    d=(k*z-1)//u
    P=d*a+epsilon*k;Q=k*P+d;X=u*P+a+z;Y=z*a+epsilon*u
    n=P*Q+1;j=P*X+(1-epsilon)//2
    if epsilon==-1:
        C=[k*a-(k+u)*z+1,k*a+(k-u)*z,(k-u)*(2*k-u)*z-k*u*a-(2*k-u)]
    else:
        C=[k*a+(k+u)*z,k*a-(k-u)*z+1,(k-u)*(2*k-u)*z+k*u*a-2*(k-u)]
    return dict(k=k,u=u,z=z,a=a,epsilon=epsilon,d=d,P=P,Q=Q,X=X,Y=Y,n=n,j=j,C=C)

def domain(r):
    k,u,z,a,e=(r[x] for x in ('k','u','z','a','epsilon'))
    d,P,Q,n,j=(r[x] for x in ('d','P','Q','n','j'))
    return (k>=7 and u>=1 and 2*u<k and z>=3 and d*u==k*z-1
        and d>2*z and k<2*d and 0<=a+z<=d and 5<=P<Q
        and P%2==1 and Q%2==1 and n%4==0 and Q<P*P
        and 0<d<P and 0<k<P and P<d*max(d,k)<2*P
        and 4<=j<=n//2 and j==Q*r['Y']+(1+e)//2)

def capacity(C):
    assert all(c!=0 for c in C), 'Zero slot requires the factor proof, not finite LCM.'
    return odd(lcm(*(abs(c) for c in C)))

def fixed_k_bounds(k):
    assert isinstance(k,int) and k>=7
    branches=[]
    for u in range(1,(k-1)//2+1):
        if gcd(k,u)!=1:continue
        branches.append({'u':u,'negative_z_max':(583443*k*u*u-1)//10000,
                         'positive_z_max':(1750329*k*u*u-1)//16000})
    return {'k':k,'branches':branches,'strict_n_bound':10**7*k**13,
            'strict_P_bound':3025*k**6,'strict_d_bound':55*k**3,
            'finite_tail_executed':False,
            'status':'FINITE_BOUNDS_ONLY_NOT_CLOSURE'}

def assess(r):
    assert domain(r),'Outside the theorem domain.'
    C=r['C'];n,j=r['n'],r['j'];T0=source0(n);T2=source2(n)
    out={'T0':T0,'T2':T2,'T0_divides_original_j':j%T0==0,
         'all_complete_T2_slots':(j*(j-1)*(j-2))%T2==0,
         'zero_C':any(x==0 for x in C)}
    if out['zero_C']:
        assert r['epsilon']==-1 and C[0]==0 and C[1]>0 and C[2]>0
        out.update(reason='GENERAL_ZERO_FACTOR_CONTRADICTION',pair_common3=True)
    else:
        L=capacity(C)
        out.update(Lambda=L,T2_divides_Lambda=L%T2==0)
        high=(10000*r['z']>=583443*r['k']*r['u']**2 if r['epsilon']==-1
              else 16000*r['z']>=1750329*r['k']*r['u']**2)
        out['in_new_high_consumer']=high
        reject=high or L%T2!=0 or j%T0!=0 or not out['all_complete_T2_slots']
        out.update(pair_common3=reject,
                   reason='ORIGINAL_SOURCE_CONTRADICTION' if reject else 'NOT_DECIDED')
    out['row_status']='CONDITIONAL_ON_CERTIFIED_DISTINCT_COMPLETE_P_Q_POWERS'
    return out
