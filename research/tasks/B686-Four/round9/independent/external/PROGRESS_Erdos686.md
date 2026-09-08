# PROGRESS.md - Erdős Problem #686

Date: 2026-07-16 (full-solution campaign checkpoint)
Formal lane: refute the universal positive statement by proving `N = 4` has no
quotient representation. Previous plan archived in
`PROGRESS_Erdos686_gptpro_archive.md`.

Status tags: `[R]` banked in Lean (axiom-clean, kernel-verified) · `[E]` exact
computational evidence · `[C]` conjectural/open · `[X]` refuted by exact
counterexample.

---

## 0. Executive status

[R] The refutation of Erdős #686 is machine-checked down to the two updated
open hypotheses, equivalently packaged by one exact residual interface in
`ErdosProblems/Erdos686FinalResidual.lean`:

```lean
theorem erdos686_false_of_finalResidual
    (hres : FinalResidual686Hypothesis) :
    ¬ ∀ N : ℕ, 2 ≤ N → ∃ k n m : ℕ, 2 ≤ k ∧ m ≥ n + k ∧
      (N : ℚ) = (∏ i ∈ Finset.Icc 1 k, ((m + i : ℕ) : ℚ)) /
                (∏ i ∈ Finset.Icc 1 k, ((n + i : ℕ) : ℚ))
```

[R] CI gate: the expanded manifest and attestations are regenerated from
`proofs.yaml`; every admitted headline is checked against the axiom subset
`[propext, Classical.choice, Quot.sound]`.

[R] **The six finite odd-tail bands now reach `10^1000`.**  Six generated
Farey-neighbor certificates, ordinary kernel reduction, and independent exact
reproduction exclude every odd target row for
`10^120 <= d < 10^1000`.  The remaining odd tail starts at `10^1000`; no
infinite continued-fraction assertion is inferred from the finite band.

[R] **Every even row now has an unconditional effective tail, and six large
rows are fully closed.**  For `k=2r`, Lean constructs the monic rational
polynomial part of the square root of the centered product, clears
denominators, proves the deficit nonzero using the simple root at one, and
builds an exact coefficient threshold `M_r`.  No equation exists for
`d>=max(2r,M_r)`.  Separate integral traps and ordinary-kernel prime-field
covers close all gaps for `k=16,18,20,24,28,32`.  The k=18, k=28, and k=32
covers are balanced across checked-in shards and use no `native_decide`.

[R] **An all-parity quadratic strip is now closed uniformly.**  Write
`Lambda(m)=lcm(1,...,m)`.  Lean proves the sharp elementary estimate
`Lambda(m)<=4^m` and, for any positive interval of `m` consecutive integers
with product `B` and lcm `L`, the exact divisibility

```text
m! * L | B * Lambda(m).
```

Combining this interval theorem with the one-factorial centered-lcm
compression and the exact ratio window proves that no equation with
`k>=16,d>=k` can satisfy `18*d<=k^2`.  No parity hypothesis is used.  Thus
every live large-row solution now satisfies the strict complement
`k^2<18*d`; the excluded strip is already nonempty at `k=d=18`.

[R] **The large-row window and prime-power exclusions are sharper.**  Centered
pairing plus an exact seven-term bracket proves that every solution with
`k>=16,d>=k` satisfies `1218443kd<1853952n`.
Both lower-block prime-power
endpoints are impossible for every prime.  At an interior position the exact
criterion compares `v_p((k-1)!)` with
`v_p(4)+v_p((i-1)!(k-i)!)`; every base `p>k` follows.  A single large-base
owner `a*p^A` is excluded whenever `a(d+k-1)<n+i`, hence whenever
`3707904a<=1218443k`.  Exact p=2 and p=3 fixtures prevent overclaiming the all-prime
interior statement.

[R] **Large prime-power gap components and grouped owners now have one exact
square ceiling.**  For every solution with `k>=16,d>=k`, every prime
`p>=k`, positive `e`, and `p^e|d`, Lean proves
`6p^(2e)<(13k-6)d+18(k-1)`.  This excludes every whole `d=p^e` with
`e>=2`, and every whole prime-power gap with `d>=3k`.  The same inequality
holds for the square of each complete cleaned owner bucket.  Hence a whole
gap `d=p^e q^f` with distinct `p,q>=k` has distinct lower owners.  In odd
rows `k>=17`, those owners construct a uniform `A=3k+2` Pell certificate
with both second-lift divisibilities.  A vendored, allowed-axiom proof of
Sylvester--Schur now gives the exact uniform theorem that the reflected
harmonic value forced by simultaneous zero obstructions is nonintegral in
every odd row `k>=5`.  The elementary coefficient bridge is now Lean-banked
too, proving that the two second obstructions at distinct owners cannot both
vanish.  For prime-power boundary rows
`k=p^a-1`, `p>=5`, Lucas arithmetic additionally proves
`p^a∤n` and `p^a∤(n+d)`.  None of these statements closes the surviving
nonzero-obstruction or mixed small-prime branches.

[R] **A supplied matched owner now has a complete two-level residual
dichotomy.**  Let a positive modulus `q` land at lower owner `i` and upper
owner `j` as `n+i=a*q` and `n+d+j=(a+b)*q`.  The exact ratio window gives
`1218443*k*b<3707904*a`, so `0<b<a`, and the matched square lift makes `q`
divide the signed linear residual `D`.  If `D!=0`, Lean proves

```text
1218443*k*d < 3707904*a^2*(C_j+2*C_i).
```

If `D=0`, the gcd-reduced slope equation has
`a=B*w`, `a+b=A*w`, and `B<A<2B`.  For `Z=w*q`, the fixed quadratic
coefficient `c2=A^2*E_j-4*B^2*E_i` is nonzero, `Z|c2`, and
`d≤(A-B)*|c2|+k-1`.  The theorem accepts arbitrary `q`, so a dispatcher may
use a prime power or an aggregate sharing the same owner pair.  The
odd-center formal zero `A/B=4` is outside the proved sharp ratio range and is
recorded in the hostile audit.  Exact scans through `k=300`, plus the row-22,
row-984, `q=k`, and `d=1` fixtures, reproduce every boundary claim.  This is
a supplied-owner theorem only: the missing large-row step is a quantified
owner-supply or global aggregation theorem forcing one of these bounds to
contradict the exact window.  Minimum-degree-two owner cycles still survive.

[R] **An even reflection-center component now has a gcd/cofactor quotient
bound without assuming that its full cofactor divides the gap.**  Let
`H=2n+d+k+1=a*p^e`, where `p>=k` is prime and `p^e` is the complete
`p`-component of `H`, and put
`b=a/gcd(a,d)`.  Lean proves

```text
gcd(a,d) | (k-1)!!,
2*p^e < 5*(k-1)!!*b,
38*d < 5*((k-1)!!)^2*b^2,
1218443*k*d < 2317440*((k-1)!!)^2*b^2.
```

The special case `a|d` has `b=1` and gives fixed-row exclusions.  The exact
remaining obstruction is that no banked theorem bounds the gap-coprime
quotient `b`; it may be unbounded, so these inequalities are not a uniform
large-row closure.

[R] **The full high prime-power component theorem is now Lean-banked for
every prime base.**  The public dispatcher
`no_four_solution_of_highPrimePower_component` composes
`no_four_solution_of_highTwoPower_component`,
`no_four_solution_of_highThreePower_component`, and
`no_four_solution_of_highPrimePower_ge_five_component`.  For an exact
component `p^e || d` with `p^e>=k`, these exclude respectively

