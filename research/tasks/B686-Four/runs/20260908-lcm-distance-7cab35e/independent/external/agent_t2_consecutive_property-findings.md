# Target 2: consecutive-property mass and owner matching

Status: **new uniform necessary restrictions, not a closure of Target 2**.

## Primary source and exact theorem surface

The source is P. Erdős, C. B. Lacampagne, and J. L. Selfridge, “Prime
factors of binomial coefficients and related problems,” *Acta Arithmetica*
49 (1988), 507–523, DOI `10.4064/aa-49-5-507-523`.

Primary PDF:
<https://combinatorica.hu/~p_erdos/1988-26.pdf>.

For a positive integer `x`, put

```text
small_k(x) = product over primes p<=k of p^v_p(x).
```

The paper calls `(small_k(N+1),...,small_k(N+k))` a sequence with the
consecutive integer property.  Its Theorem 1 (pp. 507–508) states that if all
`k` entries are at most `k`, they are a permutation of `1,...,k`.  Theorem 4
(p. 521) states that if all entries are at most `k+1`, no value repeats.  If
their product is not `k!`, the entries are `1,...,k+1` with one value `r`
deleted; if the entry `k+1` is in position `j`, then
`r=gcd(j,k+1)`.  In the product-`k!` branch the entries are `1,...,k`, and
the source gives the corresponding prime-power position condition.

The PDF's OCR renders several `<=` signs as `<`.  The page images themselves
unambiguously state `a_i <= k` in Theorem 1 and `a_i <= k+1` in Theorem 4.

## Self-contained proof of the Theorem-1 part used here

The following reproduces the elementary source proof, so the first new
restriction below does not rest on a black-box phrase.

Assume `a_i=small_k(N+i)<=k`.  We prove by strong induction on `k` that the
`a_i` are `1,...,k`.  Fix `r` with `2<=r<=k`, and put `s=floor(k/r)`.  The
block contains either `s` or `s+1` multiples of `r`.  If it contained `s+1`,
their quotients by `r` would be `s+1` consecutive integers, one divisible by
`s+1`.  The corresponding block term would then be divisible by
`r(s+1)>k`.  Every prime divisor of `r(s+1)` is at most `k`, so
`r(s+1)|a_i`, contradicting `a_i<=k`.  Thus there are exactly `s` multiples.

Divide those `s` block terms by `r`.  Their quotients are consecutive.  No
prime `p` with `s<p<=k` can divide one of those quotients, because then
`rp>=r(s+1)>k` would divide the corresponding `a_i`.  Consequently the
associated `a_i` values are exactly `r` times the `s`-small parts of this
length-`s` quotient block.  Those parts are at most `s`, so induction says
they are `1,...,s`.  Hence among the original entries the multiples of `r`
are exactly `r,2r,...,sr`; in particular, `r` occurs exactly once.  This
holds for every `r=2,...,k`.  The one remaining positive entry is `1`.

## Exact stripped-product identities

For the lower and upper blocks define

```text
A = product_i small_k(n+i),
B = product_i small_k(n+d+i).
```

Two elementary identities hold.

1. `k! | A` (in fact `k!` divides the small-part product of every length-`k`
   consecutive block).  For each prime `p<=k`, the number of terms divisible
   by `p^e` is at least `floor(k/p^e)`, and summing over `e` gives at least
   `v_p(k!)`.
2. An exact equation `B_k(n+d)=4B_k(n)` with `k>=2` gives `B=4A`.  For every
   prime `p>k`, the factor 4 contributes no valuation, so the products of all
   `p>k` parts in the two blocks are equal.  Removing them preserves the
   exact factor four.

Both statements are formalized without an external axiom in
`ErdosProblems/Erdos686ConsecutivePropertyMass.lean` as
`factorial_dvd_kSmallBlockProduct` and
`kSmallBlockProduct_eq_four_of_block_eq`.

Theorem 1 now gives the unconditional equation-level restriction

```text
some upper term n+d+j has small_k(n+d+j) > k.
```

Indeed, if all upper parts were at most `k`, Theorem 1 would give `B=k!`,
whereas `B=4A` and `k!|A` give `B>=4k!`.

## The `k+1` dichotomy

Apply Theorem 4 to the upper block.  Either

```text
(large-core arm)  some small_k(n+d+j) >= k+2,
```

or there are positive integers `r,t` such that

```text
upper parts = {1,...,k+1} \ {r},
small_k(n+d+j) = k+1 for one j,
r = gcd(j,k+1) = gcd(n+d,k+1),
k+1 = 4*r*t,
A = t*k!.
```

