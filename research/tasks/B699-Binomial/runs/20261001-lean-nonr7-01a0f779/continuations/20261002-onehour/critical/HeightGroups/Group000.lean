import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.M64.Actual
import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Rat.Cast.Order
import Mathlib.Tactic.NormNum
set_option Elab.async false
/- Frozen member 0 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\CriticalPadeHeight\Structure.lean 03b78d96572bdd51be29c218ab404a0e34d6e4f27660a23ce6a9a4c81ae5c9cc -/
section HeightMember000


/-! Complete uncompiled candidate: the critical three-window exponent cancels exactly. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.CriticalPadeHeight
open B699LowIndex B699LargePrimeStructure

theorem critical_small_part_lower {n i j r s t : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hlarge : i * (i - 1) ≤ n) (hlambda : 2 * s - r = i) (ht : t ≤ i)
    (hdegree : windowDegree i r s = (i - t) * i) (hno : ¬ Common n i j) :
    n ^ t ≤ (2 * i.factorial) * smallPrimePart n i := by
  have hn : 0 < n := by omega
  have hbase := noCommon_bernoulli_size (r := r) hi hij hjn hsi hlarge hno
  rw [hlambda, hdegree] at hbase
  have hK : 1 ≤ windowConstant i r s := window_constant_pos i r s
  have hremove : n ^ (i * i) ≤
      (2 * i.factorial) ^ i * (smallPrimePart n i) ^ i * n ^ ((i - t) * i) := by
    calc
      n ^ (i * i) = 1 * n ^ (i * i) := by ring
      _ ≤ windowConstant i r s * n ^ (i * i) := Nat.mul_le_mul_right _ hK
      _ ≤ _ := hbase
  have hshape : n ^ ((i - t) * i) * (n ^ t) ^ i = n ^ (i * i) := by
    rw [← pow_mul, ← pow_add]
    congr 1
    rw [← Nat.add_mul, Nat.sub_add_cancel ht]
  have hmul : n ^ ((i - t) * i) * (n ^ t) ^ i ≤
      n ^ ((i - t) * i) * ((2 * i.factorial) * smallPrimePart n i) ^ i := by
    calc
      _ = n ^ (i * i) := hshape
      _ ≤ (2 * i.factorial) ^ i * (smallPrimePart n i) ^ i * n ^ ((i - t) * i) :=
        hremove
      _ = _ := by rw [mul_pow]; ring
  have hpowers := Nat.le_of_mul_le_mul_left hmul (Nat.pow_pos hn)
  exact (Nat.pow_le_pow_iff_left (by omega : i ≠ 0)).mp hpowers

theorem critical_budget_bound {n U C Y t : ℕ} (hU : 0 < U)
    (hlower : n ^ t ≤ C * U)
    (hcapacity : U ^ 1000 * Y ^ 10 ≤ n ^ (1000 * t)) :
    Y ^ 10 ≤ C ^ 1000 := by
  have hpower : n ^ (1000 * t) ≤ C ^ 1000 * U ^ 1000 := by
    simpa only [mul_pow, ← pow_mul, Nat.mul_comm t 1000] using
      Nat.pow_le_pow_left hlower 1000
  have hcancel : U ^ 1000 * Y ^ 10 ≤ U ^ 1000 * C ^ 1000 := by
    calc
      _ ≤ n ^ (1000 * t) := hcapacity
      _ ≤ C ^ 1000 * U ^ 1000 := hpower
      _ = _ := Nat.mul_comm _ _
  exact Nat.le_of_mul_le_mul_left hcancel (Nat.pow_pos hU)

end Math.B699.CriticalPadeHeight

end HeightMember000
/- Frozen member 1 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\CriticalPadeHeight\Components.lean 650651a2cadc6a7604ac21f7084bfcc970b040f8cc4b1ec2439f7c3efb6d8341 -/
section HeightMember001



/-! Complete uncompiled candidate: actual complete binomial components and finite products. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.CriticalPadeHeight
open B699LowIndex B699LargePrimeStructure

/-- Complete binomial p-power, also when its valuation is zero. -/
def primeComponent (n i p : ℕ) : ℕ := p ^ ((n.choose i).factorization p)

theorem primeComponent_pos (n i p : ℕ) (hp : p.Prime) :
    0 < primeComponent n i p := Nat.pow_pos hp.pos

theorem primeComponent_le {n i p : ℕ} (hn : 0 < n) :
    primeComponent n i p ≤ n := Nat.pow_factorization_choose_le hn

