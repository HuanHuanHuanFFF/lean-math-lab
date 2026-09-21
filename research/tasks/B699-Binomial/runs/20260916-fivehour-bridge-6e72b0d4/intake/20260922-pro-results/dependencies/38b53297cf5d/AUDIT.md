# AUDIT · author self-check, not independent review

The new main statements were checked for:

- Distinguishing new W_Delta from the old fixed w_old=1 and from D_cyc.
- Proving W_Delta is a positive integer, not merely writing a rational quotient.
- Preserving all prime-power source exponents in the NC3 bridge, including the threshold p=3.
- Selecting the positive Y via the original relations, not an arbitrary quadratic root.
- Checking both square comparison operands are positive before taking square roots.
- Using h integrality explicitly at the final rational-lattice contradiction.
- Strict equality boundary: COF40 excludes 16Delta>=W_Delta²+640W_Delta; the recovered bound uses numerator minus1 before floor.
- COMP1 uses a distinct 3/4 interval and applies to all Delta>=14; no terminal scan is required for the frozen Delta>=17 branch.
- Conditional heights use the original v/Q corridor; the new core obstruction itself does not rely on that corridor.
- Fixed W recovery enumerates a proved finite superset; CANDIDATE is not a counterexample and still requires all actual source checks.
- Finite diagnostics are separate from all-parameter polynomial certificates.
- Real countermodels certify noninteger nu. No P² real-scale sign is misreported as an actual p-adic event.
- The unbounded scalar cofactor family omits the norm and full original recovery; it is not an NC3 model.
- No net-difference claim against the full historical union, Lean claim, new complete index or changed-input descent.

The symbolic generator uses SymPy. The portable verifier performs its own sparse rational-polynomial arithmetic and exact fractional comparisons. Both implementations were produced in this session and do not constitute external independent review.
