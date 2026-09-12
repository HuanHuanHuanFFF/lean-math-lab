# B699 external retrieval and mathematical audit — 2026-09-08 UTC

All `lean-math-lab` directories were read-only. The adopted baseline is `08a8ac6872e8abfd4a2c480496da350a97ecdc13`; untracked active formalization is not accepted by this audit. The exact target is: for every natural triple `1 ≤ i < j`, `2*j ≤ n`, some prime `p ≥ i` divides both `choose n i` and `choose n j`.

## Decision and evidence boundary

No complete proof was recovered. The strongest useful recovery is a published size theorem combined with an independently audited universal transfer argument: **every hypothetical counterexample must satisfy**

\[
\binom ni<\binom ji^2,\qquad 2j>3i.
\]

This constrains every legal input, rather than adding a computational family. Its elementary transfer and exact full-prime-power product were subsequently independently Lean-verified in the sibling `bridge-lean/` audit; see the acceptance update below. Its size input is a substantial 1978 published theorem; the original analytic estimates and historical computations were **not** independently reproduced here. It is paper-level progress, not an accepted Lean theorem in the main repository.

The withdrawn 2026 full-proof attempt has explicit false intermediate claims. Several independent local lemmas survive. Cong Lu's scanner has a sound mathematical reduction on its documented range, but its saved campaign cannot be bound to an exact committed source/configuration. Historical Will Blair Lean code supplies general Lucas and prime-interval interfaces; source extraction was completed, but this audit does not claim successful pinned compilation or axiom output.

## 1. Published backbone and an all-input bridge

### 1.1 Primary theorem and exact exception set

