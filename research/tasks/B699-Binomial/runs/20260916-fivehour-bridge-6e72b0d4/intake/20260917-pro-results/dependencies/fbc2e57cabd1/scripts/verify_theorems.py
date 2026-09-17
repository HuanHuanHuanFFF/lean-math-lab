#!/usr/bin/env python3
"""Exact end-case check, direct-definition regression and a weak-model audit.
Infinite claims are proved in PROOFS.md; the regression is not their proof.
"""
from math import gcd,isqrt,comb
import argparse,json,time

def iso(x):return 3 if x%3==0 and x%9!=0 else 1

def cube_strict_roots(M):
    g=1
    while g**3<M:
        yield g;g+=1

def candidate(n,j,g,alpha,beta,a):
    if n%4 or not (4<=j and 2*j<n) or gcd(n,j)!=g:return None
    if g**3>=3*alpha:return None
    odd=alpha//(alpha&-alpha)
    if odd not in (1,3) or odd==3 and n%9==0:return None
    if beta*(alpha-beta)!=a*a*(n-1):return None
    mu=iso((n-2)//2);K=(n-2)//(2*mu)
    pnext=next(p for p in range(3,1000,2) if all(p%d for d in range(2,isqrt(p)+1)) and comb(n,3)%p==0 and comb(n,j)%p==0)
    p2=(n-2)//2
    assert all(p2%d for d in range(2,isqrt(p2)+1)) and comb(n,3)%p2==0 and comb(n,j)%p2==0
    return {'n':n,'j':j,'g':g,'alpha':alpha,'beta':beta,'a':a,'row2_common_prime':p2,
      'W2_remainder_mod_K':j*(j-1)*(j-2)%K,'direct_common_prime':pnext}

def verify_square_class():
    hits=[];checks=0;small=[]
    for alpha in (2,4,6,12):
      for g in cube_strict_roots(3*alpha):
       n=g*alpha
       for beta in range(1,(alpha-1)//2+1):
        if gcd(alpha,beta)>1 or g*beta<4:continue
        if alpha%3==0 and n%9==0:continue
        num=beta*(alpha-beta)
        if n%4 or num%(n-1):continue
        a=isqrt(num//(n-1))
        if a*a!=num//(n-1):continue
        row=candidate(n,g*beta,g,alpha,beta,a)
        if row:small.append(row)
    # The proof reduces to these FIVE coefficient cases.
    cases=[(1,1,1,4),(3,1,1,4),(3,2,1,4),(3,3,1,0),(3,1,5,1024)]
    for c,h,a,dmax in cases:
      d=4
      while d<=dmax:
       if a<d:
        for eps in (-1,1):
         beta=h*d+eps*a;alpha=2*c*d
         if not 0<2*beta<alpha:continue
         numerator=h*(2*c-h)*d+2*eps*(c-h)*a
         denominator=2*c*a*a;checks+=1
         if numerator<=0 or numerator%denominator:continue
         g=numerator//denominator;n=g*alpha
         row=candidate(n,g*beta,g,alpha,beta,a)
         if row:hits.append(row)
       d*=2
    hits.sort(key=lambda x:x['n'])
    assert not small
    assert [(r['n'],r['j']) for r in hits]==[(16,6),(96,20),(768,118)]
    assert all(r['W2_remainder_mod_K'] for r in hits)
    return {'coefficient_cases':cases,'finite_arithmetic_checks':checks,'small_s_survivors':small,'three_necessary_models':hits}

def regression(limit):
    count=0;examples=[];pairs=0
    for n in range(8,limit+1):
      for j in range(4,n//2+1):
        pairs+=1;z=(n-1)*j*(n-j);s=isqrt(z)
        if s*s!=z:continue
        count+=1;d=gcd(comb(n,3),comb(n,j));odd=d//(d&-d)
        assert odd>1,(n,j)
        if len(examples)<12:examples.append([n,j,d])
    return {'max_n':limit,'all_pairs_tested_for_square_condition':pairs,'square_condition_pairs':count,'counterexamples':0,'first_examples':examples}

def weak_model():
    n,j=76672,26775;g=gcd(n,j);alpha=n//g;beta=j//g
    lam=iso(n-1);mu=iso((n-2)//2);t=lam*beta*(alpha-beta)//(n-1)
    K=(n-2)//(2*mu);C=gcd(K,t);H=K//C;q=mu*C;v=(j-1)//H;m=q-v
    e=t*g*g-lam;A=lam*(q*q-m*m);Delta=e*(t*g*g*q*q-lam*m*m)
    assert j*(j-1)%(n-1)==0 and j*(j-1)*(j-2)%K==0
    assert isqrt(Delta)**2==Delta and (q*e+isqrt(Delta))//A==H
    assert alpha==128*599 and all(599%d for d in range(2,isqrt(599)+1))
    def vp_factorial(n,p):
        ans=0
        while n:n//=p;ans+=n
        return ans
    valuation=vp_factorial(n,599)-vp_factorial(j,599)-vp_factorial(n-j,599)
    assert comb(n,3)%599==0 and valuation>0
    return {'n':n,'j':j,'g':g,'alpha':alpha,'alpha_odd_part':599,'lambda':lam,'mu':mu,'t':t,
      'C':C,'H':H,'q':q,'m':m,'Delta':Delta,'sqrt_Delta':isqrt(Delta),
      'W1_pass':True,'W2_pass':True,'NC3':False,'common_prime':599,'binomial_valuation_at_599':valuation}

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--limit',type=int,default=2000);p.add_argument('--output',required=True);a=p.parse_args()
    start=time.perf_counter();r={'square_class':verify_square_class(),'regression':regression(a.limit),'weak_model':weak_model()}
    r['elapsed_seconds']=round(time.perf_counter()-start,3)
    with open(a.output,'w') as f:json.dump(r,f,indent=2);f.write('\n')
    print(json.dumps({'square_class_pairs':[(x['n'],x['j']) for x in r['square_class']['three_necessary_models']],
      'coefficient_checks':r['square_class']['finite_arithmetic_checks'],'regression_pairs':r['regression']['all_pairs_tested_for_square_condition'],
      'square_condition_pairs':r['regression']['square_condition_pairs'],'weak_model_odd_part':r['weak_model']['alpha_odd_part'],'elapsed_seconds':r['elapsed_seconds']}))
