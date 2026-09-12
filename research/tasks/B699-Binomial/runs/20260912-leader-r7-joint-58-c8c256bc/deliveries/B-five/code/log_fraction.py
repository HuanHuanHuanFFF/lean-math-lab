"""Rational-series verifier of the two nonhomogeneous logarithm certificates.
No floating-point values participate in acceptance.
"""
from fractions import Fraction as F
from math import isqrt
from functools import lru_cache
import argparse,json

@lru_cache(None)
def base_log(x):
    assert 1 <= x <= 2
    z=(x-1)/(x+1); z2=z*z; power=z; total=F(0)
    terms=100
    for k in range(terms):
        total+=2*power/(2*k+1);power*=z2
    tail=2*power/((2*terms+1)*(1-z2))
    return total,total+tail

def logq(x):
    assert x>0
    k=0
    while x>=2:x/=2;k+=1
    while x<1:x*=2;k-=1
    a,b=base_log(x);c,d=base_log(F(2))
    return (a+k*c,b+k*d) if k>=0 else (a+k*d,b+k*c)

def logi(a,b):return logq(a)[0],logq(b)[1]
def divi(a,b):
    assert b[0]>0 and a[0]>=0
    return a[0]/b[1],a[1]/b[0]

def main():
    ap=argparse.ArgumentParser();ap.add_argument('output');args=ap.parse_args()
    Q=1<<512; d=isqrt(195*Q*Q)
    assert d*d<=195*Q*Q<(d+1)*(d+1)
    s0,s1=F(d,Q),F(d+1,Q)
    L2=logq(F(2));tau=divi(logi(14+s0,14+s1),L2)
    p=7881286306482578204223549622013
    q=1640051588106112590258959690122
    eps=F(6,10**31)
    err=(q*tau[0]-p,q*tau[1]-p)
    assert -eps<err[0]<=err[1]<eps
    shifts=[]
    for (x,y),r in zip([(16,1),(29,2)],[335768026229218981514847271425,1854306220294895932212290715720]):
        mu=divi(logi((x+y*s0)/26,(x+y*s1)/26),L2)
        lo,hi=q*mu[0]-r,q*mu[1]-r
        assert (F(3,8)<lo<=hi<F(1,2)) or (-F(1,2)<lo<=hi<-F(3,8))
        shifts.append({'seed':[x,y],'nearest_integer':str(r),'sign':1 if lo>0 else -1,'distance_bounds':['3/8','1/2']})
    M=2**96
    assert M*eps < F(1,8)
    assert 4*q < 27**22
    coefficient=384*96**11
    assert coefficient < 2**82 and 96*2**82 < 2**96
    assert F(8,3)**8 > 1560 and F(8,3)**4 > 28
    out={'method':'exact Fraction log series, 100 terms and geometric tail; sqrt enclosure 512 bits',
         'p':str(p),'q':str(q),'error_bound':'6/10^31','pell_index_bound':22,'initial_bound_bits':96,
         'shifts':shifts,'gap_bound':'1/4','external_coefficient':str(coefficient),
         'external_coefficient_upper_power':82,'status':'PASS'}
    open(args.output,'w').write(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print('PASS fraction intervals: 2 shifts; Pell index <22')
if __name__=='__main__':main()
