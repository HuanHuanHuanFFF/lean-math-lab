# S3 paper-to-Lean statement correspondence

Implementation-author statement audit, 2026-09-08 19:45 UTC. This is not a fresh or independent code review. The paper argument came from the rational-structure worker and was separately cross-checked; this note compares that argument with the implemented declarations.

Reviewed paper: `../rational/slope-three.md`, SHA-256 `03e0b1b637e5f099412e76e1bcf0c59a0f554cc0b5c2513c1ed319690dd82547`.

Frozen Lean source: `../../lean/SlopeThree.lean`, SHA-256 `18251dd705447bd626c45d27c22e7e88d2d6df40c138bf5d8c033fd41b36b596`. The primary's `../../verification/development/slope-three-third.log` reports successful complete compilation and ten axiom outputs using only propext, Classical.choice and Quot.sound; two arithmetic lemmas use only propext and Quot.sound.

## Correspondence verdict

No statement mismatch was found for the implemented structural transfer and conditional S3 consumer.

- `slopeThreeKernel i` is precisely the product of primes i<p<=2i-5. The upper endpoint is inclusive; p=i is excluded here only after its complete numerator power is proved impossible in a nonzero cell.
- `slopeThreeZ i=(i+2)/3` is ceil(i/3). `slopeThreeH i=i-2z` uses natural subtraction, but `slope_three_index_decomposition` proves2z+h=i for i>=3, so no truncation has changed the intended index. The compiled i=4 example checks z=2,h=0,K=1.
- `actual_avoiding_part_slope_three_transfer` has only i>=3 and i<j as hypotheses and uses the actual avoidingPart(3j,i,j). It neither assumes localization nor assumes the desired transfer. The original half-row condition follows from the exact row3j. Every actual positive valuation is supplied to the previously accepted complete-power Kummer lemma.
- In zero cells the proof retains Q=p^(e+delta), shows Q divides a child descending-factorial term, and cancels z! using p>=i>z. In nonzero cells it derives e=1,p>i,p<=2i-5. Prime powers are assembled with their actual exponents through the existing pairwise-coprime product lemma.
- `actual_prime_part_slope_three_transfer` replaces the avoiding part by the accepted B699BridgeAudit.primePart only under the original `not Common(3j,i,j)` condition. Common retains p>=i and the gcd formulation.

## The exact external-premise boundary

`noCommon_slope_three_choose_lt_kernel_sq` assumes BOTH noCommon and the displayed pointwise arithmetic inequality

`C(3j,i) < primePart(i,C(3j,i))^2`.

It then proves exactly `C(j,h)<K3(i)^2`. The latter conclusion is the paper's(S3). The required lower bound is proved by Pascal induction applied twice, so no cached polynomial Vandermonde theorem or unproved combinatorial premise is used.

The pointwise square-dominance premise is not a proof of the full EEES theorem. It is not asserted for every input without exceptions. For example, the source exceptional pair(n,i)=(30,7) produces the legal exact-slope triple(30,7,10); the top-prime29 certificate belongs to the separate source-exception handling when deriving square dominance under noCommon. The module does not erase this obligation. Standard-only axiom output verifies the implication with its displayed premise, not the missing premise itself.

This file does not formalize the uniform4097 bound, Dusart's interval theorem, the595104 reduction, subsequent prime-gap compression, or the36-case final original-target certificate. Those remain separate paper, computation, or other-file acceptance records. In particular, successful compilation of SlopeThree.lean alone must not be reported as an unconditional Lean proof of the entire n=3j family.

## Environment and final acceptance

Only the new SlopeThree.lean was written in this stage. The earlier PrimePowerTransfer and SmallPartBound hashes still equal their frozen accepted development versions. The initially missing Vandermonde object was avoided by an elementary proof; no new package/cache object was built or shared dependency changed.

The module is frozen after successful development compilation. The primary still owns the final fresh-output closure verification and executable axiom guards across all run roots, plus publication. No additional theorem engineering is requested by this audit.
