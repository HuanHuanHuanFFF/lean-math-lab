"""Second exact analytic check of the 11 i=13 asymmetric cuts.
Independent fixed-decimal interval arithmetic; no primary certifier imports.
Logarithms use -log(1-u), not the primary atanh series. Integrals use
signed polynomial expansion and exact antiderivatives, not beta expansions.
Publication Lemma 4.1 / Prop 5.1 are mathematical inputs, not verified here.
"""
from pathlib import Path
from fractions import Fraction as F
from math import factorial, gcd, comb, isqrt
import json
if not __debug__:raise RuntimeError('Do not run proof checks with -O/-OO')
ROOT=Path(__file__).resolve().parents[1]
SCALE=10**32
TABLE={(3,2):(15395,138),(5,4):(13098,50),(7,4):(16219,60),
       (2,1):(19377,150),(5,3):(15454,86),(7,5):(14135,74),(8,5):(15407,53)}
def ceildiv(a,b):return -((-a)//b)
class V:
    def __init__(self,lo,hi):
        assert lo<=hi;self.lo=lo;self.hi=hi
    @staticmethod
    def exact(x):
        if isinstance(x,V):return x
        x=F(x);return V(x.numerator*SCALE//x.denominator,ceildiv(x.numerator*SCALE,x.denominator))
    def __add__(a,b):
        b=V.exact(b);return V(a.lo+b.lo,a.hi+b.hi)
    __radd__=__add__
    def __neg__(a):return V(-a.hi,-a.lo)
    def __sub__(a,b):return a+-V.exact(b)
    def __rsub__(a,b):return V.exact(b)+-a
    def __mul__(a,b):
        b=V.exact(b);p=[a.lo*b.lo,a.lo*b.hi,a.hi*b.lo,a.hi*b.hi]
        return V(min(p)//SCALE,ceildiv(max(p),SCALE))
    __rmul__=__mul__
    def inverse(a):
        assert a.lo>0;return V(SCALE*SCALE//a.hi,ceildiv(SCALE*SCALE,a.lo))
    def __truediv__(a,b):return a*V.exact(b).inverse()
    def __rtruediv__(a,b):return V.exact(b)*a.inverse()
    def __pow__(a,e):
        assert isinstance(e,int) and e>=0
        out=V.exact(1)
        for _ in range(e):out=out*a
        return out
    def json(a):return [str(a.lo),str(a.hi)]
def sqrtv(x):
    x=V.exact(x);assert x.lo>=0
    # Integer bisection, distinct from the primary integer-sqrt wrapper.
    def lower_sqrt(n):
        lo=0;hi=1<<((n.bit_length()+1)//2)
        while hi-lo>1:
            m=(lo+hi)//2
            if m*m<=n:lo=m
            else:hi=m
        return hi if hi*hi==n else lo
    a=lower_sqrt(x.lo*SCALE);b=lower_sqrt(x.hi*SCALE)
    return V(a,b if b*b==x.hi*SCALE else b+1)
def series_log(q):
    # For 1<=q<=2, u=1-1/q is in [0,1/2].
    q=F(q);assert 1<=q<=2
    u=V.exact(1-1/q);term=V.exact(1);ans=V.exact(0)
    N=120
    for k in range(1,N+1):
        term=term*u;ans=ans+term/k
    tail=(u**(N+1))/((N+1)*(1-u))
    return V(ans.lo,ans.hi+tail.hi)
LOG2=series_log(F(2))
def logpoint(q):
    q=F(q);assert q>0;k=0
    while q>=2:q/=2;k+=1
    while q<1:q*=2;k-=1
    return series_log(q)+k*LOG2
def logv(x):
    x=V.exact(x);assert x.lo>0
    return V(logpoint(F(x.lo,SCALE)).lo,logpoint(F(x.hi,SCALE)).hi)
def mulpoly(a,b):
    out=[F(0)]*(len(a)+len(b)-1)
    for j,x in enumerate(a):
        for k,y in enumerate(b):out[j+k]+=x*y
    return out
def polypower(a,k):
    out=[F(1)]
    for _ in range(k):out=mulpoly(out,a)
    return out
def integral_polynomial(factors,shift):
    pol=[F(0)]*shift+[F(1)]
    for a,k in factors:pol=mulpoly(pol,polypower(a,k))
    return sum((c/F(j+1) for j,c in enumerate(pol)),F(0))
def certify(row):
    p,q,k,l,a,b,c,d=[row[t] for t in ['p','q','k0','l0','a','b','c','d']]
    assert p in [2,3,5,7,11] and q in [2,3,5,7,11] and p!=q
    assert all(isinstance(x,int) and x>0 for x in [k,l,a,b,c,d]) and c>d and gcd(c,d)==1
    Ln,m0=TABLE[c,d];L=F(Ln,10000)
    assert F(str(row['L1']))==L and row['m0']==m0
    P=p**k;Q=q**l;D=a*P-b*Q;s=F(c,d);z=F(D,a*P)
    assert D==row['D0']>0 and 1<s<1/z
    root=sqrtv(s*s*z*z+4*(1-z));u=(s*(2-z)-root)/(2*(1-z)*(s+1));v=(s*z+2-root)/(2*z*(s+1))
    assert 0<u.lo<=u.hi<SCALE and 0<v.lo<=v.hi<SCALE
    alpha=F((c+d)**(c+d),(c-d)**(c-d)*d**(2*d))
    Qd=alpha*(u**(c-d))*((1-u)**d)*((1-(1-z)*u)**d)
    Ed=alpha*(v**d)*((1-v)**d)*((1-z*v)**(c-d))
    o3=(P**(c-d)*L**d)/(a**d*b**c*Qd)
    o4=(min(P,Q)**c*L**d)/((a*P)**(c-d)*D**(2*d)*Ed)
    assert o3.lo>SCALE and o4.lo>SCALE
    cs=[]
    for delta in [0,1]:
        h=d-delta;t=c-d-1+delta
        J1=integral_polynomial([([1,-1],h),([1,z-1],h)],t)
        J2=integral_polynomial([([1,-1],h),([1,-z],t)],h)
        assert J1>0 and J2>0
        fac=sqrtv(s*s-1)
        if delta:fac=fac.inverse()
        C1=alpha*fac*J1/(6*Qd);C2=alpha*fac*J2/(6*Ed)
        assert C1.hi<SCALE and C2.hi<SCALE;cs.append([C1.json(),C2.json()])
    lp=logpoint(F(P));lq=logpoint(F(Q));e3=logv(o3);e4=logv(o4)
    T=c*logpoint(F(max(P,Q)))+e4
    bp=F(1000-row['wp'],1000)/(c*lp);bq=F(1000-row['wq'],1000)/(c*lq)
    beta=V(min(bp.lo,bq.lo),min(bp.hi,bq.hi))
    m=beta*8191*LOG2-1;gap=beta*T-1
    margins=[m-m0,m*e3-logpoint(F(48)),gap,gap*8191*LOG2-T-2*LOG2]
    assert all(x.lo>0 for x in margins)
    return {'p':p,'q':q,'weights':[row['wp'],row['wq']], 'C_bounds':cs,
            'margins_grid_units':[x.json() for x in margins]}
def check(data):
    assert (data['i'],data['height_n_bits'],data['height_Y_bits'])==(13,8192,8191)
    assert len(data['cuts'])==11
    return {'status':'PASS','scale':str(SCALE),'cuts_checked':11,'rows':[certify(r) for r in data['cuts']],
            'arithmetic':'integer fixed decimal intervals; -log(1-u) series; polynomial antiderivatives; no primary helper imported'}
if __name__=='__main__':
    out=check(json.loads((ROOT/'input/i13_cuts.json').read_text()))
    (ROOT/'outputs/i13_cuts_independent.json').write_text(json.dumps(out,indent=2)+'\n')
    print('PASS: 11 analytic cuts; independent integer-grid arithmetic, 120-term -log(1-u) series.')
