#!/usr/bin/env python3
"""Checker A: sparse polynomial multiplication, exact Bernstein coefficients,
recursive full-order primality certificates, and rational interval arithmetic.
Standard library only. Raises ValueError on invalid certificates.
"""
from __future__ import annotations
from fractions import Fraction as F
from math import comb,gcd,prod
from pathlib import Path
import json

ROOT=Path(__file__).resolve().parents[1]

def need(test,msg):
    if not test:raise ValueError(msg)

class Poly:
    def __init__(self,n,terms=None):
        self.n=n; self.d={tuple(e):F(c) for e,c in (terms or {}).items() if c}
    def coerce(self,x):
        if isinstance(x,Poly):
            need(x.n==self.n,'polynomial dimension');return x
        return Poly(self.n,{(0,)*self.n:F(x)})
    def __add__(self,o):
        o=self.coerce(o);d=self.d.copy()
        for e,c in o.d.items():d[e]=d.get(e,F(0))+c
        return Poly(self.n,d)
    __radd__=__add__
    def __neg__(self):return Poly(self.n,{e:-c for e,c in self.d.items()})
    def __sub__(self,o):return self+-self.coerce(o)
    def __rsub__(self,o):return self.coerce(o)+-self
    def __mul__(self,o):
        o=self.coerce(o);d={}
        for e,c in self.d.items():
            for f,v in o.d.items():
                t=tuple(a+b for a,b in zip(e,f));d[t]=d.get(t,F(0))+c*v
        return Poly(self.n,d)
    __rmul__=__mul__
    def __pow__(self,k):
        need(isinstance(k,int) and k>=0,'exponent')
        ans=self.coerce(1);base=self
        while k:
            if k&1:ans=ans*base
            base=base*base;k//=2
        return ans
    def __eq__(self,o):return self.d==self.coerce(o).d

def variables(n):
    out=[]
    for i in range(n):
        e=[0]*n;e[i]=1;out.append(Poly(n,{tuple(e):1}))
    return out

def parsepoly(data,expected_names):
    need(data['vars']==expected_names,'variable names')
    n=len(expected_names);terms={}
    for e,q in data['terms']:
        need(len(e)==n and all(type(x) is int and x>=0 for x in e),'term exponents')
        need(tuple(e) not in terms,'duplicate term')
        need(len(q)==2 and q[1]>0 and q[0]!=0,'rational coefficient')
        terms[tuple(e)]=F(*q)
    return Poly(n,terms)

def expected_polys():
    ans={}
    m,a,b,c=variables(4);z=m*b-2*a;w=2*m*m*c-a
    ans['plus_R']=(4*m*z*(w-m*m-2*z),['m','a','b','c'])
    ans['plus_S']=(w*(w-2*m*m)-2*z*z,['m','a','b','c'])
    A,B,a,b,c=variables(5);u=A*b-B*a;w=A*c-a
    ans['general_R']=(A*u*(2*w-A)-B*u*u,['A','B','a','b','c'])
    ans['general_S']=(A*w*(w-A)-u*u,['A','B','a','b','c'])
    x,t=variables(2);m=1+x;P=128*m**3+t
    ans['plus_small_margin']=(2*m*m*P*P-176*m**5*P-44*m**4,['x','t'])
    ans['plus_nonzero_margin']=(P-11*m**3,['x','t'])
    x,=variables(1);m=1+x
    ans['plus_digits_margin']=(128*m**3-2*m*m-4*m-2,['x'])
    x,y,t=variables(3);A=1+x;B=1+y;K=A+B*B;P=16*A*K*(A+B+1)+t
    ans['general_small_margin']=(A*P*P-9*A*A*B*K*P-6*A*A*K,['x','y','t'])
    x,y=variables(2);A=1+x;B=1+y;K=A+B*B;T=16*A*K*(A+B+1)
    ans['general_nonzero_margin']=(T-2*A*A*K,['x','y'])
    ans['general_digits_margin']=(T-A-B-2,['x','y'])
    ans['all_compat_margin']=(64*A*A*K**3-T,['x','y'])
    x,y,t=variables(3);A=1+x;B=1+y;K=A+B*B
    ans['all_second_margin']=(A*(64*A*A*K**3+t)+B-48*A**3*K**3,['x','y','t'])
    return ans

