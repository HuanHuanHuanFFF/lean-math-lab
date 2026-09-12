# (5,3) actual Padé edge: minimal source-connected prefix

Owner `/root/i18_downstream_review`. Started 2026-09-11 14:45:47 UTC; first checkpoint due 15:05:47 UTC. Writes only this experiment. All four Lean sources are **uncompiled candidates**. No Lean, Git, downloads, or changes to frozen/shared sources were performed.

Expected frontier effect: unlock a necessary part of the unproved i11 `n >= 2^15360` initial-height route. Actual effect: a paper-checked, source-connected prefix is prepared; neither the (5,3) cofactor edge nor the initial height is yet proved. Original B coverage remains **0/19**. There is no novelty claim.

## Exact fixed data and scope

Adopts the original approximation plan, not later optimized constants: `(p,q,k0,l0,a0,b0,x,c,d)=(5,3,4,7,7,2,1,5,3)`, `P=625`, `Q=2187`, `y=4375`, `y-x=4374`, weights `(354,228)`, complements `(646,772)`, `Y0=2^15359`, original `m0=129`, `Z=5726930071079973414170`, `M=213`. `fixed-five-three-data.json` is the exact existing short-basis row, including its provenance in `checks-and-sources.json`.

All m are naturals. The selector is literally the imported `Nat.find`-defined `leastExponent`, not a separately chosen large exponent. `upper=true` corresponds to delta 0; false to delta 1. Both rows have `u=3m-delta`, `v=2m+delta-1`, and `u+v+1=5m` for every m>=1. Gap zero and coincident positions remain allowed. No offset-distinctness premise is introduced.

## Candidate claims

1. `Capacity.lean`: for any Nat p>0, weight<=T, `Y<=p^e*A`, `A^T<Y^weight`, and `(p^k)^T<=Y^(T-weight)`, prove `k<e`. Under e<=k, powering the window gives `Y^T <= (p^e*A)^T < Y^(T-weight)*Y^weight=Y^T`. The strict step uses only p>0. The lemma keeps boundary T=0, A=0, Y=0; inconsistent hypotheses discharge these cases rather than silently removing them. A second theorem feeds this lemma from actual least-exponent capacity; a third extracts the residual prime power exactly.

2. `FiveThree.lean`: original m>=129 follows from the explicit integer predecessor certificate; both ends of the original fixed edge use the same selector. Under the seven displayed predecessor/rate/base/lookahead integer certificates and small-cofactor contrary assumptions, it proves `20m<e` and `35m<f`. The Bool/delta correspondence is proved for the actual `pNormalizedValue` / `qNormalizedValue`, not separate placeholder rows.

3. `ActualGap.lean`: with m>=1, 20m<=e, 35m<=f, C>=1 and the actual integer gap `abs(5^e*A-3^f*C)<=24`, extract U=5^(e-20m)A and V=3^(f-35m)C. Invoke accepted `actual_bft_integer_gap` directly. It produces a nonzero integer form for one actual Bool row and

   `625^(5m) <= 2^(5m)*24*abs(qN) + abs(4375^(5m)*pN-4374^(5m)*qN)*abs(V)`.

   No actual determinant, recurrence, raw identity, or abstract G is assumed. The right-hand row error is exactly the expression consumed in the next file.

4. `ActualRemainder.lean`: instantiate the frozen actual Hom remainder and actual finite qContent lower theorem. With `G=qContent u v u`,

   `G * cast(4375^(5m)*pN-4374^(5m)*qN) = 4375^v * E_uv(1/4375)`.

   For both rows and m>=129, `(1273397/1000000)^(3m)<G`. This does not assume a G bound as an argument, but its imported finite-divisor chain still requires the parent's acceptance. Existence of a file is not acceptance.

The prefix intentionally does not claim the final edge `Y^354<=A^1000 OR Y^228<=C^1000`. It proves the nontrivial extraction and actual source connection needed to derive that edge once growth estimates are accepted.

