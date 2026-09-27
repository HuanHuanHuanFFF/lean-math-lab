#!/usr/bin/env python3
"""Discovery log only: continued-fraction units for five selected coefficients.
No unit's minimality or unexecuted CAS output is a proof dependency.
"""
from math import isqrt
import json

def unit(D):
    q=isqrt(D)
    if q*q==D:raise ValueError('square discriminant')
    m=0;den=1;a=q;p0,p1=1,a;q0,q1=0,1
    for count in range(10000):
        if p1*p1-D*q1*q1==1:return p1,q1,count
        m=den*a-m;den=(D-m*m)//den;a=(q+m)//den
        p0,p1=p1,a*p1+p0;q0,q1=q1,a*q1+q0
    raise RuntimeError('discovery iteration cap reached')
rows=[]
for D in [39,111,71,159,31]:
    u,v,count=unit(10*D);bound=isqrt((u-1)//(2*D));seeds=[]
    for w in range(bound+1):
        a=10+10*D*w*w;m=isqrt(a)
        if m*m==a and m%10==0:seeds.append([m//10,w])
    rows.append({'D':D,'unit':[u,v],'iterations':count,'norm':u*u-10*D*v*v,
                 'reduced_abs_w_bound':bound,'nonnegative_seeds':seeds,
                 'adopted_excluded_coefficient':D!=31,
                 'note':'discovery; proof completeness supplied separately'})
print(json.dumps(rows,indent=2))
