# Hostile audit: Erdős 686 reflection-owner correlation

Verdict: **PASS as a proper equation-level restriction, never as a Target-2
closure.**  The claimed per-prime correlation is mathematically valid from
the banked reflection, concentration, and matching lemmas.  An audit-only
Lean module now proves the previously missing composition.  Its reflected
owner alternative remains genuinely open.

Integration note (2026-07-10): after this frozen-source audit passed, the
unchanged composition module was deliberately imported into the shared
library and manifest.  The historical `Audit` filename and module comment
record its provenance; they do not mean the theorem is still quarantined.

## Frozen inputs

```text
32911fb261ef9655a9431e072ba851baf4b92353ac50cba26fe7e203ccb21d8e  compute/campaign686/reflection_lcm_correlation_verify.py
3601e46ae938e247ab791031fc0d1d77a09fd4524b6ca62a4a9802c9a91c96a2  compute/campaign686/test_reflection_lcm_correlation_verify.py
89573348299f31d946ec9a730e1de6a5926a6a1b59dae4fc14af516112f8a03c  ErdosProblems/Erdos686ReflectionCompression.lean
459fdaee5fb49b42b88a00c53833e3fec0a9258a57f693f95334c587d4dc4267  ErdosProblems/Erdos686MatchingCompression.lean
cdfd0833628bd232601714d600f8ca68523a6f06a47cf2b79e340ec4174ce65c  compute/campaign686/large_k_findings.md
```

Independent audit artifacts at the time of this report:

```text
8600bebdf68f4a7d7352f769c8ba538b0f21a92a8e8271cca0ebf0ffbb47ef54  ErdosProblems/Erdos686ReflectionOwnerCorrelationAudit.lean
29489c6c6ca2a625ae4de5fbc949345704d0909e008d7b21f3e8e389f4eb47eb  compute/campaign686/reflection_lcm_correlation_hostile_verify.py
cf237f5e8704bdcee1bf402591c568b9f9cedd23aaaa4f2524e979bafd620043  compute/campaign686/test_reflection_lcm_correlation_hostile_verify.py
```

The hostile Python verifier imports none of the producer diagnostics.

## Exact quantified theorem

Let

```text
S = 2n+d+k+1,
c = 3 when k is even and 5 when k is odd,
F = (k-1)!,
e_p = max(v_p(S)-v_p(c)-v_p(F),0),
q_p = p^e_p.
```

Assume

```text
p is prime,
1<=k<=d,
blockProduct(k,n+d)=4 blockProduct(k,n).
```

Then there are concentration owners `i,j in [1,k]` such that

```text
q_p | n+i,
q_p | n+d+j,
q_p | d+k+1-2i,
q_p | d+j-i.
```

Consequently

```text
q_p | |i+j-(k+1)|.
```

If the pair is non-reflected, `i+j != k+1`, then

```text
1 <= |i+j-(k+1)| <= k-1,
q_p | lcm(1,...,k-1).
```

The reflected alignment

```text
j=k+1-i
```

makes the owner offset zero and is the exact surviving alternative.  The
theorem does not exclude it.

The same lower-owner argument aggregates to the distinct necessary condition

```text
S | c*(k-1)!*lcm(d+k-1,d+k-3,...,d-k+1).
```

This factorial-lcm right side and the older full reflected product are not
uniformly ordered.

## Dependency tree and equation dependence

```text
exact block equation
|
+- reflection congruence: S | c*blockProduct(k,n)
|  `- v_p(S) <= v_p(c)+v_p(lower block)
|
+- exact equality implies lower block | upper block
|  `- v_p(lower block) <= v_p(upper block)
|
+- lower concentration owner i
|  `- v_p(lower block) <= v_p(n+i)+v_p((k-1)!)
|
+- upper concentration owner j
|  `- v_p(upper block) <= v_p(n+d+j)+v_p((k-1)!)
|
+- reflection gcd bound
|  `- gcd(S,n+i) | d+k+1-2i
|
`- subtract the two owner terms
   `- q_p | d+j-i
      `- subtract the two differences to obtain the owner offset
```

The concentration inequalities themselves are unconditional consecutive-
block facts.  Both landings require equation-supplied premises:

- the reflection landing uses `S|c*blockProduct(k,n)`;
- the upper landing uses `blockProduct(k,n)|blockProduct(k,n+d)`.

Passing a prefix of row-divisibility tests supplies neither premise.  No
prefix fixture is used in the Lean proof.

## Missing Lean composition, now isolated

Before this audit, the repository banked all ingredients but not their
per-prime composition.  The audit-only module proves:

```text
exists_reflection_owner_correlation_four
reflection_owner_correlation_offset_and_lcm
exists_reflection_owner_offset_restriction_four
reflection_lcm_compression_four
```

The first theorem supplies both owner landings.  The second proves the exact
absolute-offset and small-lcm consequences.  The third packages the proper
equation-level restriction.  The fourth proves the aggregate one-factorial
reflection-lcm compression.  This module is not imported by the shared
integration surface and should remain labeled audit-only until deliberately
integrated.

