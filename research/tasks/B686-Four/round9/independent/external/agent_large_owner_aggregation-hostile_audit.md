# Erdos #686 large-owner aggregation: hostile audit

Audit date: 2026-07-13. This audit covers only the proposed large-row route
through maximal owners, reflection, and center-component square lifts. It does
not claim a solution of Erdos #686.

## 1. Claimed derivation under audit

For even `k`, put

```text
H = 2n+d+k+1.
```

An equation solution supplies, for every complete center prime-power
component `q=p^v_p(H)` with `p>k`, a reflected lower owner `i`, an upper owner
`k+1-i`, and the square lift

```text
q^2 | H+3(n+i).
```

The proposed aggregation was that multiple owner components, together with
the live inequalities and no-large-block-prime hypothesis, might force a
contradiction.

## 2. Dependency tree and per-node verdict

```text
A0  Uniform large-owner contradiction                         FALSE as an
                                                             aggregate-only claim
 |- A1  Equation gives lower/upper maximum owners             BANKED
 |- A2  p>k center component forces reflected owners          BANKED
 |- A3  Reflected component q gives q^2 | H+3(n+i)            BANKED
 |- A4  Component ceiling 2q^2 < 5H                           BANKED
 |- A5  Group primes sharing owner i into coprime Q_i         SOUND
 |- A6  Two groups obey exact defect 3(j-i)                   BANKED; independently
                                                             LEAN-RECHECKED
 |- A7  "Small defect forces collision/one owner"             FALSE
 `- A8  Aggregate package forces a prime >d+k-1 or strip      FALSE
        contradiction                                        without row data
```

### A5: grouping. SOUND

Distinct complete prime-power components of `H` are pairwise coprime. If all
components assigned to owner `i` have product `Q_i`, the individual square
divisibilities combine to

```text
Q_i^2 | H+3(n+i).
```

No cross-owner statement is used here.

### A6: exact small defect. SOUND, already banked, independently checked

Writing

```text
Q_i^2 U_i = H+3(n+i),
Q_j^2 U_j = H+3(n+j),
```

subtraction gives

```text
Q_j^2 U_j-Q_i^2 U_i = 3(j-i).
```

For `1<=i,j<=k`, its absolute value is at most `3(k-1)`, hence strictly
less than `3k`. The Lean theorem uses only `[propext, Quot.sound]`, within
the required axiom gate. In the notation of the existing cleaned-owner
modules, this is the already-banked Pell identity
`a_i P_i^2-a_j P_j^2=3(i-j)`. It is not counted as a new route.

### A7: collision inference. FALSE

The phrase "the two squares are essentially equal" expands only to the exact
bound

```text
|Q_j^2 U_j-Q_i^2 U_i| <= 3(k-1).
```

It does not imply equality because neither quotient is bounded modulo the
other square. The congruences `H+3n = -3i (mod Q_i^2)` have coprime moduli
and are compatible by CRT.

### A8: aggregate dichotomy. FALSE without individual rows

The exact point

```text
(k,n,d) = (22, 13,237,302,206, 860,968,557)
```

satisfies:

```text
k^2 < 18d,
1,218,443*k*d < 1,853,952*n,
max prime in each block <= d+k-1,
reflection congruence,
reflection product and lcm compression,
two distinct reflected p>k owners,
both complete component square lifts,
both component ceilings,
small center cofactor | 3*(k-1)!.
```

The point is not an equation and has no passing rows. Thus it falsifies only
the proposed inference from the downstream aggregate package, not any banked
equation theorem.

It also lies outside the existing whole-center two-large-supported-factor
closure: `H` has the nontrivial small-supported cofactor `7,967,232`. That
cofactor divides `3*21!`, so merely imposing the exact factorial-loss bound
does not remove the obstruction.

## 3. Mandatory falsification-record boundary

At `(984,3177026,4480)`, the ratio window and rows 1 through 16 hold, while
row 17 fails exactly at the prime `7237` in

```text
n+17 = 439*7237,
```

whose row interval ends at `5447`. The point is not an equation, fails the
reflection congruence, and has `18d<=k^2`. Therefore:

* a bounded row prefix cannot replace all rows;
* this point cannot be used inside the live complement `k^2<18d`;
* it cannot be advertised as a counterexample to equation-derived owner
  matching.

## 4. Premise audit of the live hostile fixture

| Node | Exact verdict |
|---|---|
| Quotient-four ratio window | true |
| Sharp ratio | true |
| `k^2<18d` | true |
| Prime `>d+k-1` in lower block | false |
| Prime `>d+k-1` in upper block | false |
| Reflection congruence | true |
| Reflection-product compression | true |
| Reflection-lcm compression | true |
| Residual rough components | `47`, `73` |
| Reflected owner pairs | `(10,13)`, `(5,18)` |
| Complete square lifts | true for both |
| Exact defect | `-15=3(5-10)` |
| `(H/q)/gcd(H/q,d)` for `q=47,73` | `64,623,104`, `41,606,656` |
| Equation | false |
| Individual row divisibilities | all false |

## 5. Verdict

`owner-aggregation-alone: refuted`.

The rigorously surviving new statement is A6. The exact structural gap is a
cross-row capacity theorem retaining information from every divisibility

```text
n+i | product_{j=1}^k (d+j-i).
```

No such theorem is proved here. Rephrasing the missing result as "these
premises imply no solution" would be target-strength and is not counted as
progress.
