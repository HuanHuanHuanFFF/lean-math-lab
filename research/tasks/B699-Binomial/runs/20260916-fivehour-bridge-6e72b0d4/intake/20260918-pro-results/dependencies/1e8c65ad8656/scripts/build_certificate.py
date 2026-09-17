from __future__ import annotations
from pathlib import Path
from math import gcd,comb,isqrt,lcm
from fractions import Fraction
import json,argparse
from transport import prime,valuation,binomial_valuation,witness

def support(n):
    ans=[];p=2
    while p*p<=n:
        if n%p==0:
            ans.append(p)
            while n%p==0:n//=p
        p+=1
    if n>1:ans.append(n)
    return ans

def matrix_product(a,b,m=None):
    c=[[sum(a[i][k]*b[k][j] for k in range(2)) for j in range(2)] for i in range(2)]
    return [[v % m for v in row] for row in c] if m else c

def matrix_power(t,e,m=None):
    r=[[1,0],[0,1]]
    while e:
        if e&1:r=matrix_product(r,t,m)
        t=matrix_product(t,t,m);e//=2
    return r

def canonical(n,j):
    k=n-j;g=gcd(n,j)
    lam=3 if valuation(n-1,3)==1 else 1
    mu=3 if valuation((n-2)//2,3)==1 else 1
    N=(n-1)//lam;K=(n-2)//(2*mu)
    H=gcd(K,j-1);C=K//H
    assert j*(j-1)%N==0 and j*(j-1)*(j-2)%K==0
    assert (j//g)*(k//g)%(N*C)==0
    t=(j//g)*(k//g)//N
    return dict(n=n,j=j,g=g,alpha=n//g,lam=lam,mu=mu,N=N,K=K,H=H,C=C,
                t3=t,u=t//C,L=gcd(K,j),R=gcd(K,j-2),
                a=gcd(N,j),b=gcd(N,j-1),z=(j-1)*(k-1)//(N*H*H))

def build(j_limit=500):
    rows=[];integral_count=0
    for j in range(4,j_limit+1):
        f=(j-1)*(j-2)
        for r in range(4,j):
            if f%r:continue
            k=f//r
            if k<j:continue
            integral_count+=1
            for p in support(gcd(j-1,k-1)):
                if p==2:continue
                w=witness(j+k,j,p)
                N=w['target_n'];J=w['target_j']
                w['direct_target_gcd']=gcd(comb(N,3),comb(N,J))
                assert w['direct_target_gcd']%(p**w['old_source_exponent'])==0
                rows.append(w)
    sharp=[]
    for p in [3,5,7,11,13,17,19,23,29,31,37,41]:
        for b in range(9):
            q=p**b
            c=((2*p+5)*pow(q,-1,8))%8
            if c%p==0:c+=8
            h=q*c
            x=p*h-2
            j=p*x+1;k=x*(p*x-1)//2;n=j+k
            w=witness(n,j,p)
            assert n%4==0 and gcd(n,j)==2
            assert w['other_coordinate']==2*p
            assert w['target_v_chooseJ']==b+1
            assert w['target_v_choose3']==b+2-(p==3)
            sharp.append({'parameter_p':p,'parameter_b':b,'parameter_h':h,'witness':w})
    T=[[41,420],[4,41]];seed=[656,64]
    T14=matrix_power(T,14)
    X,Y=[sum(T14[i][h]*seed[h] for h in range(2)) for i in range(2)]
    n=(X-12)//7;j=(n-Y)//2
    model=canonical(n,j)
    assert model['g']==2 and model['u']==1 and model['H']==5
    model['witness_reflected']=witness(n,j,5)
    model['old_common_prime']=197
    model['old_common_prime_valuations']=[binomial_valuation(n,3,197),binomial_valuation(n,j,197)]
    model['old_residues_197']=[n%197,j%197]
    model['valuation_gap']={'v2n':valuation(n,2),'v2j':valuation(j,2)}
    model['C_factorization']=[[13,1],[17,1],[31,1],[37,1],[131,1],[677,1],[2039,1],[3511,1],[47419,1],[253801,1]]
    state=[Fraction(n-j),Fraction(j)];chain=[]
    for i in range(4):
        x,y=state[-1],state[-2]
        z=(x-1)*(x-2)/y
        chain.append({'step':i+1,'smaller':[x.numerator,x.denominator],
                      'larger':[y.numerator,y.denominator],
                      'reflection':[z.numerator,z.denominator]})
        state.append(z)
    model['descending_chain']=chain
    M=3971520;period=11760
    period_matrix=matrix_power(T,period,M)
    assert period_matrix==[[1,0],[0,1]]
    family={'T':T,'seed':seed,'base_exponent':14,'stride':period,
            'modulus':M,'stride_matrix_modulus':period_matrix,
            'base_X':X,'base_Y':Y,'defining_norm_d':105,'defining_norm_rhs':256,
            'base_n_mod720':n%720,'base_j_mod720':j%720,
            'base_n_mod197':n%197,'base_j_mod197':j%197,
            'all_indices':'14+11760*r, r is any integer >=0',
            'classification_claim':False,
            'statement':'Every member satisfies two full windows, g=2, u=1, H=5; every member has original common prime 197. No member is NC3.'}
    return {'schema':'B699_VIETA_TRANSPORT_1',
            'inputs':{'j_limit':j_limit,'sharp_primes':[3,5,7,11,13,17,19,23,29,31,37,41],'sharp_b_max':8},
            'counts':{'integral_reflections':integral_count,'local_prime_witnesses':len(rows),
                      'sharp_family_witnesses':len(sharp),'local_witnesses_source_n_div4':sum(w['source_n']%4==0 for w in rows)},
            'bounded_local_witnesses':rows,'sharp_family':sharp,'weak_g2_model':model,
            'infinite_weak_family_certificate':family}

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--output',type=Path,required=True);p.add_argument('--j-limit',type=int,default=500)
    args=p.parse_args();cert=build(args.j_limit)
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(cert,indent=2,sort_keys=True)+'\n')
    print(json.dumps(cert['counts'],sort_keys=True))
