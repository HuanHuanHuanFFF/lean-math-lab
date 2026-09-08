# Exact slope one third: a uniform finite reduction

Owner: rational_structure, GPT-6 Astra / Max. New bounded exploration begun at the primary's request after the frozen Lean band consumer; checkpoint deadline2026-09-08 19:25 UTC, shared round deadline21:41:44 UTC. Only this new note is writable in this role. The prior Lean source files remain frozen. No scan, factorization, Lean execution or new source theorem proof was performed by this worker. One fixed rational arithmetic inequality was evaluated exactly, as recorded below.

Current status after the 19:19-19:35 UTC checkpoint: the paper reduction and new exact finite computation support the complete original-target subfamily n=3j. The valuation worker cross-checked the paper, and the implementation review is linked in the final section below. This uses the already adopted EEES implication and source-checked Dusart Proposition6.8. It is not a complete Lean proof and carries no novelty claim. Earlier pending-computation statements below describe the chronological exploratory checkpoints and are superseded by the final evidence section.

## Locked subfamily and expected leverage

Original target: natural1<=i<j<=n/2, prime p>=i common to C(n,i),C(n,j). This route fixes the exact genuine relation n=3j and keeps both i,j unbounded. It does not assume prime powers or cofactors exist.

Expected change: all exact-slope1/3 triples with unbounded n and i reduce to a single explicit finite range n<=595104; completing that finite certificate would settle this entire infinite subfamily on paper. The complement j!=n/3, and nearby slopes/determinants, remains unbounded. This is not a reduction of all B699 to finite verification.

The first discriminating observation was a three-block Vandermonde term, eliminating the extra coefficient-normalization loss in the initial proposed bound. The exact primitive nonzero prime support is also shorter than the loose2i bound. No theta estimate or source beyond the already adopted EEES/Dusart pair is required.

## Actual zero and nonzero cells

Assume i>=3 and n=3j is a hypothetical counterexample. For every prime p>=i appearing with exponent e>0 in C(n,i), absence from C(n,j) gives the actual numerator power

Q=p^(e+delta), delta=1 if p=i and0 otherwise,

an actual offset a=n mod Q<i, and b=j mod Q<=a. This is the adopted full-power localization. Since n=3j,

Q | 3b-a,  -a<=3b-a<=2a.

Set z=ceil(i/3) and h=i-2z. For i>=3, h>=0 and i=2z+h.

At a zero cell, a=3b<i, so0<=b<z. Distinct complete numerator powers are pairwise coprime and their zero-cell product divides(j)_z. Since all their prime bases are>=i>z, this complete product divides C(j,z). This preserves the extra p=i exponent rather than discarding it.

At a nonzero cell, Q<=2(i-1)<i^2. Thus p=i is impossible, and p>i forces Q=p: a higher power is already>2(i-1). A negative nonzero3b-a cannot be a multiple of p because its absolute value is<=a<i<p; its positive value is<2p. Therefore

3b-a=p.

The prime p is odd. If b=a, p=2a would be even; consequently b<=a-1, so

p=3b-a<=2a-3<=2i-5.

This yields the exact allowable primitive support

K3(i)=product_{i<p<=2i-5, p prime}p,

with an empty interval interpreted as product1. Conversely, every odd p in that interval has an abstract permitted pair a=(p+3)/2,b=(p+1)/2; that converse only identifies the support of the residue constraints and does not assert realization by the original n,j.

Thus the actual full binomial large-prime part satisfies

V_i(3j) | K3(i)*C(j,z).

The same divisibility holds for the actual avoiding part D on every legal exact-slope triple; only D=V uses noCommon.

## Three-block Vandermonde is the decisive normalization

The actual decomposition3j=j+j+j and index allocation(z,z,h) give

C(3j,i) >= C(j,z)^2*C(j,h).

All three indices are nonnegative and<=i<j. The source-aligned EEES implication, with its twelve exceptions already removed in the adopted baseline, is

noCommon => C(3j,i)<V_i(3j)^2.

Cancel the positive factor C(j,z)^2 to obtain the exact necessary inequality

C(j,h)<K3(i)^2.                                      (S3)

This is much stronger than replacing both zero-cell coefficients by a crude upper bound: no extra3^(2z) factor remains. It is an inequality in actual original binomials and a fixed prime interval, not an added hypothesis.

For i=3,4,5,7 the support K3 is empty. In those cases C(j,h)>=1 contradicts(S3), including i=4 where h=0. The original i=1,2 cases are already covered for all j by the elementary gcd>1 result. Hence it remains to consider i>=6 with i!=7, and h>=1.

## Uniform elementary bound n<4097i

