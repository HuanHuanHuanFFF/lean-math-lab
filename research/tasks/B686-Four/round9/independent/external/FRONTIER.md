# FRONTIER.md — the Erdős portfolio

One page per campaign state: what is proved (kernel-verified, axioms ⊆
`[propext, Classical.choice, Quot.sound]`, attested in
`attestations.json`), what is open (stated exactly), and what is
refuted (with witnesses — do not re-attempt). This file is the master
dashboard, the source for external proof-attempt prompts (`codex/`),
and the intended seed corpus for the Vela frontier ingest.

Verification discipline (applies to every claim entering this repo):
generation is untrusted; claims pass through (1) exact-arithmetic
reproduction, (2) adversarial audit against the falsification record,
(3) Lean formalization behind the axiom gate, (4) attestation. See
`compute730/audit.md` for the intake-audit template.

---

## Erdős #686 — N = 4 has no equal-length block-quotient representation

Status: OPEN upstream; here packaged as one exact residual hypothesis
equivalent to the two updated targets.
Docs: `PROGRESS_Erdos686.md`. Modules: `ErdosProblems/Erdos686*.lean`.

UNCONDITIONAL: every admissible `k ≤ 15` case with `k ≤ d < 10^120`
(Runge + mod-p covers for even k; Farey descent for odd k), and now every odd target row throughout
`10^120 ≤ d < 10^1000`; the k=14 case for all d; and the complete large rows
`k=16,18,20,22,24,28,32`.  The theorem
`erdos686_false_of_finalResidual` is the
conditional terminal reduction from the still-open equivalent residual.

