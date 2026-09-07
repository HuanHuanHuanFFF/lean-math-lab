import research.tasks.«B686-Four».round4.main.ShiftCongruence
import Mathlib.Tactic.IntervalCases

/-! Third-order necessary conditions at the five occupied positions. -/
namespace B686Round4Cubic
open B686Round4Shift

def err (n d : ℤ) (i : ℕ) : ℤ := 3 * (n + i) - d

def correction (n d : ℤ) : ℕ → ℤ
  | 1 => 9 * err n d 1 - 25 * d ^ 2
  | 2 => 9 * err n d 2 - 10 * d ^ 2
  | 3 => err n d 3
  | 4 => 9 * err n d 4 + 10 * d ^ 2
  | 5 => 9 * err n d 5 + 25 * d ^ 2
  | _ => 0

def constantTerm : ℕ → ℤ
  | 1 => 24 | 2 => -6 | 3 => 4 | 4 => -6 | 5 => 24 | _ => 0
def linearTerm : ℕ → ℤ
  | 1 => 50 | 2 => -5 | 3 => 0 | 4 => 5 | 5 => -50 | _ => 0
def remainder (i : ℕ) (y : ℤ) : ℤ := match i with
  | 1 => y ^ 2 + 10 * y + 35
  | 2 => y ^ 2 + 5 * y + 5
  | 3 => y ^ 2 - 5
  | 4 => y ^ 2 - 5 * y + 5
  | 5 => y ^ 2 - 10 * y + 35
  | _ => 0
def multiplier : ℕ → ℤ
  | 1 => 8 | 2 => -2 | 3 => 12 | 4 => -2 | 5 => 8 | _ => 1

theorem product_five (n : ℤ) :
    product 5 n = (n + 1) * (n + 2) * (n + 3) * (n + 4) * (n + 5) := by
  norm_num [product, show Finset.Icc 1 (5 : ℕ) = {1, 2, 3, 4, 5} by decide]
  ring

theorem at_position (n : ℤ) (i : ℕ) (hi : i ∈ Finset.Icc 1 5) :
    product 5 n = (n + i) * (constantTerm i + linearTerm i * (n + i) +
      (n + i) ^ 2 * remainder i (n + i)) := by
  obtain ⟨hi1, hi5⟩ := Finset.mem_Icc.mp hi
  rw [product_five]
  interval_cases i <;> norm_num [constantTerm, linearTerm, remainder] <;> ring

theorem correction_identity (n d : ℤ) (i : ℕ) (hi : i ∈ Finset.Icc 1 5) :
    3 * constantTerm i * (3 * (n + i) - d) - 4 * linearTerm i * d ^ 2 =
      multiplier i * correction n d i := by
  obtain ⟨hi1, hi5⟩ := Finset.mem_Icc.mp hi
  interval_cases i <;> norm_num [constantTerm, linearTerm, multiplier, correction, err] <;> ring

theorem multiplier_dvd (i : ℕ) (hi : i ∈ Finset.Icc 1 5) : multiplier i ∣ (24 : ℤ) := by
  obtain ⟨hi1, hi5⟩ := Finset.mem_Icc.mp hi
  interval_cases i <;> norm_num [multiplier]

