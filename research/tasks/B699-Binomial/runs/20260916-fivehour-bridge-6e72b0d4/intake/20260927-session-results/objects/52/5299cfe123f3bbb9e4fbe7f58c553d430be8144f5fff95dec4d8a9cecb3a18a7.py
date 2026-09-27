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
    d,u,v,P0=[var(i) for i in range(4)]; one=const(1)
    results=[]
    def eq(name,left,right):
        assert not sub(left,right),name
        results.append(dict(name=name,left=encoded(left),right=encoded(right),status='PASS'))
    for eps in (-1,1):
        for b in (-1,0,1):
            P=add(mul(d,v),const(eps)); k=add(mul(d,u),const(b))
            Q=add(power(P,2),mul(k,P),d)
            X=add(mul(add(v,u),P),one,scale(v,b),scale(u,-eps))
            eq(f'original_PX_minus_QY_eps{eps}_b{b}',sub(mul(P,X),mul(Q,v)),const(eps))
            eq(f'dX_top_relation_eps{eps}_b{b}',mul(d,X),add(Q,scale(add(P,k),-eps)))
    P=add(mul(d,v),one);Q=add(power(P,2),mul(d,P),d);F=sub(mul(P,Q),one)
    W=add(mul(power(d,2),power(v,3)),mul(power(d,2),power(v,2)),
          scale(mul(d,power(v,2)),3),scale(mul(d,v),3),scale(v,3),const(2))
    eq('positive_b0_F_equals_dW',F,mul(d,W))
    D=add(scale(power(d,2),2),scale(d,-6),const(5))
    W2=add(scale(power(d,2),12),scale(d,18),const(8))
    eq('positive_b0_capacity_gap',sub(W2,scale(D,6)),add(scale(d,54),const(-22)))
    P=add(power(d,2),d,one); vv=add(d,one);kk=add(scale(d,2),one)
    Q=add(power(P,2),mul(kk,P),d);n=add(mul(P,Q),one)
    NN=add(power(d,5),scale(power(d,4),4),scale(power(d,3),7),scale(power(d,2),9),scale(d,5),const(3))
    eq('positive_b1_odd_factor',n,mul(add(d,one),NN))
    eq('positive_b1_same_j_gcd_multiplier',sub(P,vv),power(d,2))
    P=sub(mul(d,v),one);Q=add(power(P,2),mul(d,u,P),d);n=add(mul(P,Q),one)
    B=add(mul(add(u,v),power(P,2)),mul(sub(one,v),P),v)
    eq('negative_n_equals_dB',n,mul(d,B))
    # Taking v=0, respectively d=0, is exact coefficient extraction.
    Bv0={e:c for e,c in B.items() if e[2]==0}
    eq('negative_B_mod_v',Bv0,sub(u,one))
    F=sub(n,const(2));Fd0={e:c for e,c in F.items() if e[0]==0}
    eq('negative_F_mod_d',Fd0,const(-2))
    R=[]
    for i,A in enumerate((one,sub(one,d),sub(one,scale(d,2)))):
        R.append(add(const(-1),mul(d,u,A),neg(mul(d,power(A,2))),neg(power(A,3))))
    manual=[add(mul(d,sub(u,one)),const(-2)),
            add(neg(mul(power(d,2),add(u,one))),mul(d,add(u,const(2))),const(-2)),
            add(scale(power(d,3),4),scale(mul(power(d,2),add(u,const(4))),-2),mul(d,add(u,const(5))),const(-2))]
    for i in range(3):eq(f'negative_R_{i}',R[i],manual[i])
    S=neg(mul(*R));Sd0={e:c for e,c in S.items() if e[0]==0}
    eq('negative_abs_product_mod_d',Sd0,const(8))
    minimum=add(scale(power(d,3),2),scale(power(d,2),-5),scale(d,4),const(-2))
    eq('negative_R2_positive_reduction',R[2],add(minimum,mul(sub(sub(d,one),u),d,sub(scale(d,2),one))))
    eq('multiplier_uniform_bound_factorization',add(scale(power(u,3),3),scale(power(u,2),-8),const(8)),
       mul(sub(u,const(2)),add(scale(power(u,2),3),scale(u,-2),const(-4))))
    P=P0;F=add(scale(power(P,3),3),scale(power(P,2),-2),scale(P,2),const(-1))
    prod=mul(sub(scale(P,3),const(13)),add(P,one),sub(P,const(7)))
    eq('E2_complete_T2_gap',sub(scale(F,4),scale(prod,3)),
       add(scale(power(P,3),3),scale(power(P,2),85),scale(P,-163),const(-277)))
    return {'identity_count':len(results),'identities':results,'status':'PASS'}
