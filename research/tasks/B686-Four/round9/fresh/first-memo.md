# B686 round 9 fresh: first memo

- Started: 2026-09-08 07:15:43 Asia/Shanghai. Initial isolated phase ends 08:00; first exchange 07:40. Round original deadline 10:00; no extension invoked.
- Inputs read: round9/fresh-packet.md; lean-research/SKILL.md and references/open-problem-workflow.md. No other round-9 branch read before this memo.
- Owned files: round9/fresh/ only. No Lean engineering planned before an identified global dependency is unlocked.
- Exact target: natural k,n,m, k >= 2, n+k <= m, product_{i=1}^k(m+i) = 4 product_{i=1}^k(n+i).

## Initial route assessment (hypotheses, not results)

The fixed multiplier 4 makes the product of the two disjoint blocks a square, with exactly the same odd-prime valuations in each block. Explore whether a theorem on perfect powers in products of separated intervals, or a prime-factor matching argument using m/n close to 1, excludes a uniform family. Intended frontier change: arbitrary k >= K eliminated, leaving finitely many k; n and m would remain unbounded for the surviving odd k unless a second bound is obtained. A theorem that only gives fixed-k finiteness does not achieve this.

Lowest-cost discriminating test: locate and check the precise hypotheses of known product-of-interval perfect-power results; independently derive the valuation matching constraints and test whether the claimed structural strengthening is false in small parameter examples. Do not promote bounded experiments to universal theorems.

Alternative considered: view binomial(m+k,k) = 4 binomial(n+k,k) as an equal-degree Diophantine equation. Expected weakness: general finiteness statements are ineffective or fixed-k only. Invest only if a classification theorem gives a uniform contradiction for multiplier 4, or a concrete witness construction.

## Environment

Default shell and Node REPL failed before execution with helper_unknown_error: setup refresh had errors. Parent supplied the established escalated read-only shell workaround; packet and skill reads succeeded with exit 0. No mathematical conclusion follows from the failed default startup.
