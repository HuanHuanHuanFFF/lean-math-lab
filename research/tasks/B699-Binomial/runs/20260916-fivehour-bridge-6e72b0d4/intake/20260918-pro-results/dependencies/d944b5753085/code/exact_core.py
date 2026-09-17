"""Standard-library exact polynomial, interpolation and small-matrix utilities."""
from fractions import Fraction as Q
from math import comb

def clean(p): return {k:v for k,v in p.items() if v}
def add(p,q):
    z=dict(p)
    for k,v in q.items():z[k]=z.get(k,0)+v
    return clean(z)
def scale(p,c):return clean({k:v*c for k,v in p.items()})
def mul(p,q):
    z={}
    for (a,b),c in p.items():
        for (i,j),v in q.items():z[a+i,b+j]=z.get((a+i,b+j),0)+c*v
    return clean(z)
def power(p,e):
    z={(0,0):1}
    for _ in range(e):z=mul(z,p)
    return z
def evaluate(p,n,x):return sum(c*n**a*x**b for (a,b),c in p.items())
def taylor(p,n,x,i,j):
    return sum(c*comb(a,i)*comb(b,j)*n**(a-i)*x**(b-j) for (a,b),c in p.items() if a>=i and b>=j)
def shift_horner(p,n,x,order):
    # Alternative Taylor implementation via truncated two-variable Horner arithmetic.
    def tmul(a,b):return {k:v for k,v in mul(a,b).items() if sum(k)<order}
    Y={(0,0):n,(1,0):1};Z={(0,0):x,(0,1):1}
    maxa=max((a for a,b in p),default=0);maxb=max((b for a,b in p),default=0)
    out={}
    for b in range(maxb,-1,-1):
        row={}
        for a in range(maxa,-1,-1):
            row=add(tmul(row,Y),{(0,0):p.get((a,b),0)})
        out=add(tmul(out,Z),row)
    return clean(out)
def interpolation(values):
    # values: list of (integer argument, rational value); returns bivariate in N only
    out={}
    for r,v in values:
        basis={(0,0):Q(v)}
        for t,_ in values:
            if t!=r:basis=scale(mul(basis,{(1,0):1,(0,0):-t}),Q(1,r-t))
        out=add(out,basis)
    return out
def rref(A):
    M=[[Q(v) for v in row] for row in A]; piv=[];r=0
    if not M:return M,piv
    for c in range(len(M[0])):
        j=next((j for j in range(r,len(M)) if M[j][c]),None)
        if j is None:continue
        M[r],M[j]=M[j],M[r];pivot=M[r][c];M[r]=[x/pivot for x in M[r]]
        for j in range(len(M)):
            if j!=r and M[j][c]:
                a=M[j][c];M[j]=[x-a*y for x,y in zip(M[j],M[r])]
        piv.append(c);r+=1
        if r==len(M):break
    return M,piv
def determinant(A):
    if not A:return Q(1)
    M=[[Q(v) for v in row] for row in A];ans=Q(1);n=len(M)
    assert all(len(row)==n for row in M)
    for i in range(n):
        j=next((j for j in range(i,n) if M[j][i]),None)
        if j is None:return Q(0)
        if j!=i:M[j],M[i]=M[i],M[j];ans=-ans
        v=M[i][i];ans*=v
        for j in range(i+1,n):
            c=M[j][i]/v
            for k in range(i+1,n):M[j][k]-=c*M[i][k]
    return ans
def independent_rows(A,target=None):
    # Exact row-echelon basis while retaining original indices.
    basis={};indices=[]
    for i,raw in enumerate(A):
        row=[Q(x) for x in raw]
        for c,b in sorted(basis.items()):
            if row[c]:
                a=row[c];row=[x-a*y for x,y in zip(row,b)]
        c=next((c for c,x in enumerate(row) if x),None)
        if c is None:continue
        a=row[c];basis[c]=[x/a for x in row];indices.append(i)
        if target and len(indices)>=target:return indices
    return indices

def pack_fraction(v):v=Q(v);return [v.numerator,v.denominator]
def unpack_fraction(v):return Q(*v)
def pack_poly(p):return [[a,b,*pack_fraction(c)] for (a,b),c in sorted(clean(p).items())]
def unpack_poly(p):return {(a,b):Q(n,d) for a,b,n,d in p}
def B(d):return sum(d-2*b+1 for b in range(d//2+1)) if d>=0 else 0
