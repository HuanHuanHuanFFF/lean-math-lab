#!/usr/bin/env python3
"""Exact rank-two gate for the pure-3, ten-square first-row system.
Only Python integers are used. A candidate is NOT a no-common certificate.
"""
from __future__ import annotations
from math import gcd, isqrt
from typing import Any

Vec = tuple[int, int]

def norm(v: Vec, d: int) -> int:
    return v[0]*v[0] + d*v[1]*v[1]

def dot(v: Vec, w: Vec, d: int) -> int:
    return v[0]*w[0] + d*v[1]*w[1]

def gauss(m: int, root: int, d: int) -> tuple[Vec, Vec, int]:
    """Reduce the ENTIRE basis (m,0),(root,1), using the metric diag(1,d)."""
    if m <= 1 or d <= 1 or not (0 <= root < m):
        raise ValueError('invalid lattice input')
    u, v = (m, 0), (root, 1)
    steps = 0
    while True:
        if norm(v, d) < norm(u, d):
            u, v = v, u
        a, b = norm(u, d), dot(u, v, d)
        if 2*abs(b) <= a:
            break
        q = (2*b+a)//(2*a)  # nearest integer; no floating-point arithmetic
        assert q != 0
        v = (v[0]-q*u[0], v[1]-q*u[1])
        steps += 1
    assert abs(u[0]*v[1]-u[1]*v[0]) == m
    assert norm(u,d) <= norm(v,d) and 2*abs(dot(u,v,d)) <= norm(u,d)
    assert (u[0]-root*u[1]) % m == (v[0]-root*v[1]) % m == 0
    return u, v, steps

def sqrt10_mod_3power(exponent: int) -> int:
    if exponent < 1:
        raise ValueError('positive exponent required')
    root, modulus = 1, 3
    for _ in range(1, exponent):
        q = (root*root-10)//modulus
        digit = (-q*pow(2*root, -1, 3)) % 3
        root += digit*modulus
        modulus *= 3
    assert 0 <= root < modulus and (root*root-10) % modulus == 0
    return root

def root_discriminant(d: int, exponent: int) -> int:
    if exponent < 1 or (-d) % 3 != 1:
        raise ValueError('the required 3-adic unit roots do not exist')
    root, modulus = 1, 3
    for _ in range(1, exponent):
        q = (root*root+d)//modulus
        digit = (-q*pow(2*root,-1,3)) % 3
        root += digit*modulus
        modulus *= 3
    assert (root*root+d) % modulus == 0
    return root

def pure_power_exponent(n: int, p: int = 3) -> int | None:
    if n < 1: return None
    e = 0
    while n % p == 0:
        n //= p
        e += 1
    return e if n == 1 else None

def fixed_ag(a: int, g: int, sqrt10: int | None = None) -> dict[str,Any]:
    """Complete recovery for fixed a,g, with no restriction on size of g.
    The norm equality plus true gcd are verified before CANDIDATE is returned.
    """
    if a < 2 or g < 1: raise ValueError('require a >= 2 and g >= 1')
    alpha = 3**a
    n, modulus = g*alpha, alpha*alpha
    d = 40*(n-1)
    r = sqrt10_mod_3power(2*a) if sqrt10 is None else sqrt10
    assert (r*r-10) % modulus == 0
    root = (r*(2-g*alpha)) % modulus
    assert (root*root+d) % modulus == 0
    u, v, steps = gauss(modulus,root,d)
    answer: dict[str,Any] = {'a':a,'g':g,'steps':steps,'status':'EMPTY'}
    if norm(u,d) != modulus: return answer
    delta,z = abs(u[0]),abs(u[1])
    if not delta or not z or gcd(delta,z)!=1 or delta % 3 == 0: return answer
    beta = (alpha-delta)//2
    if 2*beta+delta != alpha or not (1 <= beta and 2*beta < alpha): return answer
    assert beta*(alpha-beta) == 10*z*z*(n-1)
    assert gcd(beta,alpha)==1
    answer.update(status='CANDIDATE',n=n,j=g*beta,beta=beta,z=z,delta=delta)
    return answer

