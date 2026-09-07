# B686 / Four — round 4 worker live exploration

## Scope and clock

- Worker owns only `research/tasks/B686-Four/round4/worker/` and descendants. No shared entry edits, toolchain changes, commits, pushes, external messages or additional agents.
- Exact problem: natural `k>=2,n>=0,m>=n+k`, `P_k(t)=prod_{i=1}^k(t+i)`, `P_k(m)=4P_k(n)`. Set `d=m-n>=k`, `h=d-k`, `K=d+k`, `N=n+1`.
- First measured UTC: **2026-09-07T08:50:11Z**. Original stop times 10:43/10:48/10:48:35Z are **superseded by the user extension received around 09:55Z**: stop opening major routes at **10:55Z**, checkpoint **11:00Z (Beijing 19:00)**. A concrete especially close/important proof may receive a short further extension from the coordinator, with explicit work and checkpoint. No waiting to consume budget.
- Read AGENTS.md, local lean-research skill, task README, round3 final report, tool-research-2026-09-07.md, docs/STRUCTURE.md, research/README.md. The user scope overrides general file ownership in the old task README. Read-only git status showed README/coordinator modifications and untracked tool research; preserve them.
- Research / paper proof / exact computation / Lean / literature / novelty remain separate. No global solution claimed. No new literature claim or firstness claim.

## 2026-09-07T08:51Z — route A: independent audit of tool report section 4

**Claim.** If `k>=3`, `d=p^a`, `a>=1`, prime `p>k`, `p!=3`, an original solution implies `d<(k-1)/dist(beta_k,Z)`, where `beta_k=1/(4^(1/k)-1)`. At k=5 this gives `d<32`.

**Paper audit: confirmed.** Integer-polynomial congruence gives `d|3P_k(n)`. Since p differs from 3, p^a divides P, and p>k permits exactly one p-divisible lower position, hence `n+i=q*d`. Strict monotone factor comparison gives `beta*d-k<n<beta*d-1`; k>=2 and d>0 justify both strict ends. Substitute n to obtain `(i-k)/d<q-beta<(i-1)/d`, hence `dist(beta,Z)<(k-1)/d`. Rational-root/integer-root argument shows beta irrational for k>=3. The explicit fifth-power margins are `4*13^5-17^5=65315>0` and `33^5-4*25^5=72893>0`; thus `25/8<beta_5<13/4`, nearest integer 3, distance >1/8. No sign or boundary error found.

**Exact finite completion for that displacement class (not Lean).** Since p>5 and d<32, possible d are 7,11,13,17,19,23,29,31. Exact adjacent sign brackets `(d,lo,F(lo),lo+1,F(lo+1))`, with `F(n)=P_5(n+d)-4P_5(n)`, are:

```
7 18 949200 19 -12600
11 31 3116520 32 -3754080
13 37 9130680 38 -3669120
17 50 9180000 51 -31071600
19 56 29211360 57 -31489440
23 69 1316160 70 -135203520
29 87 250089840 88 -71655360
31 94 18144000 95 -425690880
```

The ratio P(n+d)/P(n), not necessarily F itself, is strictly decreasing. Therefore these brackets exhaust n for each d. Together with the paper bound this excludes all k=5 displacements p^a with p>5, as a **paper + exact-computation** corollary. This is not the unrestricted problem.

**Commands/evidence.** Read commands used `cat` and `rg`; absent round4 directory made the initial `rg --files .../round4` exit 2, expected before creation. The first in-memory Python finite check (under one second, exactly eight d and bounded binary search `0<=n<=8*d`) used `math.prod` and printed the table above. No unbounded job or environment change.

**Checkpoint / next.** Audit done; proceed to exact p-adic allocation for composite displacement. Preserve the cheap baseline `d|3P_k(n)` and full p^a position bound `p^a<=d+k-1`; the old (5,182,241) is not evidence that stronger tools are needed.

## 2026-09-07T08:53Z — route B started: square divisibility at allocated positions

**First strengthening, paper.** Suppose `p>k`, `p!=3`, `a=v_p(d)>0`. The unique lower p-divisible position i also is the unique upper p-divisible position, because p|d. Divisibility `d|3P` gives `v_p(n+i)>=a`; equality of upper and lower total p-valuations excludes >a, because adding d would then leave upper valuation exactly a. Thus both valuations are exactly a.

**Candidate stronger congruence to audit next.** Write `n+i=p^a*q`, `d=p^a*D`, both q,D units mod p, and divide the original equation by p^a. The products of all other positions are units and congruent modulo p^a, giving `q+D == 4q (mod p^a)`. Therefore **`p^(2a) | 3(n+i)-d`**. This retains more of the original equality than `d|3P` alone.

**Proposed composite consequence (not yet accepted).** For k-rough d (all prime divisors >k), group its coprime prime powers into assigned positions, writing `d=prod r_i`. Then `r_i^2 | L_i:=3(n+i)-d`. If at most two r_i are nontrivial, `d^2 | L_i L_j`. The real strip makes `L_i/d` tend to `C_k=3 beta_k-1`; hence `L_i L_j/d^2` is an integer tending to C_k^2. If C_k^2 is not an integer this should give an explicit bound, potentially treating all d with <=2 distinct prime factors. Need rigorous interval, nonintegrality, boundary treatment and an incremental comparison with cheap filters.

## 2026-09-07T08:56Z — route B paper checkpoint and Lean priority

