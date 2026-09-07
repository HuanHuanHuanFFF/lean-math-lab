import research.tasks.«B686-Four».round5.main.ContactCombination
import research.tasks.«B686-Four».round5.worker.ContactTail
import research.tasks.«B686-Four».round5.worker.ContactFinite
import research.tasks.«B686-Four».independent.TargetBridge

/-!
Exclude the previously uncovered k=5 position class {1,2,4}.
The three groups may be arbitrary pairwise coprime natural integers prime to 6;
primality and positive exponents are only needed for the named corollary.
The theorem concerns original nonoverlapping natural consecutive products.
It does not exclude all k=5 displacements or all k.
-/
namespace B686Round5Positions
open B686Round4K5 B686Round5Contact B686Round5Tail

theorem optimized_eq_combination (z d : ℤ) :
    optimizedAuxiliary z d = combination z d := by
  unfold optimizedAuxiliary combination
  ring

theorem p5_eq_shift_product (n : ℤ) : p5 n = B686Round4Shift.product 5 n := by
  rw [B686Round4Cubic.product_five]
  rfl

theorem no_combination_divisor_tail (n d : ℤ) (hn : 0 ≤ n) (hd : 20000 ≤ d)
    (heq : p5 (n + d) = 4 * p5 n)
    (hdiv : d ^ 6 ∣ combination (error n d 3) d) : False := by
  obtain ⟨hl, hu⟩ := refined_strip n d hn hd heq
  obtain ⟨hlo, hneg⟩ := optimized_bounds (error n d 3) d hd hl hu
  rw [optimized_eq_combination] at hlo hneg
  have hsize : d ^ 6 ≤ -combination (error n d 3) d :=
    Int.le_of_dvd (by omega) (dvd_neg.mpr hdiv)
  have hd0 : 0 ≤ d := by omega
  have h := mul_le_mul_of_nonneg_right hd (pow_nonneg hd0 5)
  nlinarith only [hlo, hsize, h]

theorem not_four_three_positions_shift (n d P Q R : ℕ) (hd5 : 5 ≤ d)
    (hd : d = P * Q * R)
    (hP : P ∣ n + 1) (hQ : Q ∣ n + 2) (hR : R ∣ n + 4)
    (hPQ : Nat.Coprime P Q) (hPR : Nat.Coprime P R) (hQR : Nat.Coprime Q R)
    (hP6 : Nat.Coprime P 6) (hQ6 : Nat.Coprime Q 6) (hR6 : Nat.Coprime R 6) :
    (∏ i ∈ Finset.Icc 1 (5 : ℕ), (n + d + i)) ≠
      4 * (∏ i ∈ Finset.Icc 1 (5 : ℕ), (n + i)) := by
  by_cases hsmall : d < 20000
  · exact B686Round5Finite.not_four_below_20000 n d hd5 hsmall
  intro heq
  have hp' := B686Round4Shift.nat_shift_equation 5 n d heq
  have hp : p5 ((n : ℤ) + d) = 4 * p5 n := by
    simpa only [p5_eq_shift_product] using hp'
  have hdiv := three_position_combination n d P Q R hp'
    (by exact_mod_cast hd) (by exact_mod_cast hP) (by exact_mod_cast hQ)
    (by exact_mod_cast hR) hPQ.isCoprime hPR.isCoprime hQR.isCoprime
    hP6.isCoprime hQ6.isCoprime hR6.isCoprime
  exact no_combination_divisor_tail n d (by omega) (by omega) hp hdiv

theorem not_four_three_positions (n m P Q R : ℕ) (hm : n + 5 ≤ m)
    (hd : m - n = P * Q * R)
    (hP : P ∣ n + 1) (hQ : Q ∣ n + 2) (hR : R ∣ n + 4)
    (hPQ : Nat.Coprime P Q) (hPR : Nat.Coprime P R) (hQR : Nat.Coprime Q R)
    (hP6 : Nat.Coprime P 6) (hQ6 : Nat.Coprime Q 6) (hR6 : Nat.Coprime R 6) :
    B686Target.product 5 m ≠ 4 * B686Target.product 5 n := by
  have hadd : n + (m - n) = m := by omega
  simpa only [hadd, B686Target.product] using
    not_four_three_positions_shift n (m - n) P Q R (by omega) hd
      hP hQ hR hPQ hPR hQR hP6 hQ6 hR6

theorem not_four_three_positions_ratio (n m P Q R : ℕ) (hm : n + 5 ≤ m)
    (hd : m - n = P * Q * R)
    (hP : P ∣ n + 1) (hQ : Q ∣ n + 2) (hR : R ∣ n + 4)
    (hPQ : Nat.Coprime P Q) (hPR : Nat.Coprime P R) (hQR : Nat.Coprime Q R)
    (hP6 : Nat.Coprime P 6) (hQ6 : Nat.Coprime Q 6) (hR6 : Nat.Coprime R 6) :
    (4 : ℚ) ≠ (B686Target.product 5 m : ℚ) / (B686Target.product 5 n : ℚ) := by
  intro h
  exact not_four_three_positions n m P Q R hm hd hP hQ hR hPQ hPR hQR hP6 hQ6 hR6
    ((B686Target.ratio_iff 5 n m).mp h)

theorem prime_ge_five_coprime_six (p : ℕ) (hp : p.Prime) (hp5 : 5 ≤ p) :
    Nat.Coprime p 6 := by
  apply hp.coprime_iff_not_dvd.mpr
  intro h
  have hle := Nat.le_of_dvd (by decide : 0 < 6) h
  interval_cases p <;> norm_num at hp h
  exact (by decide : ¬ Nat.Prime 6) hp

theorem not_four_prime_power_positions (n m p q r a b c : ℕ)
    (hm : n + 5 ≤ m) (hp : p.Prime) (hq : q.Prime) (hr : r.Prime)
    (hp5 : 5 ≤ p) (hq5 : 5 ≤ q) (hr5 : 5 ≤ r)
    (hpq : p ≠ q) (hpr : p ≠ r) (hqr : q ≠ r)
    (_ha : 0 < a) (_hb : 0 < b) (_hc : 0 < c)
    (hd : m - n = p ^ a * q ^ b * r ^ c)
    (hP : p ^ a ∣ n + 1) (hQ : q ^ b ∣ n + 2) (hR : r ^ c ∣ n + 4) :
    (4 : ℚ) ≠ (B686Target.product 5 m : ℚ) / (B686Target.product 5 n : ℚ) := by
  apply not_four_three_positions_ratio n m (p ^ a) (q ^ b) (r ^ c) hm hd hP hQ hR
  · exact ((Nat.coprime_primes hp hq).mpr hpq).pow _ _
  · exact ((Nat.coprime_primes hp hr).mpr hpr).pow _ _
  · exact ((Nat.coprime_primes hq hr).mpr hqr).pow _ _
  · exact (prime_ge_five_coprime_six p hp hp5).pow_left _
  · exact (prime_ge_five_coprime_six q hq hq5).pow_left _
  · exact (prime_ge_five_coprime_six r hr hr5).pow_left _

/-- info: 'B686Round5Positions.no_combination_divisor_tail' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms no_combination_divisor_tail
/-- info: 'B686Round5Positions.not_four_three_positions_ratio' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_three_positions_ratio
/-- info: 'B686Round5Positions.not_four_prime_power_positions' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_prime_power_positions
end B686Round5Positions