theorem smallPrimePart_eq_product (n i : ℕ) :
    smallPrimePart n i = ((Finset.range i).filter Nat.Prime).prod (primeComponent n i) := by
  exact small_prime_part_eq_prod_small_primes n i

theorem smallPrimePart_pos (n i : ℕ) : 0 < smallPrimePart n i := by
  rw [smallPrimePart_eq_product]
  apply Finset.prod_pos
  intro p hp
  exact primeComponent_pos n i p (Finset.mem_filter.mp hp).2

/-- Drop only the extra index valuation; retain the whole original binomial power. -/
theorem exists_prime_window {n i p : ℕ} (hi : 1 ≤ i) (hin : i ≤ n) (hp : p.Prime) :
    ∃ a C : ℕ, a < i ∧ 1 ≤ C ∧ primeComponent n i p * C = n - a := by
  obtain ⟨a, ha, hraw⟩ := binomial_prime_power_localization hi hin hp
  have hsubpower : primeComponent n i p ∣
      p ^ ((n.choose i).factorization p + i.factorization p) := by
    unfold primeComponent
    exact Nat.pow_dvd_pow p (by omega)
  obtain ⟨C, hC⟩ := Nat.dvd_trans hsubpower hraw
  have hCpos : 0 < C := by
    apply Nat.pos_of_ne_zero
    intro hz
    rw [hz, Nat.mul_zero] at hC
    omega
  exact ⟨a, C, ha, by omega, hC.symm⟩

theorem component_cofactor_capacity {n i p C Y : ℕ}
    (hproduct : primeComponent n i p * C ≤ n) (hcofactor : Y ^ 10 ≤ C ^ 1000) :
    (primeComponent n i p) ^ 1000 * Y ^ 10 ≤ n ^ 1000 := by
  calc
    _ ≤ (primeComponent n i p) ^ 1000 * C ^ 1000 := Nat.mul_le_mul_left _ hcofactor
    _ = (primeComponent n i p * C) ^ 1000 := (mul_pow _ _ _).symm
    _ ≤ n ^ 1000 := Nat.pow_le_pow_left hproduct 1000

/-- One distinguished component carries the saving; every remaining full p-power is at most n. -/
theorem smallPrimePart_capacity {n i p Y : ℕ} (hn : 0 < n)
    (hp : p.Prime) (hpi : p < i)
    (hcapacity : (primeComponent n i p) ^ 1000 * Y ^ 10 ≤ n ^ 1000) :
    (smallPrimePart n i) ^ 1000 * Y ^ 10 ≤ n ^ (1000 * smallPrimeCount i) := by
  classical
  let S := (Finset.range i).filter Nat.Prime
  let f := primeComponent n i
  have hpS : p ∈ S := Finset.mem_filter.mpr ⟨Finset.mem_range.mpr hpi, hp⟩
  have hcard : (S.erase p).card = S.card - 1 := Finset.card_erase_of_mem hpS
  have hcardpos : 1 ≤ S.card := Finset.card_pos.mpr ⟨p, hpS⟩
  have hrest : (S.erase p).prod f ≤ n ^ (S.card - 1) := by
    simpa only [hcard] using Finset.prod_le_pow_card (S.erase p) f n
      (fun q _ ↦ primeComponent_le (i := i) (p := q) hn)
  have hrestpower : ((S.erase p).prod f) ^ 1000 ≤ n ^ ((S.card - 1) * 1000) := by
    simpa only [← pow_mul] using Nat.pow_le_pow_left hrest 1000
  have hsplit : smallPrimePart n i = f p * (S.erase p).prod f := by
    calc
      _ = S.prod f := smallPrimePart_eq_product n i
      _ = _ := (Finset.mul_prod_erase S f hpS).symm
  calc
    (smallPrimePart n i) ^ 1000 * Y ^ 10 =
        (f p ^ 1000 * Y ^ 10) * ((S.erase p).prod f) ^ 1000 := by
      rw [hsplit, mul_pow]
      ring
    _ ≤ n ^ 1000 * ((S.erase p).prod f) ^ 1000 := Nat.mul_le_mul_right _ hcapacity
    _ ≤ n ^ 1000 * n ^ ((S.card - 1) * 1000) := Nat.mul_le_mul_left _ hrestpower
    _ = n ^ (1000 * S.card) := by
      rw [← pow_add]
      congr 1
      omega
    _ = n ^ (1000 * smallPrimeCount i) := rfl