E. F. Ecklund Jr., R. B. Eggleton, P. Erdős, J. L. Selfridge, **On the prime factorization of binomial coefficients**, *J. Austral. Math. Soc. (Series A)* 26 (1978), 257–269, DOI [10.1017/S1446788700011770](https://doi.org/10.1017/S1446788700011770).

[Publisher PDF](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/2971F0D118511902190BDED49B361FF6/S1446788700011770a.pdf/on_the_prime_factorization_of_binomial_coefficients.pdf), saved as `sources/eees-1978.pdf`. The main theorem is on printed page 258. Copyright Australian Mathematical Society 1978; no open source license asserted.

For `1 ≤ i` and `2*i ≤ n`, uniquely write `A = choose n i = U*V`, putting all prime powers with prime **strictly below** `i` in `U`, and all with prime **at least** `i` in `V`. EEES proves `U < V`, equivalently `A < V²`, except at exactly these twelve `(n,i)`:

`(8,3), (9,4), (10,5), (12,5), (21,7), (21,8), (30,7), (33,13), (33,14), (36,13), (36,17), (56,13)`.

The distinct split using `p>i` has a different theorem and exceptional-set status; do not substitute it. The published proof uses prime estimates, finite regional checks, and smooth-number tables. **Class: published theorem, statement/source checked; original analytic dependencies and computations not fully replayed.** The exception list was independently cross-checked by exact factorization through `n=149`.

### 1.2 Elementary coprime-divisor transfer

Portable statement, valid independently of B699:

> If `i ≤ j ≤ n`, `D ∣ choose n i`, and `Coprime D (choose n j)`, then `D ∣ choose j i`.

Proof: the master identity is

\[
\binom nj\binom ji=\binom ni\binom{n-i}{j-i}.
\]

Its right side is divisible by `D`; coprimality cancels `choose n j` from the left. No prime-power localization or analytic input is needed.

Assume now that the legal B699 triple has no common prime `p≥i`. Every prime divisor of `V` is at least `i` and divides `choose n i`; consequently none divides `choose n j`. Hence `Coprime V (choose n j)`, so

\[
V\mid\binom ji,\qquad V\le\binom ji.
\]

This argument includes `p=i` exactly. It does not assume `p²>n`, a tame interval, coprime cofactors, or a bound on the number of candidate primes. A convenient first Lean interface can take an arbitrary divisor `D` with the guard `∀ p, p.Prime → p ∣ D → i ≤ p`, and specialize to the large-prime part later.

**Final acceptance update: Lean-verified and statement-audited in the sibling independent `bridge-lean/DivisorTransfer.lean`.** The exact declaration `B699BridgeAudit.actual_prime_part_transfer` includes the complete finite prime-power product with threshold `i≤p`, not only an abstract divisor interface. Lean4.33.1/mathlib `0df444a360eaa60ab8c11dca51a86af692955474` compiled the whole file with exit 0; all four theorem axiom sets are exactly `[propext, Classical.choice, Quot.sound]`. Success evidence: `bridge-lean/verification/20260908T111858984907Z/evidence.json`. EEES and its size/Vandermonde consequences remain paper-level. The general transfer was tested nonvacuously using the largest part of `choose n i` coprime to `choose n j`, without assuming a nonexistent B699 counterexample.

### 1.3 All twelve exceptions are uniformly harmless

Each exceptional row has an explicit prime in the top interval:

| n | i | p with n-i<p≤n | All legal j |
|---:|---:|---:|---|
| 8 | 3 | 7 | 4 |
| 9 | 4 | 7 | none |
| 10 | 5 | 7 | none |
| 12 | 5 | 11 | 6 |
| 21 | 7 | 19 | 8–10 |
| 21 | 8 | 19 | 9–10 |
| 30 | 7 | 29 | 8–15 |
| 33 | 13 | 31 | 14–16 |
| 33 | 14 | 31 | 15–16 |
| 36 | 13 | 31 | 14–18 |
| 36 | 17 | 31 | 18 |
| 56 | 13 | 53 | 14–28 |

For every legal `j`, `n-i<p≤n` forces `p>j>i`, `n<2p`, and `n-p<i<j<p`. The units residue of `n` modulo `p` is therefore below both indices, so `p` divides both binomials. This is exactly the historical Lean top-interval interface in §2. All **41 legal triples** were additionally checked by exact binomial arithmetic. The two empty rows need no witness application.

A hypothetical counterexample is consequently outside the twelve-case exception set, and §1.1–1.2 yield the **unconditional necessary inequality**

\[
\text{no common prime }p\ge i\Longrightarrow
\binom ni<V^2\le\binom ji^2.
\]

### 1.4 Vandermonde, including odd i

Suppose `2*j ≤ 3*i`. Set `r=⌊i/2⌋`, `s=⌈i/2⌉`. The integer assumptions give

\[
j-i\le r\le s\le\lfloor j/2\rfloor.
\]

Symmetry and unimodality imply `choose j r ≥ choose j i` and `choose j s ≥ choose j i`. Retaining the `r` term of Vandermonde, and using monotonicity in the top index,

\[
\binom ni\ge\binom{2j}i
=\sum_{t=0}^{i}\binom jt\binom j{i-t}
\ge\binom jr\binom js\ge\binom ji^2.
\]

This contradicts §1.3. Thus B699 holds when `2*j≤3*i`, and every hypothetical counterexample has `2*j>3*i`. Odd `i` uses two adjacent coefficients; neither is silently replaced by an unjustified square.

This is an **independent reconstruction from primary EEES**, prompted by a secondary description of Liam Price's later proof. It does not reproduce the unavailable Price document, and no novelty is claimed.

### 1.5 Precise localization if a residue interface is desired

For prime `q≥i` with `e=v_q(choose n i)>0`, put `δ=1` when `q=i`, and `δ=0` otherwise. There is a unique `α∈[0,i)` with `q∣n−α`, and

\[
Q=q^{e+\delta}\mid n-\alpha,\qquad n\bmod Q=\alpha.
\]

The length-`i` numerator window has exactly one multiple of `q`; the denominator valuation is zero for `q>i` and one for `q=i`. If `q∤choose n j`, the remainder obstruction gives `r=j mod Q≤α`. Hence `s=(n-j) mod Q=α-r`, so

\[
r+s=\alpha<i,\qquad Q\mid j-r,\qquad Q\mid n-j-s.
\]

The extra exponent at `q=i` is essential when specifying the full numerator power. These are necessary constraints, not an equivalence after higher digit conditions are discarded. The transfer in §1.2 avoids this bookkeeping.

### 1.6 Evidence and implementation obligations

`checks/eees_bridge_audit.py` and `checks/eees-bridge-results.json` record 70,210 unconditional coprime-part transfers, 76,696 localization instances including 377 with `q=i`, 23,390 Vandermonde comparisons (`4≤n≤120`), and every legal exceptional triple. These check the elementary reconstruction; they do not replay EEES globally.

For the remaining Lean acceptance: master transfer and the finite-product prime-part interface are now independently proved; supply a formal EEES theorem with the exact exception predicate; discharge exceptions by the top-interval theorem; then formalize the displayed Vandermonde inequalities. **The substantial missing formal input is EEES**, not a further finite binomial scan. Full B699 still requires a contradiction in the unbounded region `2*j>3*i`, outside any separately established central-row result.

## 2. Historical Lean: exact reusable interfaces

Primary repository [williamjblair/lean-proofs](https://github.com/williamjblair/lean-proofs), pinned commit `aff1d30b3b1c6bd705810fa4d588b03940fb31df`, file `lean/Erdos699/Proved/Basic.lean`, blob `8f581411fa080d21bbb41df86a6d6c2ed2ae45f8`. Its last content commit is `f2e3db95b3ff0d36441646bb14606132e504f0c3`, July 5, 2026, Will Blair. MIT, copyright 2026 Will Blair.

Environment: Lean `v4.29.1`, mathlib `5e932f97dd25535344f80f9dd8da3aab83df0fe6` (`v4.29.1`). The full project also pins PrimeNumberTheoremAnd; the extracted generic closure uses only the original five Mathlib imports. No main-repository environment was used or changed.

| Declaration | Exact content and role |
|---|---|
| `dominated_iff_forall_digits` | For `p≥2`, the finite domination encoding equals domination at every base-`p` digit. |
| `lucas_nonzero_mod_prime_iff_dominated` | For prime `p`, `choose n k % p ≠ 0 ↔ dominated k n p`, for all naturals `n,k`. Exact Lucas equivalence. |
| `commonPrimeDivisor_of_digit_failures` | Prime `p≥i` and a failing digit for each index give a target witness. General sufficient interface. |
| `commonPrimeDivisor_of_prime_in_top_interval` | Prime `p`, `i<j`, `2*j≤n`, `n-i<p≤n` give a common prime `≥i`. |
| `t3_top_interval_prime_free_of_no_common` | No common prime forces `(n-i,n]` to contain no prime. Despite its name, generic in `i`. |
| `t3_no_large_prime_dvd_fallingWindowProduct_of_no_common` | No common prime forces every prime factor of the numerator window to be at most `n/2`. |
| `no_commonPrimeDivisor_iff_obstructionCriterion` | No witness iff every prime `p≥i` digitwise dominates at least one of the two indices. Exact reformulation, not closure. |
| `t1_i_eq_one` | Global `i=1` case for `2≤j` and `2*j≤n`; lower priority than generic interfaces. |

`checks/HistoricalGenericSlice.lean` preserves the declarations and proofs unchanged from three source blocks, and appends seven `#print axioms` requests. The original full MIT permission notice is copied beside it in `checks/LICENSE-williamjblair.txt`. This is an exact **source slice**, not the complete 11,864-line module. **No successful pinned compilation or axiom output is claimed by this report.** External dependency preparation encountered disk exhaustion. Source inspection found no added assumptions in these extracted proofs, but that does not replace kernel checking.

The larger historical `i=3` campaign explicitly leaves kernel exclusion obligations open. Some theorems are conditional, and a weakened normalized kernel has an explicit counterexample in the source. Do not discard those hypotheses or promote the incomplete campaign to B699.

Later history points to `vela-science/erdos-frontier`. Its public archived HEAD was `12fdb0ad09c710469e50a60e8a6e2c81c9d18c3f` on retrieval. Archive/compaction notes do not claim a mathematical solution; no new B699 proof was recovered there. Archival status does not complete an old proof.

## 3. Withdrawn proof: provenance, failures, and surviving lemmas

### 3.1 Recovery limits

The named repository `srinikethpsarathy-oss/Erdos-verification-suite` returned 404; exact repository/fork-name searches found no accessible replacement. Known raw `Erdos (1).lean` retrieval also returned 404. Code, commit, and issue searches found a historical audit but not the original Lean file or pinned manifest. The evidence cannot distinguish deletion, privatization, or renaming. Archive retrieval did not complete, so no claim is made that archived copies do not exist.

The [author's forum page](https://www.erdosproblems.com/forum/user/Sriniketh) preserves a later claim; the [B699 forum](https://www.erdosproblems.com/forum/thread/699) records StijnC's May 1 objection and Thomas Bloom's May 11 invalidity judgment. These primary discussion records were retrieved through search caches where direct opens were blocked.

A contemporary link trail recovered the six-page [Revision 4 PDF](https://files.catbox.moe/uw4ah2.pdf), saved with extracted text. Its cover says March 2026 Revision 4; headers say Revision 3. There is no named-author byline or license; attribution comes from the public source trail. This artifact must not be conflated with the later sixteen-page paper and Carry supplement described secondhand.

Secondary memo: `mrmartin/claude_proving_new_mathematics` commit `7547b8ede5509b0a2c31de582e95088cba7967ee`, `memory/0052-survey-erdos699-literature.md`, blob `5a854ac1ef654a22d0e32c170257c1ba8fff32d4`, preserved locally. Its assertion that 27 Lean declarations have clean axioms is **not inherited as verification**. Original definitions, `native_decide` uses, source version, and theorem coverage were unavailable for checking.

### 3.2 Explicit false steps in the six-page proof

| Printed step | Audit |
|---|---|
| §2.5: `p>i`, `p∣choose j i` imply `j-i<p` | **False:** `i=2,j=10,p=3`, `choose 10 2=45`. A multiple of `p`, rather than `p` itself, can lie in the numerator interval. The displayed floor inequality is reversed. |
| §5.2 Prime Band Escape: `i<r≤j-i` and `r` divides the numerator window imply `r∣choose n j` | **False:** `(n,i,j,r)=(28,3,14,7)`, but `choose 28 14=40,116,600` is not divisible by 7. |
| Case B as an exhaustive cancellation route | At `(28,3,14)`, take `q=13`: `j-q=1<2<i`, `13∥26`. It divides `choose 28 3=3276` and `choose 14 3=364`, but neither `choose 28 14` nor `choose 25 11`. This realizes StijnC's mechanism. |
| Cofactor Escape (a)/(c) in generality | (a) uses false §2.5. In (c), a numerator multiple in a long block may cancel against the factorial denominator; only an actual positive binomial valuation suffices. |
| §5.4: two nearby smooth terms are bounded by the largest consecutive smooth pair | **Invalid inference:** 16 and 18 are `{2,3}`-smooth, distance 2, and exceed the stated consecutive bound 9. This refutes the inference, not by itself every possible guarded FO theorem. |
| §5.5 parity | A `{2,3}`-smooth cofactor at least 2 can be odd (3); adjacent coprime products at least 11 need not both be prime. An inequality from `n≥2j` is also reversed. |
| §5.7 universal completion | Terminating a finite search for each fixed `i` does not show that every search accepts, or cover all unbounded `i` by finitely many completed checks. |
| §5.9: one of `n,n-1` is divisible by 4 | **False:** `n=6`; `choose 6 2=15` is odd. |

The triple `(28,3,14)` is **not** a B699 counterexample: its gcd is 36, with valid boundary witness 3.

### 3.3 Independent local lemmas that survive

**Prime Power Bridge.** Let `p` be prime, `e≥1`, `Q=p^e`, `n=uQ+a`, and `0≤a<i<j≤n`, `j<Q`. Then `n mod Q=a`, `i mod Q=i`, `j mod Q=j`; the accepted remainder lemma proves both divisibilities by `p`. Add `p≥i` for B699. Exact valuation, `p≤j`, and `e≥2` are unnecessary once these inequalities are explicit.

The printed proof wrongly insists on a digit-1 carry: at `n=8,i=2,j=4,p=2,e=3`, the first carry is at digit 2. Its remark that only `p²∣n-a` is used is false if it removes `j<p^e`: at `n=12,i=2,j=4,p=2,a=0`, `4∣12` while `choose 12 4=495` is odd.

**Carry at `M=1`.** For prime `p`, `V≥2`, `0≤a<p`, `n=p^V+a`, and `p<j≤n/2`, one has `a<p<j<p^V`; the bridge supplies `p` at `i=p`. This is a pure-power sufficient condition. No argument forcing every obstructed input to have `M=1` was recovered. The unavailable supplement's `M≥2` closure and finite subordinate checks are not accepted as a global dichotomy.

**Master identity and B-α.** The identity in §1.2 implies `p∣choose n j` if `p` is prime, `p∣choose n i`, and `p∤choose j i`. Valid, and weaker than the general coprime-divisor transfer.

**Actual tame valuation.** If `p>i`, `j-i<p≤j`, and `p` is prime, then `p>j/2`, both denominator factorials are prime to `p`, and `v_p(choose j i)=1`. The converse interval assertion remains false.

**FO characterization requires a pinned definition.** The early PDF's FO includes narrow-band, loneliness and exponent conditions; failure of the strict target does not force that definition. The later memo also uses the weaker predicate `∀p>i, p∣P → p∣choose j i`. It is necessary for absence of a strict witness, but not sufficient: `(n,i,j)=(9,2,3)` satisfies it, while prime 3 divides both binomials and their gcd is 12. A theorem `fo_char` equating two definitions is not automatically an equivalence with the original obstruction. The exact later Lean definition was not recovered.

**Smooth-pair/S-unit, corrected conditional route.** Suppose an independently proved structural condition gives two distinct `{primes≤i}`-smooth terms `x,y` in the length-`i` window. Their distance `d` lies in `1…i-1`. A correct bound must cover every such `d`; equivalently, `x/d-y/d=1` is a rational S-unit equation since `d<i` is S-smooth. The largest integer consecutive smooth pair is insufficient. The later proposed S-set also includes prime factors of `choose j i`, hence depends on `j`: a bound `N₀(i,j)` does not yield a finite search over all `j`. No universal forcing of this smooth configuration was recovered.

These are **audited elementary statements or conditional leads**, not verification of an unavailable Lean module.

## 4. Cong Lu scanner: completeness and provenance

Full-history clone `repos/erdos_699_rust`, [conglu1997/erdos_699_rust](https://github.com/conglu1997/erdos_699_rust). Exactly two commits: initial source/log commit `7fdcc0b3fb61b3206979e2ff1a25b00ff615d22a`, January 6, 2026 10:51:47 UTC; `.gitignore`-only HEAD `7d030640beeb6bd64b4703fb2e252576a8ab56bb`, 10:52:03. Author Cong Lu; Cargo authors `Erdos 699 Compute Team`. Cargo declares `MIT OR Apache-2.0`; no standalone license file. Rust edition 2021 with Cargo.lock.

### 4.1 Mathematical completeness of a successfully completed fresh run

1. Full sieve/SPF/previous-prime tables are built to the requested maximum. At row `n`, set `m=⌊n/2⌋`, `ℓ=prevprime(n)`, `g=n-ℓ`. Only `i≤min(m,g)` are scanned. Bertrand gives `ℓ>n/2`; every omitted `i>g` and legal `j` has `n-ℓ<i<j<ℓ`, so `ℓ` witnesses both.
2. Incrementally factoring `n-i+1` retains all numerator-window prime factors, hence every divisor prime of `choose n i`. Candidates are filtered by `p≥i` and the exact support containing `i`; denominator cancellation does not create a false witness.
3. For each candidate, support is exactly `{k∈[1,m] : p∣choose n k}`. The union covers all legal `j` iff that `(n,i)` has no counterexample; an uncovered index is returned explicitly.
4. For `p>n/2`, support is the interval `n-p<k≤m`. For `p>n/3`, the two-digit interval routine applies; `p²>n` fails only at tiny `p=2,n=4,5`, whose formula was checked directly. Other supports are complements of all digitwise dominated indices, in bitmap or interval form. The digit DFS is exact Lucas arithmetic. Optional Legendre supports are also exact.
5. Separate unions with `p>i` detect strict near misses; the weak target retains `p=i`.

Inspected arithmetic and `u32` operations are safe over the advertised range, whose maximum family row is `2^27=134,217,728`; this is not a claim for arbitrary `u32` endpoints. The bitmap cutoff changes representation, not mathematics.

### 4.2 Resume risk and mismatch of saved run to source

Fresh tasks are disjoint chunks; the writer deduplicates results. In nonprofiling `--anomalies-only` resume mode, however, an out-of-order higher chunk may advance `max_seen` beyond an unfinished lower chunk. Restarting at that maximum can skip rows; no completed-row manifest is retained in that mode. Worker `join()` errors are ignored. These are completeness risks for those invocation patterns, **not evidence the reported campaign was affected**: the README's `--profile` disables resume.

The saved January 3 near-miss records have empty `shared_primes_geq_i` and no `gcd_factorization`. The documented command uses `--fast --anomalies-only --profile`; in current code, default `near-miss-mode=all` forces shared-prime collection despite `--fast`, and `build_pair_record` emits nonempty gcd factorizations for these cases. With only two commits and no original command receipt, the exact source/configuration producing those logs is unrecovered. Correct-looking logs are not exact source-bound replay evidence.

### 4.3 Actual evidence and independent checks

Saved progress/profile summaries report `9,999,997` rows (`4≤n≤10^7`), no weak counterexample, eight anomalous rows containing nine strict near misses. README also describes `n=2^k` through `k=27` and `n=3^m+1` through `m=17`; full targeted run receipts are not committed.

The nine triples are `(10,3,5)`, `(16,2,6)`, `(28,3,14)`, `(28,5,14)`, `(244,3,122)`, `(512,2,147)`, `(2048,2,713)`, `(2188,3,1094)`, `(1594324,3,797162)`. Independently reconstructed gcd factorizations confirm exactly `p=i` among shared primes at least `i`. The largest certificate uses small-index numerator factorization and independent Legendre valuations.

`checks/arithmetic_audit.py` checks exact Python binomials for `4≤n≤220`: 418,508 support comparisons, 176,064 large-prime interval checks, 3,449 `p=i` checks, and 12,098 numerator-factor inclusions, plus all counterexamples and near misses. **No Rust executable was built or run**: Cargo/Rust was unavailable. Neither the ten-million-row campaign nor targeted campaigns were replayed. The evidence class is source audit plus independent arithmetic, not Rust reproduction.

The early failed PDF's appendix says `i≤15` but advertises over 109 million triples; the actual legal count through `n=4400` is 72,073,240. Later `i≤23` gives exactly 110,109,924. Revisions must therefore remain separate.

## 5. Later leads and the accepted frontier

Atlas is audited separately by the parent. Its finite scan and exact residue/pruning mechanisms do not supply an unbounded forcing theorem.

A later secondary note, `aumara-xyz/golden-horizon-principle` at `0d0006108637f0f79985ffaacb8efb6c5955cba7`, `research/erdos-lab/NOTES-699.md`, blob `c11a99f8467cfa18a5e79a755b1066b3466aded1` (introduced at `8cb492c3fcdde6e118273604e8f98be9551ab012`, September 3), names two Overleaf papers:

- **Common Prime Divisors of Binomial Coefficients**, Liam Price submission, author line reportedly GPT 5.6 Sol Pro: reportedly `j≤3i/2` and `n=2j`.
- **Binomial coefficients sharing a large prime divisor**, van Doorn and Rocca: reportedly a determinant-based gcd lower bound, fixed-`i` finiteness for `i≥4`, and an explicit large-`i` exclusion.

Neither document nor exact Overleaf read URL was recovered. Direct primary proof-claims retrieval was blocked/timed out; exact title/author/code/commit/issue searches found secondary references only. The central-row claim, determinant bound, finite horizons, and large-`i` thresholds remain **leads**. Section 1 independently reconstructs only the EEES/Vandermonde consequence; it does not validate these other claims. Atlas's Del Pin/Bloom interval-entropy description likewise remains a source lead.

The accepted main-repository cofactor criterion retains its coprimality, size, and strict-prime hypotheses. It cannot be forced on every legal input: at `n=16,i=2`, all primes above 2 in the two-term window come from 15, namely 3 and 5. Distinct choices have cofactors 5 and 3, giving size `5*3*(1+1)=30≥16`; repeating a prime fails coprimality. Yet `(16,2,6)` has valid boundary witness 2. A universal adoption plan needs a boundary-prime route or a more general structural argument.

Recommended adoption order: generic divisor transfer; exact Lucas/top-interval interfaces; then the EEES-backed size obstruction, treating its substantial formal dependency as a separate obligation. More individual `M=1` examples or finite scans do not supply the remaining all-input proof.

## Evidence inventory

| Artifact | Class |
|---|---|
| `sources/eees-1978.pdf` | Primary published theorem; original proof computations not replayed |
| `sources/parthasarathy-revision4-catbox.pdf` and text | Recovered primary invalid proof |
| `sources/mrmartin-memo-0052.md` | Secondary historical lead; no inherited Lean verification |
| `sources/aumara-notes-699-20260903.md` | Secondary later-paper lead |
| `checks/arithmetic_audit.py`, `checks/arithmetic-results.json` | Independently executed exact arithmetic |
| `checks/eees_bridge_audit.py`, `checks/eees-bridge-results.json` | Independently executed bridge and exception checks |
| `checks/HistoricalGenericSlice.lean` | Exact extracted source; no successful kernel/axiom audit claimed |
| `sources/source-manifest.json` | Source pins, hashes, and toolchain metadata |

There is no complete Lean proof of B699 in the evidence recovered here. Invalid bridges, unavailable claims, audited elementary lemmas, published dependencies, source-only Lean, and finite computational results remain explicitly distinguished.
