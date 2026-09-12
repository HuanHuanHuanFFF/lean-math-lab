# Minimal remaining end-to-end inputs

1. Prove the complete CRT parameter/window enumeration implies `candidateMem n candidate_intervals` for every actual terminal candidate. It must include every integer parameter t allowed by lo/hi, all signed offsets, swaps, and the retained small-n branches. An upper bound or a list of extreme witnesses is not this membership theorem.
2. Supply the actual full `candidate_intervals : List NatInterval` and `witnesses : List Witness`. The examples in this package cover only [24,33] and {330}, not the terminal dataset.
3. Supply finite certificates `witnessesCheck witnesses = true` and every requested `coverCheck` result, equivalently `candidateIntervalsCheck candidate_intervals witnesses = true`. These are concrete data checks, not Common or forall-j predicates. Each special entry is exactly the fixed constructor special330.
4. Run the parent serial Lean verifier on these three new source layers and every public typed/axiom audit root before accepting their proof text. Current adopted prerequisites have separate real acceptance receipts.

For i=11, legal j implies n>=24; any proof discarding lower n must retain that exact logical reason. Legal n in any other small branch still require membership or a separate sound witness proof. No full initial height, CRT membership, all-witness table or new B original result is claimed here.
