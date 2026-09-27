"""Sparse integer-polynomial checking, with no CAS dependency."""
from __future__ import annotations
from core import digest
VARS=('P','d','w','h','k','A','e','v','x')
N=len(VARS)

def const(x): return {} if x==0 else {(0,)*N:x}
def var(s):
    t=[0]*N; t[VARS.index(s)]=1
    return {tuple(t):1}
def add(*xs):
    r={}
    for x in xs:
        for m,c in x.items():r[m]=r.get(m,0)+c
    return {m:c for m,c in r.items() if c}
def neg(x):return {m:-c for m,c in x.items()}
def sub(x,y):return add(x,neg(y))
def mul(*xs):
    r=const(1)
    for x in xs:
        t={}
        for a,c in r.items():
            for b,e in x.items():
                m=tuple(i+j for i,j in zip(a,b));t[m]=t.get(m,0)+c*e
        r={m:c for m,c in t.items() if c}
    return r
def scale(a,x):return mul(const(a),x)
def sq(x):return mul(x,x)

def check_all():
    P,d,w,h,k,A,e,v,x=map(var,VARS);one=const(1)
    identities={}
    def power(a,n):return mul(*([a]*n))
    def check(name,lhs,rhs):
        diff=sub(lhs,rhs)
        if diff: raise AssertionError((name,diff))
        identities[name]={'residual_terms':0,'coefficient_ring':'Z'}
    F=add(mul(e,power(P,3)),mul(k,sq(P)),mul(d,P),const(-1))
    for eps in (-1,1):
        AP=mul(A,P)
        R=add(scale(eps,e),mul(k,A),scale(eps,mul(d,sq(A))),neg(power(A,3)))
        C=add(mul(e,add(sq(AP),scale(eps,AP),one)),
              mul(k,A,add(AP,const(eps))),mul(d,sq(A)))
        check('cubic_resultant_eps_'+str(eps),sub(mul(power(A,3),F),R),
              mul(sub(AP,const(eps)),C))
    ee=mul(w,h);kk=add(sq(w),mul(d,w),h)
    FF=add(mul(ee,power(P,3)),mul(kk,sq(P)),mul(d,P),const(-1))
    U=add(mul(w,P),one);V=add(mul(h,sq(P)),mul(add(d,w),P),const(-1))
    check('zero_root_factorization',FF,mul(U,V))
    R=lambda B:add(neg(ee),mul(kk,B),neg(mul(d,sq(B))),neg(power(B,3)))
    check('R_polynomial_factorization',R(A),neg(mul(sub(A,w),add(sq(A),mul(add(d,w),A),neg(h)))))
    check('other_slot_1',R(sub(w,d)),neg(mul(d,add(scale(2,mul(w,sub(d,w))),h))))
    check('other_slot_2',R(sub(w,scale(2,d))),scale(2,mul(d,sub(mul(sub(d,scale(2,w)),sub(scale(2,d),w)),h))))
    Pr=sub(mul(d,v),one)
    Qr=add(mul(e,sq(Pr)),mul(add(d,e,one),Pr),d)
    Vr=add(mul(e,sq(Pr)),mul(add(d,one),Pr),const(-1))
    Jr=mul(Qr,v);nr=add(mul(Pr,Qr),one)
    check('actual_F_dvV',sub(nr,const(2)),mul(d,v,Vr))
    check('actual_Q_V',sub(Qr,Vr),add(mul(e,Pr),d,one))
    check('actual_J_identity',mul(d,Jr),add(mul(add(Pr,const(2)),Vr),mul(e,Pr),d,const(2)))
    check('actual_X_digits',Jr,
          add(mul(Pr,add(mul(Pr,add(mul(e,v),one)),mul(add(e,one),v),const(2))),one))
    check('original_n_mod_v',sub(nr,const(2)),mul(d,v,Vr))
    aa=sub(scale(2,d),one);bb=add(scale(2,sq(d)),scale(-5,d),one)
    check('e1_gcd_identity',scale(2,bb),add(sq(aa),scale(-3,aa),const(-2)))
    e2P=sub(scale(2,d),one)
    e2V=add(scale(2,sq(e2P)),mul(add(d,one),e2P),const(-1))
    check('e2_no_band_positive_gap',sub(e2V,scale(3,mul(d,sub(scale(2,d),const(5))))),
          scale(4,mul(d,add(d,const(2)))))
    # Four times V(P_min)-capacity, with 2P_min=d^2+4d-2.
    T=add(sq(d),scale(4,d),const(-2))
    G=add(power(d,4),scale(-38,power(d,3)),scale(166,sq(d)),scale(-96,d),const(8))
    four_gap=sub(add(sq(T),scale(2,mul(add(d,one),T)),const(-4)),scale(12,mul(aa,bb)))
    check('e1_integer_lower_gap',four_gap,G)
    dx=add(x,const(34))
    Gx=add(power(dx,4),scale(-38,power(dx,3)),scale(166,sq(dx)),scale(-96,dx),const(8))
    check('e1_positive_shift_d34',Gx,add(power(x,4),scale(98,power(x,3)),scale(3226,sq(x)),scale(36624,x),const(31424)))
    return {'variables':VARS,'count':len(identities),'identities':identities,
            'scope':'Integer-polynomial identities, not a formalized proof of quantifiers.'}
if __name__=='__main__':
    from core import canonical
    print(canonical(check_all()).decode(),end='')
