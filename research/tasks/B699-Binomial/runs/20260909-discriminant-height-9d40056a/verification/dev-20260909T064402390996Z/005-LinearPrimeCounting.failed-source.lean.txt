import Mathlib.NumberTheory.PrimeCounting
import Mathlib.Data.Nat.Count
import Mathlib.Data.Nat.GCD.Basic
import Lean.Elab.Tactic.Omega

namespace B686PrimeCounting

set_option maxRecDepth 100000
set_option maxHeartbeats 0

def wheelPred (n : ℕ) : Prop := Nat.Coprime n 2310
instance : DecidablePred wheelPred := fun n => inferInstanceAs (Decidable (Nat.Coprime n 2310))

def wheelData : ℕ → ℕ × Bool
  | 0 => (0, true)
  | n + 1 =>
    let a := wheelData n
    let c := a.1 + if wheelPred n then 1 else 0
    (c, a.2 && decide (77 * c ≤ 16 * (n + 1) + 215))

theorem wheel_data_count (n : ℕ) : (wheelData n).1 = Nat.count wheelPred n := by
  induction n with
  | zero => simp [wheelData]
  | succ n ih => simp [wheelData, Nat.count_succ, ih]

theorem wheel_data_bounds (n : ℕ) (h : (wheelData n).2 = true) :
    ∀ r ≤ n, 77 * Nat.count wheelPred r ≤ 16 * r + 215 := by
  induction n with
  | zero =>
    intro r hr
    have : r = 0 := by omega
    subst r
    simp
  | succ n ih =>
    simp only [wheelData, Bool.and_eq_true, decide_eq_true_eq] at h
    intro r hr
    by_cases heq : r = n + 1
    · subst r
      simpa only [Nat.count_succ, wheel_data_count] using h.2
    · exact ih h.1 r (by omega)

theorem wheel_data_certificate : wheelData 2310 = (480, true) := by decide

theorem wheel_count_period : Nat.count wheelPred 2310 = 480 := by
  have h := congrArg Prod.fst wheel_data_certificate
  simpa only [wheel_data_count, Prod.fst] using h

theorem wheel_residue_bound (r : ℕ) (hr : r < 2310) :
    77 * Nat.count wheelPred r ≤ 16 * r + 215 := by
  apply wheel_data_bounds 2310 _ r (by omega)
  exact congrArg Prod.snd wheel_data_certificate

theorem wheel_count_add_period (n : ℕ) :
    Nat.count wheelPred (2310 + n) = 480 + Nat.count wheelPred n := by
  rw [Nat.count_add, wheel_count_period]
  congr 1
  congr 1
  funext i
  apply propext
  exact Nat.coprime_self_add_left

theorem wheel_count_quotient (q r : ℕ) :
    Nat.count wheelPred (2310 * q + r) = 480 * q + Nat.count wheelPred r := by
  induction q with
  | zero => simp
  | succ q ih =>
    have h : 2310 * (q + 1) + r = 2310 + (2310 * q + r) := by omega
    rw [h, wheel_count_add_period, ih]
    omega

theorem wheel_count_linear (N : ℕ) :
    77 * Nat.count wheelPred N ≤ 16 * N + 215 := by
  have hr := wheel_residue_bound (N % 2310) (Nat.mod_lt N (by decide))
  have heq : N = 2310 * (N / 2310) + N % 2310 := by omega
  conv_lhs => rw [heq, wheel_count_quotient]
  omega

/-- info: 'B686PrimeCounting.wheel_data_certificate' does not depend on any axioms -/
#guard_msgs in
#print axioms wheel_data_certificate
/-- info: 'B686PrimeCounting.wheel_count_linear' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms wheel_count_linear

end B686PrimeCounting


namespace B686PrimeCounting

private theorem prime_divisor_wheel (p : ℕ) (hp : p.Prime) (hd : p ∣ 2310) :
    p ∈ ({2, 3, 5, 7, 11} : Finset ℕ) := by
  rw [show (2310 : ℕ) = 2 * (3 * (5 * (7 * 11))) by decide] at hd
  simp only [hp.dvd_mul] at hd
  rcases hd with h | h | h | h | h
  · have heq : p = 2 := (Nat.prime_dvd_prime_iff_eq hp (by decide)).mp h
    simp [heq]
  · have heq : p = 3 := (Nat.prime_dvd_prime_iff_eq hp (by decide)).mp h
    simp [heq]
  · have heq : p = 5 := (Nat.prime_dvd_prime_iff_eq hp (by decide)).mp h
    simp [heq]
  · have heq : p = 7 := (Nat.prime_dvd_prime_iff_eq hp (by decide)).mp h
    simp [heq]
  · have heq : p = 11 := (Nat.prime_dvd_prime_iff_eq hp (by decide)).mp h
    simp [heq]

theorem prime_count_le_wheel_add_five (N : ℕ) :
    Nat.primeCounting N ≤ Nat.count wheelPred (N + 1) + 5 := by
  have hsubset : (Finset.range (N + 1)).filter Nat.Prime ⊆
      ((Finset.range (N + 1)).filter wheelPred) ∪ {2, 3, 5, 7, 11} := by
    intro p hp
    rcases Finset.mem_filter.mp hp with ⟨hpN, hpprime⟩
    by_cases hcop : wheelPred p
    · exact Finset.mem_union_left _ (Finset.mem_filter.mpr ⟨hpN, hcop⟩)
    · apply Finset.mem_union_right
      exact prime_divisor_wheel p hpprime (hpprime.dvd_iff_not_coprime.mpr hcop)
  have hc := (Finset.card_mono hsubset).trans (Finset.card_union_le _ _)
  have he : ({2, 3, 5, 7, 11} : Finset ℕ).card = 5 := by decide
  rw [he] at hc
  simpa only [Nat.primeCounting, Nat.primeCounting', Nat.count_eq_card_filter_range] using hc

/-- A completely explicit global linear upper bound for the prime-counting
function. The finite wheel certificate and all periodic/counting bridges are
proved above; no external prime-counting estimate is assumed. -/
theorem prime_counting_linear (N : ℕ) :
    77 * Nat.primeCounting N ≤ 16 * N + 616 := by
  have hp := prime_count_le_wheel_add_five N
  have hw := wheel_count_linear (N + 1)
  omega

/-- info: 'B686PrimeCounting.prime_count_le_wheel_add_five' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms prime_count_le_wheel_add_five
/-- info: 'B686PrimeCounting.prime_counting_linear' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms prime_counting_linear

end B686PrimeCounting