- Coordinator independently sent the same square congruence and two-position idea. The identity in `two-position-bound.md` verifies it without assuming the exact valuation first. Grouping works for arbitrary coprime groups of complete >k prime powers sharing positions.
- **Paper result confirmed:** for every fixed k>=3, k-rough displacements assigned to <=2 positions have effective bound `d<3(k-1)(2c+3)/dist(c²,Z)`. The field-degree argument excludes rational c², including the k=4 exception by explicit `c²=22+12sqrt(2)`.
- **k=5 conservative tail:** rational beta bounds `31298/10000<beta<31299/10000` imply, for d>=600, every E_i/d lies strictly between `41847/5000` and `84097/10000`, both positive; squared endpoints are strictly between 70 and 71. Therefore `d²|E_iE_j` is impossible.
- User prioritizes Lean verification. Coordinator owns the general square congruence and source bridge at `round4/main/ShiftCongruence.lean`; worker will not duplicate this proof. Worker now owns `K5TwoPosition.lean`: prove the rational strip directly by products of scaled factors, prove the d>=600 tail from `d²|E_iE_j`, and kernel-check adjacent signs for 5<=d<600.
- **Requested interface for coordinator:** the worker tail will use integer `E_i=3*((n:Z)+i)-d`, natural n,d,i,j, `600<=d`, `1<=i,j<=5`, original natural Icc product equality, and `(d:Z)^2 | E_i*E_j`. A convenient main bridge is an assigned-position square-divisibility lemma for a divisor q of d, q|n+i, and gcd(q,product of other lower factors)=1; alternatively an existential i for p^a||d, p>5. Then a two-prime-power displacement class can be connected without any real-number formalization. The finite portion will cover every d=5,...,599, so no primality enumeration is needed there.
- No Lean result is yet claimed. Initial tool availability: standard Python only (numpy present; sympy/cypari2/fpylll absent; no Sage/gp/Magma). No environment installation requested for this route.

## 2026-09-07T09:02Z — Lean tail accepted; finite range compiling

**Kernel-checked worker result:** `B686Round4K5.not_four_tail_product` in `K5TwoPosition.lean`.

```
theorem not_four_tail_product (n d i j : Nat) (hd : 600 <= d)
  (hi : 1 <= i) (hi' : i <= 5) (hj : 1 <= j) (hj' : j <= 5)
  (hdiv : (d : Int)^2 | error n d i * error n d j) :
  (prod r in Icc 1 5, n+d+r) != 4*(prod r in Icc 1 5, n+r)
```

Here `error (n d i : Int) := 3*(n+i)-d`. The proof derives the two rational strip inequalities directly by comparing five scaled integer factors, then proves `70*d²<E_i*E_j<71*d²`. It uses no analytic or algebraic-number field theorem. Final `#guard_msgs` for `#print axioms not_four_tail_product` passed with `[propext, Classical.choice, Quot.sound]` only.

**Actual commands:**

```
timeout 150 bash scripts/lean-work.sh lake env lean research/tasks/B686-Four/round4/worker/K5TwoPosition.lean > research/tasks/B686-Four/round4/worker/lean-k5-attempt1.log 2>&1
timeout 150 bash scripts/lean-work.sh lake env lean research/tasks/B686-Four/round4/worker/K5TwoPosition.lean > research/tasks/B686-Four/round4/worker/lean-k5-attempt2.log 2>&1
timeout 20 python3 research/tasks/B686-Four/round4/worker/generate_k5_finite.py
timeout 180 bash scripts/lean-work.sh lake env lean research/tasks/B686-Four/round4/worker/K5Finite.lean > research/tasks/B686-Four/round4/worker/lean-k5-finite-attempt1.log 2>&1
```

Attempt 1 exited 1: the generic `mul_lt_mul_left` requested an inappropriate `MulRightStrictMono Int` instance. Replaced it by `mul_lt_mul_iff_right₀`; attempt 2 exited 0, log empty because the axiom guard consumed expected output. The error-recovery `sorryAx` in attempt 1 is not accepted evidence. The finite proof is still running at this checkpoint.

`generate_k5_finite.py` independently computes all 595 brackets by `math.comb`, then checks both endpoints against direct raw products. It also regenerates the list in `K5Finite.lean`, where `decide` (not native_decide) verifies every inequality. Exact rational margins: 602248982398888096, 4045142848279719497, 1171409, 27694591, all positive.

**Next:** finish kernel finite range, then combine it with the tail and the coordinator's square-congruence bridge for a genuine original displacement subclass. Begin sieve-baseline comparison only after this core packaging is secure.

## 2026-09-07T09:08Z — finite kernel certificate passed; source-level combination underway

`K5Finite.lean` exited 0 on its first attempt. `sign_certificates` checks 595 adjacent-sign pairs with `decide`; `not_four_small_displacement` excludes every natural n for every 5<=d<600. Both axiom guards passed with only the standard three axioms. The tail and finite files were then compiled with `-o` into their same worker directory for import; both builds exited 0. No source or output was written outside worker ownership by these commands.

`K5Combined.lean` imports those two worker modules and proves `not_four_of_two_position` for all d>=5, plus `not_four_of_two_position_original` in n,m notation with m>=n+5 and d=m-n. Current compile command:

```
LEAN_PATH=. timeout 60 bash scripts/lean-work.sh lake env lean -o research/tasks/B686-Four/round4/worker/K5Combined.olean research/tasks/B686-Four/round4/worker/K5Combined.lean > research/tasks/B686-Four/round4/worker/lean-k5-combined-attempt1.log 2>&1
```

The remaining premise is exactly the main task's desired `d² | E_i E_j`; the original product statement is explicit. Coordinator's general `slot_square` is separately accepted; prime-power existence and original displacement subclass bridge still pending there.

**Future-route audit, without diverting the current closure.** Coordinator and worker independently obtained the small-prime extension. For a fixed prime p, choose a lower position i with maximal v_p(n+i), let R be the product of the other factors, and F=(k-1)!. For each j!=i, `v_p(n+j)<=v_p(j-i)`, hence `v_p(R)<=v_p((i-1)!(k-i)!)<=v_p(F)`. The original equation gives `E_i R=(n+i+d)(R(n+d)-R(n))`. Since d divides the difference and d|3(n+i)R, multiplication by 3R shows **d²|3E_i R²**. Taking v_p and the preceding bound yields **p^{2v_p(d)} | 3F² E_i**. This proof is valid also for p=2 and p=3. Thus if all primes of d admit maximal-valuation positions among <=2 chosen positions, `d² | 3F² E_iE_j`. The same fixed-k irrational-limit proof applies with constant `3F² c²`; for k=5 the constant multiplier is 1728. This is paper only; no Lean claim yet, and the finite bound is much larger.