## Exact remaining obligations

- Serially compile these four files and execute the 13 declared axiom audits. Imports in this experiment refer to the experiment directly, so it can be checked without altering shared entry points. If the parent integrates copies, only parent-controlled import changes are needed.
- Accept or provide current receipts for `DiscreteSelector/LeastExponent`, `HomRemainder/Remainder`, and `I11DivisorFiveThree/Threshold`. Current read-only receipt search found accepted Rows and Moment Identity, but no corresponding acceptance receipt for these three chains. Their truth is not promoted by this report.
- Accept the existing fixed (5,3) GrowthTree: 5 Q leaves and 4 E leaves, both delta weights. It uses q lambda `440758604932333255282947863/39614081257132168796771975168`, e lambda `618834739845914957406423393/39614081257132168796771975168`. No new lambda is proposed. Combine actual kernel evaluation bounds, the (5,3) factorial bound and normalization to show actual polynomial bounds `abs(Q_delta(z))<=C_Qdelta*BQ^m`, `abs(E_delta(z))<=C_Edelta*BE^m`, each C between 0 and 1. Merely having JSON leaf coefficients is insufficient.
- Prove the seven fixed selector certificates explicitly appearing in `five_three_extract_same_index`. The existing short integer bases give a route: `5^512<=2^1189`, `3^128<=2^203`, `2^289<=Z^4`, with the recorded positive integer exponent margins. They are finite computation evidence, not kernel acceptance. No enormous existence-witness power is evaluated here.
- Define BQ=beta(5,3)*lambdaQ, BE=beta(5,3)*lambdaE, Lt=1273397/1000000, and the original rational A3 and W exactly:

  `A3=625^2*Lt^3/(7^3*2^5*BQ)`,
  `W=(625*2187)^5*Lt^3/(4375^2*BE)`.

  Prove A3^M>48 and W>=Z, then monotonicity gives A3^m>48 and W^m>4Y. The frozen plan supplies finite witnesses, not accepted Lean statements.
- Combine actual homogeneous Q correspondence and the exact actual remainder above with the Q/E/content bounds to derive

  `2^(5m)*abs(qN)/625^(5m) <= C_Qdelta/(4375^delta*A3^m)`,
  `abs(error)*V/625^(5m) <= C_Edelta*h_delta*Nq/W^m`,

  where h0=1/4375, h1=1, Nq=3^f*C<=2Y and V>0. Every denominator must be proved positive. Thus the two gap terms are strictly less than half of 625^(5m), contradicting the actual integer lower bound. These scaling inequalities and their contradiction consumer are **not yet implemented here**; listing them is not satisfying them.
- Finally use the resulting cofactor edge with actual prime windows and the existing 32-branch product graph. The other four edges remain separate obligations. This prefix alone does not prove a height bound.

## Source and finite-check evidence

`checks-and-sources.json` records full SHA256 and declaration line numbers for every source read, plus two accepted-source receipts whose current source bytes were rehashed and match: Rows evidence `20260911T072520428598Z`, 3 std3 roots; actual Moment Identity evidence `20260911T080713590371Z`, 4 std3 roots. Pade/Checkpoint is a source-audit entry, not an independent claim that pending consumers are accepted.

The bounded exact test ran 93,600 capacity tuples, including p=1 and all stated zero boundaries; 3,509 satisfy all premises and all satisfy k<e. It checked 1,080 integer extraction instances (including negative and zero bases), and fixed scaling/delta identities for m=1..14. Runtime was about 0.016 seconds. `bounded_check.py` reproduces these finite checks. They test the paper argument and boundary translation, not Lean elaboration or all-parameter validity.

Next concrete check: parent compiles Capacity, then FiveThree, then ActualGap; ActualRemainder follows only after its actual Hom and finite-divisor dependencies are accepted. After that the remaining high-value step is the two rational scaling inequalities above; no new constants or another finite checker is needed.