end Math.B699.CriticalPadeHeight

end HeightMember001
/- Frozen member 2 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveFinal\RateBasis.lean 8b5523c06f29a23658ec2f9ace7976afb1f8980584adf907b08173adb5b49abe -/
section HeightMember002





/-! UNCOMPILED. Only the 32nd-power integer certificate is kernel-decided.
All 192nd/329th powers below stay symbolic. The local depth cap is a resource limit. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveFinalConsumers

def rateNumerator : ℕ := 83682878107040006334695941930360399789273674382573568
def rateDenominator : ℕ := 80167724078165772891757631585792600333690643310546875
def rateRational : ℚ := (rateNumerator : ℚ) / (rateDenominator : ℚ)

theorem rate_denominator_pos : 0 < rateDenominator := by decide
theorem rate_numerator_ge_denominator : rateDenominator ≤ rateNumerator := by decide

set_option maxRecDepth 8192 in
theorem rate_thirtytwo_integer :
    2 * rateDenominator ^ 32 ≤ rateNumerator ^ 32 := by decide

theorem rate_denominator_cast_pos : (0 : ℚ) < (rateDenominator : ℚ) := by
  exact_mod_cast rate_denominator_pos

theorem rateRational_ge_one : (1 : ℚ) ≤ rateRational := by
  unfold rateRational
  apply (le_div_iff₀ rate_denominator_cast_pos).mpr
  have h : (rateDenominator : ℚ) ≤ (rateNumerator : ℚ) := by
    exact_mod_cast rate_numerator_ge_denominator
  simpa only [one_mul] using h

theorem rateRational_thirtytwo_ge_two : (2 : ℚ) ≤ rateRational ^ 32 := by
  unfold rateRational
  rw [div_pow]
  apply (le_div_iff₀ (pow_pos rate_denominator_cast_pos 32)).mpr
  exact_mod_cast rate_thirtytwo_integer

theorem rateRational_pow329_gt_48 : (48 : ℚ) < rateRational ^ 329 := by
  have h64 : (64 : ℚ) ≤ rateRational ^ 192 := by
    calc
      (64 : ℚ) = (2 : ℚ) ^ 6 := by norm_num
      _ ≤ (rateRational ^ 32) ^ 6 :=
        pow_le_pow_left₀ (by norm_num : (0 : ℚ) ≤ 2) rateRational_thirtytwo_ge_two 6
      _ = rateRational ^ 192 := by rw [← pow_mul]
  exact lt_of_lt_of_le (by norm_num : (48 : ℚ) < 64)
    (h64.trans (pow_le_pow_right₀ rateRational_ge_one (by decide : 192 ≤ 329)))

end Math.B699.I11TwoFiveFinalConsumers

end HeightMember002
/- Frozen member 3 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveNumeric\Basis.lean 5448c6b09ac9bc687991685bffd1f3548e835cddbcef034c6bf9151d832ae65f -/
section HeightMember003


/-! Uncompiled (2,5) selector candidate. Short basis decisions only; no
large J or selector conclusion is kernel-reduced directly here. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 4096

namespace Math.B699.I11TwoFiveNumeric

def certificateZ : ℕ := 115572769905797
def selectorM : ℕ := 329
def heightH : ℕ := 15359

theorem basis_two_lower : (2 : ℕ) ^ 11959 ≤ certificateZ ^ 256 := by
  set_option exponentiation.threshold 11960 in
    decide

theorem basis_two_upper : certificateZ ^ 256 ≤ (2 : ℕ) ^ 11960 := by
  set_option exponentiation.threshold 11960 in
    decide

theorem basis_five : (5 : ℕ) ^ 4096 ≤ (2 : ℕ) ^ 9511 := by
  set_option exponentiation.threshold 9511 in
    decide

/-- The p=2 short basis is the small equality used by the selector bridge. -/
theorem basis_two_unit : (2 : ℕ) ^ 1 ≤ (2 : ℕ) ^ 1 := by
  decide

end Math.B699.I11TwoFiveNumeric

#print axioms Math.B699.I11TwoFiveNumeric.basis_two_lower
#print axioms Math.B699.I11TwoFiveNumeric.basis_two_upper
#print axioms Math.B699.I11TwoFiveNumeric.basis_five
#print axioms Math.B699.I11TwoFiveNumeric.basis_two_unit

end HeightMember003
