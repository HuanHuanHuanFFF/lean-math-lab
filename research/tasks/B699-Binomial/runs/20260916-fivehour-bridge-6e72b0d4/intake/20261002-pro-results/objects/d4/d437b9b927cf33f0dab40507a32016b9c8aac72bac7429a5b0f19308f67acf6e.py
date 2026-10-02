#!/usr/bin/env python3
"""Separate C-R13 receiver. Does not import discover.py or probe_h.py.
Bounded h recovery runs along original n and actual S0, not along h/alpha divisors.
"""
from __future__ import annotations
import argparse,hashlib,json,math
from fractions import Fraction
from pathlib import Path

DATA=[(252,1,3,1),(704,1,1,3),(850,3,1,5),(954,1,3,1),(1100,1,1,15),(1552,3,1,1)]
H=1024

def encode(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,separators=(',',':'))+'\n').encode()
def pretty(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def smallpart(n):
    s=1
    for p in [5,3,2]:
        while n%p==0:n//=p;s*=p
    return s

def factorpairs(n):
    # Trial all positive integers; not the producer's 2 / odd-prime factor loop.
    ans=[];q=2
    while q*q<=n:
        power=1;e=0
        while n%q==0:n//=q;power*=q;e+=1
        if e:ans.append((q,e,power))
        q+=1
    if n>1:ans.append((n,1,n))
    return ans

def divisors(n):
    out=[]
    for k in range(1,math.isqrt(n)+1):
        if n%k==0:
            out.append(k)
            if k*k!=n:out.append(n//k)
    return sorted(out)

def power_val(n,p):
    if not n:raise ValueError('zero has no finite valuation')
    e=0;n=abs(n)
    while n%p==0:e+=1;n//=p
    return e

def carries(n,j,p):
    k=n-j;c=tot=0
    while j or k or c:
        c=(j%p+k%p+c)//p;tot+=c;j//=p;k//=p
    return tot

def binom_poly(a):
    v=[Fraction(1)]
    for r in range(a):
        w=[Fraction(0)]*(len(v)+1)
        for i,c in enumerate(v):w[i]-=r*c;w[i+1]+=c
        v=w
    return [x/math.factorial(a) for x in v]

def interpolate(F,D):
    c={}
    for a in range(D+1):
        for b in range(D+1-a):
            z=sum((-1)**(a+b-i-j)*math.comb(a,i)*math.comb(b,j)*F(i,j)
                  for i in range(a+1) for j in range(b+1))
            if not z:continue
            A=binom_poly(a);B=binom_poly(b)
            for i,x in enumerate(A):
                for j,y in enumerate(B):c[i,j]=c.get((i,j),Fraction(0))+z*x*y
    assert all(x.denominator==1 for x in c.values())
    return [[i,j,int(x)] for (i,j),x in sorted(c.items()) if x]

def kernels():
    ans={}
    for name,D,third,req in [('P13',4,False,[0,2,0,1,0,0]),('P135',6,True,[0,3,0,1,0,1])]:
        F=lambda x,y:x*y*((x-y)**2-1)*(((x-y)**2-2*(x+y)+1) if third else 1)
        coeffs=interpolate(F,D);orders=[]
        for r in range(6):
            row=[]
            for b in range(r+1):
                x=b;y=r-b;d=x-y
                o=(x==0)+(y==0)+(d*d==1)
                if third:o+=(d*d-2*r+1==0)
                row.append(int(o))
            orders.append(row)
        ans[name]={'coefficients':coeffs,'orders':orders,'required_source_powers':req,'g_division_power':2,'total_degree':D}
    return ans

def tail():
    records=[];zero=[];pairs=tests=0
    for s,S3 in [(1,1),(1,3),(3,1)]:
        m=s*S3
        for g in range(1,max(s*m,3*s)):
            for h in range(1,(4*g-1)//m+1):
                pairs+=1;a=4*g*g;b=g*h-3*s;M=m*(g*h+s)
                if b==0:
                    assert M%a==0
                    # The two actual affine n forms are odd for all integral tau.
                    assert (s,S3,g,h) in [(1,1,1,3),(3,1,3,3)]
                    zero.append({'s':s,'S3':S3,'g':g,'h':h,'quotient':M//a,'integral':True,'excluded':'n is odd'})
                    continue
                tests+=max(0,(abs(M*b)-b)//a)
                for den in divisors(abs(M*b)):
                    if (den-b)%a:continue
                    tau=(den-b)//a
                    if tau<1 or M*tau%den or (4*tau*g+h)%s:continue
                    alpha=(4*tau*g+h)//s;n=g*alpha
                    if n<14:why='n<14'
                    elif n%2:why='n is odd'
                    elif (n-1)%s:why='s does not divide n-1'
                    else:raise AssertionError('surviving original input in sharp-ratio tail')
                    records.append([s,S3,g,h,tau,alpha,n,M*tau//den,why])
    records.sort()
    return {'pair_count':pairs,'trial_tau_count':tests,'finite_records':records,
      'zero_denominator_constant_branches':zero,'remaining_original_inputs':0,
      'gh_equals_s':'impossible: d^2-2n+1 is 1 mod 4',
      'gh_less_than_s_last_case':[3,1,2,38,'3 does not divide 37']}

def menus():
    items=[];ordinary=[];table=[]
    for r,s,S3,S5 in DATA:
        m=s*S3;kap=m*S5;cap=(31+kap*H*H)//4;cnt=0
        for n in range(r,cap+1,1800):
            if n<14:continue
            S0=smallpart(n)
            for alpha in divisors(S0):
                if alpha<2:continue
                g=n//alpha
                if 4*g>m*H:continue
                h0=1+((s*alpha-1)%(4*g))
                for h in range(h0,H+1,4*g):
                    if 4*g>m*h or 4*n>=32+kap*h*h:continue
                    tau=(s*alpha-h)//(4*g)
                    if tau<=0:continue
                    num=h*alpha+4*tau
                    items.append([r,n,alpha,g,h,tau,num,s]);cnt+=1
                    if num%s:continue
                    e=math.isqrt(num//s)
                    if e*e!=num//s or e>=alpha or (alpha-e)%2:continue
                    beta=(alpha-e)//2;j=g*beta
                    if 7<=j and math.gcd(n,j)==g:ordinary.append([n,j,g,alpha,e,h,tau])
        table.append({'residue':r,'h_bound':H,'n_cap':cap,'pre_square_menus':cnt})
    items.sort();ordinary.sort();stream=b''.join(encode(x) for x in items)
    summary={'h_max':H,'rows':table,'pre_square_menu_count':len(items),
        'menu_stream_sha256':hashlib.sha256(stream).hexdigest(),'ordinary_recoveries':ordinary,
        'scope':'six stated residues only; h is the actual first-source integer; no strip expansion'}
    return summary,stream

def constants():
    out=[]
    for r,s,S3,S5 in DATA:
        assert [smallpart(r-i) for i in (1,3,5)]==[s,S3,S5]
        out.append({'residue':r,'S1':s,'S3':S3,'S5':S5,'m':s*S3,'C':s*s*S3,
          'kappa':s*S3*S5,'cubic_distance_coefficient':s*s*(s*S3*S5)})
    return out

def examples():
    six=[];first=[]
    for u,v in [(1,0),(1,1),(2,0),(3,2)]:
        T=2**(30*u);alpha=T*T;g=29+1575*v;n=g*T*T;epsilon=3*T+2;j=g*(T*T-3*T-2)//2;d=g*epsilon
        assert n-2*j==d and math.gcd(n,j)==g
        assert n%1800==704 and epsilon>4096 and d>4096
        assert d*d>9*g*g*alpha and 15*(n-1)*(n-3)*(n-5)<(d*d-1)*(d*d-9)*(d*d-25)
        assert (4*g+1)*n-4*g<=d*d and epsilon*epsilon<=4*(n-5)
        assert j%7==5 and n%7==1
        six.append({'family':'six_class_noncontainment','u':u,'v':v,'n':n,'j':j,'g':g,'alpha':alpha,'epsilon':epsilon,
            'old_GCD_GAP_passes':True,'old_MIDPOINT_passes':True,'outside_both_4096_strips':True,
            'P13_bound_violated':True,'witness':[1,7,power_val(n-1,7),carries(n,6,7),carries(n,j,7)],
            'not_NC':True,'first_source_passes':False})
    for u in [1,2,3,4]:
        T=9**u;g=(T-1)//4;alpha=T*T;n=g*alpha;epsilon=T+2
        beta=(T-2)*(T+1)//2;j=g*beta;tau=T+1
        assert math.gcd(alpha,beta)==1 and n-2*j==g*epsilon
        assert (n-1)==(T-2)*(T*T+T+2)//4 and beta*(alpha-beta)==(n-1)*tau
        assert smallpart(n-1)==1 and smallpart(n-3)==3 and j%(n//smallpart(n))==0
        q=(n-3)//3;fail=None
        for p,e,P in factorpairs(q):
            if j%P>3:fail=[3,p,e,j%P,carries(n,6,p),carries(n,j,p)];break
        assert fail and fail[4]==fail[2] and fail[5]>0
        if n<1000:
            z=math.comb(n,j);assert z%fail[1]==0 and math.comb(n,6)%fail[1]==0
        first.append({'u':u,'T':T,'n':n,'j':j,'g':g,'alpha':alpha,'epsilon':epsilon,'h':1,'tau':tau,
            'S1':1,'S3':3,'source0_passes':True,'source1_passes':True,
            'H13_fraction':[3*(T+1)*(T+3),T*T*(T-1)-12],
            'third_source_witness':fail,'six_class_member':n%1800 in [r[0] for r in DATA]})
    return {'six_class_family':six,'first_source_only_family':first}

def regression():
    count=n13=n135=positive=0;samples=[]
    for n in range(14,1601,2):
        Q={r:(n-r)//smallpart(n-r) for r in [1,3,5]}
        fs={r:factorpairs(Q[r]) for r in Q}
        s=smallpart(n-1);S3=smallpart(n-3)
        for j in range(7,n//2+1):
            count+=1;g=math.gcd(n,j);d=n-2*j;beta=j//g;gamma=(n-j)//g
            good={r:all(j%P<=r for p,e,P in fs[r]) for r in Q}
            K=beta*gamma*(d-1)*(d+1)
            assert (K%(Q[1]*Q[1]*Q[3])==0)==(good[1] and good[3])
            if good[1] and good[3]:
                n13+=1
                tau=(beta*gamma)//Q[1];alpha=n//g;h=s*alpha-4*g*tau
                assert beta*gamma==tau*Q[1]
                if h>0 and (s,S3) in [(1,1),(1,3),(3,1)]:
                    positive+=1;assert s*S3*h>=4*g and g*h>s
                if good[5]:
                    n135+=1;K2=K*(d*d-2*n+1)
                    assert K2%(Q[1]**3*Q[3]*Q[5])==0
                    if h>0 and (s,S3) in [(1,1),(1,3),(3,1)]:
                        assert K2>0 and 4*n<32+s*S3*smallpart(n-5)*h*h
                if len(samples)<8:samples.append([n,j,Q[1],Q[3],K//(Q[1]**2*Q[3])])
    return {'n_max':1600,'all_even_n':True,'pair_count':count,'source13_passes':n13,'source135_passes':n135,
        'positive_small_s_checks':positive,'sample_kernel_values':samples,
        'role':'finite regression only, not a global completeness argument'}

def routing():
    rows=[]
    for r in [2,3,4]:
        for j in range(r+1):
            rows.append({'r':r,'b':j,'linear_coefficients_s_alpha_h':[r*(r-1)-4*j*(r-j),-r*(r-1)]})
    return {'slot_linear_forms':rows,'r2_center':'M2^2 divides tau*g^2-s; M2 divides epsilon',
        'r4_near':'A4 divides h','r4_center':'C4 divides epsilon and s*alpha+3*h',
        'joint':'q3*q4 divides tau*h*(s*alpha+3*h)','S4':'actual complete 235-part, remains unbounded'}

def outputs():
    M,stream=menus()
    S={'round':13,'date':'2026-10-02','R7':[3,4,5,6,7,8,9],'historical_net_deleted_domains':0,
       'new_complete_indices':[],'new_global_h_bound':False,'lean_run':False,'repository_modified':False,
       'external_independent_review':False,'h_finite_terminal_bound':1024,'original_input_scope':'six residue classes',
       'proof_level':'author proof + proof-bounded integer terminal + same-author separate implementation'}
    return {'source_kernels.json':pretty(kernels()),'sharp_ratio_tail.json':pretty(tail()),
       'row_constants.json':pretty(constants()),'h1024.json':pretty(M),'h1024_menus.jsonl':stream,
       'original_examples.json':pretty(examples()),'regressions.json':pretty(regression()),
       'active_routing.json':pretty(routing()),'scope_state.json':pretty(S)}

def validate(expected,actual):
    if set(expected)!=set(actual):raise AssertionError('certificate file set differs')
    for n,b in expected.items():
        if actual[n]!=b:raise AssertionError('certificate mismatch: '+n)

def main():
    pa=argparse.ArgumentParser();pa.add_argument('--out',type=Path,required=True);pa.add_argument('--check',type=Path);a=pa.parse_args()
    E=outputs();a.out.mkdir(parents=True,exist_ok=True)
    for name,b in E.items():(a.out/name).write_bytes(b);print(name,len(b),hashlib.sha256(b).hexdigest(),flush=True)
    if a.check:
        validate(E,{n:(a.check/n).read_bytes() for n in E});print('ACCEPT: all independently reconstructed certificates match')
if __name__=='__main__':main()
