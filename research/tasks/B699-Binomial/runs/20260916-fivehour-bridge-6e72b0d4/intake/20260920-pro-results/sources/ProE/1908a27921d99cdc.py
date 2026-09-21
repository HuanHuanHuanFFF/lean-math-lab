"""Exact finite multivariate polynomial checks (standard library only)."""
from fractions import Fraction
from math import gcd


def identity_checks():
    NVAR=6
    def scalar(c):return {(0,)*NVAR:c} if c else {}
    def variable(i):
        e=[0]*NVAR;e[i]=1;return {tuple(e):1}
    def add(*terms):
        r={}
        for p in terms:
            for e,c in p.items():r[e]=r.get(e,0)+c
        return {e:c for e,c in r.items() if c}
    def neg(p):return {e:-c for e,c in p.items()}
    def times(*terms):
        r=scalar(1)
        for p in terms:
            a={}
            for e,c in r.items():
                for f,d in p.items():
                    t=tuple(x+y for x,y in zip(e,f));a[t]=a.get(t,0)+c*d
            r={e:c for e,c in a.items() if c}
        return r
    def power(p,n):return times(*([p]*n))
    def sub(p,q):return add(p,neg(q))
    def C(c,p):return times(scalar(c),p)
    def zero(name,p):
        if p:raise ValueError('identity failed: '+name)
        results.append(name)
    results=[]
    P,Q,v,nu,d,T=[variable(i) for i in range(6)]
    A=sub(Q,v);B=sub(times(A,nu),power(Q,2))
    R1=add(times(v,power(nu,2)),neg(times(P,power(Q,2))),scalar(1))
    R2=add(times(P,A),neg(power(Q,2)),neg(C(2,times(v,nu))))
    normres=add(power(A,2),times(v,power(B,2)),neg(power(Q,5)))
    zero('N5 residual',sub(normres,add(times(power(A,2),R1),times(A,power(Q,2),R2))))
    Frec=add(power(Q,2),times(v,nu))
    zero('eta times conjugate eta0 real residual',sub(add(A,times(v,B,nu),neg(times(power(Q,2),Frec))),add(times(A,R1),times(power(Q,2),R2))))
    zero('eta times conjugate eta0 imaginary part',add(B,neg(times(A,nu)),power(Q,2)))
    # Reuse variable slots as x,y,d,T. This is local, no source-variable substitution.
    x,y=P,Q
    f=add(power(x,4),neg(C(10,times(d,power(x,2),power(y,2)))),C(5,times(power(d,2),power(y,4))))
    g=add(C(5,power(x,4)),neg(C(10,times(d,power(x,2),power(y,2)))),times(power(d,2),power(y,4)))
    n=add(power(x,2),times(d,power(y,2)))
    L=add(times(sub(scalar(1),times(d,power(T,2))),x),C(2,times(d,T,y)))
    M=add(times(T,power(n,2)),C(4,times(x,y,sub(power(x,2),C(3,times(d,power(y,2)))))))
    ss=sub(times(T,x),y)
    zero('real part special recovery',sub(sub(n,times(d,power(ss,2))),times(x,L)))
    zero('integer recovery quartic',sub(add(times(y,g),times(ss,power(n,2))),times(x,M)))
    zero('Chebyshev real polynomial',sub(f,add(C(16,power(x,4)),neg(C(20,times(n,power(x,2)))),C(5,power(n,2)))))
    # Symbolic fifth power in Z[x,y,d][sqrt(-d)].
    aa,bb=scalar(1),{}
    for _ in range(5):aa,bb=sub(times(aa,x),times(d,bb,y)),add(times(aa,y),times(bb,x))
    zero('fifth power real',sub(aa,times(x,f)))
    zero('fifth power imaginary',sub(bb,times(y,g)))
    # Evaluate the kernel identity symbolically, before dividing by gcd(a,b)^4.
    xx=C(2,times(d,T));yy=sub(times(d,power(T,2)),scalar(1))
    nn=add(power(xx,2),times(d,power(yy,2)))
    mm=add(times(T,power(nn,2)),C(4,times(xx,yy,sub(power(xx,2),C(3,times(d,power(yy,2)))))))
    kk=add(times(power(d,2),power(T,4)),neg(C(10,times(d,power(T,2)))),scalar(5))
    zero('quartic kernel constant',sub(mm,times(power(d,2),T,power(kk,2))))
    if not (11**3>18**2 and 5**2>24):raise ValueError('strict threshold arithmetic')
    # t=0 signed endpoint; tests do not replace the divisibility proof.
    if not (22**2<499<501<23**2):raise ValueError('signed endpoint squares')
    return dict(status='PASS_EXACT_POLYNOMIAL_IDENTITIES',identities=results,strict_thresholds=True)

if __name__=='__main__':
    import json
    print(json.dumps(identity_checks(),indent=2))
