import Mathlib.Analysis.Complex.SqrtDeriv
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

/-! An explicit analytic square root for one paired cut.  This supplies the
branch itself; it does not assert the still missing Cauchy representation. -/

namespace B686QuarterRunge

open Complex

noncomputable section

def pairedCut (a b : ℝ) : Set ℂ := Complex.ofReal '' Set.Icc a b

theorem ne_right_of_not_mem_pairedCut (a b : ℝ) (hab : a ≤ b) (z : ℂ)
    (hz : z ∉ pairedCut a b) : z - b ≠ 0 := by
  intro heq
  apply hz
  exact ⟨b, ⟨hab, le_rfl⟩, (sub_eq_zero.mp heq).symm⟩

theorem ratio_im (a b : ℝ) (z : ℂ) :
    ((z - a) / (z - b)).im = z.im * (a - b) / Complex.normSq (z - b) := by
  simp only [Complex.div_im, Complex.sub_re, Complex.ofReal_re,
    Complex.sub_im, Complex.ofReal_im, sub_zero]
  congr 1
  ring

theorem ratio_mem_slitPlane (a b : ℝ) (hab : a < b) (z : ℂ)
    (hz : z ∉ pairedCut a b) : (z - a) / (z - b) ∈ Complex.slitPlane := by
  by_cases him : z.im = 0
  · lift z to ℝ using him with t
    have ht : t < a ∨ b < t := by
      by_contra h
      push_neg at h
      exact hz ⟨t, ⟨h.1, h.2⟩, rfl⟩
    apply Or.inl
    simp only [← Complex.ofReal_sub, ← Complex.ofReal_div, Complex.ofReal_re]
    rcases ht with ht | ht
    · exact div_pos_of_neg_of_neg (by linarith) (by linarith)
    · exact div_pos (by linarith) (by linarith)
  · apply Or.inr
    rw [ratio_im]
    apply div_ne_zero (mul_ne_zero him (sub_ne_zero.mpr hab.ne))
    exact (Complex.normSq_pos.mpr (ne_right_of_not_mem_pairedCut a b hab.le z hz)).ne'

def slitPair (a b : ℝ) (z : ℂ) : ℂ :=
  (z - b) * Complex.sqrt ((z - a) / (z - b))

theorem complex_sqrt_sq (z : ℂ) : Complex.sqrt z ^ 2 = z :=
  Complex.cpow_nat_inv_pow z (by norm_num : (2 : ℕ) ≠ 0)

theorem slitPair_sq (a b : ℝ) (z : ℂ) (hz : z - b ≠ 0) :
    slitPair a b z ^ 2 = (z - a) * (z - b) := by
  rw [slitPair, mul_pow, complex_sqrt_sq]
  field_simp

theorem slitPair_differentiableAt (a b : ℝ) (hab : a < b) (z : ℂ)
    (hz : z ∉ pairedCut a b) : DifferentiableAt ℂ (slitPair a b) z := by
  have hd : DifferentiableAt ℂ (fun w : ℂ => (w - a) / (w - b)) z :=
    (differentiableAt_id.sub_const _).div (differentiableAt_id.sub_const _)
      (ne_right_of_not_mem_pairedCut a b hab.le z hz)
  have hsqrt : DifferentiableAt ℂ Complex.sqrt ((z - a) / (z - b)) :=
    Complex.differentiableAt_sqrt (ratio_mem_slitPlane a b hab z hz)
  have hc : DifferentiableAt ℂ (fun w : ℂ => Complex.sqrt ((w - a) / (w - b))) z := by
    simpa only [Function.comp_def] using
      (DifferentiableAt.comp z (g := Complex.sqrt) hsqrt hd)
  exact (differentiableAt_id.sub_const _).mul hc

theorem slitPair_differentiableOn (a b : ℝ) (hab : a < b) :
    DifferentiableOn ℂ (slitPair a b) (pairedCut a b)ᶜ := by
  intro z hz
  exact (slitPair_differentiableAt a b hab z hz).differentiableWithinAt

end

end B686QuarterRunge