```text
(13k-6)d+18(k-1) <= 24*2^(2e-lambda_2(k)),
(13k-6)d+18(k-1) <=  6*3^(2e-mu_3(k,e)-1),
(13k-6)d+18(k-1) <=  6*p^(2e-lambda_p(k)).
```

The valuation/unit translation, the special two-adic valuation gain, the
three-adic half-owner classification modulo nine, all three exact residual
lifts, and the final strict size contradiction compile with exactly
`[propext, Classical.choice, Quot.sound]`.  The separate Nair-Shorey wedge
remains external/paper-only.  The kernel theorem
`no_four_solution_primePowerGap` closes `d=p^(k+t)` for every prime `p`,
every `k>=16`, and every natural `t,n`; the three simpler component-square
criteria are formalized as well.  This theorem closes a genuine uniform
infinite subclass but not arbitrary mixed support: every surviving component
must merely satisfy the strict reverse of its displayed bound.

[R] **One exact residual hypothesis packages the former two-interface
handoff.**  `FinalResidual686Hypothesis` starts the odd arm at `10^1000` with
the complete all-owner second/third-nonzero certificate.  Its large-row arm
removes `k=16,18,20,24,28,32`, all constructed even tails, and the exact
prime-power/owner families above.  It also records `k^2<18*d`, the component,
grouped-owner, Lucas boundary, uniform odd two-prime Pell restrictions, and
the strict reverse of all three canonical high-component thresholds.
Lean proves both that it implies the two
updated terminal hypotheses and that their conjunction implies it.  Thus the
interface is equivalent packaging, not a weaker missing lemma.  The residual
statement itself is open and is not counted as a proof.

[R] **All pure prime-power odd tails are closed.**  The p-adic lift module
now proves that for every prime `p`, exponent `e`, and
`k ∈ {5,7,9,11,13,15}`, the equation has no solution when
`d=p^e≥10^120`.  For `p≥k` this is the clean localized square lift; for
`p<k`, a maximum-valuation factor loses at most
`1+v_p((k-1)!)`, and the exact residual bound is dominated by
`14! * 35 * 13^30 < 10^120`.  This removes the entire one-prime-support
regime but does not close mixed-prime gaps.

[R] **The whole gap square lands in one residual progression.**  Put
`X_i=3(n+i)-d`.  The exact equation is

```text
product_i (X_i+4d) = 4 product_i (X_i+d).
```

The constant terms differ by three, the linear terms cancel, and every
higher coefficient `4^r-4` is divisible by three.  Lean therefore proves
unconditionally that `d^2 | product_i X_i`, plus a positive natural-number
wrapper in the live range.  This removes the derivative-coefficient loss
before any new primewise concentration; it is a proper consequence, not yet
a mixed-prime closure.

[R] **Every two-distinct-prime gap is closed.**  The global square lift now
cleans each `p^e|d` into a component `h` with `h|d`, `h|n+i`, and
`h^2|3(n+i)-d`.  The exact loss is at most `64` for `p≠3` and `59049` for
`p=3`; the latter is proved by removing the common three from the whole
residual progression.  For `d=p^e q^f`, same-owner components multiply as
coprime squares.  Distinct owners satisfy the cleaned Pell relation and
second local obstructions; simultaneous reflected zeros are repaired by the
third local lift with exact coefficient `20`.  The fully composed Lean
theorem gives `d<10^120` for all distinct primes `p,q`, including `2,3`,
without a base-size hypothesis.  Any surviving odd tail therefore has at
least three distinct prime divisors.

[R] **The finite at-most-two-owner branch is closed end to end.**  For all
prime bases at once, the exact aggregate cleaning
loss is

```text
k:    5     7       9        11          13             15
G_k: 108  1620  136080  1224720  242494560  18914575680.
```

If the cleaned mass is supplied as two coprime owner buckets `P,Q` with
`d=gPQ`, `g<=G_k`, the second obstruction is below `10^16 g^2`; if both
second obstructions vanish, the third lifts and the cleaned Pell gcd cancel
the opposite coefficients.  Lean proves that the resulting exact equation
has `d<10^120`, including coincident owners and unit buckets.  The theorem
takes `HasAtMostTwoGlobalResidualOwners` as an explicit analytic interface.
The new finite grouping module constructs it from any certified per-prime
assignment covered by two indices: it proves the exact factorization, bucket
coprimality, factor and square divisibilities, and `g<=G_k`.  Global
concentration then chooses one assignment for every solution.  At target
size, that same assignment cannot be covered by any two indices.  Thus the
remaining branch has more than two nonzero cleaned owner values; the old
bookkeeping interface is no longer open.

[R] **Three live owners are now extracted explicitly from that same
assignment.**  The finite no-two-cover argument produces distinct prime
factors `p,q,r` with nonzero cleaned exponents and pairwise-distinct owners,
while retaining all three factor divisibilities, square-residual
divisibilities, and pairwise coprimality statements.  The exact theorem
returns the witness under `Nonempty`; an independent 4,729,716-model audit
checks that no two-value cover is equivalent to at least three live values.
This proves “at least three,” not “exactly three”: it does not claim
`d=gPQR` or discard additional live owner buckets.

[R] **Three cleaned buckets have exact second/third restrictions, but no
closure.**  For `d=gPQR` and three step-three square residuals, Lean proves
`P|3(C_iabc-12D_ig^2(i-j)(i-l))` and the companion square divisibility
`P^2|-3O_i+180E_ig^2(i-j)(i-l)d`, cyclically.  Exact arithmetic checks all
1,035 index triples and 5,216 signed fixtures.  A 121-digit CRT construction
satisfies this congruence package and both global moments but is explicitly
not an equation solution and exceeds the verified short window.  The live
three-bucket gap is the quantified short-CRT lemma, not a claimed resultant.

[R] **The fourth local lift is exact and proper, but still does not close the
short window.**  Retaining the cubic cofactor coefficient gives
`H^3 | 3*T3 + H^2*(-9*D*A^2 + 36*E*A*M^2 + 84*F*M^4)` without dividing by
three.  Multiplying the two opposite square-residual differences then yields
the cyclic owner obstruction `P^3 | 3*b*c*F_i + P^2*J_i`, and similarly at
`Q,R`.  Lean checks the four theorem surface; independent exact arithmetic
checks 15,120 denominator identities and 111,780 cyclic compositions.  A
target-size Hensel/CRT construction lifts all three obstructions through this
new digit and even makes the corresponding local block differences divisible
by `P_i^5`, while remaining outside the short window and failing the equation.
Thus fourth order is a genuine necessary restriction, not a congruence-only
bound; the quantified short-CRT/window lemma remains the exact gap.

[R] **The three-bucket zero-obstruction branch is closed.**  A repaired
six-row Boolean certificate proves explicit nonzero coefficient bounds
`<10^30` and `<10^18`; coprime packing then gives
`d | A*B*K*g^4`, whose worst target loss is still below `10^120`.  Hence a
bounded-loss target-size three-bucket configuration satisfying the cyclic
second/third divisibilities has all three composed second obstructions
nonzero.  The fresh hostile audit checks all 6,210 ordered triples and 18,630
cyclic views.  The earlier noncompiling source SHA remains a historical FAIL;
the repaired SHA alone is banked.  This removes only the zero branch and does
not prove the all-nonzero short-window lemma.