def verify_uniform(U):
    need(U['schema']=='B699.round4.uniform.v1','uniform schema')
    need(U['plus_threshold']==128 and U['general_threshold']==16 and U['all_threshold']==64,'threshold changes')
    expect=expected_polys();need(set(expect)==set(U['polynomials']),'polynomial coverage')
    positive=0
    for k,(truth,names) in expect.items():
        got=parsepoly(U['polynomials'][k],names)
        need(got==truth,'wrong polynomial '+k)
        if k.endswith('margin'):
            need(all(c>0 for c in got.d.values()),'nonpositive margin coefficient')
            need(got.d.get((0,)*got.n,F(0))>0,'missing positive constant')
            positive+=len(got.d)
    # Exact symbolic identities are regenerated, not accepted as zero claims.
    m,P,a,b,c=variables(5);N=2*m*m*P*P+4*m*P+1;j=a*P*P+b*P+c
    z=m*b-2*a;w=2*m*m*c-a
    G=(2*m*z*P+w)*(2*m*z*P+w-2*m*m)
    R=4*m*z*(w-m*m-2*z);S=w*(w-2*m*m)-2*z*z
    need(G-2*z*z*N==R*P+S,'PLUS remainder identity')
    need(G==(2*m*m*j-a*N)*(2*m*m*(j-1)-a*N),'PLUS source identity')
    A,B,P,a,b,c=variables(6);N=A*P*P+B*P+1;j=a*P*P+b*P+c
    u=A*b-B*a;w=A*c-a;G=(u*P+w)*(u*P+w-A)
    R=A*u*(2*w-A)-B*u*u;S=A*w*(w-A)-u*u
    need(A*G-u*u*N==R*P+S,'general remainder identity')
    need(G==(A*j-a*N)*(A*(j-1)-a*N),'general source identity')
    need(A*A*j-(A*A*c-B*u)==(A*P+B)*(a*(A*P-B)+A*b),'second source residue identity')
    # SPLIT consequence: A^4-Delta*u^2 = (A(2w-A)-Bu)(A(2w-A)+Bu)-4*A*S.
    A,B,u,w=variables(4);S=A*w*(w-A)-u*u
    need(A**4-(B*B-4*A)*u*u ==(A*(2*w-A)-B*u)*(A*(2*w-A)+B*u)-4*A*S,'SPLIT identity')
    required={(c,s) for c in [0,1,2] for s in ['R_lower','R_upper','S_lower','S_upper']}
    seen=set();bcount=0
    for box in U['plus_box_bounds']:
        key=(box['c'],box['bound']);need(key in required and key not in seen,'box coverage');seen.add(key)
        need(box['degrees']==[2,2],'Bernstein degree')
        a,b=variables(2);z=4*b-2*a;w=2*box['c']-a
        R=4*z*(w-1-2*z);S=w*(w-2)-2*z*z
        truth={'R_lower':176+R,'R_upper':176-R,'S_lower':44+S,'S_upper':44-S}[box['bound']]
        need(len(box['coefficients'])==3 and all(len(row)==3 for row in box['coefficients']),'box dimensions')
        for i in range(3):
            for j in range(3):
                val=sum((co*F(comb(i,k),comb(2,k))*F(comb(j,l),comb(2,l)) for (k,l),co in truth.d.items() if k<=i and l<=j),F(0))
                q=F(*box['coefficients'][i][j]);need(q==val and q>=0,'wrong/nonpositive Bernstein coefficient');bcount+=1
    need(seen==required,'missing box')
    return {'polynomial_identities':6,'positive_shifted_coefficients':positive,'bernstein_coefficients':bcount}

