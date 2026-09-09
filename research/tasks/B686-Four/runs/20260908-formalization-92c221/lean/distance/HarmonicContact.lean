import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.distance.DistanceRoughSupport
import research.tasks.«B686-Four».round4.main.K5CubicSlots
import Mathlib.Algebra.Polynomial.Derivative
import Mathlib.Algebra.Polynomial.Div
import Mathlib.Tactic.LinearCombination

/-! Arbitrary-position cubic contact for the adopted two-position height
route. The polynomial coefficients and reduced rational are constructed;
no Taylor or harmonic coefficient certificate is a final hypothesis. -/
namespace B686Harmonic
open Finset Polynomial B686Target B686Formalization
set_option maxHeartbeats 2400000

noncomputable def rootCofactor (k i : ℕ) : ℤ[X] :=
  ∏a∈(Icc 1 k).erase i, (X+C ((a : ℤ)-i))

noncomputable def harmonicRatio (k i : ℕ) : ℚ :=
  ((rootCofactor k i).coeff 1 : ℚ)/(rootCofactor k i).coeff 0

lemma root_cofactor_constant (k i : ℕ) :
    (rootCofactor k i).coeff 0=∏a∈(Icc 1 k).erase i,((a : ℤ)-i) := by
  rw [coeff_zero_eq_eval_zero]
  simp [rootCofactor,eval_prod]

lemma root_cofactor_constant_ne_zero (k i : ℕ) : (rootCofactor k i).coeff 0≠0 := by
  rw [root_cofactor_constant]
  apply prod_ne_zero_iff.mpr
  intro a ha
  have hai := (mem_erase.mp ha).1
  exact sub_ne_zero.mpr (by exact_mod_cast hai)

lemma root_cofactor_expansion (k i : ℕ) : ∃W : ℤ[X],
    rootCofactor k i=C ((rootCofactor k i).coeff 0)+
      C ((rootCofactor k i).coeff 1)*X+X^2*W := by
  let F := rootCofactor k i
  have hd : X^2∣F-C (F.coeff 0)-C (F.coeff 1)*X := by
    apply X_pow_dvd_iff.mpr
    intro a ha
    interval_cases a <;> simp only [coeff_sub,coeff_C,coeff_C_mul_X] <;> norm_num
  obtain ⟨W,hW⟩ := hd
  refine ⟨W,?_⟩
  change F=C (F.coeff 0)+C (F.coeff 1)*X+X^2*W
  linear_combination hW

lemma original_product_at_root (k n i : ℕ) (hi : i∈Icc 1 k) :
    (product k n : ℤ)=(n+i : ℤ)*(rootCofactor k i).eval (n+i : ℤ) := by
  have hp : (product k n : ℤ)=∏a∈Icc 1 k,((n : ℤ)+a) := by
    unfold product
    push_cast
    rfl
  rw [hp,←mul_prod_erase _ _ hi]
  congr 1
  simp only [rootCofactor,eval_prod,eval_add,eval_X,eval_C]
  apply prod_congr rfl
  intro a ha
  ring

lemma root_cofactor_constant_coprime (k i p : ℕ) (hi : i∈Icc 1 k)
    (hp : p.Prime) (hpk : k<p) : IsCoprime (p : ℤ) ((rootCofactor k i).coeff 0) := by
  rw [root_cofactor_constant]
  apply IsCoprime.prod_right
  intro a ha
  obtain ⟨hai,ha⟩ := mem_erase.mp ha
  have ha' := mem_Icc.mp ha
  have hi' := mem_Icc.mp hi
  have hdelta0 : ((a : ℤ)-i).natAbs≠0 := by
    apply Int.natAbs_ne_zero.mpr
    exact sub_ne_zero.mpr (by exact_mod_cast hai)
  have hdelta : ((a : ℤ)-i).natAbs<p := by
    have habs : |(a : ℤ)-i|<(p : ℤ) := by rw [abs_lt]; constructor <;> omega
    rw [←Int.natCast_natAbs] at habs
    exact_mod_cast habs
  have hc : p.Coprime ((a : ℤ)-i).natAbs := hp.coprime_iff_not_dvd.mpr (by
    intro h
    have := Nat.le_of_dvd (Nat.pos_of_ne_zero hdelta0) h
    omega)
  exact hc.isCoprime.of_isCoprime_of_dvd_right Int.dvd_natAbs_self

