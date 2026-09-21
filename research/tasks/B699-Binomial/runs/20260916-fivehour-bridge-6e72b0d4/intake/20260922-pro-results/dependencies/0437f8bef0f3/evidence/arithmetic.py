"""Exact arithmetic for the conditional balanced NC3 core. Python standard library only."""
from __future__ import annotations
from fractions import Fraction
from itertools import product
from math import isqrt, prod

SMALL_SUPPORT = (2, 3, 5, 7)
COEFFICIENT_CONSTANT = 2**15


def pair_mul(a: tuple[int, int], b: tuple[int, int], mod: int | None = None) -> tuple[int, int]:
    u, x = a[0]*b[0] + 3*a[1]*b[1], a[0]*b[1] + a[1]*b[0]
    return (u, x) if mod is None else (u % mod, x % mod)


def pell(t: int) -> tuple[int, int]:
    if t < 0:
        raise ValueError('Pell index must be nonnegative')
    ans, base = (1, 0), (2, 1)
    while t:
        if t & 1:
            ans = pair_mul(ans, base)
        base = pair_mul(base, base)
        t >>= 1
    return ans


def pell_iter(t: int) -> tuple[int, int]:
    u, x = 1, 0
    for _ in range(t):
        u, x = 2*u + 3*x, u + 2*x
    return u, x


def balanced_pell(t: int) -> tuple[int, int]:
    if t <= 1 or t % 8 != 1:
        raise ValueError('This gate requires t > 1 and t = 1 mod 8')
    u, x = pell(t)
    assert u % 2 == 0 and x % 2 == 1
    d, y = (3*x - 1)//2, u//2
    assert d >= 17 and d % 16 == 1 and d*d + d + 1 == 3*y*y
    return d, y


def valuation(n: int, p: int) -> int:
    if n <= 0 or p < 2:
        raise ValueError('valuation requires n > 0, p >= 2')
    e = 0
    while n % p == 0:
        n //= p
        e += 1
    return e


def prime_trial(p: int) -> bool:
    if p < 2:
        return False
    if p % 2 == 0:
        return p == 2
    for q in range(3, isqrt(p) + 1, 2):
        if p % q == 0:
            return False
    return True


def smooth_divisors(n: int, primes: tuple[int, ...]) -> list[int]:
    es = [valuation(n, p) for p in primes]
    return sorted(prod(p**a for p, a in zip(primes, aa))
                  for aa in product(*(range(e + 1) for e in es)))


def smooth_divisors_dfs(n: int, primes: tuple[int, ...]) -> list[int]:
    """Different enumeration path used to cross-check completeness."""
    out = [1]
    for p in primes:
        cur, pp = [], 1
        while n % pp == 0:
            cur.extend(v * pp for v in out)
            pp *= p
        out = cur
    return sorted(out)


