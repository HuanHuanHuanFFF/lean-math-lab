# Parameterized carry transfer for terminal prime factors

Status: paper arithmetic. Owner and baseline as in `middle-column.md`; source theorems are deliberately kept out of this lemma. This note is the common consumer for any later improvement to a prime-factor bound, so improved constants do not create duplicate proofs.

Let 1<=i<j<=floor(n/2), d=n-2j, 0<=a<i. Let p be prime and Q=p^e with e>=1, Q | n-a, Q>a, and suppose p | C(n,i). If p does not divide C(n,j), the carry criterion implies b:=j mod Q <= n mod Q=a. Since n=2j+d,

Q | d+2b-a, with d-a <= d+2b-a <= d+a.       (1)

These are actual residues of the original integers, not arbitrary assignments.

Two useful sufficient conditions follow.

1. **Odd terminal term, any d>=0:** suppose n-a is odd, Q is odd, and Q>d+a. Writing n=uQ+a makes u odd. Then

   j=((u-1)/2)*Q+(Q+a-d)/2,

   where a<(Q+a-d)/2<Q, so p | C(n,j). Equivalently (1)'s middle integer is odd, since d-a has the parity of n-a, and therefore cannot be zero; its absolute value is at most d+a<Q.

2. **Positive gap beyond the offset, no parity hypothesis:** suppose d>a and Q>d+a. In (1), the integer d+2b-a is strictly between 0 and Q, contradicting divisibility. Again p | C(n,j).

For p>i dividing a terminal factor, the first-binomial premise is automatic, because i! contains no p and the i terminal factors contain exactly one multiple of p. For p=i it is not automatic: its surviving factorial valuation must be checked. Every use of that boundary in this worker's notes does so explicitly.

For a set A of allowed offsets and amax=max A, a prime-factor theorem supplying some p>max(i,d+amax), dividing one n-a with a in A, is therefore sufficient whenever either all n-a are odd or d>amax. A prime-power theorem may use Q>d+amax instead, provided the base prime p>=i survives in C(n,i).

## Penultimate columns using only Schur

The existing middle-column memo proves d=0 and1. For d=2 (even n), select the k=floor(i/2) odd-offset terms with amax=2k-1. Schur supplies p>2k+1=amax+d, except at k=2 and first term25. For d=3 (odd n), select k=ceil(i/2) even-offset terms with amax=2k-2; Schur again supplies p>2k+1=amax+d. Thus it covers k>2 and the k=2 ordinary cases.

The k=2 exception has n=28,d=2 or n=27,d=3. Use p=5,Q=25, with a=3 or2; Q>d+a. The first-binomial valuation is positive, including v5(C(28,5))=1.

For even n,i=3,d=2, either n-1 has p>3 or n-1=3^u,u>=2; in the latter case p=3,Q=3^u gives Q>d+1 and v3(C(n,3))=u-1>0. For i<=2, use the general elementary gcd>1 argument from `near-middle-band.md`. For odd n with i=3 or4 the source has k=2 already; all other i>=3 use the ordinary Schur argument. This proves the entire penultimate column j=floor(n/2)-1 without EEES. It is subsumed by the 4k band but remains a cheaper dependency path.
