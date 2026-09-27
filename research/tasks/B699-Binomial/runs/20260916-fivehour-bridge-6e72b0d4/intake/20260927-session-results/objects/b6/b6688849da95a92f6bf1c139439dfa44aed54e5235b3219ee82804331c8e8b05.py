#!/usr/bin/env python3
"""Round 4 deterministic evidence generator; integer/Fraction arithmetic only.
No repository access, network, Lean, historical replay, or third-party CAS.
"""
from __future__ import annotations
import argparse, json, sys
from fractions import Fraction
from math import gcd, isqrt
from pathlib import Path
if hasattr(sys, 'set_int_max_str_digits'): sys.set_int_max_str_digits(0)

def vp(x:int,p:int):
    if x==0: return 'infinity'
    x=abs(x); e=0
    while x%p==0: x//=p; e+=1
    return e

def vfrac(x:Fraction,p:int):
    if not x:return 'infinity'
    return vp(x.numerator,p)-vp(x.denominator,p)

def jac(a:int,n:int)->int:
    if n<=0 or n%2==0:raise ValueError('positive odd denominator required')
    a%=n; out=1
    while a:
        while a%2==0:
            a//=2
            if n%8 in (3,5):out=-out
        a,n=n,a
        if a%4==3 and n%4==3:out=-out
        a%=n
    return out if n==1 else 0

def prime(p:int)->bool:
    return p>=2 and all(p%d for d in range(2,isqrt(p)+1))

def rough(x:int)->int:
    if x<=0:raise ValueError('rough input positive')
    for p in (2,3,5):
        while x%p==0:x//=p
    return x

def sat(T:int,B:int):
    if T<1 or B==0:raise ValueError('positive T; nonzero support input')
    b=gcd(T,abs(B)); trace=[b]
    while True:
        nxt=gcd(T,b*b)
        if nxt==b:break
        b=nxt;trace.append(b)
    return b,T//b,trace

def binv(n:int,j:int,p:int)->int:
    s=0;k=n-j
    while n:
        n//=p;j//=p;k//=p;s+=n-j-k
    return s

