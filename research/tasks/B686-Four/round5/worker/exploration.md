# Round 5 worker research memory

## Ownership and budget

Start read/checkpoint: 2026-09-07 12:01 UTC; new routes stop 12:37:56; finish by 12:45:56. Sole writable source/record directory is round5/worker. Old source read-only; ignored .olean dependency builds allowed. No commit, push, outside contact, or new subthreads.

Read AGENTS.md (including Research Memory), lean-research skill, task README, round4 report, worker handoff, remaining configurations and residual norm draft; also structure/index and relevant Lean source. Prior k5 two-prime and symmetric-position results are baseline, not new results. Full B686 and full k5 unresolved; novelty unassessed. This round uses existing source material, no new literature claim.

## 12:03 proposal — symmetric residual norm as a position bound

Source/motivation: round4/worker/residual-norm-draft.md. Unlike fixed-s integer gap certificates, the homogeneous norm can give a bound uniform in an unbounded residual factor s. Chosen main route: validate and Lean-prove the candidate under exact natural original-product hypotheses, d >= 600, d=s*M, s,M positive, and M^2 dividing E1*E5 or E2*E4, with E_i=3(n+i)-d. Goal d <= 160000*s^5.

Concrete application to unresolved {1,2,4}: d=P*Q*R, positive pairwise coprime full prime powers at these positions. The known slot-square conditions imply (QR)^2 | E2*E4, so the new uniform bound gives d <= 160000*P^5, equivalently QR <= 160000*P^4. This is a new necessary position-size relation if proved, not a full exclusion. Check whether it strengthens old individual upper bounds P^2,Q^2,R^2 < 9d; it would exclude extremely small unmatched P at arbitrary d. It supplies no absolute bound on P.

Proof obligations: (1) exact original-product -> z,d quintic; (2) squared norm identity; (3) nonzero homogeneous norm from monic rational-root argument plus 70d^2<E<71d^2; (4) absolute height <= 23591326959*d^8; (5) cancellation and explicit original-product bridge. The 160000 constant is inherited, not itself an improvement.

Coordination constraint: current advertised tools/ALL_TOOLS contain no send_input, no agent-control tool. No message has been sent to parent through an internal channel. Proposal and request are in to-main.md and commentary. No external service is used as a substitute. Parent requested support: independently audit identities/nonzero step; continue generalized asymmetric pairing/alternative auxiliaries.

## 12:05 main proposal received — switch to high-order branch auxiliaries

Provenance: live user message relaying main's new route, not a worker discovery. Main owns exact linear algebra and coefficients. The degree<=5, z-degree<=4 space has dimension20; order>=6 at three simple branches gives18 homogeneous constraints, hence a nonzero vector. This alone does not prove an effective tail or nonzero value on a solution. Need norm/height bounds or resultant handling for G=0; no novelty claim.

Worker switches main effort to rigorous local high-order divisibility interface, residual norm on standby. Test: clear denominators of a truncated branch R(d) and certify F(R(d),d) multiple of d^6; divided difference remains a q-unit when q|d,z-a and gcd(q,F_z(a,0)*denominator)=1. Then q^6 divides z-R(d) (in localized denominator-cleared form); a second evaluation identity gives q^6|G. This works for composite q with the stated coprimality, so complete prime powers are handled without valuation machinery. Need inspect hidden denominator primes, local derivative values, and conversion from Taylor constraints to exact polynomial identities. No coefficient solving duplicated by worker.

Initial audit: F(z,0)=z(z^2-9)(z^2-36); derivative at branches +/-6,+/-3,0 is respectively 1944,-486,324, only 2/3 factors. Denominator clearing may thus use only 2 and3 for the local branch recurrence. Auxiliary G coefficients can be cleared by arbitrary integer scaling; such scaling does not harm a divisibility conclusion if evaluated G itself has integer coefficients. The local interpolation denominators must still be verified on actual certificates.

## 12:11 UTC — coefficient combination and finite-closure target

Main reported saturated integer lattice correcting independent denominator-clearing basis; snapshot contact124-input.json pins exact input and source hash. Worker accepts main's coefficient construction as source and does not duplicate it. Main's ContactCertificates.lean first auxiliary is compiled according to main; main owns removal of denominator factors and original curve bridge. Worker generic LocalContact.lean attempt3 compiled exit0, two executable guards show standard axioms. Attempts1/2 failed by rewriting/type errors, guard diagnostics rejected the unresolved proof; retained logs.

New worker diagnostic: combination_probe.py checks primitive combinations A*G0+B*G1 for A=1..10000 with B nearest the limiting slope ratio. Decimal values select candidates only, not proofs. H=11G0-32G1 gives H5=-16701.07656..., H4=-43676092.67... at limiting c. Exact rational endpoint computation with old strip gives H5∈[-33392.283,-4162.206] and H4∈[-43683714,-43666596], suggesting a40000 tail cutoff. Plan sharpen existing centered-power proof for d>=20000 to 83894387*d<10000000*z<83894390*d, giving more slack and target H∈(-20000*d^5,0). A full result still needs main's local H certificate plus finite d=3000..19999 for all n; if those fail or exceed budget report only accepted effective bound. Request for H certificates appended to to-main.md (main confirms polling this file; no send_input available).

