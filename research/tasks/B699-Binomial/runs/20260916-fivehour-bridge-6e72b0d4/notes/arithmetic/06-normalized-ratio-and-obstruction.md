# Normalizing the logarithm bound: effective power relations, not a cofactor descent

Provenance: the parent `/root` pointed out that the exact normalized coefficient b' should be retained instead of replacing it by 2A. This note verifies that observation and records the next obstruction. Author-level paper argument, using the same frozen Bugeaud/QIG inputs. No new computation or external theorem is required.

## 1. A ratio bound independent of the cofactor

In every nonuniform horizontal edge from 05, the established necessary conditions are `A<10v` and the p-adic theorem with heights 3,d and coefficient `b'=A/log d+1/log3`. Put `t=A/log d`. Retaining that expression gives

`t <1340*max(log(t+1)+2,8)^2`.  (R)

Indeed the valuation bound divided by log d has coefficient `(668/5)/(log3)^3<134`; `1/log3<1`, `log(log3)+0.64<2`, and `4log3<8`.

For t>=10^6, `log(t+1)+2<log t+3`, and `log t+3>8`. The function `t/(log t+3)^2` increases for t>1. At 10^6 it is greater than `10^6/21^2>1340`, using log10<3. Thus (R) is impossible there. Therefore

`A < 10^6*log d`.  (NORMALIZED-2)

The vertical calculation likewise retains `s=v/log(3e)` in the theorem's `b'=s+1/log9`. The already checked floor conversion gives

`s <810*max(log(s+1)+2,8)^2`,

and the same monotonicity argument yields

`v<10^6*log(3e)`, hence `B<2*10^6*log(3e)+1`.  (NORMALIZED-3)

These are genuine bounds uniform in the variable cofactor. They improve the asymptotic dependence of the earlier bit-length caps to a constant times log d. For the ten fixed small d, the previous explicit integer caps remain more economical; no frozen enumeration is changed.

## 2. Keep the stronger QIG relation visible

For a horizontal edge with `T5<=(30/d)3^v n` and n>=d2^A, QIG-height in fact gives

`A*log2+7*log d <6v*log3+6log30-15log2`.

The unshifted B=0 role can replace log30 by log10. Retaining this relation can improve numerical constants, but the next issue is qualitative: the current method still allows a nonempty fixed range of A/log d as d grows. This note does not spend the round optimizing that constant.

## 3. Why the H02 gcd estimate does not now bound d

In the H02 role with the maximal 2-power at zero, n=d2^A and alpha=c2^a with c in {1,5}. Therefore `g=d2^(A-a)/c>=d/5`. The accepted seventh-order inequality gives

`d^6<5^7*2^22*2^A`.

Consequently, with L=log d,

`A/L >6/log2 - (22log2+7log5)/(L*log2)`.

Together with NORMALIZED-2 this places the ratio in a broad interval whose asymptotic lower endpoint is 6/log2 and whose upper endpoint is 10^6. Neither L nor d is bounded. No smaller NC input has been constructed. Replacing a variable d by a fixed coefficient would lose the actual remaining freedom.

## 4. A useful bound on the pure free-row interpolation route

Consider a nonzero polynomial with uniform multiplicities w1,w3,w4 on the complete free rows 1,3,4, degree D, origin order T, and positive degree deficit `delta=D-(w1+w3+w4)`.

If `(r+1)w_r>D`, the whole row line divides the polynomial. Strip such factors. Each stripping reduces D and its row weight by one, preserves delta, and preserves the origin order because r>0. At the end,

`w1+w3+w4 <= D*(1/2+1/4+1/5)=19D/20`.

Thus D<=20delta and T<=D, so

`T/delta<=20`.

This is only a bound for the stated uniform complete-row class; the previous sharper T<=7 result concerned delta=1 and symmetry. Even the loose all-deficit ceiling 20 is far below what the current normalized logarithm constants would need in order to contradict the effective lower power bound for d. Increasing the degree gap inside this pure method class is therefore not a promising bridge by itself. Nonuniform allocation, multiple arithmetic quotients, or new source information are outside the statement.

## 5. Direct small-root substitution loses the gcd variable

On H02, q1=(n-1)/s1 with s1 in {1,5}. The exact first normalized source condition gives the positive integer

`U=s1*beta*(alpha-beta)/(g*alpha-1)`.

Rearrangement gives

`alpha*(s1*beta-g*U)=s1*beta^2-U`,

and therefore `U=s1*beta^2 mod alpha`. The variable g disappears from this congruence. Thus simply calling g a small root modulo alpha has not produced a polynomial constraint in that root. The congruence constrains beta and U instead; these are also unbounded.

This is a diagnosis of the direct substitution, not an impossibility theorem for lattice or small-root methods. A useful next construction would need a genuinely nonconstant congruence in g after the other window quotients are eliminated, with controlled coefficient heights and a proof that solving it yields an NC-preserving descent or an absolute height. Neither condition is currently established.

## Decision checkpoint

Actual new result: effective normalized exponent/cofactor power relations. General H02, H01, the six denominator templates, and the R7 index set remain open. The next productive input must couple the same beta and full row allocations or alter the source window; the fixed-cofactor and shifted-family successes do not by themselves provide that coupling.