Coordinator additionally notes that the large-prime condition can be relaxed from p>k to p>=k because position differences are <=k-1; still exclude p=3. At k=5 this includes p=5. The worker tail/finite proofs need no changes because they do not mention primality.

**Limitation retained:** for r>=3 occupied positions, `d²|∏E_i` yields an integer asymptotic to c^r d^{r-2}, not a fixed constant. The two-position irrational-distance argument cannot be extended by simply multiplying one more factor. Odd-k central positions may yield cubed divisibility, but no unrestricted r>=3 consequence has been established.

## 2026-09-07T09:12Z — route B closed in Lean for original prime displacement classes

`K5Combined.lean` compiled and both guards passed. The coordinator supplied the checked `ShiftCongruence.olean`, including existential unique positions for p>=k and two distinct prime-power factors. Worker `K5PrimeClasses.lean` imports both sides and states:

- `not_four_prime_power`: natural n,m,p,a; m>=n+5; p prime, p>=5, a>0, m-n=p^a; the original natural Icc five-factor products cannot have ratio 4.
- `not_four_two_prime_powers`: natural n,m,p,q,a,b; m>=n+5; p,q prime, p,q>=5; a,b>0; m-n=p^a*q^b; original products cannot have ratio 4. **The final statement permits p=q**, reducing that branch to one prime power.

No bound on n,m,a,b,p,q is assumed. This is a true restricted infinite displacement class, not a bounded scan or merely a value-level inequality. Original full k problem remains unsolved.

Command: `LEAN_PATH=. timeout 90 bash scripts/lean-work.sh lake env lean -o research/tasks/B686-Four/round4/worker/K5PrimeClasses.olean research/tasks/B686-Four/round4/worker/K5PrimeClasses.lean > research/tasks/B686-Four/round4/worker/lean-k5-prime-classes-attempt1.log 2>&1`. Exit 0, empty log; both final axiom guards passed with `[propext, Classical.choice, Quot.sound]`. Main owns the general congruence proofs; worker did not modify them.

## 2026-09-07T09:12Z — route C: finite sieve comparison checkpoint

Command: `timeout 60 python3 research/tasks/B686-Four/round4/worker/compare_sieves.py --ks 5 --max-d 50000 --output sieve-comparison-k5.json > research/tasks/B686-Four/round4/worker/sieve-comparison-k5.log 2>&1`. Exit 0 in about 2.21 seconds. Exact powers certify floor(beta*d); the prior centered strip leaves two n candidates per d. All diagnostics were recomputed by trial factorization and direct original products. This is a finite comparison only.

| Stage | Survivors |
|---|---:|
| Geometric window, k=5, 5<=d<=50000 | 99992 |
| d divides 3P | 996 |
| d divides 3P + full p>=5 prime-power size bounds | 165 |
| Previous row + local second-order squares | 4 |
| Same cheap baseline + universal square product | 0 |
| Cheap baseline + v2 difference exactly 2 | 10 |
| Previous row + local squares | 0 |
| Full p>=5 lower/upper valuation equality, by itself | 0 |

Thus the second-order sieve adds information relative to the explicitly listed cheap baseline, **but the finite data do not show it is needed beyond full large-prime valuation matching**. Do not claim otherwise.

Useful diagnostic: (k,n,m)=(5,2768,3653), d=885=3*5*59, passes displacement divisibility, full prime-power size bound, and v2 difference 2. At p=59 the lower position is i=5 and E_5 modulo 59² is 472, so the new local square test rejects it. Original difference is -318269647483200. It fails full large-prime valuation matching independently. Earlier diagnostic (5,889,1174) already fails v2 and is weaker. Full details in `sieve-comparison-k5.json`.

**Next route:** preserve the completed original-class Lean chain; investigate whether the small-prime loss or central-position higher order supplies a substantive extension, with bounded experiments and explicit failure checkpoints. Main independently explores universal second-order identity and Prym structure.

## 2026-09-07T09:18Z — route D: k=5, the prime 2 may have no square loss

**Candidate strengthened claim:** whenever 2^a|d in an original k=5 solution, there is i in 1..5 with `2^(2a)|E_i`. Unlike the generic factorial-loss lemma, no multiplicative loss is needed. If accepted, combine with a prime >=5 to exclude all displacements `2^a*p^b` too.