The equality `gcd(n+d,k+1)=r` follows from `k+1 | n+d+j` and Theorem 4's
`r=gcd(j,k+1)`.  The factorization `k+1=4rt` follows by writing `A=t*k!` in

```text
(k+1)!/r = B = 4A.
```

Thus, in particular,

```text
k+1 not divisible by 4  =>  some upper small part is at least k+2.
```

The arithmetic composition is kernel-banked as
`missing_value_factorization_of_four_small_mass` and
`four_mul_missing_value_dvd_k_add_one`.  The ELS classification itself is
not claimed as Lean-formalized in this isolated lane.

If both blocks have every small part at most `k+1`, Theorem 4 and `B=4A`
give the sharper pair

```text
lower parts = {1,...,k+1} \ {4r},
upper parts = {1,...,k+1} \ {r},
gcd(n,k+1)=4r,
gcd(n+d,k+1)=r.
```

This includes the product-`k!` lower branch by taking `4r=k+1`.  Therefore
`r|d`, `d/r` is odd, and for the reflection center
`S=2n+d+k+1`, both `r|S` and `S/r` odd hold.  These are exact congruences,
not an asymptotic or an unquantified “uniformity” claim.

## Centered equation window and the `13/20` ratio

The exact equation gives a stronger ratio bound than either endpoint alone.
Put

```text
T = 2*n+k+1,       W = T+2*d.
```

Pair position `i` with `k+1-i`.  If `x=n+i` and
`y=n+k+1-i`, then `x+y=T` and the exact identity

```text
T^2*(x+d)*(y+d) - W^2*x*y = d*(T+d)*(x-y)^2             (3)
```

is nonnegative.  Multiplying (3) over all positions, using reflection as a
permutation of `{1,...,k}`, and observing strictness at `i=1`, gives

```text
W^(2k) * blockProduct(k,n)^2
  < T^(2k) * blockProduct(k,n+d)^2.
```

Under `blockProduct(k,n+d)=4*blockProduct(k,n)`, cancellation therefore gives
the strict centered window

```text
W^k < 4*T^k.                                             (4)
```

The required uniform rational root bracket is

```text
4*(20*k)^k < (20*k+29)^k             for every k>=16.    (5)
```

There is no decimal estimate in its proof.  Expand
`(1+29/(20k))^k` and retain terms `j=0,...,5`.  For each such `j`, its
normalized falling-factor coefficient is at least the `k=16` coefficient,
since `(k-r)/k >= (16-r)/16`.  Their exact sum is

```text
sum_{j=0}^5 binom(16,j)*(29/320)^j
  = 839241148077 / 209715200000
  = 4 + 380348077 / 209715200000 > 4.
```

Suppose now that `20*n <= 13*k*d`.  Exact integer multiplication gives

```text
580*n <= 377*k*d,
290*(k+1) < 23*k^2 <= 23*k*d           (k>=16, d>=k).
```

Adding these inequalities is precisely

```text
(20*k+29)*T < (20*k)*W.
```

Raising to the `k`th power and applying (4) contradicts (5).  Hence every
quotient-four solution in the target range satisfies the new uniform bound

```text
13*k*d < 20*n.                                           (6)
```

All of (3)--(6), including reflection-product bookkeeping and cancellation,
is kernel-banked in `ErdosProblems/Erdos686CenteredRatioWindow.lean`.

Composing (6) with the any-position large-prime owner core from
`Erdos686SmallPrimeBand.lean` gives the exact linear cofactor exclusion:

```text
p prime, p>k, A>=1, 40*a<=13*k, n+i=a*p^A
  => blockProduct(k,n+d) != 4*blockProduct(k,n).
```

Indeed `d+k-1<2d`, so
`20*a*(d+k-1)<40*a*d<=13*k*d<20*n`; hence
`a*(d+k-1)<n+i`, which is the quantified size premise of the owner core.
This is a genuine expansion from constant cofactors to `a<=floor(13k/40)`,
but it still does not guarantee that any lower term has this form.

## New owner-graph restriction

For every prime `p>k`, its full power occurs in a unique lower term and a
unique upper term.  Aggregate all such powers with the same pair `(i,j)`
into an edge label `Q_ij`.  Nonunit labels form a bipartite graph on the `k`
lower and `k` upper indices.  The exact row identity gives

```text
Q_ij | d+j-i.
```

The product of labels incident to a lower (respectively upper) vertex is the
`>k` rough part of that term.

In the both-blocks-bounded branch above, **this graph has at least `k+1`
nontrivial edges**.

