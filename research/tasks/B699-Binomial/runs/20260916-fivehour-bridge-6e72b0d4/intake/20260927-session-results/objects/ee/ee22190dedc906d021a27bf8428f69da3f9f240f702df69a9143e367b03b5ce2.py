#!/usr/bin/env python3
"""Regenerate round-3 exact certificates. Standard library; no old replay or CAS."""
from __future__ import annotations
import argparse, hashlib, json, sys
from math import gcd, isqrt
from pathlib import Path
if hasattr(sys,'set_int_max_str_digits'): sys.set_int_max_str_digits(0)
P=461; COEF=710892; PERIOD=2070; START=21
A=4935340800; B=1941810; W=973440

def vp(x:int,p:int)->int:
    if x==0: raise ValueError('valuation of zero')
    e=0
    while x%p==0:x//=p;e+=1
    return e

def rough(x:int)->int:
    for p in (2,3,5):
        while x%p==0:x//=p
    return x

def jacobi(a:int,n:int)->int:
    if n<=0 or n%2==0: raise ValueError('odd positive denominator required')
    a%=n;s=1
    while a:
        while a%2==0:
            a//=2
            if n%8 in (3,5):s=-s
        a,n=n,a
        if a%4==n%4==3:s=-s
        a%=n
    return s if n==1 else 0

def binvp(n:int,j:int,p:int)->int:
    total=0;a=n;b=j;c=n-j
    while a:
        a//=p;b//=p;c//=p
        total+=a-b-c
    return total

def digits(x:int,p:int)->list[int]:
    ds=[]
    while x:ds.append(x%p);x//=p
    return ds or [0]

def poly_add(a:list[int],b:list[int])->list[int]:
    z=[0]*max(len(a),len(b))
    for i,x in enumerate(a):z[i]+=x
    for i,x in enumerate(b):z[i]+=x
    while len(z)>1 and z[-1]==0:z.pop()
    return z

def poly_neg(a:list[int])->list[int]:return [-x for x in a]
def poly_mul(a:list[int],b:list[int])->list[int]:
    out=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):out[i+j]+=x*y
    while len(out)>1 and out[-1]==0:out.pop()
    return out

def primitive(a:int,z:int)->dict:
    alpha=3;r=1
    for _ in range(1,a):
        r=next(r+c*alpha for c in range(3) if ((r+c*alpha)**2-10)%(3*alpha)==0)
        alpha*=3
    beta=(r*z)%alpha;beta=min(beta,alpha-beta)
    numerator=beta*(alpha-beta)+10*z*z;den=10*alpha*z*z
    assert numerator%den==0
    g=numerator//den;n=g*alpha;j=g*beta
    assert g==gcd(n,j) and 0<j<n//2
    return describe(n,j,True,{'a':a,'z':z})

