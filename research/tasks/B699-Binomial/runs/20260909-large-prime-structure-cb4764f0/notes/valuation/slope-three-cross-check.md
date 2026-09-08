# Cross-check of the exact one-third slope reduction

Existing-context mathematical cross-check by valuation-transfer, after reading `../rational/slope-three.md`. This note is separate from the earlier primary-source LS2012 review: it checks the new algebra using the already adopted EEES and Dusart statements. No finite scan, factorization, Lean run, or new source-proof audit was performed here.

No mathematical defect was found in the candidate paper finite reduction:

- Complete Q localization gives Q|3b-a. For a nonzero cell, p=i and higher powers are excluded by Q<=2(i-1)<i^2. The remaining Q=p is odd and satisfies3b-a=p; b=a would make p even, so b<=a-1 and p<=2i-5. This exact cutoff was independently reconstructed by both mathematical workers.
- The zero-cell part divides C(j,z), z=ceil(i/3), and three-block Vandermonde with indices(z,z,h), h=i-2z, gives the precise cancellation `C(j,h)<K3(i)^2` under noCommon and EEES. No binomial normalization factor was omitted.
- The relations i=3h,3h+2,3h+4 are exhaustive. The first two give n<4096i. In the last, h>=4 allows the paired-factorial bound and16^(3h+1)<=8192^h, producing n<4097i. The finite i=4,7,10,13 leftovers are all handled exactly; the first two have K3=1, and the latter two use143 and323.
- Given the adopted Dusart interval at y=n-i>=396738, the strict y<4096i and25(log396738)^2>4096 produce a prime inside(n-i,n), hence a top-prime witness. The residual inequalities y<=396737 and y>=2j+1 give j<=198368 and n<=595104.
- The elementary logarithm certificate's series-tail bound, division by exp(1/5), and exact rational comparison have the correct directions. The recorded integer arithmetic was read, not rerun.

This is a uniform finite reduction of the entire exact relation n=3j, with both i and j initially unbounded. It is not a finite reduction of general B699, and the finite original-target certificate is still a separate obligation. The prime-gap219 restriction mentioned by the primary must retain its own source or certificate before restricting i; this check did not independently inspect that new finite-bound input.

There is no conflict with `polynomial-degree-obstruction.md`: that obstruction quantifies over EVERY legal triple at fixed i. Restricting to exact n=3j changes the admissible residue set and permits a lower-degree zero-cell term. The local feasible construction for any prime i<p<=2i-5 can even be realized with j=(3p+1)/2,n=3j,a=(p+3)/2,b=(p+1)/2, but this only realizes an individual avoiding prime and does not supply a noCommon counterexample.
