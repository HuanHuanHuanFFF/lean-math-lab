import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.quarter.HalfPlaneRoots
import Mathlib.Analysis.Normed.Field.Lemmas

namespace B686QuarterRunge

open Finset Complex Filter Bornology
open scoped Topology

noncomputable section

def upperInfinity : Filter ℂ :=
  cobounded ℂ ⊓ Filter.principal {z : ℂ | 0 ≤ z.im}

def lowerInfinity : Filter ℂ :=
  cobounded ℂ ⊓ Filter.principal {z : ℂ | z.im ≤ 0}

theorem complex_sqrt_re_nonneg (z : ℂ) : 0 ≤ (Complex.sqrt z).re := by
  simp only [Complex.sqrt, Complex.cpow_inv_two_re]
  positivity

theorem complex_sqrt_im_nonneg (z : ℂ) (hz : 0 ≤ z.im) :
    0 ≤ (Complex.sqrt z).im := by
  rw [sqrt_eq_upperSqrtFormula z hz]
  simp only [upperSqrtFormula, Complex.add_im, Complex.mul_im, Complex.ofReal_re,
    Complex.ofReal_im, Complex.I_re, Complex.I_im, mul_one, zero_mul, add_zero, zero_add]
  positivity

theorem sqrt_ratio_re_nonneg (a : ℝ) (z : ℂ) (hz : 0 ≤ z.im) :
    0 ≤ (Complex.sqrt (z - a) / Complex.sqrt z).re := by
  rw [Complex.div_re, ← add_div]
  exact div_nonneg
    (add_nonneg
      (mul_nonneg (complex_sqrt_re_nonneg _) (complex_sqrt_re_nonneg _))
      (mul_nonneg (complex_sqrt_im_nonneg (z - a) (by simpa using hz))
        (complex_sqrt_im_nonneg _ hz))) (Complex.normSq_nonneg _)

theorem tendsto_one_of_sq {α : Type*} {l : Filter α} (f : α → ℂ)
    (hre : ∀ᶠ x in l, 0 ≤ (f x).re)
    (hsq : Tendsto (fun x => f x ^ 2) l (𝓝 1)) : Tendsto f l (𝓝 1) := by
  have hpos : ∀ᶠ x in l, 0 < (f x ^ 2).re :=
    (Complex.continuous_re.tendsto 1 |>.comp hsq).eventually (by simpa using
      (lt_mem_nhds (by norm_num : (0 : ℝ) < 1)))
  have heq : (fun x => Complex.sqrt (f x ^ 2)) =ᶠ[l] f := by
    filter_upwards [hre, hpos] with x hx hp
    have hstrict : 0 < (f x).re := by
      rw [pow_two, Complex.mul_re] at hp
      nlinarith [sq_nonneg (f x).im]
    exact Complex.sq_cpow_two_inv hstrict
  have hsqrt : Tendsto (fun x => Complex.sqrt (f x ^ 2)) l (𝓝 1) := by
    simpa only [Function.comp_def, Complex.sqrt_one] using
      (Complex.continuousAt_sqrt (z := 1) (by simp)).tendsto.comp hsq
  exact hsqrt.congr' heq

theorem sqrt_ratio_tendsto (a : ℝ) :
    Tendsto (fun z : ℂ => Complex.sqrt (z - a) / Complex.sqrt z) upperInfinity (𝓝 1) := by
  apply tendsto_one_of_sq
  · have hh : ∀ᶠ z : ℂ in upperInfinity, 0 ≤ z.im :=
      (show ∀ᶠ z : ℂ in Filter.principal {z : ℂ | 0 ≤ z.im}, 0 ≤ z.im by simp).filter_mono
        inf_le_right
    exact hh.mono fun z hz => sqrt_ratio_re_nonneg a z hz
  · have hi : Tendsto (fun z : ℂ => z⁻¹) upperInfinity (𝓝 0) :=
      Filter.tendsto_inv₀_cobounded.mono_left inf_le_left
    have hh : Tendsto (fun z : ℂ => 1 - (a : ℂ) * z⁻¹) upperInfinity (𝓝 1) := by
      simpa using tendsto_const_nhds.sub (tendsto_const_nhds.mul hi)
    have hn : ∀ᶠ z : ℂ in upperInfinity, z ≠ 0 :=
      (eventually_ne_cobounded (0 : ℂ)).filter_mono inf_le_left
    apply hh.congr'
    filter_upwards [hn] with z hz
    rw [div_pow, complex_sqrt_sq, complex_sqrt_sq]
    field_simp

theorem upperProduct_normalized (a : ℕ → ℝ) (s : ℕ) (z : ℂ) :
    upperProduct a (2 * s) z / z ^ s =
      ∏ i ∈ range (2 * s), (Complex.sqrt (z - a i) / Complex.sqrt z) := by
  rw [prod_div_distrib, prod_const, card_range, pow_mul, complex_sqrt_sq]
  rfl

theorem upperProduct_tendsto (a : ℕ → ℝ) (s : ℕ) :
    Tendsto (fun z : ℂ => upperProduct a (2 * s) z / z ^ s) upperInfinity (𝓝 1) := by
  simpa only [← upperProduct_normalized, prod_const_one] using
    (tendsto_finsetProd (range (2 * s)) (fun i hi => sqrt_ratio_tendsto (a i)))

theorem neg_tendsto_lower_upper :
    Tendsto (fun z : ℂ => -z) lowerInfinity upperInfinity := by
  apply tendsto_inf.mpr
  constructor
  · exact Filter.tendsto_neg_cobounded.mono_left inf_le_left
  · apply tendsto_principal.mpr
    have hh : ∀ᶠ z : ℂ in lowerInfinity, z.im ≤ 0 :=
      (show ∀ᶠ z : ℂ in Filter.principal {z : ℂ | z.im ≤ 0}, z.im ≤ 0 by simp).filter_mono
        inf_le_right
    filter_upwards [hh] with z hz
    simpa using hz

theorem lowerProduct_normalized (a : ℕ → ℝ) (s : ℕ) (z : ℂ) :
    lowerProduct a s z / z ^ s = upperProduct (fun i => -a i) (2 * s) (-z) / (-z) ^ s := by
  simp only [lowerProduct, upperProduct, Complex.ofReal_neg, sub_neg_eq_add]
  rw [neg_pow z s]
  have harg (i : ℕ) : -z + (a i : ℂ) = (a i : ℂ) - z := by ring
  simp only [harg]
  have hp : (-1 : ℂ) ^ s * (-1) ^ s = 1 := by
    rw [← pow_add, show s + s = 2 * s by omega, pow_mul]
    norm_num
  by_cases hz : z ^ s = 0
  · simp [hz]
  · apply (div_eq_div_iff hz (mul_ne_zero (by simp) hz)).mpr
    calc
      _ = ((-1 : ℂ) ^ s * (-1) ^ s) *
          (∏ x ∈ range (2 * s), Complex.sqrt ((a x : ℂ) - z)) * z ^ s := by ring
      _ = _ := by rw [hp]; ring

theorem lowerProduct_tendsto (a : ℕ → ℝ) (s : ℕ) :
    Tendsto (fun z : ℂ => lowerProduct a s z / z ^ s) lowerInfinity (𝓝 1) := by
  simpa only [Function.comp_def, ← lowerProduct_normalized] using
    (upperProduct_tendsto (fun i => -a i) s).comp neg_tendsto_lower_upper

end

end B686QuarterRunge