NEW BANKED RESTRICTIONS: exact p-adic square localization for every
`p^e|d`, `p≥k` (cubic at an odd center), giving
`p^(2e)<A_k d` with `A_k=14,17,23,26,29,35`; hence dominant components
are impossible.  Valuation concentration supplies the missing small-prime
case: for every prime base, a whole gap `d=p^e≥10^120` is impossible in
all six odd rows.  The exact loss is bounded by
`14! * 35 * 13^30 < 10^120`.  Reflection compression is kernel-checked.
The exact equation also has a global quadratic lift: with
`X_i=3(n+i)-d`, coefficient cancellation in
`prod(X_i+4d)=4 prod(X_i+d)` gives
`d^2 | prod_i X_i` with no prime-base or localization exception.
Global residual concentration now cleans every prime-power component,
including bases `2` and `3`, into a square divisor of one residual with an
explicit loss.  Combining two such components with second and third local
Taylor lifts closes **every** gap having exactly two distinct prime divisors
below `10^120`; no `p,q>=k` hypothesis remains.  Thus any surviving odd-tail
gap has at least three distinct prime divisors.  The same obstruction
calculus closes an arbitrary supplied pair of coprime cleaned owner buckets
under the exact all-prime loss table
`G_k=108,1620,136080,1224720,242494560,18914575680`: an exact solution
equipped with `HasAtMostTwoGlobalResidualOwners` has `d<10^120`.  This is a
strict conditional interface, but the finite prime-factor grouping step is
now kernel-banked: global concentration constructs one certified assignment,
and any two-index cover of its nonzero cleaned owner range constructs the
predicate and contradicts the cutoff.  Consequently every target-size
solution has a certified assignment whose nonzero cleaned range cannot be
covered by two indices.  The finite negative-cover argument is now
kernel-banked through an explicit witness: in that same assignment there are
three distinct prime factors with nonzero cleaned exponents, pairwise-distinct
owners, pairwise-coprime cleaned powers, factor divisibility, and square
residual divisibility.  This is an at-least-three witness, not an
exactly-three decomposition when more owners remain.  For three cleaned
residual buckets, exact second-
and third-order eliminations are kernel-banked and all
1,035 target index triples have distinct zero slopes.  The exact fourth local
lift is now banked as well: each cleaned component supplies one cubic
owner-adic obstruction, and the three cyclic obstructions compose modulo
`P^3,Q^3,R^3`.  A Hensel/CRT family with 121-digit gap satisfies the square,
moment, and all local congruences through fourth order while failing both the
equation and short window, so the exact remaining three-bucket node is
archimedean/short-CRT rather than a finite resultant.
The former zero-obstruction wrapper is now repaired and hostile-audited:
for a supplied bounded-loss three-bucket factorization at target size, none
of the three composed second obstructions can vanish.  Its historical
noncompiling source audit remains recorded separately; only the repaired
source is attested.  The surviving three-bucket branch therefore has all
three second obstructions nonzero.  Fourth-to-third quotient cancellation,
the fixed-coefficient reduced congruence, opposite-cofactor overlap, the
three-row lattice identity, and generic two-zero packing are also
kernel-banked and independently hostile-audited.  Exact arithmetic closes
all 1,420 noncentral two-zero placements through `k=13` and 901 of 1,183 at
`k=15` at the historical `10^120` cutoff.  Those 282 old numerical
survivors, the one-zero cells, and the center-zero cells are no longer live:
the exact-ratio theorem proves every composed third obstruction nonzero from
the equation, and its quotient-form corollary proves every named third
quotient nonzero.  Independent arithmetic confirms that `10^131` already
closes all 2,603 historical noncentral two-zero placements, but the live
proof uses nonvanishing rather than this finite scan.  The old 2,381-cell and
boundary sign census is therefore superseded.  After the 27 reflected
triples are removed, the exactly-three branch consists of 1,008
nonreflected, all-three-nonzero, sign-mixed geometries.
At the upgraded odd-tail cutoff, the separate center/reflected determinant
route now closes every one of the 27 reflected pairs for a supplied exact
three-bucket factorization: Lean derives the center and endpoint packing
bounds from the equation, and exact arithmetic puts every cutoff below
`10^200<10^1000` (12 old pairs and 15 new).  This does not construct an
exactly-three decomposition when more live owners remain, nor does it turn
an arbitrary three-owner geometry into a center/reflected one.
The fifth lift is now normalized exactly rather than treated as a possible
fixed resultant.  Lean proves `R5(d)=27*K4+d*R1+d^2*R2`; after writing
`d=P*M` and the reduced fourth numerator as `P*w`, the reduced fifth square
divisibility is equivalent to `P|27*w+M*R1*g^4`.  The new fourth quotient
`w` is not controlled by the third-quotient lattice.  Lean now also proves
the exact opposite-product bound, the induced bounds
`|w|<W*g^4*M`, `|N|<V*g^4*M`, the nonzero-divisible consequence
`P^2<V*g^4*d`, and the eliminant identity `d^4*P*N=g^4*J(X,d)`.
An ordinary-kernel certificate now covers all 3,024 cyclic positions of the
1,008 nonreflected triples; a generic membership equivalence characterizes
the generated set exactly as every valid nonreflected cyclic position in the
six target rows.  Lean derives the padded residual-ratio interval
and `X<=36d` from the exact block equation at the live cutoff, then proves
`w,N!=0`.  A direct selected-three bridge now constructs the local product,
third-obstruction, fourth-quotient, and normalized-fifth identities from an
actual factorization `d=gPQR`, the three exact square residuals, and the block
equation; in particular it proves the genuine consequence `P|N`.  Its
all-owner corollary absorbs every omitted bucket into an explicit enlarged
`g`, deliberately without inheriting the original bounded-loss estimate.
Thus the configuration package is no longer a private premise, but the three
simultaneous component-square bounds still multiply with the wrong gap
exponent.  An independent exact sign reconstruction finds
`sign(w)=-sign(C)` in all 3,024 positions and finds both canonical cyclic
weighted sign triples mixed in every one of the 1,008 geometries; the
all-nonzero mixed-sign branch is open.
Exact Hensel fixtures
at 121- and 1,004-digit gaps satisfy the entire congruence package while
failing the equation and upper window, so no congruence-only fixed
resultant is counted.
The complete owner grid is now assembled end to end.  From the equation and
target-size hypothesis, Lean constructs `AllOwnerAssemblyCertificate` with
one bucket for every index in `Icc 1 k` (unit buckets where empty), the
unchanged bounded cleaning loss, exact gap product, positive exact residual
cofactors and step-three differences, and every second/third finite-family
divisibility.  Every composed second obstruction is nonzero.  This removes
the earlier unproved passage from an at-least-three witness to a complete
owner decomposition.  It is a compositional bridge, not a resolution: the
joint nonzero obstruction/short-window branch still requires a new bound.
Two additional global moment identities use `2^2=4` to make
`d^3` divide explicit constant-plus-linear coefficient combinations.  They
are cubic combinations, not cubic divisibility of either residual product.
For `k≥16`, the
ratio window gives both `n>9d` and `kd<5n`.  Maximum-valuation owner
matching across the exact lower and upper blocks compresses the whole lower
block into `(k-1)!` times the lcm of
`d-k+1,...,d+k-1`, including all small prime bases.  The new exact interval
theorem says that, for any positive interval of `m` consecutive integers
with product `B` and lcm `L`,

```text
m!*L | B*lcm(1,...,m),       lcm(1,...,m) <= 4^m.
```