[R] **Every third-quotient zero branch is now explicitly removed from the
live ledger.**  Cancelling the square factor in the cubic lift gives the
exact third quotient and the fixed-coefficient congruence
`P | 27*C^2*b*c*z + K*g^4`; the three-row lattice identity and generic
two-zero packing theorem remain banked and hostile-audited.  Their historical
`10^120` scan found 2,603 noncentral two-zero placements and left 282 row-15
numerical survivors.  That is no longer the equation-facing branch split:
the exact ratio window already proves all three composed third obstructions
nonzero at `d>=10^120`, and
`exactRatio_target_three_bucket_all_third_quotients_nonzero` now transports
this result literally through `T_s=P_s^2*z_s`.  Thus every center or
noncentral one-zero, two-zero, and three-zero quotient branch is impossible.
An independent exact replay records that `10^131` already closes all 2,603
old noncentral placements numerically (hence `10^1000` does too), but this is
a historical audit rather than a premise of the live proof.

[R] **The old lattice-sign boundary census is superseded by exact-ratio
nonvanishing.**  The nine strict one-sided slivers and eighteen one-zero
boundaries are not live cells, because they require a zero third quotient.
After imposing the exact equation-facing sign/nonvanishing data, every one
of the 1,035 three-owner geometries is all-three-nonzero and sign-mixed.  The
tail-1000 determinant closes the 27 center/reflected triples, leaving exactly
1,008 nonreflected exactly-three geometries.  Counting nonunit supports of
all sizes, the live odd ledger has 43,282 subsets: those 1,008 triples plus
all 42,274 supports of cardinality at least four.  Unit full-grid buckets are
retained and are not counted as live owners.

[R] **Fifth order is now normalized to the exact next Hensel quotient.**
Lean proves the universal identity
`R5(d)=27*K4+d*R1+d^2*R2`, including the dead-route certificate
`R5(0)=27*K4`.  With `d=P*M` and reduced fourth numerator `P*w`, the reduced
fifth square congruence is equivalent to
`P | 27*w + M*R1*g^4`.  The third quotient disappears, so its lattice does
not couple the new fourth quotients `w`.  Exact 121- and 1,004-digit Hensel
fixtures satisfy this congruence package while failing the block equation and
short window.  The normalization is a proper necessary condition and an
auditable obstruction to a fixed-resultant overclaim; it is not a cutoff.

[R] **The normalized fourth and fifth quotients now have an ordinary-kernel,
equation-facing nonvanishing layer.**  Lean proves the exact opposite-product bound,
then

```text
|w_s| < W_s*g^4*(d/P_s),
|N_s| < V_s*g^4*(d/P_s),
P_s | N_s and N_s != 0  ->  P_s^2 < V_s*g^4*d,
```

with explicit `W_s=27*C_s^2*U_k^2*B_s+|K_s|` and
`V_s=27*W_s+|R1_s|`.  The exact eliminant
`d^4*P_s*N_s=g^4*J_s(X_s,d)` is also kernel-checked.  An ordinary-kernel
certificate checks all 3,024 cyclic positions of the 1,008 nonreflected
triples; a generic membership theorem proves exact coverage of the valid
nonreflected cyclic domain in all six target rows.  Lean derives the padded residual-ratio interval and
`localResidual<=36*d` from the exact block equation at `d>=10^1000`.
The equation-facing wrapper then proves both the fourth quotient `w_s` and
normalized fifth numerator `N_s` nonzero.  The direct selected-three bridge
constructs the product, third-obstruction, opposite-product, fourth, and
normalized identities from `d=gPQR`, the three exact square residuals, and
the block equation.  It also proves the genuine divisibility `P_s|N_s`.
The complete all-owner corollary can instantiate the same package after
absorbing every omitted bucket into `g`, but makes no bounded-loss claim for
that enlarged factor.  Even with all three cyclic instances, multiplying the
component-square bounds has the wrong gap exponent and the simultaneous
mixed-sign nonzero branch remains open.  The exact sign verifier reconstructs
all lower-degree terms: `sign(w_s)=-sign(C_s)` in all 3,024 positions,
`sign(N_s)` differs in 90 positions, and the canonical cyclic weighted
`w`- and `N`-sign triples are mixed in every one of the 1,008 geometries.
Thus the immediate one-sided cyclic sign argument is exactly falsified.

[R] **Every supplied center/reflected exactly-three slice now closes at the
live `10^1000` tail.**  For owners at the center and distance `r` on both
sides, Lean derives the center cubic bound and both endpoint third-square
divisibilities from the exact block equation.  Their nonzero reflected
determinant gives `Q^2R^2<KD(k,r)g^2d`.  Exact arithmetic proves the resulting
packing cutoff below `10^200` in all 27 pairs: 12 were already below
`10^120`, and 15 are newly closed.  The headline theorem
`no_four_solution_of_exact_center_reflected_three_bucket_tail1000` assumes
the exact factorization `d=gPQR` and this owner geometry; it does not discard
additional live owners or convert an arbitrary three-owner configuration
into a reflected one.

[R] **The finite-family obstruction algebra now retains every selected
owner without inflating the loss.**  For an arbitrary finite owner set, Lean
composes all opposite square residuals modulo the distinguished component,
proves `P_s | O_s` and `P_s^2 | F_s`, and uses the lower residual product to
exclude `O_s=0` uniformly for complete target families of cardinality
`4..15`.  Independent exact arithmetic covers 42,274 target subsets and
309,329 owner slopes; a 130-digit CRT pseudo-family confirms that the
congruences alone do not imply the short window or equation.  The
`(2^N,3^N,5^N,7^N)` family refutes only a bounded-complement inference from
product and component-square bounds; it is not a residual/window fixture.
All nonzero multi-owner branches remain open.

[R] **Every target solution now supplies a complete all-owner certificate.**
The full grid `Icc 1 k` receives the exact cleaned bucket at each owner,
including literal unit buckets when no retained prime lands there.  Prime and
owner products commute to
`d = globalResidualGroupedLoss * product_i P_i` with the original target loss
bound.  Exact residual cofactors are positive, have pairwise step-three
differences, and feed the finite-family second and third compositions at
every index.  The target lower residual window then proves every composed
second obstruction nonzero.  `exists_allOwnerAssemblyCertificate` constructs
this package from only the odd target row, `d>=10^120`, and the exact block
equation.  The independent hostile audit re-proves all 30 public theorems and
the certificate constructor, with 15 focused tests.  This closes the
bookkeeping passage from arbitrary prime support to the complete owner
family; it does not close the joint nonzero obstruction branch.  The exact
remaining all-owner statement—certificate plus equation implies
`d<10^120`—is target-strength and remains open.

[R] **The joint all-owner resultant route is now exhaustively audited and
does not close the branch.**  Exact arithmetic checks all 42,274 owner
subsets and all 2,576 primitive four-owner circuits; every circuit is
sign-mixed.  The one-dimensional Vandermonde annihilator necessarily retains
the common cofactor product.  On the full grid its resultant is exactly the
degree-at-most-three truncation of the block equation, while the omitted tail
begins at `d^4`; after `d=gM`, the apparent `M^4` divisibility is automatic
term by term.  This is a structural negative audit, not a new theorem.

[R] **Two global cubic moment combinations.**  Expanding at the evaluation
ratio `2^2=4` cancels every term through degree two after explicit constant
and linear corrections.  Lean proves `d^3` divides the resulting
combinations for both residual progressions `n+i-d` and `3(n+i)+d`.  The
exact solution `(k,n,d)=(1,0,3)` shows why the correction is load-bearing:
neither raw residual product is divisible by `27`.

[R] **Large-k maximum-valuation owners compress to one lcm.**  For every
exact equation with `k>=1` and `d>=k`,

