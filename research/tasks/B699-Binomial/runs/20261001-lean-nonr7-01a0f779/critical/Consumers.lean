import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.M64.Height
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.WindowLog.Actual

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

namespace Math.B699.CriticalWindowLog
open B699LargePrimeStructure Math.B699.CriticalM64Windows
open Math.B699.ZeroBoundaryWindowLog

/-- Actual complete exponents, bounded height, and the nonzero logarithm window.
This is a necessary condition on a counterexample, not its final exclusion. -/
def ActualLogPair (n i : ℕ) : Prop :=
  ∃ p q a b A B : ℕ, M64PairData n i p q a b A B ∧
    fullExponent n i p ≤ 15359 ∧ fullExponent n i q ≤ 15359 ∧
    0 < |linearForm A B p q (fullExponent n i p) (fullExponent n i q)| ∧
    |linearForm A B p q (fullExponent n i p) (fullExponent n i q)| ≤
      33 / ((n : ℝ) - 33) ∧
    |linearForm A B p q (fullExponent n i p) (fullExponent n i q)| < 128 / (n : ℝ)

theorem actual_log_pair_of_bounded {n i : ℕ} (hn : 4096 < n)
    (hi34 : i ≤ 34) (hpair : BoundedM64Pair n i) : ActualLogPair n i := by
  obtain ⟨p, q, a, b, A, B, hdata, hx, hy⟩ := hpair
  have hcopy := hdata
  obtain ⟨hp, _, hq, _, _, hP, hQ, hab, _, _, _⟩ := hcopy
  have ha : a < 34 := lt_of_lt_of_le hP.1 hi34
  have hb : b < 34 := lt_of_lt_of_le hQ.1 hi34
  obtain ⟨_, hA, _, _, _, hfirst⟩ := hP
  obtain ⟨_, hB, _, _, _, hsecond⟩ := hQ
  have hbounds := actual_linear_form_bounds hn ha hb hab hA hB hp hq hfirst hsecond
  exact ⟨p, q, a, b, A, B, hdata, hx, hy,
    by simpa only [linearForm] using hbounds⟩

theorem actual_i28_log_pair {n j : ℕ} (hn : 4096 < n)
    (hij : 28 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 28 j) : ActualLogPair n 28 :=
  actual_log_pair_of_bounded hn (by decide) (actual_i28_bounded_windows hn hij hjn hno)

theorem actual_i31_log_pair {n j : ℕ} (hn : 4096 < n)
    (hij : 31 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 31 j) : ActualLogPair n 31 :=
  actual_log_pair_of_bounded hn (by decide) (actual_i31_bounded_windows hn hij hjn hno)

theorem actual_i34_log_pair {n j : ℕ} (hn : 4096 < n)
    (hij : 34 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 34 j) : ActualLogPair n 34 :=
  actual_log_pair_of_bounded hn (by decide) (actual_i34_bounded_windows hn hij hjn hno)

end Math.B699.CriticalWindowLog

#check (Math.B699.CriticalWindowLog.actual_i28_log_pair :
  ∀ {n j : ℕ}, 4096 < n → 28 < j → j ≤ n / 2 →
    ¬ (∃ p : ℕ, p.Prime ∧ 28 ≤ p ∧ p ∣ Nat.gcd (n.choose 28) (n.choose j)) →
    Math.B699.CriticalWindowLog.ActualLogPair n 28)
#check (Math.B699.CriticalWindowLog.actual_i31_log_pair :
  ∀ {n j : ℕ}, 4096 < n → 31 < j → j ≤ n / 2 →
    ¬ (∃ p : ℕ, p.Prime ∧ 31 ≤ p ∧ p ∣ Nat.gcd (n.choose 31) (n.choose j)) →
    Math.B699.CriticalWindowLog.ActualLogPair n 31)
#check (Math.B699.CriticalWindowLog.actual_i34_log_pair :
  ∀ {n j : ℕ}, 4096 < n → 34 < j → j ≤ n / 2 →
    ¬ (∃ p : ℕ, p.Prime ∧ 34 ≤ p ∧ p ∣ Nat.gcd (n.choose 34) (n.choose j)) →
    Math.B699.CriticalWindowLog.ActualLogPair n 34)
#print Math.B699.CriticalWindowLog.ActualLogPair
#print axioms Math.B699.CriticalWindowLog.ActualLogPair
#print axioms Math.B699.CriticalWindowLog.actual_log_pair_of_bounded
#print axioms Math.B699.CriticalWindowLog.actual_i28_log_pair
#print axioms Math.B699.CriticalWindowLog.actual_i31_log_pair
#print axioms Math.B699.CriticalWindowLog.actual_i34_log_pair
