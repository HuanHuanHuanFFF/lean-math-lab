#!/usr/bin/env python3
"""Checker A: exact sparse expansion, integer pseudo-division, direct binomials.
No imports from the generator or Checker B; standard library only.
"""
from __future__ import annotations
import argparse,itertools,json,math
from pathlib import Path

class CheckError(ValueError):pass

def req(x,msg):
    if not x:raise CheckError(msg)

def addp(a,b):
    c=dict(a)
    for e,v in b.items():c[e]=c.get(e,0)+v
    return {e:v for e,v in c.items() if v}

def mulp(a,b):
    c={}
    for e,v in a.items():
      for f,w in b.items():
        g=tuple(i+j for i,j in zip(e,f));c[g]=c.get(g,0)+v*w
    return {e:v for e,v in c.items() if v}

def expand(e,names):
    z=(0,)*len(names)
    if isinstance(e,int):return {z:e} if e else {}
    if isinstance(e,str):
        req(e in names,'unknown variable');v=list(z);v[names.index(e)]=1;return {tuple(v):1}
    req(isinstance(e,list) and e,'bad AST')
    op=e[0]
    if op=='add':
        r={}
        for a in e[1:]:r=addp(r,expand(a,names))
        return r
    if op=='mul':
        r={z:1}
        for a in e[1:]:r=mulp(r,expand(a,names))
        return r
    req(op=='pow' and len(e)==3 and isinstance(e[2],int) and 0<=e[2]<=32,'bad power')
    r={z:1};a=expand(e[1],names)
    for _ in range(e[2]):r=mulp(r,a)
    return r

def trim(a):
    a=list(a)
    while len(a)>1 and a[-1]==0:a.pop()
    return a

def conv(a,b):
    c=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
      for j,y in enumerate(b):c[i+j]+=x*y
    return trim(c)

def power(a,e):
    r=[1]
    for _ in range(e):r=conv(r,a)
    return r

def peval(a,x):
    r=0
    for b in reversed(a):r=r*x+b
    return r

def val(n,p):
    req(n!=0,'zero valuation');n=abs(n);e=0
    while n%p==0:n//=p;e+=1
    return e

def prime(n):
    if not isinstance(n,int) or n<2:return False
    if n%2==0:return n==2
    return all(n%d for d in range(3,math.isqrt(n)+1,2))

