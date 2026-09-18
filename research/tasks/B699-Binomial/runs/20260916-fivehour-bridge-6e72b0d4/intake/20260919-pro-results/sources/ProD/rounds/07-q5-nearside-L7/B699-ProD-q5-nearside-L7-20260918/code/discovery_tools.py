"""Optional exact rational LLL search, adapted unchanged from the preceding round.
The verifier never imports this module; every resulting vector is checked directly.
"""
from fractions import Fraction as F

def dot(a,b): return sum(x*y for x,y in zip(a,b))
def gs(B):
    stars=[]; norms=[]; mus=[]
    for i,b in enumerate(B):
        s=list(map(F,b)); row=[]
        for j in range(i):
            mu=F(dot(b,stars[j]),norms[j]); row.append(mu)
            s=[x-mu*y for x,y in zip(s,stars[j])]
        stars.append(s); norms.append(dot(s,s)); mus.append(row)
    return stars,norms,mus

def nearest(x): return (2*x.numerator+x.denominator)//(2*x.denominator)
def lll(B):
    B=[list(b) for b in B]; k=1; steps=0
    while k<len(B):
        steps+=1
        if steps>10000: raise RuntimeError('LLL steps')
        for j in reversed(range(k)):
            _,N,mu=gs(B); q=nearest(mu[k][j])
            if q:B[k]=[a-q*b for a,b in zip(B[k],B[j])]
        _,N,mu=gs(B)
        if N[k]>=(F(3,4)-mu[k][k-1]**2)*N[k-1]: k+=1
        else: B[k],B[k-1]=B[k-1],B[k]; k=max(1,k-1)
    return B,steps