theorem cubic_cofactor (y d q a b s s' : ℤ) (hqy : q ∣ y) (hqd : q ∣ d)
    (hqe : q ^ 2 ∣ 3 * y - d)
    (heq : (y + d) * (a + b * (y + d) + (y + d) ^ 2 * s') =
      4 * y * (a + b * y + y ^ 2 * s)) :
    q ^ 3 ∣ 3 * a * (3 * y - d) - 4 * b * d ^ 2 := by
  have hqplus : q ∣ y + d := dvd_add hqy hqd
  have hcplus : q ^ 3 ∣ (y + d) ^ 3 := pow_dvd_pow_of_dvd hqplus 3
  have hcy : q ^ 3 ∣ y ^ 3 := pow_dvd_pow_of_dvd hqy 3
  have hqe1 : q ∣ 3 * y - d := dvd_sub (dvd_mul_of_dvd_right hqy 3) hqd
  have he2 : q ^ 3 ∣ (3 * y - d) ^ 2 := by
    have h := mul_dvd_mul hqe hqe1
    simpa only [pow_succ, pow_zero, one_mul] using h
  have hdiff : q ^ 3 ∣ (y + d) ^ 3 * s' - 4 * y ^ 3 * s :=
    dvd_sub (dvd_mul_of_dvd_left hcplus s')
      (dvd_mul_of_dvd_left (dvd_mul_of_dvd_right hcy 4) s)
  have hsum := dvd_sub (dvd_mul_of_dvd_right hdiff 3) (dvd_mul_of_dvd_right he2 b)
  have hid : 3 * ((y + d) ^ 3 * s' - 4 * y ^ 3 * s) - b * (3 * y - d) ^ 2 =
      3 * a * (3 * y - d) - 4 * b * d ^ 2 := by
    calc
      _ = 3 * ((y + d) * (a + b * (y + d) + (y + d) ^ 2 * s') -
          4 * y * (a + b * y + y ^ 2 * s)) +
          (3 * a * (3 * y - d) - 4 * b * d ^ 2) := by ring
      _ = _ := by rw [heq]; ring
  rwa [hid] at hsum

theorem cubic_slot (n d q : ℤ) (i : ℕ) (hi : i ∈ Finset.Icc 1 5)
    (hqd : q ∣ d) (hqy : q ∣ n + i) (hqe : q ^ 2 ∣ err n d i)
    (hc : IsCoprime q (24 : ℤ))
    (heq : product 5 (n + d) = 4 * product 5 n) :
    q ^ 3 ∣ correction n d i := by
  have hlocal : (n + i + d) * (constantTerm i + linearTerm i * (n + i + d) +
        (n + i + d) ^ 2 * remainder i (n + i + d)) =
      4 * (n + i) * (constantTerm i + linearTerm i * (n + i) +
        (n + i) ^ 2 * remainder i (n + i)) := by
    rw [at_position (n + d) i hi, at_position n i hi] at heq
    simpa only [add_assoc, add_comm, add_left_comm, mul_assoc] using heq
  have hraw := cubic_cofactor (n + i) d q (constantTerm i) (linearTerm i)
    (remainder i (n + i)) (remainder i (n + i + d)) hqy hqd hqe hlocal
  rw [correction_identity n d i hi] at hraw
  have hcm : IsCoprime q (multiplier i) := hc.of_isCoprime_of_dvd_right (multiplier_dvd i hi)
  exact (hcm.pow_left (m := 3)).dvd_of_dvd_mul_left hraw

theorem prime_power_cubic_position (n d p a : ℕ) (hp : p.Prime) (hp5 : 5 ≤ p)
    (ha : 0 < a) (hpd : p ^ a ∣ d)
    (heq : natProduct 5 (n + d) = 4 * natProduct 5 n) :
    ∃ i : ℕ, i ∈ Finset.Icc 1 5 ∧
      (p : ℤ) ^ a ∣ (n : ℤ) + i ∧
      (p : ℤ) ^ (2 * a) ∣ err n d i ∧
      (p : ℤ) ^ (3 * a) ∣ correction n d i := by
  obtain ⟨i, hi, hqy, hcr⟩ := prime_power_position 5 n d p a hp hp5 (by omega) ha hpd heq
  have hqd : (p : ℤ) ^ a ∣ (d : ℤ) := by exact_mod_cast hpd
  have heq' := nat_shift_equation 5 n d heq
  have hsq := slot_square (Finset.Icc 1 5) n d ((p : ℤ) ^ a) i hi hqd hqy hcr heq'
  have hp24 : ¬ p ∣ 24 := by
    intro hd
    have hfact : (24 : ℕ) = 2 ^ 3 * 3 := rfl
    rw [hfact] at hd
    rcases hp.dvd_mul.mp hd with h2 | h3
    · have hp2 := hp.dvd_of_dvd_pow h2
      rcases (Nat.dvd_prime (by decide : Nat.Prime 2)).mp hp2 with h | h <;> omega
    · rcases (Nat.dvd_prime (by decide : Nat.Prime 3)).mp h3 with h | h <;> omega
  have hc : IsCoprime ((p : ℤ) ^ a) (24 : ℤ) :=
    ((hp.coprime_iff_not_dvd.mpr hp24).isCoprime).pow_left
  have hcube := cubic_slot n d ((p : ℤ) ^ a) i hi hqd hqy hsq hc heq'
  refine ⟨i, hi, hqy, ?_, ?_⟩
  · simpa only [err, ← pow_mul, Nat.mul_comm a 2] using hsq
  · simpa only [← pow_mul, Nat.mul_comm a 3] using hcube

/-- info: 'B686Round4Cubic.cubic_cofactor' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms cubic_cofactor
/-- info: 'B686Round4Cubic.cubic_slot' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms cubic_slot
/-- info: 'B686Round4Cubic.prime_power_cubic_position' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms prime_power_cubic_position

end B686Round4Cubic
