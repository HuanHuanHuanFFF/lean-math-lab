# Second-order displacement congruence and two occupied positions

Status: paper proof, with a separate exact finite certificate; no Lean claim, no novelty claim. Original problem remains open. Prepared 2026-09-07, round 4 worker. The coordinator independently proposed the same second-order congruence while the worker was deriving it.

Let `P_k(t)=∏_{r=1}^k(t+r)` and assume natural `k>=3`, `n>=0`, `d>=k`, `P_k(n+d)=4P_k(n)`. Put `beta=1/(4^(1/k)-1)` and `c=3beta-1`.

## 1. Local congruence, retaining the complete exponent

Let p>k, p!=3 be prime, and a=v_p(d)>0, q=p^a. First `d|3P_k(n)` and p!=3 give q|P_k(n). Since p>k, precisely one lower position i has p|n+i, and q|n+i. Let x=n+i and `R(t)=∏_{r!=i}(t+r)`. We have gcd(R(n),q)=1.

Integer-polynomial congruence gives R(n+d)=R(n)+dT for an integer T. Therefore

```
0 = P_k(n+d)-4P_k(n)
  = (d-3x)R(n) + d(x+d)T.
```

Both d and x are divisible by q, so q² divides the second summand. It follows that q² divides `(d-3x)R(n)` and, since R(n) is a unit modulo q²,

**q² | E_i := 3(n+i)-d.**

Write d=qD, x=qu. Dividing the congruence by q gives `3u == D (mod q)`, so p does not divide u. Hence `v_p(n+i)=a` exactly. Also `(n+d+i)/q == 4D/3 (mod p)` is a unit since p>k>=3, so `v_p(n+d+i)=a`. Thus the congruence includes the exact-valuation consequence, without circularly assuming it.

The same proof works for any divisor q of d which divides x and is coprime to R(n); primality is needed only to force the unique assignment from the original equation.

## 2. Grouping and a uniform finite bound

Suppose every prime divisor of d exceeds k (so automatically differs from 3). Assign each complete prime power p^{v_p(d)} to its unique lower position. Let r_i be the product assigned to i. Then r_i are pairwise coprime, ∏r_i=d, and r_i²|E_i.

If at most two positions are occupied, choose distinct i,j in {1,...,k} containing every occupied position; when only one is occupied, choose any other position as j. The q² congruences and coprimality imply

**d² | E_i E_j.**

The strict factor bounds are `beta*d-k<n<beta*d-1`. Set M=3(k-1). For any position,

```
|E_i/d-c| < M/d.
```

Therefore, for the integer z=E_iE_j/d²,

```
|z-c²| < 2cM/d + M²/d²
        < M(2c+3)/d,       since d>=k and M/d<3.
```

Positivity is harmless: k>=3 implies beta>4/3 (because 4^(1/3)<7/4), so c>3, and `E_i/d>c-M/d>0`. In fact beta_3>1.7. No integer or natural subtraction convention is used implicitly: E_i is an integer, and the inequality proves it positive.

Let delta=dist(c²,Z). Section 3 proves delta>0. Since z is an integer,

**d < 3(k-1)(2c+3)/delta.**

This is an effective bound for each fixed k on all k-rough displacements whose complete prime-power assignments occupy at most two positions. In particular it bounds all k-rough d with at most two distinct prime divisors. It does not bound arbitrary d, the small-prime part of d, or assignments to three or more positions.

## 3. Why c² is irrational for every k>=3

Write alpha=4^(1/k). Since `c=(4-alpha)/(alpha-1)` and `alpha=(c+4)/(c+1)`, Q(c)=Q(alpha).

For even k=2r, alpha is a root of the Eisenstein polynomial X^r-2, so its degree is r. For odd k, X^k-4 is irreducible: a monic rational factor of degree s is integral, and its nonzero constant term, being a product of s roots, has 2-adic valuation 2s/k. This must be an integer. Since k is odd, k divides s. Thus the degree is k.

Except for k=4 (and the excluded k=2), this degree is at least 3. If c² were rational, c would have degree at most 2, a contradiction. For k=4, alpha=sqrt(2), beta=1+sqrt(2), c=2+3sqrt(2), and `c²=22+12sqrt(2)` is irrational. **Arithmetic correction to watch:** 2²+(3sqrt(2))² is 22, not 17.

Effective algebraic root isolation gives rational bounds for c² that avoid integers, so delta and the displayed bound can be bounded effectively using integer arithmetic. No external effective Diophantine theorem is required for this restricted result.

## 4. A conservative k=5 bound

Exact fifth-power comparisons certify

```
31298/10000 < beta_5 < 31299/10000,
41947/5000 < c_5 < 83897/10000.
```

For d>=600, the strict strip gives, for every i,

```
41847/5000 < E_i/d < 84097/10000.
```

These endpoints are positive and their squares lie strictly between 70 and 71:

```
70 < (41847/5000)^2,
(84097/10000)^2 < 71.
```

Thus `70<E_iE_j/d²<71`, impossible for an integer. Every k=5 solution in the two-position class would have **d<600**. This intentionally uses a conservative bound; optimization is not needed to establish finite reduction.

Exact adjacent-sign certificates for all d=5,...,599, evaluated independently with k! binomial coefficients, finish this restricted class if all signs are strict. They must be run and recorded separately; their finite outcome is not assumed by this note.

## 5. What remains

- All d with a small-prime part are outside the direct d² argument. Writing d=sD with D the >k part gives only D²|E_iE_j, and the limiting integer is s²c²; a bounded s still yields a fixed-parameter effective bound, but unbounded s is an obstruction.
- For r occupied positions, the immediate product gives d²|∏E_i, whose quotient grows as c^r d^{r-2}. For r>=3 it does not converge to a fixed irrational number. A small O(1/d) relative error is insufficient.
- The congruence uses unit information from the original equality. A finite sieve should compare it against displacement divisibility, full prime-power size bounds, 2-adic valuation, and (where affordable) full large-prime valuation matching, rather than reuse the already rejected (5,182,241).
