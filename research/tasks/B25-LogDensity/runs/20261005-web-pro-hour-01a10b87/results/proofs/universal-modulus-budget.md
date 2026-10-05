# Universal finite modulus-budget inequality and an epoch barrier

Status: paper proof derived in this session. The ingredients (product-measure association and coordinate compression) are standard; no literature-priority claim and no Lean verification. This is a theorem about ALL finite singleton systems, not merely the original 486 prime signatures.

## Main finite inequality
Let F be a nonempty finite set of DISTINCT positive moduli n<=M, with one arbitrary residue a_n for each modulus. Let U(F) be the full periodic union of these residue classes and delta(F) its periodic density. Then

    sum_{n in F} 1/n <= delta(F) H_M.                     (MB)

### Step 1: centering all cosets at zero cannot increase union density
Work modulo L=lcm(F), identified by CRT with the product over p|L of Z/p^(v_p(L))Z. A residue class modulo n is a product of one p-adic residue ball in each coordinate.

Fix one prime coordinate and fix all other coordinates y. The section of U(F) in that prime coordinate is a union of residue balls (of possibly different radii), one for each row compatible with y. Replace the residue in this prime coordinate by zero for EVERY row. The replacement balls are nested. Their union has measure equal to the largest single ball, which is at most the measure of the original union of balls. An empty section stays empty.

Integrate over y. This replacement cannot increase total union measure. Repeat for every prime coordinate. The final union is the union of zero residue classes, namely the set of multiples M(F) modulo L. Thus

    delta(F) >= d(M(F)).

This argument even allows repeated moduli, but distinctness will be essential in the next step.

### Step 2: harmonic association for multiples
Lemma 1 in finite-integer-centers.md proves, with a self-contained product-measure argument,

    sum_{x<=M,x in M(F)}1/x <= d(M(F))*H_M.

Because every modulus n in F is itself a multiple of an element of F, and all moduli are distinct,

    sum_{n in F}1/n <= sum_{x<=M,x in M(F)}1/x.

Combining the inequalities proves (MB). No assumption on reciprocal convergence, independence, gcds, or the residues is used.

## Single-window density lower bound
Suppose all moduli lie in [alpha Q,beta Q], and a window has integer diameter less than alpha Q. Each singleton row hits at most one point in that window. If at least eta Q distinct window points are deleted, there must be at least eta Q distinct rows. Therefore, with M=floor(beta Q),

    delta(F) >= eta / (beta*H_M).                         (WB)

This remains valid when some rows are inactive: activation can only reduce their ability to hit the window.

For the 486 constants, alpha=19/20, beta=21/20, the window [11Q/10,19Q/10] has diameter 4Q/5<alpha Q, and eta=3/8. Any singleton block with the required local deletion count MUST satisfy

    delta(F) >= 5 / (14*H_floor(21Q/20)).

In particular its footprint cannot be exponentially small in sqrt(log Q), regardless of prime signatures or chosen residues.

## Nonvacuous multi-scale epoch barrier with WIDENED modulus bands
A final adversarial check identified a simpler issue with the ORIGINAL narrow band: [19Q/20,21Q/20] has at most Q/10+1 integer moduli, already fewer than 3Q/8 for Q>=4. Since each hits at most one original-window point, literal singleton replacement in that narrow band is impossible by cardinality alone. The stronger footprint test must therefore use a wider, genuinely feasible band.

Accordingly, allow ALL singleton moduli in the half-open band

    [9Q_j/10,9Q_j/5),     Q_j=2^j.

These bands are disjoint across successive scales, INCLUDE the original band, and are wide enough for the required number of singleton rows. Their minimum modulus still exceeds the original window's diameter 4Q_j/5. Feasibility is not merely formal: zero-residue rows q=x selected from [11Q/10,9Q/5) already give enough distinct original-window hits for dyadic Q>=2.

For each j in [a,2a], suppose the block deletes at least 3Q_j/8 different points of [11Q_j/10,19Q_j/10]. It needs at least 3Q_j/8 different moduli, so

    sum_{n in F_j}1/n >= (3/8)/(9/5) = 5/24.

Apply (MB) ONCE to the entire epoch, not a union bound on periodic footprints. With M=ceil((9/5)*2^(2a))-1,

    delta(F) >= [5(a+1)/24] / H_M
             >= 5(a+1) / [24*(1+log(9/5)+2a log 2)].  (EB)

This tends to 5/(48 log 2), approximately 0.1503. It controls the ACTUAL union density of the epoch, so arbitrary cross-scale overlaps do not evade the bound.

The elementary strict inequalities log(9/5)<3/5 and log 2<7/10 give the uniform rational consequence

    delta(F) > 25(a+1)/(192+168a) > 1/8,  for every a>=1.

Indeed the last difference is (32a+8)/(8*(192+168a))>0. Each logarithmic bound follows by summing the first five nonnegative terms of the corresponding exponential power series; those exceed 9/5 and 2 respectively.

Thus even after widening the modulus bands enough to overcome the elementary row-count bottleneck, the comparable-scale 486 epoch cannot have an arbitrarily small periodic footprint. This argument is not a vacuous implication for an impossible narrow-band block.

## Scope and exact remaining gap
The theorem does NOT exclude general B25 counterexamples. In particular it does not control:
- deletion caused by moduli much smaller than the observation window, used over many quotient layers;
- small NEW periodic increments after conditioning on a previously chosen head, whose absolute footprint may already be large;
- epochs without the stated per-scale deletion count and comparable-modulus allocation;
- infinite constructions with a fundamentally different relation between local transients and periodic mass.

The distinction between absolute footprint and footprint newly added outside a fixed head is essential. Applying (MB) to a first-kill residual is unjustified, since such a residual is not a union of singleton residue classes of the original moduli.

## A tempting stronger rearrangement is FALSE
Coordinate compression above controls PERIODIC DENSITY, not finite activated harmonic mass. At N=24, compare

    F={(2,0),(3,0),(5,2)}   and   F_0={(2,0),(3,0),(5,0)}.

Both periodic union densities equal 11/15. Outside the union of the 2 and 3 rows, F deletes 7 and 17 up to 24, whereas F_0 deletes 5. Hence

    H_(D(F))(24)-H_(D(F_0))(24)=1/7+1/17-1/5=1/595>0.

So one cannot prove the unproved finite harmonic inequality (UF) simply by claiming the zero-centered configuration maximizes local deleted harmonic mass. The example does NOT violate (UF) itself. Exact sets, masses, and the negative (UF) discrepancy are recorded by experiments/audit_finite_lemmas.py.
