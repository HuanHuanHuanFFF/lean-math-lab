import research.tasks.«B686-Four».round5.main.ContactCertificates
import research.tasks.«B686-Four».round4.main.K5CubicSlots
import Mathlib.RingTheory.Coprime.Lemmas

namespace B686Round5Contact
open B686Round4Shift B686Round4Cubic

theorem curve_identity (n d : ℤ) :
    curve (3 * (n + 3) - d) d =
      -81 * (product 5 (n + d) - 4 * product 5 n) := by
  rw [product_five, product_five]
  norm_num [curve]
  ring

theorem curve_of_original (n d : ℤ)
    (heq : product 5 (n + d) = 4 * product 5 n) :
    curve (3 * (n + 3) - d) d = 0 := by
  rw [curve_identity, heq]
  ring

theorem coprime_denominator (q K : ℤ) (hc : IsCoprime q (6 : ℤ))
    (hK : K ∣ (6 : ℤ) ^ 8) : IsCoprime q K :=
  (hc.pow_right (n := 8)).of_isCoprime_of_dvd_right hK

theorem contact1 (z d q : ℤ) (hy : q ∣ z - 6) (hd : q ∣ d)
    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) :
    q ^ 6 ∣ auxiliary z d := by
  have hK := coprime_denominator q 20736 hc (by norm_num)
  exact (hK.pow_left (m := 6)).dvd_of_dvd_mul_left (local1 z d q hy hd hcurve)

theorem contact2 (z d q : ℤ) (hy : q ∣ z - 3) (hd : q ∣ d)
    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) :
    q ^ 6 ∣ auxiliary z d := by
  have hK := coprime_denominator q 2187 hc (by norm_num)
  exact (hK.pow_left (m := 6)).dvd_of_dvd_mul_left (local2 z d q hy hd hcurve)

theorem contact4 (z d q : ℤ) (hy : q ∣ z - (-3)) (hd : q ∣ d)
    (hc : IsCoprime q (6 : ℤ)) (hcurve : curve z d = 0) :
    q ^ 6 ∣ auxiliary z d := by
  have hK := coprime_denominator q 81 hc (by norm_num)
  exact (hK.pow_left (m := 6)).dvd_of_dvd_mul_left (local4 z d q hy hd hcurve)

theorem three_position_contact (n d P Q R : ℤ)
    (heq : product 5 (n + d) = 4 * product 5 n)
    (hd : d = P * Q * R) (hP : P ∣ n + 1) (hQ : Q ∣ n + 2) (hR : R ∣ n + 4)
    (hPQ : IsCoprime P Q) (hPR : IsCoprime P R) (hQR : IsCoprime Q R)
    (hP6 : IsCoprime P (6 : ℤ)) (hQ6 : IsCoprime Q (6 : ℤ))
    (hR6 : IsCoprime R (6 : ℤ)) : d ^ 6 ∣ auxiliary (3 * (n + 3) - d) d := by
  have hPd : P ∣ d := by rw [hd]; exact dvd_mul_of_dvd_left (dvd_mul_right P Q) R
  have hQd : Q ∣ d := by rw [hd]; exact dvd_mul_of_dvd_left (dvd_mul_left Q P) R
  have hRd : R ∣ d := by rw [hd]; exact dvd_mul_left R (P * Q)
  have hp : P ∣ 3 * (n + 3) - d - 6 := by
    have hid : 3 * (n + 3) - d - 6 = 3 * (n + 1) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hP 3) hPd
  have hq : Q ∣ 3 * (n + 3) - d - 3 := by
    have hid : 3 * (n + 3) - d - 3 = 3 * (n + 2) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hQ 3) hQd
  have hr : R ∣ 3 * (n + 3) - d - (-3) := by
    have hid : 3 * (n + 3) - d - (-3) = 3 * (n + 4) - d := by ring
    rw [hid]
    exact dvd_sub (dvd_mul_of_dvd_right hR 3) hRd
  have hc := curve_of_original n d heq
  have hp6 := contact1 _ _ _ hp hPd hP6 hc
  have hq6 := contact2 _ _ _ hq hQd hQ6 hc
  have hr6 := contact4 _ _ _ hr hRd hR6 hc
  rw [hd] at hp6 hq6 hr6 ⊢
  rw [mul_pow, mul_pow]
  exact (hPR.pow.mul_left hQR.pow).mul_dvd ((hPQ.pow).mul_dvd hp6 hq6) hr6

-- AXIOM AUDIT
/-- info: 'B686Round5Contact.curve_identity' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms curve_identity
/-- info: 'B686Round5Contact.curve_of_original' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms curve_of_original
/-- info: 'B686Round5Contact.coprime_denominator' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms coprime_denominator
/-- info: 'B686Round5Contact.contact1' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms contact1
/-- info: 'B686Round5Contact.contact2' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms contact2
/-- info: 'B686Round5Contact.contact4' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms contact4
/-- info: 'B686Round5Contact.three_position_contact' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms three_position_contact
end B686Round5Contact
