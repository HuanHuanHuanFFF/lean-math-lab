module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-lean-halfhour».supply.LocalPowerDecomposition
public import Mathlib.Algebra.BigOperators.Group.Finset.Basic
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699LocalPowerTheta20261005

theorem theta_increment_eq_sum {a b : ℝ} (hab : a ≤ b) :
    Chebyshev.theta b - Chebyshev.theta a =
      ∑ p ∈ Nat.primesLE ⌊b⌋₊ \ Nat.primesLE ⌊a⌋₊, Real.log (p : ℝ) := by
  rw [Chebyshev.theta_eq_sum_primesLE, Chebyshev.theta_eq_sum_primesLE]
  have hs := Nat.primesLE_mono (Nat.floor_le_floor hab)
  have hsum := Finset.sum_sdiff (f := fun p : Nat => Real.log (p : ℝ)) hs
  linarith

theorem prime_interval_subset {a b : ℝ} :
    Nat.primesLE ⌊b⌋₊ \ Nat.primesLE ⌊a⌋₊ ⊆ Finset.Ioc ⌊a⌋₊ ⌊b⌋₊ := by
  intro p hp
  rcases Finset.mem_sdiff.mp hp with ⟨hpb, hpa⟩
  rcases Nat.mem_primesLE.mp hpb with ⟨hple, hprime⟩
  have hlt : ⌊a⌋₊ < p := by
    by_contra h
    exact hpa (Nat.mem_primesLE.mpr ⟨by omega, hprime⟩)
  exact Finset.mem_Ioc.mpr ⟨hlt, hple⟩

theorem theta_increment_bound {a b : ℝ} (ha : 1 ≤ a) (hab : a ≤ b) :
    Chebyshev.theta b - Chebyshev.theta a ≤ (b - a + 1) * Real.log b := by
  classical
  let s := Nat.primesLE ⌊b⌋₊ \ Nat.primesLE ⌊a⌋₊
  have hs : s ⊆ Finset.Ioc ⌊a⌋₊ ⌊b⌋₊ := prime_interval_subset
  have hcard : (s.card : ℝ) ≤ b - a + 1 := by
    have hnat := Finset.card_le_card hs
    have hreal : (s.card : ℝ) ≤ ((Finset.Ioc ⌊a⌋₊ ⌊b⌋₊).card : ℝ) := by exact_mod_cast hnat
    exact hreal.trans (B699LocalPowerSteps20261005.integer_interval_card_bound ha hab)
  have hlog : ∀ p ∈ s, Real.log (p : ℝ) ≤ Real.log b := by
    intro p hp
    have hpb := (Finset.mem_sdiff.mp hp).1
    have hp0 : (0 : ℝ) < (p : ℝ) := by
      exact_mod_cast (Nat.prime_of_mem_primesLE hpb).pos
    have hpR : (p : ℝ) ≤ (⌊b⌋₊ : ℝ) := by
      exact_mod_cast Nat.le_of_mem_primesLE hpb
    exact Real.log_le_log hp0 (hpR.trans (Nat.floor_le (by linarith : (0 : ℝ) ≤ b)))
  have hsum : (∑ p ∈ s, Real.log (p : ℝ)) ≤ (s.card : ℝ) * Real.log b := by
    calc
      (∑ p ∈ s, Real.log (p : ℝ)) ≤ ∑ _p ∈ s, Real.log b := Finset.sum_le_sum hlog
      _ = (s.card : ℝ) * Real.log b := by simp
  rw [theta_increment_eq_sum hab]
  exact hsum.trans (mul_le_mul_of_nonneg_right hcard (Real.log_nonneg (by linarith)))

end B699LocalPowerTheta20261005
#print axioms B699LocalPowerTheta20261005.theta_increment_eq_sum
#print axioms B699LocalPowerTheta20261005.prime_interval_subset
#print axioms B699LocalPowerTheta20261005.theta_increment_bound
