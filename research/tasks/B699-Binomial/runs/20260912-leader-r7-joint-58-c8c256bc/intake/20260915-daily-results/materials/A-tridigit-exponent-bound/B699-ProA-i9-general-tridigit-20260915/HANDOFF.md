# HANDOFF — final current frontier, 2026-09-15

## Read first
REPORT.md; SOURCE_ADOPTION.md; FAILURE_BOUNDARIES.md; notes/PROOFS.md §§0–7.
The mathematical state here supersedes this round's intermediate e85/e38 routes. Earlier inputs remain byte-identical.

## Main new result
For a prime p>=11, H>K>=1, 1<=b,C<p, n=p^e(p^H+b*p^K+C), 400|n:
- e>=23 implies Common9 for every legal j.
- h=H-K>=10 and e>=16 already suffices.
Thus NC9 in this source class forces e<=22; h>=10 further forces e<=15.
Highest digit 1 and the 400 divisibility are essential to the proved statement. No global bound on arbitrary gcd prime valuations or alpha exponents follows.

Main bridge: under NC9, j=Q(B*p^K+S). B=0 is excluded by E. For B>=1, set d=p^h+b,c=B, keep j<p*n/d, hence
  d^7 Q^4 < 2^213 p^7 n,
  2^37 d^8 < 2^251 p^(h+7-4e) n.
Use old two-coefficient CR where possible. Exact low first-order balance forces p>512. Remaining large-gap balanced case has a nonzero same-sign quadratic coefficient.

## Other outputs
- e>=14 and K,h>=e+14: all b,C covered.
- e,h>=10 with C having no prime divisor 1 mod18: K arbitrary covered.
- For alpha=m*2^a*5^b, reduced 10|d rational band no longer needs W nondivisibility; see proof §9.
- Appendix A gives a stronger nonzero fact, using 71 small coprime pairs, but is NOT needed by the main e<=22 consumer.
- Two exact whole-row demonstrations and full digital-mask covers are included.

## Grade and rerun boundary
Paper reasoning plus new exact arithmetic receivers, using frozen elementary E/U*/CR and old A9-FINITE only at low n. No Lean or independent full review.
Run python3 code/reproduce.py for THIS ROUND ONLY. It does not run discovery programs or any historical receiver. For the main finite obligations without Appendix A: python3 code/receive.py --core-only --output /tmp/a-core.json.
Hash checks do not independently accept inherited mathematical interfaces.

## Still open
R7={3,4,5,6,7,8,9}; alpha family count 58 unchanged; i14 prior grade preserved. Arbitrary p and digit positions remain unbounded in the small-e remainder. No claim that every true NC9 has a leading-unit three-digit source in some prime base.
Prioritize structural coverage of highest-digit>=2/multiple nonzero digits or simultaneous primes, not a cosmetic reduction of22 and not rerunning old content/CRT.