def verify_primes(C):
    need(C['schema']=='B699.round4.primes.v1','prime schema')
    certs=C['certificates'];done=set();active=set()
    def visit(n):
        need(type(n) is int and n>=2,'prime integer')
        if n in done:return
        need(n not in active,'prime recursion cycle');active.add(n)
        need(str(n) in certs,'missing prime node');d=certs[str(n)]
        need(d['n']==n,'prime label')
        if n==2:need(d['factors']==[] and d['base'] is None,'base-two certificate')
        else:
            need(n%2==1,'even claimed prime')
            fac=d['factors'];need(len({q for q,e in fac})==len(fac),'duplicate prime factor')
            need(all(type(q) is int and type(e) is int and q<n and e>=1 for q,e in fac),'prime factors')
            need(prod(q**e for q,e in fac)==n-1,'incomplete prime factorization')
            for q,e in fac:visit(q)
            g=d['base'];need(type(g) is int and 1<g<n,'base range')
            need(pow(g,n-1,n)==1,'Fermat order identity')
            need(all(gcd(pow(g,(n-1)//q,n)-1,n)==1 for q,e in fac),'primitive-order gcd')
        active.remove(n);done.add(n)
    for n in C['roots']:visit(n)
    need(done=={int(k) for k in certs},'orphan/unchecked prime nodes')
    return done

def verify_row(d,primes):
    need(d['schema']=='B699.round4.row.v1' and d['theorem']=='PLUS128','row schema')
    m,p,e,P,X,n=[d[k] for k in ['m','p','e','P','X','n']]
    need(all(type(v) is int for v in [m,p,e,P,X,n]),'row integers')
    need(m>0 and m%2==1 and p in primes and p>2 and e>=1,'row original hypotheses')
    need(gcd(m,p)==1 and P==p**e,'full prime power')
    need(P>=128*m**3 and d['threshold']==128*m**3,'row threshold')
    need(X==m*P+1 and n==2*X*X,'original row recovery')
    need(X==2**83 and n==2**167,'named row identity')
    need(((n-2)//P)%p!=0,'source exponent not complete')
    fac=d['opposite_factorization'];need(prod(q**v for q,v in fac)==X+1,'opposite reconstruction')
    need(all(q in primes and v>=1 for q,v in fac),'opposite primality')
    need([v for q,v in fac if q==3]==[1],'isolated 3 opposite')
    need(d['opposite_retained_prime_count']==len([q for q,v in fac if not(q==3 and v==1)])==5,'retained support count')
    old=d['old_TS_ROW'];largest=max(q**v for q,v in fac)
    need(old['source_side']=='X+1' and old['largest_complete_prime_power']==largest,'old gate orientation')
    need(old['cofactor']==(X+1)//largest and old['d3']==1 and (X-1)%3!=0,'old gate cofactor')
    need(old['threshold']==64*old['cofactor']**3 and old['threshold']>largest and old['gate_passes'] is False,'old gate threshold')
    return {'n':str(n),'all_legal_j':True,'original_complete_source':str(P),'opposite_retained_support':5}

def verify_shell(d):
    need(d['schema']=='B699.round4.real-shell.v1' and d['h']==1033,'shell schema')
    h,Q=d['h'],d['Q'];lo,hi=map(lambda q:F(*q),d['y_interval'])
    need(Q>=h*h and Q%2==1 and F(32)<lo<hi<F(33),'shell root bracket')
    fun=lambda y:-2*y**3+(h-1)*y*y+2*h*y-h*h
    target=-F(h,Q**3);need(fun(lo)<target<fun(hi),'wrong perturbed root')
    need(h-2*hi>4,'wrong high branch')
    n3=(h*lo-2*lo*lo+F(2,Q**3),h*hi-2*hi*hi+F(2,Q**3));s3=(h-hi,h-lo)
    t3=(n3[0]-s3[1],n3[1]-s3[0]);need(n3[1]<Q,'shell width')
    def nn2(y):return Q*y/(h-2*y)+F(2,Q**2)/(h-2*y)**2
    def ss2(y):return Q*(h-y)/(h-2*y)**2
    n2=(nn2(lo),nn2(hi));s2=(ss2(lo),ss2(hi));t2=(n2[0]-s2[1],n2[1]-s2[0])
    floor=lambda x:x.numerator//x.denominator
    got={}
    for k,(l,u) in zip(['n_Q3','sigma_Q3','tau_Q3','n_P2','sigma_P2','tau_P2'],[n3,s3,t3,n2,s2,t2]):
        need(floor(l)==floor(u),'shell crosses integer');got[k]=floor(l)
    need(got==d['floors'],'wrong shell floors')
    need(got['n_Q3']==got['sigma_Q3']+got['tau_Q3'],'q formal carry')
    need(got['n_P2']==got['sigma_P2']+got['tau_P2'],'p formal carry')
    nu_floor=floor(Q*lo);need(nu_floor==floor(Q*hi) and F(nu_floor)<Q*lo<Q*hi<F(nu_floor+1),'nu integrality not excluded')
    need('NOT NC3' in d['classification'],'missing shell boundary label')
    return {'Q':Q,'formal_carries':[0,0],'nu_strictly_between_integers':[nu_floor,nu_floor+1],'not_original_integer_input':True}

def main():
    C=ROOT/'certificates'
    U=json.loads((C/'uniform.json').read_text());PC=json.loads((C/'primes.json').read_text())
    primes=verify_primes(PC)
    ans={'checker':'A','uniform':verify_uniform(U),'certified_primes':len(primes),
        'row':verify_row(json.loads((C/'row_2pow167.json').read_text()),primes),
        'shell':verify_shell(json.loads((C/'real_shell.json').read_text()))}
    print(json.dumps(ans,indent=2))
    return ans
if __name__=='__main__':main()
