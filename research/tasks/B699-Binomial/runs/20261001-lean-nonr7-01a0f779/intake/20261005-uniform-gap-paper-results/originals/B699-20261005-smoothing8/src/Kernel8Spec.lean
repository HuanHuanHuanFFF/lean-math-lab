import Mathlib

/-!
UNCOMPILED SPECIFICATION ONLY. No theorem asserting Kernel8NormTarget is declared.
This defines the exact fixed-size complex-norm target in PROOF sections 5-6.
Do not count a successful compilation of this specification as proving its target.
-/
set_option autoImplicit false

namespace B699Smoothing8Spec

noncomputable def positiveRealPower (t : ℝ) (s : ℂ) : ℂ :=
  Complex.exp ((Real.log t : ℂ) * s)

noncomputable def kernel8 (a h : ℝ) (ρ : ℂ) : ℂ :=
  (∑ j ∈ Finset.range 9,
      (-1 : ℂ) ^ (8 - j) * (Nat.choose 8 j : ℂ) *
      positiveRealPower (a + (j : ℝ) * h) (ρ + 8)) /
    ((h : ℂ) ^ 8 * ∏ k ∈ Finset.range 9, (ρ + (k : ℂ)))

def Kernel8NormTarget : Prop :=
  ∀ (a h : ℝ) (ρ : ℂ), 1 ≤ a → 0 < h → ρ.re ≤ 1 → ρ.im ≠ 0 →
    ‖kernel8 a h ρ‖ ≤ 256 * (a + 8 * h) ^ 9 / (h ^ 8 * |ρ.im| ^ 9)

/-
Paper proof, not a Lean proof:
(1) 1 <= a+j*h <= a+8*h for j in range 9.
(2) norm(exp(log(t)*(rho+8))) = exp(log(t)*(rho.re+8)) <= t^9.
(3) norm(rho+k) >= abs(rho.im) > 0 for all k in range 9.
(4) Triangle inequality, norm of a product/division, and sum (choose 8 j)=256.

Required later declaration, deliberately NOT introduced using a placeholder:
  theorem kernel8_norm : Kernel8NormTarget := <complete checked proof>
-/

end B699Smoothing8Spec
