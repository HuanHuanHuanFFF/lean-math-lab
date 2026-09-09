# Valuation route cross-review

Reviewer: rational_structure, GPT-6 Astra / Max, reviewing the other mathematical route. Review completed in the 2026-09-08 18:20-18:35 UTC checkpoint window. This is **cross-route AI review using an existing task context**, not fresh-context independent review and not human peer review. The primary attempted a fresh reviewer, but the tool's total agent-thread cap prevented it; existing roles were reused without increasing concurrency.

Scope: the raw target is every natural1<=i<j<=floor(n/2), with a common prime p>=i. Read `../notes/valuation/zero-gap-memo.md`, `lcm-binomial-compression.md`, `two-binomial-bridge.md`, and `../notes/primary-gap-bounds.md`; also read the two audit scripts and `../experiments/zero-gap/n100.json`. No candidate code, Lean, factorization or enumeration was executed by this reviewer. Only this review file was written.

## Verdict

No mathematical defect requiring correction was found in the actual avoiding-part divisibility, zero/nonzero split, adjusted rough-LCM compression, or their conditional EEES consumers. The newer constant324 supplement is valid under the same assumptions and supersedes1296 as the stronger elementary polynomial consequence. The exact K-based binomial inequality remains stronger and should remain the main exact consumer.

This verdict accepts a paper argument within its stated dependencies. It does not establish the EEES theorem, any new Lean result, novelty, or a solution of B699.

## Localization and complete exponents

For i>=2 and a selected prime p>=i, positive e=v_p(C(n,i)) guarantees a unique p-divisible term in the length-i numerator. The factorial valuation is exactly delta=1 if p=i and0 otherwise. Therefore its actual numerator valuation is e+delta, and Q=p^(e+delta)>i. The remainder a=n mod Q lies in[0,i).

Absence of p from C(n,j) implies j mod Q=r<=a. Hence the actual second remainder is s=(n-j) mod Q=a-r, giving r+s=a and Q|d+r-s. This uses only a necessary no-carry implication; the memo correctly does not assert that the single Q test is sufficient. The diagnostic(12,2,6,p3) illustrates that distinction.

At a zero cell, s=d+r and2r+d<i. Exactly the residues0<=r<z are possible, where z=max(0,ceil((i-d)/2)); the ceiling is necessary. For i>=2, z<i<j, so the zero-cell Q product divides(j)_z and is coprime to z!. Its divisibility into C(j,z) is valid even when multiple primes occupy the same residue, because the prime powers are pairwise coprime. There is no hidden injectivity assumption.

At a nonzero cell Q divides the stated nonzero absolute LCM. Subtracting delta from its available valuation proves D_nonzero|R. Combining with D_zero|C(j,z) gives the unconditional D|R*C(j,z), with D defined from actual avoiding primes. Under noCommon alone, D becomes the full V. No exponent is discarded in either passage.

## Bounded gaps and the earlier quadratic consumer

For1<=d<=i, the LCM is supported in values<=2i-1<i^2. This removes prime i from the adjusted R and forces every remaining prime exponent to be1. Consequently R is exactly the product over i<p<=i+d-1. Its divisibility into C(i+d-1,d-1) is correct, including the empty d=1 case.

The balanced Vandermonde comparison uses z<=floor(i/2) and ceil(i/2)<=floor(j/2), both consequences of the stated legal range. For2<=d<=i, h=i-2z is positive and equals d or d-1. The four parity counts really give at most floor(h/2) candidate odd primes. Thus P^2<=(i+d-1)^h and the coefficient-ratio estimate produce the stated strict j<ceil(i/2)(i+d)-1 and corresponding n bound. The prime-free and central even exclusions are valid under adopted EEES. The even-to-odd-composite transfer correctly rules out p|i because p>=i while i is composite.

This quadratic bound's original target contribution is superseded by the separately reviewed source-based d<=i band when the latter is adopted. Its unconditional arithmetic remains reusable; the memo records this reassessment accurately.

## Rough LCM compression

For d>=i, all difference cells are nonzero. Set M=d+i-1 and m=2i-1. The positive interval product is m!*C(M,m), and its LCM divides it. For every p>=i, v_p(m!) is precisely1[p<=m], since p^2>m. At p=i, clipping v_p(L)-1 at0 is bounded by v_p(C(M,m)); at p>i, the only missing factor is one p in(i,2i-1]. Therefore

R | K_i*C(d+i-1,2i-1)

is valid with the complete exponents. K cannot be omitted in general, and W cannot replace D: both supplied diagnostics establish genuine boundary failures of those stronger statements. The main proof avoids needing any matching or valuation-maximizer location.

The source-independent two-binomial consequence is also valid:

D | C(d,i)*C(d+i-1,i-1).

The choose-multiplication identity has the correct indices, and the direct interval-product proof cancels exactly i!*(i-1)!, whose p>=i valuation is0 except for one factor at p=i. That factor is exactly the extra numerator factor in W. Since K_i divides C(2i-1,i-1), the K-based exact divisor divides the two-binomial upper bound, so the stated relative strength is correct.

## EEES consumer and constants

Only the original-target consumer adds noCommon and the adopted, exception-corrected EEES implication C(n,i)<V^2. Given this input, the exact K/binomial and two-binomial necessary inequalities follow.

The elementary bounds used for1296 are valid: C(n,i)>=(n/i)^i; K_i<=4^(i-1) by paired central coefficients; m!>(m/3)^m by the finite binomial/geometric-sum induction; and(d+i-1)/(2i-1)<=d/i. They give n*i^3<1296*d^4 with the claimed strictness.

For324, put x=d/i>=1. The supplement correctly uses d+i-1<2d and(i/(i-1))^(i-1)<3, including i=2, to obtain

C(d+i-1,i-1)<3(6x)^(i-1),  C(d,i)<(3x)^i.

Their product is<(18^i/2)x^(2i-1). Squaring and comparing positive i-th powers gives n*i^3<324*d^4. The final strict comparison only uses4x^2>1. No extraction of an approximate real root or unstated analytic estimate is needed.

The correctly excluded original-target region is d>=i and324*d^4<=n*i^3, with i>=2 in this derivation; i=1 is separately settled in the zero-gap memo. It permits d/i to grow with(n/i)^(1/4), so it is more than a fixed-width strip. Nonetheless all of n,i,j and larger d/i remain unbounded outside it. No global finite reduction follows. The exact binomial inequality is the stronger result for individual parameters.

## Evidence inspected and limits

The existing n100.json reports PASS for38,024 legal triples with i>=2,39,689 selected-prime localizations,240 selected p=i cases, and38,024 avoiding-part divisibilities. These tests are nonvacuous because they compute D on actual triples rather than checking only an empty finite noCommon set. The saved SHA256 is

709d12e1d60ead17114352f75e99941b0a9df115c367bd610dd5a203c84664d5.

A fresh read-only hash of audit_zero_gap.py matched that value. The script computes binomial integers directly, preserves the adjusted Q, and checks the named diagnostics. This review did not rerun it. The generic compression script was read; no saved completion output for that script was relied upon here, and its existing scope concerns1296 rather than the later324 supplement. The324 acceptance in this review is paper reasoning, not additional finite computation.

The separate LCM<=4^m/Dusart source chain and the preliminary793476 finite bound in the primary memo were not re-proved or accepted by this review. EEES source validity and its twelve exceptions are adopted from the recorded baseline, not re-audited here. Future Lean acceptance still requires exact statement correspondence, successful compilation and executable transitive-axiom checks.
