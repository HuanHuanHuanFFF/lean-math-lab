# Candidate route: fixed-gap polynomial irreducibility

Time: 2026-09-08 07:30 Asia/Shanghai. Status: untested before the following bounded probe; no Lean claim.

Fix d=m-n and define F_{k,d}(X)=P_k(X+d)-4P_k(X). Every original solution gives a nonnegative integer root, and conversely a nonnegative integer root with d>=k is a legal solution. Proving no nonnegative integer roots uniformly is exactly the target, so merely rewriting it is no gain. A stronger irreducibility statement would expose algebraic tools (Newton polygons and factorial-basis coefficients) that could exclude all roots without searching n.

Candidate sufficient claim: F_{k,d} is irreducible over Q whenever k>=2 and d>=k. Expected frontier if proved: all original triples excluded, with no unbounded parameter remaining. This strengthening may be false; first factor exact small examples before searching for a general criterion. A factorization into nonlinear factors rejects blanket irreducibility but does not create a target witness. The known k^2<64d condition can be retained when classifying diagnostics.

Lowest-cost check: factor all F_{k,d} for 2<=k<=12 and k<=d<=300; stop or redirect after decisive reducible examples. This is a method test, not a proof of any untested family.

## Exact probe outcome (2026-09-08 07:32)

The scan finished with exit 0 using existing Python 3.14 and SymPy 1.14.0. Files: irreducibility-probe.py and irreducibility-probe.json. For k=2..12 and d=k..300, the only reducible cases were (k,d)=(6,10),(12,20). In the first case

F_{6,10}(X) = -3 (X+8) (X^5-7X^4-619X^3-10313X^2-78222X-240120).

This rejects blanket irreducibility even under k^2<64d. It is not a legal witness: X=-8 is negative. The counterexample generalizes uniformly: for every k divisible by 6, put a=k/3-1, d=5k/3 and X=-4k/3. The elementary telescoping identity P_k(a+1)/P_k(a)=(a+k+1)/(a+1)=4 gives an overlapping ratio-4 pair. Because k is even, reflection P_k(-k-1-t)=P_k(t) turns it into F_{k,5k/3}(-4k/3)=0. The two cases in the scan instantiate this known reflection mechanism.

The branch restricted to odd k>=3 was not refuted by this probe. It remains a much stronger unproved claim; generic bivariate irreducibility of P_k(X)-4P_k(Y) does not imply irreducibility after specializing Y=X+d. No theorem covering all d was found in the primary sources checked so far. Fixed-k generic or almost-all-d statements also leave an unbounded exceptional set and are insufficient.

Expected versus actual frontier: no original triple removed. A whole uniform class of spurious negative roots prevents the naive all-k irreducibility route. Any continuation should focus on a concrete odd-k criterion or a classification of rational roots that distinguishes legal and overlapping solutions, rather than expand the factorization range.

## Remaining-domain correction after exchange

The primary task checked that the negative-root family d=5k/3 satisfies the already-known necessary distance inequality only when k<320/3. Among multiples of 6 this leaves k<=102. It remains a valid counterexample to blanket irreducibility inside the retained parameter assumptions, but is not a counterexample family with unbounded k inside that retained region. The original n>=0 domain is violated throughout.
