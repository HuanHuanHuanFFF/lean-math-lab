import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.reflected.DistancePrimePower
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.reflected.TwoPositionSupport

/-! Complete rough-distance factors and their contacts, constructed from the
original product equation. Shared by the adopted central support consumers. -/
namespace B686Formalization
open Finset B686Target B686ReflectedA
set_option maxHeartbeats 2400000

def distanceSmoothPart (k d : ℕ) : ℕ := reflectedSmoothPart k d

def distanceRoughPart (k d : ℕ) : ℕ :=
  ∏p∈d.primeFactors.filter (fun p=>¬p≤k),p^padicValNat p d

lemma distance_smooth_rough_product (k d : ℕ) (hd : d≠0) :
    distanceSmoothPart k d*distanceRoughPart k d=d := by
  unfold distanceSmoothPart reflectedSmoothPart distanceRoughPart
  rw [prod_filter_mul_prod_filter_not,prime_factorization_product d hd]

lemma distance_smooth_pos (k d : ℕ) : 0<distanceSmoothPart k d := by
  unfold distanceSmoothPart reflectedSmoothPart
  apply prod_pos
  intro p hp
  exact pow_pos (Nat.prime_of_mem_primeFactors (mem_filter.mp hp).1).pos _

lemma distance_rough_pos (k d : ℕ) : 0<distanceRoughPart k d := by
  apply prod_pos
  intro p hp
  exact pow_pos (Nat.prime_of_mem_primeFactors (mem_filter.mp hp).1).pos _

lemma distance_rough_power_dvd (k d e b : ℕ)
    (h : ∀p : ℕ,p.Prime → p∣d → k<p → p^(padicValNat p d*e)∣b) :
    distanceRoughPart k d^e∣b := by
  unfold distanceRoughPart
  rw [←prod_pow]
  simp_rw [←pow_mul]
  apply prime_power_product_dvd
  · intro p hp
    exact Nat.prime_of_mem_primeFactors (mem_filter.mp hp).1
  · intro p hp
    obtain ⟨hpd,hpk⟩ := mem_filter.mp hp
    exact h p (Nat.prime_of_mem_primeFactors hpd) (Nat.dvd_of_mem_primeFactors hpd) (by omega)

/-- Every rough prime divisor of the distance hits one of these positions. -/
def distanceSupportAtMostTwo (k n m i j : ℕ) : Prop :=
  ∀p : ℕ,p.Prime → p∣m-n → k<p → p∣n+i ∨ p∣n+j

/-- Full valuation and square contact at the specified hit, including all of
its prime-power part. The hit is identified with the original high position. -/
lemma distance_rough_contact (k n m i p : ℕ) (hk : 3≤k)
    (hsep : n+k≤m) (heq : product k m=4*product k n) (hi : i∈Icc 1 k)
    (hp : p.Prime) (hpk : k<p) (hpd : p∣m-n) (hpz : p∣n+i) :
    p^padicValNat p (m-n)∣n+i ∧
      (p^padicValNat p (m-n))^2∣(distanceContact n m i).natAbs := by
  have : Fact p.Prime := ⟨hp⟩
  have h3 : padicValRat p (4-1 : ℚ)=0 := by
    rw [distance_coefficient_valuation,padicValNat_primes (by omega : p≠3)]
    rfl
  have hd0 : m-n≠0 := by omega
  have ha : 0<padicValNat p (m-n) := by
    have := one_le_padicValNat_of_dvd hd0 hpd
    omega
  obtain ⟨j,hj,hv,hpos,hbound⟩ := distance_high_contact_data k n m p 0 hp hk hsep heq
    (by simpa using hpk) (by rw [h3]; exact_mod_cast ha)
  rw [h3] at hv hbound
  have hjv : 0<padicValNat p (n+j) := by omega
  have hz0 : n+i≠0 := by have := (mem_Icc.mp hi).1; omega
  have hiv : 0<padicValNat p (n+i) := by
    have := one_le_padicValNat_of_dvd hz0 hpz
    omega
  have hji := unique_high_position k n p 0 j i hp (by simpa using hpk) hj hi hjv hiv
  subst j
  have he : padicValNat p (n+i)=padicValNat p (m-n) := by omega
  constructor
  · rw [←he]
    exact pow_padicValNat_dvd
  · have hdvd : (p : ℤ)^(padicValNat p (m-n)*2)∣distanceContact n m i :=
      (padicValInt_dvd_iff _ _).mpr (Or.inr (by omega))
    rw [←pow_mul,←Int.natCast_dvd]
    exact_mod_cast hdvd

/-- info: 'B686Formalization.distance_rough_contact' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms distance_rough_contact
end B686Formalization
