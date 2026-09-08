import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.sampling.HeightAssembly
import Mathlib.Data.Set.Finite.Lattice

/-! The two corollaries adopted with the prime-sampling route. The fixed-test
estimate remains an explicit, unproved external input to every consumer. -/
namespace B686SamplingClosure
open B686Round9
set_option maxHeartbeats 2400000

theorem polynomial_height_length_bounded (C : ℝ) (hC : 0<C)
    (hE : FixedTestSamplingEstimate (1/4)) :
    ∃K : ℕ,∀k n m : ℕ,2≤k → n+k≤m →
      blockProduct k m=4*blockProduct k n →
      (m : ℝ)≤(k : ℝ)^C → k<K := by
  obtain ⟨K₀,hK₀⟩ := height_bound_of_fixed_test_estimate (1/4) (by norm_num)
    (by norm_num) hE
  let M : ℝ := max C 1+1
  have hM : 0≤M := by dsimp [M]; positivity
  have hCM : C<M := by dsimp [M]; have := le_max_left C 1; linarith
  obtain ⟨K₁,hK₁⟩ := exists_nat_ge (Real.exp (M^4))
  refine ⟨max K₀ K₁,?_⟩
  intro k n m hk hsep heq hm
  by_contra hnot
  have hK : max K₀ K₁≤k := by omega
  have hk0 : K₀≤k := (le_max_left _ _).trans hK
  have hk1 : K₁≤k := (le_max_right _ _).trans hK
  have hkR : (0 : ℝ)<k := by exact_mod_cast (show 0<k by omega)
  have hkR2 : (2 : ℝ)≤k := by exact_mod_cast hk
  have hmR : (0 : ℝ)<m := by exact_mod_cast (show 0<m by omega)
  have hL : 0<Real.log (2*(k : ℝ)) := Real.log_pos (by linarith)
  have hlarge : M^4≤Real.log (2*(k : ℝ)) := by
    rw [←Real.log_exp (M^4)]
    apply Real.log_le_log (Real.exp_pos _)
    have hcast : (K₁ : ℝ)≤k := by exact_mod_cast hk1
    linarith
  have hroot := Real.rpow_le_rpow (by positivity : 0≤M^4) hlarge
    (by norm_num : (0 : ℝ)≤1/4)
  have hrootid : (M^4)^((1 : ℝ)/4)=M := by
    rw [←Real.rpow_natCast,←Real.rpow_mul hM]
    norm_num
  rw [hrootid] at hroot
  have hlogk : Real.log (k : ℝ)≤Real.log (2*k) :=
    Real.log_le_log hkR (by linarith)
  have hlogm : Real.log (m : ℝ)≤C*Real.log (2*k) := by
    have hh := Real.log_le_log hmR hm
    rw [Real.log_rpow hkR] at hh
    exact hh.trans (mul_le_mul_of_nonneg_left hlogk hC.le)
  have hlower := hK₀ k n m hk hk0 hsep heq
  have hid : (Real.log (2*(k : ℝ)))^((3 : ℝ)/2-1/4)=
      Real.log (2*k)*(Real.log (2*k))^((1 : ℝ)/4) := by
    rw [show (3 : ℝ)/2-1/4=1+1/4 by norm_num,Real.rpow_add hL,Real.rpow_one]
  rw [hid] at hlower
  have hprod := mul_lt_mul_of_pos_left (hCM.trans_le hroot) hL
  nlinarith only [hlower,hlogm,hprod]

