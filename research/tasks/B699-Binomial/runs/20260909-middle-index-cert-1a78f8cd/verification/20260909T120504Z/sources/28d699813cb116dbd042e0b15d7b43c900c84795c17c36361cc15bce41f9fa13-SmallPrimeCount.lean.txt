import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.TrialPrimeCheck
import research.tasks.«B699-Binomial».runs.«20260909-large-prime-structure-cb4764f0».lean.SmallPartBound

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699Middle
open B699LowIndex B699LargePrimeStructure

theorem trialPrimeCheck_complete {p : ℕ} (hp : p.Prime) :
    trialPrimeCheck p = true := by
  rw [trialPrimeCheck, Bool.and_eq_true]
  refine ⟨by simpa only [decide_eq_true_eq] using hp.two_le, ?_⟩
  apply List.all_eq_true.mpr
  intro d hd
  by_cases hsmall : d < 2
  · simp only [if_pos hsmall]
  · simp only [if_neg hsmall, decide_eq_true_eq]
    have hdle : d ≤ Nat.sqrt p := by
      have := List.mem_range.mp hd
      omega
    have hndvd := (Nat.prime_def_le_sqrt.mp hp).2 d (by omega) hdle
    intro hmod
    exact hndvd (Nat.dvd_of_mod_eq_zero hmod)

theorem trialPrimeCheck_false {p : ℕ} (hp : ¬ p.Prime) :
    trialPrimeCheck p = false := by
  cases hc : trialPrimeCheck p with
  | false => rfl
  | true => exact False.elim (hp (trialPrimeCheck_sound hc))

/-- Counts every integer below i; soundness is an equality with the original count. -/
def fastSmallPrimeCount : ℕ → ℕ
  | 0 => 0
  | i + 1 => fastSmallPrimeCount i + if trialPrimeCheck i then 1 else 0

theorem fastSmallPrimeCount_eq (i : ℕ) :
    fastSmallPrimeCount i = smallPrimeCount i := by
  induction i with
  | zero => simp [fastSmallPrimeCount, smallPrimeCount]
  | succ i ih =>
    rw [fastSmallPrimeCount, ih]
    unfold smallPrimeCount
    rw [Finset.range_add_one, Finset.filter_insert]
    by_cases hp : i.Prime
    · have hc := trialPrimeCheck_complete hp
      simp [hp, hc]
    · have hc := trialPrimeCheck_false hp
      simp [hp, hc]

end B699Middle
#print axioms B699Middle.trialPrimeCheck_complete
#print axioms B699Middle.fastSmallPrimeCount_eq
