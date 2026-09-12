# Content choose_symm direction repair

The primary extended the exclusive repair scope to only lean/Pade/{RawDet,Content}.lean. This directory records Content's two local direction corrections; no frozen experiment file or other integrated file was changed.

The actual first failure was Content.lean:93:6: rewrite did not find choose(2*u-r,2*u-r-u). The pinned mathlib source at Data/Nat/Choose/Basic.lean:194 states `choose_symm hk : choose n (n-k) = choose n k`. The target at line 93 contains the right side, so the rewrite must use the reverse direction.

The same private `choose_product_rearrange` proof at line 100 then needs the library theorem in its original direction after the arithmetic equality `2*u-k-u=u-k`. Removing `.symm` prevents the same direction error there. This second change is justified by the actual library statement; it is not described as an additional observed compiler failure.

Only those two proof expressions changed. All mathematical statements, assumptions, constants and Nat bounds remain unchanged. change.patch is the complete diff; fix-record.json binds source/log/library hashes. The failed verification 20260911T070830032646Z remains rejected because its affected roots contained sorryAx. No Lean was run by this worker; fresh compilation and axiom acceptance belong to the primary.