theorem polynomial_height_solutions_finite (C : ℝ) (hC : 0<C)
    (hE : FixedTestSamplingEstimate (1/4)) :
    {t : ℕ×ℕ×ℕ | 2≤t.1 ∧ t.2.1+t.1≤t.2.2 ∧
      blockProduct t.1 t.2.2=4*blockProduct t.1 t.2.1 ∧
      (t.2.2 : ℝ)≤(t.1 : ℝ)^C}.Finite := by
  obtain ⟨K,hK⟩ := polynomial_height_length_bounded C hC hE
  obtain ⟨M,hM⟩ := exists_nat_ge ((K : ℝ)^C)
  apply ((Set.finite_Iic K).prod ((Set.finite_Iic M).prod (Set.finite_Iic M))).subset
  rintro ⟨k,n,m⟩ ⟨hk,hsep,heq,hm⟩
  change n+k≤m at hsep
  have hkK : k≤K := (hK k n m hk hsep heq hm).le
  have hmM : m≤M := by
    have hpow : (k : ℝ)^C≤(K : ℝ)^C :=
      Real.rpow_le_rpow (by positivity) (by exact_mod_cast hkK) hC.le
    exact_mod_cast hm.trans (hpow.trans hM)
  change k≤K ∧ n≤M ∧ m≤M
  exact ⟨hkK,by omega,hmM⟩

theorem inverse_height_of_fixed_test_estimates
    (hE : ∀δ : ℝ,0<δ → δ<1/2 → FixedTestSamplingEstimate δ)
    (η : ℝ) (hη : 0<η) :
    ∃K : ℕ,∀k n m : ℕ,2≤k → K≤k → n+k≤m →
      blockProduct k m=4*blockProduct k n →
      (k : ℝ)<Real.exp ((Real.log m)^((2 : ℝ)/3+η)) := by
  let δ : ℝ := min (1/4) (η/4)
  have hδ : 0<δ := lt_min (by norm_num) (by positivity)
  have hδ4 : δ≤1/4 := min_le_left _ _
  have hδη : δ≤η/4 := min_le_right _ _
  have hδ2 : δ<1/2 := by linarith
  obtain ⟨K₀,hK₀⟩ := height_bound_of_fixed_test_estimate δ hδ hδ2 (hE δ hδ hδ2)
  obtain ⟨K₁,hK₁⟩ := exists_nat_ge (Real.exp 1)
  refine ⟨max K₀ K₁,?_⟩
  intro k n m hk hK hsep heq
  have hk0 : K₀≤k := (le_max_left _ _).trans hK
  have hk1 : K₁≤k := (le_max_right _ _).trans hK
  have hkR : (0 : ℝ)<k := by exact_mod_cast (show 0<k by omega)
  have hL : 1≤Real.log (2*(k : ℝ)) := by
    rw [←Real.log_exp 1]
    apply Real.log_le_log (Real.exp_pos _)
    have hcast : (K₁ : ℝ)≤k := by exact_mod_cast hk1
    linarith
  have hexponent : 1≤((3 : ℝ)/2-δ)*((2 : ℝ)/3+η) := by
    have hh := mul_nonneg (sub_nonneg.mpr hδ4) hη.le
    nlinarith only [hh,hδη,hη]
  have hh := hK₀ k n m hk hk0 hsep heq
  have hpow := Real.rpow_lt_rpow (Real.rpow_nonneg (by linarith : 0≤Real.log (2*(k : ℝ))) _)
    hh (by positivity : (0 : ℝ)<2/3+η)
  rw [←Real.rpow_mul (by linarith : 0≤Real.log (2*(k : ℝ)))] at hpow
  have hone := Real.rpow_le_rpow_of_exponent_le hL hexponent
  rw [Real.rpow_one] at hone
  have hlogk : Real.log (k : ℝ)≤Real.log (2*k) :=
    Real.log_le_log hkR (by linarith)
  have hlt := lt_of_le_of_lt (hlogk.trans hone) hpow
  rw [←Real.exp_log hkR]
  exact Real.exp_lt_exp.mpr hlt

/-- info: 'B686SamplingClosure.polynomial_height_solutions_finite' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms polynomial_height_solutions_finite
/-- info: 'B686SamplingClosure.inverse_height_of_fixed_test_estimates' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms inverse_height_of_fixed_test_estimates
end B686SamplingClosure
