# HANDOFF — A/i9 after EARLY19–20 + Q8-2Δ7 + S5/1646 / FRONTIER109

## Current precise frontier

Same fixed K152 nonzero G:

`|C_G|<=8`;
`|C_G|=8 => E=0, D(G)=305, h>=113, V<=79`.

Necessary E0 frontier: 123 -> 109. No H114 and no COVER7.

This message is A's first confirmed round in the new shared ABCD batch of 50 web-research rounds; counts in other conversations are unknown.

## New callable interfaces

1. EARLY-NEAR19–20: q=19,20, irreducible balanced H, z>=14, unique Δ4=1 or unique Δ5=1, other rows saturated => κ4+κ6+κ8>=1. Counts 308/245/493/386; total1432, both primes full rank, alternate complete anchors agree, 1432 independent local minors.
2. Q8-2Δ7: q=8, irreducible balanced H, z>=14, Δ7=2 and all other Δ=0 => κ4+κ6+κ8>=1. Complete 25982 rational quadratic-residual gates; both primes rank37; alternate anchors agree; all local minors independently reconstructed.
3. Safe raw signatures are now 508. See `certificates/fees/signatures508.json`.
4. Exact linear price certificates exclude 13 states directly. State1646 is separately forced to contain S5, and its complete S5 quotient source kernel is zero at 257/263 and both source orders.

## This round deletes

1644, 1646, 1650, 1734, 1826, 1829, 1831, 1868, 1892, 1932, 1933, 1988, 2009, 2010.

Final frontier has 109 states. The only h=113 state left is:

`1643: h=113, v=(19,16,13,11,10,10), cap=(0,2,2,0,8,14), current M8=106`.

Next h level after 1643 is h=115 (1670,1672,1679).

## Boundaries

The S5 quotient argument for1646 is an existence contradiction only; S5 can vanish at the original point, so the quotient is not a same-point NC descent.
Original n,j,k,J,g,beta, alpha exponents, full coarse-prime support/exponents remain generally unbounded. Actual G coefficients/factorization are not recovered.

The full from-empty `code/replay.py` is provided. During this turn one monolithic clean replay attempt hit a tool-call wall-time before completion and is NOT counted as PASS. Every geometry family, both prime rank runs, all alternate enumerations, independent minor receivers, all fee checks, and the four 1646 quotient module runs were nevertheless executed individually and accepted; `code/certify.py` passes on the final package.

No repository operation, no Lean, no external independent full-chain review, no complete i9/B699.

## Next test

Attack state1643 only. Its fee slack is 7 and no single existing signature name is currently forced by the safe ledger, so blindly extending another low-degree gate is unlikely to be efficient. Prefer either:
- enumerate all near-minimal 1643 aggregate types and seek a jointly forced real factor family / extra jet;
- or work directly in the full same-G source space to identify a cofactor or specialization restriction shared by every eight-factor allocation.
Do not redo the 14 states closed here.
