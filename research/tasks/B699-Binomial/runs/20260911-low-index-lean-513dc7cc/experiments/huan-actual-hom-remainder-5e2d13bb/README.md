# Actual rational Hom remainder candidate

Owner: `/root/pade_construction`. Uncompiled complete proof candidate; only this experiment directory was written. Start 2026-09-11 11:53:03 UTC; 20-minute checkpoint 12:13:03 UTC. No Lean/Git/CRT invocation was made.

`RationalHom.lean` proves the rational correspondence of the actual homogeneous integer sum and casts the accepted actual P/Q content identities. `Remainder.lean` then proves, for every u,v:Nat and x,y:Int with y!=0,

`G * (y^(u+v+1)*pNorm - (y-x)^(u+v+1)*qNorm) = y^v*x^(2u+1)*E(x/y)` in Q,

with G=`qContent u v u` and the actual `pNormalizedValue`, `qNormalizedValue`, `ePolynomial`. Its final corollary keeps the integer row error inside one cast, matching the expression later supplied to the existing integer-gap consumer.

All u,v are unrestricted, including u=0. x=0 and negative x,y are allowed when y!=0. Only y is cancelled in the proof. The exponent identity is `u+(u+v+1)=v+(2u+1)`, so the proof introduces no truncated negative exponent. No Hom/source identity or gcd-divisibility assumption is added to the final statements: the actual accepted content identities and `actual_integer_pade_identity` are called directly.

`Audit.lean` prints all eight new public theorems and three adopted roots, including the accepted actual two-row consumer. `audit_axioms.py` rejects missing roots, compiler errors, sorryAx, and nonstandard axioms. Run it on the actual successful parent audit log after compilation. Its existing self-test is synthetic and is not proof acceptance. Standard allowed axioms are propext, Classical.choice, Quot.sound.

The prior exact 750-case diagnostic is linked and hash-bound in BOUNDARY_REFERENCE.json; it is not a proof of unrestricted u,v or of this Lean code. It includes x=0, while actual Rows separately retains x!=0 to prove determinant nonvanishing. Source acceptance receipts are byte-matched in SOURCE_MAP.json. File hashes are frozen in FREEZE_V1.json.

Expected frontier change if accepted: remove the exact scaling dependency between actual rational Q/E growth bounds and actual integer row errors. This candidate supplies neither the remaining growth instances nor m-selection/cofactor bounds, and it adds no full B699 index. The concrete next check is parent serial compilation of RationalHom, Remainder, then Audit, followed by the executable transitive axiom check. No mathematical failure was observed in this construction; tactic/elaboration success is still unknown until that run.
