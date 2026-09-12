# Actual recurrence and unconditional determinant implementation

Owner: `/root/pade_construction`. Start checkpoint: 2026-09-11T05:01:51Z. No total deadline supplied. Only new files in this exclusive experiment are written; all earlier freezes remain immutable. No Lean, download, cache, Git, or CI action is run by the worker.

Fixed source prerequisite: AdjacentCoefficientMultiplication.lean, SHA256 68b0f3161ba63b2649c193b3f4d526c73a47a9dae2d69e7af8fb933bd8a66899, 12977 bytes. It has complete candidate proofs for all six actual source coefficient multiplication identities but has not yet been compiled. PadeInteger is the integrated accepted project input, SHA256 8aa4bdbd7b3751fe96bd4d953ee68ab5b7fd2fa374cb5ce623d7d460d444044b.

Expected frontier change: use those actual lemmas directly to prove the two actual polynomial recurrences and then the unconditional source polynomial determinant for every u>=1,v>=0. This removes the all-parameter two-row determinant dependency if accepted. No recurrence, six-ratio, or hraw assumption will remain in the final source determinant theorem. Analytic growth/G/height estimates and original B699 case coverage are separate.

Implementation order: guarded Int magnitude recurrences by multiplying a nonzero positive integer denominator; sign restoration and polynomial coefficient extensionality; weighted-choose proof of the actual signed D constant recurrence; polynomial determinant recurrence and u=1 base; induction with nonzero polynomial scalar cancellation; real evaluation and the raw homogeneous formula for nonzero y. The guarded source r-1/r-2 terms remain explicit throughout.

Resource snapshot: free physical memory 2072388 KiB while phase A's Lean process used approximately 1569 MB working set. This worker performs only source reading/writing and small exact arithmetic checks.

## Delivered chain and exact statements

The single full candidate entry is `ActualDeterminantCheckpoint.lean`. Its project closure has exactly ten sources: six new files, the frozen AdjacentCoefficientMultiplication and PContentTransform candidates, and the integrated PadeInteger/IntegerBridge inputs. It does not import IntegralIdentity, Gamma/beta analysis, or the old conditional adjacent-determinant consumers. The static import inventory found every direct mathlib olean already present; this is only a file-presence observation, not package/version/kernel acceptance.

The new layers are:

1. `ActualMagnitudeRecurrence.lean`: actual guarded Int magnitude recurrences. The proofs invoke the six source multiplication identities and cancel an explicitly nonzero positive integer product. r=0 and r=1 are proved by their guarded zero terms; no truncated negative coefficient is substituted.
2. `ActualPolynomialRecurrence.lean`: exact sign restoration, previous-row edge coefficient at r=u, guarded shifts, and coefficient extensionality including every r>u. The resulting actual polynomial recurrences have only u>=2 as a hypothesis.
3. `ActualRawDeterminant.lean`: actual choose constant recurrence, actual P/Q determinant recurrence, explicit u=1 source polynomials, and induction by nonzero scalar cancellation. The source determinant theorem has only u>=1 as a hypothesis.
4. `ActualRawHomogeneous.lean`: transfers that theorem to the accepted integer homogeneousValue for y!=0. The core source recurrence/determinant proof uses no division; this final representation step reuses the existing real evaluation at x/y.
5. `ActualNormalizedRows.lean`: calls the actual P/Q content-normalization lemmas directly and proves nonzero determinant for the actual gcd-normalized rows. It then calls the accepted Section 7 integer bridge. It imports no old hraw-based consumer.
6. `ActualDeterminantCheckpoint.lean`: full compilation/axiom-print entry; its raw determinant subchain can also be checked independently at `ActualRawDeterminant.lean` before the P-content normalization layer.

Set

N_u=u(u-1), A_u=(u-1)(2u-1), B_(u,v)=(v+2)(2u+v).

For actual F=pPolynomial or qPolynomial, the proved-candidate recurrence is the ℤ[X] equality

