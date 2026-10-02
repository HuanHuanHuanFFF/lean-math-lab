import Lean.Elab.Tactic.Omega

/-!
The exact natural-number parameters in paper section 4, including all truncated
subtraction and division endpoints. This is a required interface for the actual
three-window consumer, and avoids the currently failing heavy Mathlib imports.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699TailParameters

theorem normalization_parameters (i : Nat) (hi : 1000 ≤ i) :
    ∃ m c q r lam : Nat,
      i = 3 * m + c ∧ 333 ≤ m ∧ 1 ≤ c ∧ c ≤ 3 ∧
      q = 2 * m ∧ r = m + c - 1 ∧ i - r - 1 = q ∧
      2 * q - r = lam ∧ lam = 3 * m - c + 1 ∧
      i - 5 ≤ lam ∧ q < i ∧ 666 ≤ q ∧ 995 ≤ lam := by
  let m := (i - 1) / 3
  let c := i - 3 * m
  let q := 2 * m
  let r := m + c - 1
  let lam := 3 * m - c + 1
  refine ⟨m, c, q, r, lam, ?_⟩
  dsimp [m, c, q, r, lam]
  omega

end B699TailParameters
#check @B699TailParameters.normalization_parameters
#print axioms B699TailParameters.normalization_parameters
