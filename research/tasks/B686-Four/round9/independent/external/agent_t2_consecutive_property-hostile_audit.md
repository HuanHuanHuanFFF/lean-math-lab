# Hostile audit: consecutive-property mass and owner matching

Verdict: **PASS as a proper restriction; FAIL as a Target-2 closure**.

Frozen SHA-256 inputs:

```text
90d77558eee2361876404fbd467c9d3ab08cd27f72d7e9f96342679a45229702  ErdosProblems/Erdos686ConsecutivePropertyMass.lean
231f0cc114be34a0041a1828984d717f8e5d7100b422dfac468333f398fa2eab  ErdosProblems/Erdos686CenteredRatioWindow.lean
2e449428f1796b138b70541c483e4813c326b90cc9124a8f84a3f9e95e852c6c  ErdosProblems/Erdos686SharperRatioWindow.lean
e60041c65ecd6f5ffbea00a286ce0f11e3ff1bcddc9397929b37a5a0855c8618  compute/campaign686/agent_t2_consecutive_property/consecutive_property_verify.py
093b4c7c28c62d0a5615673e1a2e344b715e719d747c938c9324a47f74791f6a  compute/campaign686/agent_t2_consecutive_property/test_consecutive_property_verify.py
ff5479179ba7f19b4dfb0ec7c398a500d9c37e6d318ee8325f7b986608c77e28  compute/campaign686/agent_t2_consecutive_property/findings.md
```

## Dependency tree

```text
exact block equation
├── prime valuations above k match exactly
│   └── upper small-product B = 4 * lower small-product A       [Lean PASS]
├── opposite-position centered pair identity                    [Lean PASS]
│   └── W^k < 4*T^k                                          [Lean PASS]
│       ├── exact binomial bracket from k=16                   [Lean PASS]
│       └── 13*k*d < 20*n                                      [Lean PASS]
│           └── cofactor band 40*a<=13*k + p>k is excluded      [Lean PASS]
├── every length-k small-product is divisible by k!            [Lean PASS]
├── ELS Theorem 1, bounded by k                                [source + proof reproduced]
│   └── some upper small part is > k                            [paper-level PASS]
└── ELS Theorem 4, bounded by k+1                              [published; not Lean-banked]
    ├── either an upper part is >= k+2
    └── deleted-value branch
        ├── k+1 = 4*r*t and r=gcd(n+d,k+1)                     [Lean arithmetic PASS]
        └── if both blocks bounded
            ├── deleted values 4r and r; gcd ratio 4           [exact derivation PASS]
            ├── r|d, Odd(d/r), Odd(S/r)                        [exact derivation PASS]
            ├── nontrivial owner graph has >= k+1 edges        [exact proof PASS]
            └── if d>=(2(k+1))^k: balanced components,
                nontrivial owner graph has >= k+2 edges         [exact proof PASS]
                └── at a larger explicit threshold, proper
                    components are excluded except even half-size [exact proof PASS]
```

The only external node is the stated ELS bounded classification.  Theorem 1's
elementary induction is reproduced in `findings.md`.  Theorem 4's source says
its proof is similar and leaves it to the reader; this lane therefore does
not label the Theorem-4 consequences as kernel-attested.

## Per-node verdicts and quantified meanings