For i>=5,

K3(i) | C(2i-5,i-5).

Every relevant prime occurs as itself in the numerator interval[i+1,2i-5] and exceeds the denominator i-5. The row2i-5 is odd, so pairing a binomial coefficient with its distinct symmetric coefficient in the row sum gives

K3(i)<=C(2i-5,i-5)<=2^(2i-6)=4^(i-3).

The elementary lower bound C(j,h)>=(j/h)^h applies when h>=1. The three possible index relations are

i=3h,  i=3h+2,  i=3h+4.

If i=3h or3h+2, then i-3<=3h, hence(S3) gives

(j/h)^h<16^(i-3)<=4096^h.

Thus j<4096h and n=3j<4096i.

If i=3h+4 and h>=4, use the elementary factorial upper bound

h!<=((h+1)/2)^h.

A finite proof pairs each r with h+1-r:4r(h+1-r)<=(h+1)^2. Multiplying over r=1,...,h and comparing nonnegative squares gives2^h h!<=(h+1)^h. Therefore

C(j,h)>=[2(j-h+1)/(h+1)]^h.

Now K3(i)^2<=16^(3h+1)<=8192^h, the last inequality being12h+4<=13h. By(S3),

2(j-h+1)/(h+1)<8192,

so j<4097h+4095. Consequently

n=3j<12291h+12285<4097(3h+4)=4097i.

The only leftover members of i=3h+4 are i=4,7,10,13. The first two were already excluded by empty K3. For i=10, K3=11*13=143 and h=2. For i=13, K3=17*19=323 and h=3. In each case(S3) and C(j,h)>=(j/h)^h imply j<h*K3, because h>=2 and K3>=1. Hence respectively n<858 and n<2907, both much smaller than4097i. These are two fixed small prime products, not a search over arbitrary i.

We have therefore derived the uniform necessary bound

noCommon and n=3j => n<4097i.                         (LIN)

No other unbounded parameter occurs in the constant. This is a bound on n/i across the entire exact-slope family, not a separate fixed-i finiteness statement.

## Dusart removes the infinite tail

The run's source audit `../sources/sources.md`, section2, directly checked Pierre Dusart, arXiv:1002.0442v1, Proposition6.8: for every real y>=396738, a prime p satisfies

y<p<=y*(1+1/(25(log y)^2)).

The inclusive threshold, strict left endpoint and non-strict right endpoint are retained. This source is a paper dependency, not a Lean axiom introduced by this worker.

Put y=n-i. From(LIN), y<4096i. Also

25(log396738)^2>4096.                                (LOG)

For y>=396738, monotonicity and Dusart give

y<p<=y+y/(25(log y)^2)<y+y/4096<y+i=n.

Thus p lies in the actual top numerator interval(n-i,n], and is a common prime by the already proved top-prime lemma. This contradicts noCommon. Therefore y<=396737.

Since n=3j and i<j, we have y=3j-i>=2j+1. Hence

j<=198368, and n=3j<=595104.                          (FINITE)

The remaining i range can be restricted further by the actual top prime P(n): noCommon implies i<=n-P(n), with the inclusive endpoint retained. There is no source claim that this finite range has already been checked.

### An exact elementary certificate for(LOG)

The exponential series gives

e < 163/60+7/4320 =11743/4320 <68/25,

because the tail starting at1/6! is at most(1/720)*sum_{r>=0}7^(-r), strictly below the bound after its first few terms. Also exp(1/5)>6/5. Thus

exp(64/5)=e^13/exp(1/5)<5*68^13/(6*25^13)<396738.

The last rational comparison was evaluated as one fixed exact integer operation by this worker:

5*68^13 =3323424900938360254627840,
6*396738*25^13 =3547114133834838867187500,
positive difference =223689232896478612559660.

Consequently log396738>64/5 and25(log396738)^2>25*(64/5)^2=4096. No floating-point rounding or prime scan is used in this numerical step.

## Proposed minimal finite certificate and feasibility

Primary only; not executed by this worker. Build an exact sieve/SPF through595104, keep only n divisible by3, put j=n/3, and inspect

1<=i<j, i<=n-P(n).

All omitted i have the already proved top-prime certificate. The cases i<=2 and i=3,4,5,7 are also already removed analytically, but retaining them as cheap implementation boundary checks is optional and must be labeled. A decision-useful first output is the exact number of remaining(n,i) pairs and the maximum prime gap in this derived interval; estimates such as1-2million cases are planning guesses, not measurements.

