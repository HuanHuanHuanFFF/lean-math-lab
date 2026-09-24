#!/usr/bin/env python3
"""Checker B: multidegree-bounded grid identities and rational polynomial division.
No imports from Checker A/generator; standard library only. This is not peer review.
"""
from __future__ import annotations
import argparse,itertools,json,math
from fractions import Fraction as F
from pathlib import Path

class CheckError(ValueError):pass

def need(q,msg):
    if not q:raise CheckError(msg)

def degree(e,var):
    if isinstance(e,int):return 0
    if isinstance(e,str):return int(e==var)
    if e[0]=='add':return max([degree(a,var) for a in e[1:]]+[0])
    if e[0]=='mul':return sum(degree(a,var) for a in e[1:])
    need(e[0]=='pow' and isinstance(e[2],int) and e[2]>=0,'AST degree')
    return degree(e[1],var)*e[2]

def ev(e,env):
    if isinstance(e,int):return e
    if isinstance(e,str):return env[e]
    if e[0]=='add':return sum(ev(v,env) for v in e[1:])
    if e[0]=='mul':return math.prod(ev(v,env) for v in e[1:])
    need(e[0]=='pow','AST op');return ev(e[1],env)**e[2]

def at(a,t):return sum(c*t**i for i,c in enumerate(a))
def trim(a):
    a=list(a)
    while len(a)>1 and a[-1]==0:a.pop()
    return a

def rational_remainder(a,b):
    a=list(map(F,a));b=list(map(F,b));a=trim(a)
    while any(a) and len(a)>=len(b):
        pos=len(a)-len(b);q=a[-1]/b[-1]
        for i,c in enumerate(b):a[pos+i]-=q*c
        a=trim(a)
    return a

def valuation(n,p):
    need(n!=0,'valuation zero');n=abs(n);z=0
    while True:
        q,r=divmod(n,p)
        if r:return z
        n=q;z+=1

def isprime(p):
    if not isinstance(p,int) or p<2:return False
    for d in range(2,math.isqrt(p)+1):
        if p%d==0:return False
    return True

def digital_carries(n,j,p):
    k=n-j;cin=0;count=0
    while n or j or k or cin:
        n,rn=divmod(n,p);j,rj=divmod(j,p);k,rk=divmod(k,p)
        s=rj+rk+cin;need(s%p==rn,'digit addition identity');cin=s//p;count+=cin
    return count

EXPECTED_IDS=['classification_delta','classification_final','cubic_factor_coefficients','exception_first_window',
'exception_j_factor','exception_k_factor','exception_source1','exception_source2','exception_sum','exception_three_deficit',
'explicit_split_threshold','linear_source_remainder','positive_product_bound','pseudo_norm_gap','second_source_transport','slot_cubic_expansion']

