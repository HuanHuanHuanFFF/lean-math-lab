# Large-k findings

Status: exact witnesses reproduced; reflection compression is Lean-banked; the
large-`k` wedge is Lean-banked downstream of an explicit published-theorem
interface.  `LargeKSmoothHypothesis` remains open.

## Stronger banked starting point

An equation solution with `k>=5`, `d>=k` already forces:

- `d+k-1<n`;
- both solution blocks to be `(d+k-1)`-smooth;
- the reflection center `S=2n+d+k+1` to be `(d+k-1)`-smooth;
- unique equal-valuation matching for every odd prime above `k`;
- row-`j` lower smoothness up to `d+k-j`.

The formal `LargeKSmoothHypothesis` mentions only lower-block smoothness, but
its equation premise supplies all the stronger facts above.

## Reflection gcd compression

Put

```text
S = 2n+d+k+1,
c = 3 if k is even, and 5 if k is odd,
R = product_{i=1}^k (d+k+1-2i).
```

The banked reflection congruence gives `S | c*B_k(n)`, and

```text
gcd(S,n+i) | d+k+1-2i.
```

The elementary valuation lemma

```text
M | c*product_i a_i  =>  M | c*product_i gcd(M,a_i)
```

therefore gives the new exact consequence

```text
S | c*R.
```

For a prime `p>k` dividing `S` in an actual equation, its unique block match
is reflected: if the lower index is `i`, the upper index is `k+1-i`, the
three valuations equal `v_p(S)`, and `p^v_p(S) | d+k+1-2i`.

## Named-witness audit

- `(984,3177026,4480)` passes rows 1 through 16, then row 17 fails.
  Here `S=6,359,517=3^2*706,613`, so even reflection smoothness fails.  It
  is not an equation solution.
- `(244,48502,277)` passes rows 1 through 15, then row 16 fails.
  Here `S=97,526=2*11^2*13*31` is smooth and `S|3R`; reflection compression
  does not kill this cluster.
- `(984,3177027,4480)` also has smooth `S=6,359,519=1489*4271` and `S|3R`.
  Its two large reflection primes pin indices `499` and `597`.

Exact counterexamples show that the ratio window, both-block smoothness,
reflection smoothness, the full reflection congruence, and `S|cR` still do
not imply the equation or all row constraints:

- even: `(16,582087,52684)`, first failed row 2;
- odd: `(17,996082,84632)`, first failed row 1.

Thus reflection compression is new but cannot replace the row-divisibility
system.

## Published greatest-prime-factor wedge

Nair and Shorey's explicit greatest-prime-factor result, in the form quoted
as Theorem 3.1 of the published survey, says that if `x>100` and
`x,...,x+k-1` are composite, their product has a prime factor exceeding
`4.42k`, apart from exceptions only at `k=2,3`.

For an equation solution with `k>=16`, `d>=k`, the exact factor ratios imply
`n>9d`: if `n<=9d`, every ratio is at least `11/10`, and
`(11/10)^16>4`.  Hence `n+1>100` throughout the range `k>=16`.  Banked smoothness also makes
every lower term composite.  The cited theorem then contradicts smoothness
whenever

```text
50*(d+k-1) <= 221*k.
```

This closes the unbounded paper-level wedge

```text
k>=16, k<=d, 50*(d+k-1)<=221*k.
```

Source: S. G. Nair and T. N. Shorey, “Lower bounds for the greatest prime
factor of product of consecutive positive integers,” *Journal of Number
Theory* 159 (2016), 307–328, DOI `10.1016/j.jnt.2015.07.014`; exact theorem
form also appears as Theorem 3.1 in the 2018 Hardy-Ramanujan Journal survey.

This wedge is not yet behind the Lean kernel gate because the Nair-Shorey
theorem is not formalized in the repository.  It must not be presented as an
attested Lean theorem.

Reproduction of the internal fixtures:

```bash
python3 -m pytest compute/campaign686/test_large_k_rows.py -q
```
