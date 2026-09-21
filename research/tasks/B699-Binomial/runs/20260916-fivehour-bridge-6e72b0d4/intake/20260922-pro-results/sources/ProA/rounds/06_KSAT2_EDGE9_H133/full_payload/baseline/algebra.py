"""Exact Hasse jets, complete rational recovery, and polynomial identities. Standard library."""
from fractions import Fraction as F
from math import comb
from itertools import combinations

def monomials(q):
    return tuple((a,b) for b in range(q-1,-1,-1) for a in range(2*q-2*b,-1,-1))+((0,q),)

def jet(q,r,v,i,j):
    return tuple(comb(a,i)*r**(a-i)*comb(b,j)*v**(b-j) if a>=i and b>=j else 0 for a,b in monomials(q))

def tangent_jet(q,r,i,j):
    s=r//2;v=s*s
    return tuple(comb(b,j)*sum(comb(b-j,z)*v**(b-j-z)*s**z*comb(a,i-z)*r**(a-i+z)
                         for z in range(b-j+1) if 0<=i-z<=a) if b>=j else 0 for a,b in monomials(q))

def equations(q,mode,ms):
    assert len(ms)==6
    eq=[]
    for r,m in zip(range(3,9),ms):
        assert len(m)==r//2+1 and all(isinstance(a,int) and 0<=a<=q for a in m)
        for s,mv in enumerate(m):
            for d in range(mv):
                for j in range(d+1):eq.append(jet(q,r,s*(r-s),d-j,j))
    for r in ((4,) if mode==0 else (4,6)):
        m=ms[r-3][-1]
        for w in range(2*m):
            for j in range(w//2+1):eq.append(tangent_jet(q,r,w-2*j,j))
    return eq

def affine(eq,n):
    """First-pivot Fraction elimination; last coordinate is normalized to one."""
    B={}
    for raw in eq:
        assert len(raw)==n
        x=list(map(F,raw))
        for p in range(n):
            if not x[p]:continue
            if p not in B:
                d=x[p];B[p]=tuple(a/d for a in x);break
            d=x[p];x=[a-d*b for a,b in zip(x,B[p])]
    if n-1 in B:return None
    free=[i for i in range(n-1) if i not in B]
    def recover(f):
        x=[F(0)]*n;x[-1]=F(f is None)
        if f is not None:x[f]=F(1)
        for p in sorted(B,reverse=True):x[p]=-sum(B[p][k]*x[k] for k in range(p+1,n))
        return tuple(x)
    return [recover(None)]+[recover(f) for f in free]

def clean(p):return {m:F(c) for m,c in p.items() if c}
def add(a,b):
    c=dict(a)
    for m,v in b.items():c[m]=c.get(m,F(0))+v
    return clean(c)
def mul(a,b):
    c={}
    for (i,j),v in a.items():
        for (k,l),w in b.items():c[i+k,j+l]=c.get((i+k,j+l),F(0))+v*w
    return clean(c)
def power(p,n):
    ans={(0,0):F(1)}
    for _ in range(n):ans=mul(ans,p)
    return ans

def eval_x(p,graph):
    ans={}
    for (a,b),c in p.items():ans=add(ans,mul({(a,0):c},power(graph,b)))
    return clean(ans)

def det(A):
    """Bareiss determinant, with exact divisions and row pivoting."""
    a=[list(map(int,row)) for row in A];n=len(a);sgn=1;prev=1
    assert all(len(row)==n for row in a)
    for k in range(n-1):
        if a[k][k]==0:
            j=next((j for j in range(k+1,n) if a[j][k]),None)
            if j is None:return 0
            a[k],a[j]=a[j],a[k];sgn=-sgn
        pivot=a[k][k]
        for i in range(k+1,n):
            for j in range(k+1,n):
                z=a[i][j]*pivot-a[i][k]*a[k][j]
                assert z%prev==0
                a[i][j]=z//prev
            a[i][k]=0
        prev=pivot
    return sgn*a[-1][-1]

def trace_allowed(points):
    return all(det([[1,r,r*r,v] for r,v in four])==0 for four in combinations(points,4))

def verify_spaces(enum,certificate):
    q=enum['q'];mode=enum['mode'];M=monomials(q)
    assert q==5 and mode==0
    actual=sorted(enum['multiplicities'])
    assert actual==sorted(r['m'] for r in certificate['records'])
    out=[]
    for rec in certificate['records']:
        eq=equations(q,mode,rec['m']);V=affine(eq,len(M));assert V is not None
        supplied=[tuple(map(F,v)) for v in rec['vectors']]
        assert V==supplied
        assert all(sum(a*b for a,b in zip(row,v))==0 for row in eq for v in V)
        if all(all(not c or b>=1 for (a,b),c in zip(M,v)) for v in V):factor='X'
        else:
            graph={(2,0):F(1),(1,0):F(-9),(0,0):F(20)}
            assert all(not eval_x(clean(dict(zip(M,v))),graph) for v in V)
            factor='X-N^2+9*N-20'
        assert V[0][-1]==1 and all(v[-1]==0 for v in V[1:])
        out.append(dict(m=rec['m'],dimension=len(V)-1,rank=len(M)-len(V),common_factor=factor))
    assert len(out)==13 and sum(r['dimension'] for r in out)==1
    return out
