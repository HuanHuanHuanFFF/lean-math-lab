# First-comparison handoff and preserved routes

Worker: rational_structure, GPT-6 Astra / Max; only `notes/rational/` written. Adopted baseline37e42aca251c33c62cbc2c40f286daa0526d79ee. Round clock17:41:44-21:41:44 UTC; first useful source match sent well before18:12; stable4k result handed to primary before18:23. No recursive agents, Lean/Lake, long calculation, factorization, commit or push by this worker. Primary runs computations and owns integration/acceptance.

## Last paper result and reusable artifacts

- `near-middle-band.md`: full paper proof for all legal d=n-2j<=i, with parity extras even n:d<=2 floor(i/2); odd n:d<=2 ceil(i/2)+1. Depends on the exactly read Theorem3 of Laishram-Shorey (2012), arXiv1306.0745v1. All ten exceptions have explicit certificates; p=i is retained. This consumer does not require EEES.
- `middle-column.md`: cheaper Schur-only proof for the full middle column, with all small-i cases.
- `parity-transfer.md`: parameterized prime-power residue obstruction; includes the primary-requested Schur-only penultimate-column audit. One consumer handles future prime-factor bounds without recopying its proof.
- `band_exception_audit.py`: primary-executable bounded diagnostic using exactly the new source exceptions and one helper obstruction; independent exact binomial integers. This worker did not execute it. The primary's output is the authoritative computation record.
- `composite-window-consumer.md`: source-conditional paper extension to d<=floor(171i/50)+1. Direct Nair-Shorey source acceptance belongs to source_bounds/primary. Four source exceptions have i=2 and the fifth has the explicit p=13 certificate; x<=100 leaves the new finite domain i<=48,n<=147 (sharper if adopted EEES is used).

Evidence strength: literature transcriptions plus paper arguments, and a proposed narrow computation. No new Lean acceptance and no human peer review. Novelty unconfirmed; these are known-theorem consumers, not assertions of a new general number-theory theorem. The full target remains open with n,i,j and d/i unbounded.

## Rational denominator >=3: a precise size-only obstacle

This was the independent assigned direction after checking the central lead. Let n=sD,j=tD,gcd(s,t)=1. The adopted baseline implies that noCommon and p>i, p^e | n-a with s not dividing a force

p^e <= a(s-t).

For s=2 the relevant offsets are odd, and p>i>a immediately contradicts this. For s>=3 a prime merely exceeding i need not be enough. One actual legal remaining-region example is

n=33,i=6,j=11,s=3,t=1,a=5,p=7.

Here n-a=28, p>i, s does not divide a, but n in base7 is45 and j is14. Thus p | C(33,6), while p does not divide C(33,11): the low residue j mod7=4<=5 is permitted, and there are no higher carries. The determinant is a*t-4*s=-7, and p=7<=a(s-t)=10. This is a counterexample only to the attempted individual-prime helper, not B699; other primes work for the original triple.

The d=3 clause of the checked Laishram-Shorey source gives a prime>3k for a length-k step3 progression with m>3k, except (m,k)=(125,2). Selecting one offset class modulo3 inside the mother window gives k about i/3, hence a bound around i. The determinant consumer may need a prime power above about2i, or additional information about the offset and quotient residue. The present source conclusion alone does not supply that. This does not prove that an AP method cannot work; it identifies the missing strengthened prime/offset statement. Revisit with a theorem that controls where the large factor occurs, a stronger full-power estimate, or a structural argument combining the offset classes. No general smooth-pair or cofactor existence was assumed.

## Preserved but not adopted: stronger odd-AP constants

A primary-author-source search located Theorem4 of Laishram-Nair-Shorey, *Irreducibility of generalized Laguerre polynomials with integer u*, JNT160 (2016),76-107, DOI10.1016/j.jnt.2015.08.004. Author manuscript <https://www.isid.ac.in/~shanta/PAPERS/Lag-LNS.pdf> (also isid/ms/2015/14). The excerpt states P(Delta(m,2,k))>4.7k for m>3.5k and >5k there unless76<=k<=149 or152<=k<=155; >6k is restricted to k<=38 and m>4.5k. It lists a union of24 exception pairs:

(5,2),(7,2),(25,2),(33,2),(75,2),(243,2),(11,3),(117,3),(9,4),(15,4),(19,4),(21,4),(115,4),(13,5),(19,5),(17,6),(15,7),(21,8),(37,8),(19,9),(41,9),(87,19),(89,19),(81,23).

A 4.7k or5k band could use the existing parity consumer, because the lower-m branches already give a prime>m>amax+d. This was deliberately not promoted or worked into a second exception census: the primary directed a shift to the materially different all-composite window, which uses all i terms and has a potentially much wider applicable bound. This is an unadopted lead; citation/page transcriptions and all source exceptions would need their own acceptance if resumed. Do not report its band as completed.

## Decision and next check

Expected initial central-family reduction was achieved on paper and strengthened to a uniform d<=i band. Next leverage comes from the composite-window theorem's actual counterexample hypothesis, rather than spending this round on further odd-AP constants. Primary should finish direct Nair-Shorey source validation, decide the x<=100 boundary certificate, and obtain a fresh independent review of the source-aligned consumer. Large d/i remains the principal unbounded complement after any such band. No claimed percentage of the conjecture follows from the band width or proof-file count.
