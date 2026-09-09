# Final source correspondence cross-review

Reviewer: rational_structure, GPT-6 Astra / Max. Checkpoint2026-09-08 19:45-20:05 UTC. This is reused-context cross-route AI review, not fresh-context or human review and not reconstruction of the cited source proofs. The reviewer did not re-review the implementation of its own BandConsumer. Read-only inspection covered the other authors' actual Lean declarations and their successful development logs. No Lean, sieve or candidate computation was rerun. Only this review file was written.

## Material verdict

No material mismatch with the locked original target was found in the reviewed declarations. The shared `Common n i j` retains an actual prime p, the inclusive threshold i<=p, and divisibility of gcd(n.choose i,n.choose j). No cofactor existence, smooth-pair supply, arbitrary assignment, partial prime subset or new source axiom was hidden in the reviewed consumers.

The acceptance scope below is development-compiler and source-correspondence acceptance. Fresh final project closure and executable axiom guards remain the primary's responsibility. Standard dependency-cache reuse is not a fresh source verification by itself; this review does not label cached objects or earlier failed logs as final acceptance.

## Exact scope accepted from the current Lean sources

| Module | What the declarations actually establish | Limit retained |
|---|---|---|
|PrimePowerTransfer|A positive exponent e below the actual binomial valuation localizes at Q=p^(e+delta); actual avoiding D and, under noCommon, the full V divide the two-binomial gap product for d>=i.|This is the two-binomial divisor, not the stronger adjusted-R/K divisor or the paper324 inequality.|
|SmallPartBound|The actual small and large prime-power products reconstruct the nonzero binomial; the complete p<i part is at most n^pi(i-1); the resulting exact size comparison gives Common without EEES.|The exported Common theorem requires the displayed arithmetic comparison. No uniform violation of that comparison is claimed.|
|FiniteBoundary|Every legal member of the complete derived low-domain region has a validated modular certificate, using both exhaustive row coverage and exhaustive index coverage.|The theorem is for n<=100 with the stated necessary composite-window and band conditions; CompositeWindow proves why this is the entire remaining low domain.|
|CompositeWindow|All legal triples with50(n-2j)<=171i+50 satisfy Common under the two explicitly named published source hypotheses, including every finite and exceptional source-domain case.|OddProgressionBound and CompositeWindowPrimeBound remain explicit Prop inputs. Neither source theorem is proved here, and no EEES premise is used.|
|SlopeThree|Actual D/full V transfer to K3*C(j,ceil(i/3)), exact zero/nonzero support, three-block Vandermonde and the S3 coefficient inequality under pointwise square dominance.|The pointwise `hdominance` premise is not a Lean formalization of EEES, and this module is not the complete slope-three theorem.|

## Checks that matter for source fidelity

**Complete powers and p=i.** The localization theorem obtains a carry at an index at least e+delta from the actual factorization count, then reduces the remainder to that power. Every aggregation invokes it at the full factorization exponent, not just e=1. The selected finite set is the actual primeFactors filter. At prime p=i, the numerator exponent includes the extra factor and the gap factorial cancellation removes exactly one i; the remaining p^e is retained. The p<i complement in SmallPartBound is strict, so the endpoint is not counted twice or dropped.

**No natural-subtraction escape.** The gap consumer has i>=2 and d>=i, making d+2b-a positive; its term lies in the actual2i-1-term interval. The public n-2j statement retains the original legal range, and the positive defect also enforces the exact n=2j+d reconstruction. In SlopeThree, the index decomposition2*z+h=i is proved for i>=3, including h=0 at i=4. The shortened support i<p<=2i-5 is derived only after excluding p=i and higher powers; it is not assumed.

