"""Tiny exact Z[z,a] arithmetic used by the offline certificate receiver."""
from typing import Dict, Tuple
Poly = Dict[Tuple[int,int],int]

def num(x:int)->Poly:return {(0,0):x} if x else {}
def add(*polys:Poly)->Poly:
    out={}
    for p in polys:
        for m,c in p.items():out[m]=out.get(m,0)+c
    return {m:c for m,c in out.items() if c}
def scale(p:Poly,c:int)->Poly:return {m:v*c for m,v in p.items() if v*c}
def sub(p:Poly,q:Poly)->Poly:return add(p,scale(q,-1))
def mul(p:Poly,q:Poly)->Poly:
    out={}
    for (i,j),c in p.items():
        for (k,l),d in q.items():out[(i+k,j+l)]=out.get((i+k,j+l),0)+c*d
    return {m:c for m,c in out.items() if c}
def exact_divide(p:Poly,q:Poly)->Poly:
    if not q:raise ZeroDivisionError
    rem=p.copy();ans={};lm=max(q);lc=q[lm]
    while rem:
        m=max(rem);c=rem[m]
        if m[0]<lm[0] or m[1]<lm[1] or c%lc:
            raise AssertionError('not an exact integer polynomial quotient')
        m1=(m[0]-lm[0],m[1]-lm[1]);t={m1:c//lc}
        ans=add(ans,t);rem=sub(rem,mul(t,q))
    return ans

def encode(p:Poly):return [[i,j,c] for (i,j),c in sorted(p.items())]
def decode(v)->Poly:
    p={(i,j):c for i,j,c in v}
    assert encode(p)==v
    return p

def identities():
    z={(1,0):1};a={(0,1):1};one=num(1)
    d=add(scale(z,6),num(-1))
    out=[]
    for eps in (-1,1):
        P=add(mul(d,a),num(6*eps));Q=add(scale(P,6),d)
        X=add(P,a,z);Y=add(mul(z,a),num(eps))
        n=add(mul(P,Q),one);F=add(n,num(-2))
        j1=add(mul(P,X),num((1-eps)//2))
        j2=add(mul(Q,Y),num((1+eps)//2))
        assert j1==j2
        if eps<0:
            AA=[z,z,scale(add(scale(z,5),num(-1)),-5)]
            BB=[sub(num(36),mul(d,Q)),sub(num(6),mul(d,P)),
                sub(scale(mul(a,mul(d,d)),5),scale(add(scale(z,5),num(-1)),36))]
            V=[Y,X,sub(Q,X)]
            C=[add(scale(a,6),scale(z,-7),one),add(scale(a,6),scale(z,5)),
               add(scale(z,55),scale(a,-6),num(-11))]
            H=add(scale(a,6),scale(z,-5),one)
            A0=z;B0=BB[0];V0=Y
            rhs=[mul(Q,Y),mul(P,X),sub(F,mul(P,sub(Q,X)))]
        else:
            AA=[scale(z,-1),scale(z,-1),scale(add(scale(z,11),num(-2)),-11)]
            BB=[add(mul(d,P),num(6)),add(mul(d,Q),num(36)),
                add(scale(mul(a,mul(d,d)),11),scale(add(scale(z,11),num(-2)),36))]
            V=[X,Y,sub(scale(Q,2),X)]
            C=[add(scale(a,6),scale(z,7)),add(scale(a,6),scale(z,-5),one),
               add(scale(z,55),scale(a,6),num(-10))]
            H=add(scale(a,6),scale(z,5))
            A0=scale(z,-1);B0=BB[0];V0=X
            rhs=[mul(P,X),mul(Q,Y),sub(scale(F,2),mul(P,sub(scale(Q,2),X)))]
        for s in range(3):
            assert add(mul(AA[s],F),mul(BB[s],V[s]))==C[s]
            derived=exact_divide(sub(C[s],mul(AA[s],F)),V[s])
            assert derived==BB[s]
            out.append(dict(id=f'T2-e{eps}-s{s}',kind='bezout',A=encode(AA[s]),source=encode(F),
                            B=encode(BB[s]),V=encode(V[s]),C=encode(C[s])))
        assert add(mul(A0,n),mul(B0,V0))==H
        out.append(dict(id=f'T0-e{eps}',kind='bezout',A=encode(A0),source=encode(n),
                        B=encode(B0),V=encode(V0),C=encode(H)))
        out.append(dict(id=f'j-e{eps}',kind='equality',left=encode(j1),right=encode(j2)))
        for s in range(3):
            assert add(j1,num(-s))==rhs[s]
            out.append(dict(id=f'original-slot-e{eps}-s{s}',kind='equality',
                            left=encode(add(j1,num(-s))),right=encode(rhs[s])))
    return out


def verify(records):
    expected=identities()
    assert records==expected
    count=0;divisions=0
    for r in records:
        if r['kind']=='bezout':
            A,F,B,V,C=[decode(r[k]) for k in ['A','source','B','V','C']]
            assert sub(add(mul(A,F),mul(B,V)),C)=={}
            assert exact_divide(sub(C,mul(A,F)),V)==B
            divisions+=1
        else:
            assert decode(r['left'])==decode(r['right'])
        count+=1
    return {'identities':count,'integer_quotient_rederivations':divisions,'status':'PASS'}
