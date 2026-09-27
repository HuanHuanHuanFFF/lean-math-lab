"""Independent sparse integer-polynomial checking, with no CAS dependency."""
from __future__ import annotations
from core import digest
VARS=('P','d','w','Y','k','A')
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
    P,d,w,Y,k,A=map(var,VARS); one=const(1); two=const(2)
    identities={}
    def check(name,lhs,rhs):
        diff=sub(lhs,rhs)
        assert not diff,(name,diff)
        identities[name]={'residual_terms':0,'coefficient_ring':'Z'}
    F=sub(add(mul(k,sq(P)),mul(d,P)),one)
    for eps in (-1,1):
        R=sub(add(k,scale(eps,mul(d,A))),sq(A))
        check(f'resultant_eps{eps}',sub(mul(sq(A),F),R),
              mul(sub(mul(A,P),const(eps)),
                  add(mul(k,add(mul(A,P),const(eps))),mul(d,A))))
        t=(eps+1)//2
        expected=[sub(k,mul(w,add(d,w))),add(k,mul(w,sub(d,w))),
                  sub(k,mul(sub(d,w),sub(scale(2,d),w)))]
        for r in range(3):
            ar=add(w,scale(t-r,d))
            rr=sub(add(k,scale(eps,mul(d,ar))),sq(ar))
            check(f'slot_eps{eps}_r{r}',rr,expected[r])
    kr=mul(w,add(d,w)); Q=add(mul(kr,P),d)
    U=add(mul(w,P),one); V=sub(mul(add(d,w),P),one)
    check('root_factorization',sub(mul(P,Q),one),mul(U,V))
    gplus=sub(sub(mul(w,P),mul(d,Y)),one)
    Jplus=add(mul(Q,Y),one)
    check('plus_J_recovery',sub(Jplus,mul(sq(w),P,add(P,Y))),neg(mul(U,gplus)))
    check('plus_V_recovery',sub(V,mul(d,add(P,Y))),gplus)
    gminus=add(sub(mul(w,P),mul(d,Y)),one)
    check('minus_U_recovery',sub(U,mul(d,Y)),gminus)
    check('minus_F_recovery',sub(mul(U,V),mul(d,Y,V)),mul(gminus,V))
    # Target d,v family; Y denotes v in this block.
    Pt=sub(mul(d,Y),one);Qt=sub(mul(d,add(d,one),Y),one)
    W=sub(mul(d,add(d,one),Y),add(d,two));nt=add(mul(Pt,Qt),one);jt=mul(Qt,Y)
    check('target_n_minus_2',sub(nt,two),mul(d,Y,W))
    check('target_Q_minus_W',sub(Qt,W),add(d,one))
    check('target_slot_identity',sub(mul(d,jt),add(d,two)),mul(add(mul(d,Y),one),W))
    check('target_range',sub(nt,scale(2,jt)),
          add(mul(Qt,sub(mul(sub(d,two),Y),one)),one))
    check('target_strict_gap',sub(W,scale(3,sub(d,two))),
          add(mul(d,add(d,one),sub(Y,one)),mul(d,sub(d,const(3))),const(4)))
    check('plus_w_ge2_gap',sub(mul(d,add(d,two)),scale(6,sub(d,two))),
          add(sq(sub(d,two)),const(8)))
    check('plus_d_ge9_gap',sub(add(sq(d),scale(-11,d)),const(-26)),
          add(mul(sub(d,const(9)),sub(d,two)),const(8)))
    return {'variables':VARS,'identities':identities,'count':len(identities),
            'note':'Symbolic identity checks, not formal verification of all proof quantifiers.'}

if __name__=='__main__':
    from core import canonical
    import sys
    sys.stdout.buffer.write(canonical(check_all()))
