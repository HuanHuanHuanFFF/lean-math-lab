# B699, n = 4j — derivation record

Checkpoint 1 (2026-09-09). Status: the transfer below is a new paper derivation;
its finite diagnostics and the subsequent global bound have not yet been run.
No Lean compilation is claimed.

## Target and integer objects
For natural numbers 1 <= i < j put n=4j. Common(i,j) means that some prime
p >= i divides both binom(n,i) and binom(n,j). noCommon is its negation.
Let e_p = v_p(binom(n,i)), and define
V_i(n) = product_{prime p >= i} p^{e_p}.
Let D_i(n,j) be the same product restricted to p not dividing binom(n,j).
These retain the **entire** binomial valuations. Under noCommon, D=V.

For i >= 3 and an actual prime p contributing to D, let
  delta = 1 when p=i, and 0 otherwise;
  Q = p^(e_p+delta), a=n mod Q, b=j mod Q.
The numerator interval of binom(n,i) contains exactly one multiple of p.
Consequently a<i and Q is its complete p-power. Absence of p from binom(n,j)
forces b<=a by the nonnegative Legendre carry summands, also at this power Q.
This is a necessary condition, not an equivalence based on the lowest digit.
For n=4j, Q divides 4b-a and -a <= 4b-a <= 3a.

## New four-block transfer, paper proof
Set z=ceil(i/4). At a zero cell 4b=a, one has b<z, so Q divides a factor
of (j)_z. The product of the complete, pairwise coprime zero-cell powers
therefore divides binom(j,z), because all their prime bases exceed z.

At a nonzero cell the determinant is positive: a negative nonzero multiple
of Q has absolute value at most a<i<=Q, impossible. Also Q<=3(i-1)<i^2.
Thus Q is prime, e_p=1, and p>i. In particular the p=i case has **not** been
removed from V: it cannot occur in this nonzero branch, since its complete
numerator exponent would be e_p+1>=2, and it remains covered in the zero branch.
Write 4b-a=t p with t in {1,2}. Since p>i>=3, p cannot divide 3a for 0<a<p,
so b<a. Put r=a-b>=1; then 3a-4r=t p.
For t=1, the smallest possible a is
  (p+4)/3 if p=2 mod 3;
  (p+8)/3 if p=1 mod 3.
For t=2 the smallest a is no smaller than the corresponding t=1 value
(p>=5). Hence the exact abstract allowable prime support is
  K4(i) = product of primes p>i such that
    [p=2 mod 3 and p<=3i-7] or [p=1 mod 3 and p<=3i-11].
Every listed prime has an abstract pair (a,b), but that does NOT assert an
actual input realizes it or that all higher carry conditions hold.
For every actual i>=3, j>i:
  D_i(4j,j) divides K4(i) * binom(j,z).                       (T4)
The proof multiplies complete powers in the zero branch and prime powers
of exponent exactly one, as proved, in the nonzero branch.

## Reusable versus slope-three-specific components
Read fixed baseline 7fd3928656489afe2c80698f0a09d1d933444186:
notes/rational/slope-three.md, report.md, frontier.md in run
20260909-large-prime-structure-cb4764f0.
The baseline n=3j proof uses z3=ceil(i/3), K3=product_{i<p<=2i-5}p,
V | K3*binom(j,z3), and the allocation (z3,z3,i-2z3).
Its EEES consumer is noCommon => binom(n,i)<V_i(n)^2, with the source
exceptions removed in that baseline. That external implication is adopted,
not proved here. Its final published-source/finite result n=3j is adopted,
not re-audited.
Full-power localization, coprimality, denominator cancellation, and coefficient
positivity transfer. The determinant support, number of residual blocks,
and numerical linear constant must be proved again; K3 is not copied to K4.

## Candidate normalization (to be tested next)
Put h=i-2z, u=floor(h/2), v=h-u. For i>=3 all four indices z,z,u,v are
nonnegative and sum to i. Four-block Vandermonde gives
  binom(4j,i) >= binom(j,z)^2 binom(j,u) binom(j,v).
Together with T4, noCommon, and the adopted EEES implication this would give
  binom(j,u) binom(j,v) < K4(i)^2.                          (S4)
The proposed discriminating tests will check T4 on actual D, including p=i,
and check the abstract support and possible over-strong single-prime claims.

## Second route: elementary small-part height, chosen for further work
Let s=pi(i-1), z=ceil(i/4), E=i-s-z. For every prime p<i, the Legendre
valuation of binom(n,i) is a sum of at most floor(log_p n) carry indicators.
Thus p^{v_p(binom(n,i))}<=n. Multiplication gives U_i(n)<=n^s.
This has a direct elementary proof and does not use EEES.
Under noCommon, T4 now implies
  binom(4j,i) <= (4j)^s K4(i) binom(j,z).                 (E4)
Since there are at most floor(i/2) primes below i,
  E >= ceil(i/2)-ceil(i/4) >= 1  (i>=3).
There is therefore no nonpositive-degree small-index obstruction on this slope.

The elementary inequalities binom(4j,i)> (3j)^i/i! (because j>i) and
binom(j,z)<=j^z/z! give the useful exact rational height certificate
  3^i z! j^E < K4(i) 4^s i!.                            (H4)
