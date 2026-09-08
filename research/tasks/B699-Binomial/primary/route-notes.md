# Primary B699 rational-slope route

Checkpoint2026-09-08 04:53 Shanghai; original deadline10:00, uninvoked maximum extension11:00. Motivation: explorer CRT constraints may be strengthened by the common rational slope j/n. Primary independently reconstructs the denominator argument after first memo exchange.

Let n=s*d and j=t*d with gcd(s,t)=1, 1<=t<=s/2. If p>i, 0<=a<i and p^e divides n-a, avoiding p as common binomial divisor forces j mod p^e=b for some0<=b<=a. Thus p^e divides a*t-b*s. If s does not divide a, this integer cannot vanish: equality and coprimality would imply s divides a. Consequently p^e<=a*s (a loose absolute bound). For a=0, every p>i dividing s already forces a common divisor, so a possible counterexample requires every prime factor of s to be <=i. Correction after explorer exchange: prime=i is allowed when its single factor in n is cancelled by i!; if its valuation in n is >=2 then avoiding a common factor forces the full valuation into j. The strict <i shorthand is superseded.

Current evidence: paper implication reconstructed, not Lean checked; exponent conventions and prime=i boundary require direct probes. All s,d and i remain unbounded. The shared observation was also independently reported by explorer at first exchange; no independence/novelty claim beyond separate initial consideration.

Expected frontier change: possibly exclude rational slopes with bounded s via a uniform large-prime-factor theorem on the relevant offsets. A merely checked finite list of triples leaves global frontier unchanged. Dependencies: exact matching of a generalized Sylvester/Schur theorem, including known exceptions (central odd products25*27 show careless bounds fail). Next test: derive exact a*s or sharper bound and search small examples contradicting any proposed uniform statement before Lean engineering.

Alternative direct encoding: rough part of n-a (primes>i) must divide product_{b=0}^a(j-b). This is a necessary divisibility constraint, not sufficient for all Lucas digits. It might yield product-size or resultant bounds; no such bound proved yet.

