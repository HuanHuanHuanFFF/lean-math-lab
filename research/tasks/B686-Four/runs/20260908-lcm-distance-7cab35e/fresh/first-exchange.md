# First exchange packet

Prepared 2026-09-08 07:37 Asia/Shanghai; scheduled first exchange 07:40. The independent input boundary has been preserved: only the designated neutral packet, general workflow, own calculations and external primary mathematics sources were used. No peer route was read.

## Decision-changing outcomes

1. The obvious strengthening from multiplier 4 to all even powers of 2 is false. Exact legal example: k=3,n=4,m=13 gives 3360=16*210. It was found by odd-part grouping and checked separately against the original product definition; a second pure-JavaScript BigInt calculation returned the same products and legal separation. See route-checkpoint-1.md and odd-part-collision-probe.{py,json}.
2. A blanket irreducibility approach in the fixed-gap variable fails, even within k^2<64d. F_{6,10}(X)=P_6(X+10)-4P_6(X) has the factor X+8. This belongs to the exact family k divisible by 6, d=5k/3, root X=-4k/3, arising from an overlapping ratio-4 identity and even-degree reflection. See irreducibility-route.md and irreducibility-probe.{py,json}. The argument restricted to odd k survives this bounded diagnostic, but no uniform irreducibility criterion has been found; it remains an unproved stronger problem, not an established route.
3. Local solutions exist for every fixed k and every prime in a neighborhood of the common zero (-1,-1), with the exact local multiplier 4 and correct valuation difference. Consequently unbounded congruence-only sieving cannot close fixed k. See local-solubility.md. This is a standard method limitation, not a claimed new theorem.

## Primary-source applicability

Erdos--Straus 1977 gives fixed-k finiteness, and variable-k finiteness under the extra condition that the lower block contains a prime. It does not cover arbitrary short prime-free blocks. The inspected perfect-power block literature permits square products in broader multi-block settings, so that relaxation cannot be used as a contradiction. See exact links and scope in route-checkpoint-1.md.

## Global frontier and next allocation

Expected reduction at entry: a uniform prime-power or algebraic obstruction might exclude arbitrary k. Actual reduction: no new original triple excluded; no legal multiplier-4 witness; no new Lean file. The useful deliverable is two exact false-strengthening diagnostics and a precise modular limitation.

Before any further substantial effort, compare the odd-k fixed-gap irreducibility direction with prior records. If it is already covered, stop this duplicate. If not, a useful continuation must identify a concrete uniform factor/valuation theorem or show the proposed odd-k irreducibility statement false. Broad factorization or odd-part search expansion alone is not justified. All n,m,d and arbitrary unexcluded k remain globally unbounded. No extension has been invoked.
