"""Exact sparse polynomials, using the Python standard library only."""
from fractions import Fraction as F
class Poly:
    __slots__=('n','d')
    def __init__(self,n,d=None):
        self.n=n;self.d={tuple(m):F(c) for m,c in (d or {}).items() if c}
    @classmethod
    def const(cls,n,c):return cls(n,{(0,)*n:F(c)})
    @classmethod
    def var(cls,n,i):
        m=[0]*n;m[i]=1;return cls(n,{tuple(m):1})
    def coerce(self,x):
        if isinstance(x,Poly):
            if x.n!=self.n:raise ValueError('ring mismatch')
            return x
        return Poly.const(self.n,x)
    def __bool__(self):return bool(self.d)
    def __len__(self):return len(self.d)
    def __eq__(self,other):return self.d==self.coerce(other).d
    def __add__(self,other):
        other=self.coerce(other);out=dict(self.d)
        for m,c in other.d.items():
            v=out.get(m,0)+c
            if v:out[m]=v
            else:out.pop(m,None)
        return Poly(self.n,out)
    __radd__=__add__
    def __neg__(self):return Poly(self.n,{m:-c for m,c in self.d.items()})
    def __sub__(self,other):return self+-self.coerce(other)
    def __rsub__(self,other):return self.coerce(other)+-self
    def __mul__(self,other):
        other=self.coerce(other)
        if not self or not other:return Poly(self.n)
        out={}
        for m,c in self.d.items():
            for v,b in other.d.items():
                e=tuple(x+y for x,y in zip(m,v))
                out[e]=out.get(e,0)+c*b
        return Poly(self.n,out)
    __rmul__=__mul__
    def __truediv__(self,s):
        if isinstance(s,Poly):raise TypeError('only scalar division supported')
        s=F(s)
        if not s:raise ZeroDivisionError
        return Poly(self.n,{m:c/s for m,c in self.d.items()})
    def __pow__(self,k):
        if not isinstance(k,int) or k<0:raise ValueError('nonnegative exponent required')
        out=Poly.const(self.n,1);b=self
        while k:
            if k&1:out=out*b
            k//=2
            if k:b=b*b
        return out
    def coeff(self,var,power):
        return Poly(self.n,{m[:var]+(0,)+m[var+1:]:c for m,c in self.d.items() if m[var]==power})
    def degree(self,var):return max((m[var] for m in self.d),default=-1)
    def evaluate(self,values):
        if len(values)!=self.n:raise ValueError('arity mismatch')
        values=list(map(F,values));powers=[]
        for i,v in enumerate(values):
            pp=[F(1)]
            for _ in range(self.degree(i)):pp.append(pp[-1]*v)
            powers.append(pp)
        total=F(0)
        for m,c in self.d.items():
            for i,p in enumerate(m):c*=powers[i][p]
            total+=c
        return total
    def substitute(self,values):
        if len(values)!=self.n:raise ValueError('arity mismatch')
        n=next(v.n for v in values if isinstance(v,Poly))
        values=[v if isinstance(v,Poly) else Poly.const(n,v) for v in values]
        powers=[]
        for i,v in enumerate(values):
            pp=[Poly.const(n,1)]
            for _ in range(self.degree(i)):pp.append(pp[-1]*v)
            powers.append(pp)
        out=Poly(n)
        for m,c in self.d.items():
            term=Poly.const(n,c)
            for i in sorted(range(self.n),key=lambda j:len(powers[j][m[j]])):
                if m[i]:term*=powers[i][m[i]]
            out+=term
        return out

def unpack(terms,n):
    d={}
    for m,c in terms:
        if len(m)!=n or any(not isinstance(e,int) or e<0 for e in m):raise ValueError('bad monomial')
        m=tuple(m)
        if m in d:raise ValueError('duplicate monomial')
        d[m]=F(c)
    return Poly(n,d)
def ring(n):return [Poly.var(n,i) for i in range(n)]
def array_add(p,q):
    n=(p or q)[0].n;out=[Poly(n) for _ in range(max(len(p),len(q)))]
    for i,t in enumerate(p):out[i]+=t
    for i,t in enumerate(q):out[i]+=t
    return out

def array_mul(p,q):
    n=p[0].n;out=[Poly(n) for _ in range(len(p)+len(q)-1)]
    for i,t in enumerate(p):
        if not t:continue
        for j,s in enumerate(q):
            if s:out[i+j]+=t*s
    return out
