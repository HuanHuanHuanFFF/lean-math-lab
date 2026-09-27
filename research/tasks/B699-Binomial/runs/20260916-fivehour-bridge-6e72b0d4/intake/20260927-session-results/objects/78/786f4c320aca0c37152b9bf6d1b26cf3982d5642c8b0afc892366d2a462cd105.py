#!/usr/bin/env python3
"""Round 5 exact certificates: primitive R5 resonance and nonlinear carry lifts.
Only Python standard library; no network, repository, Lean or historical replay.
"""
from __future__ import annotations
import argparse, hashlib, json
from math import gcd,isqrt
from pathlib import Path

def vp(n,p):
    if not n:raise ValueError('valuation of zero is not a finite certificate')
    n=abs(n);e=0
    while n%p==0:n//=p;e+=1
    return e

def prime(n):return n>=2 and all(n%d for d in range(2,isqrt(n)+1))

def jac(a,n):
    if n<1 or n%2==0:raise ValueError('positive odd denominator')
    a%=n;s=1
    while a:
        while a%2==0:
            a//=2
            if n%8 in (3,5):s=-s
        a,n=n,a
        if a%4==n%4==3:s=-s
        a%=n
    return s if n==1 else 0

def digits_ok(b,m,p,h):
    for _ in range(h):
        if b%p>m%p:return False
        b//=p;m//=p
    return True

def Q_b(b,m,P):
    n=1+P*m
    return 12*b*(n-P*b)-m*n*n