def carry_list(n,j,p):
    q=p;out=[]
    while q<=n:
        out.append(n//q-j//q-(n-j)//q);q*=p
    return out

IDS={'cubic_factor_coefficients','linear_source_remainder','second_source_transport','slot_cubic_expansion',
     'classification_delta','classification_final','exception_sum','exception_j_factor','exception_k_factor',
     'exception_source1','exception_source2','exception_first_window','exception_three_deficit',
     'pseudo_norm_gap','positive_product_bound','explicit_split_threshold'}
SCOPE={'index':3,'allow_prime_3':True,'same_input':True,'adopted_NC3_implies_4_divides_n':True,
       'lean':False,'repository_writes':False,'polynomial_divisibility_is_not_sufficient':True}
STAT={'cubic_degree':3,'constant_term':2,'lifting_base_factor':2,'lifting_degree_multiplier':2,'lifting_offset':4,
      'primary_comparison':'strict_3e_gt_2d','split_comparison':'strict_h_gt_2r','split_threshold_factor':4}

def check_row(r):
    p=r['p'];e=r['e'];req(prime(p) and p%2 and e>=1,'working prime power')
    f=r['f'];req(all(isinstance(a,int) and a>=0 for a in f) and f[0]==2 and f[-1]>0,'digit coefficients')
    d=len(f)-1;H=sum(f);kind=r['kind']
    if kind=='cubic':
        req(d==3 and r['A']>=1 and r['B']>=0 and r['C']>=0,'cubic scope')
        req(f==[2,r['C'],r['B'],r['A']],'cubic coefficients');bound=(2*(H+2))**10
    elif kind=='primary':
        G=r['G'];U=r['U'];m=r['multiplicity'];dg=len(G)-1
        req(m>=1 and dg>=1 and 3*m*dg>2*d,'strict dominant primary degree')
        irr=r['irreducibility']
        if irr['type']=='linear':req(dg==1 and G[-1]!=0,'linear irreducibility')
        else:
            req(irr['type']=='reverse_eisenstein','irreducibility type');ell=irr['prime']
            req(prime(ell) and G[0]==1 and all(a%ell==0 for a in G[1:]) and val(G[-1],ell)==1,'Eisenstein precision')
        expected=conv(U,power(G,m));expected[0]+=1;req(f==expected,'primary factorization')
        bound=(2*(H+2))**(2*d+4)
    elif kind=='split':
        U=r['U'];B=r['B'];h=r['h'];ell=r['eisenstein_prime'];dr=len(U)-1
        req(dr>=1 and U[0]==1 and U[-1]>0 and all(a>=0 for a in U),'split U')
        req(B>=2 and prime(ell) and val(B,ell)==1,'split Eisenstein')
        req(h>2*dr,'strict split gap')
        expected=conv(U,[1]+[0]*(h-1)+[B]);expected[0]+=1;req(f==expected,'split factorization')
        bound=4*B**3*(H+2)**2
    else:raise CheckError('unknown row theorem')
    T=p**e;n=peval(f,T)
    req(T>=bound and T>H and n%2==0,'size/parity')
    req(str(T)==r['T'] and str(n)==r['n'] and str(bound)==r['bound'] and H==r['H'],'row data')
    req(n%4==r['n_mod4'],'mod4 data')
    i0=next(i for i in range(1,len(f)) if f[i]);E=val(n-2,p)
    req(i0==r['lowest_index'] and E==e*i0+val(f[i0],p)==r['source_exponent']==r['predicted_source_exponent'],'full source precision')
    req(E-(p==3)>0 and r['v_p_Cn3']==E-(p==3),'prime endpoint eligibility')
    return n%4==2

def check(data):
    req(data['schema']=='B699-R6-v1' and data['scope']==SCOPE and data['statements']==STAT,'statement guard')
    ids=data['identities'];req(len(ids)==len(IDS) and {r['id'] for r in ids}==IDS,'identity inventory')
    terms=0
    for r in ids:
        left=expand(r['lhs'],r['variables']);right=expand(r['rhs'],r['variables'])
        req(left==right,'identity '+r['id']);terms+=len(left)
    u=data['unit_mod3'];req(u['constant_residue']==2 and u['polynomial'][0]%3==2 and all(a%3==0 for a in u['polynomial'][1:]),'true 3-adic unit')
    # Link the modular certificate to the same Z polynomial, not a free unit.
    Z=conv(conv([2,3],[1,6]),conv([1,21,36],[23,78,72]));Z=[2*v for v in Z]
    req(Z==u['polynomial'],'unit polynomial correspondence')
    for r in data['pseudo_divisions']:
        f=r['f'];J=r['J'];source=r['source'];d=len(f)-1;req(source in (1,2),'source slot')
        divisor=f[:];divisor[0]-=source;req(divisor==r['divisor'] and d==r['degree'],'pseudo source')
        g=[3 if source==1 else 6]
        for a0 in range(source+1):
            h=J[:];h[0]-=a0;g=conv(g,h)
        req(g==r['G'],'falling factorial polynomial');cur=g[:];A=f[-1];ex=0
        while any(cur) and len(cur)-1>=d:
            sh=len(cur)-1-d;c=cur[-1];cur=[A*v for v in cur]
            for i,a0 in enumerate(divisor):cur[sh+i]-=c*a0
            cur=trim(cur);ex+=1
        M=6*(sum(f)+2)**3*(2*(sum(f)+2))**(2*d+1)
        req(cur==r['pseudo_remainder'] and ex==r['exponent'] and ex<=2*d+1,'pseudo remainder')
        req(str(M)==r['norm_bound'] and sum(map(abs,cur))<=M,'pseudo height bound')
    for r in data['exception_samples']:
        u=int(r['u']);n=216*u**3+162*u*u+27*u+2;tau=(3*u+2)*(4*u+1)*(6*u+1);sigma=n-tau
        E=val(n-2,3);req(u>0 and E>=4,'exception endpoint')
        req(int(r['n'])==n and int(r['tau'])==tau and int(r['sigma'])==sigma and int(r['j'])==min(tau,sigma),'same input')
        req(r['E']==E and r['layers']==list(range(E-2,E+1)) and r['carries']==[1,1,1],'three source layers')
        req(all(n//3**a-tau//3**a-sigma//3**a==1 for a in r['layers']),'actual carry')
        req(r['vp_tau_falling3']==val(tau*(tau-1)*(tau-2),3)==E-3,'full missing valuation')
        req(int(r['gcd'])==math.gcd(n,tau),'actual gcd')
        req(sum(carry_list(n,tau,3))>=3,'same original binomial')
    parity_old=sum(check_row(r) for r in data['rows'])
    reg=data['original_regression'];req(reg=={'n_min':8,'n_max':90,'j_min':4,'primes':[2,3,5,7,11,13]},'regression inventory')
    pairs=0;valuation_checks=0
    for n in range(reg['n_min'],reg['n_max']+1):
      for j in range(4,n//2+1):
        v=math.comb(n,j);pairs+=1
        for p in reg['primes']:
            req(val(v,p)==sum(carry_list(n,j,p)),'binomial/carry correspondence');valuation_checks+=1
    return {'checker':'A','status':'PASS','identities':len(ids),'expanded_lhs_terms':terms,
            'pseudo_divisions':len(data['pseudo_divisions']),'exception_samples':len(data['exception_samples']),
            'rows':len(data['rows']),'row_examples_using_old_parity_exit':parity_old,
            'original_pairs':pairs,'valuation_regressions':valuation_checks}

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('certificate',type=Path);args=ap.parse_args()
    print(json.dumps(check(json.loads(args.certificate.read_text())),sort_keys=True))
