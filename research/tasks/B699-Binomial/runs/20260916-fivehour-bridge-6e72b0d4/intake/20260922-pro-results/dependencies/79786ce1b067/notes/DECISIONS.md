# Research decision record · Round 4

Input: the full 2026-09-21 Overview and the completed Round-3 handoff/proof/failures; no historical-chat reconstruction and no repository writes.

1. Investigate the lower side of a square, preserving the same native q^(3r) layer. A direct extension of the upper-side proof changes the sign of the fractional comparison; this is a method obstruction, not an NC3 counterexample.
2. Generalize the exact asymptotic estimate to a SIGNED offset A and a REAL centre t. The old derivative bound only covered [m,m+1]; the new proof uses [t-1,t+1] and proves a replacement bound. No unmodified historical endgame is rerun.
3. Lower-square exceptions A=0 and A=-2 produce two new native-carry consumers. A=-2 requires a one-sided fourth-order rational truncation; the coefficients differ from the old A=2 calculation.
4. A half-integer centre t=m+1/2 creates a period-eight phase grid. This yields a symmetric, growing-width band h=m^2+m+d, with signed odd d, disjoint from the Round-3 NSB64 band. Exactly half of its (m mod8,d mod4) classes force a native carry; the other half do not at that layer.
5. Add an exact h-only phase certificate generator using rational root isolation and the inherited Q lower bound. CARRY is sufficient only after the native same-input bridge. NO_CARRY is explicitly not an NC3 assertion.

Success target: exclude genuine unbounded conditional regions of the adopted minimal branch; preserve all original integers, prime thresholds and source powers. Remaining h,D_cyc,Q,P,v,nu,n are still unbounded.
