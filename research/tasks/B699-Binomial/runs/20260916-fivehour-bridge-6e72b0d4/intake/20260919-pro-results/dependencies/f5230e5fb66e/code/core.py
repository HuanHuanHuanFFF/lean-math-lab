"""Exact arithmetic for the RES10 round. Standard library only.

These functions verify arithmetic hypotheses and prime/carry witnesses. They do
not certify the imported historical full-5-layer theorem or a Lean proof.
"""
from __future__ import annotations
from math import gcd, isqrt
from typing import Any


def valuation(x: int, p: int) -> int:
    if x <= 0 or p < 2:
        raise ValueError('valuation requires x > 0 and p >= 2')
    e = 0
    while x % p == 0:
        x //= p
        e += 1
    return e


def prime_trial(p: int) -> bool:
    """Complete deterministic trial-division check; use small witness primes."""
    if p < 2:
        return False
    if p % 2 == 0:
        return p == 2
    return all(p % d for d in range(3, isqrt(p) + 1, 2))


def factorial_valuation(n: int, p: int) -> int:
    if n < 0 or p < 2:
        raise ValueError('invalid factorial valuation input')
    answer = 0
    while n:
        n //= p
        answer += n
    return answer


def binomial_valuation(n: int, k: int, p: int) -> int:
    if not 0 <= k <= n:
        raise ValueError('invalid binomial indices')
    return (factorial_valuation(n, p) - factorial_valuation(k, p)
            - factorial_valuation(n-k, p))