For each retained row, build actual binomial valuations incrementally using C(n,i)=C(n,i-1)*(n-i+1)/i and the SPF factorizations. For each p>=i with positive valuation, test C(n,j) by an independent Lucas/Legendre carry criterion. Preserve the inclusive p=i case and full exponent update. Any candidate failure must be independently checked with exact integer binomials or an independent valuation routine. A single successful prime witness suffices for each pair; no absence claim should be inferred merely from the necessary(S3) inequality.

The fixed row bound is under600000, and the top-prime restriction should make the remaining index count small relative to a full triangular scan. This is a genuine derived finite closure of one previously unbounded family. It does not repeat the prior arbitrary n<=100000 full B699 census. A final source-theorem consumer can state the uniform slope result only after the finite certificate and source/statement review are accepted.

## Guards and remaining work

The earlier individual-prime guard remains(n,i,j,p,a)=(33,6,11,7,5): its determinant3b-a=7 with b=4 is genuinely nonzero, and p does not divide C(33,11). Here K3(6)=7, so the exact support correctly allows the failed single-prime witness. The argument does not claim every p>i is common.

Expected frontier reduction is now explicit and uniform: exact n=3j, all n,i unbounded -> n<=595104 with actual i bounded by the top prime gap. Actual evidence at this checkpoint is the complete paper reduction and one fixed rational certificate, with the finite computation still pending. All other reduced slopes, nearby determinants and the general unbounded d/i complement remain open. No novelty claim is made; elementary recombination of adopted tools can be useful without being historically new.

## 19:10 UTC reassessment: reuse the retained gap certificate first

The earlier proposed sieve to595104 is superseded as the first experiment. The primary requested a smaller decision test and reuse of existing exact evidence rather than repetition of a finite campaign.

The fixed external evidence ZIP `research/external-results/20260908-erdos-686-677-699-b3c1b7/original/Erdos-686-677-699-evidence.zip` contains the actual entries:

- `evidence/atlas-prime-padding-check.json`: independent odd sieve on2<=prime<100000000; prime_count5761455, max_consecutive_prime_gap220, max_row_distance219, last_prime99999989, final-row distance10.
- `evidence/atlas-independent-audit.json`: the same exact prime count and gap result; explicitly says full_campaign_replayed=false.
- `evidence/atlas_independent_audit.py`: the independent NumPy odd-sieve implementation producing those mathematical gap values, separate from the Atlas B699 scanner and receipt.

This worker read the raw JSON and implementation directly from the ZIP without extracting, rerunning or modifying them. The odd sieve covers every odd integer below1e8, marks odd composites from p^2 with the correct stride, and accounts for the last prime through the last row. The omitted initial2-to3 gap is1 and cannot affect the maximum219; the reported prime count explicitly adds2. Thus it is legitimate bounded computational evidence for

n-P(n)<=219 for2<=n<1e8,

and hence i<=219 for a possible counterexample in(FINITE). This is existing exact computation, not a Lean prime-cover theorem and not an inference from the full-campaign receipt. The separate archived `b699/checks/arithmetic_audit.py` covers onlyn<=220 and is not the source of the219 bound.

### One requested primary-only decision script

The following script computes only the prime products and monotone coefficient cutoffs for3<=i<=219. Its prime enumeration stops at433, not595104. It performs no original B699 binomial/gcd test and no new large sieve. Its compressed j intervals are an exact superset of remaining original candidates after(S3), the global n bound and the reused uniform219 bound; the individual top-prime condition i<=n-P(n) is deliberately deferred.

```python
import json
from math import comb, isqrt, prod

I_MAX = 219
J_CAP = 198368
small_primes = [p for p in range(2, 2*I_MAX-4)
                if all(p % q for q in range(2, isqrt(p)+1))]
rows = []
for i in range(3, I_MAX+1):
    z = (i+2)//3
    h = i-2*z
    factors = [p for p in small_primes if i < p <= 2*i-5]
    K = prod(factors)
    square = K*K
    if h == 0:
        assert i == 4 and K == 1
        last = i
    else:
        assert h >= 1
        lo, hi = i+1, J_CAP+1
        while lo < hi:
            mid = (lo+hi)//2
            if comb(mid, h) < square:
                lo = mid+1
            else:
                hi = mid
        last = lo-1
        if last > i:
            assert comb(last, h) < square
            assert 3*last < 4097*i
        if last < J_CAP:
            assert comb(last+1, h) >= square
    count = max(0, last-i)
    rows.append(dict(i=i, z=z, h=h, primes=factors, K=str(K),
                     j_first=i+1 if count else None,
                     j_last=last if count else None,
                     n_last=3*last if count else None,
                     candidate_count=count, at_global_cap=last == J_CAP))
nonempty = [r for r in rows if r['candidate_count']]
print(json.dumps(dict(
    scope='K3 and monotone binomial cutoffs only; no original B699 scan',
    adopted_gap_evidence='fixed ZIP evidence/atlas-independent-audit.json',
    i_max=I_MAX, j_global_cap=J_CAP,
    nonempty_index_count=len(nonempty),
    candidate_count_before_individual_prime_filter=sum(r['candidate_count'] for r in rows),
    maximum_n_after_S3=max((r['n_last'] for r in nonempty), default=0),
    empty_candidate_indices=[r['i'] for r in rows if not r['candidate_count']],
    rows=rows), indent=2))
```

