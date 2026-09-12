# Checkpoint 003: complete proposed proof, independent verification pending

For full noCommon at i=3 define M=(n-2)/2, lambda=3 iff v3(n-1)=1, mu=3 iff v3(M)=1, N=(n-1)/lambda, K=M/mu. The elementary no-carry proof gives 4|n, j<=M, N|j(j-1), K|j(j-1)(j-2), and n/gcd(n,j)=c*2^s with c in {1,3}.

All three gcd(K,j-s), s=0,1,2, are now proposed >1. Missing s=2 is contradicted by parity and size; missing s=1 by an integer quotient, mod8 and the alpha constraint. Missing s=0 reduces to n=2^v and 3u^2=4a(n-1)(n-2)+3, a=1 or2. Pell descent parametrizes both, and BEG 2013 Proposition3.10 (directly read and screenshot-checked, not E's disputed S-unit constant) gives v<10^22. Exact rational approximations to log(2+sqrt3)/log2 and log(5+2sqrt6)/log2 reduce to v<96. The builder checked all 186 terminal cells, no solution.

Also both gcd(N,j), gcd(N,j-1)>1 by short divisibility arguments. Thus the full theorem would force at least two distinct primes in N and three in K. Its whole-row consumers include every M with <=2 distinct prime factors (and a slightly stronger K version); prime sizes and exponents are unbounded. R7 remains unchanged.

Two certificates generated using rational positive-series intervals:
D=3 r=10220145053365093618855481 s=5379112532902869119923797
D=6 r=26981071381830357016577689 s=8158085497214531811431487.
Independent fixed-point interval checker and bad-certificate tests still pending at this checkpoint.

New independent elementary square-root gcd bound also planned: for Q_s=gcd(n-2,j-s), (n-1)Q_s^2<2*lambda*(n-2)^2. This strengthens the old cubic large-prime-power row exclusion at r=2. Needs explicit writeup and regression checks.
