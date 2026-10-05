"""Small exact arithmetic used by the offline verifier. No CAS or network."""
from fractions import Fraction
from itertools import permutations
from math import gcd,lcm

def require(test,msg):
    if not test: raise ValueError(msg)

def clean(p):return {e:c for e,c in p.items() if c}
def add(p,q):
    out=dict(p)
    for e,c in q.items():out[e]=out.get(e,0)+c
    return clean(out)
def scale(p,a):return clean({e:a*c for e,c in p.items()})
def mul(p,q):
    out={}
    for a,c in p.items():
        for b,d in q.items():
            e=tuple(x+y for x,y in zip(a,b));out[e]=out.get(e,0)+c*d
    return clean(out)
def power(p,n):
    require(n>=0,'negative polynomial power')
    dim=len(next(iter(p))) if p else 2;out={(0,)*dim:1}
    for _ in range(n):out=mul(out,p)
    return out
def value(p,*args):return sum(c*prod(a**i for a,i in zip(args,e)) for e,c in p.items())
def prod(xs):
    ans=1
    for x in xs:ans*=x
    return ans
def compose(p,variables):
    dim=len(next(iter(variables[0])));out={}
    for e,c in p.items():
        t={(0,)*dim:c}
        for v,k in zip(variables,e):t=mul(t,power(v,k))
        out=add(out,t)
    return out
N={(1,0):1};J={(0,1):1};ONE={(0,0):1}
def poly(rows):return {(int(a),int(b)):int(c) for a,b,c in rows if c}
def rows(p):return [[*e,int(c)] for e,c in sorted(p.items()) if c]
def fraction(x):x=Fraction(x);return [x.numerator,x.denominator]

def nullspace(matrix):
    """Full rational row reduction, returning rank and an ordered basis."""
    A=[[Fraction(x) for x in row] for row in matrix]
    r=0;piv=[];cols=len(A[0])
    for c in range(cols):
        k=next((i for i in range(r,len(A)) if A[i][c]),None)
        if k is None:continue
        A[r],A[k]=A[k],A[r];v=A[r][c];A[r]=[x/v for x in A[r]]
        for i in range(len(A)):
            if i!=r and A[i][c]:
                v=A[i][c];A[i]=[x-v*y for x,y in zip(A[i],A[r])]
        piv.append(c);r+=1
        if r==len(A):break
    out=[]
    for c in (x for x in range(cols) if x not in piv):
        v=[Fraction(0)]*cols;v[c]=Fraction(1)
        for i,p in enumerate(piv):v[p]=-A[i][c]
        out.append(v)
    return r,out

def primitive(v):
    den=lcm(*(x.denominator for x in v));out=[int(x*den) for x in v]
    gg=gcd(*out);out=[x//gg for x in out]
    # All ten kernels have nonzero J^3 coefficient; use it to fix the sign.
    if out[-1]<0:out=[-x for x in out]
    return out

# Univariate polynomials in N are represented by exponent tuples of length one.
def sylvester(f,g):
    m=max(b for a,b in f);n=max(b for a,b in g)
    fc=[{(a,):c for (a,b),c in f.items() if b==k} for k in range(m,-1,-1)]
    gc=[{(a,):c for (a,b),c in g.items() if b==k} for k in range(n,-1,-1)]
    out=[]
    for i in range(n):out.append([{}]*i+fc+[{}]*(n-1-i))
    for i in range(m):out.append([{}]*i+gc+[{}]*(m-1-i))
    return out

def polynomial_det(M):
    """Leibniz determinant via subset dynamic programming over Z[N]."""
    size=len(M);dp={0:{(0,):1}}
    for i in range(size):
        nxt={}
        for mask,v in dp.items():
            for c in range(size):
                if mask>>c&1 or not M[i][c]:continue
                sign=-1 if (mask>>(c+1)).bit_count()%2 else 1
                key=mask|(1<<c)
                nxt[key]=add(nxt.get(key,{}),scale(mul(v,M[i][c]),sign))
        dp=nxt
    return dp.get((1<<size)-1,{})

def bareiss(M):
    """Independent fraction-free integer determinant."""
    A=[list(row) for row in M];n=len(A);sign=1;previous=1
    for k in range(n-1):
        if A[k][k]==0:
            r=next((r for r in range(k+1,n) if A[r][k]),None)
            if r is None:return 0
            A[k],A[r]=A[r],A[k];sign=-sign
        pivot=A[k][k]
        for i in range(k+1,n):
            for j in range(k+1,n):
                u=A[i][j]*pivot-A[i][k]*A[k][j]
                require(u%previous==0,'nonexact Bareiss division')
                A[i][j]=u//previous
        for i in range(k+1,n):A[i][k]=0
        previous=pivot
    return sign*A[-1][-1]

def resultant(f,g):return polynomial_det(sylvester(f,g))