Decision criterion: if the exact cutoff reduces the row maximum and candidate set enough for a compact prime-cover/residue certificate, pursue that new certificate. If the remaining size is not feasible, retain the whole-slope finite reduction with its finite closure pending. No result from this unexecuted script is claimed in this worker's note; the primary's saved output will be authoritative. A later kernel certificate should compress the individually excluded rows by actual top-prime witnesses, then give explicit residue certificates only for the surviving pairs, rather than replaying an old unrestricted campaign.


### Optional fixed-point compression after the first decision output

A further unexecuted proposal sent to the primary is to iterate the pair of exact bounds. For a current index cap I, the already computed curve gives N(I)=max_{3<=i<=I}3*Jmax(i). A short independently checkable prime-cover certificate can then bound the downward distance only on rows divisible by3:

G3(N)=max_{2<=n<=N, 3|n}(n-P(n)).

Every remaining exact-slope counterexample then has i<=G3(N(I)), so the same stored curve gives a new row bound without any further binomial computation. Use the restricted3|n maximum: record-gap endpoints in other residue classes are irrelevant to this subfamily. Repeat only while the cap decreases; a fixed point is a finite certificate target, not evidence that the remaining original cases pass. The motivation is to replace a large historical-bound dependency by a compact chain of explicit prime and residue certificates, not to start another unrestricted B699 scan. No numerical value of this proposed iteration has been measured by this worker.

For the optional G3 step, a prime cover can be checked intervalwise. For each retained prime pair p<q, let t=3*floor(min(N,q-1)/3); when t>=p, every relevant row in[p,min(N,q-1)] has downward distance at most t-p from the known prime p. Include the tail after the last retained prime. The next retained prime need not be proved to be the immediately next prime: skipping primes merely weakens this upper bound. This observation can turn the fixed-point refinement into a short kernel-compatible list of prime/interval certificates without iterating over original B699 pairs.


## Final finite evidence: complete exact-slope subfamily at paper/computation level

This section supersedes the earlier pending-experiment status. The primary executed the proposed new coefficient script once, then generated small prime-cover intervals and checked only the resulting residual original inputs. The artifacts are in `../../experiments/slope-three/`; the implementation review is `../../reviews/slope-three-finite-review.md`.

Observed results:

1.217 exact K3/choose cutoffs, with213 nonempty intervals and empty indices3,4,5,7. They imply n<=28899 and represent800772 pre-filter candidate pairs, without testing those pairs as B699 inputs.
2. New independently checked prime-cover intervals refine I219 to50 at N28899 (640 certificates), then I50 to32 at N6678 (233), and stabilize I32 at N2598 (91). The historical219 sieve was adopted, not repeated.
3. The exact individual top-prime filter leaves36 original triples. Direct arbitrary-precision binomial/gcd calculations give a prime p>=i for every one, and positive carry exponents are also recorded. The inclusive boundary occurs at(126,11,42), with p=11 and first carry at121.

The valuation worker separately checked the complete paper argument and reported no mathematical issue. The paper author then reviewed the finite implementations read-only; this is not an independent paper review or a fresh-context review. No coverage or arithmetic defect was found. The inspection bound the actual script/input/output hashes, which are recorded in the review.

**Supported conclusion:** for all natural1<=i<j and n=3j, the original Common(n,i,j) conclusion follows from the adopted published EEES/Dusart mathematics, the complete uniform reduction above and these exact finite computations. This settles the entire unbounded exact-ratio1/3 subfamily at the paper-plus-computation evidence level. It does not solve other ratios or B699 globally, and no novelty claim is made.

**Formal status:** the previously frozen conditional near-middle Lean theorem concerns a different band. A full Lean proof of the new slope-three result is not yet established. The36 residual records alone do not cover the final top-prime omissions: a kernel consumer must also verify the coefficient cutoffs, interval covers and the individual prime filter/witnesses. The primary owns those formalization and closure steps. This distinction does not weaken the exact Python coverage review, but it prevents presenting the new paper/computation result as already kernel accepted.
