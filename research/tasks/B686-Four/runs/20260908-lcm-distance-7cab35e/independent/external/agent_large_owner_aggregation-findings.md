# Large-owner aggregation probe: exact verdict

## Outcome

The proposed owner-aggregation route does not close the large-row residual.
The exact small-defect quadratic relation between two occupied reflected
owners is sound, but it is not new: it is the same cleaned Pell relation
already used by `Erdos686TwoOwnerAggregate.lean` and
`Erdos686MultiOwnerExtension.lean`. The isolated Lean file here independently
rechecks its elementary cancellation in the present center notation. That
relation, all existing
reflection compressions, both live inequalities, and the absence of a prime
larger than `d+k-1` are simultaneously satisfiable. The exact fixture below
shows that individual row divisibilities must enter through a new mechanism;
the current matching/lcm consequences do not retain enough of them.

## Reproduced lemma: two-owner small defect (already banked elsewhere)

Let `H,n,i,j,Q_i,Q_j,U_i,U_j` be natural numbers and suppose

```text
Q_i^2 U_i = H + 3(n+i),
Q_j^2 U_j = H + 3(n+j).
```

Then, over the integers,

```text
Q_j^2 U_j - Q_i^2 U_i = 3(j-i).
```

If `1 <= i <= j <= k`, this is equivalently

```text
Q_j^2 U_j = Q_i^2 U_i + 3(j-i),
0 <= 3(j-i) < 3k.
```

Proof: subtract the two displayed square-lift equalities. Their common
`H+3n` term cancels, leaving `3j-3i`. This proof is formalized in
`LargeOwnerAggregation.lean`. Under the conventional decomposition
`H+3(n+i)=a_i P_i^2`, this is exactly the existing identity
`a_i P_i^2-a_j P_j^2=3(i-j)`. It is therefore a consistency check, not
theorem-level progress beyond the approach registry.

For an even-`k` Erdos-686 equation, take `Q_i` and `Q_j` to be coprime
products of complete center prime-power components `p^v_p(H)` with `p>k`
that have reflected lower owners `i` and `j`. Existing square-lift and
coefficient-cancellation theorems supply the two premises. Thus every pair
of occupied owner groups lies on this exact small-defect relation.

## Why the relation does not aggregate to a contradiction

The conditions are CRT-compatible. Writing `C=H+3n`, the owner conditions
are simply

```text
C = -3i (mod Q_i^2)
```

for pairwise coprime `Q_i`. Distinct owners impose congruences modulo
coprime squares, so the Chinese remainder theorem supplies `C`; subtraction
then gives the small-defect identity automatically. Componentwise ceilings
such as `2 Q_i^2 < 5H` also leave room for two or more occupied owners.

This flexibility is not merely abstract. It survives every existing
aggregated reflection check on the following exact live-strip point.

## Exact live-strip hostile fixture

```text
k = 22
n = 13,237,302,206
d = 860,968,557
H = 2n+d+k+1 = 27,335,572,992
H = 2^9 * 3^2 * 7 * 13 * 19 * 47 * 73
d+k-1 = 860,968,578.
```

All of the following hold by exact integer arithmetic:

1. The exact quotient-four ratio window holds.
2. `1,218,443*k*d < 1,853,952*n`.
3. `k^2 < 18d`.
4. The greatest prime factors of the lower and upper length-`k` blocks are,
   respectively, `696,700,117` and `671,346,227`, both at most
   `d+k-1 = 860,968,578`.
5. The small center cofactor
   `H/(47*73) = 7,967,232` divides `3*21!`. Hence the complete residual
   center components above `k` are exactly `47` and `73`.
6. The reflection congruence, reflection-product compression, and
   reflection-lcm compression all hold.
7. `47` has reflected owners `(10,13)` and
   `73` has reflected owners `(5,18)`.
8. Both exact square lifts hold:

   ```text
   H+3(n+10) = 47^2 * 30,351,960,
   H+3(n+ 5) = 73^2 * 12,581,625.
   ```

9. Their signed defect is exactly

   ```text
   73^2*12,581,625 - 47^2*30,351,960 = -15 = 3(5-10),
   ```

   and `|-15| < 3k = 66`.
10. Both sharp component ceilings `2q^2 < 5H` hold.
11. The exact gap-coprime cofactor quotients from the existing even-center
    theorem are large:

    ```text
    gcd(H/47,d)=9,  (H/47)/gcd(H/47,d)=64,623,104,
    gcd(H/73,d)=9,  (H/73)/gcd(H/73,d)=41,606,656.
    ```

The point is not an equation, and none of its 22 individual row
divisibilities holds. It therefore does not challenge any proved theorem.
It does prove a precise structural limitation: no theorem whose premises are
only the ratio/strip inequalities, no-large-block-prime condition, center
factorial absorption, reflection congruence, reflection product/lcm
compression, reflected maximum owners, component square lifts, and their
pairwise small-defect relations can force the desired dichotomy. Such a
theorem is false at the displayed point.

This is the mixed-support obstruction left visible in the registry: the
whole-center one/two-large-supported-factor theorem does not apply because
the center also has the small factor `7,967,232`. The fixture shows that even
requiring that small factor to divide the exact reflection loss `3*21!` does
not restore an aggregate-only contradiction. It also concretely exhibits the
unbounded `a/gcd(a,d)` parameter identified in
`Erdos686EvenCenterGapCofactor.lean`.

## Mandatory `(984,3177026,4480)` audit

For

```text
(k,n,d) = (984, 3,177,026, 4,480),
```

the exact quotient-four ratio window holds and rows `1,...,16` pass. Row 17
fails because

```text
n+17 = 439 * 7,237,
```

while its landing interval is only `[4,464,5,447]`. The point is not an
equation and fails the reflection congruence. It also satisfies
`18d <= k^2`, so it is outside the live complement `k^2 < 18d`.

Consequently this mandatory point blocks any bounded-prefix replacement for
the full row conjunction, but it cannot itself refute a theorem that uses the
live quadratic complement or equation-derived reflection data.

## Exact remaining obstruction

The two hostile fixtures isolate the uncaptured information:

```text
For every individual row i, n+i divides
  product_{j=1}^k (d+j-i).
```

The matching and reflection reductions currently use this conjunction only
prime-by-prime and then discard which non-center prime powers share a row and
which landing columns they consume. The exact remaining task for this route
is to derive a quantified cross-row capacity bound from the full conjunction
that is not implied by the aggregate package falsified above. Neither the
one-factorial lcm compression nor the small-defect relations provide such a
bound.

## Reproduction

```bash
python3 -m pytest -q \
  compute/campaign686/agent_large_owner_aggregation/test_large_owner_aggregation_verify.py
python3 -m \
  compute.campaign686.agent_large_owner_aggregation.large_owner_aggregation_verify
lake env lean \
  compute/campaign686/agent_large_owner_aggregation/LargeOwnerAggregation.lean
```

All scripts use exact integer arithmetic; no floating point or
`native_decide` is involved.
