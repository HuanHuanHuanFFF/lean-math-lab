import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.bounds.Consumer
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Analysis.SpecialFunctions.Log.Basic

/-! Exact arithmetic and the consumer of Dusart's interval statement.
DusartPrimeInterval is an explicit external proposition, NOT an axiom and
NOT proved in this project. Only the constant and the downstream bridge are
accepted here. Source: adopted complete-proof.md §6. -/
namespace B677Analytic
open B677
set_option maxHeartbeats 2400000

/-- Exact published real domain and strict/non-strict endpoints. -/
def DusartPrimeInterval : Prop :=
  ∀x : ℝ,89693≤x → ∃p : ℕ,p.Prime ∧ x<p ∧
    (p : ℝ)≤x*(1+1/(Real.log x)^3)

lemma log_89693_gt : (57 : ℝ)/5<Real.log 89693 := by
  have he : Real.exp 1<(87 : ℝ)/32 := Real.exp_one_lt_d9.trans (by norm_num)
  have hp : (Real.exp 1)^57<((87 : ℝ)/32)^57 :=
    pow_lt_pow_left₀ he (Real.exp_pos 1).le (by decide)
  have hnum : ((87 : ℝ)/32)^57<(89693 : ℝ)^5 := by norm_num
  have hex : Real.exp (57 : ℝ)<Real.exp (5*Real.log 89693) := by
    have ht := hp.trans hnum
    rw [←Real.exp_nat_mul 1 57] at ht
    norm_num only [Nat.cast_ofNat,mul_one] at ht
    have hid := Real.exp_nat_mul (Real.log 89693) 5
    norm_num only [Nat.cast_ofNat] at hid
    rw [hid,Real.exp_log (by norm_num)]
    norm_num
    exact ht
  have h := Real.exp_lt_exp.mp hex
  linarith

/-- Strict rational margin; no floating-point evaluation is used. -/
theorem log_cube_89693_gt : (1480 : ℝ)<(Real.log 89693)^3 := by
  have hlog := log_89693_gt
  have hp : ((57 : ℝ)/5)^3<(Real.log 89693)^3 :=
    pow_lt_pow_left₀ hlog (by norm_num) (by decide)
  norm_num at hp ⊢
  linarith

lemma log_cube_large (m : ℕ) (hm : 89693≤m) :
    (1480 : ℝ)<(Real.log m)^3 := by
  have hlog : Real.log 89693≤Real.log m :=
    Real.log_le_log (by norm_num) (by exact_mod_cast hm)
  have hpos : (0 : ℝ)≤Real.log 89693 := by linarith [log_89693_gt]
  exact log_cube_89693_gt.trans_le (pow_le_pow_left₀ hpos hlog 3)

/-- Given precisely the external prime theorem, all large candidates with
the proved 1480 height bound have a prime witness in the later interval. -/
theorem later_prime_of_dusart (hD : DusartPrimeInterval) (m k : ℕ)
    (hm : 89693≤m) (hbound : m<1480*k) :
    ∃p : ℕ,p.Prime ∧ m<p ∧ p≤m+k := by
  have hmR : (0 : ℝ)<m := by exact_mod_cast (by omega : 0<m)
  have hk : 0<k := by omega
  have hkR : (0 : ℝ)<k := by exact_mod_cast hk
  have hlog := log_cube_large m hm
  have hboundR : (m : ℝ)<1480*k := by exact_mod_cast hbound
  have hquot : (m : ℝ)/(Real.log m)^3<k := by
    apply (div_lt_iff₀ (by linarith : 0<(Real.log m)^3)).mpr
    have hmul := mul_lt_mul_of_pos_left hlog hkR
    nlinarith only [hboundR,hmul]
  obtain ⟨p,hp,hpm,hupper⟩ := hD m (by exact_mod_cast hm)
  have hid : (m : ℝ)*(1+1/(Real.log m)^3)=m+m/(Real.log m)^3 := by ring
  rw [hid] at hupper
  have hpend : (p : ℝ)<m+k := by linarith
  refine ⟨p,hp,by exact_mod_cast hpm,?_⟩
  have ht : p<m+k := by exact_mod_cast hpend
  omega

/-- The two adopted regions reduce to the entire original finite domain.
This is explicitly conditional on Dusart, which remains an open external
formalization obligation, and makes no finite-certificate assumption. -/
theorem candidate_below_89693_of_dusart (hD : DusartPrimeInterval)
    (n m k : ℕ) (hk : 0<k) (hsep : n+k≤m)
    (hregion : m-n≤8*k ∨ n≤369*k)
    (heq : intervalLcm n k=intervalLcm m k) : m<89693 := by
  have hk2 : 2≤k := by
    by_contra h
    have hk1 : k=1 := by omega
    subst k
    exact B677BoundsConsumer.length_one_noncollision hsep heq
  have hbound : m<1480*k := by
    rcases hregion with hd | hn
    · have hb := B677Bounds.later_start_lt_1466_mul_length hk2 hsep heq hd
      omega
    · exact B677Bounds.later_start_lt_1480_mul_length hk2 heq hn
  by_contra hm
  obtain ⟨p,hp,hpm,hpk⟩ := later_prime_of_dusart hD m k (by omega) hbound
  exact interval_lcm_ne_of_later_prime hk hsep hp hpm hpk heq

/-- info: 'B677Analytic.log_cube_89693_gt' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms log_cube_89693_gt
/-- info: 'B677Analytic.candidate_below_89693_of_dusart' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms candidate_below_89693_of_dusart
end B677Analytic
