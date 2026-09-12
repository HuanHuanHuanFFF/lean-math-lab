# Fixed 3/11 capacity probe

Original cut: p=3,q=11,k0=5,l0=2,a=1,b=2,Dseed=1,P=243,Q=121,y=243,z=1/243,c=7,d=5; weights321/407, both cofactor alternatives A^1000>=Y^321 or C^1000>=Y^407. Original source requires Y>=2^8191 (n>=2^8192) and source difference<=24. Old G inputL1=1.4135,m>74 is not replaced by an assumption.

Actual Ddelta(m)=rationalDivisor(5m-delta,2m+delta-1), delta0/1 at the same integer m. This probe evaluates m=1..101 exactly, including m<=74 to avoid relying on the old BFT cutoff. Two fixed Y values:2^8191 and2^8230. The capacity guarantees are P^(7000m)<=Y^679 andQ^(7000m)<=Y^593, obtained from the accepted strict small-cofactor capacity lemma. This is a sufficient common-exponent guarantee, not a characterization of all possible actual prime exponents.

Numerical error model uses exact actual Q/E evaluations, not asymptotic approximations. It replaces1/G by1/D in the source triangle upper bound, for both deltas. Failure of that certificate does not refute the original cut or Common. Asymptotic rates are computed separately with rational outward bounds and clearly do not prove a uniform finite-m G bound.

No Lean, no new seed/cd/weight search, no original frozen files modified. First observed start2026-09-12T02:07:51Z;20-minute checkpoint02:27:51Z is not a deadline.
