#!/usr/bin/env python3
"""Evaluate paper-proved sufficient conditions. NOT a Lean certificate.

Usage: python3 code/consumer.py N I J
Only returns 'proved_common' or 'not_covered'; no failure is a counterexample.
"""
from math import gcd,prod
import json,sys

def small(n,i):
    x=n;s=1
    for p in(2,3,5,7):
        if p<i:
            while x%p==0:x//=p;s*=p
    if i in(5,7) and x%i==0 and x%(i*i)!=0:s*=i
    return s

def small_gain(w,i):
    ans=1
    for p in(2,3,5,7):
        if p<i:
            while w%p==0:w//=p;ans*=p
    return ans

def assess(n:int,i:int,j:int)->dict:
    if not (i in(5,6,7,8) and i<j and 2*j<=n):
        raise ValueError('Require i in {5,6,7,8}, i<j, 2*j<=n.')
    q=[(n-r)//small(n-r,i) for r in range(5)]
    s=[(n-r)//q[r] for r in range(5)]
    g=gcd(n,j);k=n-j;beta=j//g;gamma=k//g
    out={'n':n,'i':i,'j':j,'status':'not_covered','reasons':[]}
    # This first-row condition is inherited elementary coverage, not new credit.
    if (beta*gamma)%q[1]!=0:out['reasons'].append('source1_full_divisibility')
    m2=gcd(q[2],j-1);m4=gcd(q[4],j-2)
    if 2*j<n:
        W=beta*gamma*(gamma-beta)*(j-1)*(k-1)
        H=small_gain(W,i);A=s[1]**2*s[3]*s[4]
        den=(g*m2)**3*(n-1)**2*(n-3)*(n-4)
        num=A*(n-2*j)*j*k*(j-1)*(k-1)
        if num<H*den:out['reasons'].append('exact_center_quotient_bound')
        if n>=90 and 50*H*(g*m2)**3>=A*n:out['reasons'].append('generic_amplified_cubic')
        out.update(M2=m2,H_i=H,A_i=A)
    hplus=n%72 in(18,56)
    if i==5 and hplus and m4==1:out['reasons'].append('i5_row4_center_required')
    if i==6 and hplus and n%5 in(0,2):
        groups=[gcd(q[3],j*k),gcd(q[3],(j-1)*(k-1)),gcd(q[4],j*k),m4]
        if min(groups)==1:out['reasons'].append('native_i6_required_groups')
    if out['reasons']:out['status']='proved_common'
    return out

if __name__=='__main__':
    if len(sys.argv)!=4:raise SystemExit(__doc__)
    try:print(json.dumps(assess(*(int(x) for x in sys.argv[1:])),ensure_ascii=False))
    except ValueError as e:raise SystemExit(str(e))
