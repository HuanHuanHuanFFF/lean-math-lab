# Arithmetic handoff

Owner `/root/arithmetic`; new work is confined to this run's `notes/arithmetic`, `experiments/arithmetic`, and `reviews/arithmetic`. All stage 1--10 frozen hashes were rechecked unchanged at the final handoff checkpoint. Primary source PDFs and rendered pages remain only in `.tools/replay/6e72b0d4-arithmetic`. No process, cache, old delivery, root file, or Git state was changed by this worker.

## Last verified result

Stages 9/10 completely consume the zero-, one-, and two-high parts of all nine shifts of a 2357-smooth core, with the appropriate h-dependent 2-threshold. The parent independently accepted both proofs and replays. Their original finite endpoints have 234 rows, each with a deterministic complete prime-power cover. The same p>=11 gives the i9 rows. Four-high is a direct SIXG contradiction. The exact-three-high completion belongs to the separate cubic worker and parent acceptance record; do not infer it from this handoff.

Stage 8, also independently accepted by the parent, is the compact worked example for a true affine fixed-coefficient bridge. Stage 6 is the compact homogeneous two-logarithm bridge. Stage 7 supplies the canonical native i5 coarse-unit boundary while keeping solitary 5 versus higher 5-powers distinct.

## Reusable implementation contract

Before extending the consumers, explicitly provide:

1. A scalar inequality under the **same original NC statement**, with its actual full small parts and legal index range.
2. A global exponent cap from a named theorem with all rational heights and nonzero/unit conditions checked.
3. A finite inventory of coefficients, shifts and active primes. Keep all other free parameters visible.
4. Exact principal-group starts `v_q(p^k-1)`, including p=7,q=2 (4) and p=7,q=5 (2); reject targets outside that subgroup before defining a logarithm.
5. Complete residue progressions and exact-v enumeration, followed by a global at-least-v stop. A plateau or a fixed low root is not an eventual-growth proof.
6. A native original-prime endpoint, not a transfer of witnesses between unrelated source indices.

Affine lattice bases need only a full determinant/index certificate for correctness; reduction improves cost. Inverse-coordinate rectangles are exact and extend in principle to dimension 3. The field-logarithm cap and the finite integer/lattice certificate are separate dependencies.

## Global H02 obstacle remains

The general normalized templates `alpha=2^a*{1,5}` or `3^a*{1,2,5,10}` still have unbounded rough factor g or d. Fixing d makes the relevant rational logarithms fixed; leaving d variable changes their heights. The normalized bound `A<=10^6 log d` from 06 and the adopted H02 g^7 estimate leave a large nonempty power-law interval. They do not give a d bound or a descending original counterexample.

The first memo's infinite family had Q3=9 and already eventually failed the old bounded-minimum height. It demonstrated failure of a weak subset of constraints, not a surviving NC family. The fixed-cofactor bridge succeeds precisely by restoring the mass inequality omitted there. Keep that correction from 02 when using 01.

Do not spend the next round merely raising a list of coefficients or optimizing the current enormous logarithmic constant. A new step should either couple the **full first free row** to the same n,j or supply an operation preserving all original NC constraints while reducing a parameter. The normalized q1 congruence alone can cancel g, so an apparent small-root polynomial in g must be checked for an actual remaining g-dependence.

## Concrete untried structural check

For the H02 orientation with n carrying the high 2-power and n-2 the high 3-power, n-1 is coprime to 6. Its small part s is 1 or 5. Let g=gcd(n,j), alpha=n/g, beta=j/g. The complete q1 condition and gcd(alpha,beta)=1 give a coprime full-power split

`q1=u*v`, `beta=u*b`, `alpha-beta=v*c`,

and hence `g*(u*b+v*c)-s*u*v=1`.

The elementary identity

`(s*u-g*c)*(s*v-g*b)=g^2*b*c-s`

is a possible structural reformulation, not a completed NC descent. In the subcase s=1 and g>=2 both new factors are positive and strictly smaller than u,v: multiplication by the opposite original factor gives g times a positive integer minus 1. Also `u*b+v*c>2g*b*c`, so the associated integer `g^2*b*c` is smaller than n/2.

**Missing dependency:** these smaller factors do not automatically supply a new j', do not preserve the prime-power shape of alpha, and do not preserve the other source windows. No original family is eliminated by this identity. The minimal next test is to retain the full r=2 layer and ask whether it determines a compatible j' or rules out this factor split; a calculation using only the displayed r=1 equation would repeat the earlier weak-window mistake. The s=5 case also lacks the stated strict shrinkage and must stay separate.

This route is recorded because it changes the object being studied—from a variable-coefficient logarithm estimate to an exact factorization with an actual smaller integer—while making the missing original-input return map explicit. It was not experimentally searched after the parent's handoff instruction.

## Publication and acceptance boundary

The parent owns commits, pushes, final canonical reports, and the combination with the three-high proofs. This worker's summary and manifests are immutable handoff data. Earlier-stage parent acceptance/publication status should be read from those canonical records; author replay, parent mathematical acceptance, Git publication, and Lean acceptance are four different states. No Lean check was run in this round.
