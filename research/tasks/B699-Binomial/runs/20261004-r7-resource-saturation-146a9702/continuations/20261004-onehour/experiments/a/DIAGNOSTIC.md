# Exact diagnostic: geometry does not itself close E1

The source profile in joint-geometry-probe.json has q=6, D=13, cost zero, z=20, all nine line intersections at most13, source genus charge20≤30, and a compatible leading coefficient/root sum (A constant and a cubic root sum). The joint source intersection inequality holds for all58 listed author E1 states, with slack95..140. This is one common weak source profile; it is not an actual polynomial.

The complete56-column ordinary/weighted jet matrix for that same profile has60 rows and rank56 modulo257 and263. The chosen56×56 exact integer minor is stored in joint-profile-jet-check.json. In the displayed row and column order, elimination pivot products are159 mod257 and12 mod263; both are nonzero. Hence no nonzero rational H has this entire source profile in weight≤13. Clearing denominators and dividing content makes any putative rational solution nonzero after either reduction.

Consequence: the new joint intersection/genus/first coefficient conditions are safe necessary interfaces, but this explicit example shows that they can retain source types which full jet compatibility removes. The example is a method diagnostic, not a new E1 state deletion. Testing one profile does not establish q6 or E1 emptiness.