```text
B(k,n) | (k-1)! * lcm(d-k+1,...,d+k-1).
```

The row skeleton alone gives the same statement with two factorial
allowances.  In the large branch the exact ratio also sharpens to `kd<5n`,
forcing `(kd)^k < 5^k (k-1)! C(k,d)`.  Both named deep row-prefix fixtures
and the `d=1` telescopes pass the hostile audit.  The result is a proper
compression, not a closure: generic lcm mass still has `2k-1` possible hosts
and grows with degree `2k-1` in `d`.

[R] **Reflection and matching owners now correlate prime by prime.**  Put
`S=2n+d+k+1`.  For every prime `p`, after subtracting the valuation of the
parity coefficient and one `(k-1)!` loss, an exact equation supplies lower
and upper owners `i,j` on which the same residual power lands.  It divides
both a reflected difference and a centered difference, hence
`|i+j-(k+1)|`; a non-reflected pair is absorbed by
`lcm(1,...,k-1)`.  The exact obstruction is `j=k+1-i`, which is exhibited by
the audited synthetic fixtures and is not closed.  Independently, Lean
aggregates the lower landing to
`S | reflectionCoeff(k)*(k-1)!*reflectionDiffLcm(k,d)`.  This and the older
full reflection product are structurally incomparable, so neither is
presented as uniformly sharper.

[X] **The former large-branch target is falsified.** The fixed-prefix
statement `RowSixteenBoundaryHypothesis` (rows 1..15 divide ⟹ row 16 fails)
is FALSE: the exact-window point `(k, n, d) = (984, 3177026, 4480)` passes
rows 1..16; only row 17 fails (`n+17 = 439·7237`, and 7237 exceeds the row-17
interval maximum 5447). Banked as `row_sixteen_boundary_hypothesis_false`
(kernel-verified witness). Deep survivor clusters (n = 48502 fails first at
row 16; n = 3177026 at row 17) show fixed-prefix caps cannot work; the
repaired open target is the unrestricted escape.

[R] **k = 14 closed entirely** (all d ≥ 221): the Runge trap confines
`m = T₁₄(w) − 2T₁₄(v)` to 834 candidates, all killed by a 31-prime
mod-p set cover (`Erdos686FourteenStrip.lean`).  All even
`k ∈ {6, 8, 10, 12, 14}` are unconditional.

[R] **Equation-level prime obstruction** (`Erdos686PrimeObstruction.lean`):
a prime `q ≥ d + k` dividing any block element refutes the equation in
five lines.  Hence any solution has both blocks entirely
`(d+k)`-smooth; the large-`k` core is now `LargeKSmoothHypothesis`.

[R] **The Thue route (odd k)**: centered variables `X = n+d+(k+1)/2`,
`Y = n+(k+1)/2` turn the equation into `P_k(X) = 4·P_k(Y)` with `P_k`
odd; the leading cancellation forces `|4^{1/k} − X/Y| ≤ C_k/Y²`
(C₅ = 61/100, C₇ = 399/500, C₉ = 1031/1000, C₁₁ = 13/10, C₁₃ = 3/2,
C₁₅ = 1729/1000 — all exact, proved chains).  A C-agnostic
Stern–Brocot descent certificate (`Erdos686ConvergentMachinery.lean`,
no reals, no Mathlib CF, kernel decide ~1s) confines and refutes every
candidate.  **k = 5 is banked closed for 221 ≤ d < 10^120**
(`Erdos686FiveThue.lean`) — the community had k = 5 open;
k ∈ {7, 9, 11, 13, 15} are also banked to the same `10^120` threshold.
Telescope caveat: k = 9, 15 have d = 1
polynomial identities (`P₉(8) = 4·P₉(7)`), excluded by the domain.

[C] The open hypotheses (the entire remaining mathematical content):

```lean
-- per odd k: no equation solution at astronomical heights
def NoLargeGapSolutionFour (k B : ℕ) : Prop :=
  ∀ n d : ℕ, B ≤ d → blockProduct k (n + d) ≠ 4 * blockProduct k n
-- six tails: NoLargeGapSolutionFour k (10^1000), k ∈ {5,7,9,11,13,15}

def LargeKSmoothHypothesis : Prop :=                 -- large-k core
  ∀ k n d : ℕ, 16 ≤ k → k ≤ d →
    blockProduct k (n + d) = 4 * blockProduct k n →
    (∀ i, i ∈ Finset.Icc 1 k → ∀ q, q.Prime → q ∣ n + i → q < d + k) →
    False
```

[R] **The terminal reduction is banked**
(`Erdos686FinalReduction.lean`):

```lean
theorem erdos686_false_of_thue_tails_and_smooth
    (htails : OddThueTailHypothesis)     -- six tails at d ≥ 10^120
    (hsmooth : LargeKSmoothHypothesis) : -- k ≥ 16 double smoothness
    ¬ (universal Erdős 686 statement)
```

with the UNCONDITIONAL `no_gap_solution_four_small_k_below`: for every
`5 ≤ k ≤ 15` and `221 ≤ d < 10^120` the `N = 4` equation is
impossible.  All five odd-k Thue modules reached full 10^120 depth.
Every intermediate conditional reduction remains banked and audited.

---

## 1. Architecture (revised from the earlier GPT Pro plan)

The earlier 13-tuple quotient-confinement plan collapsed to something much
simpler once the row→residual reduction was proved parametrization-only:

[R] `residual_dvd_of_row_dvd` (Erdos686ConstantQuotient.lean) needs only
`n + 1 = (q+1)·d − u`, NOT that `q` is each row's true quotient. The per-factor
identity is exact in ℤ: `q·(d + (1+s) − (t+1)) − M = q·s − R_t` where
`M = n+1+t`, `R_t = d−u+(q+1)t`. Consequently:

- only the **row-1 quotient** `(n+1)/d` needs confining (banked:
  `row_base_quotient_confined_of_window`, one value per k, two for k = 9);
- the k = 13 exceptional tuple (8,8,8,9) is absorbed by the (13,8) constant
  case;
- the single exceptional branch (9, quotient 5) is a finite box
  (`u ∈ [1,6], d ≤ 1421`), banked closed (`k_nine_quotient_five_row_escape`).

[R] The **u = d top edge** (`n+1 = q·d`, missed by all earlier scans because
they used `u < d`) is window-feasible only for (9,6), d ≤ 1613, passes the
t = 0 residual trivially (`residualRowPoly 9 6 0 = 0`), and is banked closed
(`constant_u_eq_d_no_prefix_three`).

Small-k pipeline (all banked; `Erdos686SmallBranch.lean` assembles):
`d ≤ 220` finite core → else confinement → (9,5)-box / constant case →
deficiency `u` → residuals t = 0..3 → [OPEN bound] → survivor membership →
row-4 escape → contradiction.

---

## 2. Banked modules (this session)