lemma harmonic_coefficient_identity (k i : ℕ) :
    (harmonicRatio k i).num*(rootCofactor k i).coeff 0=
      (rootCofactor k i).coeff 1*(harmonicRatio k i).den := by
  have hc : ((rootCofactor k i).coeff 0 : ℚ)≠0 := by
    exact_mod_cast root_cofactor_constant_ne_zero k i
  have hd : ((harmonicRatio k i).den : ℚ)≠0 := by exact_mod_cast (harmonicRatio k i).den_nz
  have hrat : ((harmonicRatio k i).num : ℚ)/(harmonicRatio k i).den=
      ((rootCofactor k i).coeff 1 : ℚ)/(rootCofactor k i).coeff 0 := by
    rw [Rat.num_div_den]
    rfl
  have hcross := (div_eq_div_iff hd hc).mp hrat
  exact_mod_cast hcross

/-- Complete local cubic correction at an arbitrary rough-prime hit. -/
theorem original_harmonic_cubic_contact (k n m i p : ℕ) (hk : 3≤k)
    (hsep : n+k≤m) (heq : product k m=4*product k n) (hi : i∈Icc 1 k)
    (hp : p.Prime) (hpk : k<p) (hpd : p∣m-n) (hpz : p∣n+i) :
    let H := harmonicRatio k i
    (p : ℤ)^(3*padicValNat p (m-n))∣
      3*H.den*distanceContact n m i-4*H.num*(m-n : ℕ)^2 := by
  let q : ℤ := (p : ℤ)^padicValNat p (m-n)
  let d : ℤ := (m-n : ℕ)
  let z : ℤ := n+i
  let c := (rootCofactor k i).coeff 0
  let b := (rootCofactor k i).coeff 1
  let H := harmonicRatio k i
  obtain ⟨hz,hR⟩ := distance_rough_contact k n m i p hk hsep heq hi hp hpk hpd hpz
  have hzZ : q∣z := by dsimp [q,z]; exact_mod_cast hz
  have hdZ : q∣d := by dsimp [q,d]; exact_mod_cast (pow_padicValNat_dvd (p:=p) (n:=m-n))
  have hRZ : q^2∣3*z-d := by
    rw [←Int.natCast_dvd] at hR
    simpa only [Nat.cast_pow,distanceContact,Nat.cast_add,q,z,d] using hR
  obtain ⟨W,hW⟩ := root_cofactor_expansion k i
  have hpr (t : ℕ) : (product k t : ℤ)=
      (t+i : ℤ)*(c+b*(t+i)+(t+i)^2*W.eval (t+i : ℤ)) := by
    rw [original_product_at_root k t i hi,hW]
    simp only [eval_add,eval_C,eval_mul,eval_X,eval_pow,c,b]
  have hcast : (n : ℤ)+(m-n : ℕ)=m := by exact_mod_cast (show n+(m-n)=m by omega)
  have harg : z+d=(m+i : ℤ) := by dsimp [z,d]; linarith
  have heqZ : (product k m : ℤ)=4*(product k n : ℤ) := by exact_mod_cast heq
  have hlocal : (z+d)*(c+b*(z+d)+(z+d)^2*W.eval (z+d))=
      4*z*(c+b*z+z^2*W.eval z) := by
    rw [hpr m,hpr n] at heqZ
    rw [harg]
    simpa only [z,mul_assoc] using heqZ
  have hraw := B686Round4Cubic.cubic_cofactor z d q c b (W.eval z) (W.eval (z+d))
    hzZ hdZ hRZ hlocal
  have hmul := dvd_mul_of_dvd_left hraw (H.den : ℤ)
  have hcross : H.num*c=b*H.den := harmonic_coefficient_identity k i
  have hid : (3*c*(3*z-d)-4*b*d^2)*H.den=
      c*(3*H.den*(3*z-d)-4*H.num*d^2) := by
    calc
      _ = c*(3*H.den*(3*z-d))-4*d^2*(b*H.den) := by ring
      _ = _ := by rw [←hcross]; ring
  rw [hid] at hmul
  have hcop : IsCoprime (q^3) c :=
    (root_cofactor_constant_coprime k i p hi hp hpk).pow_left.pow_left
  have hres := hcop.dvd_of_dvd_mul_left hmul
  simpa only [q,←pow_mul,Nat.mul_comm _ 3,H,z,d,distanceContact,Nat.cast_add] using hres

/-- info: 'B686Harmonic.original_harmonic_cubic_contact' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_harmonic_cubic_contact
end B686Harmonic
