#!/usr/bin/env python3
"""Checker B. Does NOT import checker A.
Polynomial identities: tensor-grid exact interpolation, not sparse expansion.
Box inequalities: reconstruct Bernstein polynomials on a determining grid.
Primality: trial division for small nodes, partial-factor Pocklington for others.
All arithmetic is exact, standard library only.
"""
from __future__ import annotations
from pathlib import Path
from fractions import Fraction
from itertools import product
from math import comb,gcd,isqrt,prod
import json
ROOT=Path(__file__).resolve().parents[1]

def req(condition,message):
    if not condition:raise ValueError(message)

def evaluate(poly,point):
    result=Fraction(0)
    for ex,co in poly['terms']:
        value=Fraction(*co)
        for x,pow_ in zip(point,ex):value*=x**pow_
        result+=value
    return result

def specs():
    def pr(m,a,b,c):
        z=m*b-2*a;w=2*m*m*c-a
        return 4*m*z*(w-m*m-2*z)
    def ps(m,a,b,c):
        z=m*b-2*a;w=2*m*m*c-a
        return w*(w-2*m*m)-2*z*z
    def gr(A,B,a,b,c):
        u=A*b-B*a;w=A*c-a
        return A*u*(2*w-A)-B*u*u
    def gs(A,B,a,b,c):
        u=A*b-B*a;w=A*c-a
        return A*w*(w-A)-u*u
    def pm(x,t):
        m=x+1;P=128*m**3+t
        return 2*m*m*P*P-176*m**5*P-44*m**4
    def gm(x,y,t):
        A=x+1;B=y+1;K=A+B*B;P=16*A*K*(A+B+1)+t
        return A*P*P-9*A*A*B*K*P-6*A*A*K
    def gn(x,y):
        A=x+1;B=y+1;K=A+B*B
        return 16*A*K*(A+B+1)-2*A*A*K
    def gd(x,y):
        A=x+1;B=y+1
        return 16*A*(A+B*B)*(A+B+1)-A-B-2
    return {
      'plus_R':(['m','a','b','c'],[8,2,2,2],pr),
      'plus_S':(['m','a','b','c'],[8,2,2,2],ps),
      'general_R':(['A','B','a','b','c'],[4,4,2,2,2],gr),
      'general_S':(['A','B','a','b','c'],[4,4,2,2,2],gs),
      'plus_small_margin':(['x','t'],[10,2],pm),
      'plus_nonzero_margin':(['x','t'],[3,1],lambda x,t:117*(x+1)**3+t),
      'plus_digits_margin':(['x'],[3],lambda x:128*(x+1)**3-2*(x+1)**2-4*(x+1)-2),
      'general_small_margin':(['x','y','t'],[10,10,2],gm),
      'general_nonzero_margin':(['x','y'],[5,5],gn),
      'general_digits_margin':(['x','y'],[5,5],gd),
      'all_compat_margin':(['x','y'],[8,8],lambda x,y:64*(x+1)**2*((x+1)+(y+1)**2)**3-16*(x+1)*((x+1)+(y+1)**2)*(x+y+3)),
      'all_second_margin':(['x','y','t'],[8,8,1],lambda x,y,t:16*(x+1)**3*((x+1)+(y+1)**2)**3+(x+1)*t+(y+1))}

def verify_uniform(U):
    req(U['schema']=='B699.round4.uniform.v1','schema')
    req((U['plus_threshold'],U['general_threshold'])==(128,16) and U['all_threshold']==64,'thresholds')
    truth=specs();req(set(truth)==set(U['polynomials']),'coverage')
    counts=0
    for name,(vs,bounds,fun) in truth.items():
        p=U['polynomials'][name];req(p['vars']==vs,'variables')
        seen=set()
        for ex,co in p['terms']:
            req(len(ex)==len(bounds) and all(type(k) is int and 0<=k<=d for k,d in zip(ex,bounds)),'degree not bounded')
            req(tuple(ex) not in seen,'duplicate monomial');seen.add(tuple(ex))
            req(len(co)==2 and co[1]>0 and co[0]!=0,'coefficient')
        # Degree bounds are explicit bounds for both the supplied polynomial and the hard-coded formula.
        for point in product(*(range(d+1) for d in bounds)):
            req(evaluate(p,point)==fun(*point),'interpolation mismatch: '+name);counts+=1
        if name.endswith('margin'):
            req(all(Fraction(*co)>0 for ex,co in p['terms']),'strict positivity')
            req(evaluate(p,[0]*len(bounds))>0,'strict constant')
    # Independent direct remainder/source identities on degree-bounded grids.
    nident=0
    for m,P,a,b,c in product(range(9),range(5),range(3),range(3),range(3)):
        N=2*m*m*P*P+4*m*P+1;j=a*P*P+b*P+c
        z=m*b-2*a;w=2*m*m*c-a
        G=(2*m*z*P+w)*(2*m*z*P+w-2*m*m)
        req(G-2*z*z*N==4*m*z*(w-m*m-2*z)*P+w*(w-2*m*m)-2*z*z,'plus identity')
        req(G==(2*m*m*j-a*N)*(2*m*m*(j-1)-a*N),'plus source identity');nident+=2
    for A,B,P,a,b,c in product(range(5),range(5),range(5),range(3),range(3),range(3)):
        N=A*P*P+B*P+1;j=a*P*P+b*P+c
        u=A*b-B*a;w=A*c-a;G=(u*P+w)*(u*P+w-A)
        req(A*G-u*u*N==(A*u*(2*w-A)-B*u*u)*P+A*w*(w-A)-u*u,'general identity')
        req(G==(A*j-a*N)*(A*(j-1)-a*N),'general source identity');nident+=2
        req(A*A*j-(A*A*c-B*u)==(A*P+B)*(a*(A*P-B)+A*b),'second source identity');nident+=1
    for A,B,u,w in product(range(5),range(3),range(3),range(3)):
        S=A*w*(w-A)-u*u
        req(A**4-(B*B-4*A)*u*u==(A*(2*w-A)-B*u)*(A*(2*w-A)+B*u)-4*A*S,'split identity');nident+=1
    seen=set();boxeval=0
    for q in U['plus_box_bounds']:
        c,label=q['c'],q['bound'];req(c in [0,1,2],'c')
        req(label in ['R_lower','R_upper','S_lower','S_upper'] and (c,label) not in seen,'box labels');seen.add((c,label))
        req(q['degrees']==[2,2] and len(q['coefficients'])==3 and all(len(r)==3 for r in q['coefficients']),'matrix')
        bs=[[Fraction(*v) for v in row] for row in q['coefficients']]
        req(all(v>=0 for row in bs for v in row),'negative Bernstein coefficient')
        for aa,bb in product([Fraction(0),Fraction(1,2),Fraction(1)],repeat=2):
            z=4*bb-2*aa;w=2*c-aa;R=4*z*(w-1-2*z);S=w*(w-2)-2*z*z
            expected={'R_lower':176+R,'R_upper':176-R,'S_lower':44+S,'S_upper':44-S}[label]
            val=sum(bs[i][j]*comb(2,i)*aa**i*(1-aa)**(2-i)*comb(2,j)*bb**j*(1-bb)**(2-j) for i in range(3) for j in range(3))
            req(val==expected,'Bernstein reconstruction');boxeval+=1
    req(len(seen)==12,'missing box')
    return {'coefficient_interpolation_evaluations':counts,'identity_grid_evaluations':nident,'Bernstein_reconstruction_evaluations':boxeval}

