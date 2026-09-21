"""Integer sparse polynomials; used by the first implementation only."""
VARS = ('P', 'm', 'u', 'v', 'c')
ZERO=(0,)*5

def const(k):
    return {ZERO: k} if k else {}

def var(i):
    e=list(ZERO); e[i]=1
    return {tuple(e):1}

def add(*ps):
    out={}
    for p in ps:
        for e,a in p.items(): out[e]=out.get(e,0)+a
    return {e:a for e,a in out.items() if a}

def scale(p,k): return {e:a*k for e,a in p.items() if a*k}

def mul(*ps):
    out=const(1)
    for p in ps:
        nxt={}
        for e,a in out.items():
            for f,b in p.items():
                h=tuple(x+y for x,y in zip(e,f))
                nxt[h]=nxt.get(h,0)+a*b
        out={e:a for e,a in nxt.items() if a}
    return out

def power(p,n):
    out=const(1)
    for _ in range(n): out=mul(out,p)
    return out

def serialize(p):
    return [[list(e),a] for e,a in sorted(p.items())]

def deserialize(rows):
    out={}
    for e,a in rows:
        if len(e)!=5 or any(type(x) is not int or x<0 for x in e):
            raise ValueError('bad exponent')
        if type(a) is not int or a==0 or tuple(e) in out:
            raise ValueError('noncanonical polynomial')
        out[tuple(e)]=a
    return out

def polynomials():
    P,m,u,v,c=map(var,range(5)); one=const(1)
    N=add(scale(mul(power(m,2),power(P,2)),2),scale(mul(m,P),4),one)
    j=add(mul(u,power(P,2)),mul(v,P),c)
    L=add(scale(mul(power(P,2),power(m,2),power(u,2)),2),
       scale(mul(P,power(m,2),u,v),4),scale(mul(P,m,power(u,2)),-4),
       scale(mul(c,power(m,2),u),4),scale(mul(power(m,2),u),-2),
       scale(mul(power(m,2),power(v,2)),2),scale(mul(m,u,v),-8),scale(power(u,2),7))
    r1=scale(mul(m,add(scale(u,2),scale(mul(v,m),-1)),
             add(scale(u,3),scale(mul(v,m),-2),scale(mul(c,power(m,2)),2),scale(power(m,2),-1))),-4)
    r0=add(scale(power(u,2),-7),scale(mul(u,v,m),8),scale(mul(u,c,power(m,2)),-4),
       scale(mul(u,power(m,2)),2),scale(mul(power(v,2),power(m,2)),-2),
       scale(mul(c,add(c,const(-1)),power(m,4)),4))
    return {'N':N,'j':j,'quotient':L,'r1':r1,'r0':r0}