| Module | Content |
|---|---|
| `Erdos686ConstantQuotient.lean` | residualRowPoly, affine/lifted polynomials, exact lifted identity, primitive criterion (saturation + fixed (q+1)^k correction), prime-witness escape, row→residual reduction, deficiency parametrization |
| `Erdos686QuotientConfinement.lean` | `row_base_quotient_confined_of_window` (5 ≤ k ≤ 15, d ≥ 221), `window_n_upper_bound_of_d_le`; two-digit rational brackets, all norm_num |
| `Erdos686ExceptionalNine.lean` | k = 9, quotient-5 branch closed; exact box + Fin 1201 × Fin 6 kernel decide |
| `Erdos686SmallCore.lean` | `row_full_escape_small_k_d_le_220`: 5 ≤ k ≤ 15, k ≤ d ≤ 220, window ⟹ some row j ≤ 5 fails; banded certs, 23,730 grid points; `window_n_bound_small_k` (n < 2287) |
| `Erdos686ConstantSurvivors.lean` | the 45 prefix-three survivors + 6 band shadows; row-4 escape decide; banded membership certs for all 11 (k,q); u = d edge |
| `Erdos686SmallBranch.lean` | assembly, the two open Props, conditional reductions, boundary falsification |
| `Erdos686EvenK22Core.lean` | row `k=22`: unconditional closure for `22≤d≤249` and exact `d≥250` reduction to an odd `t≤3795146531` on a bounded centered surface |
| `Erdos686EvenK22PackedCover.lean` | unconditional row `k=22` closure: 24 packed ordinary-kernel shards combine exact finite-field masks for the bounded surface; hostile regeneration and axiom audits pass |

---

## 3. The 11 constant cases and the bound table

```text
(k,q): (5,3) (6,3) (7,4) (8,5) (9,6) (10,6) (11,7) (12,8) (13,8) (14,9) (15,10)
bound:  220   220   220   220   220   266    7029   2695   4467   2811   2915
```

[E] Evidence for `ConstantCaseBoundHypothesis` (exact scans, q-relaxed
residual form = the form used in Lean):

```text
k = 5..9:   d ≤ 1e8,  zero three-row survivors with d ≥ 221
k = 10:     d ≤ 3e8,  3 survivors, max d 266
k = 11:     d ≤ 1e9,  7 survivors, max d 7029
k = 12:     d ≤ 3e8,  5 survivors, max d 2695
k = 13:     d ≤ 1e9,  7 survivors, max d 4467
k = 14:     d ≤ 3e8, 10 survivors, max d 2811
k = 15:     d ≤ 3e8, 13 survivors, max d 2915
```

All 45 survivors fail the row-4 residual (banked). Two-row survivors continue
to appear at all scales but thin out; three-row survivors stop.

---

## 4. Literature status (verified 2026-07-09)

- erdosproblems.com/686 is OPEN; community results for N = 4: k = 2 (Tao),
  k = 3 (vilc, via Bennett's effective irrationality measures + Chan's gap
  principle), k = 4 (reduction to k = 2), k = 6 (Kovač sketch). k = 5 is
  explicitly open. The banked corpus already exceeds this.
- Fixed-k finiteness of `∏(m+i) = 4·∏(n+i)` IS known:
  Beukers–Shorey–Tijdeman 1999 (via Rakaczki 2003, Thm B) — but
  Siegel-ineffective; no bound exists to cite or formalize.
- No congruence obstruction exists for (N,k) = (4,5) (MalekZ): admissible
  congruential solutions exist for every modulus. Archimedean window input is
  unavoidable.
- Effective irrationality measures for 4^{1/k}: only k = 6 (2.45, Bennett),
  k = 12 (≤ 4.9), prime k ∈ [17,347] (Bennett 2001 Thm 7.1). Nothing for odd
  k ∈ {5,7,9,11,13,15}.
- Uniform-in-k finiteness (our large branch) is a special case of the open
  Erdős conjecture behind problem #388. Strongest citable effective input:
  Laishram–Shorey `P(∆(x,k)) > 1.95k` (elementary + explicit prime bounds).

---

## 5. Even k: the Kovač/Runge route and the exact bridge obstruction

For even `k=2r`, set `w=2m+k+1` and `v=2n+k+1`.  The equation becomes
`S_r(w)=4*S_r(v)` with
`S_r(X)=product_{j=1}^r (X^2-(2j-1)^2)`.  The general rational polynomial
part of `sqrt(S_r)` and its explicit tail threshold are now Lean-banked, as
are the complete rows `16,18,20,24,28,32`.  The older parity traps close the
small even rows through `14`.

[X] The new all-parity quadratic strip does **not** compose with the canonical
Runge threshold, even after parity weighting or fixed-divisor rescaling.
If `Q_r` is the monic polynomial part, its first correction is exactly

```text
[X^(r-1)]Q_r = 0,
[X^(r-2)]Q_r = -r*(4*r^2-1)/6.
```

Thus the current coefficient threshold is already greater than
`r*(4*r^2-1)/3`, while the quadratic strip reaches only
`d<=k^2/18=2*r^2/9`; these ranges never overlap.  A decisive live row gives an
exact route falsifier.  At `k=34,r=17`, the quadratic complement begins at
`d=65`.  The exact bracket
`1041616^34<4*1000000^34<1041617^34`, combined with both necessary equation
power windows, forces `1528<=n<=1560` and hence `3091<=v<=3155`.
The denominator-cleared Runge data have denominator `32768`, deficit degree
`16`, leading deficit
`188162318421570695167361039564800`, coefficient norm
`6375143223540100100577353665680166719158383844425`, and exact odd-center
fixed divisor `255`.  Even the optimistic leading-only lattice comparison
requires
`v>=225186598141623936273745117`; the full norm requires
`v>=7629565936566640936850578356790181141762389`.
These exact values falsify this bridge, not the original equation.

[R/E] **The row `k=22` is now unconditionally kernel-closed.**  At `k=22`,
`even22_small_gap_impossible` closes every `22<=d<=249`: the quadratic strip
covers `22<=d<=26`, and 28 ordinary-kernel shards discharge all 16,859 exact
ratio-window pairs for `27<=d<=249`.  For `d>=250`,
`even22_large_gap_reduction` proves that every hypothetical solution yields
integers `w,v` and an odd natural `t` satisfying

```text
S(w)=4S(v),  T(w)-2T(v)=-33t,  1<=t<=3795146531.
```

Parity and mod 23 leave exactly 330,012,742 candidates.  The regenerated
certificate partitions the exact prime-mask cover into 24 packed shards, with
small ordinary-kernel map modules proving local support before the shard-level
union.  `no_gap_solution_four_even_twentytwo` combines that cover with the
small-gap theorem and the exact reduction, closing every admissible `d>=22`.
The full packed build succeeds, an independent hostile audit recomputes every
mask and coverage digest, and `#print axioms` reports only `propext`,
`Classical.choice`, and `Quot.sound`.  No `native_decide`, `sorry`, `admit`, or
explicit axiom occurs in the generated dependency cone.

[C] A viable next Runge step must cancel the first omitted Laurent term
before the integer-size trap and obtain a new gcd or owner-correlation gain.
Parity and a sharper general interval-lcm constant cannot change the decisive
exponent.

---

## 6. Large branch: what is actually known

[X] Fixed-prefix boundary (rows 1..15 ⟹ row 16 fails): FALSE at
(984, 3177026, 4480). Both known deep clusters die by the same mechanism —
a single prime `p | n+j` with no multiple of p in the row-j interval
`[d+1−j, d+k−j]` — but at different rows j (16 resp. 17).

[C] Open target: `LargeKEscapeHypothesis` (some row j ≤ k fails). The banked
mechanisms (`row_escape_of_large_prime_in_n_add`, transition package,
smoothness lemmas) remain usable per-row. Gross log-mass counting does not
suffice (supply ≈ 2k·log d exceeds demand ≈ k·log(0.72kd) always); the
rigidity is finer, Grimm-problem-adjacent.

[E] All rows-1..15-passing points with k ≤ 3000, n ≤ 10^7: exactly two
clusters (n = 48502, k ∈ [244,260]; n = 3177026, k ∈ [984,1050]); every point
fails some row j ≤ 17.

---