## 12:17 UTC — finite certificates accepted; tail in progress

Finite new range3000<=d<20000 generated with two independent exact arithmetic forms (raw five factors and120*binomial difference). Initial assumed cutoff formula failed at d3636,4545, retained generate-contact-finite.log; corrected formula names both exceptions, all17000 rows checked. This is a formula failure, not a solution. Six ContactFinite modules plus two old dependencies compiled exit0; finite-build-manifest.json records hashes, exact commands/exit/logs/guards. Statement not_four_below_20000 covers all n by prior adjacent-sign monotonicity, not n enumeration.

Tail generator initial syntax error retained, then fixed. Exact rational endpoint estimates saved contact-tail-endpoints.json, independent Lean inequalities generated in ContactTail.lean. Target strip uses old central_power_bounds with increased d20000 and rational constants, no irrational approximation axiom. H5 loose [-17000,-16000]*d5, H4∈[-44m,-43m]*d4, total degrees0..3 bounded by1b*d3. These imply -20000*d5<H<0 using d>=20000. Compilation pending; no tail acceptance yet.

## 2026-09-07T12:19:27.407099+00:00 — timestamp correction and bridge status

Earlier headings12:17/12:19 were estimated labels, not actual command times; they were ahead of the environment clock. They must not be used as timing evidence. Canonical finite build completion UTC is 2026-09-07T12:15:18.369211+00:00; tail attempt2 log mtime is 2026-09-07T12:15:42.373127+00:00. All later updates use datetime.now(timezone.utc). ThreePosition124 first compile proves composite-group and ratio results, but explicit prime-power corollary guard failed due the missing decidable proof that6 is composite. Fix is explicit `by decide : ¬ Nat.Prime6`, not a changed hypothesis.

## 2026-09-07T12:22:51.441959+00:00 — accept four-position continuation

Reading your four-position-probe first row and preserving snapshot/hash; will reuse strip and finite certificates for H4=-77G0+4G1. Main owns local11th-order certificates and factorization interface. Worker tail target -20000*d10<H4<0. Evaluating whether termwise bounds suffice or require recentering at83894387/1e7. ResidualPositionBound first compile failed with rewriting and tactic-layout errors; source/log retained, paused to prioritize four-position route; not accepted.

## 2026-09-07T12:26:54.462500+00:00 — four-position tail and original theorem passed

FourContactTail.lean attempt1 exit0; direct exact termwise bounds were already strong enough, no Bernstein/recentering dependency. Degree10 part in[-15000,-14000]*d10, all lower parts bounded by4e9*d8, hence -20000*d10<optimizedFour<0. FourPosition1245.lean attempt1 exit0, all3 guards pass. Public not_four_four_positions_ratio uses natural n,m, m>=n+5, d=P*Q*R*S, occupancies1/2/4/5, six pairwise Nat.Coprime assumptions, Nat.Coprime d6. Pending unified verification including your guard freeze.

The124 chain independent dependency-first worker build passed20modules (accepted124-manifest.json), source hashes fixed during those commands. I will not edit accepted core sources while you audit. Main support bridge from d|noncentral product is the best next integration step. Current residual-factor corollary has only routine Lean errors, being fixed without changing the new four-position objective.

## 2026-09-07T12:29:20.879817+00:00 — worker code ready to freeze / coordination overlap

ResidualPositionBound.lean attempt2 exit0, both guards standard3. The new original-ratio corollary: d=s(PQR), s>0, groups occupy1/2/4 and are pairwise coprime and individually prime to6 => d<20000*s^6. It is a uniform residual bound, not the deferred160000*s^5 norm proof.

I independently assembled worker/NoncentralSupport.lean at the same time as your newly announced main/NoncentralSupport, using your split_four_positions; it compiled exit0 with2guards. This is a duplicate consumer of the same support and center-factor result, not a separate breakthrough or independent mathematical method. Main owns integrated public presentation. Please keep both in unified scan or prefer your main module in report; I will not edit your files.

No further scanning/new parameter routes. Worker accepted source files: LocalContact, ContactTail, ContactFinite0..4, ContactFinite, ThreePosition124, FourContactTail, FourPosition1245, ResidualPositionBound, NoncentralSupport. All13 .lean modules have passed individual compile with guards; preparing source/axiom manifest and handoff now. No unaccepted .lean remains. Earlier accepted124-manifest covers dependency-first20modules; final new files have individual logs.

## 2026-09-07T12:30:37.004235+00:00 — research freeze, exact remaining scope

