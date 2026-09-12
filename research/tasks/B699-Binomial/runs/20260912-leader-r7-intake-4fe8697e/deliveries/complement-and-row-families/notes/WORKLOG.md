# Work log

## Start
Independent task, no original A/B/C files supplied. Their frontier is metadata only, not a theorem dependency.

Candidate lemma: if p>i, 0<=r<i, p^a | n-r, then p | C(n,i). Under full noCommon(i), p does not divide C(n,j), so j mod p^a <= r. Derived using nonnegative floor contributions to factorial valuation; full powers retained.

For prime i=p, same implication when v_p(n-r)>=2, since the denominator consumes one p; exponent-one prime at p=i must be treated separately.

Potential i=3 route: n odd forces n/gcd(n,j) in {1,3} under noCommon, hence n=3j, v3(n)=1. Need an independent closure of this proportional family, not an appeal to the historical summary.

## Diagnostic selection, not proof
The complete n<=20000 i3 maximal-window-power probe had zero weak survivors. A separate strict-off-center p>=5 probe through n=300000 retained (162,70), whose actual gcd has primes 5 and 7 from higher layers. Neither scan is an infinite-proof dependency.

## Source overlap check
Read the delivered B text about beta=d*e and beta=mP; did not adopt its upstream million-beta finite base. Its beta=P^2 continuation was already identified, so this run switched to the complementary gamma. Raw-byte source materialization was denied and is not invented in the release.

## Cubic construction
Derived the actual Vandermonde content divisor, its exact 2-part under4|n, the positive discriminant identity and six evaluations. Used full noCommon only at the scalar H step. Checked p=3 endpoints and the proper-divisor example L=18,gcd=36.

## Complementary consumer
Obtained n<123*eplus^6+2 and n<27*dplus^3+2. All dplus/eplus1,3,5,7 candidates accepted; two independently written implementations match855records/854pairs. The first projection leaves9records/8pairs, all refuted by the second projection. Full gamma=mP(m<=7) consumer connected.

## Uniform local bound
All six local gcds satisfy G^3<(n-r)^2 under noCommon. Connected to an odd-prime-power row criterion; recorded n100,j49 as a warning that the selected base7 need not itself be the witness.

## Independent multi-index row family
Found a lighter direct construction n=4*P^(60*t),P>=17 prime. Q does not divide j: witnessP. Otherwise j=Q or2Q: a prime factor of(n-1)/3 witnesses all legal3<=i<=14. This route avoids content/discriminant/certificates entirely. Generalized to E=M!, M>=3.

## Release preparation
Added joint dminus/dplus split identity, tested640nonempty first-projection weak inputs. Preserved all failed strengthenings. Python acceptance is separate from paper inequalities and from absent Lean verification.
