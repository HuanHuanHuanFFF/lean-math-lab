import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ActualPiLegacy
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».tail.ICConsumer
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».tail.Consumers

/-! Actual original consumers from the now-unconditional115 pi certificates,
the fixed complete N/IC chain and the already accepted high-index consumer. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699ActualUniform
theorem tuples_match : B699ContinuationRows.rows.map (fun r => (r.b, r.bound)) =
    B699ActualPi.pairs := by decide

theorem row_count_bound {r : B699ContinuationRows.Row} (hr : r ∈ B699ContinuationRows.rows) :
    Nat.primeCounting r.b ≤ r.bound := by
  apply B699ActualPi.actual_primeCounting_bound (r.b, r.bound)
  rw [← tuples_match]
  exact List.mem_map.mpr ⟨r, hr, rfl⟩

theorem common_of_ratio_4096 {n i j : Nat} (hi : 1000 ≤ i)
    (hij : i < j) (hjn : j ≤ n / 2) (hn : 4096 * i ≤ n) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  by_cases hup : i ≤ 131071
  · obtain ⟨r, hr, hai, hib⟩ := B699ContinuationRows.covers_1000_131071 hi hup
    obtain ⟨ha, hab, hbk, hc⟩ := B699ContinuationRows.all_rows_valid r hr
    exact B699ContinuationIC.row_common hi hij hjn hai hib hbk
      (by decide : 12 ≤ 12) (row_count_bound hr) hc hn
  · exact B699TailConsumers.common_of_ratio_4096 (by omega) hij hjn hn

theorem counterexample_height_1000 {n i j : Nat} (hi : 1000 ≤ i)
    (hij : i < j) (hjn : j ≤ n / 2)
    (hno : ¬ ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j) :
    n < 4096 * i := by
  by_contra hn
  exact hno (common_of_ratio_4096 hi hij hjn (by omega))

theorem counterexample_height_4883 {n i j : Nat} (hi : 4883 ≤ i)
    (hij : i < j) (hjn : j ≤ n / 2)
    (hno : ¬ ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j) :
    n < 4096 * i := counterexample_height_1000 (by omega) hij hjn hno
end B699ActualUniform
#check @B699ActualUniform.common_of_ratio_4096
#check @B699ActualUniform.counterexample_height_1000
#check @B699ActualUniform.counterexample_height_4883
#print axioms B699ActualUniform.tuples_match
#print axioms B699ActualUniform.row_count_bound
#print axioms B699ActualUniform.common_of_ratio_4096
#print axioms B699ActualUniform.counterexample_height_1000
#print axioms B699ActualUniform.counterexample_height_4883
