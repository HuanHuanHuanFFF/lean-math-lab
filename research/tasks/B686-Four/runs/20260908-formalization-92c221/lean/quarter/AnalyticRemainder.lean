import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.quarter.RootAsymptotics
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.quarter.QuarterPolynomial

namespace B686QuarterRunge

open Finset Polynomial Filter Bornology B686CenteredRunge
open scoped Topology

noncomputable section

theorem complexPolynomial_continuous (P : ℂ[X]) : Continuous P.eval := by
  simp only [eval_eq_sum_range]
  fun_prop

theorem complexPolynomial_differentiable (P : ℂ[X]) : Differentiable ℂ P.eval := by
  simp only [eval_eq_sum_range]
  fun_prop

theorem polynomial_div_pow_tendsto (P : ℂ[X]) (s : ℕ) (hs : P.natDegree ≤ s) :
    Tendsto (fun z : ℂ => P.eval z / z ^ s) (cobounded ℂ) (𝓝 (P.coeff s)) := by
  have hvalue : (reflect s P).eval 0 = P.coeff s := by
    rw [← coeff_zero_eq_eval_zero, coeff_reflect, revAt_le (Nat.zero_le s), Nat.sub_zero]
  have hlim : Tendsto (fun z : ℂ => (reflect s P).eval z⁻¹) (cobounded ℂ)
      (𝓝 (P.coeff s)) := by
    rw [← hvalue]
    exact (complexPolynomial_continuous (reflect s P)).tendsto 0 |>.comp
      Filter.tendsto_inv₀_cobounded
  apply hlim.congr'
  filter_upwards [eventually_ne_cobounded (0 : ℂ)] with z hz
  letI := invertibleOfNonzero hz
  have he := eval₂_reflect_mul_pow (RingHom.id ℂ) z s P hs
  simp only [eval₂_id, invOf_eq_inv] at he
  exact (eq_div_iff (pow_ne_zero _ hz)).mpr he

/-- A polynomial squared-error estimate replaces analytic power-series matching. -/
theorem remainder_tendsto_zero (P B : ℂ[X]) (s : ℕ) (l : Filter ℂ)
    (hl : l ≤ cobounded ℂ) (hmonic : P.Monic) (hdegree : P.natDegree = s)
    (herror : (P ^ 2 - B).natDegree < s) (f : ℂ → ℂ)
    (hsquare : ∀ z, f z ^ 2 = B.eval z)
    (hf : Tendsto (fun z => f z / z ^ s) l (𝓝 1)) :
    Tendsto (fun z => f z - P.eval z) l (𝓝 0) := by
  have hn : ∀ᶠ z : ℂ in cobounded ℂ, z ^ s ≠ 0 :=
    (eventually_ne_cobounded (0 : ℂ)).mono fun z hz => pow_ne_zero _ hz
  have hc : P.coeff s = 1 := by
    rw [← hdegree, coeff_natDegree]
    exact hmonic
  have hP : Tendsto (fun z => P.eval z / z ^ s) l (𝓝 1) := by
    have hh := polynomial_div_pow_tendsto P s hdegree.le
    rw [hc] at hh
    exact hh.mono_left hl
  have hEt : Tendsto (fun z => -(P ^ 2 - B).eval z / z ^ s) l (𝓝 0) := by
    have hh := polynomial_div_pow_tendsto (P ^ 2 - B) s herror.le
    rw [coeff_eq_zero_of_natDegree_lt herror] at hh
    simpa only [Pi.neg_apply, neg_zero, neg_div] using hh.neg.mono_left hl
  have hden : Tendsto (fun z => (f z + P.eval z) / z ^ s) l (𝓝 2) := by
    simpa only [Pi.add_apply, add_div, show (1 : ℂ) + 1 = 2 by ring] using hf.add hP
  have ht : Tendsto (fun z => (-(P ^ 2 - B).eval z / z ^ s) /
      ((f z + P.eval z) / z ^ s)) l (𝓝 0) := by
    convert! hEt.div hden (by norm_num : (2 : ℂ) ≠ 0) using 1 <;> norm_num
  apply ht.congr'
  have hd : ∀ᶠ z in l, (f z + P.eval z) / z ^ s ≠ 0 :=
    hden.eventually (eventually_ne_nhds (by norm_num : (2 : ℂ) ≠ 0))
  filter_upwards [hn.filter_mono hl, hd] with z hz hd
  have hsum : f z + P.eval z ≠ 0 := (div_ne_zero_iff.mp hd).1
  rw [eval_sub, eval_pow, ← hsquare z]
  field_simp
  ring

def rootLocations (i : ℕ) : ℝ := (2 * (i : ℝ) + 1) ^ 2

