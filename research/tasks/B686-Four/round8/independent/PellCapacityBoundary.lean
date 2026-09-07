import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import Lean.Elab.Tactic.Omega

/-! A multiplier-two family illustrating the boundary of coefficient-blind
arguments. It is not a witness for the multiplier-four B686 target. -/
namespace B686Round8Independent

def pellPair : ℕ → ℕ × ℕ
  | 0 => (19, 13)
  | t + 1 =>
    let p := pellPair t
    (3 * p.1 + 4 * p.2 + 9, 2 * p.1 + 3 * p.2 + 6)

private theorem step_preserves_ratio (m n : ℕ)
    (h : (m + 1) * (m + 2) = 2 * ((n + 1) * (n + 2))) :
    (3 * m + 4 * n + 10) * (3 * m + 4 * n + 11) =
      2 * ((2 * m + 3 * n + 7) * (2 * m + 3 * n + 8)) := by
  have hid : (3 * m + 4 * n + 10) * (3 * m + 4 * n + 11) +
      2 * ((n + 1) * (n + 2)) =
      2 * ((2 * m + 3 * n + 7) * (2 * m + 3 * n + 8)) + (m + 1) * (m + 2) := by
    ring
  rw [h] at hid
  exact Nat.add_right_cancel hid

/-- Every member gives two disjoint blocks of length two with ratio two. -/
theorem pell_pair_ratio_two (t : ℕ) :
    ((pellPair t).1 + 1) * ((pellPair t).1 + 2) =
      2 * (((pellPair t).2 + 1) * ((pellPair t).2 + 2)) := by
  induction t with
  | zero => norm_num [pellPair]
  | succ t ih =>
    simpa [pellPair, Nat.add_assoc] using
      step_preserves_ratio (pellPair t).1 (pellPair t).2 ih

/-- In particular the gaps in this family are unbounded. -/
theorem pell_pair_gap_grows (t : ℕ) :
    (pellPair t).2 + t + 6 ≤ (pellPair t).1 := by
  induction t with
  | zero => norm_num [pellPair]
  | succ t ih =>
    simp only [pellPair]
    omega

#print axioms pell_pair_ratio_two
#print axioms pell_pair_gap_grows

end B686Round8Independent