| Node | Verdict | Exact content |
|---|---|---|
| `kSmallPart` | PASS | Product of the complete `p`-adic powers for every prime `p<=k`; no radical or squarefree replacement. |
| factorial loss | PASS | Exactly one `k!`: `k! | A`.  No `O(k!)`, “factorial-sized,” or omitted constant. |
| rough matching | PASS | Product equality for all prime powers with bases `p>k`; the factor 4 is entirely below the cutoff because `k>=2`. |
| centered pair window | PASS | With `T=2n+k+1`, `W=T+2d`, opposite-position multiplication gives the strict inequality `W^k<4T^k`; no endpoint surrogate is used. |
| uniform root bracket | PASS | Exactly `4*(20k)^k<(20k+29)^k` for all `k>=16`; the first six normalized binomial terms are bounded below by their `k=16` values, whose sum is `839241148077/209715200000>4`. |
| centered ratio | PASS | Every target-range quotient-four solution satisfies the quantified inequality `13*k*d<20*n`. |
| linear cofactor band | PASS | If a lower term is `a*p^A` with `p>k`, `A>=1`, and `40a<=13k`, the equation is impossible. This requires the displayed factorization of a term; it is not a supply theorem. |
| upper escape | PASS | There exists `j in {1,...,k}` with `small_k(n+d+j)>=k+1`. |
| large-core arm | PASS | There exists `j` with `small_k(n+d+j)>=k+2`. |
| deleted-value arm | PASS conditional on ELS Thm 4 | Positive `r,t`, `k+1=4rt`, and the upper multiset is exactly `1,...,k+1` minus `r`. |
| owner graph | PASS | One edge for each nonunit aggregate `Q_ij`; every prime base in it is `>k`, and `Q_ij|d+j-i`. |
| edge lower bound | PASS in both-bounded arm | At least `k+1` **distinct nonunit `(i,j)` aggregates**, not `k+1` prime bases and not an asymptotic count. |
| large-gap capacity | PASS in both-bounded arm | If `d>=(2(k+1))^k`, each connected component has the same number of lower and upper vertices and the graph has at least `k+2` nonunit aggregates. |
| component norm gap | PASS in both-bounded arm | If `d>=2*k^3*3^k*(k+1)^((k-1)(2k-1))`, every proper component is excluded except `s=k/2` when `k` is even, with exact core ratio 2. |
| alternating cycle | NEGATIVE | A `2s`-cycle incidence matrix has rank `2s-1`; its only multiplicative dependency is equality of total row and column rough products. |
| closure | FAIL | No proved upper bound of `k` edges; split owners remain feasible. |

## Falsification-record audit

### Deep row-prefix point `(984,3177026,4480)`

It is not an equation, so `B=4A` is false.  Its upper maximum small part is
`3,182,487>985`; the bounded branch is not invoked.  Rows 1 through 16 remain
untouched.

### Deep cluster point `(244,48502,277)`

It is not an equation, and its upper maximum small part is `49,022>245`.
The argument neither asserts nor needs a fixed row-prefix cap.

### Smooth reflection pseudo-blocks

At `(16,582087,52684)` and `(17,996082,84632)`, both solution-shaped blocks
are smooth at the existing cap, but the exact product equation fails.  Their
upper small-part maxima are 143 and 720.  This confirms that smoothness does
not imply the new product identity.

### `d=1` telescopes

The exact equations `(9,2,1)` and `(15,4,1)` reproduce.  Their stripped
products obey `B=4A`, their rough products agree, and their upper parts exceed
`k+1`; they take the first arm.  Nothing here uses `d>=k` until the owner-graph
nonisolation statement, so the scope boundary is explicit.

### Congruence and mass-only pseudo-families

The fixed `k=19` point in `findings.md` has exact stripped ratio four and the
exact bounded upper ELS pattern, but is not a full equation.  It prevents any
claim that factorial mass or Theorem 4 alone closes the row.

### Minimal cycle

The exact `(k,n,d)=(19,239446,5198)` component in `findings.md` has four
pairwise-coprime prime labels above `k`, exact row and column values, all four
shifted-difference divisibilities, `n>9d`, and the aggregate reflection
compression.  It fails the lower ratio-window inequality and is not asserted
to be a block equation.  Thus it is a counterfixture to a cycle argument that
uses ordering, rows, and reflection but omits the full window.

### Centered-window boundary

The root bracket is proved from the exact `k=16` six-term partial sum, not
from a limiting exponential estimate; thus `k=16,17,18` are included.  The
verifier independently checks the integer inequality for every
`16<=k<=512`.  The frozen 4-cycle fails the lower endpoint window, so it
cannot satisfy the centered equation window derived from the full equation
and is not contradicted as a synthetic non-equation fixture.

## Why this is not circular

The new conclusions are strictly weaker than Target 2.  They do not assert a
nonsmooth term or nonexistence of the equation.  The linear cofactor band
requires an actual representation `n+i=a*p^A`; no such representation is
silently supplied.  In the hardest arm the graph conclusions say
only that the rough owner graph has at least `k+1` edges, strengthened to
`k+2` beyond the explicit threshold `(2(k+1))^k`.  A proof that such a graph
cannot occur would be new work; it is not hidden behind “essentially a
matching” or an unquantified capacity estimate.

## Exact remaining gap in this lane

The missing statement is not recorded as a theorem:

> For every `k>=16`, `d>=k`, and exact quotient-four solution in which both
> blocks' `k`-small parts are at most `k+1`, exclude a spanning balanced owner
> component (and, for even `k`, the possible two half-size components) using
> the full short ratio window, edge integrality, and reflection divisibilities.

This is a restricted subcase of Target 2, not claimed equivalent to the full
target because either block may already have a part at least `k+2`.