Combining it with the one-factorial compression and the equation-facing
ratio lower bound excludes every `k>=16,d>=k` equation with
`18d<=k^2`, for both parities.  Thus every live large-row solution satisfies
the strict complement `k^2<18d`.  Beyond that quadratic strip the host
interval still has `2k-1` possible differences.  A second composition uses
the reflection center `S=2n+d+k+1`: after the parity coefficient and one
factorial loss, every residual prime power lands on lower and upper owners
`i,j` and divides `|i+j-(k+1)|`.  Non-reflected pairs land in
`lcm(1,...,k-1)`; the exact surviving alternative is the reflected alignment
`j=k+1-i`.  Aggregating the lower landing proves the distinct necessary
divisibility `S | reflectionCoeff(k)*(k-1)!*reflectionDiffLcm(k,d)`.
Every lower term is
composite, and the
published Nair-Shorey `4.42k` theorem closes the paper-level wedge
`50(d+k-1)≤221k`; only the downstream implication is in Lean because
the external theorem itself is not formalized.

NEW EVEN-ROW AND VALUATION CLOSURES: for every `r≥2`, Lean now constructs
the rational polynomial part of the square root of the centered even-row
polynomial, clears denominators, proves the deficit nonzero from its simple
root at one, and produces an explicit coefficient threshold `M_r`.  The
equation is impossible for `k=2r` and `d≥max(2r,M_r)`.  Separate integral
traps and ordinary-kernel finite-field covers close every admissible gap in
rows `k=16,18,20,24,28,32`; the k=18, k=28, and k=32 covers are split into
bounded shards and use no `native_decide`.  Centered pairing and an exact seven-term root bracket
sharpen the large-row ratio window to `1218443kd<1853952n`.
The quadratic strip does not directly meet the canonical Runge tail.  If
`Q_r` is the monic polynomial part for `k=2r`, its first correction is
`[X^(r-2)]Q_r=-r(4r^2-1)/6`, forcing the current coefficient threshold above
`k^2/18` in every row.  The live row `k=34` is an exact route falsifier:
the quadratic complement begins at `d=65`, and the exact bracket
`1041616^34<4*1000000^34<1041617^34` together with both equation power
windows forces `3091<=v<=3155`.  Even the optimistic leading-only comparison
after the exact odd-center fixed divisor needs
`v>=225186598141623936273745117` (the full coefficient norm needs
`7629565936566640936850578356790181141762389`).  Parity weighting and a
better general interval-lcm constant therefore do not bridge the gap; a new
Laurent-term cancellation with gcd or owner-correlation gain is required.
At `k=22`, Lean closes the exact 16,859-candidate finite strip
`27<=d<=249` and proves that every hypothetical solution with `d>=250`
produces an odd `t` with `1<=t<=3795146531` on the displayed centered
`S,T` surface.  A regenerated ordinary-kernel certificate then empties all
330,012,742 large-gap candidates using exact prime masks through 953, split
across 24 packed shards and small local-support modules.  The full packed
build and an independent hostile regeneration audit pass, and
`no_gap_solution_four_even_twentytwo` exposes only the standard axioms
`propext`, `Classical.choice`, and `Quot.sound`.  Thus the complete row
`k=22`, for every admissible `d>=22`, is now unconditionally closed.
Every lower-block endpoint that is a prime power is impossible for every
prime.  At an interior position the exact split-factorial valuation criterion
is banked; in particular, every prime power with base `p>k` is excluded.
More generally a single large-base owner `a*p^A` is excluded for
`3707904a≤1218443k`.
Exact `p=2` and `p=3` fixtures show why the unrestricted interior statement
would be false.
Every large-row equation also forces the exact gap-component ceiling
`6p^(2e)<(13k-6)d+18(k-1)` for every `p^e|d` with prime `p≥k`.
The small-base gap is now closed at the component level as well.  For every
prime `p` and exact component `p^e || d` with `p^e≥k`, the Lean-banked public
dispatcher `no_four_solution_of_highPrimePower_component` excludes the three
canonical dominance ranges

```text
p=2:  (13k-6)d+18(k-1) ≤ 24*2^(2e-lambda_2(k));
p=3:  (13k-6)d+18(k-1) ≤  6*3^(2e-mu_3(k,e)-1);
p≥5:  (13k-6)d+18(k-1) ≤  6*p^(2e-lambda_p(k)).
```