def row_gate(n: int, require_tail: bool = True) -> dict[str,Any]:
    """One lattice for the WHOLE row, not one lattice for each possible g.
    Exact domain: B tail; alpha=n/g=3^a; W10; first row; 8g^4<n.
    F134 implies 8g^4<n, but no complete NC assumption is inferred from output.
    """
    if n < 9 or n % 9:
        raise ValueError('require n >= 9 and 9 | n')
    if require_tail and (n < 1530 or n % 1800 != 1530):
        raise ValueError('require n = 1530 (mod 1800), n >= 1530')
    n0, valuation = n, 0
    while n0 % 3 == 0:
        n0 //= 3; valuation += 1
    top_alpha = 3**valuation
    # Smallest a0>=2 such that alpha^4 > 8*n^3.
    a0, lower_alpha = 2, 9
    while lower_alpha**4 <= 8*n**3:
        lower_alpha *= 3; a0 += 1
    out: dict[str,Any] = {'n':n,'n0':n0,'v3n':valuation,'a0':a0,
                          'alpha_max':top_alpha,'status':'EMPTY'}
    if a0 > valuation:
        out['reason']='NO_ADMISSIBLE_EXPONENT'
        return out
    modulus = lower_alpha**2
    d = 40*(n-1)
    radius_squared = top_alpha**2
    assert d*modulus**2 > radius_squared**2
    root = root_discriminant(d,2*a0)
    u,v,steps = gauss(modulus,root,d)
    nu = norm(u,d)
    out['certificate']={'d':d,'modulus':modulus,'root':root,
                        'u':list(u),'v':list(v),'norm_u':nu,'norm_v':norm(v,d),
                        'dot':dot(u,v,d),'radius_squared':radius_squared,'steps':steps}
    if nu > radius_squared:
        out['reason']='NO_VECTOR_IN_RADIUS'; return out
    if gcd(*u) != 1:
        out['reason']='SHORTEST_VECTOR_NOT_PRIMITIVE'; return out
    e = pure_power_exponent(nu)
    if e is None or e % 2:
        out['reason']='NORM_NOT_EVEN_POWER_OF_THREE'; return out
    a=e//2
    if not a0 <= a <= valuation:
        out['reason']='NORM_OUTSIDE_EXPONENT_INTERVAL'; return out
    alpha=3**a
    delta,z=abs(u[0]),abs(u[1])
    if not z or not delta or delta % 3 == 0:
        out['reason']='DEGENERATE_OR_NONUNIT'; return out
    beta=(alpha-delta)//2
    if 2*beta+delta != alpha or not 1 <= beta < alpha:
        out['reason']='INVALID_RECOVERY'; return out
    g=n//alpha
    assert gcd(n,g*beta)==g
    assert beta*(alpha-beta)==10*z*z*(n-1)
    assert 8*g**4<n and 1<=g*beta<n//2+1
    if require_tail: assert 7 <= g*beta
    out.update(status='CANDIDATE',reason='EXACT_SHELL_RECOVERY',a=a,alpha=alpha,
               g=g,beta=beta,delta=delta,z=z,j=g*beta)
    return out

def full_row(n: int) -> dict[str,Any]:
    """All g with n/g = 3^a, a>=2. No mass assumption and no scan of j,z.
    At most one primitive norm solution is possible in the entire original row.
    """
    if n < 9 or n % 9: raise ValueError('require n>=9 and 9|n')
    v, n0 = 0, n
    while n0 % 3 == 0: n0 //= 3; v += 1
    d = 40*(n-1)
    first = 2
    alpha = 9
    while alpha*alpha <= d:
        first += 1; alpha *= 3
    tested = []
    solutions = []
    for a in range(first,v+1):
        ans = fixed_ag(a,n//3**a)
        tested.append({'a':a,'status':ans['status'],'steps':ans['steps']})
        if ans['status']=='CANDIDATE': solutions.append(ans)
    assert len(solutions)<=1
    return {'n':n,'v3n':v,'first_exponent':first,'tested':tested,'solutions':solutions,
            'status':'CANDIDATE' if solutions else 'EMPTY',
            'scope':'first row + true pure-3 quotient + ten-square; not NC6'}

if __name__ == '__main__':
    import argparse,json
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('n',type=int)
    args=parser.parse_args()
    print(json.dumps(row_gate(args.n),ensure_ascii=False,indent=2))