## 7. Refuted targets (do not revisit)

- [X] `RowSixteenBoundaryHypothesis` — see §0.
- [X] Bare residual obstruction without the window ((k,q,d,r) = (7,4,339,162)).
- [X] Affine-saturation-only route (k=7, d=302, u=135).
- [X] Polynomial prefixes a ≤ 14 and row prefixes j ≤ 15 (survivor clusters).
- [X] Pure congruence obstruction for (4,5) (admissible for every modulus).
- [X] Direct quadratic-strip/Runge-tail composition, including parity and
  fixed-divisor rescaling: the exact `k=34` coefficient audit above misses the
  first complement center by more than twenty orders of magnitude.

---

## 8. Current proof obligations, ordered

1. [open, Target 1] Prove `OddThueTail1000Hypothesis`: for each
   `k in {5,7,9,11,13,15}`, exclude every exact equation with
   `d >= 10^1000`.  Every survivor already carries
   `AllOwnerAssemblyThirdNonzeroCertificate`; the certificate-plus-equation
   contradiction is target-strength and is not counted as a reduction.  A
   supplied exactly-three factorization at the center and a reflected pair is
   now excluded.  The fifth-quotient configuration is now constructed for
   arbitrary selected-three geometry; additional live owners can only be
   absorbed by enlarging the loss and forfeiting its bounded estimate.
   Simultaneous magnitude/gcd coupling and additional live owners remain.
   A new proper-support jet route is now exact at `k=5`: puncturing the full
   owner grid gives 25 order-17 jet systems of shape `408 x 415`; after
   saturating the integer kernel and LLL-reducing standard coefficients, the
   worst basis norm has 70 digits and satisfies the corrected `10^1000`
   budget with 882 decimal orders to spare. Exact local ambient division
   shows all 175 denominator-clearing multipliers are one. An independent
   resultant audit proves that, for every puncture, a selected subfamily has
   exactly the prescribed punctured grid as its on-curve base locus and no
   additional common zero; 24 punctures need two sections and the central
   puncture needs five. Thus all computational obligations for the `k=5`
   proper-support arm pass. The block/Lagrange decomposition
   shows that only one or two top layers are genuinely dense, reducing the
   prospective `k=15` residual to `448 x 540`. The corrected arithmetic
   composition is now Lean-banked:
   `no_k5_tail_solution_of_proper_canonical_support` reduces the full
   proper-support conclusion to the finite `K5PunctureJetWitness` payload,
   and `Erdos686SparseJetCertificate.lean` proves the generic local
   divisibility and coefficient-height bounds for sparse integral sections.
   The full `k=5` proper-support theorem is now ordinary-kernel banked.
   `Erdos686K5AllPunctures.lean` assembles all 25 endpoints: 24 two-section
   certificates and the exceptional central five-section certificate.
   The split proof surface contains 1,272 local-row modules, 477 dense
   elimination leaves, 53 thin elimination assemblies, and 25 Bézout
   kernels. Every generated `K5P` source is free of `native_decide`, `sorry`,
   and `admit`. The theorem
   `no_k5_tail_solution_of_proper_support` proves that any `k=5` solution
   with `d>=10^1000` has complete canonical owner support. The independent
   hostile verifier, full repository build, 807-theorem manifest audit,
   1,286-declaration axiom gate, and regeneration of 807 attestations all
   pass. The all-puncture rows above `k=5` and every complete-support case
   remain open. At `k=7`, puncture `(1,1)`, all 16
   local quotient multipliers are also one and the denominator-cleared
   215-digit norm retains 570 decimal orders. Two exact degree-`1806`
   curve-section resultants have precisely the degree-`1776` prescribed
   punctured grid as their gcd, so the constructive base-locus bridge passes
   there as well.
   A separate direct `k=5` genus-two lane is now exact through the full
   Mordell-Weil group. Lean banks the reduction to
   `y^2=9x^6+64x^5-200x^3+64x+144`, the rational inverse relation, and the
   unique zero-denominator point `(4,300)`. Exact Magma V2.29-8 certificates
   give `Sel^(2)(J/Q)=(Z/2Z)^5`, trivial torsion, and `J(Q)=Z^5` with
   `proved=true`. Five supplied affine point differences have determinant
   `-1` in the proved basis, so rank, finite-index generation, and saturation
   are closed. `TwoCoverDescent` yields eight locally soluble covers. The
   pair-sum resultant has an irreducible degree-15 factor of multiplicity
   two; over that field the sextic factors `2+4`, all eight elliptic quartic
   covers have known points, and the 34 known affine points occupy the eight
   classes with sorted counts `[2,4,4,4,4,4,6,6]`. The remaining `k=5`
   obligation is genuine rational-point completeness: prove that the 36 known
   projective points exhaust the curve by elliptic Chabauty/two-cover
   analysis or a high-rank Mordell-Weil sieve. `RationalPointsGenus2`
   currently returns `proved_all=false`, so the bounded census is not counted
   as closure. The high-rank sieve now contains fourteen exact packets
   through `p=59`. All 34 affine and both infinity vectors survive, and all
   36 known projective points occupy distinct combined classes. Exact HNF and
   primary-component contraction give combined lattice index
   `42343330413030424784735169272832000000`, surviving coset count
   `516168751624777728`, and density
   `5383303927/441613360315210220469081750000`. A rational Sylvester audit
   plus a Magma entry enclosure certifies the height-pairing lower eigenvalue
   `43/200`. The upper comparison is now exact: the Kummer embedding is
   `(A^2*C:A^3:0:6*B+8*A*C^2+18*C^3)`, the duplication-quartic maximum
   coefficient L1 norm is `1077517601`, and
   `hhat([P-P0]) <= 3*log(H(P))+log(32)+log(1077517601)/3`.
   All five basis generators, eight curve-point differences, the
   factor-of-two normalization, `A=0`, and both infinity fibres are audited.
   At `H(P)<=20000`, the resulting exact coefficient ball has
   `sum m_i^2<=280`; all `6,944,265` vectors reduce to exactly the 36 known
   projective vectors, already using packets through `p=23`. The remaining
   global obligation is an independent absolute bound for `H(P)` or an
   equivalent exhaustive integral-point/two-cover analysis. The integral
   lift is now kernel-banked in the exact coordinates
   `(v:10v^3-40u^3-16v+64u:2u)`, together with `u<v<2u`, `|B|<46u^3`,
   and the exact cubed bound `H(P)<4u`. Combining `d=v-u<u` with the
   existing small-core and Farey certificates proves the stronger exclusion
   `u<10^1000`; the requested `u<=5000` range is only a corollary. On the
   surviving tail, Lean proves
   `|v/u-4^(1/5)|<C/u^2` with exact
   `C=1702608047245783157000000/3031424763402858403856401<0.562`.
   This is above `1/2`, so the simplest Legendre criterion does not close
   the tail. The normalized square cover is the already audited genus-6
   original curve with Q-simple Prym, and an unordered degree-10 `3+3`
   field leaves the sextic irreducible. Complete support plus `G|24` now
   forces a fully owned lower row and a fully owned modified upper column,
   crossing at a nontrivial canonical cell. The residual-profile split is
   sharper in the proper-divisor branch: if `G!=24`, Lean forces two
   distinct fully owned lower rows and two distinct fully owned modified
   upper columns. Thus only the exact exceptional profile `G=24` can have
   a unique unit on either side. Both exceptional vectors are now
   kernel-classified: each side either still has two units, or its multiset
   is exactly `{1,2,2,2,3}`. The elimination can use four independent global
   equations off the exceptional profile and exact 2/3-adic placements on
   both sides of it. Pairwise coprimality now also gives an exact crossing
   gcd theorem: the gcd of any canonical row-cell product and column-cell
   product is precisely their crossing cell; for fully owned rows and
   modified columns this is the gcd of the corresponding arithmetic terms.
   Off `G=24`, the two full rows and two full columns are now assembled into
   a `2 x 2` grid of four nontrivial exact crossing gcds, exposing multiple
   simultaneous global equations rather than a single crossing. Since at
   least one of the two columns is not distinguished, one original upper
   consecutive term has two nontrivial pairwise-coprime exact gcds with two
   distinct lower consecutive terms. In the remaining branch where both
   residual vectors have the exact exceptional multiset `{1,2,2,2,3}`, Lean
   now proves that both block bases `n` and `n+d` are odd and hence that the
   gap `d` is even. The three residual twos on each exceptional side are
   placed exactly at indices `1,3,5`; in particular the distinguished
   divided-by-four upper index is odd, its modified residual equals two, and
   the original distinguished upper term is divisible by eight. This is a
   strict parity and placement narrowing of the exceptional profile, not a
   closure of the k=5 tail. The even positions are now exact as well: the
   lower residual pair at positions `2,4` is `(1,3)` or `(3,1)` with its
   orientation determined by `n mod 6`; the upper side has six exact CRT
   placements combining `t`, `(n+d) mod 24`, and its even residual pair.
   Same lower/upper orientations force `d mod 6=0`, while crossed
   orientations force `d mod 6=2` or `4` with exact orientation.
   Full owned rows and columns now divide their complete shifted-diagonal
   products, and at every nondistinguished crossing Lean identifies
   `gcd(n+j,d+i-j)` exactly with the crossing owner. The proper-global branch
   supplies two ordered fully owned lower rows with coprime bases, offset
   between one and four, and independent adjacent equations. The exceptional
   branch is reduced to the four crossings `(2,2),(2,4),(4,2),(4,4)` with
   gap residues `0,2,4,0 mod 6`; every cell in the unit row is at least five,
   coprime to six, and divides its own shifted diagonal, while both full
   row and column product divisibilities remain available. This is an exact
   simultaneous row/column narrowing, not a closure of the k=5 tail.
   An invariant
   scout still ranks
   `p=107` first only if a new finite height bound later makes another packet
   useful.
   The complementary normalized cell-local higher-jet route is now closed
   at all orders by a kernel-checked exact identity:
   `C*Q_i(Y)=4R*Q_j(X)`. Its rational ratio form is explicitly a lower local
   quotient divided by an upper local quotient, so every owner-adic
   logarithmic correction is a row term minus a column term. This does not
   affect the global punctured-grid interpolation certificates. Complete
   support must use simultaneous global row and column arithmetic instead.
