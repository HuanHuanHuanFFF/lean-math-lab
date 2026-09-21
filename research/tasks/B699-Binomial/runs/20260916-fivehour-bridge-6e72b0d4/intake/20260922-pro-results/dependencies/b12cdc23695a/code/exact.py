"""Small exact polynomial and rational-linear-algebra routines (standard library)."""
from fractions import Fraction as Q
from math import comb, gcd, lcm
from functools import reduce

MON=tuple((a,b) for b in range(3,-1,-1) for a in range(8-2*b,-1,-1))+((0,4),)
SOURCES=tuple((r,s*(r-s)) for r in range(3,9) for s in range(r//2+1))

def jet(r,v,i,j):
    return tuple(comb(a,i)*r**(a-i)*comb(b,j)*v**(b-j) if a>=i and b>=j else 0 for a,b in MON)

def tangent_jet(r,i,j):
    s=r//2; v=s*s
    return tuple(comb(b,j)*sum(comb(b-j,k)*v**(b-j-k)*s**k*comb(a,i-k)*r**(a-i+k)
                     for k in range(b-j+1) if 0<=i-k<=a) if b>=j else 0 for a,b in MON)

def dot(a,b): return sum((x*y for x,y in zip(a,b)), Q(0))

def rref(equations, n=25):
    """Exact first-pivot echelon followed by back substitution, independent of discovery."""
    basis={}
    for raw in equations:
        x=[Q(a) for a in raw]
        for p in range(n):
            if not x[p]: continue
            if p not in basis:
                z=x[p]; basis[p]=tuple(a/z for a in x)
                break
            z=x[p]; b=basis[p]
            x=[a-z*c for a,c in zip(x,b)]
    return basis

def affine(equations):
    B=rref(equations)
    if 24 in B: return None
    free=[p for p in range(24) if p not in B]
    def solve(free_index):
        x=[Q(0)]*25
        x[24]=Q(free_index is None)
        if free_index is not None: x[free_index]=Q(1)
        for p in sorted(B,reverse=True): x[p]=-sum(B[p][k]*x[k] for k in range(p+1,25))
        return tuple(x)
    return (solve(None),)+tuple(solve(p) for p in free)

def equations_for(ms):
    eq=[]
    for r,m in zip(range(3,9),ms):
        assert len(m)==r//2+1
        for s,mv in enumerate(m):
            for d in range(mv):
                for j in range(d+1): eq.append(jet(r,s*(r-s),d-j,j))
    return eq

def generic_signature(vecs):
    ordinary=[];diagonal=[]
    for r,v in SOURCES:
        found=False
        for m in range(9):
            forms=[tuple(dot(jet(r,v,m-j,j),a) for a in vecs) for j in range(m+1)]
            if any(any(a) for a in forms): found=True; break
        assert found
        ordinary.append(m)
    for r in (4,6,8):
        m=ordinary[SOURCES.index((r,(r//2)**2))]
        for w in range(9):
            forms=[tuple(dot(tangent_jet(r,w-2*j,j),a) for a in vecs) for j in range(w//2+1)]
            if any(any(a) for a in forms): break
        diagonal.append((m,w,2*m-w))
    rows=[];at=0
    for r in range(3,9): rows.append(ordinary[at:at+r//2+1]);at+=r//2+1
    return dict(m=rows,mu=sum(ordinary),z=sum(a>0 for a in ordinary),delta=[4-sum(a) for a in rows],diagonal=diagonal)

def primitive(vec):
    den=reduce(lcm,(a.denominator for a in vec),1)
    v=[int(a*den) for a in vec]; g=reduce(gcd,v,0)
    if not g: raise ValueError('zero polynomial')
    v=[a//g for a in v]
    if v[-1]<0:v=[-a for a in v]
    return v,sum(abs(a) for a in v)

def clean(A): return {m:Q(c) for m,c in A.items() if c}
def add(A,B):
    C=A.copy()
    for m,c in B.items():C[m]=C.get(m,Q(0))+c
    return clean(C)
def scale(A,c):return clean({m:a*c for m,a in A.items()})
def mul(A,B):
    C={}
    for (a,b),v in A.items():
        for (c,d),w in B.items():C[(a+c,b+d)]=C.get((a+c,b+d),Q(0))+v*w
    return clean(C)
def power(A,n):
    B={(0,0):Q(1)}
    for _ in range(n): B=mul(B,A)
    return B
def to_poly(v):return clean(dict(zip(MON,v)))
def to_vec(A):
    assert set(A)<=set(MON)
    return tuple(Q(A.get(m,0)) for m in MON)
def ell(t):return {(0,1):Q(1),(1,0):Q(-t),(0,0):Q(t*t)}
def product(items):return reduce(mul,items,{(0,0):Q(1)})
W=product(({(1,0):Q(1),(0,0):Q(-r)} for r in range(3,9)))
P4=product(ell(t) for t in range(4))

def evaluate_X(A,R):
    """Substitute X=R(N); R contains only powers of N."""
    assert all(b==0 for a,b in R)
    result={}
    for (a,b),c in A.items():result=add(result,mul({(a,0):c},power(R,b)))
    return result

def divide_monic_N(A,B):
    """Exact polynomial long division when B is monic and depends only on N."""
    assert all(b==0 for a,b in B)
    degree=max(a for a,b in B);assert B[(degree,0)]==1
    R=A.copy();quot={}
    for b in sorted({b for a,b in R},reverse=True):
        while True:
            exps=[a for a,bb in R if bb==b and R[(a,bb)]]
            if not exps or max(exps)<degree:break
            a=max(exps);c=R[(a,b)];term={(a-degree,b):c}
            quot=add(quot,term);R=add(R,scale(mul(term,B),-1))
    return clean(quot),clean(R)

def forced_ell(vecs):
    for t in range(9):
        R={(1,0):Q(t),(0,0):Q(-t*t)}
        if all(not evaluate_X(to_poly(v),R) for v in vecs):return t
    return None

def value(A,n,x):return sum(c*n**a*x**b for (a,b),c in A.items())
def determinant(A):
    A=[[Q(x) for x in row] for row in A];n=len(A);det=Q(1)
    for i in range(n):
        p=next((j for j in range(i,n) if A[j][i]),None)
        if p is None:return Q(0)
        if p!=i:A[i],A[p]=A[p],A[i];det=-det
        a=A[i][i];det*=a
        for j in range(i+1,n):
            c=A[j][i]/a
            for k in range(i,n):A[j][k]-=c*A[i][k]
    return det

def common_linear_root(forms):
    """All entries are affine a+b*t. Return sole common root or None."""
    nonzero=[(a,b) for a,b in forms if a or b]
    assert nonzero
    candidates={-a/b for a,b in nonzero if b}
    if len(candidates)!=1:return None
    t=next(iter(candidates))
    return t if all(a+b*t==0 for a,b in nonzero) else None

def pencil_formula(identifier):
    """Return A,Q,c with the certificate's raw parameter u giving A+(u/c)WQ."""
    P0124=product(ell(t) for t in (0,1,2,4))
    if identifier==59:return P0124,{(2,0):Q(3),(1,0):Q(-23),(0,1):Q(-1),(0,0):Q(44)},887040
    if identifier==61:return P0124,{(2,0):Q(2),(1,0):Q(-16),(0,1):Q(-1),(0,0):Q(32)},645120
    if identifier==64:return P0124,{(2,0):Q(1),(1,0):Q(-7),(0,1):Q(-1),(0,0):Q(14)},282240
    if identifier==70:
        R={(0,1):Q(1),(2,0):Q(-1),(1,0):Q(9),(0,0):Q(-24)}
        return mul(product(ell(t) for t in (0,1,3)),R),{(2,0):Q(1),(1,0):Q(-10),(0,1):Q(1),(0,0):Q(21)},423360
    if identifier==81:
        A={(0,4):Q(1)}
        for b,coeff in [(3,[-34,14,-2]),(2,[2449,-1912,567,-76,4])]:
            A=add(A,{(a,b):Q(c) for a,c in enumerate(coeff)})
        A=add(A,{(a,1):Q(c,19) for a,c in enumerate([-644004,854046,-474892,140809,-23381,2057,-75])})
        constant=product([{(1,0):Q(1)}]+[{(1,0):Q(1),(0,0):Q(-r)} for r in range(3,8)]+[{(2,0):Q(6),(1,0):Q(-39),(0,0):Q(61)}])
        A=add(A,scale(constant,Q(3,19)))
        return A,{(2,0):Q(1),(1,0):Q(-8),(0,1):Q(-1),(0,0):Q(19)},383040
    raise ValueError('unknown pencil')
