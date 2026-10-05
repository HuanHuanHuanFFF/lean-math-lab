#!/usr/bin/env python3
"""Exact C-R13 certificate producer. Python standard library only.
This enumerates proof-bounded h menus, not an unbounded n search.
"""
from __future__ import annotations
import argparse, hashlib, json, math
from pathlib import Path

ROWS=[(252,1,3,1,3,2),(704,1,1,3,2,0),(850,3,1,5,5,1),
      (954,1,3,1,3,1),(1100,1,1,15,5,2),(1552,3,1,1,2,0)]
HMAX=1024

def enc(x): return (json.dumps(x,ensure_ascii=False,sort_keys=True,separators=(',',':'))+'\n').encode()
def pretty(x): return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def fac(n):
    if n<1: raise ValueError('factorization requires a positive integer')
    ans={};p=2
    while p*p<=n:
        if n%p==0:
            e=0
            while n%p==0:n//=p;e+=1
            ans[p]=e
        p=3 if p==2 else p+2
    if n>1:ans[n]=1
    return ans

def divs(n):
    ans=[1]
    for p,e in fac(n).items():ans=[x*p**k for x in ans for k in range(e+1)]
    return sorted(ans)
def rough(n):
    for p in (2,3,5):
        while n%p==0:n//=p
    return n
def vp(n,p):
    if n==0:raise ValueError('valuation of zero is not finite')
    n=abs(n);e=0
    while n%p==0:n//=p;e+=1
    return e
def cv(n,j,p):
    ans=0;P=p
    while P<=n:ans+=n//P-j//P-(n-j)//P;P*=p
    return ans

def mul(A,B):
    C={}
    for (i,j),a in A.items():
        for (k,l),b in B.items():C[i+k,j+l]=C.get((i+k,j+l),0)+a*b
    return {ij:v for ij,v in C.items() if v}
def order(F,x,y):
    G={}
    for (i,j),v in F.items():
        for a in range(i+1):
            for b in range(j+1):
                G[a,b]=G.get((a,b),0)+v*math.comb(i,a)*math.comb(j,b)*x**(i-a)*y**(j-b)
    return min(a+b for (a,b),v in G.items() if v)
def kernels():
    J={(1,1):1};D={(2,0):1,(1,1):-2,(0,2):1,(0,0):-1}
    E={(2,0):1,(1,1):-2,(0,2):1,(1,0):-2,(0,1):-2,(0,0):1}
    ans={}
    for name,F,ws in [('P13',mul(J,D),[0,2,0,1,0,0]),('P135',mul(mul(J,D),E),[0,3,0,1,0,1])]:
        orders=[[order(F,b,r-b) for b in range(r+1)] for r in range(6)]
        assert all(v>=ws[r] for r,row in enumerate(orders) for v in row)
        ans[name]={'coefficients':[[i,j,v] for (i,j),v in sorted(F.items())],
                   'orders':orders,'required_source_powers':ws,'g_division_power':2,'total_degree':max(i+j for i,j in F)}
    return ans