2. [open, Target 2] Prove `LargeKSmoothHypothesis`, equivalently exclude the
   remaining `k>=16,d>=k` equations after the closed rows, universal even
   tails, the all-parity quadratic strip, exact ratio band,
   component/grouped-owner ceilings, and prime-power owner and boundary
   exclusions.  Every survivor satisfies `k^2<18*d`.  Every surviving exact component
   `p^e || d` with `p^e>=k` must also satisfy the strict reverse of its
   canonical `p=2`, `p=3`, or `p>=5` dominance inequality.  In an even row,
   any complete large-base reflection-center component also obeys the exact
   cofactor-quotient bounds above, but the quotient `a/gcd(a,d)` remains
   unbounded.  The equation itself supplies the smoothness premise.
   The valuation-concentration lemma and the full all-`k` canonical
   pairwise-coprime owner matrix are now kernel-banked. The `p=2` allocation
   against the original maximal upper valuation is valid without reselection:
   `S-(F-2)=(S+2)-F` converts it directly to the upper omitted-valuation
   bound. The exact small-prime mass theorem is also kernel-banked:
   `B_{<=k}(k,n) <= (k-1)!*(n+k)^pi(k)`, together with the exact
   small/large-prime decomposition and the cross-multiplied high-prime mass
   lower bound. Lean chooses a distinguished upper column divisible by four,
   matches every prime including two, and assembles the exact
   two-dimensional system.  `exists_canonicalOwnerSystem` proves
   `G|(k-1)!`, `product r_j=product s_i=G`, the exact lower and upper
   factorizations, pairwise coprimality, `A_ji|d+i-j`, and
   `G*product A_ji=B(k,n)`.  The resulting cleaned support is not assumed
   connected. A normalized-matching prose package has been audited in
   `compute/campaign686/large_k_normalized_matching_import_report.md`.
   Its normalization is valid only with the explicit high-prime coprimality
   needed to cancel modulo composite owner squares. That repair is now
   kernel-banked in `Erdos686NormalizedMatching.lean`: it proves the exact
   factorial-to-normalized identity, the equivalent upper-term form, and the
   composite-square cancellation from high-prime support plus a prefactor
   dividing `(k-1)!`. The exact reduced-binomial inequalities are also
   kernel-banked: both `C_i/gcd(C_i,C_j)` and `C_j/gcd(C_i,C_j)` are at most
   `binom(k-1,|i-j|)`. The factorial owner-square specialization is no longer
   open: Lean now proves `C_h*F_h=(k-1)!`, constructs the common prefactor
   dividing `(k-1)!`, and derives the exact normalized square congruence for
   every composite high-prime owner cell. The row-binomial lcm identity is
   still open. The direct large-k secant audit has also started from the
   exact signed integer determinant. `two_owner_secant_dvd` is now
   kernel-banked: two coprime composite owner moduli divide the same secant
   form after explicit recentering at the two owners, so their product
   divides it. No primality shortcut is used. The zero-secant layer is now
   kernel-banked as well. At the exact integer gap threshold
   `708827*k^2 < 5000000*d`, Lean derives the strict local scale from the
   sharp `23*k*d < 35*n` ratio, including exact handling of `k=16,...,22`.
   A zero secant then has offset gap one, row gap beyond half the row span,
   and equal signs. On support with injective row-diagonal offsets this gives
   a zero-secant graph of maximum degree one. The high-risk controlled
   pairing claim is now repaired and kernel-banked with a fully explicit
   terminating algorithm. It recursively consumes four sorted owners and
   uses the exact six-owner terminal block when parity requires it. Lean
   proves permutation coverage, no duplication, unmatched count `m mod 2`,
   pair count `floor(m/2)`, nonzero selected secants, and total offset gap at
   most `4*(k-1)`. This proof does not rely on the source package's vague
   repair-block sentence. The exact product consequence is also
   kernel-banked: division-free n-ary AM-GM, the paired product, the parity
   owner, and the full denominator-cleared matching bound are proved with
   ordinary kernel arithmetic. Given an integer interpolation polynomial,
   Lean additionally proves every owner divides the common resultant and
   combines pairwise-coprime owners to obtain the full product divisor.
   The low-degree bivariate osculation audit is now banked through its exact
   foundational interface. The concrete total-degree monomial basis has
   cardinality `binom(r+2,2)`, the selected least degree supplies at least
   `4m+1` coefficients, and the corrected constraint matrix has `2m` rows:
   one value row and one normalized directional-derivative row per support
   owner. Lean identifies both row dot products exactly. The source package's
   `4m`-row bounded-family claim is rejected; the intended
   `N_r-4m+1` family must instead come from the separate finite-cube fiber
   argument applied to the actual `2m` rows. The first exact finite-cube
   layer is also kernel-banked: translated row images lie in
   `(D*L+1)^(2m)` boxes, equality of codes is exactly equality of matrix
   images, and the corrected square-radius inequality produces a nonzero
   integer kernel vector with every coordinate bounded by `D`. Lean also
   proves the terminal `(D+1)^t` cube-subset bound once restriction to `t`
   coordinates is injective, constructs exactly `finrank` pivot coordinates
   detecting every rational subspace vector, and derives the sharp
   `(D+1)^finrank` affine-cube intersection bound. A strict large fiber then
   supplies `N-2q+1` rationally independent bounded integer kernel
   differences. Specializing `q=2m` gives exactly the required
   `N-4m+1` family for the corrected osculation matrix. This is a genuine
   finite-cube independence proof, not a nullity count. The exact normalized
   value and directional matrix entries are now also bounded by
   `3*r*2^k*k^(r-1)` under the already banked reduced-binomial coefficient
   bounds, giving the advertised independent-family coefficient radius
   `12*N_r*r*2^k*k^(r-1)`. The repaired barycentric fallback is also
   kernel-banked through its node values, exact denominator-cleared
   derivative system, and both degree branches. Lean proves that the
   degree-`k*|S|` coefficient is `(c+v)^k-4v^k` and, over the integers for
   `k>=3`, it vanishes exactly when `c=v=0`; it is not mislabeled as an
   unconditional leading coefficient.
   The exact root identity and its first effective branch are now banked:
   each support fraction lies in the strict `(2k-1)/(n+1)` envelope around
   `d/n`, and when the total weight vanishes but `c` does not, Lean proves
   `n+1 < (2k-1)*sum|w_j|/|c|`. The final `v!=0` rearrangement remains open.
   The local-to-global square layer is now closed as well. Lean proves the
   exact bivariate first-order Taylor congruence modulo `P^2`, audits the
   displacement from `(j,rho)` to `(-n,-d)` as
   `(-n-j,-d-rho)`, cancels the normalized coefficient modulo a composite
   owner square only using explicit coprimality, and combines pairwise-coprime
   owners to obtain `M^2 | F(-n,-d)`.
   The post-cancellation algebraic split is banked at its exact current
   strength: a primitive integral common-factor presentation specializes to
   either a vanishing common component or simultaneous quotient zeros; a
   unit factor forces the quotient branch, whose rational quotients have no
   common nonunit factor. No multivariate Bézout or `r_m^2` intersection
   bound is claimed yet.
   The nonzero barycentric residual is also kernel-banked:
   `Lambda*(U(-n)+dV(-n))=(-1)^m*M*S_S`, and the unscaled global square
   divisor implies `M|S_S` with no coprimality assumption on `Lambda`. Its
   exact height is bounded by
   `(|gamma|+sum|omega_j|)*B^m`. Row-cofactor `k`-smoothness is exposed only
   behind the precise full-large-part owner hypothesis, not inferred from a
   partial matching owner.
   The adversarial fixed-divisor correction is banked without the false claim
   that a gcd inherits all support jets. Lean proves the exact product rule
   and all three local factor-allocation cases. It defines the canonical
   bounded space `V_B` as the span of every bounded integral lattice point,
   proves `V_B <= K_r`, extends cancellation to that span basis-independently,
   and proves `dim K_r >= binom(r+2,2)-2m`. The full-space dimension
   hypotheses imply the exact degree inequality
   `e*(2r-e+3) <= 4m`, but this is not transferred to `V_B` without a
   spanning theorem. A fixed-divisor universal-property presentation is
   invariant under bases, generating families, and associated scalar
   normalizations; its residual family has no common nonunit factor. A genuine
   multivariate fixed divisor is now constructed for every nonzero
   finite-dimensional polynomial space, including every nonzero bounded
   osculation polynomial space. The exact bounded-kernel entry/column
   hypotheses now prove that this space is nonzero and therefore supply the
   fixed divisor and quotient presentation without an extra nonzero
   assumption. Residual division is linear, and the residual quotients of a
   finite basis have unit gcd; this still does not select a coprime pair.
   Effective concrete computation and extraction of a coprime residual pair
   remain explicit certificate obligations.
   The moment-ladder core is also banked: the exact generating recurrence,
   lower-moment `X^q` factorization, first surviving coefficient,
   rational `Delta_q` zero classification, Vandermonde termination, the
   exact degree-`k|S|` reflection bridge to the original `matchingPhi`, and
   the actual `Delta_q` coefficient in both the reflected and original
   matching products. If `Delta_q` is the first nonzero block, Lean now proves
   `deg matchingPhi = k*(|S|-q)` and, after a certified
   `matchingPhi=W_S^2*Q` factorization,
   `deg Q = k*(|S|-q)-2|S|` exactly. For distinct integral nodes, nonzero
   weights, the essential zero branch `mu_0=0`, and `k>=3`, finite
   Vandermonde termination now produces a least `1<=q<=|S|` with
   `Delta_q!=0`; hence `matchingPhi` is nonzero and has that exact degree.
   Finally, a support-dependent effective intersection
   certificate now has a kernel interface covering integer shear, nonzero
   resultant roots, fiber-gcd roots, finite candidate lists, a root bound,
   and original-curve verification. No concrete support instance or claim
   that its current size beats the surviving scale has been made. The
   remaining large-k obligation is still to eliminate the canonical support,
   not merely to repackage it.
