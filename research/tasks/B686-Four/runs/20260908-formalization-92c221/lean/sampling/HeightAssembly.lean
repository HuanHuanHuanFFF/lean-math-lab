import research.tasks.«B686-Four».runs.«20260908-reflected-sum-9bad0b9».main.OriginalDiscrepancy
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-! Quantified height assembly from a precisely isolated fixed-test sampling
estimate. That estimate is the unproved MRSTT specialization, not a project
axiom or an assertion that the full analytic theorem has been formalized. -/
namespace B686SamplingClosure
open B686Round9
set_option maxHeartbeats 2400000

noncomputable def heightCutoff (δ : ℝ) (k : ℕ) : ℝ :=
  Real.exp ((Real.log (2*(k : ℝ)))^((3 : ℝ)/2-δ))

/-- The exact downstream specialization still required from MRSTT, with
one constant independent of all n,m,k and the fixed smooth test norm absorbed.
This proposition is NOT proved here. Generic real phases, C³ norm, and the
published theorem-to-specialization bridge remain external obligations. -/
def FixedTestSamplingEstimate (δ : ℝ) : Prop :=
  ∃C : ℝ,0≤C ∧ ∃K₀ : ℕ,∀k n m : ℕ,K₀≤k → 2≤k →
    (n : ℝ)≤heightCutoff δ k → (m : ℝ)≤heightCutoff δ k →
    samplingDiscrepancy k n m≤C*(2*k)/(Real.log (2*k))^2

lemma sampling_lower_normalized (k n m : ℕ) (hk : 802≤k)
    (hsep : n+k≤m) (heq : blockProduct k m=4*blockProduct k n) :
    (k : ℝ)/(320*Real.log (2*k))≤samplingDiscrepancy k n m := by
  have hkR : (1 : ℝ)≤k := by exact_mod_cast (show 1≤k by omega)
  have hl2 : 0<Real.log (2*(k : ℝ)) := Real.log_pos (by linarith)
  have hl4 : 0<Real.log (4*(k : ℝ)) := Real.log_pos (by linarith)
  have hlog : Real.log (4*(k : ℝ))≤2*Real.log (2*k) := by
    have hid : (4*(k : ℝ))=2*(2*k) := by ring
    rw [hid,Real.log_mul (by norm_num) (by positivity)]
    have hh : Real.log 2≤Real.log (2*(k : ℝ)) := Real.log_le_log (by norm_num) (by linarith)
    linarith
  have hdiv : (k : ℝ)/(320*Real.log (2*k))≤k/(160*Real.log (4*k)) := by
    exact div_le_div_of_nonneg_left (by positivity) (by positivity) (by linarith)
  exact hdiv.trans (original_sampling_discrepancy_lower k n m hk hsep heq)

/-- The whole quantified project-side height argument. Its only extra
hypothesis is the isolated external sampling estimate, never the conclusion. -/
theorem height_bound_of_fixed_test_estimate (δ : ℝ) (hδ : 0<δ) (hδ2 : δ<1/2)
    (hE : FixedTestSamplingEstimate δ) :
    ∃K : ℕ,∀k n m : ℕ,2≤k → K≤k → n+k≤m →
      blockProduct k m=4*blockProduct k n →
      (Real.log (2*(k : ℝ)))^((3 : ℝ)/2-δ)<Real.log m := by
  obtain ⟨C,hC,K₀,hE⟩ := hE
  obtain ⟨K₁,hK₁⟩ := exists_nat_ge (Real.exp (640*C+1))
  refine ⟨max 802 (max K₀ K₁),?_⟩
  intro k n m hk hK hsep heq
  have hk802 : 802≤k := (le_max_left _ _).trans hK
  have hk0 : K₀≤k := (le_max_left _ _).trans ((le_max_right _ _).trans hK)
  have hk1 : K₁≤k := (le_max_right _ _).trans ((le_max_right _ _).trans hK)
  have hkR : (0 : ℝ)<k := by exact_mod_cast (by omega : 0<k)
  have hkR2 : (2 : ℝ)≤k := by exact_mod_cast hk
  have hmR : (0 : ℝ)<m := by exact_mod_cast (by omega : 0<m)
  have hlogpos : 0<Real.log (2*(k : ℝ)) := Real.log_pos (by linarith)
  have hlogbig : 640*C<Real.log (2*(k : ℝ)) := by
    have hpow : Real.exp (640*C+1)≤2*(k : ℝ) := by
      have hcast : (K₁ : ℝ)≤k := by exact_mod_cast hk1
      linarith
    have hh : 640*C+1≤Real.log (2*(k : ℝ)) := by
      rw [←Real.log_exp (640*C+1)]
      exact Real.log_le_log (Real.exp_pos _) hpow
    linarith
  by_contra hnot
  have hlogm : Real.log m≤(Real.log (2*(k : ℝ)))^((3 : ℝ)/2-δ) := by linarith
  have hmheight : (m : ℝ)≤heightCutoff δ k := by
    unfold heightCutoff
    rw [←Real.exp_log hmR]
    exact Real.exp_le_exp.mpr hlogm
  have hnheight : (n : ℝ)≤heightCutoff δ k :=
    (by exact_mod_cast (show n≤m by omega) : (n : ℝ)≤m).trans hmheight
  have hupper := hE k n m hk0 hk hnheight hmheight
  have hlower := sampling_lower_normalized k n m hk802 hsep heq
  have hle : (k : ℝ)/(320*Real.log (2*k))≤C*(2*k)/(Real.log (2*k))^2 := hlower.trans hupper
  have hmul := (div_le_div_iff₀ (by positivity : 0<320*Real.log (2*(k : ℝ)))
    (by positivity : 0<(Real.log (2*(k : ℝ)))^2)).mp hle
  have hstrict := mul_lt_mul_of_pos_left hlogbig (mul_pos hkR hlogpos)
  nlinarith only [hmul,hstrict]

/-- info: 'B686SamplingClosure.height_bound_of_fixed_test_estimate' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms height_bound_of_fixed_test_estimate
end B686SamplingClosure