C(N_u) F(u,v) = -C(A_u)(C(2)-X)F(u-1,v+1) + C(B_(u,v))X^2 F(u-2,v+2), u>=2.

The actual constant uses the fixed source binomial coefficients:

M(u,v)=choose(2u+v,2u-1) choose(2u,u),
D(u,v)=(-1)^(u+1) M(u,v).

Its recurrence is also proved from actual choose identities, not assumed:

u(u-1)M(u,v)=(v+2)(2u+v)M(u-1,v+1),
N_u D(u,v)=-B_(u,v)D(u-1,v+1).

The two weighted choose ingredients used in that proof are

choose(2u+v-1,2u-3)(2u+v)(v+2)
 =choose(2u+v,2u-1)(2u-1)(2u-2),

choose(2u-2,u-1) 2(2u-1)=choose(2u,u)u.

Both are derived from the standard one-step weighted choose identities. There is no factorial quotient or unproved K-recurrence input.

The final actual raw polynomial theorem is

P(u,v)Q(u-1,v+1)-P(u-1,v+1)Q(u,v)
 = C(D(u,v)) X^(2u-1), for every u>=1 and v>=0.

D is nonzero. Consequently evaluation at every real z!=0 is nonzero. No hraw, six-ratio, common-recurrence, or Padé-identity assumption remains in either statement. The u=1 base is computed from P(1,v)=-2+(v+3)X, Q(1,v)=-2-(v+1)X and P(0,v+1)=Q(0,v+1)=1, giving 2(v+2)X.

For actual integer inputs x,y with y!=0, the raw homogeneous theorem is

H_P(u,v;x,y)H_Q(u-1,v+1;x,y)-H_P(u-1,v+1;x,y)H_Q(u,v;x,y)
 = D(u,v)x^(2u-1).

The actual content-scaled normalized determinant equals this raw determinant. For x!=0 and y!=0 it is therefore nonzero; the final `actual_bft_integer_gap` chooses an actual Bool-indexed source row using only the ordinary integer/scaling/gap hypotheses of the accepted §7 bridge.

## Source specialization and remaining independent work

For the original BFT pair, upper u=dm and v=cm-dm-1, lower (u-1,v+1) corresponds to delta=1. From c>d>=1 and m>=1, u>=1 and v>=0 follow. The common exponent u+v+1 is cm once these natural-subtraction facts are proved. Bool true is the upper delta=0 row and false is the lower delta=1 row.

This candidate removes the determinant/actual-row construction bottleneck if its complete closure is accepted. It does not prove the integral coefficient correspondence, full Padé remainder identity, analytic Q/E growth, source G lower bounds, logarithmic heights, or any original B699 common-prime conclusion. Those gaps remain independent; no original-problem index is newly counted here.

## Bounded checks and static verification

`check_actual_recurrence_chain.py` passed a new exact integer corroboration run over u=1..20,v=0..16:

- 7,752 guarded magnitude equalities, including r=0,1,u.
- 1,292 weighted/signed constant relations.
- 646 complete P/Q polynomial recurrences.
- 340 complete determinant polynomial equalities.
- 6,800 raw and normalized integer value checks, with signed x and nonzero signed y.
- 17 u=1 base-row checks.

The exact result is saved in actual-recurrence-chain-check.json with the script hash. These are finite checks of the source/transcription/assembly; they do not replace the unrestricted candidate proof or a Lean check.

`check_actual_chain_sources.py` verified all project imports exist, no old conditional determinant or analysis project source is imported, the final theorem headers contain no hraw/PadeIdentity assumptions, and all nine earlier frozen source files remain byte-identical. actual-chain-source-check.json contains the ten-file hash-bound closure and direct mathlib object inventory. It explicitly does not claim Lean parsing, compilation, or axiom acceptance.

The worker made zero Lean calls, as required by the primary task's phase-A compiler ownership. No source is marked accepted solely because the complete candidate is present. On a compiler diagnostic, retain these frozen bytes and correct a new version; the single root is the next concrete serial check for the parent.
