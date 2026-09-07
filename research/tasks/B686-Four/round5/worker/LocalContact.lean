import Mathlib.RingTheory.Coprime.Lemmas
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

/-!
Generic arithmetic interface for denominator-cleared local contact certificates.
A contact-order certificate is an exact polynomial identity. It transfers to
arbitrary integer divisors q, not only primes, when its denominator is coprime.
No Taylor-series or numerical root assumption is built into this interface.
-/
namespace B686Round5Contact

/-- Every monomial of total degree at least r at a q-divisible pair is q^r-divisible. -/
theorem monomial_contact (q w d : ℤ) (a b r : ℕ)
    (hqw : q ∣ w) (hqd : q ∣ d) (hr : r ≤ a + b) :
    q ^ r ∣ w ^ a * d ^ b := by
  apply dvd_trans (pow_dvd_pow q hr)
  rw [pow_add]
  exact mul_dvd_mul (pow_dvd_pow_of_dvd hqw a) (pow_dvd_pow_of_dvd hqd b)

/-- Exact local-ideal certificates imply the high-order divisibility claim. -/
theorem local_contact {ι : Type*} (s : Finset ι)
    (q w d C G H F : ℤ) (r : ℕ) (a b : ι → ℕ) (c : ι → ℤ)
    (hqw : q ∣ w) (hqd : q ∣ d) (hc : IsCoprime q C)
    (hdegree : ∀ j ∈ s, r ≤ a j + b j)
    (hcertificate : C * G = H * F + ∑ j ∈ s, c j * w ^ a j * d ^ b j)
    (hF : F = 0) : q ^ r ∣ G := by
  have hs : q ^ r ∣ ∑ j ∈ s, c j * w ^ a j * d ^ b j := by
    apply Finset.dvd_sum
    intro j hj
    simpa only [mul_assoc] using dvd_mul_of_dvd_right
      (monomial_contact q w d (a j) (b j) r hqw hqd (hdegree j hj)) (c j)
  have hg : q ^ r ∣ C * G := by
    rw [hcertificate, hF, mul_zero, zero_add]
    exact hs
  exact (hc.pow_left (m := r)).dvd_of_dvd_mul_left hg

/-- Combining three coprime slot groups loses no contact order. -/
theorem three_group_contact (P Q R G : ℤ) (r : ℕ)
    (hPQ : IsCoprime P Q) (hPR : IsCoprime P R) (hQR : IsCoprime Q R)
    (hP : P ^ r ∣ G) (hQ : Q ^ r ∣ G) (hR : R ^ r ∣ G) :
    (P * Q * R) ^ r ∣ G := by
  rw [mul_pow, mul_pow]
  exact (hPR.pow.mul_left hQR.pow).mul_dvd ((hPQ.pow).mul_dvd hP hQ) hR

/-- info: 'B686Round5Contact.local_contact' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms local_contact
/-- info: 'B686Round5Contact.three_group_contact' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms three_group_contact

end B686Round5Contact