**Whole finite region, not sample validation.** FiniteBoundary's closed kernel decisions check all333 certificate values, then all RelevantLowRow inputs with n<101 and i<33 into the64-row list, then every legal j<51 into the certificate list. The Prop-to-Bool bridges retain each bound, composite condition and the exact50d<=171i+50 condition. The final theorem proves i<33 and j<51 from its actual hypotheses before using those lists. The carry levels ei and ej are positive witness levels, not claims that they equal the full valuation; they may differ and preserve p=i.

**No missing100-to147 strip.** In CompositeWindow, x=n-i+1<=100 and n>100 immediately supply the actual prime101 in the top numerator interval. Thus n<=100 is the correct remaining domain for FiniteBoundary, even though the earlier crude paper reduction allowed n<=147. The exceptional i=2 inputs use common_small_index, and the only larger-index exception x=350,i=3 gives n=352 and the explicit prime13 certificate. The actual term conversion x+r=n-(i-1-r) is justified for every r<i.

**Exact published composite input.** CompositeWindowPrimeBound uses i>=2, x>100, every actual x+r nonprime, the exact four i=2 exceptions and one i=3 exception, and221i<50p. Since x>100, nonprime here is exactly composite. The run's source audit documents matching statements in Chim-Nair-Shorey(2018) Theorem3.1 and Grosu-Grosu Theorem18, the latter explicitly retaining k>=2. The original2016 publisher PDF was not retrieved; the code and source note say so. The unrelated abc applications surrounding the2018 statement are not silently imported as a premise or a proof. The source remains an explicit hypothesis rather than an invented project axiom.

## Exact remaining formalization gaps

At this inspected snapshot, the following must not be presented as completed Lean results:

1. The full published odd-progression and composite-window source theorems.
2. EEES square dominance, including its twelve-exception original-target handling. `noCommon_slope_three_choose_lt_kernel_sq` takes dominance at the current i,j as an explicit premise; it does not supply a uniform EEES source theorem.
3. The stronger adjusted-R/K compression and the numerical324 polynomial consequence from the paper notes. PrimePowerTransfer provides the valid two-binomial transfer instead.
4. The complete slope-three global chain: the4097 normalization, the Dusart/logarithmic tail, connection to the finite coefficient/prime-cover bounds, and exhaustive final finite Common consumer. The separately reviewed paper-plus-exact-computation result is stronger in target coverage than the currently reviewed SlopeThree.lean module. The primary is building a separate finite artifact; no acceptance of a future file is implied here.
5. Final fresh source-policy checks, dependency closure and executable transitive-axiom guards after all files are frozen.

These are evidence/coverage limits, not discovered mathematical defects or new approval requirements.

## Development evidence and source hashes inspected

The following successful logs were read under verification/development: prime-power-final-development.log, small-part-final-development.log, finite-boundary-fifth.log, composite-window-first.log and slope-three-third.log. Their printed actual axiom sets contain only propext, Classical.choice and Quot.sound; some elementary declarations omit Classical.choice. The observed warnings are non-material linter warnings. Earlier failure logs were not treated as accepted proofs.

Every current reviewed source timestamp precedes its corresponding successful log timestamp. This supports the stated development snapshot, but is not a replacement for the primary's forthcoming hash-bound fresh closure. SHA256 values at this review:

- PrimePowerTransfer.lean: `3b0529e66f438bbd6d8c19f08f4a5b5ad132d2cd86e09e8bd1a1601fc49eecf4`
- SmallPartBound.lean: `b49f7d6f9a83e534e546b65bb73e3a6d5afb60f77d7679366ff575d6615cbbb7`
- FiniteBoundary.lean: `e8b4d680895e115f36c733db438d5361bff28b0011b72537a64299964124543a`
- CompositeWindow.lean: `53949a87f25856816642cbbe9e0594d1197d5db6ee7483a36b8602bc888c9514`
- SlopeThree.lean: `18251dd705447bd626c45d27c22e7e88d2d6df40c138bf5d8c033fd41b36b596`

The locked n,i,j domains and inclusive prime/gcd target are preserved in these snapshots. No novelty, publication or human peer-review status is inferred from their compilation.
