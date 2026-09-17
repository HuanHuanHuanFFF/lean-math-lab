"""Small exact basis finder. Acceptance uses its unimodular identity, not an LLL label."""
from fractions import Fraction as F


def dot(a,b): return sum((x*y for x,y in zip(a,b)),F(0))


def gs(rows):
    stars=[];norms=[]
    for row in rows:
        v=[F(x) for x in row]
        for star,norm in zip(stars,norms):
            mu=dot(row,star)/norm
            v=[x-mu*y for x,y in zip(v,star)]
        norm=dot(v,v)
        assert norm>0
        stars.append(v);norms.append(norm)
    return stars,norms


def det3(a):
    return (a[0][0]*(a[1][1]*a[2][2]-a[1][2]*a[2][1])
            -a[0][1]*(a[1][0]*a[2][2]-a[1][2]*a[2][0])
            +a[0][2]*(a[1][0]*a[2][1]-a[1][1]*a[2][0]))


def matmul(a,b):
    return [[sum(a[i][k]*b[k][j] for k in range(3)) for j in range(3)] for i in range(3)]


def lll3(original):
    rows=[list(row) for row in original]
    transform=[[int(i==j) for j in range(3)] for i in range(3)]
    k=1;steps=0
    while k<3:
        steps+=1
        assert steps<20000,'basis-finder iteration cap; no certificate produced'
        for j in range(k-1,-1,-1):
            stars,norms=gs(rows)
            mu=dot(rows[k],stars[j])/norms[j]
            q=(2*mu.numerator+mu.denominator)//(2*mu.denominator)
            if q:
                rows[k]=[a-q*b for a,b in zip(rows[k],rows[j])]
                transform[k]=[a-q*b for a,b in zip(transform[k],transform[j])]
        stars,norms=gs(rows)
        mu=dot(rows[k],stars[k-1])/norms[k-1]
        if norms[k] >= (F(3,4)-mu*mu)*norms[k-1]:
            k+=1
        else:
            rows[k],rows[k-1]=rows[k-1],rows[k]
            transform[k],transform[k-1]=transform[k-1],transform[k]
            k=max(1,k-1)
    assert det3(transform) in (-1,1)
    assert matmul(transform,original)==rows
    return rows,transform,steps