The separate branch theorems for two, three, and primes at least five, plus
their residual-lift witnesses, all compile with exactly
`[propext, Classical.choice, Quot.sound]`.  Thus a surviving large-row
solution must satisfy the strict reverse inequality for every full component
at least `k`.  The corollary `no_four_solution_primePowerGap` also kernel-closes
the explicit family `d=p^(k+t)` for every prime `p`, every `k≥16`, and every
natural `t,n`.  This is a proper uniform restriction, not the full solution:
gaps whose components all miss their thresholds remain.
For any supplied positive modulus `q` with matched lower and upper owners
`n+i=a*q` and `n+d+j=(a+b)*q`, the sharp window first gives
`1218443*k*b<3707904*a`, hence `0<b<a`.  Lean then proves that `q` divides
the exact signed linear residual `D`.  If `D!=0`, this yields the explicit
cofactor-sensitive gap bound
`1218443*k*d < 3707904*a^2*(C_j+2*C_i)`.  If `D=0`, gcd normalization gives
`a=B*w`, `a+b=A*w`, `B<A<2B`, and `Z=w*q`; the next coefficient
`c2=A^2*E_j-4*B^2*E_i` is nonzero, `Z|c2`, and
`d≤(A-B)*|c2|+k-1`.  The abstract odd-center equality with ratio four is the
essential excluded boundary.  This dichotomy is arbitrary-modulus and
kernel-banked, but it is conditional on a supplied matched owner: no banked
theorem yet supplies a contradiction-producing owner or aggregates the
surviving nonzero-residual edges.
For an even row, a complete large-base component of the reflection center has
an additional unconditional cofactor restriction.  If
`H=2n+d+k+1=a*p^e`, `p>=k` is prime, and
`b=a/gcd(a,d)`, then Lean proves

```text
gcd(a,d) | (k-1)!!,
2*p^e < 5*(k-1)!!*b,
38*d < 5*((k-1)!!)^2*b^2,
1218443*k*d < 2317440*((k-1)!!)^2*b^2.
```

When `a|d`, `b=1` gives fixed-row exclusions.  In general no banked theorem
bounds the gap-coprime quotient `b`; this exact unbounded parameter is the
remaining obstruction to turning the center bounds into a uniform closure.
Consequently every whole gap `d=p^e` with `e≥2` is impossible, as is every
whole prime-power gap with `d≥3k`.  The same ceiling applies to every
complete cleaned owner bucket.  Thus a whole two-large-prime gap
`d=p^e q^f` with distinct bases `p,q≥k` must have distinct lower owners.
For every odd `k≥17`, Lean then constructs the uniform `A=3k+2` Pell and
second-lift certificate for that distinct-owner branch.  The classical
Sylvester--Schur theorem is now vendored and kernel-checked, and Lean proves
that the reflected harmonic value forced by simultaneous zero obstructions
is never integral for any odd `k≥5`.  The coefficient-algebra bridge is also
Lean-banked: for distinct owners, the two exact second obstructions cannot
vanish simultaneously.  Finally, in every
row `k=p^a-1`, `p≥5`, neither endpoint parameter is divisible by `p^a`.
These are proper restrictions; the surviving nonzero-obstruction Pell branch
and mixed small-prime gaps remain open.

CONSECUTIVE-PART MASS: stripping all primes above `k` preserves the exact
factor four, while the lower stripped product is divisible by `k!`; both
facts are kernel-banked.  The published Erdős-Lacampagne-Selfridge bounded
classification then forces a split rough-owner graph and, beyond an explicit
threshold, one spanning component or two even half-size components.  This
last classification is recorded paper-level because ELS Theorem 4 is not
formalized.  An exact reflection-compatible four-cycle survives ordering,
row divisibility, `n>9d`, and reflection, failing only the lower ratio window;
there is no hidden alternating-cycle determinant.

ODD-TAIL ROUTE AUDIT: a complete exact `k=5` counterfamily refutes the
first two primitive-scale congruences as an unbounded closure mechanism.
The surviving floor pin `g²=floor(5A₃/A₅)` is proper but does not control
the infinite CF tail.  Imposing the discriminant square reconstructs the
original smooth genus-6 plane quintic (genus-2 sign quotient), so that
cover is target-strength rather than a lower-genus reduction.
The normalized cell-local higher-jet program is also exhausted at every
order: the exact owner identity `C*Q_i(Y)=4R*Q_j(X)` and its quotient form are
now kernel-banked. Owner-adic logarithmic corrections are therefore always a
row term minus a column term. This verdict is local in one owner completion
and does not invalidate the global punctured-grid interpolation route.