def row(r):
    p=r['p'];e=r['e'];need(isprime(p) and p!=2 and e>=1,'base prime power')
    f=r['f'];d=len(f)-1;need(d>=1 and f[-1]>0 and f[0]==2 and all(isinstance(v,int) and v>=0 for v in f),'nonnegative digits')
    H=sum(f)
    if r['kind']=='cubic':
        need(d==3 and r['A']>0 and r['B']>=0 and r['C']>=0,'cubic scope')
        target=lambda t:r['A']*t**3+r['B']*t*t+r['C']*t+2
        bound=(2*(H+2))**10
    elif r['kind']=='primary':
        G=r['G'];U=r['U'];m=r['multiplicity'];dg=len(G)-1
        need(m>0 and 3*m*dg>2*d and len(U)-1+m*dg==d,'strict primary degree')
        irr=r['irreducibility']
        if irr['type']=='linear':need(dg==1 and G[-1]!=0,'linear factor')
        else:
            need(irr['type']=='reverse_eisenstein','irreducible certificate');ell=irr['prime']
            need(isprime(ell) and G[0]==1 and G[-1]%ell==0 and G[-1]%(ell*ell)!=0 and all(v%ell==0 for v in G[1:]),'Eisenstein exact once')
        target=lambda t:1+at(U,t)*at(G,t)**m
        bound=(2*(H+2))**(2*d+4)
    elif r['kind']=='split':
        U=r['U'];B=r['B'];h=r['h'];ell=r['eisenstein_prime'];rdeg=len(U)-1
        need(U[0]==1 and rdeg>=1 and U[-1]>0 and all(v>=0 for v in U),'U scope')
        need(B>=2 and isprime(ell) and B%ell==0 and B%(ell*ell)!=0,'Eisenstein valuation')
        need(h>2*rdeg and d==h+rdeg,'strict gap')
        target=lambda t:1+at(U,t)*(1+B*t**h)
        bound=4*B**3*(H+2)**2
    else:raise CheckError('unknown theorem')
    # Degree-bounded univariate identity test; not a scan over the original n.
    need(all(at(f,t)==target(t) for t in range(d+1)),'coefficient/theorem correspondence')
    T=p**e;n=at(f,T);need(T>=bound and T>H and n%2==0,'threshold or even row')
    need(r['H']==H and int(r['T'])==T and int(r['n'])==n and int(r['bound'])==bound and r['n_mod4']==n%4,'row output')
    lo=min(i for i in range(1,d+1) if f[i]);E=valuation(n-2,p)
    need(r['lowest_index']==lo and E==r['source_exponent']==r['predicted_source_exponent']==e*lo+valuation(f[lo],p),'complete prime power')
    cv=valuation(n*(n-1)*(n-2)//6,p)
    need(cv>0 and cv==r['v_p_Cn3']==E-(p==3),'original C(n,3)')
    return int(n%4==2)

def check(data):
    expected_scope={'index':3,'allow_prime_3':True,'same_input':True,'adopted_NC3_implies_4_divides_n':True,
      'lean':False,'repository_writes':False,'polynomial_divisibility_is_not_sufficient':True}
    expected_stat={'cubic_degree':3,'constant_term':2,'lifting_base_factor':2,'lifting_degree_multiplier':2,'lifting_offset':4,
      'primary_comparison':'strict_3e_gt_2d','split_comparison':'strict_h_gt_2r','split_threshold_factor':4}
    need(data['schema']=='B699-R6-v1' and data['scope']==expected_scope and data['statements']==expected_stat,'scope guard')
    ids=data['identities'];need(sorted(r['id'] for r in ids)==EXPECTED_IDS,'identity inventory')
    points=0
    for r in ids:
        names=r['variables'];need(len(names)==len(set(names)),'unique variables')
        bounds=[max(degree(r['lhs'],v),degree(r['rhs'],v)) for v in names]
        for t in itertools.product(*(range(b+1) for b in bounds)):
            env=dict(zip(names,t));need(ev(r['lhs'],env)==ev(r['rhs'],env),'grid identity '+r['id']);points+=1
    q=data['unit_mod3'];need(q['constant_residue']==2,'unit residue')
    # Degree of Z is 6; reconstruct by exact bounded interpolation evaluations.
    zz=q['polynomial'];need(len(zz)==7,'unit degree')
    fun=lambda u:2*(3*u+2)*(6*u+1)*(36*u*u+21*u+1)*(72*u*u+78*u+23)
    need(all(at(zz,u)==fun(u) for u in range(7)),'same unit polynomial')
    need(zz[0]%3==2 and all(v%3==0 for v in zz[1:]),'all-parameter 3-unit')
    for r in data['pseudo_divisions']:
        f=r['f'];J=r['J'];s=r['source'];d=len(f)-1
        need(s in (1,2) and r['degree']==d,'source degree')
        Fs=f[:];Fs[0]-=s;need(Fs==r['divisor'],'source correspondence')
        G=r['G'];need(len(G)-1<=(s+1)*d,'numerator degree')
        M=3 if s==1 else 6
        need(all(at(G,t)==M*math.prod(at(J,t)-i for i in range(s+1)) for t in range((s+1)*d+1)),'falling factorial identity')
        rr=rational_remainder(G,Fs);ex=r['exponent'];need(0<=ex<=2*d+1,'pseudo exponent')
        scaled=trim([v*f[-1]**ex for v in rr]);need(scaled==list(map(F,r['pseudo_remainder'])),'rational division verification')
        bound=6*(sum(f)+2)**3*(2*(sum(f)+2))**(2*d+1)
        need(int(r['norm_bound'])==bound and sum(abs(v) for v in scaled)<=bound,'height check')
    for r in data['exception_samples']:
        u=int(r['u']);n=216*u**3+162*u*u+27*u+2;t=(3*u+2)*(4*u+1)*(6*u+1);ss=n-t
        need(u>0 and int(r['n'])==n and int(r['tau'])==t and int(r['sigma'])==ss and int(r['j'])==min(t,ss),'raw input')
        E=valuation(n-2,3);need(E>=4 and r['E']==E and r['layers']==[E-2,E-1,E] and r['carries']==[1,1,1],'original layers')
        # Residue/borrow characterization, independent of quotient-floor checker A.
        need(all(n%3**h==2 and t%3**h>2 for h in r['layers']),'source borrow')
        need(valuation(t*(t-1)*(t-2),3)==r['vp_tau_falling3']==E-3,'three missing powers')
        need(int(r['gcd'])==math.gcd(n,t) and digital_carries(n,t,3)>=3,'true gcd/carry')
    parity_old=sum(row(r) for r in data['rows'])
    reg=data['original_regression'];need(reg=={'n_min':8,'n_max':90,'j_min':4,'primes':[2,3,5,7,11,13]},'fixed regression scope')
    checks=0;pairs=0
    for n in range(8,91):
      for j in range(4,n//2+1):
        pairs+=1
        # Integer multiplicative recurrence, not math.comb.
        bc=1
        for a in range(1,j+1):bc=bc*(n-a+1)//a
        for p in reg['primes']:
            need(valuation(bc,p)==digital_carries(n,j,p),'binomial vs digit addition');checks+=1
    return {'checker':'B','status':'PASS','identities':len(ids),'exact_grid_points':points,
      'pseudo_divisions':len(data['pseudo_divisions']),'rows':len(data['rows']),
      'row_examples_using_old_parity_exit':parity_old,'exception_samples':len(data['exception_samples']),
      'original_pairs':pairs,'valuation_regressions':checks}

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('certificate',type=Path);a=ap.parse_args()
    print(json.dumps(check(json.loads(a.certificate.read_text())),sort_keys=True))