def verify_primes(C):
    req(C['schema']=='B699.round4.primes.v1','prime schema')
    data=C['certificates'];done=set();active=set();method={'trial_division':0,'pocklington':0}
    def verify(n):
        if n in done:return
        req(type(n) is int and n>=2 and str(n) in data,'prime node')
        req(n not in active,'cycle');active.add(n)
        if n<1000:
            req(all(n%r for r in range(2,isqrt(n)+1)),'small composite');method['trial_division']+=1
        else:
            cert=data[str(n)];req(cert['n']==n and n%2==1,'label')
            g=cert['base'];req(type(g) is int and 1<g<n and pow(g,n-1,n)==1,'Fermat')
            fac=cert['factors'];req(len({q for q,e in fac})==len(fac),'duplicate factors')
            # Only a certified factor F>sqrt(n) is needed by this algorithm.
            block=1
            for q,e in sorted(fac,reverse=True):
                req(type(q) is int and type(e) is int and q<n and e>0,'factor entry')
                verify(q);block*=q**e
                req((n-1)%block==0,'Pocklington factor divisibility')
                req(gcd(pow(g,(n-1)//q,n)-1,n)==1,'Pocklington gcd')
                if block*block>n:break
            req(block*block>n,'Pocklington block too small');method['pocklington']+=1
        active.remove(n);done.add(n)
    for n in C['roots']:verify(n)
    return done,method

def verify_row(r,primes):
    req(r['schema']=='B699.round4.row.v1' and r['theorem']=='PLUS128','row schema')
    m,p,e=r['m'],r['p'],r['e'];req(m>0 and m%2==1 and p>2 and p in primes and e>=1,'row scope')
    P=p**e;req(gcd(m,p)==1 and r['P']==P and P>=128*m**3,'full source')
    req(r['threshold']==128*m**3 and r['X']==m*P+1 and r['n']==2*r['X']**2,'row reconstruction')
    req(r['n']==2**167 and r['X']==2**83,'named row')
    y=r['n']-2;v=0
    while y%p==0:y//=p;v+=1
    req(v==e,'complete valuation')
    fac=r['opposite_factorization'];req(all(q in primes and e>=1 for q,e in fac),'factor primes')
    req(prod(q**e for q,e in fac)==r['X']+1,'other factor')
    req(next(e for q,e in fac if q==3)==1,'isolated once 3')
    req(len(fac)-1==r['opposite_retained_prime_count']==5,'other support')
    old=r['old_TS_ROW'];largest=max(q**e for q,e in fac);co=(r['X']+1)//largest
    req(old['source_side']=='X+1' and old['largest_complete_prime_power']==largest and old['cofactor']==co,'old source direction')
    req(old['d3']==1 and (r['X']-1)%3!=0 and old['threshold']==64*co**3>largest and old['gate_passes'] is False,'old dominant source gate')
    return {'row_exponent':167,'source_exponent':v,'opposite_retained_support':5}

def main():
    d=ROOT/'certificates'
    U=json.loads((d/'uniform.json').read_text());C=json.loads((d/'primes.json').read_text())
    primes,methods=verify_primes(C)
    ans={'checker':'B','uniform':verify_uniform(U),'primality_methods':methods,
         'row':verify_row(json.loads((d/'row_2pow167.json').read_text()),primes)}
    print(json.dumps(ans,indent=2));return ans
if __name__=='__main__':main()