OPEN CORE (the two arms below are equivalently packaged as the single
`FinalResidual686Hypothesis`):
1. `OddThueTail1000Hypothesis` — for odd k ∈ {5..15}, no solution with
   d ≥ 10^1000. Each tail extends ~1 decade per 2 CF terms; unbounded
   closure needs effective irrationality for 4^{1/k} below Liouville
   (none exists; hypergeometric method structurally fails at these k)
   or new CF structure. Watch: Calegari–Dimitrov–Tang holonomy program.
   The one- and two-distinct-prime-support subcases are now excluded for
   every prime base.  The remaining gap has at least three distinct prime
   divisors.  For arbitrary prime support, finite factorization, owner choice,
   coprime bucket assembly, and `g<=G_k` are now banked.  The certified
   assignment of any target-size solution has three explicit distinct
   nonzero cleaned owner witnesses; the remaining task is to contradict that
   multi-owner branch.  The extraction does not absorb further owner buckets
   into the bounded loss.
   A separate cleaned-grid jet route now passes every exact computational
   obligation for proper support at `k=5`. All 25 puncture spaces have rank
   `408` and nullity `7`; their saturated integral bases have worst
   coefficient norm 70 digits, all 175 local denominator multipliers equal
   one, and the height inequality retains 882 decimal orders. Exact
   curve-section resultant gcds show that selected sections have precisely
   the prescribed punctured grid as their common on-curve zero locus, with
   no positive common zero. The corrected arithmetic composition is now
   kernel-banked. The generic sparse checker proves the local high-order
   divisibility and coefficient-`l1` evaluation bounds, and
   `Erdos686K5AllPunctures.lean` supplies all 25 concrete endpoints. The
   emitted proof surface has 1,272 local-row modules, 477 dense elimination
   leaves, 53 thin assemblies, and 25 Bézout kernels; the central puncture
   uses five sections and every other puncture uses two. The theorem
   `no_k5_tail_solution_of_proper_support` proves that every hypothetical
   `k=5`, `d>=10^1000` solution has complete canonical support. All generated
   puncture sources are ordinary-kernel and contain no `native_decide`.
   The hostile verifier, full build, 807-theorem manifest audit,
   1,286-declaration axiom gate, and 807 regenerated attestations pass.
   A separate direct `k=5` quotient is Lean-banked:
   `y^2=9x^6+64x^5-200x^3+64x+144`, with the exact inverse relation and
   exceptional point `(4,300)`. The corrected exact arithmetic certificate
   gives `Sel^(2)(J/Q)=(Z/2Z)^5`, trivial torsion, and the full group
   `J(Q)=Z^5`. The five supplied point differences have coordinate
   determinant `-1`, so they are a saturated basis. The eight locally soluble
   two-covers are now frozen: an irreducible degree-15 pair resolvent gives a
   `2+4` factorization, all eight elliptic quartic covers have known points,
   and the 34 known affine points occupy all classes with sorted counts
   `[2,4,4,4,4,4,6,6]`. The exact remaining `k=5` obligation is to prove
   that the 36 known projective points exhaust the curve. The current Magma
   census says `proved_all=false`; bounded search is not closure. A custom
   rank-five sieve now verifies fourteen packets through `p=59`, including
   exact infinity vectors. Its combined HNF lattice has index
   `42343330413030424784735169272832000000`; exact symbolic intersection
   leaves `516168751624777728` cosets at density
   `5383303927/441613360315210220469081750000`. All 36 known points are in
   distinct combined classes. The height-pairing lower eigenvalue is
   certified as `43/200`, and the formerly missing upper bridge is now
   exact:
   `hhat([P-P0]) <= 3*log(H(P))+log(32)+log(1077517601)/3`.
   A certified `H(P)<=20000` lift ball has `sum m_i^2<=280`; exact
   enumeration leaves exactly the 36 known vectors, with packets through
   `p=23` sufficient. The weighted-projective integral lift is now
   kernel-banked and proves `u<v<2u`, `H(P)<4u`, and, by reconnecting
   `d=v-u<u` to the existing finite certificates, no admissible solution for
   any `u<10^1000`. Thus the requested `u<=5000` range is subsumed without
   using the conditional height sieve. On the exact surviving tail,
   `|v/u-4^(1/5)|<C/u^2` with
   `C=1702608047245783157000000/3031424763402858403856401<0.562`.
   Since `C>1/2`, this alone does not give the simplest Legendre closure.
   Classical Runge fails because there is one infinity orbit and a norm-one
   unit obstruction; the normalized square lift is the original genus-6
   curve with Q-simple Prym. A tested unordered degree-10 `3+3` partition
   field leaves the sextic irreducible, so it does not replace the existing
   degree-15 `2+4` field. Complete support and the residual bound `G|24`
   additionally force a fully owned lower row and a fully owned modified
   upper column crossing at a nontrivial cell. The remaining node is an
   unbounded global arithmetic argument, either exhaustive two-cover analysis
   or simultaneous complete-support row/column elimination. If a finite height bound is
   later obtained, the invariant scout ranks `p=107` first via the wholly
   new factor `11717`.
   Every `k>5` puncture family and all other complete-support cases remain
   open.
   In the exactly-three-cleaned-bucket slice, every second and third
   obstruction is nonzero, and the quotient-form theorem excludes every
   zero third quotient already from `d>=10^120`.  At the live `10^1000`
   boundary the center/reflected determinant removes 27 triples, leaving
   exactly 1,008 nonreflected all-three-nonzero geometries.  The 3,024 cyclic
   fourth/fifth positions are now ordinary-kernel certified, and the exact
   selected-three bridge constructs their quotient identities from the
   factorization and equation, proves `P|N`, and proves `w,N!=0`.  Absorbing
   additional owner buckets into `g` loses the bounded-loss estimate, and
   simultaneous nonzero mixed-sign exclusion remains open.  For arbitrary
   complete owner families of
   cardinality `4..15`, exact second/third obstruction composition with the
   original loss is now banked, and the equation-level lower residual bound
   excludes every vanishing composed second obstruction at target size.
   The surviving multi-owner branch has every second obstruction nonzero;
   direct obstruction-size bounds grow with the family and do not close it.
   The complete-grid bridge is now kernel-banked: every target solution
   supplies an `AllOwnerAssemblyThirdNonzeroCertificate`, including all empty
   and live owner buckets without absorbing omitted components into the loss,
   and every composed second and third obstruction is nonzero.  The
   exact remaining odd arm is to exclude the 1,008 nonreflected
   exactly-three supports and all 42,274 supports of cardinality at least
   four at `d>=10^1000`.  Equivalently, any target-row equation carrying the
   full certificate must have `d<10^1000`; this is target-strength and is not
   counted as a further reduction.
   For the complete owner grid, all 42,274 subsets and 2,576 four-owner
   circuits have now been checked exactly; every circuit is sign-mixed.  The
   unique product-square Vandermonde resultant retains the common cofactor
   product and becomes the degree-three truncation of the original equation.
   Its apparent fourth-power divisibility is therefore tautological from the
   `d^4` remainder and supplies no hidden cutoff.
