import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.GCongr

namespace B686UniformRound9

open Real

set_option maxHeartbeats 800000

theorem log_cutoff_lt : Real.log (250000 : ℝ) < 13 := by
  apply (Real.log_lt_iff_lt_exp (by norm_num)).mpr
  calc
    (250000 : ℝ) < (27 / 10 : ℝ) ^ 13 := by norm_num
    _ < (Real.exp 1) ^ 13 := by
      gcongr
      exact lt_trans (by norm_num) Real.exp_one_gt_d9
    _ = Real.exp 13 := by
      rw [← Real.exp_nat_mul]
      norm_num

theorem log_le_scaled (x : ℝ) (hx : 250000 ≤ x) :
    Real.log x ≤ 13 * x / 250000 := by
  have hxpos : 0 < x := by linarith
  have hlog := Real.log_le_sub_one_of_pos (div_pos hxpos (by norm_num : (0 : ℝ) < 250000))
  rw [Real.log_div (ne_of_gt hxpos) (by norm_num)] at hlog
  have hcut := log_cutoff_lt
  linarith

theorem four_exp_eleven_lt : 4 * Real.exp 11 < (250000 : ℝ) := by
  have hbase : Real.exp 1 < (68 / 25 : ℝ) :=
    lt_trans Real.exp_one_lt_d9 (by norm_num)
  have hp : (Real.exp 1)^11 < (68 / 25 : ℝ)^11 := by gcongr
  have heq : Real.exp 11 = (Real.exp 1)^11 := by
    simpa using Real.exp_nat_mul 1 11
  rw [heq]
  calc
    4 * (Real.exp 1)^11 < 4 * (68 / 25 : ℝ)^11 := by linarith
    _ < 250000 := by norm_num

theorem log_four_lt : Real.log (4 : ℝ) < 1387 / 1000 := by
  have h := Real.log_two_lt_d9
  have heq : Real.log (4 : ℝ) = 2 * Real.log 2 := by
    have hp := Real.log_pow (2 : ℝ) 2
    norm_num at hp
    exact hp
  rw [heq]
  linarith

/-- info: 'B686UniformRound9.log_cutoff_lt' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms log_cutoff_lt
/-- info: 'B686UniformRound9.log_le_scaled' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms log_le_scaled
/-- info: 'B686UniformRound9.four_exp_eleven_lt' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms four_exp_eleven_lt
/-- info: 'B686UniformRound9.log_four_lt' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms log_four_lt

end B686UniformRound9
