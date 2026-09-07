/-
  Environment smoke check only; this is not a research result.

  It confirms that the pinned Lean toolchain can import mathlib and check a
  basic theorem without placeholder proofs.
-/
import Mathlib.Data.Nat.Basic

namespace Math

theorem smoke_add_comm (a b : ℕ) : a + b = b + a := by
  exact Nat.add_comm a b

/-- info: 'Math.smoke_add_comm' does not depend on any axioms -/
#guard_msgs in
#print axioms smoke_add_comm

end Math
