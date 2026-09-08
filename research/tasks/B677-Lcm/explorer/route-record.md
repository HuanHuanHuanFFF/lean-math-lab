# B677 isolated explorer: live route record

Owner: /root/b677_explorer. Owned files: explorer/ only. Raw input packet: M(n,k)=lcm(n+1,...,n+k), natural n,m,k, k>0, m>=n+k; one exact equality is a counterexample. No primary preferred route supplied before first memo.

Round start 2026-09-08 04:43:27 Asia/Shanghai. First route checkpoint 05:20. Original stop 10:00, absolute authorized cap 11:00 only if primary invokes extension. Local exploration started 04:46. All coordination and verification count.

Research active; proof none; review none; novelty unconfirmed; publication local only.

## Initial assessment (recorded before 04:51:48)

Full unknown region: unbounded positive k and n,m with disjoint intervals. No new checked exclusion yet.

- Exact LCM equality is equality of maximal p-adic exponents. Candidate structural route: every later interval must consist of divisors of the earlier LCM, and must supply every maximal prime power of that LCM. Investigate whether this pair of coverage constraints forces overlapping intervals. Expected success would settle all parameters; missing step is a uniform combinatorial obstruction.
- Periodic quotient route: define G_k(a)=a(a+1)...(a+k-1)/lcm(a,...,a+k-1). Known Farhi-Kane periodicity gives finitely many rational product ratios for fixed k. This does not bound k or the unknown starting points effectively. Low priority for proof engineering until a uniform discriminant is found.
- Small-prime-power enclosure route (untested): compare maximum run length of divisors of lcm(1,...,N) above N with N. This might exclude n small relative to k but is not assumed true. Test before commitment. Remaining unbounded parameters even if n<=c k excluded: k,n,m in n>c k region.

## Literature freshness, 2026-09-08

Live web search returns the Erdős #677 page and forum as OPEN. Direct page open gives 403/internal error; indexed page and forum snippets were available. The Thue-Siegel fixed-k finiteness is stated there, but has not been reconstructed from a primary proof here.

Primary literature located:
- Erdős, Some Unconventional Problems in Number Theory, Math. Magazine 52 (1979), p.67: https://users.renyi.hu/~p_erdos/1979-22.pdf . Original same-length conjecture, variable-length examples, and failure of monotonicity are present in searchable text.
- Farhi and Kane, New results on the least common multiple of consecutive integers, Proc. AMS 137 (2009): https://cseweb.ucsd.edu/~dakane/lcm.pdf ; arXiv https://arxiv.org/abs/0808.1507 . Exact period of product/LCM quotient. This is known mathematics, not an original discovery.
- Cambie, Resolution of an Erdős problem on least common multiples (2024): https://arxiv.org/html/2410.09138v1 . Addresses #678 (inequality for different lengths), not a solution of #677.

A March 2026 forum comment points out that fixed d,k finiteness follows from n+1 dividing d(d+1)...(d+k-1), and explicitly warns that it does not close the full problem. Do not promote a fixed-parameter finite reduction to a full solution.

No relevant memory registry hits for B677/Math; no memory facts used. No existing research proof claims accepted without checking.
## First discriminating test and route development (recorded by 04:51:48)

Exact test `python research/tasks/B677-Lcm/explorer/probe_fibres.py` used Python 3.14.0 and math.lcm for starts a=n+1 in [1,10000], lengths k in [1,80]. No disjoint collision in this finite box. This finite absence leaves the global frontier unchanged. Runtime 1.17 s; full result is fibres-result.json.

The stronger proposed claim that every repeated LCM fibre is an interval of starts is FALSE. Counterexample: L(14,6)=L(16,6)=1627920 while L(15,6)=232560. This only refutes the fibre-convexity method; all these intervals overlap, so it is not a counterexample to B677. Independent direct-factor verification is next.

A uniform necessary condition was derived on paper: for d=m-n>=k and equal LCM L, every maximal prime power q in L divides a difference d+j-i between matching terms of the two blocks. Therefore

    L divides lcm(d-k+1,...,d+k-1).

This is stronger than merely bounding maximal prime powers by d+k-1. Proof obligation: for every prime p, choose positions attaining v_p(L) in both blocks; q divides their positive difference. No cancellation assumption is required.

Candidate useful cone reduction: if d<=C k for fixed C, combine this divisibility with L>=product(n+i)/(k-1)! and an explicit upper bound for lcm(1,...,(C+1)k) to force n<=A(C) k. Then m<=B(C)k. An explicit theorem giving a prime in (m,m+k] for m large enough eliminates all sufficiently large m, since that prime exceeds every term of the first block. This yields a genuinely finite remainder for each specified C, with ALL n,m,k bounded, unlike merely fixing d or k. For modest C the finite cutoff may be feasible; needs exact constants, boundary checks, literature verification, and an independent mathematical review before claiming accepted coverage. C remains unbounded globally, so no full solution is claimed.

Next discriminating check: assess C=2 or C=3 with conservative elementary LCM bounds plus a verified explicit prime-gap theorem; estimate the finite cutoff and exploit the fact that any collision later block must be prime-free. This route aims at a uniform infinite family, not isolated small k formalizations.

Primary source newly located: Laishram and Shorey, The greatest prime divisor of a product of consecutive integers, https://www.isid.ac.in/~shanta/PAPERS/ActaPCons.pdf . Theorem 1 gives P(Delta(a,k))>2k if a>max(k+13,279k/262), and >1.97k if a>k+13. This can exclude a separate n<=k region after finitely many exceptions. Searchable source text verified; PDF fetch timed out once. These are known theorems, not new results.

Timestamp correction at 04:52: earlier draft headings used unverified estimated clock labels; replaced by the verified checkpoint from clock__curr_time (2026-09-07 20:51:48 UTC). Mathematical claims and experiment outputs are unchanged.


## Handoff at the live 05:13:30 checkpoint

Primary relayed the user deadline change: exploration stops at 06:10 Shanghai; old 10:00/11:00 deadlines no longer apply. User authorized commit/push on a new remote branch, handled only by primary. Explorer performs no Git writes. Explorer target handoff before 05:18.

The standalone argument is complete-proof.md, prepared for a new-context reviewer. It covers d<=8k OR n<=369k, leaving both n>369k and d>8k unbounded. It uses Dusart Proposition5.4 and exact finite computations, not a complete Lean proof. Novelty remains unconfirmed.

Independent finite evidence: check_finite_cones.py finished with no collisions for C4 and C8; 691093 prime-free (m,k) queries, C8 covers 40070219 triples by exact integer Counter lookups. check_bounded_start.py additionally covers 2061156211 triples with n<=369k, no d restriction, no collisions; all sieve bits through179387 were independently checked by trial division, and all k<=71 were cross-checked against direct LCM for n<=200. Largest required k=71, m31397 to nextprime31469. Results and source hashes are preserved in their JSON files. No reported counts are measures of full-target progress.

Final delivery audit initially failed due to an invalid Python codec spelling utf8-sig; corrected to utf-8-sig. This was an audit-script input error, not a mathematical or finite-checker failure. Rerun result is delivery-audit.json. The audit checks source/script hashes, evidence links, no-collision outputs and the strict rational log margin above1480.

Next action: primary starts fresh-context review of complete-proof.md; then decide whether far-gap exploration has sufficient leverage before06:10. Do not spend the remaining budget on incremental constant tuning. Reusable structural statement is the difference-interval LCM divisibility; proof engineering is owned by primary. No accepted Lean theorem was produced by this explorer.