All four new theorems report exactly
`[propext, Classical.choice, Quot.sound]`.  The key banked surfaces report:

```text
reflection_congruence:
  [propext, Classical.choice, Quot.sound]
reflection_gcd_bound:
  [propext, Quot.sound]
exists_blockProduct_factorization_concentration:
  [propext, Classical.choice, Quot.sound]
reflection_compression:
  [propext, Classical.choice, Quot.sound]
blockProduct_dvd_factorial_mul_centeredDiffLcm_four:
  [propext, Classical.choice, Quot.sound]
```

The three modules build together successfully (`8264` build jobs).  A
forbidden-construct scan finds no `sorry`, `admit`, `axiom` declaration,
`native_decide`, `of_decide`, `unsafe`, `implemented_by`, or `extern` in the
two banked modules, the audit composition, or either verifier.  Existing
dependency linter notices are stylistic and do not alter the axiom surface.

## Independent arithmetic scans

The independent verifier checks 17,271 maximum-owner concentration rows:

```text
2<=k<=20,
0<=start<=100,
p in {2,3,5,7,11,13,17,19,23}.
```

It also scans 499 points satisfying exactly the two arithmetic consequences
used by the composition,

```text
S | c*lowerBlock,
lowerBlock | upperBlock,
```

covering 993 center-prime rows.  There are 216 nonzero residual rows and 23
non-reflected nonzero rows.  Every row lands in both differences; every
non-reflected row is absorbed by `lcm(1,...,k-1)`.

These scans are diagnostics.  The universal implication is supplied by the
Lean theorem, not inferred from the finite grid.

## Named fixture replay

All nine producer tests and all nine independent hostile tests pass (`18`
combined).

### Prefix boundaries

```text
(k,n,d)=(984,3177026,4480):
  rows 1..16 pass, row 17 fails,
  S=6359517,
  exact equation false,
  reflection congruence false.

(k,n,d)=(244,48502,277):
  rows 1..15 pass, row 16 fails,
  S=97526,
  exact equation false,
  reflection congruence and both compression checks happen to hold.
```

Neither point is evidence for the equation-level theorem.

### Exact reflected obstruction

The smooth point

```text
(984,3177027,4480), S=6359519=1489*4271
```

has the nonzero owner rows

```text
p=1489: (i,j)=(499,486), i+j=985=k+1,
p=4271: (i,j)=(597,388), i+j=985=k+1.
```

The even synthetic point `(16,582087,52684)` has reflected rows

```text
(p,i,j)=(5,13,4),(59,7,10).
```

The odd synthetic point `(17,996082,84632)` has reflected rows

```text
(19,12,6),(31,10,8),(41,13,5),(43,13,5).
```

All three points satisfy the reflection congruence and both compression
checks but fail the exact block equation.  They demonstrate the obstruction;
they do not instantiate the theorem premise.

### `d=1` boundaries

The exact telescopes `(9,2,1)` and `(15,4,1)` reproduce.  Both have `d<k`,
so the positive reflected interval is outside scope, and every residual
center exponent after coefficient/factorial loss is zero.  The correlation
is vacuous there.

## LCM versus product

The raw right sides

```text
c*(k-1)!*reflectionLcm,
c*reflectionProduct
```

occur in both size directions on the named points.  More strongly, at the
odd synthetic point neither right side divides the other.  Therefore neither
compression theorem dominates the other as a raw divisibility statement.

The producer-test comment “arithmetically sharper prime by prime” must not be
read as valuation-wise dominance of the factorial-lcm right side; that
literal reading is false.  The executable assertions correctly test
structural incomparability, so this is a wording caveat rather than a failed
claim.

At `k=16`, the independently reproduced arithmetic is

```text
lcm(1,...,15)=360360,
exact parity threshold=74405295039865264,
uniform coefficient-5 threshold=124008825066442106.
```

These thresholds become useful only under a non-reflected hypothesis.  They
do not remove the reflected alternative.

## Exact remaining gap

For each center prime, the equation forces one of two outcomes:

```text
reflected owners:      j=k+1-i,
non-reflected owners:  q_p | lcm(1,...,k-1).
```

The audit proves no bound on the reflected residual powers and no reason that
all center primes must choose non-reflected owners.  The named 1489/4271 and
even/odd synthetic ledgers show that simultaneous reflected alignment is
arithmetically coherent with every weakened compression premise checked.

Thus the artifact is a genuine new restriction and aggregate compression,
not a Target-2 closure and not a proof of Erdős 686.

## Reproduction

```bash
lake env lean ErdosProblems/Erdos686ReflectionCompression.lean
lake env lean ErdosProblems/Erdos686MatchingCompression.lean
lake env lean ErdosProblems/Erdos686ReflectionOwnerCorrelationAudit.lean
python3 -m pytest \
  compute/campaign686/test_reflection_lcm_correlation_verify.py \
  compute/campaign686/test_reflection_lcm_correlation_hostile_verify.py -q
python3 compute/campaign686/reflection_lcm_correlation_hostile_verify.py --pretty
```