def canonical(a:int,z:int):
    # This inherited recovery formula is used ONLY to create regression inputs.
    # No new recovery or enumeration theorem is claimed.
    h=1;r=1
    while h<a:
        h=min(2*h,a);q=3**h
        r=((r+10*pow(r,-1,q))*pow(2,-1,q))%q
    al=3**a; beta=r*z%al;beta=min(beta,al-beta)
    den=10*al*z*z;num=beta*(al-beta)+10*z*z
    assert num%den==0
    g=num//den;n=g*al;j=g*beta;k=n-j;N=n-1
    assert gcd(n,j)==g and n%6==0 and 7<=j and 2*j<n
    U=j*k//N
    assert j*k==N*U and U==10*g*g*z*z
    delta=al-2*beta
    assert delta*delta+40*N*z*z==al*al and gcd(delta,z)==1
    H=al*al//3-40*z*z;C=gcd(rough(n-4),j-2)
    assert H%C==0
    T=H//C;D=gcd(T,N);A,O,tr=sat(T,N);I=A//D
    E4=gcd(rough(n-4),j*k);A4=gcd(rough(n-4),(j-1)*(k-1))
    qs=[rough(n-r) for r in range(1,6)]
    p=17;e=vp(N,p);f=vp(T,p)
    return {'kind':'actual canonical S input, NOT current B-RES10 model',
      'a':a,'z':z,'n':n,'j':j,'g':g,'alpha':al,'beta':beta,'delta':delta,
      'N':N,'U':U,'H':H,'C':C,'T':T,'E4':E4,'A4':A4,
      'D':D,'T_N':A,'I':I,'O':O,'Delta':T//D,'saturation_trace':tr,
      'chi_T':jac(3,T),'chi_T_N':jac(3,A),'chi_O':jac(3,O),'chi_D':jac(3,D),'chi_I':jac(3,I),
      'p':p,'e':e,'f':f,'e_in_D':vp(D,p),'e_in_I':vp(I,p),
      'p_is_negative_odd_T':(f%2==1),'p_is_negative_odd_Delta':(vp(T//D,p)%2==1),
      'source_bin_v':binv(n,6,p),'target_bin_v':binv(n,j,p),
      'contracts':{'actual_alpha_power3':True,'global_primitive_norm':True,'full_first_source':True,
        'E4_square':isqrt(E4)**2==E4,'negative_C':jac(3,C)==-1,
        'complete_C':gcd(C,rough(n-4)//C)==1,
        'complete_q4_window':E4*A4*C==qs[3],
        'all_q5_near':(j-1)*(k-1)%qs[4]==0,
        'B18000':n%18000==14130,
        'v2_nminus2_ge65':vp(n-2,2)>=65,'v5_nminus5_ge27':vp(n-5,5)>=27}}

def local_row(p:int,e:int,f:int,a:int=41):
    P=p**e
    def Q(M):return M*(1+P*M)**2-12*(1+P*(M-1))
    M=12%p;mod=p
    for _ in range(1,f):
        c=(-Q(M)//mod)%p;M+=c*mod;mod*=p
    forbidden=(-Q(M)//mod)%p
    c=(forbidden+1)%p;M+=c*mod
    assert vp(Q(M),p)==f and M>1
    n=1+P*M;j=P;N=n-1;U=Fraction(n-P,M)
    S=5**7;qloc=Fraction(n-5,S);Rloc=(U-1)/qloc;L=48*Rloc-11*S
    if not L:
        M+=p**(f+1);n=1+P*M;N=n-1;U=Fraction(n-P,M)
        qloc=Fraction(n-5,S);Rloc=(U-1)/qloc;L=48*Rloc-11*S
    assert vp(Q(M),p)==f
    K=f+3;mod=p**K;al=3**a
    z2=al*al*(n-P)*pow(10*n*n*M,-1,mod)%mod
    z=next(x for x in range(1,p) if x*x%p==z2%p)
    mm=p
    for _ in range(1,K):
        cc=((z2-z*z)//mm*pow(2*z,-1,p))%p
        z+=cc*mm;mm*=p
    H=al*al//3-40*z*z
    norm_clear=al*al*(n-2*j)**2+40*N*n*n*z*z-al*al*n*n
    assert norm_clear%mod==0 and vp(H,p)==f
    assert binv(n,j,p)==0 and binv(n,6,p)==e
    u=vfrac(L,p)
    assert (u==min(e,f) if e!=f else u>=e)
    return {'model_type':'p-adic relaxation; NOT a global canonical or B-RES10 input',
      'p':p,'e':e,'f':f,'P':P,'M':M,'n':n,'j':j,
      'chi3':jac(3,p),'chi10':jac(10,p),
      'actual_gcd':gcd(n,j),'actual_alpha':n//gcd(n,j),
      'nominal_local_a':a,'nominal_local_alpha':al,
      'norm_modulus':mod,'local_z_residue':z,'v_H_from_residue':vp(H,p),
      'U_fraction':[U.numerator,U.denominator],
      'S5_local':S,'q5_local_fraction':[qloc.numerator,qloc.denominator],
      'R5_local_fraction':[Rloc.numerator,Rloc.denominator],
      'Lambda5_fraction':[L.numerator,L.denominator],'u':u,
      'source_bin_v':e,'target_bin_v':0,
      'global_norm_asserted':False,'global_all_q5_near_asserted':False,
      'global_actual_alpha_preserved':n//gcd(n,j)==al}

# Sparse polynomials in n,j,U,S,R,q,g,C,T,w, with integer coefficients.
VARS=('n','j','U','S','R','q','g','C','T','w')
def cst(c):return {(0,)*len(VARS):c} if c else {}
def var(k):
    e=[0]*len(VARS);e[VARS.index(k)]=1;return {tuple(e):1}
def add(a,b):
    o=a.copy()
    for k,v in b.items():o[k]=o.get(k,0)+v
    return {k:v for k,v in o.items() if v}
def scale(a,s):return {k:v*s for k,v in a.items() if v*s}
def mul(a,b):
    o={}
    for i,x in a.items():
        for j,y in b.items():
            k=tuple(u+v for u,v in zip(i,j));o[k]=o.get(k,0)+x*y
    return {k:v for k,v in o.items() if v}
def sub(a,b):return add(a,scale(b,-1))
def symbolic_certificate():
    n,j,U,S,R,q,g,C,T,w=[var(k) for k in VARS]
    N=sub(n,cst(1));F=sub(mul(n,n),scale(U,12));L=sub(scale(R,48),scale(S,11))
    n_sub=add(mul(S,q),cst(5));U_sub=add(mul(R,q),cst(1))
    N_sub=sub(n_sub,cst(1));F_sub=sub(mul(n_sub,n_sub),scale(U_sub,12))
    id1=sub(mul(q,L),sub(mul(N_sub,sub(scale(n_sub,4),cst(7))),scale(F_sub,4)))
    id2=sub(mul(S,F_sub),add(mul(N_sub,sub(mul(S,add(n_sub,cst(1))),scale(R,12))),L))
    norm_w=sub(mul(n,n),scale(mul(N,U),4))
    id3=sub(scale(norm_w,3),add(mul(mul(n,n),sub(cst(4),n)),mul(N,F)))
    assert id1==id2==id3=={}
    # Exact small numerator that proves the positive-character return at 4n=7.
    # 3*w^2 = n^2(4-n) at F=0 -> 4*w^2=3*n^2 at n=7/4.
    grids=[]
    for e in range(1,6):
        S0=5**e
        grids.append({'E':e,'S':S0,'Lambda_mod12':(-11*S0)%12,'chi3_abs_Lambda':(-1)**e,
          'R_max':(S0-1)//4,'abs_Lambda_bound':11*S0-48})
    return {'variables':VARS,'zero_polynomials':{'return5':[], 'first_gcd_identity':[], 'norm_discriminant':[]},
      'identities':[
       'q*(48*R-11*S)=(n-1)*(4*n-7)-4*(n*n-12*U), n=S*q+5,U=R*q+1',
       'S*(n*n-12*U)=(n-1)*(S*(n+1)-12*R)+(48*R-11*S), n=S*q+5,U=R*q+1',
       '3*(n*n-4*(n-1)*U)=n*n*(4-n)+(n-1)*(n*n-12*U)'],
      'character_grids':grids}

def partition_grid():
    rows=[]
    for e in range(1,5):
      for f in range(1,7):
       for h in range(0,4):
        N=17**e*13**2;T=17**f*13**3*29**h
        D=gcd(N,T);A,O,tr=sat(T,N);I=A//D
        kapp=lambda ff: 17**(ff.get(17,0)%2)*29**(ff.get(29,0)%2)
        KT=kapp({17:f,29:h});KD=kapp({17:min(e,f)});KI=kapp({17:max(0,f-e)});KO=kapp({29:h})
        assert KT==KO*KD*KI//gcd(KD,KI)**2
        assert jac(3,O)==jac(3,T)*jac(3,D)*jac(3,I)
        rows.append({'e17_N':e,'f17_T':f,'h29_T':h,'N':N,'T':T,'D':D,'T_N':A,'I':I,'O':O,
                     'kappa_T':KT,'kappa_D':KD,'kappa_I':KI,'kappa_O':KO,'trace':tr})
    return {'purpose':'exact exponent bookkeeping tests, not original-input models','rows':rows}

def near_relaxation():
    a=9;al=3**a;beta=4846;E=11;q=4547;n=5**E*q+5;g=n//al;j=g*beta;k=n-j
    C=gcd(rough(n-4),j-2);E4=gcd(rough(n-4),j*k)
    assert n%al==0 and gcd(n,j)==g and prime(q) and jac(10,q)==1
    assert rough(n-5)==q and j%q==1 and C==103 and E4==1
    assert gcd(C,rough(n-4)//C)==1
    assert beta*(al-beta)<10*(n-1) # canonical positive integer z impossible
    return {'kind':'exact weak input; keeps alpha, all-near, central; FAILS first/global norm',
      'a':a,'alpha':al,'beta':beta,'n':n,'j':j,'g':g,'E':E,'q5':q,'C':C,'E4':E4,
      'first_window_remainder':j*k%(n-1),'norm_numerator':beta*(al-beta),'norm_denominator':10*(n-1),
      'contracts':{'actual_alpha_power3':True,'all_q5_near':True,'E4_square':True,
        'negative_C':True,'complete_C':True,'full_first_source':False,'global_primitive_norm':False,
        'current_B_RES10':False},
      'warning':'Not a model of the conjunction requested in this round. No T or canonical z is assigned.'}

def return_residues():
    rows=[]
    for p in range(7,500):
        if not prime(p):continue
        n0=7*pow(4,-1,p)%p
        w2=n0*n0*(4-n0)*pow(3,-1,p)%p
        ok=n0!=0 and (w2==0 or pow(w2,(p-1)//2,p)==1)
        if jac(3,p)==-1:assert not ok
        rows.append({'p':p,'chi3':jac(3,p),'chi10':jac(10,p),'chi30':jac(30,p),
          'nonfirst_root_n':n0,'discriminant_square_residue':w2,
          'compatible_with_nonzero_n_and_square':ok})
    return {'scope':'finite residue check of a universal paper proof; not original inputs','rows':rows}

def write_json(path:Path,data):
    path.write_text(json.dumps(data,ensure_ascii=False,sort_keys=True,indent=2)+'\n',encoding='utf-8')

def main():
    pa=argparse.ArgumentParser();pa.add_argument('--out',type=Path,required=True);args=pa.parse_args();out=args.out;out.mkdir(parents=True,exist_ok=True)
    sy=symbolic_certificate();write_json(out/'symbolic.json',sy)
    rt=return_residues();write_json(out/'return_residues.json',rt)
    pg=partition_grid();write_json(out/'partition_grid.json',pg)
    ps=[p for p in range(7,200) if prime(p) and jac(3,p)==jac(10,p)==-1]
    lr=[local_row(p,e,f) for p in ps for e in (1,2,3) for f in (1,2,3,4,5)]
    write_json(out/'local_nonforcing.json',{'scope':'universal theorem illustrated by exact finite certificates; NOT global models','primes':ps,'rows':lr})
    ca=[canonical(a,z) for a,z in [(100,4),(9920,1),(854,2),(924,1)]]
    write_json(out/'canonical_partitions.json',{'rows':ca,'universal_claim':False,'claimed_current_models':0})
    near=near_relaxation();write_json(out/'near_relaxation.json',near)
    su={'symbolic_identities':3,'return_residue_primes':len(rt['rows']),'partition_rows':len(pg['rows']),'negative_primes':ps,'local_rows':len(lr),
        'canonical_inputs':len(ca),'near_relaxation_inputs':1,'canonical_and_allnear_and_central_models':0,
        'R7':[3,4,5,6,7,8,9],'certified_net_historical_reduction':0,
        'B_RES10_closed':False,'Lean':False,'external_independent_review':False,
        'main_new_theorems':['RETURN5 negative support equivalence','complete clipped-valuation table',
          'D <= 11*5^E-48','exact overflow/outside parity routing'],
        'bound_warning':'Bounds source-clipped exponents, NOT the full f=v_p(T) or E itself.'}
    write_json(out/'summary.json',su)
    print(json.dumps(su,ensure_ascii=False,sort_keys=True))
if __name__=='__main__':
    if not __debug__:raise RuntimeError('Do not run proof checks with Python -O or -OO.')
    main()
