module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.alternative.TrialPrimeCheck
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699AltMiddle20261002
open B699AltLow20261002
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

end B699AltMiddle20261002
#print axioms B699AltMiddle20261002.trialPrimeCheck_complete
