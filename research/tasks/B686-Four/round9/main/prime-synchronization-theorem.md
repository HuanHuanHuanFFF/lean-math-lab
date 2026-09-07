# Prime synchronization: a uniform height restriction for B686/Four

Assembled 2026-09-07, round 9. This supersedes the single-rectangle draft while preserving that draft as a record of the failed small-distance extension.

**Evidence status:** a paper argument using a published analytic theorem; the all-distance geometric replacement passed [A's independent paper audit](../a/all-D-independent-audit.md), read by the main task at 21:47 UTC. Several arithmetic and closed-form geometric interfaces are checked in Lean, but neither the imported analytic theorem nor this complete statement is a Lean theorem. No conjectural number-theoretic hypothesis is introduced. No priority/novelty claim is made.

## 1. Statement and actual change of frontier

Write

\[
P_k(t)=\prod_{i=1}^k(t+i).
\]

For every fixed \(0<\delta<1/2\), the argument gives a constant \(K_\delta\) such that every natural-number solution

\[
k\ge2,\quad n\ge0,\quad m\ge n+k,\quad P_k(m)=4P_k(n)
\]

with \(k\ge K_\delta\) satisfies

\[
\log m>\bigl(\log(2k)\bigr)^{3/2-\delta}. \tag{1}
\]

Consequently, for every fixed \(C>0\), the region \(m\le k^C\) contains only finitely many original triples. For every fixed \(\eta>0\), another uniform threshold gives

\[
k<\exp\bigl((\log m)^{2/3+\eta}\bigr). \tag{2}
\]

These are large-length restrictions, not a bound on all lengths and not a solution of #686. Fixed \(k\), including \(k=5\), and the unbounded higher-height region remain. None of the constants here is claimed to be numerically useful.

## 2. Imported theorem, with attribution

The external input is Matomäki–Radziwiłł–Shao–Tao–Teräväinen, *Singmaster's conjecture in the interior of Pascal's triangle*, QJM 73(3), 1137–1177 (2022), **Proposition 1.13(ii)**, DOI [10.1093/qmath/haac006](https://doi.org/10.1093/qmath/haac006). The preprint numbers this 1.12. See [source audit](source-audit.md).

Its \(j=1\) specialization compares the prime sum of a fixed smooth doubly periodic \(W(N/p,M/p)\) on \([P,2P]\) with the corresponding \(dt/\log t\) integral, with error

\[
O_{\delta,A}\!\left(\|W\|_{C^3}\frac{P}{(\log P)^A}\right),
\]

uniformly for \(|N|,|M|\le\exp((\log P)^{3/2-\delta})\). We use \(A=2\). The discovery pointer was Tao's 2026 *Products of consecutive integers with unusual anatomy*, Theorem 2.5 and the phase-to-integral method in Lemma 3.1; the analytic result is credited to the original five authors, not to this repository.

The integral retains the correlation between the two phases. It is not an assertion of independent uniform distribution. The source's height restriction is essential to this application; it is not silently extended to arbitrary \(N,M\).

## 3. Arithmetic: an exact zero prime sum

If \(p>k\), a block contains a multiple of \(p\) precisely when

\[
p\le(n\bmod p)+k,
\quad\text{equivalently}\quad
\{n/p\}\ge1-k/p.
\]

For an original solution, every odd prime divides the lower block if and only if it divides the upper block. On \(2k\le p\le4k\), the hit threshold belongs to \([1/2,3/4]\), and \(p\nmid4\).

Choose fixed smooth one-periodic functions \(A,B:\mathbb R\to[0,1]\) with the following plateaus and nonzero sets:

| Function | Equals 1 on these fractional parts | Nonzero only in |
|---|---|---|
| \(A\) | \([7/8,15/16]\) | \((27/32,31/32)\) |
| \(B\) | \([1/8,7/16]\) | \((1/16,15/32)\) |

Set \(W(u,v)=A(u)B(v)+B(u)A(v)\). Fixed smooth cutoff construction and endpoint details are in [B's derivation](../b/uniform-all-D-integral.md). Its nonzero set lies in the two opposite hit/miss rectangles, so

\[
\sum_{\substack{2k\le p\le4k\\p\ \mathrm{prime}}}W(n/p,m/p)=0. \tag{3}
\]

The actual kernel-checked interfaces are `HitSemantics.lean`, `PrimeSynchronization.lean`, and `PhaseInterface.lean`; the last uses a support hypothesis on an arbitrary test function, not an unproved definition claiming to be a smooth bump. Standard classical choice in real-valued definitions is not a new number-theoretic axiom.

## 4. Geometry: a lower bound at every allowed distance

Put \(d=m-n\), \(D=d/k\ge1\), \(L=n/d\). The previously checked size inequality \(kd<2m\) implies \(L>k/2-1\). Thus \(k\ge802\) ensures \(L\ge400\). No use is made here of the previous paper distance bound \(d>k^2/250000\).

Change variables \(x=d/t\). The unweighted phases become \((Lx,(L+1)x)\) on \([D/4,D/2]\). Two deterministic implications give \(W=1\):

- \(\{x\}\in[1/4,1/2]\) and \(\{Lx\}\in[7/8,15/16]\);
- \(\{x\}\in[1/2,3/4]\) and \(\{(L+1)x\}\in[7/8,15/16]\).

The second implication uses the reverse hit/miss direction. It repairs the original draft's genuine obstruction: at \(D=2\), the original one-sided test function vanishes along the entire continuous orbit, whatever \(L\).

For \(q=D/4\ge1/4\), the stripe set

\[
G=\{x\in[q,2q]:\{x\}\in[1/4,3/4]\}
\]

has measure at least \(q/5=D/20\). For \(q\ge1\), complete periods give at least \(\lfloor q\rfloor/2\ge q/4\). For \(1/4\le q\le1\), exact interval intersections give the five affine pieces in B's proof; the worst relative value occurs at \(q=5/8\). A separate closed-form certificate for this inequality is formalized in `StripePrimitive.lean`; identification with actual measure is a separate Lean obligation.

Split \(G\) at integers and half-integers into its plus/minus stripe segments. The number \(N\) of positive-length segments is at most \(D/2+4\le9D/2\). In any real interval \(J\), for \(\lambda>0\), the portion satisfying \(\{\lambda x\}\in[7/8,15/16]\) has measure at least

\[
|J|/16-1/(8\lambda).
\]

Indeed, \(\lambda J\) has at least \(\lambda|J|-2\) complete unit cells, each contributing \(1/16\). Apply this with \(\lambda=L\) on plus segments and \(\lambda=L+1\) on minus segments. Segment overlaps are only finitely many endpoints. Nonnegativity yields

\[
\int_{D/4}^{D/2}W(Lx,(L+1)x)\,dx
\ge\frac D{320}-\frac{9D}{16L}
\ge\frac D{640}. \tag{4}
\]

For \(x\in[D/4,D/2]\), the positive change-of-variable weight obeys

\[
\frac{d}{x^2\log(d/x)}\ge\frac{4k}{D\log(4k)}.
\]

Equations (4) and this bound imply

\[
I:=\int_{2k}^{4k}W(n/t,m/t)\frac{dt}{\log t}
\ge\frac{k}{160\log(4k)}. \tag{5}
\]

All constants and the function \(W\) are independent of \(D,L,n,m,k\). No rationality, irrationality, or generic-orbit assumption is used.

## 5. Uniform contradiction and quantifiers

Fix \(\delta\in(0,1/2)\) first; also fix \(W\) and let \(H=\|W\|_{C^3}<\infty\). Put \(P=2k\). Suppose the negation of (1), so both \(n,m\) satisfy the source's height condition with implicit constant 1.

Equation (3) and Proposition 1.13(ii) imply \(I\le C_\delta H P/(\log P)^2\), where \(C_\delta\) is uniform over these original triples. On the other hand, (5) gives

\[
I\ge\frac{P}{320\log(2P)}\ge\frac{P}{640\log P}.
\]

For \(\log P>640C_\delta H\), these bounds conflict. Choose \(K_\delta\) to cover this fixed requirement, the source's starting threshold, and 802. This proves the stated paper conclusion without letting any hidden constant depend on a candidate \(n,m\).

For fixed \(C>0\), use \(\delta=1/4\); eventually \(C\log k<(\log(2k))^{5/4}\), proving the polynomial-height corollary. This is \(\forall C\,\exists K(C)\), not a single \(K\) working for every \(C\).

For (2), take \(\delta=\min(1/4,\eta/4)\), and set \(r=1/(3/2-\delta)\). Then \(r<2/3+\eta\), and (1) gives \(\log(2k)<(\log m)^r\). Increase the threshold so \(\log m\ge1\), and (2) follows. Reusing the same epsilon symbol without this conversion would obscure a genuine quantifier step.

## 6. Remaining obligations and stopped extrapolations

- Mathematical acceptance: source audit plus independent all-distance geometry audit; neither is a human review.
- Lean acceptance: arithmetic zero-sum interface and closed-form stripe certificate are partial layers. Smooth cutoff construction, measure/integral identification, segment accounting, substitution, analytic sampling, and asymptotic threshold assembly are not all checked as one Lean chain.
- Global gap: arbitrarily high \(m\), with \(k\) still unbounded. A fixed-length Runge bound cannot be combined with (1) to conclude a universal bound on \(k\) without an additional quantitative comparison that is currently absent.
- Novelty: the exponent comes from the published MRSTT input, and the broad method is inspired by Tao's application. This repository records an application attempt, not a claim to have invented a new exponent or a new analytic theorem.
- Publication: branch checkpoint only; no external problem submission or claim of solving #686.