def ratio_tail():
    rows=[];zero=[];pairs=tests=0
    for s,S3 in [(1,1),(1,3),(3,1)]:
        m=s*S3;G=max(s*m,3*s)
        for g in range(1,G):
            for h in range(1,(4*g-1)//m+1):
                pairs+=1;a=4*g*g;b=g*h-3*s;M=m*(g*h+s)
                if b==0:
                    zero.append({'s':s,'S3':S3,'g':g,'h':h,'quotient':M//a,'integral':M%a==0,'excluded':'n is odd'})
                    continue
                limit=(abs(M*b)-b)//a
                for tau in range(1,max(0,limit)+1):
                    tests+=1;den=a*tau+b
                    if den<=0 or M*tau%den or (4*tau*g+h)%s:continue
                    alpha=(4*tau*g+h)//s;n=g*alpha
                    why='n<14' if n<14 else ('n is odd' if n%2 else 's does not divide n-1')
                    assert n<14 or n%2 or (n-1)%s
                    rows.append([s,S3,g,h,tau,alpha,n,M*tau//den,why])
    return {'pair_count':pairs,'trial_tau_count':tests,'finite_records':rows,'zero_denominator_constant_branches':zero,
            'remaining_original_inputs':0,'gh_equals_s':'impossible: d^2-2n+1 is 1 mod 4',
            'gh_less_than_s_last_case':[3,1,2,38,'3 does not divide 37']}

def h_menus():
    menus=[];ordinary=[];counts=[]
    for a,s,S3,S5,p,u_max in ROWS:
        m=s*S3;kap=s*S3*S5;topall=(31+kap*HMAX*HMAX)//4
        alphas=set();v=1
        while v<=topall:
            for u in ([0] if p==2 else range(u_max+1)):
                al=(2**u)*v
                if 2<=al<=topall:alphas.add(al)
            v*=p
        nmenus=0
        for h in range(1,HMAX+1):
            top=(31+kap*h*h)//4
            for al in sorted(alphas):
                if al>top:break
                T=s*al-h
                if T<=0 or T%4:continue
                T//=4
                for g in divs(T):
                    n=g*al
                    if 4*g>m*h or n>top or n<14 or n%1800!=a:continue
                    tau=T//g;num=4*tau+h*al
                    rec=[a,n,al,g,h,tau,num,s]
                    menus.append(rec);nmenus+=1
                    if num%s:continue
                    eps=math.isqrt(num//s)
                    if eps*eps!=num//s or eps>=al or (al-eps)%2:continue
                    j=g*((al-eps)//2)
                    if j<7 or math.gcd(n,j)!=g:continue
                    ordinary.append([n,j,g,al,eps,h,tau])
        counts.append({'residue':a,'h_bound':HMAX,'n_cap':topall,'pre_square_menus':nmenus})
    menus.sort();ordinary.sort();stream=b''.join(enc(r) for r in menus)
    return {'h_max':HMAX,'rows':counts,'pre_square_menu_count':len(menus),
            'menu_stream_sha256':hashlib.sha256(stream).hexdigest(),'ordinary_recoveries':ordinary,
            'scope':'six stated residues only; h is the actual first-source integer; no strip expansion'},stream

def row_constants():
    out=[]
    for a,s,S3,S5,p,u in ROWS:
        assert a%2==0
        def small(n):return n//rough(n)
        assert [small(a-r) for r in [1,3,5]]==[s,S3,S5]
        out.append({'residue':a,'S1':s,'S3':S3,'S5':S5,'m':s*S3,'C':s*s*S3,
            'kappa':s*S3*S5,'cubic_distance_coefficient':s**3*S3*S5})
    return out

def original_examples():
    rows=[]
    for u,v in [(1,0),(1,1),(2,0),(3,2)]:
        al=2**(60*u);eps=3*2**(30*u)+2;g=29+1575*v;n=g*al;j=g*(al-eps)//2;d=n-2*j
        assert math.gcd(n,j)==g and n%1800==704 and eps>4096
        old_gap=(d*d-n)>=4*g*(n-1)
        old_mid=15*(n-1)*(n-3)*(n-5)<=(d*d-1)*(d*d-9)*(d*d-25)
        new_violation=4*(n-5)>=eps*eps
        assert old_gap and old_mid and new_violation and n%7==1 and j%7==5
        rows.append({'family':'six_class_noncontainment','u':u,'v':v,'n':n,'j':j,'g':g,'alpha':al,'epsilon':eps,
            'old_GCD_GAP_passes':old_gap,'old_MIDPOINT_passes':old_mid,'outside_both_4096_strips':True,
            'P13_bound_violated':True,'witness':[1,7,vp(n-1,7),cv(n,6,7),cv(n,j,7)],
            'not_NC':True,'first_source_passes':False})
    first=[]
    for u in [1,2,3,4]:
        T=3**(2*u);g=(T-1)//4;al=T*T;n=g*al;eps=T+2;j=g*(al-eps)//2
        N=n-1;q3=(n-3)//3;tau=T+1
        assert math.gcd(n,j)==g and N==rough(N) and rough(n-3)==q3
        assert j*(n-j)==g*g*tau*N and al-4*tau*g==1
        numerator=3*(T+1)*(T+3);denominator=T**3-T*T-12
        assert 0<numerator<denominator
        witness=None
        for p,e in fac(q3).items():
            if j%(p**e)>3:witness=[3,p,e,j%(p**e),cv(n,6,p),cv(n,j,p)];break
        assert witness
        first.append({'u':u,'T':T,'n':n,'j':j,'g':g,'alpha':al,'epsilon':eps,'h':1,'tau':tau,
            'S1':1,'S3':3,'source0_passes':True,'source1_passes':True,'H13_fraction':[numerator,denominator],
            'third_source_witness':witness,'six_class_member':n%1800 in [r[0] for r in ROWS]})
    return {'six_class_family':rows,'first_source_only_family':first}

def regressions():
    pairs=both=triple=positive=0;checks=[]
    for n in range(14,1601,2):
        qs={r:rough(n-r) for r in [1,3,5]};s=(n-1)//qs[1];S3=(n-3)//qs[3]
        for j in range(7,n//2+1):
            pairs+=1;g=math.gcd(n,j);d=n-2*j;bg=j*(n-j)//(g*g)
            p13=bg*(d*d-1);p135=p13*(d*d-2*n+1)
            p1=(j*(j-1))%qs[1]==0
            p3=math.prod(j-b for b in range(4))%qs[3]==0
            p5=math.prod(j-b for b in range(6))%qs[5]==0
            assert (p13%(qs[1]**2*qs[3])==0)==(p1 and p3)
            if p1 and p3:
                both+=1
                al=n//g;tau=bg//qs[1];h=s*al-4*tau*g
                assert bg%qs[1]==0
                if h>0 and (s,S3) in [(1,1),(1,3),(3,1)]:
                    positive+=1;assert s*S3*h>=4*g
                    assert g*h>s
                if p5:
                    triple+=1;assert p135%(qs[1]**3*qs[3]*qs[5])==0
                    if h>0 and (s,S3) in [(1,1),(1,3),(3,1)]:
                        L=p135//(qs[1]**3*qs[3]*qs[5]);assert L>0
                        S5=(n-5)//qs[5];assert 4*n<32+s*S3*S5*h*h
            if len(checks)<8 and p1 and p3:checks.append([n,j,qs[1],qs[3],p13//(qs[1]**2*qs[3])])
    return {'n_max':1600,'all_even_n':True,'pair_count':pairs,'source13_passes':both,
            'source135_passes':triple,'positive_small_s_checks':positive,'sample_kernel_values':checks,
            'role':'finite regression only, not a global completeness argument'}

def routing():
    # Consequences at the genuine source p^e, not extra source exponents.
    out=[]
    for r in [2,3,4]:
        for b in range(r+1):
            num=(r-2*b)**2-r
            out.append({'r':r,'b':b,'linear_coefficients_s_alpha_h':[num,-r*(r-1)]})
    return {'slot_linear_forms':out,'r2_center':'M2^2 divides tau*g^2-s; M2 divides epsilon',
            'r4_near':'A4 divides h','r4_center':'C4 divides epsilon and s*alpha+3*h',
            'joint':'q3*q4 divides tau*h*(s*alpha+3*h)',
            'S4':'actual complete 235-part, remains unbounded'}

def outputs():
    h,stream=h_menus()
    state={'round':13,'date':'2026-10-02','R7':[3,4,5,6,7,8,9],'historical_net_deleted_domains':0,
           'new_complete_indices':[],'new_global_h_bound':False,'lean_run':False,'repository_modified':False,
           'external_independent_review':False,'h_finite_terminal_bound':1024,'original_input_scope':'six residue classes',
           'proof_level':'author proof + proof-bounded integer terminal + same-author separate implementation'}
    return {'source_kernels.json':pretty(kernels()),'sharp_ratio_tail.json':pretty(ratio_tail()),
       'row_constants.json':pretty(row_constants()),'h1024.json':pretty(h),'h1024_menus.jsonl':stream,
       'original_examples.json':pretty(original_examples()),'regressions.json':pretty(regressions()),
       'active_routing.json':pretty(routing()),'scope_state.json':pretty(state)}

def main():
    pa=argparse.ArgumentParser();pa.add_argument('--out',type=Path,required=True);args=pa.parse_args()
    args.out.mkdir(parents=True,exist_ok=True)
    for name,data in outputs().items():
        (args.out/name).write_bytes(data);print(name,len(data),hashlib.sha256(data).hexdigest(),flush=True)
if __name__=='__main__':main()
