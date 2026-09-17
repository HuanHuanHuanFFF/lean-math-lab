# i=7 over the fixed rough factor 7: three free smooth exponents

Author `/root/arithmetic`. Completed author paper argument and two exact finite implementations; parent independent acceptance is recorded separately. No Lean. This note separates newly checked single-power edges from one adopted historical position theorem. This version is frozen for stage handoff; later shifts and the d=1 branch use new files.

## 1. Target and evidence split

For all A,B,C>=0, put `n=7*2^A*3^B*5^C`. The target is the original i=7 statement for every `8<=j<=floor(n/2)`, with a prime p>=7 dividing both C(n,7) and C(n,j).

**New component:** the sixteen one-power edges and the twelve-point low exponent box below, including a complete original finite boundary. This component uses the already reconstructed QIG interface and Bugeaud's primary Theorem 2; it does not use the old minQ or two-position theorem.

**Adopted component:** when two small primes have their largest complete powers at position 0, the entire row is closed by the historical i7 two-position theorem. Its fixed source is
`research/tasks/B699-Binomial/runs/20260912-leader-r7-joint-58-c8c256bc/intake/20260915-daily-results/materials/D-odd-full-window/notes/PROOFS.md`,
SHA256 `e2fae2c41fd986aba1c058e0c87ab50b9a1c1165fdd9aba7e101f81e1c2cf07a`.
Sections 0 and 6 were read directly for the exact statement and finite-completeness account. They assert: if any two positions in the full seven-window cover the maximum complete 2,3,5 powers, allowing ties, then every legal i7 pair has the original common prime. This remains the old author's paper-plus-certificate result. This worker has not rerun its complete twenty-one-position certificate and does not upgrade that premise to a new independent or Lean acceptance.

Thus the full three-exponent family below depends on that explicit old premise, while the new sixteen-edge component can be independently accepted on its own.

## 2. Why three logarithms and a two-dimensional lattice are unnecessary here

Call the exponents high when A>=3, B>=2, or C>=2 respectively. A high complete power exceeds 6, so its maximum in n,n-1,...,n-6 is uniquely at n: the other positions have valuations equal to those of their nonzero shifts. If two exponents are high, two of the three maximum powers are at 0; the third is at some position s. The set {0,s}, or any two-position set containing 0 if s=0, satisfies the adopted theorem.

All remaining triples have at most one high exponent. The no-high box has A=0,1,2 and B,C=0,1, twelve triples. Exactly one high exponent gives sixteen disjoint strips:

| variable base p | coefficient e in n=e*p^a | a starts at |
|---|---|---:|
| 2 | 7*3^b*5^c, b,c in {0,1} | 3 |
| 3 | 7*2^a0*5^c, a0 in {0,1,2}, c in {0,1} | 2 |
| 5 | 7*2^a0*3^b, a0 in {0,1,2}, b in {0,1} | 2 |

The coefficient e is fixed in each strip and is coprime to its variable base p. No term of the form d2^A5^C-r with two free exponents enters the new logarithm step.

## 3. QIG gives a large valuation at one other small prime

For target 7 define s7 to remove the full 2,3,5 parts, and a solitary 7 only when its valuation is exactly one. Every higher 7-power stays in the coarse part. Let T be the product of s7 over the first four source positions. The quartic proof in the fixed source used in 02 gives QIG and `T<=D*n ==> n-1<D^6/2^16` under NC7.

In a strip n=e*p^a, the largest complete p-power in this four-window is p^a. If q and r are the other two primes among 2,3,5, write Qq,Qr for their four-window maximum complete powers. Removing one maximum for each prime leaves at most its part of 3!, so

`T<=42*p^a*Qq*Qr=(42/e)*Qq*Qr*n`.

Since e>=7, QIG-height and n-1>=n/2 imply

`p^a<(Qq*Qr)^6`.

The constant needed here is `(2/e)(42/e)^6/2^16<1`, already true at e=7. If `K=max(v_q(Qq),v_r(Qr))`, then qr<=15<2^4 and p>=2 give a<24K; we deliberately use the looser bound

`a<36K`.

Consequently one other prime q in {2,3,5} has a maximum valuation Cq with a<36Cq. For a>=108 this Cq is at least 4. It cannot occur at source position 0, where v_q(e)<=2. If it occurs at a position r=1,2,3, the elementary unequal-valuation rule forces

`delta=v_q(e)=v_q(r)<=1`.

Set e'=e/q^delta and r'=r/q^delta; both are q-adic units. Then

`Cq=delta+v_q(e'*p^a-r')`.

The relevant valuation after division is at least 3. All a<108 will be handled in the finite bottom, so no excluded low valuation is passed to a logarithm theorem.

## 4. A small uniform logarithmic-inequality lemma

Let `M(t)=max(log(t+1)+2,8)`. For any 0<K<=20000,

`t<K*M(t)^2 ==> t<10^8`.

For t>=10^8, M(t)<log t+3, and t/(log t+3)^2 is increasing. At 10^8 it exceeds `10^8/27^2>20000`, using log10<3. This proves the claim. All logs are natural.

## 5. Odd selected q: one explicit two-log theorem

For q=3 or 5, use Bugeaud Theorem 2 (the same primary PDF and provenance as 02) with modulus m=q, auxiliary g=q-1, fractions p and r'/e', exponents a and 1, heights A1=5 and A2=5e, and mu=4,c1=66.8. The fractions are q-adic units; g is coprime to q and their g-th powers are 1 modulo q. H2 is empty. The first fraction is not +-1, the form is nonzero, and all height requirements hold. The theorem's gcd condition holds because the second exponent is 1.