def newton_isqrt(n: int) -> int:
    if n < 0:
        raise ValueError('negative input')
    if n < 2:
        return n
    x = 1 << ((n.bit_length() + 1)//2)
    while True:
        y = (x + n//x)//2
        if y >= x:
            return x
        x = y


def rank_x(p: int) -> tuple[int, int]:
    """First x_r = 0 mod p and exact v_p(x_r), for a prime p >= 5.

    Existence/completeness is proved in PROOFS. A resource check belongs to
    the CLI; this function never interprets an incomplete search as EMPTY.
    """
    if p < 5 or not prime_trial(p):
        raise ValueError('rank_x requires a certified prime >= 5')
    state = (1, 0)
    for r in range(1, p*p + 1):
        state = pair_mul(state, (2, 1), p)
        if state[1] == 0:
            return r, valuation(pell(r)[1], p)
    raise ArithmeticError('Finite-ring rank bound failed; not an emptiness result')


def support_contract(primes: tuple[int, ...]) -> dict:
    primes = tuple(sorted(set(primes)))
    if not all(prime_trial(p) for p in primes):
        raise ValueError('support contains a nonprime')
    C, ranks = 1, []
    for p in primes:
        if p == 2:
            C *= 2
        elif p == 3:
            C *= 9
        else:
            r, e = rank_x(p)
            C *= p**e
            ranks.append({'p': p, 'rank': r, 'valuation': e})
    linear = all(p in SMALL_SUPPORT for p in primes)
    T = 9
    while True:
        growth = T - 1 if linear else T*T - 1
        if 3**(T - 1) > COEFFICIENT_CONSTANT * C**4 * growth**4:
            break
        T += 1
    return {'support': list(primes), 'C': C,
            'coefficient_bound': 'C*(t-1)' if linear else 'C*(t*t-1)',
            'T': T, 'ranks': ranks,
            'tail_left': 3**(T - 1),
            'tail_right': COEFFICIENT_CONSTANT*C**4*((T-1) if linear else (T*T-1))**4}


def finite_rows(primes: tuple[int, ...], T: int, include_payload: bool = True) -> tuple[list[dict], list[dict]]:
    rows, fibres = [], []
    for t in range(9, T, 8):
        d, y = balanced_pell(t)
        L = 3*(d - 1)
        divs = smooth_divisors(L, primes)
        assert divs == smooth_divisors_dfs(L, primes)
        counts = {'A': 0, 'B': 0}
        for side in ('A', 'B'):
            for coeff in divs:
                A = coeff if side == 'A' else L//coeff
                if A < 2 or A % 2:
                    continue
                B = L//A
                v, W, Q = A*y, B*y, d + A*y
                numerator = Q**5 - d*d
                assert numerator % v == 0 and v*W == d**3-1
                S = numerator//v
                root = isqrt(S)
                row = {'t': t, 'side': side, 'coefficient': coeff, 'A': A, 'B': B,
                       'floor_sqrt': root, 'lower_gap': S-root*root,
                       'upper_gap': (root+1)**2-S}
                if include_payload:
                    row['target'] = S
                rows.append(row)
                counts[side] += 1
        fibres.append({'t': t, 'd': d, 'y': y, 'L': L,
                       'valuations': {str(p): valuation(L, p) for p in primes},
                       'counts': counts})
    return fibres, rows


def recover_if_square(row: dict, d: int, y: int) -> dict | None:
    if row['lower_gap'] != 0:
        return None
    A = row['A']; v = A*y; Q = d+v; Y = row['floor_sqrt']
    if (Y+Q*Q) % d:
        return None
    nu = (Y+Q*Q)//d
    if (2*nu+Q) % d:
        return None
    h = (2*nu+Q)//d
    if h < 15 or h % 2 != 1 or nu % 4 != 2:
        return None
    P = Q+h*v
    if v*nu*nu != P*Q*Q-1:
        return None
    n = P*Q*nu+2; j = (P+nu)*Q*Q
    return {'d':d,'y':y,'A':A,'B':row['B'],'v':v,'Q':Q,'P':P,
            'nu':nu,'h':h,'n':n,'j':j,
            'status':'NECESSARY_INTEGER_CORE_NOT_NC3',
            'unchecked':['P,Q distinct odd prime powers','n=c*2^s',
                         'original gcd, lambda, mu','all source prime-power carry conditions']}


# Tiny exact sparse polynomial ring: used only for identities, not searches.
class Poly:
    def __init__(self, n: int, data: dict | int | Fraction = 0):
        self.n = n
        if isinstance(data, dict):
            self.d = {tuple(k): Fraction(v) for k,v in data.items() if v}
        else:
            self.d = {(0,)*n: Fraction(data)} if data else {}
    def coerce(self, a):
        return a if isinstance(a, Poly) else Poly(self.n, a)
    def __add__(self, a):
        a=self.coerce(a); assert a.n == self.n
        d=self.d.copy()
        for k,v in a.d.items():d[k]=d.get(k,0)+v
        return Poly(self.n,d)
    __radd__=__add__
    def __neg__(self):return Poly(self.n,{k:-v for k,v in self.d.items()})
    def __sub__(self,a):return self+-self.coerce(a)
    def __rsub__(self,a):return self.coerce(a)+-self
    def __mul__(self,a):
        a=self.coerce(a); assert a.n==self.n;d={}
        for k,v in self.d.items():
            for l,w in a.d.items():
                e=tuple(i+j for i,j in zip(k,l));d[e]=d.get(e,0)+v*w
        return Poly(self.n,d)
    __rmul__=__mul__
    def __truediv__(self,a):return self*Fraction(1,a)
    def __pow__(self,k):
        if k<0:raise ValueError('only nonnegative polynomial powers')
        a=Poly(self.n,1);b=self
        while k:
            if k&1:a=a*b
            b=b*b;k>>=1
        return a
    def __eq__(self,a):return self.d==self.coerce(a).d


def variables(n):
    return [Poly(n,{tuple(int(j==i) for j in range(n)):1}) for i in range(n)]


def check_identities() -> None:
    d,v,h=variables(3);Q=d+v;P=Q+h*v;nu=((h-1)*d-v)/2
    F=v*nu**2-P*Q**2+1
    K=h*h-6*h-11
    assert 4*F == v*d*d*K-10*(h+1)*d*v*v-(4*h+3)*v**3-4*d**3+4
    Y=d*nu-Q*Q
    assert v*Y*Y-Q**5+d*d == d*d*F
    d,B,y=variables(3);qnum=B*d+3*(d-1)*y
    main_num=4*qnum*qnum+2*qnum*B*d+Fraction(3,4)*B*B*d*d
    centre_num=(12*(d*d-d)+30*B*y+Fraction(27,4)*B*B)*d*d-30*B*d*y-12*(d-1)
    assert main_num-centre_num ==12*(d-1)**2*(3*y*y-d*d-d-1)
    x,=variables(1);lo=1+x/2+3*x*x/8;hi=lo+5*x**3/8
    assert 1-(1-x)*lo*lo ==x**3*(9*x*x+15*x+40)/64
    assert (1-x)*hi*hi-1 ==x**3*(40-55*x-19*x*x-5*x**3-25*x**4)/64
    u,=variables(1)
    assert (2*(15+u)-13)**2-16*(18+u)==4*u*u+52*u+1
    assert 2*(17+u)**2-25*(17+u)-25 ==2*u*u+43*u+128
    assert (15+u)**2-6*(15+u)-11 ==u*u+24*u+124