2. The restricted large-row arm — no remaining k ≥ 16 equation after removing
   `k=16,18,20,22,24,28,32`, every even tail above its explicit `M_r`, the exact
   split-factorial prime-power families, and every large-base owner
   `a*p^A` with `3707904a≤1218443k`.  The equation itself already supplies
   smoothness, `k^2<18d`, `1218443kd<1853952n`, the component and grouped-owner square
   ceilings, the strict all-prime high-component thresholds, and the
   prime-power boundary restrictions.  In even rows, every complete
   large-base reflection-center component satisfies the displayed
   gcd/cofactor bounds, but `a/gcd(a,d)` remains unbounded.  The `k=34`
   coefficient audit rules out direct composition of the quadratic strip
   with the canonical Runge tail.  Row `k=22` is now closed by the exact
   ordinary-kernel packed cover above.  The census fixtures remain
   non-equations and do not discharge the other large-k rows.
   The all-`k` valuation-concentration core and its `p=2` external-factor
   arithmetic are now kernel-banked. So are the exact small-prime mass bound
   `B_{<=k}(k,n) <= (k-1)!*(n+k)^pi(k)`, the complementary large-prime
   factorization, and the cross-multiplied high-prime mass lower bound.
   Lean also selects an upper term divisible by four for every `k>=4` and
   proves that dividing this term by four converts the equation into equality
   of two ordinary block products. Every `p>k` occurring in the lower block
   has a unique full-exponent lower-upper owner cell.
   The explicit canonical owner matrix is now kernel-banked in
   `Erdos686CanonicalOwnerMatrix.lean`.  The theorem
   `exists_canonicalOwnerSystem` proves `G|(k-1)!`, equal lower and upper
   residual products, exact row and column factorizations with one
   distinguished coefficient four, pairwise coprimality of distinct cells,
   `A_ji|d+i-j`, and `G*product A_ji=B(k,n)`.  Its full axiom audit exposes
   only `propext`, `Classical.choice`, and `Quot.sound`.  Eliminating the
   resulting possibly sparse or disconnected row-column-diagonal structure
   remains open.

Lean proves that this single residual hypothesis implies the former
`OddThueTailHypothesis`, `LargeKSmoothHypothesis`, and the full refutation.
It also proves the converse from the updated odd-tail and smoothness
hypotheses, so this is equivalent packaging rather than a weaker reduction.
The residual nonexistence statement is still open and is not counted as a
solution merely because it has been isolated.

REFUTED (witnesses in repo): fixed-prefix row-16 boundary
((984, 3177026, 4480) passes rows 1..16); bare residual obstruction;
affine-saturation-only; congruence-only for (4,5); prefix a ≤ 14 and
row-prefix j ≤ 15.

## Erdős #617 — Erdős–Gyárfás balanced-coloring conjecture

