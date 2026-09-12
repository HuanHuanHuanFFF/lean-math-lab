import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-critical-m64-windows-5e2d13bb».Actual
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CriticalPadeHeight.Final

/-!
This final layer additionally imports the current, still pending
CriticalPadeHeight candidate. The actual M64 window layer is independent of it.
No big closed power is numerically expanded: monotonicity proves the exponent cap.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.CriticalM64Windows
open B699LowIndex B699LargePrimeStructure Math.B699.CriticalPadeHeight

def BoundedM64Pair (n i : ℕ) : Prop :=
  ∃ p q a b A B : ℕ, M64PairData n i p q a b A B ∧
    fullExponent n i p ≤ 15359 ∧ fullExponent n i q ≤ 15359

theorem window_fullExponent_le {n i p a A : ℕ} (hp : p.Prime)
    (hw : M64Window n i p a A) (hheight : n < (2 : ℕ) ^ 15360) :
    fullExponent n i p ≤ 15359 := by
  obtain ⟨_, hA, _, _, _, hrepr⟩ := hw
  have hpower : p ^ fullExponent n i p ≤ n := interval_power_le_of_representation hA hrepr
  have htwo : (2 : ℕ) ^ fullExponent n i p ≤ n :=
    (Nat.pow_le_pow_left hp.two_le _).trans hpower
  by_contra hnot
  have hindex : 15360 ≤ fullExponent n i p := by omega
  have hbound : (2 : ℕ) ^ 15360 ≤ n :=
    (Nat.pow_le_pow_right (by decide : 0 < (2 : ℕ)) hindex).trans htwo
  exact (not_lt_of_ge hbound) hheight

theorem bounded_pair_of_height {n i : ℕ} (hpair : M64Pair n i)
    (hheight : n < (2 : ℕ) ^ 15360) : BoundedM64Pair n i := by
  obtain ⟨p, q, a, b, A, B, hdata⟩ := hpair
  have hdataCopy := hdata
  obtain ⟨hp, _, hq, _, _, hP, hQ, _, _, _, _⟩ := hdataCopy
  exact ⟨p, q, a, b, A, B, hdata,
    window_fullExponent_le hp hP hheight, window_fullExponent_le hq hQ hheight⟩

theorem actual_i28_bounded_windows {n j : ℕ} (hn : 4096 < n)
    (hij : 28 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 28 j) : BoundedM64Pair n 28 :=
  bounded_pair_of_height (actual_i28_m64_windows hn hij hjn hno)
    (actual_i28_below_15360 hij hjn hno)

theorem actual_i31_bounded_windows {n j : ℕ} (hn : 4096 < n)
    (hij : 31 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 31 j) : BoundedM64Pair n 31 :=
  bounded_pair_of_height (actual_i31_m64_windows hn hij hjn hno)
    (actual_i31_below_15360 hij hjn hno)

theorem actual_i34_bounded_windows {n j : ℕ} (hn : 4096 < n)
    (hij : 34 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 34 j) : BoundedM64Pair n 34 :=
  bounded_pair_of_height (actual_i34_m64_windows hn hij hjn hno)
    (actual_i34_below_15360 hij hjn hno)

end Math.B699.CriticalM64Windows