def complexQuarterPolynomial (s : ℕ) : ℂ[X] :=
  (quarterPolynomial s).map (Int.castRingHom ℂ)

def complexRadicand (s : ℕ) : ℂ[X] :=
  (squaredCoordinateRadicand s).map (Int.castRingHom ℂ)

def upperRemainder (s : ℕ) (z : ℂ) : ℂ :=
  upperProduct rootLocations (2 * s) z - (complexQuarterPolynomial s).eval z

def lowerRemainder (s : ℕ) (z : ℂ) : ℂ :=
  lowerProduct rootLocations s z - (complexQuarterPolynomial s).eval z

theorem upperRemainder_continuousOn (s : ℕ) :
    ContinuousOn (upperRemainder s) {z : ℂ | 0 ≤ z.im} :=
  (upperProduct_continuousOn rootLocations (2 * s)).sub
    (complexPolynomial_continuous (complexQuarterPolynomial s)).continuousOn

theorem lowerRemainder_continuousOn (s : ℕ) :
    ContinuousOn (lowerRemainder s) {z : ℂ | z.im ≤ 0} :=
  (lowerProduct_continuousOn rootLocations s).sub
    (complexPolynomial_continuous (complexQuarterPolynomial s)).continuousOn

theorem upperRemainder_differentiableAt (s : ℕ) (z : ℂ) (hz : 0 < z.im) :
    DifferentiableAt ℂ (upperRemainder s) z :=
  (upperProduct_differentiableAt rootLocations (2 * s) z hz).sub
    (complexPolynomial_differentiable (complexQuarterPolynomial s) z)

theorem lowerRemainder_differentiableAt (s : ℕ) (z : ℂ) (hz : z.im < 0) :
    DifferentiableAt ℂ (lowerRemainder s) z :=
  (lowerProduct_differentiableAt rootLocations s z hz).sub
    (complexPolynomial_differentiable (complexQuarterPolynomial s) z)

theorem complexRadicand_eval (s : ℕ) (z : ℂ) :
    (complexRadicand s).eval z = ∏ i ∈ range (2 * s), (z - (rootLocations i : ℂ)) := by
  rw [complexRadicand, Polynomial.eval_map]
  simp only [squaredCoordinateRadicand, eval₂_finsetProd, eval₂_sub, eval₂_X, eval₂_C]
  apply prod_congr rfl
  intro i hi
  simp [rootLocations, oddRoots]

theorem complexQuarterPolynomial_monic (s : ℕ) :
    (complexQuarterPolynomial s).Monic :=
  (quarterPolynomial_monic s).map _

theorem complexQuarterPolynomial_degree (s : ℕ) :
    (complexQuarterPolynomial s).natDegree = s := by
  rw [complexQuarterPolynomial, natDegree_map_eq_of_injective Int.cast_injective,
    quarterPolynomial_degree]

theorem complex_squaredError_degree (s : ℕ) (hs : 1 ≤ s) :
    (complexQuarterPolynomial s ^ 2 - complexRadicand s).natDegree < s := by
  change ((quarterPolynomial s).map (Int.castRingHom ℂ) ^ 2 -
    (squaredCoordinateRadicand s).map (Int.castRingHom ℂ)).natDegree < s
  rw [← Polynomial.map_pow, ← Polynomial.map_sub]
  exact natDegree_map_le.trans_lt (squaredError_degree s hs)

theorem upperRemainder_tendsto (s : ℕ) (hs : 1 ≤ s) :
    Tendsto (upperRemainder s) upperInfinity (𝓝 0) := by
  apply remainder_tendsto_zero (complexQuarterPolynomial s) (complexRadicand s) s upperInfinity
    inf_le_left (complexQuarterPolynomial_monic s) (complexQuarterPolynomial_degree s)
    (complex_squaredError_degree s hs) (upperProduct rootLocations (2 * s))
  · intro z
    rw [upperProduct_sq, complexRadicand_eval]
  · exact upperProduct_tendsto rootLocations s

theorem lowerRemainder_tendsto (s : ℕ) (hs : 1 ≤ s) :
    Tendsto (lowerRemainder s) lowerInfinity (𝓝 0) := by
  apply remainder_tendsto_zero (complexQuarterPolynomial s) (complexRadicand s) s lowerInfinity
    inf_le_left (complexQuarterPolynomial_monic s) (complexQuarterPolynomial_degree s)
    (complex_squaredError_degree s hs) (lowerProduct rootLocations s)
  · intro z
    rw [lowerProduct_sq, complexRadicand_eval]
  · exact lowerProduct_tendsto rootLocations s

end

end B686QuarterRunge
