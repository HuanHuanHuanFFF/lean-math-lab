import json,sys,itertools,random
from pathlib import Path
from math import comb,gcd,lcm,factorial
from functools import reduce
from content_kernel import *

def main():
    small=checks=witnesses=0;ps=prime_list(61)
    for A,B,C in itertools.product(range(17),repeat=3):
        coeff=pade_coefficients(A,B,C);g=reduce(gcd,coeff);N=A+B+C+1
        pc=[(-1)**(C+r)*comb(N,r)*comb(A+C-r,A) for r in range(C+1)]
        assert reduce(gcd,pc)==g
        prod=1
        for p in ps:
            if p>N:break
            e=pade_exponent(A,B,C,p);r=attaining_index(A,B,C,p)
            assert e==vp(g,p)==vp(coeff[r],p)
            prod*=p**e;checks+=1;witnesses+=1
        assert prod==g;small+=1
    transitions=0
    for p in [2,3,4,5,7,8,11,16]:
        for a,b,c in itertools.product(range(p),repeat=3):
            for s in range(3):
                for target in STATES[(a+b+c+s)//p]:
                    transition(s,a,b,c,p,target);transitions+=1
    rng=random.Random(20260911);random_cases=[]
    for _ in range(100):
        A,B,C=[rng.randrange(700) for _ in range(3)];g=pade_content_direct(A,B,C);es=[]
        for p in prime_list(A+B+C+1):
            e=pade_exponent(A,B,C,p);r=attaining_index(A,B,C,p)
            assert e==vp(g,p)==choose_vp(A+C-r,C,p)+choose_vp(B+r,r,p)
            if e:es.append([p,e])
            witnesses+=1
        assert reduce(lambda x,y:x*y,(p**e for p,e in es),1)==g
        random_cases.append({'ABC':[A,B,C],'factorization':es})
    large=[]
    for e,d,f in [(5,7,14),(9,12,20),(5,6,15),(8,8,13),(9,11,18),(10,15,19)]:
        for delta in [0,1]:
            m=1000;A,B,C=e*m-delta,f*m-1+delta,d*m-delta;es=[]
            for p in prime_list(A+B+C+1):
                v=pade_exponent(A,B,C,p);r=attaining_index(A,B,C,p)
                assert v==choose_vp(A+C-r,C,p)+choose_vp(B+r,r,p)
                if v:es.append([p,v])
                witnesses+=1
            large.append({'edf':[e,d,f],'m':m,'delta':delta,'ABC':[A,B,C],
                          'nonzero_primes':len(es),'factorization':es})
    lcmcases=0
    for A,B,C in itertools.product(range(5),repeat=3):
        N=A+B+C+1;M=factorial(N)//(factorial(A)*factorial(B)*factorial(C))
        g=pade_content_direct(A,B,C);ell=reduce(lcm,range(1,N+1),1)
        assert M%g==0 and ell%(M//g)==0 and g%(M//gcd(M,ell))==0;lcmcases+=1
    assert pade_content_direct(1,2,2)==3 and pade_content_direct(1,1,3)==2
    assert pade_content_direct(3,3,3)==20
    out={'status':'passed','direct_content_triples':small,'direct_prime_checks':checks,
         'constructive_witness_checks':witnesses,'digit_transition_checks':transitions,
         'random_seed':20260911,'random_cases':random_cases,'large_cases':large,
         'factorial_lcm_cases':lcmcases,'full_power_example':{'ABC':[3,3,3],'G':20,'radical':10},
         'offset_permutation_counterexample':{'edf1':[1,2,3],'edf2':[1,3,2],'m':1,'delta':0,'G1':3,'G2':2}}
    dest=Path(sys.argv[1]);dest.parent.mkdir(parents=True,exist_ok=True);dest.write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps({k:v for k,v in out.items() if k not in ('random_cases','large_cases')}))
if __name__=='__main__':main()
