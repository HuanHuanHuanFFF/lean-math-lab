# BFT Padé construction: first concrete prerequisite

Owner: `/root/pade_construction`; parent `/root`.
Owned files: this directory only. No shared files, Git index, branch state, target-status, compiler cache, or source input is changed.
Source baseline: `9d4228e3ed0de4bb6b8e555ca59af3f53d578c67`; Lean pin `leanprover/lean4:v4.33.1`.
Budget: user supplied no total duration; no deadline was invented. This subtask's first checkpoint is a source-aligned integral identity plus a bounded independent coefficient test. Lean execution requires the parent's compile lease.

## Adopted inputs

- Fixed author PDF: `../../../20260911-web-i18-6f4334c9/reviews/huan-i18-5e2d13bb/publication/BFTpaper0207.pdf`, SHA256 `0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c`.
- Author URL: <https://personal.math.ubc.ca/~bennett/BFTpaper0207.pdf>, February 26, 2007 manuscript.
- `../../../20260910-asymmetric-pade-022987af/delivery/REPORT.md`, section 4.1 (corrected coefficient convention), is a paper argument, not Lean acceptance.
- `../huan-i18-adoption-5e2d13bb/notes/CONTENT_PROOF.md` together with its mandatory correction `CORRECTED_THETA_TAIL.md` supplies the intended G-consumer context, not an assumed analytic theorem.
- `../../lean/IntegerBridge.lean`: parent's accepted arbitrary-integer two-row bridge, corresponding to BFT (7.4). It supplies no Padé construction or Lemma 4.1 bound.

## Expected frontier change

The unbounded Padé polynomial-construction prerequisite is currently absent. The first candidate proves the affine integral splitting identity for all A,B,C and all real z, and constructs the exact signed integer coefficient arrays and homogenized integer values. This opens the connection from actual Padé data to the accepted two-row bridge. No B699 (n,j) region is removed by this prerequisite alone.

Remaining obligations are explicit: beta-integral coefficient correspondence, full integer polynomial identity, adjacent determinant nonvanishing, content divisibility for P, analytic Q/E estimates, logarithmic heights, and original-problem consumers. Existing factorial prefactor work is owned by the sibling and is not duplicated here.

## Source-sign checkpoint

The PDF text extraction of Lemma 3.1 prints the P sum without the overall (-1)^C, whereas integral (3.1), identity (3.4), and the constant term of Q force it. The adopted asymmetric report uses (-1)^(C+r), which is consistent. This is tested below with odd C, not silently ignored. Direct local image viewing and node_repl image viewing hit the known sandbox helper startup fault; no formula is marked visually verified by this worker until a usable image path is obtained.

## Resource checkpoint

On 2026-09-11 around 11:29 Asia/Shanghai: Windows reports approximately 3.4 GiB free of 15.7 GiB physical memory; D: free bytes 2522583040. Six Python processes were present, each below 100 MiB working set at that snapshot. This worker runs only small exact symbolic checks, no Lean or heavy sieve. No new dependencies are installed.

## State

Exact bounded checks passed at 2026-09-11T03:35:20Z. Two Lean candidates and the exact source map are now present; no Lean invocation has been made. See SOURCE_AND_OBLIGATIONS.md and symbolic-check.json. Next: acquire the parent compile lease, verify IntegralIdentity.lean, then IntegerConstruction.lean. Acceptance must bind exact source hashes and a fresh axiom audit; an uncompiled candidate is not accepted.

## Latest checkpoint: 2026-09-11T04:07Z

The parent accepted the integrated integer construction in lean/PadeInteger.lean (four polynomial definitions marked noncomputable), then its public roots participated in the successful uniform prerequisite audit at verification/20260911T035706170589Z. This worker made no Lean call.

The prioritized next bridge is now [direct P-content](CONTENT_TRANSFORM.md): for all diagonal u,B, an explicit positive binomial convolution expresses each P coefficient as an integer linear combination of actual Q coefficients. PContentTransform.lean includes the induction and normalized P value candidate; FREEZE_CONTENT_V1.json fixes its exact bytes and accepted integer import. Bounded exact checks passed, but this new uniform theorem is pending Lean verification. It removes a specifically identified all-parameter integrality gap if accepted, and leaves adjacent determinant/analytic/original-problem obligations visible.

Auxiliary candidates IntegralIdentity.lean, CoefficientFactors.lean, and KernelExpansion.lean are separately frozen by FREEZE_AUXILIARIES_V1.json. No frozen source is edited after handoff. No new original-problem indicator is claimed.
