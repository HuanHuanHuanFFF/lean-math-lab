"""Sparse integer polynomial checks, without a symbolic-algebra dependency."""
from __future__ import annotations
from core import digest
N=4
Z=(0,)*N

def const(c): return {Z:c} if c else {}
def var(i):
    e=list(Z); e[i]=1
    return {tuple(e):1}
def add(*args):
    r={}
    for p in args:
        for e,c in p.items(): r[e]=r.get(e,0)+c
    return {e:c for e,c in r.items() if c}
def scale(p,a): return {e:c*a for e,c in p.items() if c*a}
def neg(p): return scale(p,-1)
def sub(a,b): return add(a,neg(b))
def mul(*args):
    r=const(1)
    for p in args:
        t={}
        for e,c in r.items():
            for f,a in p.items():
                g=tuple(x+y for x,y in zip(e,f)); t[g]=t.get(g,0)+c*a
        r={e:c for e,c in t.items() if c}
    return r
def power(p,a):
    r=const(1)
    for _ in range(a): r=mul(r,p)
    return r
def encoded(p): return [[list(e),c] for e,c in sorted(p.items())]

def run():
    d,z,k,P=[var(i) for i in range(4)];one=const(1);results=[]
    def eq(name,left,right):
        assert not sub(left,right),name
        results.append(dict(name=name,left=encoded(left),right=encoded(right),status='PASS'))
    F=add(mul(k,power(P,2)),mul(d,P),const(-1));n=add(F,const(2))
    R=[sub(k,mul(z,add(d,z))),add(k,mul(z,sub(d,z))),
       sub(k,mul(sub(d,z),sub(scale(d,2),z)))]
    for ep in (-1,1):
        t=(ep+1)//2
        for i in range(3):
            A=add(z,scale(d,t-i))
            RR=add(k,scale(mul(d,A),ep),neg(power(A,2)))
            eq(f'original_three_R_e{ep}_slot{i}',RR,R[i])
        A=add(scale(d,t),neg(z))
        U=add(k,neg(mul(z,sub(d,z))))
        eq(f'original_T0_resultant_e{ep}',add(k,scale(mul(d,A),-ep),power(A,2)),U)
        eq(f'T0_integer_identity_e{ep}',sub(mul(power(A,2),n),U),
           mul(add(mul(A,P),const(ep)),add(mul(k,sub(mul(A,P),const(ep))),mul(d,A))))
    S=mul(*R)
    Sd0={e:c for e,c in S.items() if e[0]==0}
    eq('signed_product_remainder_mod_d',Sd0,power(sub(k,power(z,2)),3))
    eq('F_times_z_cubed_mod_carry',sub(mul(power(z,3),F),sub(one,power(z,3))),
       add(sub(mul(k,z),one),mul(k,z,sub(power(mul(P,z),2),one)),mul(d,P,power(z,3))))
    A=mul(z,sub(k,power(z,2)));B=sub(one,power(z,3))
    eq('cubic_remainder_mod_kz_minus1',sub(power(A,3),power(B,3)),
       mul(sub(mul(k,z),one),add(power(A,2),mul(A,B),power(B,2))))
    K=mul(z,sub(d,z))
    RR=[sub(K,mul(z,add(d,z))),add(K,mul(z,sub(d,z))),
        sub(K,mul(sub(d,z),sub(scale(d,2),z)))]
    eq('product_mod_original_T0_U',mul(*RR),scale(power(K,3),8))
    w=z;zz=add(w,const(2))
    gap=sub(power(sub(power(zz,3),one),2),scale(mul(zz,add(zz,const(2))),6))
    assert all(c>0 for c in gap.values())
    results.append(dict(name='nonresonance_positive_coefficients_z_equals_w_plus2',
                        polynomial=encoded(gap),status='PASS'))
    # z=1, d=2, k unbounded.
    pp=add(k,const(2));ff=add(mul(k,power(pp,2)),scale(pp,2),const(-1))
    eq('z1_d2_F_factor',ff,mul(add(k,one),add(power(k,2),scale(k,3),const(3))))
    eq('z1_d2_capacity_positive_gap',sub(add(power(k,2),scale(k,3),const(3)),scale(sub(k,const(3)),3)),add(power(k,2),const(12)))
    # z=1, d>=6, u=2, v=d+1.
    pp=add(power(d,2),d,one);kk=add(scale(d,2),one)
    ff=add(mul(kk,power(pp,2)),mul(d,pp),const(-1))
    BB=add(mul(d,kk,power(add(d,one),2)),mul(add(scale(d,5),const(2)),add(d,one)),const(3))
    eq('z1_u2_original_factor',ff,mul(d,BB))
    # EDGE3 same-input family.
    r=d;dd=sub(scale(r,3),one);pp=add(scale(power(r,2),6),scale(r,-5),const(4));qq=add(scale(pp,3),dd)
    nn=add(mul(pp,qq),one);jj=mul(pp,add(pp,dd));yy=add(scale(power(r,2),2),neg(r),one)
    eq('EDGE3_original_j_equals_QY_plus1',jj,add(mul(qq,yy),one))
    eq('EDGE3_band_lower_gap',sub(scale(pp,2),power(dd,2)),add(scale(power(r,2),3),scale(r,-4),const(7)))
    eq('EDGE3_band_upper_gap',sub(power(dd,2),pp),add(scale(power(r,2),3),neg(r),const(-3)))
    eq('EDGE3_3P_minus_7d',sub(scale(pp,3),scale(dd,7)),add(scale(power(sub(r,one),2),18),one))
    A=add(scale(r,4),const(3));B=add(scale(power(r,2),2),neg(r),const(3));C=add(scale(r,10),one)
    eq('EDGE3_R0',sub(const(3),mul(r,add(dd,r))),neg(mul(sub(r,one),A)))
    eq('EDGE3_R1',add(const(3),mul(r,sub(dd,r))),B)
    eq('EDGE3_R2',sub(const(3),mul(sub(dd,r),sub(scale(dd,2),r))),neg(mul(sub(r,one),C)))
    eq('LCM_gcd_AC_13',sub(scale(A,5),scale(C,2)),const(13))
    eq('LCM_gcd_AB_78',sub(scale(B,16),mul(sub(scale(r,8),const(10)),A)),const(78))
    eq('LCM_gcd_BC_312',sub(scale(B,100),mul(sub(scale(r,20),const(12)),C)),const(312))
    eq('LCM_gcd_B_rminus1_4',sub(B,mul(sub(r,one),add(scale(r,2),one))),const(4))
    ff=sub(nn,const(2))
    eq('EDGE3_F_expansion',ff,add(scale(power(r,4),108),scale(power(r,3),-162),scale(power(r,2),198),scale(r,-103),const(43)))
    # n(8t+3) = 4 mod 8, verified coefficientwise, not by sample residues.
    tt=z;rr=add(scale(tt,8),const(3));pd=add(scale(power(rr,2),6),scale(rr,-5),const(4));qd=add(scale(pd,3),sub(scale(rr,3),one));nd=add(mul(pd,qd),one)
    rem={e:c%8 for e,c in nd.items() if c%8}
    eq('EDGE3_full_v2_equals2',rem,const(4))
    return dict(identity_count=len(results),identities=results,status='PASS')
