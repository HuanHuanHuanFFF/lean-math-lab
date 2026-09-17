#!/usr/bin/env python3
"""Finite diagnostics only: these do not establish any universal theorem."""
from pathlib import Path
from math import gcd,comb,prod
import json,time
from consumer import assess,small,small_lt,factor,omega
ROOT=Path(__file__).resolve().parents[1]

def vp_choose(n,j,p):
    k=n-j;z=0
    while n:
        n//=p;j//=p;k//=p;z+=n-j-k
    return z

def check():
    counts={'legal_target_pairs':0,'new_acceptances':0,'new_acceptances_not_source1':0,
            'direct_i5_row4_two_base_rows':0,'direct_i6_row4_two_base_rows':0,
            'partial_avoiding_pairs':0,'partial_nonunit_row3_row4_pairs':0,
            'partial_nonunit_f3_M4_pairs':0,'i5_to_i6_full_gcd_checks':0,
            'i8_to_i9_full_gcd_checks':0}
    reasons={};new_beyond_old_local=[]
    for n in range(12,601):
        cn={i:comb(n,i) for i in (5,6,7,8,9)}
        for j in range(6,n//2+1):
            cj=comb(n,j)
            for i in (5,6,7,8):
                if j<=i:continue
                counts['legal_target_pairs']+=1
                out=assess(n,i,j)
                if out['new_reasons']:
                    counts['new_acceptances']+=1
                    if not out['inherited_reasons']:counts['new_acceptances_not_source1']+=1
                    gg=gcd(cn[i],cj)
                    assert gg//small_lt(gg,i)>1,(n,i,j,out)
                    for r in out['new_reasons']:reasons[r]=reasons.get(r,0)+1
                    if i==5 and j>=7 and n%25>=5:
                        w=gg//small_lt(gg,6)
                        assert w>1 and cn[6]%w==0 and cj%w==0
                        counts['i5_to_i6_full_gcd_checks']+=1
                    if i==8 and j>=10:
                        w=gg//small_lt(gg,8)
                        assert w>1 and cn[9]%w==0 and cj%w==0
                        counts['i8_to_i9_full_gcd_checks']+=1
    # Explicitly compare new full-row support criterion with actual coefficients.
    for n in range(18,2501):
        if n%72 not in (18,56):continue
        for i in (5,6):
            if i==6 and n%5 not in (0,2):continue
            q4=(n-4)//small(n-4,i)
            if len(factor(q4))>2:continue
            counts[f'direct_i{i}_row4_two_base_rows']+=1
            ci=comb(n,i)
            for j in range(i+1,n//2+1):
                gg=gcd(ci,comb(n,j));assert gg//small_lt(gg,i)>1
    # Non-vacuous avoiding parts of the SAME input; never relabel these as NC.
    for n in range(12,181):
        fs=[factor(n-r) for r in range(5)]
        for j in range(6,n//2+1):
            cj=comb(n,j);k=n-j;g=gcd(n,j);a=n//g;b=j//g;c=k//g
            for i in (5,6,7,8):
                if j<=i:continue
                q=[]
                for r,f in enumerate(fs):
                    q.append(prod(p**e for p,e in f.items()
                                  if (p>i or p==i and e>=2) and cj%p))
                s=(n-1)//q[1];assert b*c%q[1]==0
                t=b*c//q[1];L=g*g*t;R=s*a-3*g*t
                assert R>0 and L-s>0
                e3=gcd(q[3],t);e4=gcd(q[4],t)
                f3=gcd(q[3],L-s);f4=gcd(q[4],L-s);M4=gcd(q[4],j-2)
                assert q[3]==e3*f3 and q[4]==e4*f4*M4
                assert t%(e3*e4)==0 and R%(f3*M4)==0
                T0=t//(e3*e4);V=R//(f3*M4);HR=small_lt(R,i)
                assert V>0 and V%HR==0
                X=j*k;F=X*(n*n-3*X-n)
                den=g**3*q[1]**2*q[3]*q[4]
                assert F*f4%den==0 and F*f4//den==T0*V
                A=s*s*((n-3)//q[3])*((n-4)//q[4]);D=(n-1)**2*(n-3)*(n-4)
                assert 12*T0*HR*g**3*D<A*f4*n**4
                counts['partial_avoiding_pairs']+=1
                if q[3]>1 and q[4]>1:counts['partial_nonunit_row3_row4_pairs']+=1
                if f3>1 and M4>1:counts['partial_nonunit_f3_M4_pairs']+=1
    # Exact finite examples of both infinite two-exponent row families.
    samples=[]
    for u,v in [(0,0),(1,0),(0,1),(1,2),(3,4),(10,12)]:
        for special in [False,True]:
            a=12*u+3;b=(60*v+25) if special else (12*v+1)
            n=4*7**a*13**b+4
            assert n%72==56 and n%5==0
            if special:assert n%25==0
            assert (n-4)//small(n-4,5)==7**a*13**b
            assert (n-4)//small(n-4,6)==7**a*13**b
            witnesses=[]
            # Actual witnesses for small j are checked using exact valuations.
            for j in (7,8,11,17):
                for i in (5,6):
                    ps=[p for p in (5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97)
                        if p>=i and vp_choose(n,i,p)>0 and vp_choose(n,j,p)>0]
                    if ps:
                        p=ps[0];witnesses.append([i,j,p,vp_choose(n,i,p),vp_choose(n,j,p)])
            samples.append({'a7':a,'a13':b,'n':str(n),'bits':n.bit_length(),'special_mod25_zero':special,
                            'actual_small_j_witnesses':witnesses})
    # Explicit endpoint layers: test full layer vs illegal downshift.
    endpoint=[]
    for n,i,j,p,Q in [(28,5,6,5,25),(129,5,25,5,125),(349,7,49,7,343)]:
        assert vp_choose(n,i,p)>0 and vp_choose(n,j,p)>0
        assert j%Q>n%Q and j%(Q//p)<=n%(Q//p)
        endpoint.append([n,i,j,p,Q,vp_choose(n,i,p),vp_choose(n,j,p)])
    return {'status':'PASS_FINITE_DIAGNOSTICS','counts':counts,'reason_counts':reasons,
            'infinite_family_samples_not_proof':samples,'endpoint_controls':endpoint,
            'limits':{'direct_n_max':600,'two_base_row_n_max':2500,'partial_avoiding_n_max':180},
            'no_finite_scan_used_as_an_infinite_proof':True}
if __name__=='__main__':
    t=time.monotonic();out=check();out['seconds']=time.monotonic()-t
    (ROOT/'evidence/regression.json').write_text(json.dumps(out,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':out['status'],'counts':out['counts'],'seconds':out['seconds']}))