Status: r ≤ 4 known (1999); r = 5 UNDER ACTIVE DECISION (live fleet).
Docs: `PROGRESS_Erdos617.md`; live logs `compute617/sat_log.md`.
Module: `ErdosProblems/Erdos617.lean` (deletion/extension framework).

PROVED: counterexample classes are (6,6)-Ramsey graphs; affine family
exactly empty; silent classes need ≥ 76 edges ⟹ two-silent case
closed; ≥ 4 classes need ≥ 59 edges; the conditional reduction
`statement_five_of_extension_demand`.

OPEN: the r = 5 verdict (in flight: SMS direct + decisive legs +
sub-cube swarm, zero SAT anywhere); then the uniform-r generalization
(extension-demand lemmas for all r) — the full-solve path.

## Erdős #23 — triangle-free bipartization ≤ N²/25

Status: OPEN; exact result claimed for N ≤ 200 (arXiv:2606.28041) —
verified here bit-for-bit except one unpublished solver-history file.
Dirs: `compute23/` (gates 1–3).

PROVED HERE: the connected-B inequality Γ ≤ N² checked on 49.7M
instances (N ≤ 13); equality cases are ALL balanced odd-cycle blow-ups
C_{2k+1}[q] (infinite two-parameter family — the true reason all
certificates self-tighten); sandwich theorem: universal Lemma RL is
conjecture-strength; RL proved on trees, s ≤ 1, and now for every
`|M|=1` instance.  The former gap G-A is closed by a symmetric
two-demand component ledger (complete paper proof, two hostile audits,
exact structural replay).  Lean now constructs and checks the bridge-cut reduction,
geodesic coordinates, canonical off-corridor components, exact `q_C/r_C`
partition sums, attachment spans, ridden-index/owner counting, and the
ordinary/exceptional local charge, including the simultaneous canonical
ride/excursion assignment and the repaired exceptional tail.  The final
kernel theorem `gapGA_symmetric_bounds` proves both SE1 and SE2.  A new
series-composition reduction first closed every remaining RL* instance
containing an interior stub-geodesic bridge whose two components each have
at least four vertices.  The exact partner-distance gate now extends this to
all three-vertex sides; a two-vertex side retracts as an M-free endpoint
leaf.  Endpoint corridor bridges are also closed, either by small-block
retraction or by absorbing the endpoint block's `a^2` Gamma allowance into
the exact RL budget.  Hence every corridor bridge is eliminated.  For a
fully nonbridge root-stub geodesic, the canonical attachment intervals give
the new kernel bounds `d ≤ 2s` and, in the `n ≥ 14` residual, `s ≥ 5`.
At the equality boundary `d = 2s`, those intervals are forced to be a chain
of singleton even tiles.  Lean now constructs the `s-1` capacity-two block
cuts, proves that RFC leaves capacity one for internal demands, and derives
the exact cut-count distance bound, including terminal endpoints by
bipartite parity.  The theorem
`totalCost_le_rlBudget_of_doubleSlack_allNonbridge_sameSide` therefore closes
the full bridge-free equality slice.  The next row `d = 2s-1` is also
kernel-closed: the canonical interval ledger has one mass, span, or overlap
defect; bipartiteness excludes span, and the two surviving geometries yield
a literal one-high binary BFS chain.  The theorem
`totalCost_le_rlBudget_of_oneDefect_allNonbridge_sameSide` proves exact
demand alignment and the RL budget.  Independently, the complete
two-demand strict-residual slice with either distance four is kernel-closed
by `totalCost_le_rlBudget_of_twoDemands_existsDistanceFour`.
The two-demand long-slack slice `2d<s` is also kernel-closed by
`totalCost_le_rlBudget_of_twoDemands_twoLength_lt_slack`: the proof combines
rooted and internal-pair G-A inequalities at quadratic strength and therefore
survives the false joint-sum fixture.  For even root distance, the partner-two
version also closes the four rows `2d-3<=s<=2d`.
The hostile audit includes the `n=14`, distances `[4,4]`, and `n=17`,
distances `[4,6]`, middle-regime fixtures plus every killed aggregation
fixture.

OPEN CORE: BF-RL, the multi-edge aggregation G-B / inductive RL* in the exact
region `n ≥ 14`, `5 ≤ s`, `d ≤ 2s-2`, `2sp(d) < (d+1)²`, `|M| ≥ 2`, with a
chosen root-stub geodesic whose every edge is a nonbridge.  This is still
weaker than assuming the whole cut graph is 2-connected.  No target-strength
joint aggregation is asserted.  An exact kernel-checked coarea theorem now
turns RFC into total-variation domination for every integer vertex potential,
providing a weighted-cut dual interface but not the missing quadratic
certificate.  `compute23/gate3/gap_gb_joint_findings.md`
and `gap_gb_joint_audit.md` give the exact proof and remaining quantified
lemma.