Put L=log(5e) and t=a/L. The exact normalized coefficient is `b'=t+1/log5<t+1`. Since g<=4, log5<2, logq>1, and 4logq<8, the theorem gives

`v_q(e'*p^a-r') <535*L*M(t)^2`.

Adding delta<=1 and using a<36Cq yields `t<20000*M(t)^2`. Therefore

`a<10^8*log(5e)`.

No third p-adic logarithm, fixed-support theorem, or variable coefficient treated as a constant is hidden in this bound.

## 6. Selected q=2: square the base and retain the valuation floor

Now p=3 or 5. Write a=2u+epsilon, epsilon in {0,1}; u>=54. The two fractions are p^2 (9 or 25) and `r'/(e'*p^epsilon)`. Their difference has 2-valuation Cq-delta>=3. Hence the second fraction is 1 modulo 8, as is the first.

Use modulus m=4, auxiliary g=1, exponents u and 1, heights A1=25,A2=5e, and mu=4,c1=66.8. H1 and H2 hold because v2(p^2-1)=3 and the second fraction is 1 modulo 8. All other assumptions are as above. With L=log(5e), t=u/L, the coefficient is less than 268L, since log25<4 and log4>1. Thus

`v4(Lambda)<268*L*M(t)^2`.

Since `v4(Lambda)=floor((Cq-delta)/2)`,

`Cq<536*L*M(t)^2+2`.

Then u<=a/2<18Cq, so `t<10000*M(t)^2`. Section 4 gives

`u<10^8*log(5e)`.

For every branch a safe integer cap is therefore

`a<3*10^8*bit_length(5e)`;

the 2-adic branch may use the stronger `u<10^8*bit_length(5e)` directly. The +2 and the floor conversion have not been dropped.

## 7. Complete least-residue lifting and finite reduction

For odd q, the variable base p generates the unit group modulo q^v. This follows from the elementary first-level orders and valuations:

- q=3, p=2 or 5: order 2 modulo 3 and v3(p^2-1)=1;
- q=5, p=2 or 3: order 4 modulo 5 and v5(p^4-1)=1.

Binomial expansion then gives order `(q-1)q^(v-1)` at every level. For each normalized e',r', lift the unique least a solving `e'p^a=r' modq^v`, testing all q next lifts. Enumerate every progression member with a>=108, a<36(v+delta), and the proved exponent cap, then test the exact valuation.

For q=2, separate both parities epsilon, reject only the necessary mod8 mismatch, and lift the unique u for base 9 or 25 in the subgroup 1 modulo 8, whose order is 2^(v-3). Enumerate all u with `108<=2u+epsilon<36(v+delta)` and its cap, again testing exact valuation. Stop only when the actual least root reaches its cap; both types of roots are nondecreasing. The complete branch inventory includes every q distinct from p and every r=1,2,3 satisfying the valuation equality above.

The 16 strips with their bottom ranges and the 12-point low box give 1878 finite exponent triples. Strict QIG settles 1796; two have empty legal range. The remaining 80 are all checked against the original problem. Their old minQ/two-position annotations in the discovery probe are not used to accept this new finite boundary.

## 8. Completed new finite boundary and its exact scope

`experiments/arithmetic/i7_d7_probe.py/.json` preserve the complete exponent discovery. `i7_d7_factor_probe.py/.json` use SymPy solely to discover factors, without accepting its primality decisions. `i7_d7_certify.py` independently checks every proposed prime by complete trial division and every window factorization by exact multiplication before constructing target-carry intervals.

The resulting `i7_d7_certificate.json` has all 80 original rows, with **184** full prime-power intervals covering **600,819,838,919,757** legal pairs. This is interval coverage, not that many separately evaluated pairs. The maximum n is 801,086,425,781,250, but every actual prime factor used is at most 2,818,572,287, so complete trial primality requires trial divisors only through 53,090. Source v_p(C(n,7)) is checked independently of the target interval; p=7 is allowed by the original threshold and is not silently removed.

The factor proposal took about 0.01 seconds and the deterministic interval construction about 0.01 seconds. `i7_d7_verify.py` imports neither the generator nor SymPy. It reconstructs all sixteen strips and all 54 normalization/parity branches, rebuilds odd-prime lifts with p^(q-1), checks both 2-adic lifts, uses next-level modular exponentiation for exact valuations, and exhausts the small exponent ranges directly. It then verifies the complete 80-row original certificate, including all primalities, factorizations, source valuations, and no-gap target intervals. `i7_d7_verification.json` records all new checks passed in about 0.13 seconds.

The new finite boundary does not call old minQ or two-position acceptance. The full three-exponent row family still inherits the explicitly identified historical two-position premise for its two-high-exponent part; no old proof has been silently upgraded.

## 9. The same fixed-7 family transfers to i=8 and i=9

For every n in this family, v7(n)=1, and the other six source terms n-1,...,n-6 are not divisible by 7. Thus v7(C(n,7))=0. Any prime supplied by the i7 result is therefore at least 11.

For every legal j>=9, use `C(n,8)=C(n,7)*(n-7)/8`; for every legal j>=10, use `C(n,9)=C(n,7)*(n-7)*(n-8)/72`. A prime at least 11 divides neither denominator, so the same prime divides the new source binomial and the unchanged target C(n,j). This proves the full fixed-7 three-exponent family for i=8 and i=9 as well, at the same inherited evidence level. It does not assert either whole index for arbitrary n.
