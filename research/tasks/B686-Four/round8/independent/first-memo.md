# B686 round 8 independent route memo

- Packet: k >= 2, n >= 0, m >= n+k, P_k(t)=prod_{i=1}^k(t+i), P_k(m)=4P_k(n). Given exclusions k=6,8,12; k=5 unresolved. Given paper-supported d=m-n>k^2/250000, not Lean-checked.
- Isolation: no prior task/frontier/other branch records read before this memo. Only repository research skill and its open-problem reference read.
- Shared start/deadline: 2026-09-07 18:16:34 / 18:46:34 UTC. Target independent handoff before 18:40 UTC. No extension authorized by primary.
- Ownership: this directory only. No accepted module, dependencies, commit, or publication changes.

## Route A: large-prime transport into the difference interval

Motivation: equality of products means every odd prime has equal total valuation in the two blocks. For p>k, p divides at most one factor per block. Thus if p^a divides the lower block, its full power divides the difference of the matched upper/lower factors, which belongs to [d-k+1,d+k-1]. In particular the product of all prime-power components with p>k divides lcm(d-k+1,...,d+k-1), rather than merely having its largest prime at most d+k-1.

Proof obligation: derive a sharp global lower bound for this large-prime part of P_k(n), and an upper bound for the high-prime part of that lcm; compare using n approximately kd/log(4). One maximum-prime bound alone is unlikely to close the unbounded domain. Prime multiplicity and allocation may add information.

Status: elementary paper derivation of the divisibility, pending written proof and exact diagnostic. This is a necessary condition, not an equivalent reformulation. It includes all k.

## Route B: square-root polynomial separation for even k

Motivation: for k=2r, sqrt(P_k(t)) has a rational polynomial part A_k(t) and a decaying remainder at infinity. Equality implies A_k(m)-2A_k(n)=2R_k(n)-R_k(m). After multiplying by a common denominator, sufficiently small one-sided remainder would force A_k(m)=2A_k(n), while monotonicity of the remainder can contradict equality.

Proof obligation: compute denominator and explicit remainder bounds uniformly in k, then compare the height threshold with the existing lower bound on d. Naive coefficient bounds grow strongly in k and may fail to overlap the known lower bound. This is primarily a finite-height route for every fixed even k, not yet a uniform exclusion.

Status: untested construction / standard Runge-type motivation. No novelty claim.

## First decision

Prioritize route A because it covers odd and even k and can give an explicit test of how much arithmetic information the difference interval retains. Route B is preserved as a fallback with a precise obstacle: obtaining a useful uniform threshold.

## Search evidence at first memo

Queries on 2026-09-07: product/consecutive/four times; B686/binomial; ratio of two blocks. Primary lead: Saradha-Shorey, On the ratio of two blocks of consecutive integers (1990), DOI 10.1007/BF02880956. Abstract concerns potentially unequal block lengths and does not yet establish applicability. Original text has not yet been checked. No scoped novelty conclusion beyond not having found an exact uniform exclusion in these searches.
