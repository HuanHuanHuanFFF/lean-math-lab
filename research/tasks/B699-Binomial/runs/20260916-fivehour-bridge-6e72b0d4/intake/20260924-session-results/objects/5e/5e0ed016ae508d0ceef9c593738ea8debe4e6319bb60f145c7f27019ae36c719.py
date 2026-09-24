"""Exact sufficient predicates, not an NC3 decision procedure or formal proof.

The digital-row theorem adopts the frozen NC3 => 4|n and LC denominator lemma.
Coefficients are ascending. Prime validation uses exact trial division; for
large primes, replace that validation only with a separately verified certificate.
"""
from functools import reduce
from math import gcd, isqrt


def valuation(n: int, p: int) -> int:
    if type(n) is not int or n <= 0 or type(p) is not int or p < 2:
        raise ValueError('positive integer n and integer p>=2 required')
    e = 0
    while n % p == 0:
        n //= p
        e += 1
    return e


def factor_degree(n: int) -> dict[int, int]:
    if type(n) is not int or n < 1:
        raise ValueError('positive degree required')
    out, p = {}, 2
    while p*p <= n:
        while n % p == 0:
            out[p] = out.get(p, 0) + 1
            n //= p
        p = 3 if p == 2 else p+2
    if n > 1:
        out[n] = out.get(n, 0)+1
    return out


def denominator_bound(A: int, d: int) -> int:
    if type(A) is not int or A <= 0:
        raise ValueError('positive leading coefficient required')
    ans = 1
    for p,e in factor_degree(d).items():
        ans *= p**min(e, valuation(A,p)//2)
    return ans


def evaluate(coefficients: list[int], x: int, modulus: int | None = None) -> int:
    y = 0
    for a in reversed(coefficients):
        y = y*x+a
        if modulus is not None:
            y %= modulus
    return y


def validate_coefficients(coefficients: list[int]) -> None:
    if (not isinstance(coefficients,list) or len(coefficients)<2 or
        any(type(a) is not int or a<0 for a in coefficients) or
        coefficients[0] != 2 or coefficients[-1] <= 0):
        raise ValueError('ascending nonnegative integer coefficients; f(0)=2 required')


def central_row_predicate(coefficients: list[int], p: int, e: int) -> dict:
    """Only returns a new sufficient certificate when D=2 and n is even.

    EMPTY_FEASIBLE_TOP_DEGREE is a necessary-condition exclusion, not a list
    of actual NC3 inputs. No factorization of the leading coefficient is needed.
    """
    validate_coefficients(coefficients)
    if (type(p) is not int or p<3 or p%2==0 or
        any(p%q==0 for q in range(3,isqrt(p)+1,2))):
        raise ValueError('an odd prime is required (exact trial division)')
    if type(e) is not int or e<1:
        raise ValueError('a positive integer exponent is required')
    d, A, H = len(coefficients)-1, coefficients[-1], sum(coefficients)
    c = reduce(gcd, coefficients[1:])
    D = denominator_bound(A,d)
    T = p**e
    gate = T >= (2*(H+2))**(2*d+4)
    nmod4 = evaluate(coefficients,T,4)
    out = {'degree':d,'A':A,'H':H,'content_f_minus_2':c,'D':D,
           'prime':p,'exponent':e,'gate_met':gate,'n_mod4':nmod4,
           'status':'INCONCLUSIVE','uses_frozen_non4_exit':False,
           'new_general_i3_closure':False,'lean':False}
    if D!=2 or not gate or nmod4%2:
        return out
    if nmod4!=0:
        out.update(status='FROZEN_NON4_EXIT',uses_frozen_non4_exit=True)
        return out
    evA, evc = valuation(A,2),valuation(c,2)
    assert evA>=2 and evc<=1
    M2 = 2**((5*evA-2*evc+5)//6)
    higher_even, feasible = True, []
    for s in range(d-1,0,-1):
        a = coefficients[s]
        if higher_even and 6*s>5*d and a%2==0 and a>=M2:
            feasible.append(s)
        higher_even = higher_even and a%2==0
    tail = max((i for i in range(1,d) if coefficients[i]), default=0)
    out.update(M2=M2,possible_top_difference_degrees=feasible,
               tail_degree=tail)
    if 6*tail<=5*d:
        out['status']='CENTRAL_GAP_SUFFICIENT'
    elif not feasible:
        out['status']='CENTRAL_SIXTH_CONTENT_SUFFICIENT'
    return out


def binomial_valuation(n:int,j:int,p:int) -> int:
    if not (0<=j<=n):
        raise ValueError('0<=j<=n required')
    a,total = p,0
    while a<=n:
        total += n//a-j//a-(n-j)//a
        a *= p
    return total


def central_integer_diagnostic(n:int,j:int) -> dict:
    """Original-input sufficient central strip, explicitly restricted to 4|n.

    OUTSIDE_STRIP / WINDOW_CORE_PASSES never implies NC3.
    """
    if (type(n) is not int or type(j) is not int or n%4 or not 4<=j<=n//2):
        raise ValueError('legal original input with 4|n required')
    lam = 3 if valuation(n-1,3)==1 else 1
    mu = 3 if valuation((n-2)//2,3)==1 else 1
    N1,N2 = (n-1)//lam,(n-2)//(2*mu)
    delta = n-2*j
    const = mu**2*lam**3*(1+2*mu*lam**2)
    strip = const*delta**6 <= 2*(n-1)**3*(n-2)**2
    w1 = j*(j-1)%N1==0
    w2 = j*(j-1)*(j-2)%N2==0
    out = {'n':n,'j':j,'lambda':lam,'mu':mu,'gap':delta,
           'strip_constant':const,'strip_sufficient':strip,
           'first_full_source_window':w1,'second_full_source_window':w2,
           'not_an_NC_test':True}
    if w1 and w2:
        kap = (delta*delta-1)//N1
        q,rq = divmod(delta*(kap-3*lam),4*N2)
        ell,rl = divmod((kap+lam)*(kap-3*lam),4*N2)
        eta = (kap+lam)//2
        m = 2*lam*q*q-mu*ell*(2*eta-5*lam)
        assert rq==rl==0 and kap>3*lam and eta>0 and ell>0 and m>0
        assert eta*m==ell*(ell+2*mu*lam**2)
        assert not strip
        out['core']={'kappa':kap,'q':q,'ell':ell,'eta':eta,'m':m}
    return out
