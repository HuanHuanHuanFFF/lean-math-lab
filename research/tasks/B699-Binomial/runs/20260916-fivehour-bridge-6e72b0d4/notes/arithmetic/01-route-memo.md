# H02 arithmetic: first route checkpoint

Author: `/root/arithmetic`; source baseline `a7468a887224e35906d8486bd18d21d0e8368393`.
Round: 2026-09-15 18:28:45--23:28:45 UTC. No Lean work is authorized this round.

## Adopted statements and scope

Original target: for every natural `1 <= i < j <= floor(n/2)`, some prime `p >= i` divides both binomial coefficients. Here only `i=5`, `j>=6`, and the **necessary** consequences of its negation NC5 are studied. Set `g=gcd(n,j)`, `alpha=n/g`, `beta=j/g`.

Read and adopted: previous run `20260916-paper-frontier-a1c74e93/notes/main/02-h02-gcd-fourth.md`, `03-h02-origin-seven.md`, `04-deficit-one-boundary.md`, and `reviews/reviewer/H02_REVIEW.md`. Their H02 assumption is: the five-window maximum complete powers Q2>=8 and Q3>=9 occur at the distinct positions 0 and 2. Their checked paper consequences are

`g^5 < (625/8)n`, `g^7 < 2^22 n`.

The old D odd-full `notes/PROOFS.md` section 8 and critical-quotient `notes/PROOFS.md` sections 3 and 8 were read for the classification: only `alpha=2^a*{1,5}` or `3^a*{1,2,5,10}` remain. These historical full classification consumers retain their author-paper level; this worker has not rechecked all old packages. The complete-power window argument itself is reproduced below where needed.

Resource observation at this checkpoint: Win32 memory API reported 6,043,172,864 available bytes, 16,851,132,416 total bytes, 16 logical CPUs, and D: free 6,444,539,904 bytes. CIM was denied; this is an environment observation, not a mathematical issue. No builds or heavy jobs were started.

## Routes, intended frontier change, and tests

1. **Couple the two high powers with the small gcd.** In the role with 2 at zero, write `n=2^A d`, `n-2=2*3^B h`, with `d` odd and `gcd(h,6)=1`. Since `alpha=c*2^a`, `d` is a divisor of `c*g`, so the new bound limits d as well. A uniform effective bound on A/B here, after all necessary conditions are retained, could close an entire H02 role. Free parameters remain A, B, d, h, beta, and the rough prime allocation. First test: whether these ingredients alone already force finite exponents. The infinite family below refutes that proposed shortcut, even after the entire r=2 source-power layer is retained.
2. **Use the old QIG high-power mass in the same equation.** The selected odd-full proof reports `T4^6(3n^2-12n+8) >= 2^20(n-1)^6(n-3)^3`, with `T4<=30 Q2 Q3`. This would force roughly `Q2 Q3 >= const*n^(7/6)`. Its original algebraic identity must be checked before any new theorem adopts it. It excludes the simple low-Q3 model below, but creates a variable-coefficient exponential approximation problem, not a fixed S-unit equation. The next check is to identify what exact effective lower bound for its coefficients would be needed.
3. **Joint r=1,3,4 integer constraints.** Their source moduli are pairwise coprime after full small-part removal and also coprime to g. A single equation at r=2 loses this essential coupling. The next bounded probe should use all three free rows and the high-power mass, without confusing necessary windows with full NC5.

## An infinite same-input model: the second window and both g bounds do not suffice

For every integer `t>=0`, set

`A=9+18t`, `n=7*2^A`, `j=7*(2^A+1)/9`.

These are genuine integers with `j>=6` and `j<n/2`. The integer `beta=(2^A+1)/9` is odd, hence `gcd(n,j)=7` and `alpha=2^A` exactly. Since `2^A=-1 mod27`,

`n-2=-9 mod27`, so `v3(n-2)=2`.

Also `8|n`; thus the maximum complete 2-power is at n, the maximum complete 3-power is exactly 9 at n-2, and no other position in the five-window shares these maxima. The two adopted inequalities hold at A=9 and remain strict as A grows.

Put `h=(n-2)/18`. Then `j=2h+1` and `k=n-j=16h+1`. The exact NC5 coarse divisor q2 is either h or h/5: only a solitary factor 5 is removed if its valuation is exactly one; every higher 5-power stays intact. Therefore **every complete prime power Q dividing q2** has `j=k=1 mod Q`, which is the allowed r=2 root `(1,1)`. This verifies the complete source-power layer at r=2, not merely its radical.

However, the r=1 layer always fails. Here n-1 is coprime to 6, so q1 is either n-1 or (n-1)/5. From `9j=n+7`,

`81*j*(j-1)=-8 mod q1`.

Since `gcd(q1,81)=1` and `q1>(n-1)/5>8`, q1 cannot divide j(j-1). Consequently some complete source prime power violates the NC5 window. This model is neither an NC5 input nor a counterexample to the original problem.

**Actual frontier change:** no NC5 family is eliminated; this is a proved boundary of the proposed high-power-only inference. It pinpoints the missing coupling. In particular, keeping the same n,j and the full r=2 powers is necessary but is still insufficient without the other windows or a stronger adopted global consequence.

## Ongoing checkpoint

The arithmetic task continues. Next: reconstruct the precise high-power mass and convert its simultaneous constraints to the minimal variable-coefficient equation, then test whether prime-power denominator information gives a new effective separation principle. Do not repeat the already closed symmetric D=W+1 interpolation search.
