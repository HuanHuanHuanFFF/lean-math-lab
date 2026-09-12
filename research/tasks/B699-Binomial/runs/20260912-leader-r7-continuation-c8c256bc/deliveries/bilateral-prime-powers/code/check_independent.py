#!/usr/bin/env python3
"""Independent parameter reconstruction: square odd parts and divisors of X+-1.
Does NOT import the generator. Directly tests every integer m in each complete box.
"""
import argparse,json
from pathlib import Path
from math import gcd,isqrt

def divisors(n):
    out=[]
    for a in range(1,isqrt(n)+1):
        if n%a==0:
            out.append(a)
            if a*a!=n:out.append(n//a)
    return sorted(out)

def verify(cert):
    assert cert['schema']=='b699-r7-bilateral-square-v1'
    assert cert['base_n_inclusive']==2097153
    assert cert['scope']=={'beta':{'gu':30,'d_over_u':3},'gamma':{'gu':95,'d_over_u':9}}
    rows=[]; boxes=[];tested=0
    for side,cap,mult,left,right in [('beta',30,3,8,81),('gamma',95,9,2,21)]:
        for g in range(1,cap+1):
            odd=g
            while odd%2==0:odd//=2
            w=isqrt(odd)
            if w*w!=odd:continue
            upper=mult*(cap//g)**2+1
            X=w
            while X<=upper:
                n=X*X
                if n>2097153 and n%g==0:
                    alpha=n//g
                    if alpha>=2 and alpha&(alpha-1)==0:
                        s=alpha.bit_length()-1
                        rows.append(dict(side=side,g=g,s=s,X=X,n=n))
                        for eps in [-1,1]:
                            for d in divisors(X-eps):
                                u=(X-eps)//d
                                if d<33 or d%2==0 or u%2==0 or g*u>cap or d>mult*u:continue
                                if left*g*(n-2)>=right*d*d*d:continue
                                ms=[]
                                for m in range(1,alpha//(d*d)+1):
                                    target=g*m*d*d
                                    j=target if side=='beta' else n-target
                                    if 4<=j and 2*j<n:ms.append(m)
                                if not ms:continue
                                lo,hi=min(ms),max(ms)
                                assert ms==list(range(lo,hi+1))
                                h=(n-1)//d
                                tested+=len(ms)
                                for m in ms:
                                    assert (3*(g*m*d*d-1))%h!=0
                                boxes.append(dict(side=side,g=g,s=s,X=X,n=n,eps=eps,d=d,u=u,lo=lo,hi=hi,
                                                  h=h,modulus=h//gcd(h,3),coefficient=g*d*d))
                X*=2
    key=lambda r:(r['side'],r['g'],r['s'],r.get('eps',0),r.get('d',0))
    rows.sort(key=key);boxes.sort(key=key)
    assert rows==cert['parameter_rows']
    assert len(boxes)==len(cert['congruence_boxes'])
    for actual,saved in zip(boxes,cert['congruence_boxes']):
        for k,v in actual.items():assert saved[k]==v,(k,v,saved[k])
        a=actual['coefficient'];m=actual['modulus'];gg=gcd(a,m)
        assert saved['coefficient_gcd']==gg
        if gg==1:
            r=saved['inverse'];assert 0<=r<m and (a*r-1)%m==0
            first=actual['lo']+(r-actual['lo'])%m
            assert saved['first_solution']==first and first>actual['hi']
        else:
            assert 'inverse' not in saved
    summary={'parameter_rows':len(rows),'boxes':len(boxes),'direct_m_count':tested,'residuals':0}
    assert summary==cert['summary']
    assert (len(rows),len(boxes),tested)==(13,4,2265)
    return {'status':'PASS','method':'independent-square-odd-part-and-divisor-reconstruction; direct m remainders',
            **summary,'rows_equal':True,'all_box_endpoints_reconstructed':True}

def main():
    p=argparse.ArgumentParser();p.add_argument('--input',required=True);p.add_argument('--output',required=True);a=p.parse_args()
    result=verify(json.loads(Path(a.input).read_text()));Path(a.output).write_text(json.dumps(result,sort_keys=True,indent=2)+'\n')
    print(json.dumps(result,sort_keys=True))
if __name__=='__main__':
    if not __debug__:raise SystemExit('Do not run this checker with Python -O.')
    main()
