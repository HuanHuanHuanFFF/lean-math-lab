# HANDOFF — A-ROUGH-BASE-REPDIGITS-20260915

## Current accepted-by-author delivery

Read REPORT, SOURCE_ADOPTION, FAILURE_BOUNDARIES, then notes/PROOFS.

Main row theorem: B>=11, gcd(B,210)=1, 1<=C<B, e,k>=1, t>=2, n=C*B^e*sum_{r<t}B^(kr),400|n implyCommon9 for all legalj. B may be composite. No fixed bound on any ofB,C,e,k,t or coarse support. It does not assert a composite-base carry theorem.

New general bridge under completeNC9 and400|n:

    g^6000 < 2^306000 n^1037,
    W(n)^6000 < 2^306000 n^1037,
    n^4963 < 2^306000 S7(n)^6000.

The exponent is not an improvement over old double-high weak bounds; this round extends the domain to every400|n without alpha classification or old4-position deletion. It uses all56 nonzero distinct3/7 positions and frozenPC.

For the repeated-digit source, exact2/5 valuations plusv3(n),v7(n)<=1 imply a type exponentd in{0,1,2,3}. SetD=e+k(t-1). The infinite inequality forcesD<=29 thenn<2^2321, contradicting frozenA9-FINITE. No finite B or digit enumeration is used to prove the theorem.

## Verification

Run python3 code/reproduce.py. It runs only the new finite receiver, mutations, finite diagnostics, and source hashes. Historical math replays=0. Original latestZIP and all adopted bytes are preserved. External receipt records clean extraction replay; no Lean or external independent review.

## Frontier unchanged globally

R7={3,4,5,6,7,8,9}, alpha family count58; i14 original grade retained. Original a,b,arbitraryg and support are still unbounded. No NC9-preserving descent is proved. Arbitrary polynomials or different digit coefficients do not satisfy the geometric-tail valuation bound; a precise false-extrapolation example is saved.

## Next discriminator

Test low-complexity nonconstant-coefficient tails for a genuinely proved complete2/5-part bound before any expensive work. A geometric-sum factorization is what removed arbitrary t here; it is not available for arbitrary digit arrays. Do not redo old22 thresholds, content searches, or full history.