**Paper mechanism for 8|d.** Choose the unique maximal 2-adic lower position from n mod 8. Write `P_5(n)=c*x*U`, `P_5(n+d)=c*(x+d)*U'`, x=n+i, where c is 2,4,or8, and U,U' are odd. In each residue class, U is an odd polynomial in t=(n-r)/8 with every nonconstant coefficient even. Consequently d|4(U'-U). The equation gives `(x+d)U'=4xU`, so `dU'=x(4U-U')`. For q=2^a|d, the odd coefficient 4U-U' gives q|x; then the odd U' gives 4q|x+d. Finally `E_i U=(x+d)(U'-U)` and q|4(U'-U) imply q²|E_i U, hence q²|E_i. This is a coprimality proof, avoiding a general valuation formalization.

The exponents a=1,2 can be handled by finite *modular* certificates (which cover all n,d), not a finite n scan. For a=1, four consecutive E_i already cover every residue mod4. For a=2, the original equation modulo128 with 4|d should force some E_i=0 mod16.

**Exact exploratory modular audit, not Lean:** at a=1..6, exhaust all n mod 2^(2a+3) and all d=2^a*D mod that modulus with D odd. Every local original-equation class had some E_i=0 mod2^(2a). Counts of accepted local pairs were respectively 128,384,768,1536,3072,6144; zero counterexamples. The bounded numpy command ran under `timeout 30` and finished in 0.44 seconds, stdout recorded here; it reduced every multiplication modulo <=32768 to avoid overflow. This checks the candidate precision and low cases, not the unrestricted lemma.

**Next:** formalize the normalized odd-cofactor argument in worker-only `K5TwoAdic.lean`; do not touch main's general congruence or Prym work. If the argument fails, record the exact gap rather than assume the modular evidence proves it.

## 2026-09-07T09:25Z — route D paused on paper; route E: symmetric triples and a cubic modulus

The 2-adic normalized-cofactor proof remains a promising paper result, but no Lean file was created for it. Coordinator suggests prioritizing a route that can exceed two occupied positions; the user requires multiple meaningful routes and Lean-centered verification. A new cancellation makes this possible for symmetric triples; switching to audit it before spending time on the 2-adic extension.

Let x=n+3, z=E_3=3x-d. For p>=5, q=p^a|d assigned to position i, write e=E_i and use q|n+i, q²|e. The local cubic expansion predicts:

```
i=1: q³ | 9E_1 - 25d²
i=2: q³ | 9E_2 - 10d²
i=3: q³ | E_3
i=4: q³ | 9E_4 + 10d²
i=5: q³ | 9E_5 + 25d²
```

Derivation: with y=n+i and cofactor R(y)=R0+R1*y+..., the degree<=2 part of the original difference is `-R0*e + R1*(d²+2yd-3y²)`. Since `3*(d²+2yd-3y²)=4d²-e²`, multiplying by 3 leaves `-3R0*e+4R1*d²` modulo q³; all remaining terms have total degree>=3 in q-divisible y,d, and q²|e makes e² negligible. R0,R1 at positions 1,2,3 are respectively (24,50),(-6,-5),(4,0), giving the listed constants after cancelling units modulo q³. **Position 2 sign/normalization needs careful independent check**: 3R0=-18 and 4R1=-20 yield `9E_2-10d²`, as listed. Positions 4,5 are obtained by reversal.

For allocation positions {1,3,5}, define `H_out=z*(3z²-100d²-108)`. At i=1, z=e+6 and modulo q³ this reduces to `216e-600d²=24*(9e-25d²)`; at i=5 it becomes `24*(9e+25d²)`; at the center it is divisible by q³ directly. Therefore, if *all* prime powers of d are assigned within {1,3,5}, coprimality should give **d³|H_out**.

For {2,3,4}, define `H_in=z*(3z²-20d²-27)`. At i=2, z=e+3, and modulo q³ it is `54e-60d²=6*(9e-10d²)`; the opposite slot reverses the sign. This gives **d³|H_in** for allocations within {2,3,4}.

Both H have degree3 and the modulus is d³: the quotient tends to `c*(3c²-A)` with A=100 or20. Since c has algebraic degree5, a nonconstant cubic polynomial in c cannot be rational. This is a genuine way around the naive cubic-product degree deficit, using symmetry to cancel the troublesome coefficient. It is still a restricted position class, not every three-position allocation or every d with three prime divisors.

**Requested main cross-audit/interface:** confirm these five cubic local congruences and the two explicit H identities. A convenient Lean helper would output q³ divisibility of `9E_i ±25d²`, `9E_i ±10d²`, or E_3 under existing prime-power position data. Worker will first check a sharper centered rational strip and H/d³ integer gaps, reusing the already checked 5<=d<600 certificates if the 600-tail works. No assertion here is yet Lean-accepted.

## 2026-09-07T09:35Z — sharper centered tail passed; universal cubic factorization replaces grouping

`K5CubicTail.lean` has compiled exit0 on attempt2 with both guards passing standard three axioms. It derives directly from the original equation, for d>=600,

```
3129812*d < 1000000*(n+3) < 3129820*d,
932*d³ < H_out < 933*d³,
1603*d³ < H_in < 1604*d³.
```

Combined with the previous finite module, `not_four_of_cubic` covers all natural d>=5. The key centered proof is the exact identity
`Q(y)x^5-Q(x)y^5=xy(y-x)(y+x)(5x²y²-4x²-4y²)>0`, which gives `y^5<4x^5`; the original equation then bounds `4x^5-y^5<15x³`. Fifth-power comparisons with the two rational constants finish the strip. No real root is formalized or trusted. Attempt1 lacked explicit x>0,y>0,y+x>0 facts for positivity; these were added without changing the statement. Its error-recovery axioms are not accepted.

Commands were `LEAN_PATH=. timeout 150 bash scripts/lean-work.sh lake env lean -o .../K5CubicTail.olean .../K5CubicTail.lean`, with logs `lean-k5-cubic-tail-attempt1.log` and `attempt2.log`, all paths under worker.

**New exact identity (paper + 100 exact raw-product checks, currently compiling in Lean):** let F=P5(n+d)-4P5(n), z=3(n+3)-d, U=3z²-100d²-108, V=3z²-20d²-27. Then

```
z*U*V +729*F = d³*(1800z²+5780zd+3060d²-8100).
```

Thus every original solution satisfies d³|zUV, without any factorization hypothesis. Moreover

```
V=27(n+2)(n+4)-d*(18(n+3)+17d),
U=27(n+1)(n+5)-d*(18(n+3)+97d).
```

Coprimality cancels V or U, giving the desired d³|H_out or d³|H_in. This directly excludes original k=5 solutions whenever `gcd(d,3(n+2)(n+4))=1` **or** `gcd(d,3(n+1)(n+5))=1`; it is broader than an explicit three-prime-power decomposition and needs no prime allocation bridge. Main independently checked and formalized the five local cubic congruences; those supply a separate audit of this cancellation.

`K5CubicClasses.lean` is compiling with original n,m statements and guards. The local root expansion is no longer a dependency of this worker proof.

**Planned natural selected-product version.** With x=n+3, outer selected S=x(x²-4), complement R=x²-1 satisfy `xS-(x²-3)R=-3`; inner selected S=x(x²-1), complement R=x²-4 satisfy `xS-(x²+3)R=12`. Therefore `d|S` and gcd(d,3)=1 (outer), or gcd(d,6)=1 (inner), imply the coprimality conditions above. This avoids prime-power factorization entirely and permits arbitrarily many primes concentrated in the symmetric triples. Need finish the short Lean Bezout bridge before claiming it accepted.

## 2026-09-07T09:38Z — route E compilation recovery and route F barrier identified

`K5CubicClasses.lean` attempt1 found only interface/transcription issues: two `dsimp` calls complained of no progress after `convert`, and the cast of natural 1 needed explicit `Nat.cast_one`. Replaced no-progress dsimp with `simp only`, added the cast lemma, rerunning. The polynomial identity itself passed its exact axiom guard. `K5SymmetricPositions.lean` has been written to connect the two selected-product conditions to the original natural n,m equation by the explicit Bezout identities above; waiting for the classes module before compiling.

**Prospective fourth-order attempt, paper obstruction.** It is tempting to treat all four noncentral positions by a degree4 polynomial and modulus d⁴. In z,d coordinates, put A(z)=(z²-9)(z²-36). The normalized original equation to order d³ is

```
z*A(z) + d²*z*(-40z²+540) + d³*(-200z²+900) == 0 (mod d⁴).
```

A monic degree4 auxiliary starting A(z), with total degree<=4, must have zero d¹ coefficient (a polynomial of degree<=3 vanishing at four roots). Its d² coefficient is forced to -40z²+540. Its d³ coefficient, allowed degree<=1, would have to take values `200z-900/z` at z=±3,±6: these are 100z on ±3 and 175z on ±6. No linear polynomial fits both odd pairs. The actual interpolant is `(25/9)z³+75z`, raising total degree to 6. Thus this natural monic total-degree4 ansatz fails; merely possessing a central cubic congruence does not produce a useful fourth-degree/fourth-modulus quotient for the other four positions. This is not a no-go theorem for every LLL or higher-order construction.

The same leading-coefficient test for degree3 auxiliaries at three selected roots says the d² interpolation has leading coefficient proportional to the sum of the three harmonic constants [25/12,5/6,0,-5/6,-25/12]. Only {1,3,5} and {2,3,4} have zero sum. Thus the current total-degree3 ansatz precisely singles out the two symmetric triples; other triples require an extra degree. Exact rational audit to be saved before relying on these as route exclusions.

## 2026-09-07T09:46Z — route E fully closed in Lean, arbitrary number of prime factors

`K5CubicClasses.lean` attempt3 passed all guards, with only two nonsemantic unnecessary-sequencing linter warnings. Attempt2 had repeated no-progress simp errors; replacing the `convert` sequence by explicit integer identities and `rw` fixed the issue without changing any mathematical hypothesis. `K5SymmetricPositions.lean` attempt1 was launched before its dependency olean existed and failed solely for that missing object; attempt2 passed exit0 and its final guard.

**New original natural-number theorem:** `B686Round4K5.not_four_symmetric_selected` assumes n,m natural, m>=n+5, `Coprime (m-n) 6`, and either

```
(m-n) | (n+1)(n+3)(n+5), or
(m-n) | (n+2)(n+3)(n+4).
```

It concludes the raw natural five-factor products are not in ratio 4. No bound on n,m or on the number/exponents of prime factors is present. The outer-only shift theorem in the same file needs only Coprime d 3. These are explicit position-concentration subclasses, not all three-prime-factor displacements.

The stronger coprimality theorem `not_four_coprime_symmetric` and unconditional necessary statement `solution_requires_common_factors` are also kernel checked in K5CubicClasses: an original solution forces both gcd(d,3(n+2)(n+4)) and gcd(d,3(n+1)(n+5)) to be nontrivial. All final transitive axiom guards list exactly the standard three axioms. The polynomial identity alone uses [propext, Quot.sound].

**Coordinator ownership retained:** main has separately finished local cubic slots and is implementing a general two-occupied-position cancellation using UniversalSquare; worker will not duplicate that bridge. The independently computed low-degree interpolation obstruction agrees on all ten triples and all five four-position sets.

**Next:** save the exact interpolation audit; then resume the normalized small-prime route if it can close another genuine displacement class within the remaining hour. For gcd recursion, the present identities force occupied complements but offer no descent that decreases d or a proved height measure. Balanced allocations remain compatible with the available size bounds; do not claim a recursive global proof.

## 2026-09-07T09:54Z — exact route-F audit, new baseline comparison, and route-D resumption

`timeout 20 python3 .../worker/interpolation_audit.py > .../worker/interpolation-audit.log 2>&1` exited0. `interpolation-audit.json` records exact Fraction interpolation for all 10 triples and all 5 quadruples. Only the two symmetric triples pass the stated total-degree restrictions; no quadruple passes. The noncentral quadruple has B=40z²-540 and C=(25/9)z³+75z, exactly matching the independent coordinator calculation. This is an exact finite audit of a specified ansatz, not a general no-go theorem for auxiliary polynomials.

The support comparison used the same k=5,d<=50000 range (no search expansion): `timeout 60 python3 .../worker/compare_sieves.py --ks 5 --max-d 50000 --output sieve-comparison-support.json > .../worker/sieve-comparison-support.log 2>&1`, exit0 in 2.79s. From the 165 candidates passing d|3P and the full prime-power size baseline, symmetric complement coprimality leaves147, arbitrary-two-position support leaves155, and the combination leaves144. All ten candidates also passing the v2 difference condition survive both support restrictions. The global square congruence already rejects all165 and full large-prime valuation matching already rejects all99992 geometric candidates. Thus the structural theorems offer infinite-class proofs, but these finite data do not establish superior screening strength.

**Resumed small-prime route, checkpoint target 10:15Z.** `generate_small_prime_data.py` generates eight n mod8 and nine n mod9 cofactor identities, all exact integer polynomials. `K5SmallPrimeData.lean` checks them by ring identities, modular units, and explicit polynomial differences. Attempt1 inferred the existential position as Int; explicit `i:Nat` fixes this source-domain issue. Attempt2 is being checked before using its output. No missing library was installed or requested.

For p=3 the analogous paper target is `3^(2a)|9E_i`, with a loss9 rather than the generic loss27. For a>=3 choose a maximal 3-adic position from n mod9, normalize R=3^s U with s<=1 and U a 3-adic unit. Then d|3(U'-U). Because 27|d, U'-U is divisible by9, and `(4U-U')/3` is a unit. From `dU'=x(4U-U')` one gets `3^(a-1)|x`; also `3^(a-1)|(U'-U)`. Thus `3^(2a-2)|E_i`. The a=1,2 cases have elementary modular witnesses. This is not yet Lean-proved.

**Other coordinator route, not duplicated.** The proposed universal off-diagonal matching Taylor condition is `q²|4C_i(n+i)-C_j(m+j)` when the same actual q divides both factors; it does not hold merely from q dividing their difference. Coordinator owns CrossMatching. The Bezout obstruction to a degree<=9 auxiliary vanishing to order2 at all25 zero-product grid points assumes geometric irreducibility and no common curve component; it blocks that universal polynomial template, not all subset or mixed-order methods. No worker claim of a Lean geometric theorem.

## 2026-09-07T10:02Z — binary local square accepted; ternary recovery and class closure target

`K5SmallPrimeData.lean` attempt3 compiled exit0; both cofactor-data guards passed standard three axioms. Earlier attempt2 used a malformed typed existential; explicit `i:Nat` plus conjunction corrected it. `K5SmallPrimeSquares.lean` attempt2 compiled exit0, its original natural-product `two_power_square` guard passed. This proves for every a>0, 2^a|d, original k5 equation, that some i in1..5 satisfies 2^(2a)|E_i with **no loss factor**. High powers use the normalized odd quartic cofactors; a=2 uses a kernel `decide` residue table modulo128, and a=1 an elementary position witness. The residue table covers all integers by modular reduction, not a bounded n search.

`K5ThreeAdic.lean` attempt1 failed only in the a=2 witness range: omega lacked n%3<3. The failed guard explicitly exposed sorryAx, so that attempt is not accepted. Added `Nat.mod_lt` and `Finset.mem_Icc.mpr`; attempt2 is running with timeout150, output `lean-three-adic-attempt2.log`. Target remains 3^(2a)|9E_i.

Next concrete class: combine small and large prime local constraints. For two distinct prime bases, at most one is3, so coprime grouping should give d²|9EiEj. A new rational tail for 9EiEj between633d² and634d² at d>=3000 plus exact adjacent-sign certificates for600<=d<3000 should remove the restriction p,q>=5 from the already-proved two-prime-power original theorem. This is a finite-tail extension serving a precise unbounded subclass theorem, not open-ended no-solution enumeration.

## 2026-09-07T10:07Z — loss-nine ternary lemma and rational tail accepted

`K5ThreeAdic.lean` attempt2 exited0, with the final original-equation guard listing only standard three axioms. The earlier failure was solely the omitted modulus range, now explicit. `K5LossTail.lean` attempt1 exited0 with guard: for d>=3000, each error is between8387d/1000 and8392d/1000, so **633d²<9EiEj<634d²**. The exact rational-gap margins are 9*8387²-633*1000²=75921 and634*1000²-9*8392²=169024, also recorded by the reproducible generator. All inequalities are integer Lean proofs derived from the original product equation and centered strip.

`generate_k5_loss_finite.py` exited0 and generated precisely2400 additional adjacent-sign certificates for600<=d<3000, independently checked by comb and raw products; `K5LossFinite.lean` is undergoing kernel decide with timeout240. Existing595 certificates are reused for5<=d<600. `K5AllPrimeLocal.lean` first attempt failed because the imported norm_num set did not discharge ¬Prime4; replaced with exact kernel `decide`. Both original-prime-power guards caught sorryAx in the failed attempt. Attempt2 running. Its proof for the single prime3 uses9E<81d<d² at d>=600, so does not depend on the new finite continuation.

The two-prime assembly source `K5AllPrimeClasses.lean` is written but will compile only after all dependency oleans exist. Both local divisibilities can be weakened to p^(2a)|9Ei and q^(2b)|9Ej; coprime moduli then divide the **same** integer9EiEj, retaining one factor9. No coprimality assumption on the primes with9 is needed in this step. Equal prime bases reduce to the single prime-power theorem.

A read-only process query `ps ... | rg ...` failed with `fatal library error, lookup self`; this does not affect Lean and no environment repair is requested. Bounded tool sessions provide completion status. Coordinator CrossMatching and finite-field Prym progress noted; worker does not duplicate them.

## 2026-09-07T10:11Z — arbitrary prime powers closed; finite proof reduction optimized

`K5AllPrimeLocal.lean` attempt2 exited0; both guards passed standard three axioms. `not_four_any_prime_power` is the original natural n,m theorem for **every** prime p (including2 and3), every a>0, m>=n+5, m-n=p^a. This uses only the original finite range5<=d<600. The all-prime local interface is `prime_power_square_loss`, returning some i in1..5 with p^(2a)|9Ei.

`K5LossFinite.lean` attempt1 hit its explicit240s timeout (exit124), with no mathematical error emitted. The monolithic list lookup inside all2400 certificates is a proof-reduction bottleneck. Exact Python checks found that `floor(3129813*d/1000000)-3` matches every independently generated cutoff for600<=d<3000; this is a compact certificate representation, NOT an assumed all-d root formula. The generator now emits12 separate Fin200 kernel-decide blocks and assembles them by bounds. Attempt2 uses timeout180; signs and range are unchanged, native_decide remains unused. The generator and previous timeout log are retained.

Main proposes mixed-order cubic/fifth grouping and is writing the central fifth helper. Worker records it as a candidate and does not duplicate the helper: q³|z and q|d, coprime(q,36), original F=0 imply q⁵|9z+25d³ from the explicit degree5 identity. The possible three-position height improvement still needs a concrete corrected H, correct center normalization, nonzero and height estimates; no new class claim is made from the candidate. Will assess after the small-prime chain closes.

## 2026-09-07T10:13Z — arbitrary two-prime-power original class closed in Lean

`K5LossFinite.lean` attempt2 exited0 with both guards passed. Chunking into12 Fin200 blocks and the compact cutoff formula resolved the proof-reduction timeout without changing any mathematical range. `K5AllPrimeClasses.lean` attempt1 exited0; all3 guards passed standard three axioms.

**Accepted original statement:** `B686Round4K5.not_four_any_two_prime_powers` takes natural n,m,p,q,a,b; m>=n+5; p,q prime; a,b>0; m-n=p^a*q^b. It concludes P5(m)≠4P5(n). **There is no restriction p,q>=5 or p≠q.** Thus bases2 and3 are covered, equal bases reduce to the separately accepted arbitrary prime-power theorem, and all exponents/n/m are unbounded. The proof is source-aligned to the raw natural five-factor product, with the natural subtraction bridge checked.

Accepted dependencies: no-loss p2 square, loss9 p3 square, main large-prime square, coprime grouping into d²|9EiEj, rational integer gap for d>=3000, and kernel adjacent-sign certificates for5<=d<3000 (595 old+2400 new). No native computation axiom or sorryAx occurs.

`K5PrimeSupport.lean` is now compiling to derive the explicit original-equation necessary condition `(m-n).primeFactors.card>=3`, using mathlib unique factorization to handle the one/two-prime decomposition. This is distinct from main's arbitrary two-occupied-position exclusion. Next route is a bounded assessment of the central mixed-order candidate, not additional undirected enumeration.

A read-only interpolation JSON query used the wrong key `positions` and failed with KeyError; rerunning with the actual `rows/slots` schema recovered all exact coefficients. No numerical or mathematical result depended on the failed query.

## 2026-09-07T10:14:09Z — prime-count packaging recovery and mixed-order height audit

`K5PrimeSupport.lean` attempt1 failed before elaboration because mathlib Factorization.PrimePow.olean is unavailable. No installation or shared write was attempted. The result only needs the already-cached Factorization.Defs: rewrote the singleton case directly using Finset.card_eq_one and prod_factorization_pow_eq_self. Attempt2 is running, timeout150, log lean-k5-prime-support-attempt2.log.

**Mixed-order audit, first obstruction.** Let q_c be a center-assigned prime power, or a coprime product of them. The already-proved cubic condition gives q_c³|z. For original k5 and d>=600, z>0 and z<9d, so q_c³<9d. In particular for d>=81 this cube bound implies q_c²<d (unless one handles tiny q separately, where the same conclusion is immediate for d>=600). Thus the proposed regime q_c≫sqrt(d), intended to make d³*q_c² dominate a quartic H, is already absent in the asymptotic range. This does NOT refute the central fifth congruence or all mixed-order uses, but it blocks this particular simple height-dominance mechanism. Worker will check the actual four H leading coefficients and formalize the size obstruction instead of calling it a new excluded class.

## 2026-09-07T10:17:22Z — prime support necessary condition accepted

`K5PrimeSupport.lean` attempt2 exited0 and its transitive axiom guard passed exactly [propext, Classical.choice, Quot.sound]. The original natural statement `solution_requires_three_distinct_primes` assumes n+5<=m and the raw natural five-factor equation, and concludes **3<=(m-n).primeFactors.card**. Cached Factorization.Defs sufficed; no environment mutation or install was needed.

`K5CentralHeight.lean` is checking the original-product consequence q_c³<9d and q_c²<d for d>=600 under the explicit center-cubic divisibility. It will make the mixed-order height obstruction kernel checked, without treating a failed route as a new original subclass theorem. Main's 2022 decomposition/PTE source is recorded as coordinator-owned literature work, with its r0/k>8 hypotheses and ineffective fixed-equation limitation retained; worker is not duplicating the literature audit.

Small-prime filter comparison reuses exactly k5,d<=50000 and the same baseline/window. It adds existential local p2/p3 checks and the now-proved three-distinct-prime structural filter. Command: timeout60 python3 .../worker/compare_sieves.py --ks 5 --max-d 50000 --output sieve-comparison-small-primes.json; output log sieve-comparison-small-primes.log. No extra search range is being introduced.

## 2026-09-07T10:25:11Z — center-height obstruction accepted; scaled three-prime class closed

`K5CentralHeight.lean` attempt1 exited0 with its guard standard three axioms. Under original k5, d>=600 and explicit q_c³|E3, it proves q_c³<9d, q_c²<d, and d³*q_c²<d⁴. The first proposed mixed-order mechanism therefore cannot use a center-dominant modulus to beat a quartic height. This is negative route evidence and does not say the fifth congruence is false.

The unchanged-range comparison completed exit0 in3.10s. For k5,d<=50000: baseline d|3P plus full-power size has165 candidates; old large-prime local squares leave4; adding the new p2/p3 local conditions leaves0. But the universal square already leaves0, and full large-prime valuation matching already rejects all99992 geometric candidates. The >=3-distinct-prime structural filter leaves159 of165; combined with both position-support filters140. All ten also passing v2 remain under these structural filters. Thus no finite comparison demonstrates necessity beyond the full valuation baseline; the accepted infinite classes are the substantive result.

**Coordinator's concrete scaled-factor idea prioritized.** `K5ScaledPrimeClasses.lean` attempt1 exited0, both guards standard3. `not_four_three_times_two_prime_powers` is an original natural n,m theorem for m-n=3*p^a*q^b, arbitrary prime p,q (including3 and equality), a,b>0, m>=n+5. If p,q differ from3, no-loss squares for their powers imply M²|EiEj with M=p^a*q^b; since d=3M this gives d²|9EiEj, exactly the accepted loss-nine bound. If a base is3, the class reduces to the already-excluded two-base case. This genuinely covers three distinct primes with v3(d)=1, without additional finite checking.

`K5EvenScaledClasses.lean` now checks the analogous d=2*p^a*q^b theorem with explicit p,q!=3; bases2 and equality remain allowed. Its factor4 interval is281d²<4EiEj<282d² for d>=3000, using the same loss_error_bounds and existing5<=d<3000 certificates. No new finite range or weakened axiom guard. Source freeze target remains10:50 UTC.

## 2026-09-07T10:29:24Z — factor-two scaled class accepted; worker proof sources stable

`K5EvenScaledClasses.lean` attempt1 exited0 and both guards passed standard three axioms. `not_four_two_times_two_prime_powers` excludes original natural solutions with m-n=2*p^a*q^b, p,q prime, p,q!=3, a,b>0, m>=n+5; equality of p,q and the base2 are allowed. The genuine three-prime part is v2(d)=1,3∤d, two other distinct prime bases. The proof uses281d²<4EiEj<282d² at d>=3000 and reuses the already-accepted finite range.

All18 worker Lean modules now have accepted oleans and their final transitive guards have passed. No further Lean edits are planned before main's integrated rebuild unless it finds a concrete issue. A source scan found no sorry/admit/axiom declarations/native_decide use; the sole token native_decide is in a comment explaining it is not used. Worker will save an acceptance manifest and finish bounded paper/diagnostic audits, including the exact mixed-H coefficients and why support restrictions provide no descent.

One final same-range comparison adds the newly proved scaled classes to the structural flags and records a surviving diagnostic if any. Command: timeout60 python3 research/tasks/B686-Four/round4/worker/compare_sieves.py --ks 5 --max-d 50000 --output sieve-comparison-scaled-classes.json; output sieve-comparison-scaled-classes.log. No extra enumeration range.

## 2026-09-07T10:48:18Z — final evidence handoff and QC pressure review

Main integrated rebuild passed29modules63guards at10:35:02 UTC,151.334s. Worker independently read lean-verification.json, confirmed every recorded exit0, success=true and full_bounty_proved=false. acceptance-manifest.json now records its hash and verifies all18 frozen worker source hashes unchanged. The initial manifest used two guessed log basenames; corrected to the existing lean-k5-attempt2.log and lean-k5-symmetric-attempt2.log and checked all18 success logs exist with no error diagnostics.

The mixed-order symbolic audit initially failed because Sympy is absent. No installation was attempted; replaced its finite polynomial operations by pure integer coefficient dictionaries and reused the Fraction interpolation helpers. timeout20 mixed_order_audit.py attempt2 exited0, all4 center/noncenter weight tests passed; both failure and success logs remain. Its norm-polynomial expansion is exact computation, not a new Lean theorem.

A final same-range scaled-class comparison exited0: baseline165 -> scaled prime classes151 -> plus both position-support conditions132. Among ten baseline+v2 candidates, nine survive those structural checks, but zero survive the older large-prime local square or global square. The recorded numerical examples therefore are NOT unsolved configurations. remaining-configurations.md instead specifies a three-large-prime-power allocation {1,2,4} as a still-unexcluded parameter family and describes the missing CRT/height argument.

Independent paper audit of the genus2 End argument found no gap when geometric simplicity and geometric specialization are kept explicit. Source model matches the round3 sextic. Fresh exact Euclidean polynomial checks at7 and11 and the p7 Frobenius factor multiplication passed, saved in endomorphism-algebra-audit.json/log, with no new point counts. Primary theory consulted: Costa–Mascot–Sijsling–Voight equation7.3.2 (geometric specialization), Milne Proposition14.2 (Rosati/NS), Sutherland ordinary elliptic End dichotomy, and Balakrishnan–Dogra Lemma3.2 plus the integral/rational distinction. Versioned arXiv PDF fetch failed, unversioned primary PDF succeeded. The p7 end fields are Qsqrt(-19),Qsqrt(-3); geometric nonisogeny makes the target their product, and unital projections of the characteristic-zero division algebra force End0=Q. This remains paper+computation, not Lean geometry.

Read main/quadratic-chabauty.md in full and found its scopes correct: rho_Q(D)=1 with rank>=2 fails a sufficient rational-QC criterion only; it does not prove the depth2 locus infinite. The rational variable-denominator map does not justify integral-QC use on D. Original genus6 C still has rho_Q>=2 and an open total-rank<=6 route (ordinary rank<=5); neither the quotient nor Prym simplicity rules that out. Details saved in endomorphism-qc-audit.md.

One paper-only residual norm draft d<=160000*s^5 under symmetric-pair M² divisibility was saved for later validation. Constants were exactly checked (23591326959<160000²); original-to-norm algebra and all proof obligations are explicitly not Lean accepted. It does not bound s, triggers no range expansion and is not a reason to extend this session.

Worker Lean sources remain frozen. final-handoff.md is complete. No worker job remains running; no new route will be opened. This is a handoff at the research checkpoint, not a claim that unrestricted B686/Four is done.