def describe(n:int,j:int,power3:bool,seed:dict)->dict:
    k=n-j;g=gcd(n,j);alpha=n//g;beta=j//g;N=n-1
    assert j*k%N==0
    U=j*k//N
    assert U%(10*g*g)==0
    z=isqrt(U//(10*g*g));assert U==10*g*g*z*z
    delta=alpha-2*beta
    assert delta*delta+40*N*z*z==alpha*alpha and gcd(delta,z)==1
    H=alpha*alpha//3-40*z*z
    C=gcd(rough(n-4),j-2);assert H%C==0
    T=H//C;E4=gcd(rough(n-4),j*k);A4=gcd(rough(n-4),(j-1)*(k-1))
    D=gcd(T,N);m=N//D;h=(12*U-1)//D;Delta=T//D;t3=vp(g,3);K=g*3**(t3+1)
    assert D==gcd(H,N)==gcd(N,12*U-1)
    assert (12*U-1)%D==0
    out={'seed':seed,'n':n,'j':j,'g':g,'alpha':alpha,'z':z,'delta':delta,'N':N,'U':U,
         'H':H,'C':C,'T':T,'E4':E4,'A4':A4,'D':D,'m':m,'h':h,'Delta':Delta,
         't3':t3,'K':K,'actual_power3':alpha==3**vp(alpha,3),
         'B720':n%720==450,'B18000':n%18000==14130,
         'central_complete':gcd(C,rough(n-4)//C)==1,
         'central_chi3':jacobi(3,C),'E4_square':isqrt(E4)**2==E4,
         'central_size_gate':2*E4*C*C<n-4,'old_centre_exit':C>=A4,
         'all_q5_near':((j-1)*(k-1))%rough(n-5)==0,
         'full_q4_window':E4*A4*C==rough(n-4),
         'low_side':12*U<n,'mass_8g4_lt_n':8*g**4<n}
    assert out['actual_power3']==power3
    if power3:
        assert vp(alpha,3)>t3
        assert (h-m)%K==0 and h!=m and 0<h<3*m and 2*m>K
        if 12*U<n:assert m>K
        if out['central_size_gate']:
            assert Delta*Delta*(n-1)**3 > 20*3**(2*t3)*E4*z*z*n*n*(n-4)
            assert Delta>4*3**t3*isqrt(E4)*z
            if out['low_side']:
                assert Delta*Delta*(n-1)**3 > 80*3**(2*t3)*E4*z*z*n*n*(n-4)
                assert Delta>8*3**t3*isqrt(E4)*z
    return out

def contact(o:dict,p:int)->dict:
    n=o['n'];j=o['j'];k=n-j;N=n-1
    assert N%p==0 and o['T']%p==0
    e=vp(N,p);f=vp(o['T'],p);Q=p**e
    sigma=j if j%Q==0 else k
    assert sigma%Q==0
    M=N//Q;b=sigma//Q
    J=N-12*sigma
    assert M%p and b%p
    assert J%(p**(e+min(e,f)))==0
    return {'p':p,'e':e,'f':f,'sigma_side':'j' if sigma==j else 'k',
      'M':M,'b':b,'v_sigma':vp(sigma,p),'v_N_minus_12sigma':vp(J,p),
      'original_bin_v':binvp(n,j,p),'quotient_bin_v':binvp(M,b,p),
      'source_bin_v':binvp(n,6,p),'chi3':jacobi(3,p),'chi10':jacobi(10,p)}

def coefficient_certificate()->dict:
    c=COEF
    ns=[A+B+192,(4*A+2*B)*c,(6*A+B)*c*c,4*A*c**3,A*c**4]
    js=[W+192,2*W*c,W*c*c,0,0]
    rows=[]
    for i in range(5):
        nd=digits(ns[i],P);jd=digits(js[i],P)
        assert all(x <= (nd[z] if z<len(nd) else 0) for z,x in enumerate(jd))
        rows.append({'degree':i,'n_coefficient':ns[i],'j_coefficient':js[i],
                     'n_digits_low_first':nd,'j_digits_low_first':jd})
    congruences=[]
    for modulus,order in [(27,18),(47,46),(41,5),(31,10)]:
        assert pow(P,order,modulus)==1 and PERIOD%order==0
        tr=(1+c*pow(P,START,modulus))%modulus
        congruences.append({'modulus':modulus,'period':order,'t_residue':tr})
    assert c%294==0
    np=[192,0,B,0,A];jp=[192,0,W];up=[0,0,W]
    kp=poly_add(np,poly_neg(jp));Np=poly_add(np,[-1])
    ap=[x//6 for x in np];bp=[x//6 for x in jp];dp=poly_add(ap,[-2*x for x in bp]);zp=[0,52]
    identities={
      'jk_minus_NU':poly_add(poly_mul(jp,kp),poly_neg(poly_mul(Np,up))),
      'norm_residual':poly_add(poly_add(poly_mul(dp,dp),[40*x for x in poly_mul(Np,poly_mul(zp,zp))]),poly_neg(poly_mul(ap,ap))),
      'central_resultant':poly_add([192*x for x in poly_add(np,[-4])],poly_neg(poly_add(poly_add(poly_mul(poly_add(jp,[-2]),poly_add(jp,[-2])),[3*x for x in poly_add(jp,[-2])]),[-574]))),
      'first_window':poly_add([192*x for x in Np],poly_neg(poly_mul(jp,poly_add(jp,[-1]))))}
    assert all(v==[0] for v in identities.values())
    return {'p':P,'c':c,'L_start':START,'L_period':PERIOD,
      'L_min_for_disjoint_blocks':max(len(digits(x,P)) for x in ns+js),
      'rows':rows,'congruences':congruences,'polynomial_identities':identities,
      'base_contact':{'x':1,'n':A+B+192,'j':W+192,'H':((A+B+192)//6)**2//3-40*52**2,
         'N_mod_461_squared':(A+B+191)%(P*P),
         'H_mod_461_squared':((((A+B+192)//6)**2//3-40*52**2)%(P*P))},
      'n_t_coefficients':np,'j_t_coefficients':jp,'U_t_coefficients':up}

def family_example(index:int)->dict:
    L=START+PERIOD*index;t=1+COEF*P**L
    n=A*t**4+B*t*t+192;j=W*t*t+192
    o=describe(n,j,False,{'family_index':index,'L':L})
    assert o['g']==6 and vp(o['alpha'],3)==2 and o['C']==7 and o['E4']==1 and o['A4']==1
    assert o['central_complete'] and o['central_size_gate'] and o['central_chi3']==-1
    assert n%31==5 and j%31==15 and not o['all_q5_near']
    co=contact(o,P);assert co['e']==co['f']==1 and co['original_bin_v']==0
    o['contact']=co
    o['explicit_common_prime']={'p':31,'n_mod_p':n%31,'j_mod_p':j%31,
         'v_bin_6':binvp(n,6,31),'v_bin_j':binvp(n,j,31)}
    assert o['explicit_common_prime']['v_bin_j']>0
    if index==0:return o
    # A large sample is represented without writing many redundant huge decimal fields.
    return {'seed':o['seed'],'decimal_digits_n':len(str(n)),
      'n_sha256_unsigned_be':hashlib.sha256(n.to_bytes((n.bit_length()+7)//8,'big')).hexdigest(),
      'j_sha256_unsigned_be':hashlib.sha256(j.to_bytes((j.bit_length()+7)//8,'big')).hexdigest(),
      'g':6,'v3_alpha':2,'C':7,'E4':1,'A4':1,'vp_N_461':co['e'],'vp_T_461':co['f'],
      'vp_bin_j_461':co['original_bin_v'],'vp_bin_j_31':o['explicit_common_prime']['v_bin_j'],
      'all_q5_near':False,'actual_power3':False}

def make(out:Path)->dict:
    out.mkdir(parents=True,exist_ok=True)
    def save(name:str,obj:object):
        (out/name).write_text(json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    models=[primitive(a,z) for a,z in [(8,1),(183,1),(692,2)]]
    models[-1]['first_contact']=contact(models[-1],29)
    save('canonical_contact_models.json',models)
    save('lacunary_family.json',coefficient_certificate())
    save('lacunary_examples.json',[family_example(0),family_example(1)])
    # For n>=10, n^3-8n^2-12n+4 >0: expand at n=10+x.
    constants={'n_min':10,'margin_polynomial_at_10_plus_x':[84,128,22,1],
      'deficit_squared_factor':20,'integer_threshold':4,'low_side_factor':80,'low_side_integer_threshold':8,
      'denominator_lattice':'g*3^(vp(g,3)+1) divides h-m',
      'no_polynomial_globalization_constant_equation':'beta(0)^2=10*z(0)^2'}
    save('exact_constants.json',constants)
    summary={'canonical_models':len(models),'new_canonical_model_seeds':[{'a':692,'z':2}],
      'reused_only_as_regression':[{'a':8,'z':1},{'a':183,'z':1}],
      'infinite_family':'L=21+2070*r, r>=0','digit_blocks':5,'finite_family_samples':2,
      'certified_global_net_deletion':0,'full_B_RES10_model_found':False,'full_B_RES10_closed':False}
    save('summary.json',summary)
    return summary

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,default=Path(__file__).resolve().parents[1]/'certificates')
    args=ap.parse_args();print(json.dumps(make(args.out),ensure_ascii=False,indent=2))
if __name__=='__main__':main()