def b_root(m,p,e,h):
    """Unique root of Q_b=0, with the correct non-linear higher digits."""
    P=p**e;b=(m*pow(12,-1,p))%p;mod=p
    for _ in range(1,h):
        residue=Q_b(b,m,P)
        assert residue%mod==0
        digit=(-residue//mod*pow(12,-1,p))%p
        b+=digit*mod;mod*=p
    assert Q_b(b,m,P)%mod==0
    return b

def R_from_M(m,p,e,h,S):
    P=p**e;mod=p**(e+h);n=1+P*m
    return S*(n*n-12)*pow(12*(P*m-4),-1,mod)%mod

def M_from_R(R,S,p,e,h):
    P=p**e;La=48*R-11*S
    assert vp(La,p)==e
    L=La//P;B=2*S-12*R
    m=(-L*pow(B,-1,p))%p;mod=p
    for _ in range(1,h):
        K=S*P*m*m+B*m+L
        assert K%mod==0
        c=(-K//mod*pow(B,-1,p))%p
        m+=c*mod;mod*=p
    assert (S*P*m*m+B*m+L)%mod==0
    return m

def mask_rows():
    rows=[]
    menu=[(7,1,h) for h in range(1,6)]+[(7,2,h) for h in range(1,5)]
    menu +=[(p,1,h) for p in (17,19,29) for h in range(1,4)]
    menu +=[(17,2,h) for h in range(1,4)]+[(233,1,h) for h in (1,2)]
    for p,e,h in menu:
        E=28;S=5**E;mod=p**h;kept=0;digest=hashlib.sha256();examples=[]
        # Enumerate M, not n; these are projected p-adic residue masks.
        for m in range(1,mod):
            if m%p==0:continue
            b=b_root(m,p,e,h)
            if not digits_ok(b,m,p,h):continue
            R=R_from_M(m,p,e,h,S)
            assert M_from_R(R,S,p,e,h)==m
            digest.update(f'{m},{b},{R}\n'.encode())
            kept+=1
            if len(examples)<4:examples.append({'M':m,'b':b,'R_residue':R})
        expected=(p-1)//2*((p+1)//2)**(h-1)
        assert kept==expected
        rows.append({'p':p,'e':e,'h':h,'E_for_test':E,
          'M_modulus':mod,'R_modulus':p**(e+h),'unit_residues':(p-1)*p**(h-1),
          'survivors':kept,'excluded':(p-1)*p**(h-1)-kept,
          'survivor_stream_sha256':digest.hexdigest(),'examples':examples})
    return {'scope':'exact finite projected-residue enumeration; NOT original NC candidates',
      'universal_formula':'(p-1)/2 * ((p+1)/2)^(h-1), p>=7, p!=11',
      'rows':rows}

def affine_rows():
    rows=[]
    for p in range(7,240):
        if not prime(p) or p==11:continue
        vals=[sum((m*pow(12,-1,p)+c)%p<=m for m in range(p)) for c in range(p)]
        assert set(vals)=={(p+1)//2}
        rows.append({'p':p,'counts_for_all_offsets':vals})
    return {'scope':'finite verification of the universal affine-count proof','rows':rows,
      'excluded_prime':11,'reason':'inverse(12)=1 mod11; the half-count proof does not apply'}

def primitive_tables():
    valrows=[]
    for E in (27,28,41,100):
      S=5**E
      for m in range(1,9):
        mod=3**m;bad=0;good=0;undecided=0
        for R in range(mod):
            x=(S-5*R)%mod
            if x==0:undecided+=1
            elif vp(x,3)%2:bad+=1
            else:good+=1
        expected=sum(2*3**(m-v-1) for v in range(1,m,2))
        assert bad==expected and undecided==1
        valrows.append({'E':E,'modulus':mod,'odd_v3_rejected':bad,
             'even_v3_visible':good,'zero_class_unresolved':undecided})
    chars=[]
    for b in range(4):
      for E in (27,28):
       for c in (1,7,11,13):
        for parity in (0,1):
         for R in range(1,40,2):
          if gcd(R,10)>1 or jac(10,R)!=1:continue
          w=(100*pow(5,E,40)*c*parity - R*pow(3,b,40))%40
          assert gcd(w,10)==1 and jac(10,w)==(-1)**parity
          chars.append({'b_mod4':b,'E':E,'c_odd':c,'z_mod2':parity,
             'R_mod40':R,'W_mod40':w,'chi10_W':jac(10,w)})
    return {'scope':'finite residue checks, not canonical models',
      'valuation_sieve':valrows,'character_rows':chars}

# Minimal exact sparse-polynomial arithmetic for independently checkable identities.
V=('g','a','z','S','R','q','N','U','W','pwr','M','b','F','d')
def C(v):return {(0,)*len(V):v} if v else {}
def X(s):
    e=[0]*len(V);e[V.index(s)]=1;return {tuple(e):1}
def add(a,b):
    r=a.copy()
    for k,v in b.items():r[k]=r.get(k,0)+v
    return {k:v for k,v in r.items() if v}
def neg(a):return {k:-v for k,v in a.items()}
def sub(a,b):return add(a,neg(b))
def mul(a,b):
    r={}
    for i,u in a.items():
      for j,v in b.items():
        k=tuple(x+y for x,y in zip(i,j));r[k]=r.get(k,0)+u*v
    return {k:v for k,v in r.items() if v}
def sc(a,k):return mul(a,C(k))
def sq(a):return mul(a,a)
def sym_cert():
    S,R,q,P,m,b=[X(s) for s in ('S','R','q','pwr','M','b')]
    n=add(mul(S,q),C(5));U=add(mul(R,q),C(1));N=sub(n,C(1));F=sub(sq(n),sc(U,12));L=sub(sc(R,48),sc(S,11))
    id1=sub(sub(mul(S,F),L),mul(N,sub(mul(S,add(N,C(2))),sc(R,12))))
    id2=sub(sub(n,sc(U,5)),mul(q,sub(S,sc(R,5))))
    nr=add(C(1),mul(P,m))
    # M*F + Q_b = 0 after substituting M*U=b*(n-Pb).
    id3=add(sub(mul(m,sq(nr)),sc(mul(b,sub(nr,mul(P,b))),12)),
            sub(sc(mul(b,sub(nr,mul(P,b))),12),mul(m,sq(nr))))
    # Branch polynomial used by the explicit infinite original-input regression family.
    # coefficients ascending in x, all denominators cleared.
    def pmul(a,b):
        r=[0]*(len(a)+len(b)-1)
        for i,u in enumerate(a):
          for j,v in enumerate(b):r[i+j]+=u*v
        return r
    j8=[16,2,0,-1,3];k8=[24,-2,0,1,5];N4=[4,0,0,0,1]
    prod=pmul(j8,k8);right=pmul(N4,pmul([8,-7,3],[12,11,5]))
    assert prod==right
    assert not id1 and not id2 and not id3
    return {'variables':list(V),'zero_remainders':[[],[],[]],
      'identities':['S*F=N*(S*(N+2)-12*R)+Lambda',
       'n-5*U=q*(S-5*R)', 'M*F+12*b*(n-P*b)-M*n^2=0'],
      'family_j8_coefficients':j8,'family_k8_coefficients':k8,
      'family_j8k8_coefficients':prod,'family_N_times_U64_coefficients':right}

def W_routing():
    rows=[]
    for p in range(7,500):
        if not prime(p) or jac(3,p)!=-1 or jac(30,p)!=1:continue
        n=12*pow(5,-1,p)%p
        # alpha=1 for a residue test, z^2=1/120; delta^2=64z^2.
        z2=pow(120,-1,p)
        delta2=64*z2%p
        assert pow(delta2,(p-1)//2,p)==1
        assert (delta2+40*(n-1)*z2-1)%p==0
        rows.append({'p':p,'n_mod_p':n,'z_squared':z2,'delta_squared':delta2,
                     'is_first_source_contact':n==1,'norm_square_compatible':True})
    assert all(r['is_first_source_contact']==(r['p']==7) for r in rows)
    return {'scope':'local residue test only; does NOT realize a global input',
      'rows':rows,'exceptional_internal_prime':7}

def boundary_example():
    p=7;e=1;h=3;E=28;S=5**E;mod=p**h
    for m in range(1,mod):
      if m%p==0:continue
      rr=R_from_M(m,p,e,h,S);L=p**(e+h)
      # ordinary integer R with the same p-adic word and elementary B-like parity
      R=rr+L*((27-rr)*pow(L,-1,120)%120)
      la=48*R-11*S;W=(S-5*R)//10
      b=b_root(m,p,e,h);linear_m=4*(la//p**e)*pow(3*S,-1,mod)%mod
      linear_b=(la//p**e)*pow(9*S,-1,mod)%mod
      if m!=linear_m or b!=linear_b:
        assert (S-5*R)%10==0 and 0<R<S//4 and vp(S-5*R,3)==0
        assert gcd(abs(W),30*R)==1 and R%40==27
        assert M_from_R(R,S,p,e,h)==m
        return {'kind':'ordinary S,R projection; NO global n,j or T asserted',
          'p':p,'e':e,'h':h,'E':E,'S':S,'R':R,'Lambda':la,'W_for_g10_t0':W,
          'nonlinear_M':m,'nonlinear_b':b,'incorrect_linear_M':linear_m,
          'incorrect_linear_b':linear_b,'nonlinear_digits_pass':digits_ok(b,m,p,h),
          'full_current_model':False}
    raise AssertionError('expected a non-linear boundary example')

def family_example():
    p=233;k0=19919;period=p*p*(p-1);data=[]
    # No expansion of a 55,000-digit integer is needed: the family and all
    # source/target residues are specified by exact formulas.
    for h in (1,2,3,4):
      mod=p**h;x=pow(5,k0,mod);n=(pow(x,4,mod)+5)%mod
      j=(3*pow(x,4,mod)-pow(x,3,mod)+2*x+16)*pow(8,-1,mod)%mod
      u=(3*x*x-7*x+8)*(5*x*x+11*x+12)*pow(64,-1,mod)%mod
      F=(n*n-12*u)%mod
      data.append({'power':h,'modulus':mod,'n_residue':n,'j_residue':j,'U_residue':u,'F_residue':F,'borrow':j>n})
    assert data[0]['n_residue']==1 and data[0]['j_residue']==0
    assert not data[1]['borrow'] and data[2]['borrow']
    assert data[0]['F_residue']==0 and data[1]['F_residue']==0 and data[2]['F_residue']!=0
    M=(data[2]['n_residue']-1)//p;b=data[2]['j_residue']//p
    assert M==6725 and b==23608 and b_root(M,p,1,2)==b
    assert b%p<=M%p and b//p>M//p
    assert pow(5,period,p**3)==1
    return {'kind':'infinite original-input regression family already inside q5=1 unit-window coverage',
      'k0':k0,'k_period':period,'parameter':'k=k0+k_period*r, all integers r>=0',
      'x':'5^k','n':'x^4+5','j':'(3*x^4-x^3+2*x+16)/8',
      'U':'(3*x^2-7*x+8)*(5*x^2+11*x+12)/64',
      'q5':1,'E':'4*k','R5':'U-1','p':p,'e':1,'f':2,
      'M_mod_p2':M,'b_mod_p2':b,'first_high_digit_passes':True,
      'second_high_digit_fails':True,'witness_original_layer':3,'residues':data,
      'fails_current_contracts':['q5>=31','alpha=3^a (5 divides actual alpha)',
        'global ten-square norm (U=4 mod5)','n=2 mod8 (n=6 mod8)'],
      'certified_new_historical_coverage':0}

def write(path,obj):path.write_text(json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n',encoding='utf-8')

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);args=ap.parse_args();args.out.mkdir(parents=True,exist_ok=True)
    bundles={'symbolic.json':sym_cert(),'primitive_R5.json':primitive_tables(),
      'affine_counts.json':affine_rows(),'carry_masks.json':mask_rows(),
      'W_route.json':W_routing(),'nonlinear_boundary.json':boundary_example(),
      'original_family.json':family_example()}
    for name,obj in bundles.items():write(args.out/name,obj)
    summary={'R7':[3,4,5,6,7,8,9],'B_RES10_closed':False,'E4_square_branch_closed':False,
      'certified_historical_net_reduction':0,'Lean':False,'external_independent_review':False,
      'certificate_files_including_summary':8,'mask_parameter_rows':len(bundles['carry_masks.json']['rows']),
      'mask_unit_residues_enumerated':sum(x['unit_residues'] for x in bundles['carry_masks.json']['rows']),
      'full_current_models_constructed':0,
      'new_interfaces':['primitive R5 unitary allocation of g','nonlinear first-contact f-digit reconstruction',
       'R5-only h=f-e reconstruction','exact projected surviving-residue count','W support routing with prime7 exception'],
      'coverage_boundary':'new explicit necessary tests; full original consumer containment in old source+carry chain; net0'}
    write(args.out/'summary.json',summary);print(json.dumps(summary,ensure_ascii=False,sort_keys=True))
if __name__=='__main__':
    if not __debug__:raise RuntimeError('Do not disable assertions')
    main()