Proof.  The ratio window already gives `n>9d`; with `d>=k>=16`, every term is
larger than `k+1`.  Since its small part is at most `k+1`, every vertex has a
nonunit rough part and hence is nonisolated.  If the graph had only `k`
edges, all `2k` vertices would have degree one, so it would be a perfect
matching.  On a matched edge the complete lower and upper rough parts are
the same `Q`, while the upper integer is strictly larger.  Thus its upper
small part `b` must satisfy `b>a`, where `a` is its matched lower small part.

No such strict perfect matching exists between

```text
{1,...,k+1}\{4r}  and  {1,...,k+1}\{r}.
```

If `r>1`, both multisets contain `1`, and the upper `1` has no positive
smaller predecessor.  If `r=1`, then `k+1>=20`, so both multisets contain
the maximum `k+1`, and the lower maximum has no larger successor.  This
contradiction rules out `k` edges.  Therefore there are at least `k+1`, and
at least one lower vertex and at least one upper vertex split their rough
parts over two or more owners.

The two endpoint arguments are kernel-banked as
`no_strict_matching_of_common_one` and
`no_strict_matching_of_common_max`.

This is a proper matching restriction, but it is not yet a capacity
contradiction: a term of size comparable to `d` can split into two coprime
factors above `k`, each landing in a difference of size comparable to `d`.
No bound obtained here forces the number of edges back down to `k`.

### Explicit large-gap component balance

There is a further quantified restriction in the unbounded regime

```text
d >= (2(k+1))^k.
```

Put `K=k+1`.  For a connected owner component let `ell` and `u` be its
numbers of lower and upper vertices and let `W` be the product of its edge
labels.  Componentwise row/column ownership gives

```text
W = product of its ell lower rough parts
  = product of its u upper rough parts.
```

Every rough part lies strictly between `n/K` and `2n`: the lower bound uses
the core bound `<=K`, and the upper bound uses `n>9d` and `k<=d`.  If
`ell>u`, these bounds imply

```text
n^(ell-u) < 2^u K^ell <= (2K)^k;
```

the symmetric inequality holds if `u>ell`.  But
`d>=(2K)^k` and `n>9d` contradict either inequality.  Hence every connected
component is balanced: `ell=u`.

Moreover, an upper degree-one vertex cannot lie in a nontrivial component.
If its sole label is `q`, its upper integer is at most `Kq`.  Its lower
neighbor has another nonunit label, which is at least `K`; hence that lower
integer is at least `Kq`, contradicting that every upper-block integer is
strictly larger than every lower-block integer.  Therefore every upper
vertex in a nontrivial balanced component has degree at least two.  Such a
component has size `s>=2` on each side and at least `2s` edges.  Consequently
the full graph has at least

```text
k+2 nontrivial edges
```

in this explicit large-gap regime.  This remains a restriction rather than
a contradiction: balanced cyclic split components have not been excluded.

### Proper components at a larger explicit threshold

The exact ratio window supplies one more separation.  For a balanced
component of size `s` on each side, put

```text
P = product of its upper cores,
Q = product of its lower cores,
alpha = 4^(1/k).
```

Componentwise rough-product equality gives

```text
P/Q = product(component upper terms) / product(component lower terms).
```

The endpoint window and `n>9d` put every quotient of one upper term by one
lower term within `2k/n` of `alpha`.  Hence

```text
|P/Q - alpha^s| < 2*k^2*3^k/n.                 (1)
```

Here all cores are between 1 and `K=k+1`, so `1<=P,Q<=K^s`.  Unless
`P/Q=alpha^s`, the nonzero integer

```text
P^k - 4^s Q^k
```

has absolute value at least one.  Factoring the difference of powers gives
the completely explicit lower bound

```text
|P/Q - alpha^s| >= 1 / (k*K^(s*(2k-1))).       (2)
```

Consequently, if

```text
d >= 2*k^3*3^k*K^((k-1)*(2k-1)),
```

then (1) and (2) exclude every proper component except a rational equality
case.  For `0<s<k`, `4^(s/k)` is rational exactly when `k` is even and
`s=k/2`, in which case it equals 2.  Thus beyond this explicit threshold the
component partition is restricted to

```text
one connected component of size k,
or (k even) two components of size k/2, each with core-product ratio 2.
```

This is again not a closure.  A spanning cyclic component has component
ratio exactly 4, so the integer-norm separation deliberately leaves it live.

### Minimal alternating-cycle audit

Write a 2-regular component cyclically with edges `x_i` from lower `i` to
upper `i` and `y_i` from lower `i+1` to upper `i`.  Its rough products are

```text
R_i = x_i*y_(i-1),
C_i = x_i*y_i.
```