Alternatively the bound binom(4j,i)>=(4j/i)^i gives
  4^{i-s} z! j^E <= K4(i) i^i.                          (H4')
These are unconditional new necessary conditions for a counterexample,
valid for every i>=3 and unbounded j. E is always positive. Each makes
j effectively finite for each i; it is not by itself an absolute finite
bound while i is unbounded. Combining either with the adopted i<1,000,000
paper result would already give effective all-parameter finiteness, though
an efficient uniform bound is still to be derived.

For i=1,2 the prime 2 works directly: binom(4j,j)=4*binom(4j-1,j-1),
binom(4j,1)=4j, and binom(4j,2)=2j(4j-1).

## Uniform linear bound, independent of the adopted global large-i theorem
Status at checkpoint 3: complete paper argument plus the executed low-index
integer certificate. Only the three published estimates identified in sources.md
are external. Neither EEES nor the earlier i>=1,000,000 result is used here.

Use Dusart (2010, arXiv v1), Proposition 5.1, Theorem 6.9 (6.5), and
Proposition 6.8, with the exact statements transcribed in sources.md.
For i>=1024 we have log i>6 (e<3 and 3^6<1024). Thus
  log K4(i) <= theta(3i) < (3001/1000)i,
  s log i <= i(1+1.2762/log i) < (73/60)i,
  s < (73/360)i < i/4.
Here s=pi(i-1)<=pi(i); using pi(i) as an upper bound does not delete p=i
from the original large-prime part. Also z<=i/4+1 and E>=i/2-1.

Let X=4j/i. Rearranging H4 exactly gives
  X^E < K4(i) (4/3)^i i^s (i!/i^i) ((i/4)^z/z!).
AM-GM gives i! <= ((i+1)/2)^i, hence i!/i^i <= e/2^i.
The integral bound for log(z!) gives z! >= (z/e)^z; because z>=i/4,
  (i/4)^z/z! <= e^z.
These elementary estimates imply
  E log X < log K4(i)+s log i+z+1+i log(2/3)
          < (12403/3000)i+2.                            (L4)
Indeed log(3/2)>1/3 by integrating 1/t on [1,3/2].

A rational lower bound is log 2>56/81:
  log 2 = 2 integral_0^(1/3) 1/(1-t^2) dt
        > 2 integral_0^(1/3) (1+t^2) dt = 56/81.
Therefore log 4096=12 log 2 >224/27. For i>=1024,
  (i/2-1)*(224/27) - [(12403/3000)i+2]
   = (373/27000)i - 278/27 >0;
at i=1024 the margin is 12994/3375>0.
If X>=4096, this contradicts L4. Hence 4j<4096i for i>=1024.

For each 3<=i<=1023, experiments/height_certificate.py actually checked
  3^i z! (1024i)^E >= K4(i)4^s i!.
Monotonicity of j^E, with E>=1, and strict H4 then give j<1024i.
The certificate also computes the exact last j satisfying H4, with both
endpoint inequalities. It tests no original B699 pair. All 1021 checks passed.
Together with the direct cases i<=2, every possible counterexample obeys
  n=4j <4096i.                                         (LIN4)

## Absolute finite reduction
If a prime p lies in (n-i,n], then p>n-j and p>j, so it occurs in the
numerator but not denominator of BOTH binomial coefficients. Thus noCommon
implies that interval is prime-free and, for the largest prime P(n)<=n,
  i <= n-P(n).                                        (TOP)
The endpoint is inclusive: p=n-i is not in the top numerator interval.

Put y=n-i. LIN4 gives y<4095i. The fixed baseline certificate, re-evaluated
exactly in height_certificate.py, proves log(396738)>64/5 and hence
25 log(396738)^2>4096. For completeness: the exponential-series tail gives
  e < 11743/4320 <68/25,    exp(1/5)>6/5,
  exp(64/5)=e^13/exp(1/5)<5*68^13/(6*25^13)<396738.
The exact final cross-product difference is
223689232896478612559660>0. The tail bound e<11743/4320 follows by summing
through 1/5! and bounding the tail starting at 1/6! by (1/720)/(1-1/7).

If y>=396738, Dusart Proposition 6.8 provides a prime
  y<p<=y+y/(25 log(y)^2)<y+y/4096<y+i=n,
contradicting TOP. Therefore y<=396737. Since i<=j-1,
  y=4j-i>=3j+1,  j<=132245,  n<=528980.                (FINITE4)
The remaining candidates may be compressed using only TOP and the exact H4
cutoffs. No original-target claim about that finite domain is yet made at
this checkpoint; the finite certificate is the next task.

## Executed finite closure (checkpoint 4)
The generator actually ran once. Its sieve stops at the proved cap 528980.
Prime coverage and H4 alternation give:
- n<=528980 -> i<=111 (5078 selected prime-cover intervals).
- i<=111 -> n<=23272 -> i<=51 (499 intervals).
- i<=51 -> n<=14940 -> i<=35 (472 intervals).
- i<=35 retains n<=14940 and the same i cap (the final repeated cover is
  recorded explicitly, not counted as a new mathematical reduction).

The final H4 ranges contain 50593 legal (i,j) pairs. Actual top-prime
interval certificates omit 47745; exactly 2848 residual pairs remain.
Every residual pair received a prime p>=i with positive recorded Legendre
valuations in both binomials. Three witnesses use p=i. No failure was found.
The generator uses complete H4 cutoffs and interval coverage to account for
omitted inputs; it does not infer coverage from the residual list alone.
An independently implemented certificate checker is still to be run at this
checkpoint. Mathematical result status: paper plus generated exact evidence,
not Lean, and not yet cross-checked by the second implementation.