The proposed two-demand shortcut `D1+D2<=n+p(d)-2` has now been decisively
falsified inside this same live region: an exact `n=76,d=11,s=64,p=1`
all-nonbridge RFC fixture has distances `(38,38)`, so `76>75`, while its
actual RL cost remains far below budget (`3042<=5760`).  The two-demand core
therefore requires a quadratic or geometry-sensitive invariant rather than
that linear sum bound.

## Erdős #699 — common prime factor p ≥ i of C(n,i), C(n,j)

Status: OPEN ("probably very deep" — Erdős). Docs:
`PROGRESS_Erdos699.md`. Library: `lean/Erdos699/` (521 theorems).
i ≤ 2 banked; i = 3 reduced to a split/gcd obstruction with the
normalized kernel PROVEN globally nonempty (digit constraints must be
re-injected). Small-i j ~ n/2 core is anti-concentration over all
large primes — parked.

## Erdős #730 — same prime support of consecutive central binomials

Status: **SOLVED; unconditional Lean theorem kernel-proved.**  The terminal
theorem is `Erdos730.FullDensityTheorem.pairSet_infinite`, proving that there
are infinitely many consecutive central binomial coefficients with identical
prime support.  Its audit exposes only
`[propext, Classical.choice, Quot.sound]`; no `native_decide` is used.  The
durable proof, dependency tree, per-node hostile audit, and exact verifier are in
`compute730/full_density/`.  The frozen submitted source has SHA-256
`3df2e48ca62e35dbfbd25406badf37574d910efb2ab39360ab3458f3a31c4292`.
The new proof gives the explicit family

```text
T=5289,
P=42Tx+11, Q=72Tx+13, R=28Tx+5, S=72Tx+19,
n_x=P(x)Q(x)-1,
liminf Good(X)/X > 107/2500.
```

It genuinely bypasses the falsified uniform incomplete-block lemma.  All
`a>=2` events are handled by a complete-block bound followed by dominated
convergence.  For `a=1`, the Fourier estimate is used only at each fixed digit
depth `r`; a separate uniform `r`-tail is then taken.  The transition interval
`sqrt(X)<p<=sqrt(X)(log X)^2` is negligible, and divisor switching in the top
range uses fixed-modulus PNT-AP only for moduli `222138` and `148092`.  Thus no
estimate is asserted uniformly in valuation, digit depth, and translated
interval.  The former `p=5,r=432,s=176,a=688` witness and all other recorded
counterexamples remain valid against the old lemma and now pass as regression
tests for the new routing.

The exact constant node is

```text
4*S + (2/3) log 2
  < 21498408212212214497 / 22462131847034880000
  < 2393/2500,
```

with positive rational margin
`2344391769572639 / 22462131847034880000`.  The new and legacy exact suite has
119 passing tests.

Kernel-proved modules include the exact four-branch arithmetic and
injective map into the upstream target (`Erdos730FullDensityCore`), the full
consecutive-transition iff and pointwise bad-event coverage
(`Erdos730ConsecutiveTransition`), the full infinite logarithmic-series budget
(`Erdos730FullDensityBudget`), generic p-adic isometry and digit-box
cardinality (`Erdos730PadicIsometry`), fixed-depth Fourier and lower-half-box
estimates, the higher-power Tannery and sublinear terminal-count layer, the
Mertens and fixed-modulus PNT-AP inputs, the uniform small-prime tail, divisor
switching, and the density-to-infinitude bridge.  The intermediate theorem
`Erdos730.FullDensityTheorem.candidatePositiveDensity` proves

```text
107/2500 < liminf_X
  #{1<=x<=X : primeFactors(B(n_x))=primeFactors(B(n_x+1))}/X.
```

The terminal theorem then discharges the exact upstream infinitude target.
The fixed-modulus PNT-AP route uses the pinned external
`PrimeNumberTheoremAnd` package.  That package contains two admitted
experimental declarations, `prelim_decay_2` and `prelim_decay_3`, outside the
transitive dependency cone of the weighted PNT used here.  The active PNT-AP
route and `pairSet_infinite` do not depend on `sorryAx`; this is deliberately
not a claim that the third-party package is globally admission-free.  The old
uniform-lemma prompt remains superseded and is retained as a falsification
record, including the explicit counterexamples above.

## Erdős #64 — cycles of length 2^k under min degree 3

Status: QUEUED (background witness search when cores free). Known
reductions recorded in task #17.

## Erdős #727

Status: inherited conditional architecture (~400 banked theorems,
`ErdosProblems/Erdos727.lean`) from a prior campaign; not yet audited
by this pipeline. TODO: map its ladder into this dashboard.