The apparent alternating relation is only the recurrence

```text
y_i / y_(i-1) = C_i / R_i.
```

Going once around the cycle imposes exactly

```text
product_i R_i = product_i C_i,
```

which is the already-used component rough-product equality.  There is no
second determinant: the exact `0/1` incidence matrix of a `2s`-cycle has
rank `2s-1` over the rationals.  The verifier checks this for every
`2<=s<=24`; its one dependency is +1 on all lower rows and -1 on all upper
rows.

Ordering, row divisibility, and aggregate reflection compression also do not
by themselves kill a 4-cycle.  The following exact synthetic component has
`k=19`, `n=239446`, `d=5198`:

```text
             upper j=19 (core 19)     upper j=1 (core 5)
lower i=1          163                       113       (core 13)
lower i=3           79                       433       (core 7)
```

All four labels are distinct primes above 19.  The row and column identities
are

```text
13*163*113 = 239447 = n+1,
 7* 79*433 = 239449 = n+3,
19*163* 79 = 244663 = n+d+19,
 5*113*433 = 244645 = n+d+1.
```

The shifted differences are respectively `5216=32*163`, `5198=46*113`,
`5214=66*79`, and `5196=12*433`.  Also `n>9d`.  Its reflection center is
`S=484110`, and the exact odd-row compression

```text
S | 5 * product_{i=1..19}(d+20-2i)
```

holds.  The large reflection prime 163 is on the reflected pair
`i+j=20`.  This fixture is not an equation and does not pass the full ratio
window: the upper endpoint inequality passes, while
`4(n+1)^19 <= (n+d+1)^19` fails.  It therefore falsifies an
alternating/ordering/row/reflection-only cycle closure while isolating the
exact live ingredient: the full short ratio window together with a spanning
cycle.

## Exact mass-only counterexample

The theorem/factorial layer cannot be promoted to an equation proof without
the rough-owner and window information.  At target row `k=19`, let

```text
Q = 2,258,015,666,306,400,
n = 1,540,
n+d = Q+1,
d = 2,258,015,666,304,861.
```

The lower 19-small parts are

```text
1,6,1,8,15,2,1547,36,1,50,33,16,1,42,5,4,9,38,1,
```

with product `5*19!`.  The upper parts are exactly `2,3,...,20`, with
product `20!=4*(5*19!)`.  Thus the stripped products have the exact factor
four and the upper block is in Theorem 4's `r=1` branch, but the full block
equation is false.  The verifier does not claim this point satisfies the
ratio window.

## Boundary audit summary

- `(984,3177026,4480)`: upper maximum small part is `3,182,487` at position
  981; the bounded antecedent is false.  It remains a row-prefix non-equation.
- `(244,48502,277)`: upper maximum is `49,022` at position 243; again the
  bounded antecedent is false.
- smooth reflection pseudo-points `(16,582087,52684)` and
  `(17,996082,84632)`: upper maxima are 143 and 720.  They are not equations,
  and no equation-only conclusion is applied to them.
- genuine `d=1` telescopes `(9,2,1)` and `(15,4,1)`: `B=4A` and equality of
  rough products reproduce exactly.  Their upper maxima are 12 and 20,
  respectively, so they take the large-core arm; neither is contradicted.
- an exhaustive finite sanity check covers 22,000 starts (`2<=k<=12`,
  `0<=start<2000`): 1,511 Theorem-1 bounded cases and 1,773 Theorem-4
  bounded cases, all exact.
- every arithmetic both-bounded branch with `16<=k<=2000` was checked:
  3,182 pairs `(k,r)` with `4r|k+1`, none admits a strict perfect matching.
- the component-balance exponent comparison was checked for all 5,591,200
  unequal pairs of component sizes with `16<=k<=256`.
- the rational proper-component exception was checked for all 130,711 pairs
  `(k,s)` with `16<=k<=512` and `1<=s<k`; only even half-size components
  survive.
- the frozen 4-cycle reproduces all four row/column values, all four shifted
  divisibilities, `n>9d`, and aggregate reflection compression, and fails
  exactly the lower ratio-window inequality.

## Reproduction

```bash
python3 -m pytest \
  compute/campaign686/agent_t2_consecutive_property/test_consecutive_property_verify.py -q
lake env lean ErdosProblems/Erdos686ConsecutivePropertyMass.lean
lake env lean ErdosProblems/Erdos686CenteredRatioWindow.lean
```

The Lean output uses only `[propext, Classical.choice, Quot.sound]`; there is
no `native_decide`, `sorry`, or custom theorem axiom.
