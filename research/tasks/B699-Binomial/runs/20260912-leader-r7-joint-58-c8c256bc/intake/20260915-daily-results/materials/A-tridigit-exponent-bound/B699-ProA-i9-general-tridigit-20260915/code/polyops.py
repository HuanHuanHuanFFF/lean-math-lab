"""Small exact polynomial ring in two indeterminates, integer coefficients."""

def add(a,b):
    c=a.copy()
    for k,v in b.items():c[k]=c.get(k,0)+v
    return {k:v for k,v in c.items() if v}

def mul(a,b):
    c={}
    for (i,j),x in a.items():
        for (k,l),y in b.items():
            key=(i+k,j+l);c[key]=c.get(key,0)+x*y
    return {k:v for k,v in c.items() if v}

def scale(a,t):return {k:v*t for k,v in a.items() if v*t}

def power(a,k):
    r={(0,0):1}
    for _ in range(k):r=mul(r,a)
    return r

def substitute(a,x,y):
    out={}
    for (i,j),c in a.items():out=add(out,scale(mul(power(x,i),power(y,j)),c))
    return out

def unpack(terms):
    out={}
    for i,j,c in terms:
        key=(i,j)
        if key in out:raise ValueError('duplicate monomial')
        out[key]=c
    return {k:v for k,v in out.items() if v}
