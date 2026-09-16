"""Small exact polynomial arithmetic. All coefficients are integers or Fraction.
No symbolic algebra package, floating point, historical certificate, or big kernel.
"""
from fractions import Fraction
from math import comb


def add(a, b):
    c = dict(a)
    for m, v in b.items():
        c[m] = c.get(m, 0) + v
        if not c[m]:
            del c[m]
    return c


def scale(a, c):
    return {m: c*v for m, v in a.items() if c*v}


def mul(a, b):
    out = {}
    for u, c in a.items():
        for v, d in b.items():
            w = tuple(x+y for x, y in zip(u, v))
            out[w] = out.get(w, 0) + c*d
    return {m: c for m, c in out.items() if c}


def power(a, k):
    if k < 0:
        raise ValueError('nonnegative powers only')
    size = len(next(iter(a))) if a else 1
    out = {(0,)*size: 1}
    while k:
        if k & 1:
            out = mul(out, a)
        a = mul(a, a)
        k //= 2
    return out


def var(i, size):
    e = [0]*size
    e[i] = 1
    return {tuple(e): 1}


def absolute_terms(p):
    return {m: abs(c) for m, c in p.items()}


def evaluate(p, xs):
    return sum(c * product(x**e for x, e in zip(xs, m)) for m, c in p.items())


def product(xs):
    out = 1
    for x in xs:
        out *= x
    return out


def uadd(a, b):
    out = [0]*max(len(a), len(b))
    for i, v in enumerate(a): out[i] += v
    for i, v in enumerate(b): out[i] += v
    return trim(out)


def umul(a, b):
    out = [0]*(len(a)+len(b)-1)
    for i, v in enumerate(a):
        for j, w in enumerate(b): out[i+j] += v*w
    return trim(out)


def uscale(a, s): return trim([s*v for v in a])

def ueval(a, x):
    value = 0
    for c in reversed(a): value = value*x+c
    return value

def trim(a):
    a = list(a)
    while len(a)>1 and not a[-1]: a.pop()
    return a

def mod_rem(a, b, p):
    a = trim([x % p for x in a]); b = trim([x % p for x in b])
    if b == [0]: raise ZeroDivisionError
    inv = pow(b[-1], -1, p)
    while a != [0] and len(a) >= len(b):
        shift = len(a)-len(b); t = a[-1]*inv % p
        for i, c in enumerate(b): a[i+shift] = (a[i+shift]-t*c) % p
        a = trim(a)
    return a

def mod_gcd(a, b, p):
    a = trim([x % p for x in a]); b = trim([x % p for x in b])
    while b != [0]: a, b = b, mod_rem(a, b, p)
    return [(x*pow(a[-1], -1, p)) % p for x in a]


def coefficients_case(case, values):
    """D,U,V,W with U/D=u etc. Values: c,d,b,f,e,h (case 0),
    or c,c0,d,b,f,e (case 1). Formula uses only homogeneous degree four.
    """
    if case == 0:
        c,d,b,f,e,h = values
        return (c*d**3, -d**4,
                -b*d**3+c*e*d**2,
                -f*d**3+c*h*d**2-c*e*b*d+c*c*e*e)
    c,c0,d,b,f,e = values
    return (c**3*d, -c*c*d*d,
            c*c0*d*d-c*c*b*d,
            -f*c*c*d-c0*c0*d*d+c*c0*b*d+c**3*e)


def rational_case(case, values):
    if case == 0:
        c,d,b,f,e,h = map(Fraction, values)
        u=-d/c; v=-(b+e/u)/c
        w=-(f+h/u-e*v/u**2)/c
    else:
        c,c0,d,b,f,e = map(Fraction, values)
        u=-d/c; v=-(b+c0*u)/c
        w=-(f+c0*v+e/u)/c
    return u,v,w
