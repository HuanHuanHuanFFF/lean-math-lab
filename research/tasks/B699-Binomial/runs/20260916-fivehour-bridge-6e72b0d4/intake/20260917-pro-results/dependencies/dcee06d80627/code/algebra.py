"""Exact polynomial primitives, ascending coefficients. No third-party packages."""
from fractions import Fraction
from math import gcd

def trim(a):
    a=list(a)
    while len(a)>1 and a[-1]==0: a.pop()
    return a or [0]
def add(a,b):
    c=[0]*max(len(a),len(b))
    for i,x in enumerate(a): c[i]+=x
    for i,x in enumerate(b): c[i]+=x
    return trim(c)
def neg(a):return [-x for x in a]
def sub(a,b):return add(a,neg(b))
def scale(a,c):return trim([c*x for x in a])
def mul(a,b):
    c=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):c[i+j]+=x*y
    return trim(c)
def ev(a,x):
    y=0
    for c in a[::-1]: y=y*x+c
    return y
def norm1(a):return sum(abs(c) for c in a)
def divrem_q(a,b):
    a=trim(list(map(Fraction,a)));b=trim(list(map(Fraction,b)))
    if b==[0]:raise ValueError('zero divisor')
    q=[Fraction(0)]*max(1,len(a)-len(b)+1)
    while a!=[0] and len(a)>=len(b):
        d=len(a)-len(b);c=a[-1]/b[-1];q[d]+=c
        a=sub(a,[Fraction(0)]*d+scale(b,c))
    return trim(q),a

def pseudorem(a,b,steps):
    """Return r,q with lc(b)**steps*a=q*b+r, deg(r)<deg(b)."""
    a=trim(a); b=trim(b)
    if b==[0] or len(b)==1:raise ValueError('positive-degree divisor required')
    r=a[:]; q=[0];used=0;lead=b[-1]
    while r!=[0] and len(r)>=len(b):
        shift=len(r)-len(b);v=r[-1]
        r=sub(scale(r,lead),[0]*shift+scale(b,v))
        q=add(scale(q,lead),[0]*shift+[v]);used+=1
    if used>steps:raise ValueError('insufficient pseudo-division budget')
    factor=lead**(steps-used)
    return scale(r,factor),scale(q,factor)

def vp_int(a,p):
    if a==0:raise ValueError('valuation of zero')
    a=abs(a);e=0
    while a%p==0:a//=p;e+=1
    return e

def vp(a,p):
    a=Fraction(a)
    return vp_int(a.numerator,p)-vp_int(a.denominator,p)

def extremal(a,p,k,f):
    weights=[(k*vp(c,p)-f*i,i) for i,c in enumerate(a) if c]
    if not weights:raise ValueError('zero polynomial')
    h=min(w for w,i in weights); indices=[i for w,i in weights if w==h]
    return [h,min(indices),max(indices)]

def determinant_bareiss(a):
    a=[list(row) for row in a];n=len(a)
    if not n:return 1
    sign=1;prev=1
    for k in range(n-1):
        if a[k][k]==0:
            q=next((i for i in range(k+1,n) if a[i][k]),None)
            if q is None:return 0
            a[k],a[q]=a[q],a[k];sign=-sign
        pivot=a[k][k]
        for i in range(k+1,n):
            for j in range(k+1,n):
                z=a[i][j]*pivot-a[i][k]*a[k][j]
                assert z%prev==0
                a[i][j]=z//prev
            a[i][k]=0
        prev=pivot
    return sign*a[-1][-1]

def sylvester(a,b):
    a=trim(a);b=trim(b);m=len(a)-1;n=len(b)-1
    rows=[]
    for t in range(n):rows.append([0]*t+a[::-1]+[0]*(n-1-t))
    for t in range(m):rows.append([0]*t+b[::-1]+[0]*(m-1-t))
    return rows

def resultant(a,b):
    a=trim(a);b=trim(b)
    if a==[0] or b==[0]:return 0
    return determinant_bareiss(sylvester(a,b))

def prime(p):
    if p<2:return False
    d=2
    while d*d<=p:
        if p%d==0:return False
        d+=1
    return True

def carry_valuation(n,j,p):
    e=0;q=p
    while q<=n:
        e+=(j%q>n%q);q*=p
    return e

def xgcd_q(a,b):
    r0,r1=list(map(Fraction,trim(a))),list(map(Fraction,trim(b)))
    s0,s1=[Fraction(1)],[Fraction(0)];t0,t1=[Fraction(0)],[Fraction(1)]
    while r1!=[0]:
        q,r=divrem_q(r0,r1);r0,r1=r1,r
        s0,s1=s1,sub(s0,mul(q,s1));t0,t1=t1,sub(t0,mul(q,t1))
    c=r0[-1]
    return scale(r0,1/c),scale(s0,1/c),scale(t0,1/c)
