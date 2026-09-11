# Padé short-path integration review

Reviewer: `/root/pade_construction`; scope assigned by the primary on 2026-09-11. This is a bounded read-only integration/premise review. It does not constitute Lean compilation, a transitive axiom audit, independent human review, or a new B699 acceptance. Source files were not changed and Lean was not run.

## Byte and import correspondence

`integration-audit.json` binds all eight destination hashes to their actual frozen source hashes. Every non-import byte is identical. Content.lean and Coefficients.lean are fully byte-identical to PContentTransform.lean and AdjacentCoefficientMultiplication.lean. The other six files only replace the long experiment module import by the corresponding short `lean.Pade` module. The import replacements match the explicit eight-file mapping; accepted PadeInteger/IntegerBridge and mathlib imports are unchanged.

The project graph is acyclic: Coefficients -> Magnitude -> Recurrence -> RawDet -> RawHom; Rows imports RawHom, Content and IntegerBridge; Checkpoint imports Rows. Content and Coefficients import PadeInteger. No old hraw-based adjacent determinant consumer or analysis/integral candidate was introduced.

## Actual premises and Nat boundaries

- Content establishes actual P-content through the explicit triangular coefficient identity. Its parameter u may be zero; the normalized sums remain defined. The later determinant theorem, not this algebraic definition, imposes u>=1.
- The six coefficient multiplication statements require u>=2 and r<=u. Shift-one additionally requires r>=1, shift-two r>=2. The r=u same-index branch is explicitly choose(u-2,u-1)=0. No negative coefficient is silently represented by truncated Nat subtraction.
- Magnitude uses explicit `if 1<=r` and `if 2<=r` guards. The r=0/1 fallbacks have zero terms and match the zero factors. Its remaining subtraction casts are justified by u>=2 and r<=u.
- Recurrence assumes u>=2. It restores the P sign (-1)^(u+r) and Q sign (-1)^u and separately handles r>u by the actual polynomial coefficient support. The u=2,r=2 lower row (degree 0) remains included.
- RawDet's actual polynomial identity requires u>=1 and v:Nat. It does not assume hraw, a Padé identity, six ratios or a common recurrence. The u=1 base is 2(v+2)X. v=0 is legal. The u=0 definition must not be used as an instance of this theorem.
- RawDet's real nonzero conclusion additionally requires z!=0. This is necessary: the determinant vanishes at z=0 for all legal u,v.
- RawHom's equality requires u>=1 and y!=0, but allows x=0. Its nonzero conclusion additionally requires x!=0. The file does not claim the homogeneous formula at y=0. Actual BFT denominators are intended to be positive, so y!=0 must still be discharged at the concrete source instantiation.
- Rows' pure content-scaling identity is valid without u/x/y nonzero conditions. Its actual normalized determinant theorem explicitly requires u>=1, x!=0, y!=0 and derives raw nonvanishing from RawHom. No determinant assumption was substituted during the path migration.

## Final Section 7 consumer

The actual `actual_bft_integer_gap` parameters are u,v:Nat with u>=1; x,y:Int with x!=0 and y!=0; and integers r,s,a,b,U,V,D with r>=0, a!=0, b>0, V!=0 and |rU-sV|<=D. It calls the existing `bft_7_4_of_two_rows` with the actual Bool rows: true is (u,v), false is (u-1,v+1).

Allowing r=0 is mathematically valid for the lower-bound bridge; the resulting inequality may be trivial. No nonzero s or U is required by that bridge. D>=0 follows from the stated gap inequality, so it need not be an extra assumption. The upper/lower normalized determinant appears in precisely the order P_upper Q_lower - P_lower Q_upper, matching the explicit signed D.

The actual-source instantiation must still prove x=D0!=0 and y=aP!=0 for every chosen base/orientation. The abstract theorem does not silently eliminate those obligations. If a seed has D0=0 it is outside this Padé nonzero-row application and needs separate handling; no such seed is asserted here without reading the material data.

## Outcome and boundary

No integration-induced mathematical blocker was found. The statement/guard review is consistent with the frozen candidate and its exact bounded checks. This says nothing about whether the source elaborates or its tactic scripts close: the primary will compile and audit the shortened closure and provide real diagnostics. All stage-B original-problem counts remain 0/19, as supplied by the primary; the present audit does not update target-status.

The requested bounded feasibility check without a G lower bound will be recorded separately in this review directory. It will use the material's actual seeds/orientations and will not expand the Lean candidate chain.

## Addendum: fixed seed nonzero conditions

The bounded feasibility checker independently recomputed all 25 distinct selected material seeds: D0=aP-bQ>0 and y=aP>0 in every case. This discharges the fixed-seed x/y nonzero condition for those inputs only. The final bridge's target gap |rU-sV| may still equal zero and is never divided by; the hx assumption concerns the seed difference D0, not the target gap.

The complete feasibility result and its deliberately limited scope are in [NO_G_FEASIBILITY.md](NO_G_FEASIBILITY.md). No integrated or frozen Lean source was changed during either part of this review.

## Primary verification update after the read-only audit

The primary supplied a fresh successful check of integrated `Coefficients.lean`: verification/20260911T070214848741Z/evidence.json, nine public axiom prints within std3, 16.241 seconds. The evidence success flag and root path were read by this reviewer. This acceptance belongs to the primary's real Lean run, not to the static integration audit or feasibility script. Magnitude and the rest of the shortened chain remain under the primary's serial verification. No stage-B original-problem count is increased by this prerequisite.
