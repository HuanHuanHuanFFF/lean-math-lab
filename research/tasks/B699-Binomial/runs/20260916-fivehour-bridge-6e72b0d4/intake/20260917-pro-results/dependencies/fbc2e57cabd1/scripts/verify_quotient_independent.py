#!/usr/bin/env python3
"""Second exact implementation. Uses one canonical 2-adic root and its four
symmetries, explicit CRT modulo 3, and the LOOSER W1 bound 243*t**6/lambda**3.
No functions are imported from certify_quotient.py. Author-written, not external review.
"""
import argparse,json,time
from math import gcd

def iso(x):return 3 if x%3==0 and x%9!=0 else 1

def canonical_levels(t,lam,max_s):
    yield 1,2,[1]
    if max_s<2 or (t-lam)%4:return
    yield 2,4,[1,3]
    if max_s<3 or (t-lam)%8:return
    x=1
    for s in range(3,max_s+1):
        M=1<<s
        roots=sorted({x%M,(-x)%M,(M//2+x)%M,(M//2-x)%M})
        assert len(roots)==4 and all((lam*b*b-t)%M==0 for b in roots)
        yield s,M,roots
        assert (lam*x*x-t)%M==0
        bit=((lam*x*x-t)//M)&1
        x+=bit*(M//2)

def verify(limit,expected):
    start=time.perf_counter();loose=[];selected=[];excluded=[];survivors=[]
    for t in range(1,limit+1,2):
      for lam in (1,3):
        loose_bound=243*t**6
        max_s=(loose_bound//lam**3).bit_length()
        for s,M,roots in canonical_levels(t,lam,max_s):
          cases=[(1,b) for b in roots]
          if lam==1 and t%3==1:
            invM=1 if M%3==1 else 2
            cases += [(3,b+M*((r-b)*invM%3)) for b in roots for r in (1,2)]
          for c,beta in cases:
            alpha=c*M
            if alpha*lam**3>=loose_bound or gcd(alpha,t)>1:continue
            if beta<=0 or 2*beta>=alpha or gcd(beta,alpha)>1:continue
            B=beta*(alpha-beta)
            if B%t:continue
            n=1+lam*(B//t)
            if n%4 or n%alpha:continue
            g=n//alpha;j=g*beta
            if g<1 or j<4 or g**3>=3*alpha:continue
            if c==3 and n%9==0:continue
            if iso(n-1)!=lam:continue
            mu=iso((n-2)//2);K=(n-2)//(2*mu)
            cubic=j*(j-1)*(j-2)%K
            linear=t*(j-1)%K
            assert (linear==0)==(cubic==0)
            row=[t,n,j,g,alpha,beta,lam,mu,linear];loose.append(row)
            tight=(g<mu*t and lam*alpha<3*mu*mu*t**4)
            if tight:selected.append(row)
            else:
                excluded.append(row)
                assert cubic!=0,'A model excluded by the stronger bound survived W2'
            if cubic==0:survivors.append(row)
    selected.sort();loose.sort();excluded.sort()
    assert selected==expected['pre_second_window_records'],'different exact candidate sets'
    assert sorted(survivors)==expected['survivors']
    return {'limit':limit,'canonical_root_implementation':'independent source, four-root symmetry',
      'looser_height_pre_second_window_records':loose,'stronger_bound_excluded_records':excluded,
      'matched_candidate_count':len(selected),'survivors':survivors,'elapsed_seconds':round(time.perf_counter()-start,3)}

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--certificate',required=True);p.add_argument('--output',required=True)
    a=p.parse_args();expected=json.load(open(a.certificate));r=verify(expected['limit'],expected)
    with open(a.output,'w') as f:json.dump(r,f,indent=2);f.write('\n')
    print(json.dumps({'limit':r['limit'],'loose_candidates':len(r['looser_height_pre_second_window_records']),
      'matched_candidates':r['matched_candidate_count'],'stronger_bound_excluded':len(r['stronger_bound_excluded_records']),
      'survivors':len(r['survivors']),'elapsed_seconds':r['elapsed_seconds']}))
