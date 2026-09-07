"""Small-rank exact LLL with a checked unimodular transformation."""
from fractions import Fraction as Q

def gram_schmidt(rows):
    n=len(rows)
    gram=[[sum(a*b for a,b in zip(x,y)) for y in rows] for x in rows]
    mu=[[Q(0) for j in range(n)] for i in range(n)]
    norm=[]
    for i in range(n):
        for j in range(i):
            mu[i][j]=(Q(gram[i][j])-sum(mu[i][k]*mu[j][k]*norm[k] for k in range(j)))/norm[j]
        norm.append(Q(gram[i][i])-sum(mu[i][k]**2*norm[k] for k in range(i)))
        if norm[-1]<=0:raise ValueError('Rows not linearly independent')
    return mu,norm

def lll_transform(rows,delta=Q(3,4),max_steps=15000):
    original=[list(map(int,row)) for row in rows]
    A=[row[:] for row in original];n=len(A)
    T=[[int(i==j) for j in range(n)] for i in range(n)]
    k=1;steps=0
    while k<n:
        steps+=1
        if steps>max_steps:raise RuntimeError('LLL step budget exceeded')
        mu,norm=gram_schmidt(A)
        for j in reversed(range(k)):
            q=round(mu[k][j])
            if q:
                A[k]=[x-q*y for x,y in zip(A[k],A[j])]
                T[k]=[x-q*y for x,y in zip(T[k],T[j])]
                mu,norm=gram_schmidt(A)
        if norm[k]>=(delta-mu[k][k-1]**2)*norm[k-1]:k+=1
        else:
            A[k],A[k-1]=A[k-1],A[k]
            T[k],T[k-1]=T[k-1],T[k]
            k=max(1,k-1)
    mu,norm=gram_schmidt(A)
    assert all(abs(mu[i][j])<=Q(1,2) for i in range(n) for j in range(i))
    assert all(norm[i]>=(delta-mu[i][i-1]**2)*norm[i-1] for i in range(1,n))
    assert A==[[sum(T[i][j]*original[j][k] for j in range(n)) for k in range(len(A[0]))] for i in range(n)]
    return A,T