All13 worker Lean modules individually passed. Main supplied six-contact and11-contact certificates, saturation correction, four-position combination and partition bridge; worker chose11G0-32G1, formalized refined real strip as integer inequalities, degree-group bounds and finite20000 bridge. All substantive outcomes reflect collaboration; no isolated-worker claim. Generic LocalContact is reusable arithmetic infrastructure, not an independent new number-theoretic exclusion. Worker/main NoncentralSupport overlap arose from simultaneous implementation and has been disclosed, not counted twice.

Strongest verified mathematical status before full rebuild: no k5 original solution with d prime to6 and d dividing (n+1)(n+2)(n+4)(n+5); original solutions with gcd(d,6)=1 require gcd(d,n+3)>1. Four-position result includes previously unhandled three-prime-power distribution{1,2,4}. Residual bound is a new conditional non-symmetric three-position relation d<20000*s6 under d=sPQR and stated group/coprimality assumptions. It does not bound s independently. Full k5, allk original target, and novelty remain unresolved.

Untried or paused branches (not evidence of impossibility):
- Old symmetric residual norm d<=160000*s5: paused at main high-contact discovery before any new norm Lean proof; exact identities and nonzero argument still in old draft; no claim of having independently audited them this round.
- Center-containing non-symmetric three-position sets{1,2,3},{1,3,4},{2,3,5},{3,4,5}: main's D5/R6 contact search supplies coefficient spaces, but no combination/tail/finite exclusion was attempted here. Motivation is that this round escapes the old monic-cubic restriction; explicit next test would be a small lattice combination with rigorously nonzero height below an affordable d threshold.
- Four-position sets containingcenter: generic D10/R11 exists according to main's finite exact search, but some coefficients large; not formalized or analytically bounded here.
- Five occupied positions and/or d carrying2/3: no global auxiliary with contact order exceeding degree supplied; local denominator cancellation here requires prime-to6 groups. Existing fourth-round small-prime results remain baseline.
- No reflection equivalence was assumed: reflecting lower/upper intervals can alter signs/ratio and natural domains; any symmetry shortcut needs an exact source-aligned map.

Failure record: initial finite cutoff formula incorrect only at two checked displacements; fixed by exact exceptions. Initial local-contact rewrite and coprime-power elaboration errors; initial tail generator Python delimiter syntax error; explicit prime-power bridge missing compositeness6 proof; residual generalized-contact rewriting/layout errors. Every affected failure log remains, and acceptance guards rejected unresolved terms. These were method/implementation failures, not counterexamples to the accepted theorem.

## 2026-09-07T12:34:07.191344+00:00 — handoff preparation only

Main states all main Lean frozen and verify_round5.py started with600-second total budget; main owns exact sequential root-scan validation and integrated report. Worker makes no further mathematical proof or computation attempts. Existing final-build is still collecting its prior-started dependency-first compilation, then make_acceptance_manifest.py packages hashes/actual commands/exit codes and guard lists. final-handoff.md now explicitly attributes inherited norm, three-position high-contact, and four-position extension stages. No extension authorized or requested.

## 2026-09-07T12:35:41.244100+00:00 — real integration collision fixed by requested namespace change

Main reproduced duplicate declaration B686Round5Support.not_four_noncentral_support on joint import; evidence main/import-collision-check.log. Worker module namespace/end/guard names now B686Round5WorkerSupport; no other Lean source changed. My prior final-build had already completed exit0 when polled before edit; its snapshot is the pre-rename version and is not final joint-import acceptance. No worker dependency rebuild will be restarted. Running only the explicitly requested single-file compile; main owns the sole final full verification.

## 2026-09-07T12:37:07.924800+00:00 — final worker handoff / no active worker commands

Namespace correction complete and frozen: worker/NoncentralSupport.lean now B686Round5WorkerSupport, SHA256 ae2ce94addfee1fa7057921d985eb51776b1dfc2fdab0f321b4dd6f4c9d9a81e. Single-file compile exit0,2guards pass (lean-noncentral-support-namespace-fix.log). No other Lean source edited after freeze. Prior own final-build already naturally completed27research modules before rename; snapshot explicitly marked pre-rename, no rebuild restarted. Main owns only final integrated build.

acceptance-manifest.json generated2026-09-07T12:36:26.717193+00:00:13worker modules,21executable standard-axiom guards, exact current source hashes and actual commands/exits. Namespace correction supersedes old record for that file. final-handoff.md complete with precise original statements, collaboration origins, failed formula/composition/integration attempts, corrected timestamps, old norm pause and explicit untried branches. Full B686/fullk5 still unsolved; novelty unconfirmed.

Worker ends now, before12:37:56new-route cutoff and12:45:56hard deadline. No outstanding worker Lean/experiment processes; no commit/push, external contact or new subthreads. Do not wait for another worker theorem.
