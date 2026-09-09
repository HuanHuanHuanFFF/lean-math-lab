# Slope-three Lean bottleneck: implementation record

Valuation-transfer resumed this bounded task at 2026-09-08 19:18 UTC. Initial code checkpoint20:05 UTC; whole-round deadline21:41:44 UTC, wrapping from20:56:44. This worker owns only the new `lean/SlopeThree.lean` plus existing valuation notes. Previously delivered `PrimePowerTransfer.lean` and `SmallPartBound.lean` remain frozen. The primary alone compiles and verifies.

The exact target is the unconditional actual avoiding-part transfer

`avoidingPart (3*j) i j | slopeThreeKernel i * C(j,slopeThreeZ i)`,

for i>=3 and i<j, where the kernel is the product of primes `i<p<=2i-5`, z=(i+2)/3, and h=i-2z. No localization or original B699 conclusion is an extra final hypothesis. The existing complete-power Kummer lemma supplies every Q.

The first source chunk implements the exact modular split. Since a=(3j) modQ and b=j modQ<=a<Q, the quotient identity gives either3b=a or3b=a+Q; the possible negative difference disappears automatically. In the nonzero case the boundQ<=2i-2 andQ=p^(e+delta) force e=1 and p>i. Oddness then rules out b=a and gives p<=2i-5. The zero case will retain the complete Q while canceling z! from the child descending factorial.

The proposed second stage has an explicit square-dominance premise `C(3j,i)<V_i(3j)^2`. It derives the exact paper bottleneck `C(j,h)<K3(i)^2` using three blocks. EEES and Dusart remain external source obligations; neither is introduced as a project axiom.

The initial import of Mathlib.Data.Nat.Choose.Vandermonde was unavailable in the fixed compiled cache. No package update or shared cache write was performed. The import was removed before structural compilation. The needed inequality `C(m,a)C(n,b)<=C(m+n,a+b)` will instead be proved by elementary Pascal induction, then applied twice; this avoids compiling the unrelated polynomial coefficient closure.

The paper/computation exact-slope result supplied by the rational worker and primary has a concrete consumer for this interface: the complete family was reduced to n<=595104 and then to a certified small box with36 original target pairs. Those finite results have their own scripts, source identities and reviews; this module's acceptance will not automatically certify those other artifacts. It is also compatible with the universal D-polynomial degree obstruction, because exact n=3j is a genuine restricted family.

## Final development result

Successful complete development compilation was read at19:45 UTC in `verification/development/slope-three-third.log`. The initial import problem was removed without rebuilding cache objects. The sole first arithmetic error was case-splitting a variable quotient with omega; the already proved q<2 is now converted by Nat.le_one_iff_eq_zero_or_eq_one, avoiding integer-division preprocessing. All ten selected axioms outputs are standard-only.

SlopeThree.lean is frozen at SHA-256 `18251dd705447bd626c45d27c22e7e88d2d6df40c138bf5d8c033fd41b36b596`. The original D/V transfer is source independent. The exact S3 inequality is proved from an explicit pointwise square-dominance premise. See the adjacent source-correspondence audit for what this does and does not establish. Final all-root fresh-output verification belongs to the primary.