3. [pipeline] Keep `FinalResidual686Hypothesis` explicitly audited as
   equivalent packaging via `finalResidual_iff_tail1000_and_smooth`; do not
   report its isolation as mathematical progress.  Regenerate the manifest
   and attestations after every newly closed row.

---

## 9. Terminal assessment: what blocks the full solve (2026-07-13)

The two open hypotheses are mathematical gaps, not formalization gaps.

**The six odd tails.**  The finite Farey machinery now reaches the strict
boundary `d < 10^1000`, but any finite extension merely moves that boundary.
The live branch begins at equality and has at least three cleaned prime
owners, exact short-window residuals, and simultaneous nonzero second and
third obstructions.  The 3,024-position fourth/fifth ledger and its
equation-derived ratio window are now ordinary-kernel Lean, and the direct
selected-three bridge constructs the local configuration identities and
`P|N`.  All 1,008 cyclic systems can nevertheless still be simultaneously
nonzero and sign-mixed.  The checked
congruence, sign, resultant, and finite-order Taylor routes all have exact
falsifiers unless the full equation/window is used.  No quantified bound
currently closes this joint branch.

**Large-k double smoothness.**  The equation forces both blocks to be
`(d+k)`-smooth and supplies all row divisibilities.  Universal even-row Runge
certificates remove every even tail above an explicit threshold, while
separate finite-field certificates close several complete rows.  The
all-prime high-component theorem additionally forces the strict reverse of
the three exact component thresholds above, and the quadratic theorem forces
`k^2<18*d`.  In even rows, reflection-center components satisfy the exact
gcd/cofactor quotient bounds, but the gap-coprime quotient is unbounded.  The
remaining odd rows and finite even strips above the quadratic boundary still
require a uniform argument.  The exact `k=34` audit shows that the canonical
Runge threshold, parity weighting, and a general interval-lcm improvement do
not bridge this range.  Gaps whose components all miss the component
thresholds survive, and gross mass, pure congruences, and fixed row-prefix
caps are falsified routes.

The exact formal handoff is the equivalence

```text
FinalResidual686Hypothesis
  <-> OddThueTail1000Hypothesis and LargeKSmoothHypothesis.
```

No theorem-strength lemma is treated as a completed solution.
