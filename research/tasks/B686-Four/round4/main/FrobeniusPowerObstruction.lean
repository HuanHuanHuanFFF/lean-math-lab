import research.tasks.«B686-Four».round4.main.FrobeniusCertificate

/-! Finite-field power obstruction only; no geometric simplicity is asserted here. -/
namespace B686Round4FrobeniusPower
noncomputable section
open Polynomial B686Round4Frobenius
local notation "K" => ZMod 7
local notation "E" => AdjoinRoot f
local instance : Fact (Nat.Prime 7) := ⟨by decide⟩
local instance : Fact (Irreducible f) := ⟨f_irreducible⟩
local instance : Module.Finite K E := f_monic.finite_adjoinRoot
local instance : Finite E := Module.finite_of_finite K
local instance : Fintype E := Fintype.ofFinite E

set_option maxRecDepth 100000
set_option maxHeartbeats 3000000

@[irreducible] def alpha : E := AdjoinRoot.root f
@[irreducible] def eta : E := alpha ^ 2400

theorem extension_card : Fintype.card E = 7 ^ 8 := by
  have hdim : Module.finrank K E = 8 := by
    change Module.finrank K (K[X] ⧸ Ideal.span {f}) = 8
    rw [finrank_quotient_span_eq_natDegree, f_degree]
  have hc : Fintype.card E = Fintype.card K ^ Module.finrank K E := Module.card_eq_pow_finrank
  simpa only [ZMod.card, hdim] using hc

theorem alpha_ne_zero : alpha ≠ 0 := by
  have h := AdjoinRoot.mk_ne_zero_of_natDegree_lt f_monic (X_ne_zero (R := K))
    (by rw [natDegree_X, f_degree]; decide)
  simpa only [AdjoinRoot.mk_X, alpha] using h

theorem alpha_four : alpha ^ 2401 = AdjoinRoot.mk f r4 := by
  have hd : f ∣ (X : K[X]) ^ 2401 - r4 := by
    simpa only [frobPower, show (7 ^ 4 : ℕ) = 2401 by decide] using power4
  have hz := (AdjoinRoot.mk_eq_zero (f := f)).mpr hd
  simpa only [map_sub, map_pow, AdjoinRoot.mk_X, sub_eq_zero, alpha] using hz

theorem alpha_four_sub_ne_zero : alpha ^ 2401 - alpha ≠ 0 := by
  have hdeg : (r4 - (X : K[X])).natDegree = 7 := by
    unfold r4
    compute_degree <;> norm_num <;> decide
  have hn : r4 - (X : K[X]) ≠ 0 := by
    intro h
    rw [h, natDegree_zero] at hdeg
    omega
  have h := AdjoinRoot.mk_ne_zero_of_natDegree_lt f_monic hn
    (by rw [hdeg, f_degree]; decide)
  simpa only [map_sub, AdjoinRoot.mk_X, ← alpha_four, alpha] using h

theorem alpha_four_add_ne_zero : alpha ^ 2401 + alpha ≠ 0 := by
  have hdeg : (r4 + (X : K[X])).natDegree = 7 := by
    unfold r4
    compute_degree <;> norm_num <;> decide
  have hn : r4 + (X : K[X]) ≠ 0 := by
    intro h
    rw [h, natDegree_zero] at hdeg
    omega
  have h := AdjoinRoot.mk_ne_zero_of_natDegree_lt f_monic hn
    (by rw [hdeg, f_degree]; decide)
  simpa only [map_add, AdjoinRoot.mk_X, ← alpha_four, alpha] using h

theorem eta_order_bound : eta ^ 2402 = 1 := by
  have h := FiniteField.pow_card_sub_one_eq_one alpha alpha_ne_zero
  rw [extension_card] at h
  simpa only [eta, ← pow_mul, show (7 ^ 8 - 1 : ℕ) = 2400 * 2402 by decide] using h

theorem eta_square_ne_one : eta ^ 2 ≠ 1 := by
  have hn := mul_ne_zero alpha_four_sub_ne_zero alpha_four_add_ne_zero
  intro h
  apply hn
  calc
    _ = alpha ^ 2 * (eta ^ 2 - 1) := by unfold eta; ring
    _ = 0 := by rw [h]; ring

theorem eta_small_power (d : ℕ) (hd : 0 < d) (hsmall : d < 1201) : eta ^ d ≠ 1 := by
  have hb : (eta ^ 2) ^ 1201 = 1 := by simpa only [← pow_mul] using eta_order_bound
  have ho := orderOf_dvd_of_pow_eq_one hb
  have hp : Nat.Prime 1201 := by decide
  have heq : orderOf (eta ^ 2) = 1201 := by
    rcases (Nat.dvd_prime hp).mp ho with h1 | h1201
    · exact False.elim (eta_square_ne_one (orderOf_eq_one_iff.mp h1))
    · exact h1201
  intro h
  have hs : (eta ^ 2) ^ d = 1 := by
    calc
      _ = (eta ^ d) ^ 2 := by rw [← pow_mul, ← pow_mul, Nat.mul_comm 2 d]
      _ = 1 := by rw [h, one_pow]
  have hdiv := orderOf_dvd_of_pow_eq_one hs
  rw [heq] at hdiv
  have := Nat.le_of_dvd hd hdiv
  omega

theorem small_powers_not_fixed (d : ℕ) (hd : 0 < d) (hsmall : d < 1201) :
    (alpha ^ d) ^ 2401 ≠ alpha ^ d := by
  intro h
  have hm : eta ^ d * alpha ^ d = 1 * alpha ^ d := by
    calc
      _ = (alpha ^ d) ^ 2401 := by unfold eta; ring
      _ = _ := by rw [h, one_mul]
  exact eta_small_power d hd hsmall (mul_right_cancel₀ (pow_ne_zero _ alpha_ne_zero) hm)

/-- info: 'B686Round4FrobeniusPower.small_powers_not_fixed' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms small_powers_not_fixed

end
end B686Round4FrobeniusPower
