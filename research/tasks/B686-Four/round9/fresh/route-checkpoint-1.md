# Independent checkpoint: odd-part and perfect-power routes

Time: 2026-09-08 07:25:44 Asia/Shanghai. No claim below is Lean-checked.

## Discriminating computation: a stronger power-of-two obstruction is false

Attempted structural strengthening: for disjoint blocks of any k >= 2, equal odd parts of P_k(n) and P_k(m) force v_2(P_k(m)) - v_2(P_k(n)) to be odd. If true it would exclude multiplier 4 uniformly. It is false:

- k=3, n=4, m=13; legal separation 4+3 <= 13.
- P_3(4)=5*6*7=210=2*105.
- P_3(13)=14*15*16=3360=32*105=16*210.
- The valuation difference is 4, an even number.

The exact scan tested k=2..32 and both starts in 0..50000, grouping products by their odd part. Script: odd-part-collision-probe.py. Output: odd-part-collision-probe.json. It found this one disjoint k=3 collision and 14 k=2 collisions; no collision for k=4..32 in the stated range. The script independently recomputes both original products for every even-gap hit. Absence of hits elsewhere has no unrestricted consequence. The counterexample refutes the proposed parity principle, not the exact multiplier-4 target, and not all possible prime-power methods. A repaired route must exploit exponent exactly 2 rather than merely even.

## Primary sources and their actual scope

1. P. Erdos and E. G. Straus, On Products of Consecutive Integers (1977), original author archive: https://static.renyi.hu/~p_erdos/1977-18.pdf . Introduction states fixed k>2 and fixed multiplier give finitely many solutions, and explicitly identifies variable-k finiteness as unresolved at that time. Theorem 3.3 adds that the lower interval contains a prime and m/n is bounded. That hypothesis does not cover arbitrary short prime-free intervals in this task; fixed-k finiteness does not bound k.
2. T. N. Shorey and R. Tijdeman, Arithmetic properties of blocks of consecutive integers, arXiv:1612.05438 (2016), https://arxiv.org/html/1612.05438 . The survey distinguishes unconditional greatest-prime/powerfree-part bounds from abc-conditional statements. No unconditional theorem eliminating the present uniform family has been identified in the consulted portion.
3. A. Dujella, F. Najman, N. Saradha, T. N. Shorey, Products of Three Factorials, author-hosted manuscript https://web.math.pmf.unizg.hr/~duje/pdf/D3.pdf . Its introduction notes that products of several disjoint equal-length blocks can be square infinitely often. One must not replace the actual two-block fixed-ratio condition by an unsupported general no-square assertion.

## Frontier and allocation

Expected gain of the discarded parity strengthening: all lengths removed. Actual gain: no new original case removed; a tempting overly broad obstruction has a concrete counterexample. Next useful test must distinguish exponent 2 from the valid exponent-4 witness, or yield a uniform bound on k from matching odd-prime valuations. Do not start Lean work on this failed claim.