def witness(n: int, j: int, p: int) -> dict[str, Any]:
    if not (7 <= j <= n//2 and p >= 7 and prime_trial(p)):
        raise ValueError('not a legal i6 input with a proved prime >= 7')
    source = binomial_valuation(n, 6, p)
    target = binomial_valuation(n, j, p)
    if source <= 0 or target <= 0:
        raise ValueError('the supplied prime is not a common witness')
    q, H, layers = p, 1, []
    while q <= n:
        if j % q > n % q:
            layers.append({'H':H, 'p_power':str(q),
                           'j_residue':str(j % q), 'n_residue':str(n % q)})
        q *= p
        H += 1
    assert len(layers) == target
    return {'p':p, 'v_p_C_n_6':source, 'v_p_C_n_j':target,
            'carry_layers':layers}


def chi10(m: int) -> int:
    """Jacobi (10/m), via quadratic reciprocity; m odd, gcd(m,10)=1.

    Its value is computed from m mod 40 without integer factorization.
    """
    if m <= 0 or m % 2 == 0 or m % 5 == 0:
        raise ValueError('chi10 requires a positive odd integer coprime to 10')
    two = 1 if m % 8 in (1,7) else -1
    five = 1 if m % 5 in (1,4) else -1
    return two*five


def res10_input(n: int, j: int) -> dict[str, int]:
    if not (n % 1800 == 1530 and 7 <= j <= n//2):
        raise ValueError('outside the specified 1530 tail and legal j range')
    g = gcd(n, j)
    alpha = n//g
    t = alpha
    a = 0
    while t and t % 3 == 0:
        t //= 3
        a += 1
    if t != 1 or a < 2:
        raise ValueError('alpha is not 3^a with a >= 2')
    W = (n-1)*j*(n-j)
    if W % 10:
        raise ValueError('W is not ten times a square')
    Y = isqrt(W//10)
    if 10*Y*Y != W:
        raise ValueError('W is not ten times a square')
    assert g % 10 == 0 and valuation(g, 5) == 1
    assert valuation(g, 2) == 1
    return {'n':n, 'j':j, 'k':n-j, 'g':g, 'alpha':alpha,
            'a':a, 'beta':j//g, 'gamma':(n-j)//g,
            'W':W, 'Y':Y, 'E':valuation(n-5,5)}


def row_defects(n: int, j: int) -> list[dict[str, str | int]]:
    """Defects retain complete q_r powers, not just their radicals."""
    if n % 1800 != 1530:
        raise ValueError('these q_r formulas are specific to the 1530 tail')
    ans = []
    for r, q in [(1,n-1), (3,(n-3)//3), (4,(n-4)//2)]:
        P = 1
        for b in range(r+1):
            P *= j-b
        ans.append({'r':r,'q_r':str(q), 'defect':str(q//gcd(q,P))})
    return ans


def analyze(n: int, j: int) -> dict[str, Any]:
    """Fast gcd/polynomial tests. No factoring of n, q3, q4, or binomials.

    If a defect > 1 is returned, ANY prime divisor of that defect is a genuine
    common prime >= 7. A composite defect itself is not called a prime.
    """
    d = res10_input(n,j)
    k,g,N = d['k'],d['g'],n-1
    q3,q4 = (n-3)//3,(n-4)//2
    M = gcd(q3*q4,j*k)
    C = gcd(q4,j-2)
    E3 = gcd(q3,j*k)
    assert chi10(q3)==-1
    defects = row_defects(n,j)
    U_integer = (j*k) % N == 0
    result: dict[str,Any] = {
        'domain':'i6 / 1530 tail / W=10Y^2 / alpha=3^a',
        'a':d['a'],'g':str(g),'Y':str(d['Y']), 'E':d['E'],
        'q3':str(q3),'q4':str(q4),'M':str(M),'C4':str(C),
        'row_defects':defects, 'U_integer':U_integer,
        'E3':str(E3),'jacobi_10_E3':chi10(E3), 'jacobi_q3_trigger':chi10(E3)==1,
        'full_5_layer_forced_by_square_valuation':d['E'] <= 2*valuation(d['Y'],5),
    }
    if result['jacobi_q3_trigger']:
        assert int(defects[1]['defect'])>1
    eta = max(valuation(j,5),valuation(k,5))
    assert eta == 2*valuation(d['Y'],5)
    result['max_v5_j_k'] = eta
    result['full_5_layer_direct_test'] = j % (5**d['E']) <= 5
    assert result['full_5_layer_direct_test'] == result['full_5_layer_forced_by_square_valuation']
    if U_integer:
        U = j*k//N
        t_num = d['beta']*d['gamma']
        assert t_num % N == 0
        t = t_num//N
        assert t % 10 == 0
        z = isqrt(t//10)
        assert t == 10*z*z and z>0 and d['Y'] == g*N*z
        exact_trigger = 72*M*M*(U-1)**2 <= N*(n-3)**2
        simple_trigger = 5*M*M <= 4*U
        assert (2*n+4-9*U) % (C*C) == 0
        V4=(2*n+4-9*U)//(C*C)
        assert V4!=0
        result.update({'U':str(U), 't':str(t), 'z':str(z),'V4':str(V4),
                       'exact_joint_trigger':exact_trigger,
                       'simple_joint_trigger':simple_trigger})
        if simple_trigger:
            assert exact_trigger
        if exact_trigger:
            # This assertion is a useful runtime consistency check of the
            # theorem. Its proof is the unrestricted paper proof, not this test.
            assert any(int(x['defect'])>1 for x in defects)
        result['joint_certificate_available'] = exact_trigger
    else:
        # q1 | jk and q1 | j(j-1) are equivalent because n == 1 mod q1.
        assert int(defects[0]['defect'])>1
        result['joint_certificate_available'] = False
    return result


def shell_member(E: int, index: int = 0) -> dict[str, int]:
    """An exact infinite *shell* family, NOT NC6 or the q1 necessary system.

    n=41 V^2+1, j=40n/81, alpha=81; v5(n-5)=E exactly.
    Hensel lifting and CRT are proved in FAILURES.md / PROOFS.md.
    """
    if E < 2 or index < 0:
        raise ValueError('E >= 2 and index >= 0 are required')
    r,P = 2,5
    for _ in range(1,E):
        choices = [r+c*P for c in range(5)
                   if (41*(r+c*P)**2-4) % (5*P) == 0]
        assert len(choices)==1
        r = choices[0]
        P *= 5
    exact = next(r+c*P for c in range(5)
                 if (41*(r+c*P)**2-4) % (5*P) != 0)
    K = 5*P
    # V = 103 mod 162 implies V odd and V=22 mod81.
    V = 103 + 162 * (((exact-103)*pow(162,-1,K)) % K)
    V += index * 162*K
    if V <= 6:
        V += 162*K
    n = 41*V*V+1
    assert n % 81 == 0
    g = n//81
    j = 40*g
    d = res10_input(n,j)
    assert d['E']==E and d['a']==4 and d['Y']==82*g*V
    assert (40 % (V*V)) != 0  # canonical t=40/V^2 is not an integer
    return {'E':E,'index':index,'V':V,'n':n,'j':j,'g':g,'Y':d['Y']}
