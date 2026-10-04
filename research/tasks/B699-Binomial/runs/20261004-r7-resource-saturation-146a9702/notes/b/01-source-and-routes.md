# B / REG3 — exact source freeze and checkpoint 1

Owner: `/root/reg3_saturation`; Research, `gpt-6-astra / max`.
Source baseline: `b1852293998ab1d6ccf98b1505582e1da44ce89a` on `huan/b699-r7-paper-20261004-01a0e34b`.
Start: 2026-10-04 Asia/Shanghai; shared round has no supplied duration/deadline. The run README owns the calendar checkpoint.
Write scope: this `notes/b/` and `../../experiments/b/` only. No Lean, installation, CI, publication or original-source edits.

## Adopted exact input

The ordinary-file member map is `runs/20260916-fivehour-bridge-6e72b0d4/intake/20261003-session-results/MEMBERS.json`.
B06 container SHA-256: `080d9a2d955471a9f4cb56594cf439e67672141d4caf2a3b9ea98adc2105389c`.
Use `inputs/generic.json` (SHA-256 `f5ad7ce85081bde5b957ddb5a8e24a443e01842a8b589fcd6e1dc70264759d07`) for B5=P5, N and K; `certificates/colon_i.json` for V_i. The script resolves retained_path, checks source byte hashes and interprets exact coefficient strings; it does not infer coefficients from the overview.
R6 PROOFS `fc7dd12a3865cbdb4e13ea712fe509ffac0d77a6f2c83d442e4477849efccef6`; R7 PROOFS `968b846355041d8fecdc7e5dd04609bdb59972eb4555fc40c1b403ad1d269ec7`.
The R6 N^3 member identities, R4 dimension-zero and R7 H*Jcal nonzero theorem are adopted author-level dependencies, not newly independently accepted results.

Set Jnew=(P5,V4,V3,V2,V1,V0), H=u^2-u*y^2+3*u*y-2*u+(y-1)^2, Jcal=u^2+u*y^2-3*u*y+y, A=4*u*y^2*H, B=3*(u-1)*(y-1)^2*Jcal; N=(u-1)*(A*r-B); D=8*r*u^2*y^2-6*(u-1)^2*(y-1)^2; B0=r*u*(u-1)*y*(y-1); h=B0*D*N*K, Omega={h!=0}.

An original candidate implies this auxiliary system under the inherited REG3 contract; the reverse implication to NC3 is not claimed. Full recovery retains S/Wgate/T4 !=0, r>0, 3*T4 a positive rational square, both unsquared Q signs, order-two zero-slot cancellation, the same affine substitution in f and J, integral nonnegative coefficients, coefficientwise 0<=J_k<=f_k, f(0)=2, an actual prime-power working base, every complete source prime power/window, and the same original n,j. p>=3 includes p=3. Original slope a and original n,j remain unbounded.

## Planned decisive step

Expected frontier: a characteristic-zero h-power membership identity would eliminate all adopted REG3 candidates in Omega. An equivalent lower-complexity presentation would unlock that terminal but does not itself exclude points. A point outside h!=0, one modular calculation, or a timeout is not a terminal.

First falsifiable test: freeze and audit sparse supports, then test low-complexity relations coming from the reversed scale quadratic and original polynomial-square identity. No large Groebner computation under current shared-memory conditions. The first resource-limited experiment only loads small coefficient tables and performs serial exact arithmetic; save sizes, degrees, resource observation and exact outputs. Adopted finite upper bound 36,855 is neither a point list nor a bound on original inputs.

Novelty: unassessed. Evidence, exact computation, independent review and Lean remain separate. The main thread will arrange independent verification of any substantive candidate result.

## Route B1: balanced scale chart (before test)

The r^0 coefficients of V4..V1 contain (u-1)^9(y-1)^9, while their r^9 coefficients contain u^10 y^10; V0 has a related shifted balance. This motivates z=4*u*y*r/[3*(u-1)*(y-1)], with inverse r=3*(u-1)*(y-1)*z/(4*u*y). All divisions are by known B0 units, so this is an equivalence of the basic open chart. Unlike rho_N it does not divide by H or Jcal. The test is complete exact transport of all six polynomials and gates, with only documented basic-factor cancellation. Success should yield a smaller equivalent polynomial presentation and may unlock a characteristic-zero terminal; it alone removes no points. Original a,n,j and all restoration conditions remain unresolved.

## Route B2: leading coefficient branch E=uy-y+1

A direct exact coefficient factorization gives [r^9]V0=-1105920*u^8*y^7*(u-1)^2*(y-1)^3*E^5. Unlike the already excluded H/Jcal or A5 branches, E=0 is a distinct apparent degeneration. If the complete six equations on E=0 force an old gate to vanish, E can be proved invertible on Omega; then V0 is genuinely degree nine in r at every allowed base point. This removes an exceptional elimination branch and permits a uniform monic V0 after localization. It would not solve the remaining E!=0 system or bound original a,n,j. Smallest falsifier: transport E=0 using u=(y-1)/y and compute the exact reduced residuals; one surviving Omega point disproves branch emptiness. First transport only; do not start a large Groebner calculation.
