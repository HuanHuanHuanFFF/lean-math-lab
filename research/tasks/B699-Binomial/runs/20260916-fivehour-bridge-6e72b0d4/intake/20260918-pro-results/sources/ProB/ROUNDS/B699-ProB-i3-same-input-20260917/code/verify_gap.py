#!/usr/bin/env python3
"""Second implementation: enumerate coefficients, isolate the unique positive
root of an integer cubic in C, and then recover g,H,n,j. Standard library only.
It does not import gap_probe or use factorisation/square-divisor enumeration.
This is a second implementation by the same author, not external review.
"""
from math import isqrt,gcd
import argparse,json,time

def pos_integer_root(A,B,D,E):
    # -A*x^3+B*x^2+D*x+E has exactly one positive real root.
    # Descartes: signs (-,+,+,+); at zero it is positive.
    def value(x):return ((-A*x+B)*x+D)*x+E
    hi=2+max(B,D,E)//A
    assert value(0)>0 and value(hi)<0
    lo=0
    while hi-lo>1:
        mid=(lo+hi)//2;v=value(mid)
        if v==0:return mid
        if v>0:lo=mid
        else:hi=mid
    return lo if lo and value(lo)==0 else None

def verify(max_delta):
    counts=dict(triples=0,integer_C_roots=0,integer_G=0,square_G=0,identities=0,legal=0,true_gcd=0,true_smallparts=0,C_ge_5=0,dyadic_alpha=0)
    states=[];candidates=[]
    for delta in range(1,max_delta+1,2):
        for lam,mu in ((1,1),(1,3),(3,1)):
            top=lam**4*mu**2*delta**2
            z=1
            while 8*z*z<top:
                eps=1
                while 8*z*z*eps<top:
                    u=1
                    while 8*z*z*eps*u<top:
                        counts['triples']+=1
                        A=mu*mu*u*(lam**4*mu*mu*delta*delta-8*eps*u*z*z)
                        B=6*eps*delta*delta*lam*lam*mu*mu*u*z+12*lam*mu*mu*u*u*z*z
                        D=9*delta*delta*lam**3*mu*mu*u*z
                        E=z*(lam*delta*delta*eps-2*u*z)**2+lam**5*mu*mu*delta**4
                        assert min(A,B,D,E)>0
                        C=pos_integer_root(A,B,D,E)
                        if C is not None:
                            counts['integer_C_roots']+=1
                            num=lam*lam*mu*mu*C*C-2*z*C*eps-lam*z
                            den=4*u*z*C+lam*lam*delta*delta
                            if num>0 and num%den==0:
                                counts['integer_G']+=1;G=num//den;g=isqrt(G)
                                if g*g==G:
                                    counts['square_G']+=1
                                    hn=2*u*G+eps
                                    if hn%(lam*mu)==0:
                                        H=hn//(lam*mu);n=2*mu*C*H+2;j=(mu*C-g*delta)*H+1
                                        if (u*C*G-z*H*H==lam and lam*(mu*mu*C*C-G*delta*delta)==z*(n-1)):
                                            counts['identities']+=1
                                            row=dict(delta=delta,lam=lam,mu=mu,u=u,z=z,epsilon=eps,g=g,H=H,C=C,n=n,j=j)
                                            states.append(row)
                                            if n%4==0 and 4<=j and 2*j<n:
                                                counts['legal']+=1
                                                if gcd(n,j)==g:
                                                    counts['true_gcd']+=1
                                                    lv=3 if n%9 in (4,7) else 1
                                                    mv=3 if n%9 in (5,8) else 1
                                                    if (lv,mv)==(lam,mu):
                                                        counts['true_smallparts']+=1
                                                        if C>=5:
                                                            counts['C_ge_5']+=1
                                                            alpha=n//g
                                                            odd=alpha
                                                            while odd%2==0:odd//=2
                                                            if odd in (1,3) and (odd!=3 or (n%3==0 and n%9!=0)):
                                                                counts['dyadic_alpha']+=1;candidates.append(row)
                        u+=2
                    eps+=2
                z+=1
    states.sort(key=lambda r:tuple(r[k] for k in ('delta','lam','mu','u','z','epsilon','g')))
    return dict(max_delta=max_delta,counts=counts,algebraic_states=states,source_candidates=candidates)

def comparison(a,b):
    if a['max_delta']!=b['max_delta']:raise ValueError('range mismatch')
    if a['counts']['triples']!=b['counts']['triples']:raise ValueError('complete coefficient range mismatch')
    def key(r):return tuple(r[k] for k in sorted(r))
    if sorted(map(key,a['algebraic_states']))!=sorted(map(key,b['algebraic_states'])):raise ValueError('complete recovered-state mismatch')
    if a['source_candidates']!=b['source_candidates']:raise ValueError('frontier mismatch')

def negative_tests(a,b):
    import copy
    cases=[]
    for label,mut in (
        ('omitted_algebraic_state',lambda x:x['algebraic_states'].pop()),
        ('modified_complete_count',lambda x:x['counts'].__setitem__('triples',x['counts']['triples']-1)),
        ('wrong_range',lambda x:x.__setitem__('max_delta',x['max_delta']+2)),
        ('wrong_lambda',lambda x:x['algebraic_states'][0].__setitem__('lam',1)),
        ('false_source_candidate',lambda x:x['source_candidates'].append(x['algebraic_states'][0]))):
        bad=copy.deepcopy(a);mut(bad)
        try:comparison(bad,b)
        except ValueError:cases.append(dict(test=label,rejected=True))
        else:raise AssertionError(label+' was not rejected')
    return cases

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--max-delta',type=int,default=31);p.add_argument('--reference');p.add_argument('--output',required=True);p.add_argument('--negative-tests',action='store_true');a=p.parse_args();tic=time.monotonic()
    if a.max_delta<1:p.error('--max-delta must be positive')
    result=verify(a.max_delta)
    if a.reference:
        ref=json.load(open(a.reference));comparison(ref,result);result['comparison']='MATCH'
        if a.negative_tests:result['negative_tests']=negative_tests(ref,result)
    json.dump(result,open(a.output,'w'),indent=2)
    print(json.dumps({k:v for k,v in result.items() if k not in ('algebraic_states','source_candidates')},indent=2));print('states=',result['algebraic_states'])
