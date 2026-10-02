import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».critical.BaseAudit
import Lean.Elab.Tactic.Omega
import Mathlib.Algebra.Field.Rat
import Mathlib.Algebra.GCDMonoid.Finset
import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Algebra.Order.Group.Unbundled.Int
import Mathlib.Algebra.Order.GroupWithZero.Basic
import Mathlib.Algebra.Order.Ring.Cast
import Mathlib.Algebra.Order.Ring.Pow
import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Algebra.Polynomial.BigOperators
import Mathlib.Algebra.Polynomial.Coeff
import Mathlib.Algebra.Polynomial.Eval.Defs
import Mathlib.Algebra.Polynomial.Roots
import Mathlib.Algebra.Ring.Commute
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Data.Nat.Choose.Factorization
import Mathlib.Data.Nat.Choose.Sum
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Data.Nat.Find
import Mathlib.Data.Rat.Cast.Order
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring
set_option Elab.async false
/- Frozen source member 0: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\CriticalPadeHeight\Structure.lean SHA256 03b78d96572bdd51be29c218ab404a0e34d6e4f27660a23ce6a9a4c81ae5c9cc -/
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
/- Frozen source member 1: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\CriticalPadeHeight\Components.lean SHA256 650651a2cadc6a7604ac21f7084bfcc970b040f8cc4b1ec2439f7c3efb6d8341 -/
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
/- Frozen source member 2: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveFinal\RateBasis.lean SHA256 8b5523c06f29a23658ec2f9ace7976afb1f8980584adf907b08173adb5b49abe -/
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
/- Frozen source member 3: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveNumeric\Basis.lean SHA256 5448c6b09ac9bc687991685bffd1f3548e835cddbcef034c6bf9151d832ae65f -/
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
/- Frozen source member 4: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\DiscreteSelector\ShortPowerBounds.lean SHA256 d22a95a35813976ace68c45bcd2c61c8b25b2236a00834c2d0f33c489315fea6 -/
section HeightMember004



/-!
UNCOMPILED CANDIDATE. Two short dyadic basis inequalities plus small exponent
comparisons imply the three capacity conditions. There are no five-row data
instances, logarithms, or computations of the original enormous powers here.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.DiscretePadeSelector

theorem rate_from_short_bases (p Z N alpha a b u v : ℕ)
    (hb : 0 < b) (hv : 0 < v)
    (hp : p ^ b ≤ 2 ^ a) (hZ : 2 ^ u ≤ Z ^ v)
    (hexponent : a * v * N ≤ u * b * alpha) : p ^ N ≤ Z ^ alpha := by
  have hpowered : (p ^ N) ^ (b * v) ≤ (Z ^ alpha) ^ (b * v) := by
    calc
      _ = (p ^ b) ^ (v * N) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
      _ ≤ (2 ^ a) ^ (v * N) := Nat.pow_le_pow_left hp (v * N)
      _ = 2 ^ (a * v * N) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
      _ ≤ 2 ^ (u * b * alpha) := Nat.pow_le_pow_right (by decide) hexponent
      _ = (2 ^ u) ^ (b * alpha) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
      _ ≤ (Z ^ v) ^ (b * alpha) := Nat.pow_le_pow_left hZ (b * alpha)
      _ = (Z ^ alpha) ^ (b * v) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
  exact Iff.mp (Nat.pow_le_pow_iff_left (Nat.ne_of_gt (Nat.mul_pos hb hv))) hpowered

theorem base_from_short_basis (p N alpha M H a b : ℕ)
    (hb : 0 < b) (hp : p ^ b ≤ 2 ^ a)
    (hexponent : a * N * M ≤ b * H * alpha) :
    (p ^ N) ^ M ≤ (2 ^ H) ^ alpha := by
  have hpowered : ((p ^ N) ^ M) ^ b ≤ ((2 ^ H) ^ alpha) ^ b := by
    calc
      _ = (p ^ b) ^ (N * M) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
      _ ≤ (2 ^ a) ^ (N * M) := Nat.pow_le_pow_left hp (N * M)
      _ = 2 ^ (a * N * M) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
      _ ≤ 2 ^ (b * H * alpha) := Nat.pow_le_pow_right (by decide) hexponent
      _ = ((2 ^ H) ^ alpha) ^ b := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
  exact Iff.mp (Nat.pow_le_pow_iff_left (Nat.ne_of_gt hb)) hpowered

theorem lookahead_from_short_bases (p Z N alpha M a b u v : ℕ)
    (hb : 0 < b) (hv : 0 < v)
    (hp : p ^ b ≤ 2 ^ a) (hZ : 2 ^ u ≤ Z ^ v)
    (hexponent : 2 * alpha * b * v + a * v * N * (M + 1) ≤ u * b * alpha * M) :
    4 ^ alpha * (p ^ N) ^ (M + 1) ≤ Z ^ (alpha * M) := by
  have hleft :
      (4 ^ alpha * (p ^ N) ^ (M + 1)) ^ (b * v) =
        2 ^ (2 * alpha * b * v) * (p ^ b) ^ (v * N * (M + 1)) := by
    rw [Nat.mul_pow]
    congr 1
    · change (((2 : ℕ) ^ 2) ^ alpha) ^ (b * v) = _
      simp only [← Nat.pow_mul] <;> congr 1 <;> ring
    · simp only [← Nat.pow_mul] <;> congr 1 <;> ring
  have hpowered :
      (4 ^ alpha * (p ^ N) ^ (M + 1)) ^ (b * v) ≤
        (Z ^ (alpha * M)) ^ (b * v) := by
    calc
      _ = 2 ^ (2 * alpha * b * v) * (p ^ b) ^ (v * N * (M + 1)) := hleft
      _ ≤ 2 ^ (2 * alpha * b * v) * (2 ^ a) ^ (v * N * (M + 1)) :=
        Nat.mul_le_mul_left _ (Nat.pow_le_pow_left hp (v * N * (M + 1)))
      _ = 2 ^ (2 * alpha * b * v + a * v * N * (M + 1)) := by
        simp only [← Nat.pow_mul, ← Nat.pow_add] <;> congr 1 <;> ring
      _ ≤ 2 ^ (u * b * alpha * M) := Nat.pow_le_pow_right (by decide) hexponent
      _ = (2 ^ u) ^ (b * alpha * M) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
      _ ≤ (Z ^ v) ^ (b * alpha * M) := Nat.pow_le_pow_left hZ (b * alpha * M)
      _ = (Z ^ (alpha * M)) ^ (b * v) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
  exact Iff.mp (Nat.pow_le_pow_iff_left (Nat.ne_of_gt (Nat.mul_pos hb hv))) hpowered

/-- The short exponent certificate produces exactly the three selector inputs. -/
theorem conditions_from_short_bases (p Z N alpha M H a b u v : ℕ)
    (hb : 0 < b) (hv : 0 < v)
    (hp : p ^ b ≤ 2 ^ a) (hZ : 2 ^ u ≤ Z ^ v)
    (hrate : a * v * N ≤ u * b * alpha)
    (hbase : a * N * M ≤ b * H * alpha)
    (hlookahead : 2 * alpha * b * v + a * v * N * (M + 1) ≤ u * b * alpha * M) :
    p ^ N ≤ Z ^ alpha ∧
      (p ^ N) ^ M ≤ (2 ^ H) ^ alpha ∧
      4 ^ alpha * (p ^ N) ^ (M + 1) ≤ Z ^ (alpha * M) := by
  exact ⟨rate_from_short_bases p Z N alpha a b u v hb hv hp hZ hrate,
    base_from_short_basis p N alpha M H a b hb hp hbase,
    lookahead_from_short_bases p Z N alpha M a b u v hb hv hp hZ hlookahead⟩

end Math.B699.DiscretePadeSelector

#print axioms Math.B699.DiscretePadeSelector.rate_from_short_bases
#print axioms Math.B699.DiscretePadeSelector.base_from_short_basis
#print axioms Math.B699.DiscretePadeSelector.lookahead_from_short_bases
#print axioms Math.B699.DiscretePadeSelector.conditions_from_short_bases

end HeightMember004
/- Frozen source member 5: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveNumeric\Selector.lean SHA256 e31007e81c1ed5f0cd67beab0a86a00d1446a747f4513768826bd6f1eccd9dbd -/
section HeightMember005



/-! Uncompiled (2,5) selector candidate. The three p/q conditions are derived
from ShortPowerBounds; no direct J=2^35000 or J=5^15000 reduction is used.
The qRate^329 > 48 certificate is intentionally out of scope. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 4096

namespace Math.B699.I11TwoFiveNumeric
open Math.B699.DiscretePadeSelector

private theorem two_pow_add_two (k : ℕ) : (2 : ℕ) ^ (k + 2) = 4 * (2 : ℕ) ^ k := by
  calc
    (2 : ℕ) ^ (k + 2) = (2 : ℕ) ^ k * 2 ^ 2 := Nat.pow_add 2 k 2
    _ = (2 : ℕ) ^ k * 4 := by rw [show (2 : ℕ) ^ 2 = 4 by decide]
    _ = 4 * (2 : ℕ) ^ k := Nat.mul_comm _ _

theorem predecessor : certificateZ ^ (329 - 1) ≤ 4 * (2 : ℕ) ^ 15359 := by
  have h := base_from_short_basis certificateZ 1 1 328 15361 11960 256
    (by decide)
    (by
      set_option exponentiation.threshold 11960 in
        exact basis_two_upper)
    (by decide)
  have h328 : certificateZ ^ 328 ≤ (2 : ℕ) ^ 15361 := by
    simpa only [Nat.pow_one] using h
  calc
    certificateZ ^ (329 - 1) = certificateZ ^ 328 := rfl
    _ ≤ (2 : ℕ) ^ 15361 := h328
    _ = 4 * (2 : ℕ) ^ 15359 := two_pow_add_two 15359

theorem p_conditions : (2 : ℕ) ^ 35000 ≤ certificateZ ^ 752 ∧
    ((2 : ℕ) ^ 35000) ^ 329 ≤ ((2 : ℕ) ^ 15359) ^ 752 ∧
    (4 : ℕ) ^ 752 * (2 ^ 35000) ^ (329 + 1) ≤
      certificateZ ^ (752 * 329) := by
  exact conditions_from_short_bases 2 certificateZ 35000 752 329 15359
    1 1 11959 256
    (by decide) (by decide)
    (by
      set_option exponentiation.threshold 1 in
        exact basis_two_unit)
    (by
      set_option exponentiation.threshold 11960 in
        exact basis_two_lower)
    (by decide) (by decide) (by decide)

theorem q_conditions : (5 : ℕ) ^ 15000 ≤ certificateZ ^ 748 ∧
    ((5 : ℕ) ^ 15000) ^ 329 ≤ ((2 : ℕ) ^ 15359) ^ 748 ∧
    (4 : ℕ) ^ 748 * (5 ^ 15000) ^ (329 + 1) ≤
      certificateZ ^ (748 * 329) := by
  exact conditions_from_short_bases 5 certificateZ 15000 748 329 15359
    9511 4096 11959 256
    (by decide) (by decide)
    (by
      set_option exponentiation.threshold 9511 in
        exact basis_five)
    (by
      set_option exponentiation.threshold 11960 in
        exact basis_two_lower)
    (by decide) (by decide) (by decide)

theorem p_rate : (2 : ℕ) ^ 35000 ≤ certificateZ ^ 752 := p_conditions.1
theorem p_base : ((2 : ℕ) ^ 35000) ^ 329 ≤ ((2 : ℕ) ^ 15359) ^ 752 :=
  p_conditions.2.1
theorem p_lookahead : (4 : ℕ) ^ 752 * (2 ^ 35000) ^ (329 + 1) ≤
    certificateZ ^ (752 * 329) := p_conditions.2.2

theorem q_rate : (5 : ℕ) ^ 15000 ≤ certificateZ ^ 748 := q_conditions.1
theorem q_base : ((5 : ℕ) ^ 15000) ^ 329 ≤ ((2 : ℕ) ^ 15359) ^ 748 :=
  q_conditions.2.1
theorem q_lookahead : (4 : ℕ) ^ 748 * (5 ^ 15000) ^ (329 + 1) ≤
    certificateZ ^ (748 * 329) := q_conditions.2.2

end Math.B699.I11TwoFiveNumeric

#print axioms Math.B699.I11TwoFiveNumeric.predecessor
#print axioms Math.B699.I11TwoFiveNumeric.p_conditions
#print axioms Math.B699.I11TwoFiveNumeric.q_conditions
#print axioms Math.B699.I11TwoFiveNumeric.p_rate
#print axioms Math.B699.I11TwoFiveNumeric.p_base
#print axioms Math.B699.I11TwoFiveNumeric.p_lookahead
#print axioms Math.B699.I11TwoFiveNumeric.q_rate
#print axioms Math.B699.I11TwoFiveNumeric.q_base
#print axioms Math.B699.I11TwoFiveNumeric.q_lookahead

end HeightMember005
/- Frozen source member 6: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\DiscreteSelector\LeastExponent.lean SHA256 a2379bb7bcc693e63b171b53a5b34fa155d172fec1eeaafb85a6ff25203548a1 -/
section HeightMember006



/-!
UNCOMPILED CANDIDATE. The actual least exponent with 4*Y < Z^m, followed by
two-sided capacity at that same m. Only Nat arithmetic is used.
The existence witness 4*Y is not selected or evaluated as a huge power.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.DiscretePadeSelector

theorem exists_power_above_four_mul (Z Y : ℕ) (hZ : 1 < Z) :
    ∃ m : ℕ, 4 * Y < Z ^ m := by
  exact ⟨4 * Y, Nat.lt_pow_self hZ⟩

def leastExponent (Z Y : ℕ) (hZ : 1 < Z) : ℕ :=
  Nat.find (exists_power_above_four_mul Z Y hZ)

theorem leastExponent_threshold (Z Y : ℕ) (hZ : 1 < Z) :
    4 * Y < Z ^ leastExponent Z Y hZ := by
  exact Nat.find_spec (exists_power_above_four_mul Z Y hZ)

theorem leastExponent_minimal (Z Y : ℕ) (hZ : 1 < Z)
    {k : ℕ} (hk : k < leastExponent Z Y hZ) : Z ^ k ≤ 4 * Y := by
  exact Nat.le_of_not_gt (Nat.find_min (exists_power_above_four_mul Z Y hZ) hk)

theorem leastExponent_pos (Z Y : ℕ) (hZ : 1 < Z) (hY : 0 < Y) :
    0 < leastExponent Z Y hZ := by
  apply Nat.pos_of_ne_zero
  intro hz
  have hthreshold := leastExponent_threshold Z Y hZ
  rw [hz, Nat.pow_zero] at hthreshold
  omega

theorem leastExponent_previous (Z Y : ℕ) (hZ : 1 < Z) (hY : 0 < Y) :
    Z ^ (leastExponent Z Y hZ - 1) ≤ 4 * Y := by
  have hpos := leastExponent_pos Z Y hZ hY
  exact leastExponent_minimal Z Y hZ (by omega)

theorem leastExponent_lower_bound (Z Y0 Y M : ℕ) (hZ : 1 < Z)
    (hY : Y0 ≤ Y) (hM : 0 < M) (hprevious : Z ^ (M - 1) ≤ 4 * Y0) :
    M ≤ leastExponent Z Y hZ := by
  apply Nat.le_of_not_gt
  intro h
  have hsmall : leastExponent Z Y hZ ≤ M - 1 := by omega
  have hpower : Z ^ leastExponent Z Y hZ ≤ Z ^ (M - 1) :=
    Nat.pow_le_pow_right (by omega) hsmall
  have hupper : Z ^ leastExponent Z Y hZ ≤ 4 * Y :=
    Nat.le_trans hpower (Nat.le_trans hprevious (Nat.mul_le_mul_left 4 hY))
  exact Nat.not_le_of_gt (leastExponent_threshold Z Y hZ) hupper

theorem leastExponent_le_of_threshold (Z Y M : ℕ) (hZ : 1 < Z)
    (hthreshold : 4 * Y < Z ^ M) : leastExponent Z Y hZ ≤ M := by
  exact Nat.find_min' (exists_power_above_four_mul Z Y hZ) hthreshold

theorem leastExponent_eq_of_bracket (Z Y M : ℕ) (hZ : 1 < Z)
    (hM : 0 < M) (hprevious : Z ^ (M - 1) ≤ 4 * Y)
    (hthreshold : 4 * Y < Z ^ M) : leastExponent Z Y hZ = M := by
  exact Nat.le_antisymm
    (leastExponent_le_of_threshold Z Y M hZ hthreshold)
    (leastExponent_lower_bound Z Y Y M hZ (Nat.le_refl Y) hM hprevious)

/-- Extend from M+1 using the rate, with the constant 4^alpha retained. -/
theorem lookahead_rate_extend (Z J alpha M k : ℕ)
    (hrate : J ≤ Z ^ alpha)
    (hlookahead : 4 ^ alpha * J ^ (M + 1) ≤ Z ^ (alpha * M)) :
    4 ^ alpha * J ^ (M + 1 + k) ≤ Z ^ (alpha * (M + k)) := by
  calc
    _ = (4 ^ alpha * J ^ (M + 1)) * J ^ k := by
      simp only [Nat.pow_add, Nat.mul_assoc]
    _ ≤ Z ^ (alpha * M) * (Z ^ alpha) ^ k :=
      Nat.mul_le_mul hlookahead (Nat.pow_le_pow_left hrate k)
    _ = Z ^ (alpha * (M + k)) := by
      simp only [← Nat.pow_mul, ← Nat.pow_add, Nat.mul_add]

/-- The elementary two-branch argument, before substituting the actual selector. -/
theorem capacity_of_previous_bound (Z J alpha M m Y0 Y : ℕ)
    (hY : Y0 ≤ Y) (hMm : M ≤ m) (hprevious : Z ^ (m - 1) ≤ 4 * Y)
    (hrate : J ≤ Z ^ alpha) (hbase : J ^ M ≤ Y0 ^ alpha)
    (hlookahead : 4 ^ alpha * J ^ (M + 1) ≤ Z ^ (alpha * M)) :
    J ^ m ≤ Y ^ alpha := by
  by_cases heq : m = M
  · rw [heq]
    exact Nat.le_trans hbase (Nat.pow_le_pow_left hY alpha)
  · let k := m - (M + 1)
    have hm : m = M + 1 + k := by dsimp [k]; omega
    have hpred : m - 1 = M + k := by omega
    have hscaled : 4 ^ alpha * J ^ m ≤ (Z ^ (m - 1)) ^ alpha := by
      calc
        _ = 4 ^ alpha * J ^ (M + 1 + k) := by rw [hm]
        _ ≤ Z ^ (alpha * (M + k)) :=
          lookahead_rate_extend Z J alpha M k hrate hlookahead
        _ = (Z ^ (m - 1)) ^ alpha := by
          rw [hpred, ← Nat.pow_mul, Nat.mul_comm alpha (M + k)]
    have hcombined := Nat.le_trans hscaled (Nat.pow_le_pow_left hprevious alpha)
    have hcancel : 4 ^ alpha * J ^ m ≤ 4 ^ alpha * Y ^ alpha := by
      simpa only [Nat.mul_pow] using hcombined
    exact Nat.le_of_mul_le_mul_left hcancel (Nat.pow_pos (by decide : 0 < (4 : ℕ)))

theorem leastExponent_capacity (Z J alpha M Y0 Y : ℕ) (hZ : 1 < Z)
    (hY0 : 0 < Y0) (hY : Y0 ≤ Y) (hM : 0 < M)
    (hprevious : Z ^ (M - 1) ≤ 4 * Y0)
    (hrate : J ≤ Z ^ alpha) (hbase : J ^ M ≤ Y0 ^ alpha)
    (hlookahead : 4 ^ alpha * J ^ (M + 1) ≤ Z ^ (alpha * M)) :
    J ^ leastExponent Z Y hZ ≤ Y ^ alpha := by
  exact capacity_of_previous_bound Z J alpha M (leastExponent Z Y hZ) Y0 Y
    hY (leastExponent_lower_bound Z Y0 Y M hZ hY hM hprevious)
    (leastExponent_previous Z Y hZ (Nat.lt_of_lt_of_le hY0 hY))
    hrate hbase hlookahead

/-- Both ends use literally the same leastExponent, not separately chosen indices. -/
theorem leastExponent_two_capacities (Z Jp alphaP Jq alphaQ M Y0 Y : ℕ)
    (hZ : 1 < Z) (hY0 : 0 < Y0) (hY : Y0 ≤ Y) (hM : 0 < M)
    (hprevious : Z ^ (M - 1) ≤ 4 * Y0)
    (hrateP : Jp ≤ Z ^ alphaP) (hbaseP : Jp ^ M ≤ Y0 ^ alphaP)
    (hlookaheadP : 4 ^ alphaP * Jp ^ (M + 1) ≤ Z ^ (alphaP * M))
    (hrateQ : Jq ≤ Z ^ alphaQ) (hbaseQ : Jq ^ M ≤ Y0 ^ alphaQ)
    (hlookaheadQ : 4 ^ alphaQ * Jq ^ (M + 1) ≤ Z ^ (alphaQ * M)) :
    Jp ^ leastExponent Z Y hZ ≤ Y ^ alphaP ∧
      Jq ^ leastExponent Z Y hZ ≤ Y ^ alphaQ := by
  exact ⟨leastExponent_capacity Z Jp alphaP M Y0 Y hZ hY0 hY hM hprevious
      hrateP hbaseP hlookaheadP,
    leastExponent_capacity Z Jq alphaQ M Y0 Y hZ hY0 hY hM hprevious
      hrateQ hbaseQ hlookaheadQ⟩

end Math.B699.DiscretePadeSelector

#print axioms Math.B699.DiscretePadeSelector.exists_power_above_four_mul
#print axioms Math.B699.DiscretePadeSelector.leastExponent
#print axioms Math.B699.DiscretePadeSelector.leastExponent_threshold
#print axioms Math.B699.DiscretePadeSelector.leastExponent_minimal
#print axioms Math.B699.DiscretePadeSelector.leastExponent_pos
#print axioms Math.B699.DiscretePadeSelector.leastExponent_previous
#print axioms Math.B699.DiscretePadeSelector.leastExponent_lower_bound
#print axioms Math.B699.DiscretePadeSelector.leastExponent_le_of_threshold
#print axioms Math.B699.DiscretePadeSelector.leastExponent_eq_of_bracket
#print axioms Math.B699.DiscretePadeSelector.lookahead_rate_extend
#print axioms Math.B699.DiscretePadeSelector.capacity_of_previous_bound
#print axioms Math.B699.DiscretePadeSelector.leastExponent_capacity
#print axioms Math.B699.DiscretePadeSelector.leastExponent_two_capacities

end HeightMember006
/- Frozen source member 7: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11Edge\Capacity.lean SHA256 7006611bfa0360bf34f55ee3600da7dd4ebb877e40f57deb5f05a62c84e0492d -/
section HeightMember007



/-! UNCOMPILED CANDIDATE. Capacity forces enough actual prime exponent.
No logarithm, chosen nonminimal exponent, or assumed Padé edge is used. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ActualPadeEdge
open Math.B699.DiscretePadeSelector

theorem small_cofactor_forces_exponent (p e A Y k T weight : ℕ)
    (hp : 0 < p) (hweight : weight ≤ T)
    (hwindow : Y ≤ p ^ e * A) (hsmall : A ^ T < Y ^ weight)
    (hcapacity : (p ^ k) ^ T ≤ Y ^ (T - weight)) : k < e := by
  apply Nat.lt_of_not_ge
  intro he
  have hupper : (p ^ e) ^ T ≤ Y ^ (T - weight) :=
    Nat.le_trans (Nat.pow_le_pow_left (Nat.pow_le_pow_right hp he) T) hcapacity
  have hsmallPower : (p ^ e * A) ^ T < Y ^ T := by
    calc
      _ = (p ^ e) ^ T * A ^ T := Nat.mul_pow _ _ _
      _ < (p ^ e) ^ T * Y ^ weight :=
        Nat.mul_lt_mul_of_pos_left hsmall (Nat.pow_pos (Nat.pow_pos hp))
      _ ≤ Y ^ (T - weight) * Y ^ weight := Nat.mul_le_mul_right _ hupper
      _ = Y ^ T := by
        rw [← Nat.pow_add]
        congr 1
        omega
  exact Nat.not_lt_of_ge (Nat.pow_le_pow_left hwindow T) hsmallPower

theorem least_capacity_forces_exponent
    (p k T weight Z M Y0 Y e A : ℕ) (hp : 0 < p) (hweight : weight ≤ T)
    (hZ : 1 < Z) (hY0 : 0 < Y0) (hY : Y0 ≤ Y) (hM : 0 < M)
    (hprevious : Z ^ (M - 1) ≤ 4 * Y0)
    (hrate : p ^ (k * T) ≤ Z ^ (T - weight))
    (hbase : (p ^ (k * T)) ^ M ≤ Y0 ^ (T - weight))
    (hlookahead : 4 ^ (T - weight) * (p ^ (k * T)) ^ (M + 1) ≤
      Z ^ ((T - weight) * M))
    (hwindow : Y ≤ p ^ e * A) (hsmall : A ^ T < Y ^ weight) :
    k * leastExponent Z Y hZ < e := by
  have hcap := leastExponent_capacity Z (p ^ (k * T)) (T - weight) M Y0 Y
    hZ hY0 hY hM hprevious hrate hbase hlookahead
  have heq : (p ^ (k * leastExponent Z Y hZ)) ^ T =
      (p ^ (k * T)) ^ leastExponent Z Y hZ := by
    simp only [← Nat.pow_mul]
    congr 1
    ring
  exact small_cofactor_forces_exponent p e A Y (k * leastExponent Z Y hZ) T weight
    hp hweight hwindow hsmall (by rw [heq]; exact hcap)

theorem extract_prime_factor (p e k A : ℕ) (hke : k ≤ e) :
    p ^ k * (p ^ (e - k) * A) = p ^ e * A := by
  have hexp : k + (e - k) = e := by omega
  rw [← Nat.mul_assoc, ← Nat.pow_add, hexp]

end Math.B699.I11ActualPadeEdge
#print axioms Math.B699.I11ActualPadeEdge.small_cofactor_forces_exponent
#print axioms Math.B699.I11ActualPadeEdge.least_capacity_forces_exponent
#print axioms Math.B699.I11ActualPadeEdge.extract_prime_factor

end HeightMember007
/- Frozen source member 8: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveEdge\Parameters.lean SHA256 e50b2f55c3ab593b8fce6d85eb0a6ea91c8ca577b502143b967cb770f60d01d2 -/
section HeightMember008


/-! UNCOMPILED. Fixed original two-five selector and shared extraction index. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveScaled
open Math.B699.DiscretePadeSelector

def twoFiveZ : ℕ := 115572769905797
def twoFiveY0 : ℕ := 2 ^ 15359
def twoFiveM : ℕ := 329

theorem twoFiveZ_gt_one : 1 < twoFiveZ := by decide

def twoFiveIndex (Y : ℕ) : ℕ := leastExponent twoFiveZ Y twoFiveZ_gt_one

theorem index_ge_M (Y : ℕ) (hY : twoFiveY0 ≤ Y)
    (hprevious : twoFiveZ ^ (twoFiveM - 1) ≤ 4 * twoFiveY0) :
    twoFiveM ≤ twoFiveIndex Y := by
  exact leastExponent_lower_bound twoFiveZ twoFiveY0 Y twoFiveM
    twoFiveZ_gt_one hY (by decide) hprevious

theorem index_ge_m0 (Y : ℕ) (hY : twoFiveY0 ≤ Y)
    (hprevious : twoFiveZ ^ (twoFiveM - 1) ≤ 4 * twoFiveY0) :
    141 ≤ twoFiveIndex Y := by
  have h := index_ge_M Y hY hprevious
  dsimp only [twoFiveM] at h
  omega

theorem extract_same_index (Y e f A C : ℕ)
    (hY : twoFiveY0 ≤ Y)
    (hprevious : twoFiveZ ^ (twoFiveM - 1) ≤ 4 * twoFiveY0)
    (hrateP : 2 ^ 35000 ≤ twoFiveZ ^ 752)
    (hbaseP : (2 ^ 35000) ^ twoFiveM ≤ twoFiveY0 ^ 752)
    (hlookP : 4 ^ 752 * (2 ^ 35000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (752 * twoFiveM))
    (hrateQ : 5 ^ 15000 ≤ twoFiveZ ^ 748)
    (hbaseQ : (5 ^ 15000) ^ twoFiveM ≤ twoFiveY0 ^ 748)
    (hlookQ : 4 ^ 748 * (5 ^ 15000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (748 * twoFiveM))
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hsmallP : A ^ 1000 < Y ^ 248) (hsmallQ : C ^ 1000 < Y ^ 252) :
    35 * twoFiveIndex Y < e ∧ 15 * twoFiveIndex Y < f := by
  have hY0 : 0 < twoFiveY0 := Nat.pow_pos (by decide : 0 < (2 : ℕ))
  have hM : 0 < twoFiveM := by decide
  constructor
  · have hP := Math.B699.I11ActualPadeEdge.least_capacity_forces_exponent
      2 35 1000 248 twoFiveZ twoFiveM twoFiveY0 Y e A
      (by decide) (by decide) twoFiveZ_gt_one hY0 hY hM
    simp only [show 35 * 1000 = 35000 by decide,
      show 1000 - 248 = 752 by decide] at hP
    exact hP hprevious hrateP hbaseP hlookP hwindowP hsmallP
  · have hQ := Math.B699.I11ActualPadeEdge.least_capacity_forces_exponent
      5 15 1000 252 twoFiveZ twoFiveM twoFiveY0 Y f C
      (by decide) (by decide) twoFiveZ_gt_one hY0 hY hM
    simp only [show 15 * 1000 = 15000 by decide,
      show 1000 - 252 = 748 by decide] at hQ
    exact hQ hprevious hrateQ hbaseQ hlookQ hwindowQ hsmallQ

end Math.B699.I11TwoFiveScaled

end HeightMember008
/- Frozen source member 9: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\PadeInteger.lean SHA256 8aa4bdbd7b3751fe96bd4d953ee68ab5b7fd2fa374cb5ce623d7d460d444044b -/
section HeightMember009









/-!
# Actual integer Padé coefficient arrays and homogeneous values

Source: BFT, February 26, 2007 author manuscript, Lemma 3.1, printed page 9;
source integrals are (3.1)--(3.3). The signed P coefficient below agrees with
the source integral and the previously adopted asymmetric Padé report 4.1.
The fixed PDF's extracted P sum is missing this parity factor; no visual
confirmation of its typesetting is claimed by this file.

All arrays and the content are computed from natural binomial coefficients.
No Padé identity, height validity, or content lower bound is an axiom/input.
This file alone does not identify these polynomials with the integrals.
Candidate only until exact-source compilation and axiom auditing.
-/

namespace Math.B699.PadeConstruction

open scoped BigOperators
open Polynomial

/-- A bounded list of explicit integer coefficients made into a polynomial. -/
noncomputable def coefficientPolynomial (n : ℕ) (a : ℕ → ℤ) : ℤ[X] :=
  ∑ r ∈ Finset.range (n + 1), Polynomial.monomial r (a r)

theorem coefficientPolynomial_coeff (n r : ℕ) (a : ℕ → ℤ) :
    (coefficientPolynomial n a).coeff r = if r ≤ n then a r else 0 := by
  classical
  simp [coefficientPolynomial, Polynomial.finsetSum_coeff, Polynomial.coeff_monomial,
    Finset.sum_ite_eq', Nat.lt_succ_iff]

theorem coefficientPolynomial_natDegree_le (n : ℕ) (a : ℕ → ℤ) :
    (coefficientPolynomial n a).natDegree ≤ n := by
  classical
  apply Polynomial.natDegree_sum_le_of_forall_le
  intro r hr
  exact (Polynomial.natDegree_monomial_le (a r)).trans
    (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))

def pCoefficient (A B C r : ℕ) : ℤ :=
  (-1 : ℤ) ^ (C + r) * ((A + B + C + 1).choose r : ℤ) *
    ((A + C - r).choose A : ℤ)

def qMagnitude (A B C r : ℕ) : ℕ :=
  (A + C - r).choose C * (B + r).choose r

def qCoefficient (A B C r : ℕ) : ℤ :=
  (-1 : ℤ) ^ C * (qMagnitude A B C r : ℤ)

def eCoefficient (A B C r : ℕ) : ℤ :=
  (-1 : ℤ) ^ r * ((A + r).choose r : ℤ) *
    ((A + B + C + 1).choose (A + C + r + 1) : ℤ)

noncomputable def pPolynomial (A B C : ℕ) : ℤ[X] :=
  coefficientPolynomial C (pCoefficient A B C)

noncomputable def qPolynomial (A B C : ℕ) : ℤ[X] :=
  coefficientPolynomial A (qCoefficient A B C)

noncomputable def ePolynomial (A B C : ℕ) : ℤ[X] :=
  coefficientPolynomial B (eCoefficient A B C)

/-- The exact source gcd, before the diagonal specialization. -/
def qContent (A B C : ℕ) : ℕ :=
  (Finset.range (A + 1)).gcd (qMagnitude A B C)

@[simp] theorem pPolynomial_coeff_zero (A B C : ℕ) :
    (pPolynomial A B C).coeff 0 = (-1 : ℤ) ^ C * ((A + C).choose A : ℤ) := by
  simp [pPolynomial, coefficientPolynomial_coeff, pCoefficient]

@[simp] theorem qPolynomial_coeff_zero (A B C : ℕ) :
    (qPolynomial A B C).coeff 0 = (-1 : ℤ) ^ C * ((A + C).choose C : ℤ) := by
  simp [qPolynomial, coefficientPolynomial_coeff, qCoefficient, qMagnitude]

@[simp] theorem ePolynomial_coeff_zero (A B C : ℕ) :
    (ePolynomial A B C).coeff 0 =
      ((A + B + C + 1).choose (A + C + 1) : ℤ) := by
  simp [ePolynomial, coefficientPolynomial_coeff, eCoefficient]

theorem qContent_dvd_qMagnitude (A B C r : ℕ) (hr : r ≤ A) :
    qContent A B C ∣ qMagnitude A B C r := by
  exact Finset.gcd_dvd (Finset.mem_range.mpr (Nat.lt_succ_iff.mpr hr))

theorem qContent_dvd_qCoefficient (A B C r : ℕ) (hr : r ≤ A) :
    (qContent A B C : ℤ) ∣ qCoefficient A B C r := by
  obtain ⟨k, hk⟩ := qContent_dvd_qMagnitude A B C r hr
  refine ⟨(-1 : ℤ) ^ C * (k : ℤ), ?_⟩
  simp only [qCoefficient, hk, Nat.cast_mul]
  ring

theorem qContent_pos (A B C : ℕ) : 0 < qContent A B C := by
  have hd := qContent_dvd_qMagnitude A B C 0 (Nat.zero_le A)
  have hp : 0 < qMagnitude A B C 0 := by
    simpa [qMagnitude] using (Nat.choose_pos (show C ≤ A + C by omega))
  apply Nat.pos_of_ne_zero
  intro hz
  rw [hz] at hd
  have hzero : qMagnitude A B C 0 = 0 := Nat.zero_dvd.mp hd
  omega

/-- Natural BFT parameters: u = d*m-delta and B = c*m-u-1.
No integer division occurs in the constructed values. -/
def bftContent (c d m delta : ℕ) : ℕ :=
  qContent (d * m - delta) (c * m - (d * m - delta) - 1) (d * m - delta)

/-- Integer homogeneous evaluation, valid even when the second input is zero. -/
def homogeneousValue (n : ℕ) (a : ℕ → ℤ) (x y : ℤ) : ℤ :=
  ∑ r ∈ Finset.range (n + 1), a r * x ^ r * y ^ (n - r)

/-- Identifies the constructed integer with the denominator-cleared real
polynomial value, for every nonzero denominator. -/
theorem homogeneousValue_cast_eq (n : ℕ) (a : ℕ → ℤ) (x y : ℤ) (hy : y ≠ 0) :
    (homogeneousValue n a x y : ℝ) =
      (y : ℝ) ^ n * (coefficientPolynomial n a).eval₂ (Int.castRingHom ℝ)
        ((x : ℝ) / (y : ℝ)) := by
  classical
  have hyr : (y : ℝ) ≠ 0 := Int.cast_ne_zero.mpr hy
  simp only [homogeneousValue, coefficientPolynomial, Int.cast_sum, Int.cast_mul,
    Int.cast_pow, Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial,
    Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have hle : r ≤ n := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
  have hpow : (y : ℝ) ^ n = (y : ℝ) ^ (n - r) * (y : ℝ) ^ r := by
    rw [← pow_add, Nat.sub_add_cancel hle]
  change (a r : ℝ) * (x : ℝ) ^ r * (y : ℝ) ^ (n - r) =
    (y : ℝ) ^ n * ((a r : ℝ) * ((x : ℝ) / (y : ℝ)) ^ r)
  rw [hpow, div_pow]
  field_simp
  <;> ring

/-- Explicit gcd-normalized Q coefficients, not an existential integrality input. -/
def qNormalizedCoefficient (A B C r : ℕ) : ℤ :=
  qCoefficient A B C r / (qContent A B C : ℤ)

def qNormalizedValue (A B C : ℕ) (x y : ℤ) : ℤ :=
  homogeneousValue A (qNormalizedCoefficient A B C) x y

theorem qContent_mul_normalizedCoefficient (A B C r : ℕ) (hr : r ≤ A) :
    (qContent A B C : ℤ) * qNormalizedCoefficient A B C r = qCoefficient A B C r := by
  rw [qNormalizedCoefficient, mul_comm]
  exact Int.ediv_mul_cancel (qContent_dvd_qCoefficient A B C r hr)

theorem qContent_mul_normalizedValue (A B C : ℕ) (x y : ℤ) :
    (qContent A B C : ℤ) * qNormalizedValue A B C x y =
      homogeneousValue A (qCoefficient A B C) x y := by
  classical
  simp only [qNormalizedValue, homogeneousValue, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  rw [← mul_assoc, ← mul_assoc, qContent_mul_normalizedCoefficient A B C r
    (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))]

/-- The Q value required by BFT Section 7 is now an actual integer; its
relation to the binomial coefficient polynomial is unconditional. -/
theorem qNormalizedValue_cast_eq (A B C : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (qNormalizedValue A B C x y : ℝ) =
      (y : ℝ) ^ A / (qContent A B C : ℝ) *
        (qPolynomial A B C).eval₂ (Int.castRingHom ℝ) ((x : ℝ) / (y : ℝ)) := by
  have hg : (qContent A B C : ℝ) ≠ 0 :=
    Nat.cast_ne_zero.mpr (Nat.ne_of_gt (qContent_pos A B C))
  have hmul := congrArg (fun k : ℤ => (k : ℝ)) (qContent_mul_normalizedValue A B C x y)
  simp only [Int.cast_mul, Int.cast_natCast] at hmul
  rw [homogeneousValue_cast_eq A (qCoefficient A B C) x y hy] at hmul
  dsimp [qPolynomial]
  apply (mul_left_cancel₀ hg)
  calc
    (qContent A B C : ℝ) * (qNormalizedValue A B C x y : ℝ) =
      (y : ℝ) ^ A * (coefficientPolynomial A (qCoefficient A B C)).eval₂
        (Int.castRingHom ℝ) ((x : ℝ) / (y : ℝ)) := hmul
    _ = (qContent A B C : ℝ) * ((y : ℝ) ^ A / (qContent A B C : ℝ) *
        (coefficientPolynomial A (qCoefficient A B C)).eval₂
          (Int.castRingHom ℝ) ((x : ℝ) / (y : ℝ))) := by
      field_simp
      <;> ring

-- Positive source parameters and odd parity: the original integral has P(0)=-2.
example : pCoefficient 1 1 1 0 = -2 := by decide
example : qCoefficient 1 1 1 0 = -2 := by decide
example : eCoefficient 1 1 1 0 = 4 := by decide
example : qContent 1 1 1 = 2 := by decide

#print axioms Math.B699.PadeConstruction.coefficientPolynomial_coeff
#print axioms Math.B699.PadeConstruction.coefficientPolynomial_natDegree_le
#print axioms Math.B699.PadeConstruction.qContent_pos
#print axioms Math.B699.PadeConstruction.qContent_dvd_qCoefficient
#print axioms Math.B699.PadeConstruction.homogeneousValue_cast_eq
#print axioms Math.B699.PadeConstruction.qContent_mul_normalizedValue
#print axioms Math.B699.PadeConstruction.qNormalizedValue_cast_eq

end Math.B699.PadeConstruction

end HeightMember009
/- Frozen source member 10: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Pade\Coefficients.lean SHA256 68b0f3161ba63b2649c193b3f4d526c73a47a9dae2d69e7af8fb933bd8a66899 -/
section HeightMember010


/-!
# Six actual adjacent-coefficient identities without division

All six source identities below are proved from elementary weighted Nat.choose
identities. They are not assumptions. The shifted identities explicitly require
1 <= r or 2 <= r; no negative coefficient is modeled by truncated subtraction.
The same-index identities separately handle r=u by choose(u-2,u-1)=0.

P's unsigned factor is linked to the actual source pCoefficient and polynomial
coefficient by proved equalities. Q uses the accepted qMagnitude definition.
No analysis, factorial-division theorem, Padé identity, or height hypothesis is used.
Candidate pending the parent verifier; this worker does not run Lean.
-/

namespace Math.B699.PadeCoefficientMultiplication

open Math.B699.PadeConstruction

private theorem lower_top_one (n k : ℕ) (hn : 1 ≤ n) :
    (n - 1).choose k * n = n.choose k * (n - k) := by
  have h := Nat.choose_mul_succ_eq (n - 1) k
  rwa [Nat.sub_add_cancel hn] at h

private theorem lower_both_one (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) :
    (n - 1).choose (k - 1) * n = n.choose k * k := by
  have hn : 1 ≤ n := hk.trans hkn
  have h := Nat.add_one_mul_choose_eq (n - 1) (k - 1)
  rw [Nat.sub_add_cancel hn, Nat.sub_add_cancel hk] at h
  calc
    (n - 1).choose (k - 1) * n = n * (n - 1).choose (k - 1) := by ring
    _ = n.choose k * k := h

private theorem lower_bottom_one (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) :
    n.choose (k - 1) * (n - k + 1) = n.choose k * k := by
  have h := Nat.choose_succ_right_eq n (k - 1)
  rw [Nat.sub_add_cancel hk] at h
  have hsub : n - (k - 1) = n - k + 1 := by omega
  rw [hsub] at h
  exact h.symm

private theorem lower_both_two (n k : ℕ) (hk : 2 ≤ k) (hkn : k ≤ n) :
    (n - 2).choose (k - 2) * n * (n - 1) = n.choose k * k * (k - 1) := by
  have h0 := lower_both_one n k (by omega) hkn
  have h1 := lower_both_one (n - 1) (k - 1) (by omega) (by omega)
  have hnsub : n - 1 - 1 = n - 2 := by omega
  have hksub : k - 1 - 1 = k - 2 := by omega
  rw [hnsub, hksub] at h1
  calc
    (n - 2).choose (k - 2) * n * (n - 1) =
        n * ((n - 2).choose (k - 2) * (n - 1)) := by ring
    _ = n * ((n - 1).choose (k - 1) * (k - 1)) := by rw [h1]
    _ = ((n - 1).choose (k - 1) * n) * (k - 1) := by ring
    _ = n.choose k * k * (k - 1) := by rw [h0]

private theorem lower_top_two_bottom_one (n k : ℕ)
    (hn : 2 ≤ n) (hk : 1 ≤ k) (hkn : k ≤ n) :
    (n - 2).choose (k - 1) * n * (n - 1) = n.choose k * k * (n - k) := by
  have h0 := lower_both_one n k hk hkn
  have h1 := lower_top_one (n - 1) (k - 1) (by omega)
  have hnsub : n - 1 - 1 = n - 2 := by omega
  have hdiff : n - 1 - (k - 1) = n - k := by omega
  rw [hnsub, hdiff] at h1
  calc
    (n - 2).choose (k - 1) * n * (n - 1) =
        n * ((n - 2).choose (k - 1) * (n - 1)) := by ring
    _ = n * ((n - 1).choose (k - 1) * (n - k)) := by rw [h1]
    _ = ((n - 1).choose (k - 1) * n) * (n - k) := by ring
    _ = n.choose k * k * (n - k) := by rw [h0]

private theorem lower_bottom_two (n k : ℕ) (hk : 2 ≤ k) (hkn : k ≤ n) :
    n.choose (k - 2) * (n - k + 1) * (n - k + 2) = n.choose k * k * (k - 1) := by
  have h0 := lower_bottom_one n k (by omega) hkn
  have h1 := lower_bottom_one n (k - 1) (by omega) (by omega)
  have hksub : k - 1 - 1 = k - 2 := by omega
  have hdiff : n - (k - 1) + 1 = n - k + 2 := by omega
  rw [hksub, hdiff] at h1
  calc
    n.choose (k - 2) * (n - k + 1) * (n - k + 2) =
        (n.choose (k - 2) * (n - k + 2)) * (n - k + 1) := by ring
    _ = (n.choose (k - 1) * (k - 1)) * (n - k + 1) := by rw [h1]
    _ = (n.choose (k - 1) * (n - k + 1)) * (k - 1) := by ring
    _ = n.choose k * k * (k - 1) := by rw [h0]

private theorem qMagnitude_diagonal (u v r : ℕ) :
    qMagnitude u v u r = (2 * u - r).choose u * (v + r).choose r := by
  simp only [qMagnitude, two_mul]

/-- The actual unsigned factor of the source P coefficient. -/
def sourcePMagnitude (u v r : ℕ) : ℕ :=
  (2 * u + v + 1).choose r * (2 * u - r).choose u

theorem pCoefficient_eq_signed_magnitude (u v r : ℕ) :
    pCoefficient u v u r = (-1 : ℤ) ^ (u + r) * (sourcePMagnitude u v r : ℤ) := by
  have htop : u + v + u + 1 = 2 * u + v + 1 := by omega
  have hdouble : u + u = 2 * u := by omega
  simp only [pCoefficient, sourcePMagnitude, htop, hdouble, Nat.cast_mul]
  ring

theorem pPolynomial_coeff_eq_signed_magnitude (u v r : ℕ) (hr : r ≤ u) :
    (pPolynomial u v u).coeff r = (-1 : ℤ) ^ (u + r) * (sourcePMagnitude u v r : ℤ) := by
  rw [pPolynomial, coefficientPolynomial_coeff, if_pos hr]
  exact pCoefficient_eq_signed_magnitude u v r

theorem qPolynomial_coeff_eq_signed_magnitude (u v r : ℕ) (hr : r ≤ u) :
    (qPolynomial u v u).coeff r = (-1 : ℤ) ^ u * (qMagnitude u v u r : ℤ) := by
  rw [qPolynomial, coefficientPolynomial_coeff, if_pos hr]
  rfl
/-- Q ratio 1, with r=u explicitly handled by an out-of-range choose value. -/
theorem q_same_index (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) :
    qMagnitude (u - 1) (v + 1) (u - 1) r * (2 * u - r) * (2 * u - r - 1) * (v + 1) =
      qMagnitude u v u r * u * (u - r) * (v + r + 1) := by
  by_cases heq : r = u
  · subst r
    have hz : (u - 1 + (u - 1) - u).choose (u - 1) = 0 :=
      Nat.choose_eq_zero_of_lt (by omega)
    simp [qMagnitude, hz]
  · have hcentral := lower_top_two_bottom_one (2 * u - r) u (by omega) (by omega) (by omega)
    have hdiff : 2 * u - r - u = u - r := by omega
    rw [hdiff] at hcentral
    have houter := lower_top_one (v + r + 1) r (by omega)
    have hone : v + r + 1 - 1 = v + r := by omega
    have hv : v + r + 1 - r = v + 1 := by omega
    rw [hone, hv] at houter
    have houter' : (v + 1 + r).choose r * (v + 1) = (v + r).choose r * (v + r + 1) := by
      have ht : v + 1 + r = v + r + 1 := by omega
      simpa only [ht] using houter.symm
    rw [qMagnitude_diagonal, qMagnitude_diagonal]
    have hprev : 2 * (u - 1) - r = 2 * u - r - 2 := by omega
    rw [hprev]
    calc
      (2 * u - r - 2).choose (u - 1) * (v + 1 + r).choose r *
          (2 * u - r) * (2 * u - r - 1) * (v + 1) =
        ((2 * u - r - 2).choose (u - 1) * (2 * u - r) * (2 * u - r - 1)) *
          ((v + 1 + r).choose r * (v + 1)) := by ring
      _ = ((2 * u - r).choose u * u * (u - r)) *
          ((v + r).choose r * (v + r + 1)) := by rw [hcentral, houter']
      _ = (2 * u - r).choose u * (v + r).choose r * u * (u - r) * (v + r + 1) := by ring

/-- Q ratio 2: r>=1 is an explicit necessary domain condition. -/
theorem q_shift_one (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) (hr1 : 1 ≤ r) :
    qMagnitude (u - 1) (v + 1) (u - 1) (r - 1) * (2 * u - r) * (v + 1) =
      qMagnitude u v u r * u * r := by
  have hcentral := lower_both_one (2 * u - r) u (by omega) (by omega)
  have houter := lower_bottom_one (v + r) r hr1 (by omega)
  have hv : v + r - r + 1 = v + 1 := by omega
  rw [hv] at houter
  rw [qMagnitude_diagonal, qMagnitude_diagonal]
  have hprev : 2 * (u - 1) - (r - 1) = 2 * u - r - 1 := by omega
  have hsum : v + 1 + (r - 1) = v + r := by omega
  rw [hprev, hsum]
  calc
    (2 * u - r - 1).choose (u - 1) * (v + r).choose (r - 1) * (2 * u - r) * (v + 1) =
      ((2 * u - r - 1).choose (u - 1) * (2 * u - r)) *
        ((v + r).choose (r - 1) * (v + 1)) := by ring
    _ = ((2 * u - r).choose u * u) * ((v + r).choose r * r) := by rw [hcentral, houter]
    _ = (2 * u - r).choose u * (v + r).choose r * u * r := by ring

/-- Q ratio 3: r>=2 is explicit, including the lower-row u=0 boundary. -/
theorem q_shift_two (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) (hr2 : 2 ≤ r) :
    qMagnitude (u - 2) (v + 2) (u - 2) (r - 2) *
        (2 * u - r) * (2 * u - r - 1) * (v + 1) * (v + 2) =
      qMagnitude u v u r * u * (u - 1) * r * (r - 1) := by
  have hcentral := lower_both_two (2 * u - r) u hu (by omega)
  have houter := lower_bottom_two (v + r) r hr2 (by omega)
  have hv1 : v + r - r + 1 = v + 1 := by omega
  have hv2 : v + r - r + 2 = v + 2 := by omega
  rw [hv1, hv2] at houter
  rw [qMagnitude_diagonal, qMagnitude_diagonal]
  have hprev : 2 * (u - 2) - (r - 2) = 2 * u - r - 2 := by omega
  have hsum : v + 2 + (r - 2) = v + r := by omega
  rw [hprev, hsum]
  calc
    (2 * u - r - 2).choose (u - 2) * (v + r).choose (r - 2) *
        (2 * u - r) * (2 * u - r - 1) * (v + 1) * (v + 2) =
      ((2 * u - r - 2).choose (u - 2) * (2 * u - r) * (2 * u - r - 1)) *
        ((v + r).choose (r - 2) * (v + 1) * (v + 2)) := by ring
    _ = ((2 * u - r).choose u * u * (u - 1)) *
        ((v + r).choose r * r * (r - 1)) := by rw [hcentral, houter]
    _ = (2 * u - r).choose u * (v + r).choose r * u * (u - 1) * r * (r - 1) := by ring

/-- P ratio 1, using the actual unsigned source coefficient. -/
theorem p_same_index (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) :
    sourcePMagnitude (u - 1) (v + 1) r *
        (2 * u + v + 1) * (2 * u - r) * (2 * u - r - 1) =
      sourcePMagnitude u v r * u * (u - r) * (2 * u + v + 1 - r) := by
  by_cases heq : r = u
  · subst r
    have hz : (2 * (u - 1) - u).choose (u - 1) = 0 :=
      Nat.choose_eq_zero_of_lt (by omega)
    simp [sourcePMagnitude, hz]
  · have hcentral := lower_top_two_bottom_one (2 * u - r) u (by omega) (by omega) (by omega)
    have hdiff : 2 * u - r - u = u - r := by omega
    rw [hdiff] at hcentral
    have houter := lower_top_one (2 * u + v + 1) r (by omega)
    unfold sourcePMagnitude
    have hN : 2 * (u - 1) + (v + 1) + 1 = 2 * u + v + 1 - 1 := by omega
    have hL : 2 * (u - 1) - r = 2 * u - r - 2 := by omega
    rw [hN, hL]
    calc
      (2 * u + v + 1 - 1).choose r * (2 * u - r - 2).choose (u - 1) *
          (2 * u + v + 1) * (2 * u - r) * (2 * u - r - 1) =
        ((2 * u + v + 1 - 1).choose r * (2 * u + v + 1)) *
          ((2 * u - r - 2).choose (u - 1) * (2 * u - r) * (2 * u - r - 1)) := by ring
      _ = ((2 * u + v + 1).choose r * (2 * u + v + 1 - r)) *
          ((2 * u - r).choose u * u * (u - r)) := by rw [houter, hcentral]
      _ = (2 * u + v + 1).choose r * (2 * u - r).choose u *
          u * (u - r) * (2 * u + v + 1 - r) := by ring

/-- P ratio 2, explicitly guarded at r>=1. -/
theorem p_shift_one (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) (hr1 : 1 ≤ r) :
    sourcePMagnitude (u - 1) (v + 1) (r - 1) * (2 * u + v + 1) * (2 * u - r) =
      sourcePMagnitude u v r * u * r := by
  have hcentral := lower_both_one (2 * u - r) u (by omega) (by omega)
  have houter := lower_both_one (2 * u + v + 1) r hr1 (by omega)
  unfold sourcePMagnitude
  have hN : 2 * (u - 1) + (v + 1) + 1 = 2 * u + v + 1 - 1 := by omega
  have hL : 2 * (u - 1) - (r - 1) = 2 * u - r - 1 := by omega
  rw [hN, hL]
  calc
    (2 * u + v + 1 - 1).choose (r - 1) * (2 * u - r - 1).choose (u - 1) *
        (2 * u + v + 1) * (2 * u - r) =
      ((2 * u + v + 1 - 1).choose (r - 1) * (2 * u + v + 1)) *
        ((2 * u - r - 1).choose (u - 1) * (2 * u - r)) := by ring
    _ = ((2 * u + v + 1).choose r * r) * ((2 * u - r).choose u * u) := by rw [houter, hcentral]
    _ = (2 * u + v + 1).choose r * (2 * u - r).choose u * u * r := by ring

/-- P ratio 3, explicitly guarded at r>=2. -/
theorem p_shift_two (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) (hr2 : 2 ≤ r) :
    sourcePMagnitude (u - 2) (v + 2) (r - 2) *
        (2 * u + v + 1) * (2 * u + v + 1 - 1) * (2 * u - r) * (2 * u - r - 1) =
      sourcePMagnitude u v r * u * (u - 1) * r * (r - 1) := by
  have hcentral := lower_both_two (2 * u - r) u hu (by omega)
  have houter := lower_both_two (2 * u + v + 1) r hr2 (by omega)
  unfold sourcePMagnitude
  have hN : 2 * (u - 2) + (v + 2) + 1 = 2 * u + v + 1 - 2 := by omega
  have hL : 2 * (u - 2) - (r - 2) = 2 * u - r - 2 := by omega
  rw [hN, hL]
  calc
    (2 * u + v + 1 - 2).choose (r - 2) * (2 * u - r - 2).choose (u - 2) *
        (2 * u + v + 1) * (2 * u + v + 1 - 1) * (2 * u - r) * (2 * u - r - 1) =
      ((2 * u + v + 1 - 2).choose (r - 2) * (2 * u + v + 1) * (2 * u + v + 1 - 1)) *
        ((2 * u - r - 2).choose (u - 2) * (2 * u - r) * (2 * u - r - 1)) := by ring
    _ = ((2 * u + v + 1).choose r * r * (r - 1)) *
        ((2 * u - r).choose u * u * (u - 1)) := by rw [houter, hcentral]
    _ = (2 * u + v + 1).choose r * (2 * u - r).choose u * u * (u - 1) * r * (r - 1) := by ring

#print axioms Math.B699.PadeCoefficientMultiplication.pCoefficient_eq_signed_magnitude
#print axioms Math.B699.PadeCoefficientMultiplication.pPolynomial_coeff_eq_signed_magnitude
#print axioms Math.B699.PadeCoefficientMultiplication.qPolynomial_coeff_eq_signed_magnitude
#print axioms Math.B699.PadeCoefficientMultiplication.q_same_index
#print axioms Math.B699.PadeCoefficientMultiplication.q_shift_one
#print axioms Math.B699.PadeCoefficientMultiplication.q_shift_two
#print axioms Math.B699.PadeCoefficientMultiplication.p_same_index
#print axioms Math.B699.PadeCoefficientMultiplication.p_shift_one
#print axioms Math.B699.PadeCoefficientMultiplication.p_shift_two

end Math.B699.PadeCoefficientMultiplication

end HeightMember010
/- Frozen source member 11: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Pade\Magnitude.lean SHA256 3845911abcc7f13768f9b3796982f98eda9040ea99ca894e68d013be890af5f6 -/
section HeightMember011


/-!
# Actual guarded magnitude recurrences

The six source multiplication identities are called directly. They are a pending
candidate import, not assumptions of the final theorems. All cancellation below
is by an explicitly nonzero integer product; no division is used.
-/

namespace Math.B699.PadeActualRecurrence

open Math.B699.PadeConstruction
open Math.B699.PadeCoefficientMultiplication

def recurrenceN (u : ℕ) : ℤ := (u : ℤ) * ((u : ℤ) - 1)
def recurrenceA (u : ℕ) : ℤ := ((u : ℤ) - 1) * (2 * (u : ℤ) - 1)
def recurrenceB (u v : ℕ) : ℤ := ((v : ℤ) + 2) * (2 * (u : ℤ) + (v : ℤ))

def qCurrent (u v r : ℕ) : ℤ := qMagnitude u v u r
def qPreviousSame (u v r : ℕ) : ℤ := qMagnitude (u - 1) (v + 1) (u - 1) r
def qPreviousOne (u v r : ℕ) : ℤ :=
  if 1 ≤ r then (qMagnitude (u - 1) (v + 1) (u - 1) (r - 1) : ℤ) else 0
def qPreviousTwo (u v r : ℕ) : ℤ :=
  if 2 ≤ r then (qMagnitude (u - 2) (v + 2) (u - 2) (r - 2) : ℤ) else 0

def pCurrent (u v r : ℕ) : ℤ := sourcePMagnitude u v r
def pPreviousSame (u v r : ℕ) : ℤ := sourcePMagnitude (u - 1) (v + 1) r
def pPreviousOne (u v r : ℕ) : ℤ :=
  if 1 ≤ r then (sourcePMagnitude (u - 1) (v + 1) (r - 1) : ℤ) else 0
def pPreviousTwo (u v r : ℕ) : ℤ :=
  if 2 ≤ r then (sourcePMagnitude (u - 2) (v + 2) (r - 2) : ℤ) else 0

theorem recurrenceN_ne_zero (u : ℕ) (hu : 2 ≤ u) : recurrenceN u ≠ 0 := by
  have hui : (2 : ℤ) ≤ (u : ℤ) := by exact_mod_cast hu
  unfold recurrenceN
  exact mul_ne_zero (by omega) (by omega)

private theorem q_clear_integer_product (U V R cur a b c : ℤ)
    (hU : 2 ≤ U) (hV : 0 ≤ V) (hR : R ≤ U)
    (ha : a * (2 * U - R) * (2 * U - R - 1) * (V + 1) =
      cur * U * (U - R) * (V + R + 1))
    (hb : b * (2 * U - R) * (V + 1) = cur * U * R)
    (hc : c * (2 * U - R) * (2 * U - R - 1) * (V + 1) * (V + 2) =
      cur * U * (U - 1) * R * (R - 1)) :
    U * (U - 1) * cur + ((U - 1) * (2 * U - 1)) * b =
      2 * ((U - 1) * (2 * U - 1)) * a + ((V + 2) * (2 * U + V)) * c := by
  let L : ℤ := 2 * U - R
  let D : ℤ := L * (L - 1) * (V + 1) * (V + 2)
  have hL : 0 < L := by dsimp [L]; omega
  have hL1 : 0 < L - 1 := by dsimp [L]; omega
  have hV1 : 0 < V + 1 := by omega
  have hV2 : 0 < V + 2 := by omega
  have hD : D ≠ 0 := ne_of_gt (mul_pos (mul_pos (mul_pos hL hL1) hV1) hV2)
  have hda : D * a = cur * U * (U - R) * (V + R + 1) * (V + 2) := by
    calc
      D * a = (a * (2 * U - R) * (2 * U - R - 1) * (V + 1)) * (V + 2) := by dsimp [D, L]; ring
      _ = cur * U * (U - R) * (V + R + 1) * (V + 2) := by rw [ha]
  have hdb : D * b = cur * U * R * (L - 1) * (V + 2) := by
    calc
      D * b = (b * (2 * U - R) * (V + 1)) * (L - 1) * (V + 2) := by dsimp [D, L]; ring
      _ = cur * U * R * (L - 1) * (V + 2) := by rw [hb]
  have hdc : D * c = cur * U * (U - 1) * R * (R - 1) := by
    calc
      D * c = c * (2 * U - R) * (2 * U - R - 1) * (V + 1) * (V + 2) := by dsimp [D, L]; ring
      _ = cur * U * (U - 1) * R * (R - 1) := hc
  apply mul_left_cancel₀ hD
  calc
    D * (U * (U - 1) * cur + ((U - 1) * (2 * U - 1)) * b) =
      D * U * (U - 1) * cur + ((U - 1) * (2 * U - 1)) * (D * b) := by ring
    _ = D * U * (U - 1) * cur +
      ((U - 1) * (2 * U - 1)) * (cur * U * R * (L - 1) * (V + 2)) := by rw [hdb]
    _ = 2 * ((U - 1) * (2 * U - 1)) * (cur * U * (U - R) * (V + R + 1) * (V + 2)) +
      ((V + 2) * (2 * U + V)) * (cur * U * (U - 1) * R * (R - 1)) := by dsimp [D, L]; ring
    _ = 2 * ((U - 1) * (2 * U - 1)) * (D * a) + ((V + 2) * (2 * U + V)) * (D * c) := by
      rw [hda, hdc]
    _ = D * (2 * ((U - 1) * (2 * U - 1)) * a + ((V + 2) * (2 * U + V)) * c) := by ring

private theorem p_clear_integer_product (U V R cur a b c : ℤ)
    (hU : 2 ≤ U) (hV : 0 ≤ V) (hR : R ≤ U)
    (ha : a * (2 * U + V + 1) * (2 * U - R) * (2 * U - R - 1) =
      cur * U * (U - R) * (2 * U + V + 1 - R))
    (hb : b * (2 * U + V + 1) * (2 * U - R) = cur * U * R)
    (hc : c * (2 * U + V + 1) * (2 * U + V) * (2 * U - R) * (2 * U - R - 1) =
      cur * U * (U - 1) * R * (R - 1)) :
    U * (U - 1) * cur = 2 * ((U - 1) * (2 * U - 1)) * a +
      ((U - 1) * (2 * U - 1)) * b + ((V + 2) * (2 * U + V)) * c := by
  let N : ℤ := 2 * U + V + 1
  let L : ℤ := 2 * U - R
  let D : ℤ := N * (N - 1) * L * (L - 1)
  have hN : 0 < N := by dsimp [N]; omega
  have hN1 : 0 < N - 1 := by dsimp [N]; omega
  have hL : 0 < L := by dsimp [L]; omega
  have hL1 : 0 < L - 1 := by dsimp [L]; omega
  have hD : D ≠ 0 := ne_of_gt (mul_pos (mul_pos (mul_pos hN hN1) hL) hL1)
  have hda : D * a = cur * U * (U - R) * (N - R) * (N - 1) := by
    calc
      D * a = (a * (2 * U + V + 1) * (2 * U - R) * (2 * U - R - 1)) * (N - 1) := by dsimp [D, N, L]; ring
      _ = cur * U * (U - R) * (N - R) * (N - 1) := by rw [ha]
  have hdb : D * b = cur * U * R * (N - 1) * (L - 1) := by
    calc
      D * b = (b * (2 * U + V + 1) * (2 * U - R)) * (N - 1) * (L - 1) := by dsimp [D, N, L]; ring
      _ = cur * U * R * (N - 1) * (L - 1) := by rw [hb]
  have hdc : D * c = cur * U * (U - 1) * R * (R - 1) := by
    calc
      D * c = c * (2 * U + V + 1) * (2 * U + V) * (2 * U - R) * (2 * U - R - 1) := by dsimp [D, N, L]; ring
      _ = cur * U * (U - 1) * R * (R - 1) := hc
  apply mul_left_cancel₀ hD
  calc
    D * (U * (U - 1) * cur) =
      2 * ((U - 1) * (2 * U - 1)) * (cur * U * (U - R) * (N - R) * (N - 1)) +
        ((U - 1) * (2 * U - 1)) * (cur * U * R * (N - 1) * (L - 1)) +
          ((V + 2) * (2 * U + V)) * (cur * U * (U - 1) * R * (R - 1)) := by dsimp [D, N, L]; ring
    _ = 2 * ((U - 1) * (2 * U - 1)) * (D * a) +
        ((U - 1) * (2 * U - 1)) * (D * b) + ((V + 2) * (2 * U + V)) * (D * c) := by
      rw [hda, hdb, hdc]
    _ = D * (2 * ((U - 1) * (2 * U - 1)) * a +
        ((U - 1) * (2 * U - 1)) * b + ((V + 2) * (2 * U + V)) * c) := by ring

/-- Actual Q magnitude recurrence, with the negative shifted contribution
moved to the left. All shifts are explicitly guarded. -/
theorem q_magnitude_recurrence (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) :
    recurrenceN u * qCurrent u v r + recurrenceA u * qPreviousOne u v r =
      2 * recurrenceA u * qPreviousSame u v r + recurrenceB u v * qPreviousTwo u v r := by
  have hL : r ≤ 2 * u := by omega
  have hL1 : 1 ≤ 2 * u - r := by omega
  have hU1 : 1 ≤ u := by omega
  unfold recurrenceN recurrenceA recurrenceB
  apply q_clear_integer_product (u : ℤ) (v : ℤ) (r : ℤ)
  · exact_mod_cast hu
  · exact_mod_cast Nat.zero_le v
  · exact_mod_cast hr
  · have hc := congrArg (fun n : ℕ => (n : ℤ)) (q_same_index u v r hu hr)
    simpa only [qCurrent, qPreviousSame, Nat.cast_mul, Nat.cast_add, Nat.cast_sub hL,
      Nat.cast_sub hL1, Nat.cast_sub hr, Nat.cast_one, Nat.cast_ofNat] using hc
  · by_cases hr1 : 1 ≤ r
    · have hc := congrArg (fun n : ℕ => (n : ℤ)) (q_shift_one u v r hu hr hr1)
      simpa only [qCurrent, qPreviousOne, if_pos hr1, Nat.cast_mul, Nat.cast_add,
        Nat.cast_sub hL, Nat.cast_one, Nat.cast_ofNat] using hc
    · have hz : r = 0 := by omega
      subst r
      simp [qCurrent, qPreviousOne]
  · by_cases hr2 : 2 ≤ r
    · have hr1 : 1 ≤ r := by omega
      have hc := congrArg (fun n : ℕ => (n : ℤ)) (q_shift_two u v r hu hr hr2)
      simpa only [qCurrent, qPreviousTwo, if_pos hr2, Nat.cast_mul, Nat.cast_add,
        Nat.cast_sub hL, Nat.cast_sub hL1, Nat.cast_sub hU1, Nat.cast_sub hr1,
        Nat.cast_one, Nat.cast_ofNat] using hc
    · have hz : r = 0 ∨ r = 1 := by omega
      rcases hz with hz | hz <;> subst r <;> simp [qCurrent, qPreviousTwo]

/-- Actual P magnitude recurrence; every contribution is nonnegative before
the integer cast. Its source coefficient signs are restored in the next module. -/
theorem p_magnitude_recurrence (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) :
    recurrenceN u * pCurrent u v r = 2 * recurrenceA u * pPreviousSame u v r +
      recurrenceA u * pPreviousOne u v r + recurrenceB u v * pPreviousTwo u v r := by
  have hL : r ≤ 2 * u := by omega
  have hL1 : 1 ≤ 2 * u - r := by omega
  have hU1 : 1 ≤ u := by omega
  have hN : 1 ≤ 2 * u + v + 1 := by omega
  have hNr : r ≤ 2 * u + v + 1 := by omega
  unfold recurrenceN recurrenceA recurrenceB
  apply p_clear_integer_product (u : ℤ) (v : ℤ) (r : ℤ)
  · exact_mod_cast hu
  · exact_mod_cast Nat.zero_le v
  · exact_mod_cast hr
  · have hc := congrArg (fun n : ℕ => (n : ℤ)) (p_same_index u v r hu hr)
    simpa only [pCurrent, pPreviousSame, Nat.cast_mul, Nat.cast_add,
      Nat.cast_sub hL, Nat.cast_sub hL1, Nat.cast_sub hr, Nat.cast_sub hNr,
      Nat.cast_one, Nat.cast_ofNat] using hc
  · by_cases hr1 : 1 ≤ r
    · have hc := congrArg (fun n : ℕ => (n : ℤ)) (p_shift_one u v r hu hr hr1)
      simpa only [pCurrent, pPreviousOne, if_pos hr1, Nat.cast_mul, Nat.cast_add,
        Nat.cast_sub hL, Nat.cast_one, Nat.cast_ofNat] using hc
    · have hz : r = 0 := by omega
      subst r
      simp [pCurrent, pPreviousOne]
  · by_cases hr2 : 2 ≤ r
    · have hr1 : 1 ≤ r := by omega
      have hc := congrArg (fun n : ℕ => (n : ℤ)) (p_shift_two u v r hu hr hr2)
      simpa only [pCurrent, pPreviousTwo, if_pos hr2, Nat.cast_mul, Nat.cast_add,
        Nat.cast_sub hN, Nat.cast_sub hL, Nat.cast_sub hL1, Nat.cast_sub hU1,
        Nat.cast_sub hr1, Nat.cast_one, Nat.cast_ofNat, add_sub_cancel_right] using hc
    · have hz : r = 0 ∨ r = 1 := by omega
      rcases hz with hz | hz <;> subst r <;> simp [pCurrent, pPreviousTwo]

#print axioms Math.B699.PadeActualRecurrence.recurrenceN_ne_zero
#print axioms Math.B699.PadeActualRecurrence.q_magnitude_recurrence
#print axioms Math.B699.PadeActualRecurrence.p_magnitude_recurrence

end Math.B699.PadeActualRecurrence

end HeightMember011
/- Frozen source member 12: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Pade\Recurrence.lean SHA256 bc393e8754ac1791757a082fd13bd93fd2a4884ce2fb4ad0413490429149f940 -/
section HeightMember012




/-!
# Common three-term recurrence for the actual source polynomials

The two final theorems concern pPolynomial/qPolynomial themselves. Every
magnitude input is obtained by calling ActualMagnitudeRecurrence, which in turn
calls the six explicit source multiplication proofs. There is no recurrence or
Padé-identity assumption. This entire chain is still a candidate pending Lean.
-/

namespace Math.B699.PadeActualRecurrence

open Polynomial
open Math.B699.PadeConstruction
open Math.B699.PadeCoefficientMultiplication

private theorem sign_previous (u r : ℕ) (hu : 1 ≤ u) :
    (-1 : ℤ) ^ (u - 1 + r) = -((-1 : ℤ) ^ (u + r)) := by
  have he : u + r = (u - 1 + r) + 1 := by omega
  rw [he, pow_succ]
  ring

private theorem q_coeff_zero (u v r : ℕ) (hr : u < r) :
    (qPolynomial u v u).coeff r = 0 := by
  simp only [qPolynomial, coefficientPolynomial_coeff, if_neg (not_le.mpr hr)]

private theorem p_coeff_zero (u v r : ℕ) (hr : u < r) :
    (pPolynomial u v u).coeff r = 0 := by
  simp only [pPolynomial, coefficientPolynomial_coeff, if_neg (not_le.mpr hr)]

private theorem q_previous_coeff (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) :
    (qPolynomial (u - 1) (v + 1) (u - 1)).coeff r =
      -((-1 : ℤ) ^ u) * qPreviousSame u v r := by
  by_cases hm : r ≤ u - 1
  · have hs : (-1 : ℤ) ^ (u - 1) = -((-1 : ℤ) ^ u) := by
      simpa only [Nat.add_zero] using sign_previous u 0 (by omega)
    simpa only [qPreviousSame, hs] using
      (qPolynomial_coeff_eq_signed_magnitude (u - 1) (v + 1) r hm)
  · have he : r = u := by omega
    subst r
    have hz : qMagnitude (u - 1) (v + 1) (u - 1) u = 0 := by
      have hc : (u - 1 + (u - 1) - u).choose (u - 1) = 0 :=
        Nat.choose_eq_zero_of_lt (by omega)
      simp [qMagnitude, hc]
    rw [q_coeff_zero _ _ _ (by omega)]
    simp [qPreviousSame, hz]

private theorem p_previous_coeff (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) :
    (pPolynomial (u - 1) (v + 1) (u - 1)).coeff r =
      -((-1 : ℤ) ^ (u + r)) * pPreviousSame u v r := by
  by_cases hm : r ≤ u - 1
  · simpa only [pPreviousSame, sign_previous u r (by omega)] using
      (pPolynomial_coeff_eq_signed_magnitude (u - 1) (v + 1) r hm)
  · have he : r = u := by omega
    subst r
    have hz : sourcePMagnitude (u - 1) (v + 1) u = 0 := by
      have hc : (2 * (u - 1) - u).choose (u - 1) = 0 := Nat.choose_eq_zero_of_lt (by omega)
      simp [sourcePMagnitude, hc]
    rw [p_coeff_zero _ _ _ (by omega)]
    simp [pPreviousSame, hz]

private theorem q_shift_one_coeff (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) :
    (if 1 ≤ r then (qPolynomial (u - 1) (v + 1) (u - 1)).coeff (r - 1) else 0) =
      -((-1 : ℤ) ^ u) * qPreviousOne u v r := by
  by_cases hs : 1 ≤ r
  · simp only [qPreviousOne, if_pos hs]
    rw [qPolynomial_coeff_eq_signed_magnitude _ _ _ (by omega)]
    have hp : (-1 : ℤ) ^ (u - 1) = -((-1 : ℤ) ^ u) := by
      simpa only [Nat.add_zero] using sign_previous u 0 (by omega)
    rw [hp]
  · simp [qPreviousOne, hs]

private theorem p_shift_one_coeff (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) :
    (if 1 ≤ r then (pPolynomial (u - 1) (v + 1) (u - 1)).coeff (r - 1) else 0) =
      (-1 : ℤ) ^ (u + r) * pPreviousOne u v r := by
  by_cases hs : 1 ≤ r
  · simp only [pPreviousOne, if_pos hs]
    rw [pPolynomial_coeff_eq_signed_magnitude _ _ _ (by omega)]
    have hp : (-1 : ℤ) ^ (u - 1 + (r - 1)) = (-1 : ℤ) ^ (u + r) := by
      rw [neg_one_pow_eq_pow_mod_two (u - 1 + (r - 1)),
        neg_one_pow_eq_pow_mod_two (u + r)]
      congr 1
      omega
    rw [hp]
  · simp [pPreviousOne, hs]

private theorem q_shift_two_coeff (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) :
    (if 2 ≤ r then (qPolynomial (u - 2) (v + 2) (u - 2)).coeff (r - 2) else 0) =
      (-1 : ℤ) ^ u * qPreviousTwo u v r := by
  by_cases hs : 2 ≤ r
  · simp only [qPreviousTwo, if_pos hs]
    rw [qPolynomial_coeff_eq_signed_magnitude _ _ _ (by omega)]
    have hp : (-1 : ℤ) ^ (u - 2) = (-1 : ℤ) ^ u := by
      rw [neg_one_pow_eq_pow_mod_two (u - 2), neg_one_pow_eq_pow_mod_two u]
      congr 1
      omega
    rw [hp]
  · simp [qPreviousTwo, hs]

private theorem p_shift_two_coeff (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) :
    (if 2 ≤ r then (pPolynomial (u - 2) (v + 2) (u - 2)).coeff (r - 2) else 0) =
      (-1 : ℤ) ^ (u + r) * pPreviousTwo u v r := by
  by_cases hs : 2 ≤ r
  · simp only [pPreviousTwo, if_pos hs]
    rw [pPolynomial_coeff_eq_signed_magnitude _ _ _ (by omega)]
    have hp : (-1 : ℤ) ^ (u - 2 + (r - 2)) = (-1 : ℤ) ^ (u + r) := by
      rw [neg_one_pow_eq_pow_mod_two (u - 2 + (r - 2)),
        neg_one_pow_eq_pow_mod_two (u + r)]
      congr 1
      omega
    rw [hp]
  · simp [pPreviousTwo, hs]

private theorem coeff_two_sub_X_mul (F : ℤ[X]) (r : ℕ) :
    ((C (2 : ℤ) - X) * F).coeff r =
      2 * F.coeff r - (if 1 ≤ r then F.coeff (r - 1) else 0) := by
  rw [sub_mul, Polynomial.coeff_sub, Polynomial.coeff_C_mul]
  have hx : (X * F).coeff r = if 1 ≤ r then F.coeff (r - 1) else 0 := by
    simpa only [pow_one] using Polynomial.coeff_X_pow_mul' F 1 r
  rw [hx]

/-- Common recurrence for the actual source Q polynomial; no extra identity
or coefficient-ratio hypotheses remain in its statement. -/
theorem qPolynomial_recurrence (u v : ℕ) (hu : 2 ≤ u) :
    C (recurrenceN u) * qPolynomial u v u =
      -(C (recurrenceA u) * ((C (2 : ℤ) - X) * qPolynomial (u - 1) (v + 1) (u - 1))) +
        C (recurrenceB u v) * (X ^ 2 * qPolynomial (u - 2) (v + 2) (u - 2)) := by
  apply Polynomial.ext
  intro r
  simp only [Polynomial.coeff_C_mul, Polynomial.coeff_add, Polynomial.coeff_neg,
    coeff_two_sub_X_mul, Polynomial.coeff_X_pow_mul']
  by_cases hr : r ≤ u
  · rw [qPolynomial_coeff_eq_signed_magnitude u v r hr,
      q_previous_coeff u v r hu hr, q_shift_one_coeff u v r hu hr, q_shift_two_coeff u v r hu hr]
    have hm := q_magnitude_recurrence u v r hu hr
    dsimp [qCurrent] at hm
    linear_combination ((-1 : ℤ) ^ u) * hm
  · have hr1 : 1 ≤ r := by omega
    have hr2 : 2 ≤ r := by omega
    rw [q_coeff_zero u v r (by omega), q_coeff_zero (u - 1) (v + 1) r (by omega),
      if_pos hr1, q_coeff_zero (u - 1) (v + 1) (r - 1) (by omega),
      if_pos hr2, q_coeff_zero (u - 2) (v + 2) (r - 2) (by omega)]
    ring

/-- Common recurrence for the actual source P polynomial; all boundary
coefficients are handled by the finite support and explicit shift guards. -/
theorem pPolynomial_recurrence (u v : ℕ) (hu : 2 ≤ u) :
    C (recurrenceN u) * pPolynomial u v u =
      -(C (recurrenceA u) * ((C (2 : ℤ) - X) * pPolynomial (u - 1) (v + 1) (u - 1))) +
        C (recurrenceB u v) * (X ^ 2 * pPolynomial (u - 2) (v + 2) (u - 2)) := by
  apply Polynomial.ext
  intro r
  simp only [Polynomial.coeff_C_mul, Polynomial.coeff_add, Polynomial.coeff_neg,
    coeff_two_sub_X_mul, Polynomial.coeff_X_pow_mul']
  by_cases hr : r ≤ u
  · rw [pPolynomial_coeff_eq_signed_magnitude u v r hr,
      p_previous_coeff u v r hu hr, p_shift_one_coeff u v r hu hr, p_shift_two_coeff u v r hu hr]
    have hm := p_magnitude_recurrence u v r hu hr
    dsimp [pCurrent] at hm
    linear_combination ((-1 : ℤ) ^ (u + r)) * hm
  · have hr1 : 1 ≤ r := by omega
    have hr2 : 2 ≤ r := by omega
    rw [p_coeff_zero u v r (by omega), p_coeff_zero (u - 1) (v + 1) r (by omega),
      if_pos hr1, p_coeff_zero (u - 1) (v + 1) (r - 1) (by omega),
      if_pos hr2, p_coeff_zero (u - 2) (v + 2) (r - 2) (by omega)]
    ring

#print axioms Math.B699.PadeActualRecurrence.qPolynomial_recurrence
#print axioms Math.B699.PadeActualRecurrence.pPolynomial_recurrence

end Math.B699.PadeActualRecurrence

end HeightMember012
/- Frozen source member 13: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Pade\RawDet.lean SHA256 f9cbc472834f0fcdb96817f3f7ee4d04b5520b90779764b5c50ce0d26ed4ef22 -/
section HeightMember013


/-!
# Unconditional adjacent determinant for the actual BFT source polynomials

The final source theorem assumes only u>=1 and v:Nat. Its actual P/Q recurrence
comes from the six proved-candidate source multiplication identities. The signed
constant recurrence is proved below from actual weighted choose identities.
No hraw, Padé identity, or common-recurrence assumption is accepted as an input.
This is a complete candidate chain, not a Lean acceptance record.
-/

namespace Math.B699.PadeActualRecurrence

open Polynomial
open Math.B699.PadeConstruction

noncomputable def rawPolynomialDeterminant (u v : ℕ) : ℤ[X] :=
  pPolynomial u v u * qPolynomial (u - 1) (v + 1) (u - 1) -
    pPolynomial (u - 1) (v + 1) (u - 1) * qPolynomial u v u

def determinantMagnitude (u v : ℕ) : ℕ :=
  (2 * u + v).choose (2 * u - 1) * (2 * u).choose u

def determinantConstant (u v : ℕ) : ℤ :=
  (-1 : ℤ) ^ (u + 1) * (determinantMagnitude u v : ℤ)

private theorem choose_lower_both_one (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) :
    (n - 1).choose (k - 1) * n = n.choose k * k := by
  have hn : 1 ≤ n := hk.trans hkn
  have h := Nat.add_one_mul_choose_eq (n - 1) (k - 1)
  rw [Nat.sub_add_cancel hn, Nat.sub_add_cancel hk] at h
  calc
    (n - 1).choose (k - 1) * n = n * (n - 1).choose (k - 1) := by ring
    _ = n.choose k * k := h

private theorem choose_lower_bottom_one (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) :
    n.choose (k - 1) * (n - k + 1) = n.choose k * k := by
  have h := Nat.choose_succ_right_eq n (k - 1)
  rw [Nat.sub_add_cancel hk] at h
  have hd : n - (k - 1) = n - k + 1 := by omega
  rw [hd] at h
  exact h.symm

/-- The actual adjacent constant's unsigned recurrence, from two elementary
weighted binomial relations. No factorial quotient or guessed constant is used. -/
theorem determinantMagnitude_recurrence (u v : ℕ) (hu : 2 ≤ u) :
    u * (u - 1) * determinantMagnitude u v =
      (v + 2) * (2 * u + v) * determinantMagnitude (u - 1) (v + 1) := by
  have ha0 := choose_lower_both_one (2 * u + v) (2 * u - 1) (by omega) (by omega)
  have ha1 := choose_lower_bottom_one (2 * u + v - 1) (2 * u - 1 - 1) (by omega) (by omega)
  have hkm1 : 2 * u - 1 - 1 = 2 * u - 2 := by omega
  have hkm2 : 2 * u - 1 - 1 - 1 = 2 * u - 3 := by omega
  have hfactor : 2 * u + v - 1 - (2 * u - 1 - 1) + 1 = v + 2 := by omega
  rw [hkm1] at ha0
  rw [hkm2, hfactor, hkm1] at ha1
  have ha : (2 * u + v - 1).choose (2 * u - 3) * (2 * u + v) * (v + 2) =
      (2 * u + v).choose (2 * u - 1) * (2 * u - 1) * (2 * u - 2) := by
    calc
      (2 * u + v - 1).choose (2 * u - 3) * (2 * u + v) * (v + 2) =
        ((2 * u + v - 1).choose (2 * u - 3) * (v + 2)) * (2 * u + v) := by ring
      _ = ((2 * u + v - 1).choose (2 * u - 2) * (2 * u - 2)) * (2 * u + v) := by rw [ha1]
      _ = ((2 * u + v - 1).choose (2 * u - 2) * (2 * u + v)) * (2 * u - 2) := by ring
      _ = (2 * u + v).choose (2 * u - 1) * (2 * u - 1) * (2 * u - 2) := by rw [ha0]
  have hb0 := choose_lower_both_one (2 * u - 1) u (by omega) (by omega)
  have hnn : 2 * u - 1 - 1 = 2 * u - 2 := by omega
  rw [hnn] at hb0
  have hb1 := Nat.choose_mul_succ_eq (2 * u - 1) u
  have hns : 2 * u - 1 + 1 = 2 * u := by omega
  have hdiff : 2 * u - u = u := by omega
  rw [hns, hdiff] at hb1
  have hb : (2 * u - 2).choose (u - 1) * 2 * (2 * u - 1) = (2 * u).choose u * u := by
    calc
      (2 * u - 2).choose (u - 1) * 2 * (2 * u - 1) =
        ((2 * u - 2).choose (u - 1) * (2 * u - 1)) * 2 := by ring
      _ = ((2 * u - 1).choose u * u) * 2 := by rw [hb0]
      _ = (2 * u - 1).choose u * (2 * u) := by ring
      _ = (2 * u).choose u * u := hb1
  have htop : 2 * (u - 1) + (v + 1) = 2 * u + v - 1 := by omega
  have hbottom : 2 * (u - 1) - 1 = 2 * u - 3 := by omega
  have hcentral : 2 * (u - 1) = 2 * u - 2 := by omega
  unfold determinantMagnitude
  rw [htop, hbottom, hcentral]
  symm
  calc
    (v + 2) * (2 * u + v) *
        ((2 * u + v - 1).choose (2 * u - 3) * (2 * u - 2).choose (u - 1)) =
      ((2 * u + v - 1).choose (2 * u - 3) * (2 * u + v) * (v + 2)) *
        (2 * u - 2).choose (u - 1) := by ring
    _ = ((2 * u + v).choose (2 * u - 1) * (2 * u - 1) * (2 * u - 2)) *
        (2 * u - 2).choose (u - 1) := by rw [ha]
    _ = (2 * u + v).choose (2 * u - 1) * (u - 1) *
        ((2 * u - 2).choose (u - 1) * 2 * (2 * u - 1)) := by rw [← hcentral]; ring
    _ = (2 * u + v).choose (2 * u - 1) * (u - 1) * ((2 * u).choose u * u) := by rw [hb]
    _ = u * (u - 1) * ((2 * u + v).choose (2 * u - 1) * (2 * u).choose u) := by ring

theorem determinantConstant_recurrence (u v : ℕ) (hu : 2 ≤ u) :
    recurrenceN u * determinantConstant u v =
      -(recurrenceB u v) * determinantConstant (u - 1) (v + 1) := by
  have hu1 : 1 ≤ u := by omega
  have hc := congrArg (fun n : ℕ => (n : ℤ)) (determinantMagnitude_recurrence u v hu)
  simp only [Nat.cast_mul, Nat.cast_add, Nat.cast_sub hu1, Nat.cast_one, Nat.cast_ofNat] at hc
  unfold recurrenceN recurrenceB determinantConstant
  rw [Nat.sub_add_cancel hu1, pow_succ]
  linear_combination -((-1 : ℤ) ^ u) * hc

theorem determinantConstant_ne_zero (u v : ℕ) (hu : 1 ≤ u) : determinantConstant u v ≠ 0 := by
  have ha : (2 * u + v).choose (2 * u - 1) ≠ 0 := Nat.ne_of_gt (Nat.choose_pos (by omega))
  have hb : (2 * u).choose u ≠ 0 := Nat.ne_of_gt (Nat.choose_pos (by omega))
  have hm : determinantMagnitude u v ≠ 0 := Nat.mul_ne_zero ha hb
  exact mul_ne_zero (pow_ne_zero _ (by norm_num)) (Nat.cast_ne_zero.mpr hm)

/-- The actual raw determinant recurrence, derived by eliminating the shared
middle term from the two proved source polynomial recurrences. -/
theorem rawPolynomialDeterminant_recurrence (u v : ℕ) (hu : 2 ≤ u) :
    C (recurrenceN u) * rawPolynomialDeterminant u v =
      -(C (recurrenceB u v) * (X ^ 2 * rawPolynomialDeterminant (u - 1) (v + 1))) := by
  have hp := pPolynomial_recurrence u v hu
  have hq := qPolynomial_recurrence u v hu
  have hs : u - 1 - 1 = u - 2 := by omega
  have hv : v + 1 + 1 = v + 2 := by omega
  unfold rawPolynomialDeterminant
  rw [hs, hv]
  linear_combination
    (qPolynomial (u - 1) (v + 1) (u - 1)) * hp -
      (pPolynomial (u - 1) (v + 1) (u - 1)) * hq

private theorem pPolynomial_zero (v : ℕ) : pPolynomial 0 v 0 = 1 := by
  simp [pPolynomial, coefficientPolynomial, pCoefficient]

private theorem qPolynomial_zero (v : ℕ) : qPolynomial 0 v 0 = 1 := by
  simp [qPolynomial, coefficientPolynomial, qCoefficient, qMagnitude]

private theorem pPolynomial_one (v : ℕ) :
    pPolynomial 1 v 1 = C (-2 : ℤ) + C ((v : ℤ) + 3) * X := by
  norm_num [pPolynomial, coefficientPolynomial, Finset.sum_range_succ, pCoefficient,
    Nat.choose_one_right, ← Polynomial.C_mul_X_pow_eq_monomial, map_add, map_mul, map_neg]
  <;> ring

private theorem qPolynomial_one (v : ℕ) :
    qPolynomial 1 v 1 = C (-2 : ℤ) - C ((v : ℤ) + 1) * X := by
  norm_num [qPolynomial, coefficientPolynomial, Finset.sum_range_succ, qCoefficient, qMagnitude,
    Nat.choose_one_right, ← Polynomial.C_mul_X_pow_eq_monomial, map_add, map_mul, map_neg]
  <;> ring

theorem determinantConstant_one (v : ℕ) : determinantConstant 1 v = 2 * ((v : ℤ) + 2) := by
  norm_num [determinantConstant, determinantMagnitude, Nat.choose_one_right]
  <;> ring

private theorem rawPolynomialDeterminant_one (v : ℕ) :
    rawPolynomialDeterminant 1 v = C (determinantConstant 1 v) * X ^ (2 * 1 - 1) := by
  simp only [rawPolynomialDeterminant, Nat.sub_self, pPolynomial_one, qPolynomial_one,
    pPolynomial_zero, qPolynomial_zero, determinantConstant_one]
  norm_num [map_add, map_mul]
  <;> ring

private theorem rawPolynomialDeterminant_succ (t v : ℕ) :
    rawPolynomialDeterminant (t + 1) v = C (determinantConstant (t + 1) v) * X ^ (2 * (t + 1) - 1) := by
  induction t generalizing v with
  | zero => simpa using rawPolynomialDeterminant_one v
  | succ t ih =>
    let u : ℕ := t + 2
    change rawPolynomialDeterminant u v = C (determinantConstant u v) * X ^ (2 * u - 1)
    have hu : 2 ≤ u := by dsimp [u]; omega
    have hs : u - 1 = t + 1 := by dsimp [u]
    have hprev : rawPolynomialDeterminant (u - 1) (v + 1) =
        C (determinantConstant (u - 1) (v + 1)) * X ^ (2 * (u - 1) - 1) := by
      simpa only [hs] using ih (v + 1)
    have hrec := rawPolynomialDeterminant_recurrence u v hu
    rw [hprev] at hrec
    have hscale : (C (recurrenceN u) : ℤ[X]) ≠ 0 := Polynomial.C_ne_zero.mpr (recurrenceN_ne_zero u hu)
    have hmatch : C (recurrenceN u) * (C (determinantConstant u v) * X ^ (2 * u - 1)) =
        -(C (recurrenceB u v) * (X ^ 2 *
          (C (determinantConstant (u - 1) (v + 1)) * X ^ (2 * (u - 1) - 1)))) := by
      calc
        C (recurrenceN u) * (C (determinantConstant u v) * X ^ (2 * u - 1)) =
          C (recurrenceN u * determinantConstant u v) * X ^ (2 * u - 1) := by simp only [map_mul]; ring
        _ = C (-(recurrenceB u v) * determinantConstant (u - 1) (v + 1)) * X ^ (2 * u - 1) := by
          rw [determinantConstant_recurrence u v hu]
        _ = -(C (recurrenceB u v) * (X ^ 2 *
            (C (determinantConstant (u - 1) (v + 1)) * X ^ (2 * (u - 1) - 1)))) := by
          have he : 2 * u - 1 = 2 + (2 * (u - 1) - 1) := by omega
          rw [he, pow_add]
          simp only [map_mul, map_neg]
          ring
    apply mul_left_cancel₀ hscale
    exact hrec.trans hmatch.symm

/-- The unrestricted actual source determinant. Its only hypothesis is u>=1.
This is the upper-first version of BFT Lemma 3.2, with explicit signed constant. -/
theorem rawPolynomialDeterminant_formula (u v : ℕ) (hu : 1 ≤ u) :
    rawPolynomialDeterminant u v = C (determinantConstant u v) * X ^ (2 * u - 1) := by
  simpa only [Nat.sub_add_cancel hu] using rawPolynomialDeterminant_succ (u - 1) v

/-- Actual adjacent rows cannot have zero determinant at any nonzero real z.
No Padé identity, hraw, or recurrence hypothesis appears in this conclusion. -/
theorem actual_polynomial_rows_det_ne_zero (u v : ℕ) (hu : 1 ≤ u) {z : ℝ} (hz : z ≠ 0) :
    (rawPolynomialDeterminant u v).eval₂ (Int.castRingHom ℝ) z ≠ 0 := by
  rw [rawPolynomialDeterminant_formula u v hu, Polynomial.eval₂_mul,
    Polynomial.eval₂_C, Polynomial.eval₂_X_pow]
  change (determinantConstant u v : ℝ) * z ^ (2 * u - 1) ≠ 0
  exact mul_ne_zero (Int.cast_ne_zero.mpr (determinantConstant_ne_zero u v hu)) (pow_ne_zero _ hz)

#print axioms Math.B699.PadeActualRecurrence.determinantMagnitude_recurrence
#print axioms Math.B699.PadeActualRecurrence.determinantConstant_recurrence
#print axioms Math.B699.PadeActualRecurrence.determinantConstant_ne_zero
#print axioms Math.B699.PadeActualRecurrence.rawPolynomialDeterminant_recurrence
#print axioms Math.B699.PadeActualRecurrence.determinantConstant_one
#print axioms Math.B699.PadeActualRecurrence.rawPolynomialDeterminant_formula
#print axioms Math.B699.PadeActualRecurrence.actual_polynomial_rows_det_ne_zero

end Math.B699.PadeActualRecurrence

end HeightMember013
/- Frozen source member 14: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Pade\RawHom.lean SHA256 b2e830d86e37ff94b83023d2d18ab6a0c4de45b0a44ed2860a7247f85b92b131 -/
section HeightMember014


/-!
# Actual raw homogeneous determinant

The polynomial determinant is already proved by the preceding candidate chain.
This module transfers it to the accepted integer homogeneousValue construction.
The denominator input y is nonzero, as in the source application. The recurrence
and determinant theorems themselves contain no division; the existing real cast
identity is used here solely to identify the actual denominator-cleared integers.
-/

namespace Math.B699.PadeActualRecurrence

open Polynomial
open Math.B699.PadeConstruction

def rawHomogeneousDeterminant (u v : ℕ) (x y : ℤ) : ℤ :=
  homogeneousValue u (pCoefficient u v u) x y *
      homogeneousValue (u - 1) (qCoefficient (u - 1) (v + 1) (u - 1)) x y -
    homogeneousValue (u - 1) (pCoefficient (u - 1) (v + 1) (u - 1)) x y *
      homogeneousValue u (qCoefficient u v u) x y

private theorem p_homogeneous_cast (u v : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (homogeneousValue u (pCoefficient u v u) x y : ℝ) =
      (y : ℝ) ^ u * (pPolynomial u v u).eval₂ (Int.castRingHom ℝ) ((x : ℝ) / (y : ℝ)) := by
  simpa only [pPolynomial] using homogeneousValue_cast_eq u (pCoefficient u v u) x y hy

private theorem q_homogeneous_cast (u v : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (homogeneousValue u (qCoefficient u v u) x y : ℝ) =
      (y : ℝ) ^ u * (qPolynomial u v u).eval₂ (Int.castRingHom ℝ) ((x : ℝ) / (y : ℝ)) := by
  simpa only [qPolynomial] using homogeneousValue_cast_eq u (qCoefficient u v u) x y hy

/-- Exact raw integer formula for every u>=1, v, x and every nonzero y.
There is no source determinant, recurrence, or Padé identity hypothesis. -/
theorem rawHomogeneousDeterminant_formula (u v : ℕ) (hu : 1 ≤ u)
    (x y : ℤ) (hy : y ≠ 0) :
    rawHomogeneousDeterminant u v x y = determinantConstant u v * x ^ (2 * u - 1) := by
  let z : ℝ := (x : ℝ) / (y : ℝ)
  have hyr : (y : ℝ) ≠ 0 := Int.cast_ne_zero.mpr hy
  have hp := congrArg (fun P : ℤ[X] => P.eval₂ (Int.castRingHom ℝ) z)
    (rawPolynomialDeterminant_formula u v hu)
  have heval :
      (pPolynomial u v u).eval₂ (Int.castRingHom ℝ) z *
          (qPolynomial (u - 1) (v + 1) (u - 1)).eval₂ (Int.castRingHom ℝ) z -
        (pPolynomial (u - 1) (v + 1) (u - 1)).eval₂ (Int.castRingHom ℝ) z *
          (qPolynomial u v u).eval₂ (Int.castRingHom ℝ) z =
        (determinantConstant u v : ℝ) * z ^ (2 * u - 1) := by
    simpa only [rawPolynomialDeterminant, Polynomial.eval₂_sub, Polynomial.eval₂_mul,
      Polynomial.eval₂_C, Polynomial.eval₂_X_pow, Int.coe_castRingHom] using hp
  have hreal : (rawHomogeneousDeterminant u v x y : ℝ) =
      (determinantConstant u v : ℝ) * (x : ℝ) ^ (2 * u - 1) := by
    calc
      (rawHomogeneousDeterminant u v x y : ℝ) =
        (y : ℝ) ^ u * (y : ℝ) ^ (u - 1) *
          ((pPolynomial u v u).eval₂ (Int.castRingHom ℝ) z *
              (qPolynomial (u - 1) (v + 1) (u - 1)).eval₂ (Int.castRingHom ℝ) z -
            (pPolynomial (u - 1) (v + 1) (u - 1)).eval₂ (Int.castRingHom ℝ) z *
              (qPolynomial u v u).eval₂ (Int.castRingHom ℝ) z) := by
        simp only [rawHomogeneousDeterminant, Int.cast_sub, Int.cast_mul]
        rw [p_homogeneous_cast u v x y hy, q_homogeneous_cast (u - 1) (v + 1) x y hy,
          p_homogeneous_cast (u - 1) (v + 1) x y hy, q_homogeneous_cast u v x y hy]
        dsimp [z]
        ring
      _ = (y : ℝ) ^ (2 * u - 1) * ((determinantConstant u v : ℝ) * z ^ (2 * u - 1)) := by
        rw [← pow_add, show u + (u - 1) = 2 * u - 1 by omega, heval]
      _ = (determinantConstant u v : ℝ) * (x : ℝ) ^ (2 * u - 1) := by
        dsimp [z]
        rw [div_pow]
        have hyp : (y : ℝ) ^ (2 * u - 1) ≠ 0 := pow_ne_zero _ hyr
        field_simp
        <;> ring
  exact_mod_cast hreal

theorem rawHomogeneousDeterminant_ne_zero (u v : ℕ) (hu : 1 ≤ u)
    {x y : ℤ} (hx : x ≠ 0) (hy : y ≠ 0) : rawHomogeneousDeterminant u v x y ≠ 0 := by
  rw [rawHomogeneousDeterminant_formula u v hu x y hy]
  exact mul_ne_zero (determinantConstant_ne_zero u v hu) (pow_ne_zero _ hx)

#print axioms Math.B699.PadeActualRecurrence.rawHomogeneousDeterminant_formula
#print axioms Math.B699.PadeActualRecurrence.rawHomogeneousDeterminant_ne_zero

end Math.B699.PadeActualRecurrence

end HeightMember014
/- Frozen source member 15: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Pade\Content.lean SHA256 8a708c481f81a8ea1e2ae66133e7e9093adfdbf488ade68c30099635fd773149 -/
section HeightMember015



/-!
# Diagonal Padé P-content directly from positive binomial convolution

This file targets all u,B : Nat. It proves the actual coefficient identity

  p_k = (-1)^k * sum_{r=0}^k q_r * choose(u-r,k-r),  k <= u,

where p_k and q_r are the explicit signed coefficients already defined in
PadeInteger. This is the coefficient form of

  P(z) = sum_{r=0}^u q_r * (-z)^r * (1-z)^(u-r).

It implies divisibility of every P coefficient by the computed Q gcd,
without assuming the Padé remainder identity, analytic integrals, or a
content/height theorem. The positive convolution is proved from the elementary
Nat.multichoose recurrence. No new analysis import is required.

Candidate pending a serial run by the parent verifier. The original frozen
IntegerConstruction file is unchanged; this imports the accepted integration.
-/

namespace Math.B699.PadeContent

open scoped BigOperators
open Math.B699.PadeConstruction

private def multiConvolution (a b k : ℕ) : ℕ :=
  ∑ r ∈ Finset.range (k + 1), a.multichoose r * b.multichoose (k - r)

private theorem multiConvolution_zero (b k : ℕ) :
    multiConvolution 0 b k = b.multichoose k := by
  simp [multiConvolution, Finset.sum_range_succ']

private theorem multiConvolution_succ (a b k : ℕ) :
    multiConvolution a b (k + 1) = b.multichoose (k + 1) +
      ∑ r ∈ Finset.range (k + 1), a.multichoose (r + 1) * b.multichoose (k - r) := by
  unfold multiConvolution
  rw [Finset.sum_range_succ']
  simp only [Nat.multichoose_zero_right, Nat.sub_zero, one_mul, Nat.add_sub_add_right]
  omega

private theorem multiConvolution_recurrence (a b k : ℕ) :
    multiConvolution (a + 1) b (k + 1) =
      multiConvolution a b (k + 1) + multiConvolution (a + 1) b k := by
  rw [multiConvolution_succ (a + 1) b k, multiConvolution_succ a b k]
  simp_rw [Nat.multichoose_succ_succ, Nat.add_mul]
  rw [Finset.sum_add_distrib]
  unfold multiConvolution
  omega

/-- The positive Vandermonde convolution for multiset choices, proved from
Nat.multichoose's recurrence rather than assumed through a generating function. -/
theorem multichoose_convolution (a b k : ℕ) :
    (∑ r ∈ Finset.range (k + 1), a.multichoose r * b.multichoose (k - r)) =
      (a + b).multichoose k := by
  change multiConvolution a b k = (a + b).multichoose k
  induction a generalizing k with
  | zero => simpa only [Nat.zero_add] using multiConvolution_zero b k
  | succ a ha =>
    induction k with
    | zero => simp [multiConvolution]
    | succ k hk =>
      rw [multiConvolution_recurrence, ha, hk]
      simpa only [Nat.add_assoc, Nat.add_left_comm, Nat.add_comm] using
        (Nat.multichoose_succ_succ (a + b) k).symm

/-- The convolution used after extracting the common binomial factor. -/
theorem shifted_choose_convolution (u B k : ℕ) (hk : k ≤ u) :
    (∑ r ∈ Finset.range (k + 1), (B + r).choose r * (2 * u - r).choose (k - r)) =
      (2 * u + B + 1).choose k := by
  calc
    (∑ r ∈ Finset.range (k + 1), (B + r).choose r * (2 * u - r).choose (k - r)) =
        ∑ r ∈ Finset.range (k + 1),
          (B + 1).multichoose r * (2 * u - k + 1).multichoose (k - r) := by
      apply Finset.sum_congr rfl
      intro r hr
      have hle : r ≤ k := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
      rw [Nat.multichoose_eq, Nat.multichoose_eq]
      congr 2 <;> omega
    _ = (B + 1 + (2 * u - k + 1)).multichoose k := multichoose_convolution _ _ _
    _ = (2 * u + B + 1).choose k := by
      rw [Nat.multichoose_eq]
      congr 1
      omega

private theorem choose_product_rearrange (u k r : ℕ) (hk : k ≤ u) (hr : r ≤ k) :
    (2 * u - r).choose u * (u - r).choose (k - r) =
      (2 * u - k).choose u * (2 * u - r).choose (k - r) := by
  have hu : u ≤ 2 * u - r := by omega
  rw [← Nat.choose_symm hu]
  have hfirst : 2 * u - r - u = u - r := by omega
  rw [hfirst, Nat.choose_mul (show k - r ≤ u - r by omega)]
  have htop : 2 * u - r - (k - r) = 2 * u - k := by omega
  have hbottom : u - r - (k - r) = u - k := by omega
  rw [htop, hbottom]
  have hsym : (2 * u - k).choose (u - k) = (2 * u - k).choose u := by
    have hs := (Nat.choose_symm (show u ≤ 2 * u - k by omega))
    have hh : 2 * u - k - u = u - k := by omega
    simpa only [hh] using hs
  rw [hsym]
  exact Nat.mul_comm _ _

/-- The nonnegative weighted sum relating diagonal Q and P coefficients. -/
theorem weighted_choose_convolution (u B k : ℕ) (hk : k ≤ u) :
    (∑ r ∈ Finset.range (k + 1),
      (2 * u - r).choose u * (B + r).choose r * (u - r).choose (k - r)) =
      (2 * u - k).choose u * (2 * u + B + 1).choose k := by
  calc
    (∑ r ∈ Finset.range (k + 1),
        (2 * u - r).choose u * (B + r).choose r * (u - r).choose (k - r)) =
      ∑ r ∈ Finset.range (k + 1),
        (2 * u - k).choose u * ((B + r).choose r * (2 * u - r).choose (k - r)) := by
      apply Finset.sum_congr rfl
      intro r hr
      have hle : r ≤ k := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
      calc
        (2 * u - r).choose u * (B + r).choose r * (u - r).choose (k - r) =
          ((2 * u - r).choose u * (u - r).choose (k - r)) * (B + r).choose r := by ring
        _ = ((2 * u - k).choose u * (2 * u - r).choose (k - r)) * (B + r).choose r := by
          rw [choose_product_rearrange u k r hk hle]
        _ = (2 * u - k).choose u * ((B + r).choose r * (2 * u - r).choose (k - r)) := by ring
    _ = (2 * u - k).choose u *
      (∑ r ∈ Finset.range (k + 1), (B + r).choose r * (2 * u - r).choose (k - r)) := by
      rw [Finset.mul_sum]
    _ = (2 * u - k).choose u * (2 * u + B + 1).choose k := by
      rw [shifted_choose_convolution u B k hk]

/-- An explicit integer triangular transform of the actual Q coefficients.
This is the useful full-parameter bridge; it assumes no remainder identity. -/
theorem pCoefficient_eq_q_triangular (u B k : ℕ) (hk : k ≤ u) :
    pCoefficient u B u k = (-1 : ℤ) ^ k *
      ∑ r ∈ Finset.range (k + 1), qCoefficient u B u r * ((u - r).choose (k - r) : ℤ) := by
  have hz :
      (∑ r ∈ Finset.range (k + 1),
        ((2 * u - r).choose u : ℤ) * ((B + r).choose r : ℤ) *
          ((u - r).choose (k - r) : ℤ)) =
        ((2 * u - k).choose u : ℤ) * ((2 * u + B + 1).choose k : ℤ) := by
    exact_mod_cast weighted_choose_convolution u B k hk
  have hN : u + B + u + 1 = 2 * u + B + 1 := by omega
  have hU : u + u = 2 * u := by omega
  calc
    pCoefficient u B u k = (-1 : ℤ) ^ (u + k) *
        (((2 * u - k).choose u : ℤ) * ((2 * u + B + 1).choose k : ℤ)) := by
      simp only [pCoefficient, hN, hU]
      ring
    _ = (-1 : ℤ) ^ k * ((-1 : ℤ) ^ u *
        ∑ r ∈ Finset.range (k + 1),
          ((2 * u - r).choose u : ℤ) * ((B + r).choose r : ℤ) *
            ((u - r).choose (k - r) : ℤ)) := by
      rw [hz, pow_add]
      ring
    _ = (-1 : ℤ) ^ k *
        ∑ r ∈ Finset.range (k + 1), qCoefficient u B u r * ((u - r).choose (k - r) : ℤ) := by
      rw [Finset.mul_sum]
      congr 1
      apply Finset.sum_congr rfl
      intro r hr
      simp only [qCoefficient, qMagnitude, hU, Nat.cast_mul]
      ring

/-- The source Q-content divides each actual P coefficient in the diagonal
case, for all u and B. There is no hypothetical polynomial identity input. -/
theorem qContent_dvd_pCoefficient (u B k : ℕ) (hk : k ≤ u) :
    (qContent u B u : ℤ) ∣ pCoefficient u B u k := by
  rw [pCoefficient_eq_q_triangular u B k hk]
  apply dvd_mul_of_dvd_right
  apply Finset.dvd_sum
  intro r hr
  have hrk : r ≤ k := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
  exact dvd_mul_of_dvd_left (qContent_dvd_qCoefficient u B u r (hrk.trans hk)) _

theorem qContent_dvd_pPolynomial_coeff (u B k : ℕ) :
    (qContent u B u : ℤ) ∣ (pPolynomial u B u).coeff k := by
  rw [pPolynomial, coefficientPolynomial_coeff]
  by_cases hk : k ≤ u
  · rw [if_pos hk]
    exact qContent_dvd_pCoefficient u B k hk
  · rw [if_neg hk]
    exact dvd_zero _

def pNormalizedCoefficient (u B r : ℕ) : ℤ :=
  pCoefficient u B u r / (qContent u B u : ℤ)

def pNormalizedValue (u B : ℕ) (x y : ℤ) : ℤ :=
  homogeneousValue u (pNormalizedCoefficient u B) x y

theorem qContent_mul_pNormalizedCoefficient (u B r : ℕ) (hr : r ≤ u) :
    (qContent u B u : ℤ) * pNormalizedCoefficient u B r = pCoefficient u B u r := by
  rw [pNormalizedCoefficient, mul_comm]
  exact Int.ediv_mul_cancel (qContent_dvd_pCoefficient u B r hr)

theorem qContent_mul_pNormalizedValue (u B : ℕ) (x y : ℤ) :
    (qContent u B u : ℤ) * pNormalizedValue u B x y =
      homogeneousValue u (pCoefficient u B u) x y := by
  classical
  simp only [pNormalizedValue, homogeneousValue, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  rw [← mul_assoc, ← mul_assoc, qContent_mul_pNormalizedCoefficient u B r
    (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))]

/-- The normalized P needed alongside the already constructed normalized Q
is an explicit integer, with the exact real Padé polynomial value. -/
theorem pNormalizedValue_cast_eq (u B : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (pNormalizedValue u B x y : ℝ) =
      (y : ℝ) ^ u / (qContent u B u : ℝ) *
        (pPolynomial u B u).eval₂ (Int.castRingHom ℝ) ((x : ℝ) / (y : ℝ)) := by
  have hg : (qContent u B u : ℝ) ≠ 0 :=
    Nat.cast_ne_zero.mpr (Nat.ne_of_gt (qContent_pos u B u))
  have hmul := congrArg (fun k : ℤ => (k : ℝ)) (qContent_mul_pNormalizedValue u B x y)
  simp only [Int.cast_mul, Int.cast_natCast] at hmul
  rw [homogeneousValue_cast_eq u (pCoefficient u B u) x y hy] at hmul
  dsimp [pPolynomial]
  apply (mul_left_cancel₀ hg)
  calc
    (qContent u B u : ℝ) * (pNormalizedValue u B x y : ℝ) =
      (y : ℝ) ^ u * (coefficientPolynomial u (pCoefficient u B u)).eval₂
        (Int.castRingHom ℝ) ((x : ℝ) / (y : ℝ)) := hmul
    _ = (qContent u B u : ℝ) * ((y : ℝ) ^ u / (qContent u B u : ℝ) *
        (coefficientPolynomial u (pCoefficient u B u)).eval₂
          (Int.castRingHom ℝ) ((x : ℝ) / (y : ℝ))) := by
      field_simp <;> ring

#print axioms Math.B699.PadeContent.multichoose_convolution
#print axioms Math.B699.PadeContent.shifted_choose_convolution
#print axioms Math.B699.PadeContent.weighted_choose_convolution
#print axioms Math.B699.PadeContent.pCoefficient_eq_q_triangular
#print axioms Math.B699.PadeContent.qContent_dvd_pCoefficient
#print axioms Math.B699.PadeContent.qContent_dvd_pPolynomial_coeff
#print axioms Math.B699.PadeContent.qContent_mul_pNormalizedValue
#print axioms Math.B699.PadeContent.pNormalizedValue_cast_eq

end Math.B699.PadeContent

end HeightMember015
/- Frozen source member 16: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\IntegerBridge.lean SHA256 dab88701d97ddd8885c17b49f65c8750b7e21de7ef876e8f59b4fcc9079acfd8 -/
section HeightMember016






/-!
# A finite integer approximation bridge used in BFT Section 7

Adapted from the frozen candidate; current acceptance is recorded by the run verifier. This file is not a formalization of BFT Lemma 4.1.

Source: Bennett--Filaseta--Trifonov, "On the factorization of consecutive
integers", 2007-02-26 author manuscript, PDF pages 26--27, equation (7.4).
Frozen PDF SHA256:
0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c.

The actual Lemma 4.1, on PDF page 10, supplies analytic bounds for the
polynomials Q_n and E_n. Those bounds are NOT assumed as a new axiom here
and are NOT proved in this file.

Notation for the direct Section 7 application:
* r = p^(k_0*c*m), s = q^(l_0*c*m);
* a = a_source^(c*m), b = b_source^(c*m);
* u = x_1'', v = x_2'';
* P_j, Q_j are the integer-normalized Padé values for n = d*m or d*m-1.
Then r*a*P_j - s*b*Q_j is exactly E_j in (7.3), and
b*Q_j*u - a*P_j*v is the integer whose nonvanishing yields (7.4).

All results below concern arbitrary integers (and real numbers in the last
section). No Padé construction, G-bound, logarithmic height, or B699
original-problem consumer is supplied.
-/

namespace Math.B699.IntegerApproximationBridge

/-- Two independent integer rows cannot both be proportional to `(u,v)`
when `v` is nonzero. This is the algebraic step immediately before (7.4).
The determinant is computed from the inputs, rather than hidden in a type. -/
theorem cross_ne_zero_or
    {P₀ Q₀ P₁ Q₁ u v : ℤ}
    (hdet : P₀ * Q₁ - P₁ * Q₀ ≠ 0) (hv : v ≠ 0) :
    Q₀ * u - P₀ * v ≠ 0 ∨ Q₁ * u - P₁ * v ≠ 0 := by
  by_cases h₀ : Q₀ * u - P₀ * v = 0
  · right
    intro h₁
    have hprod : (P₀ * Q₁ - P₁ * Q₀) * v = 0 := by
      calc
        (P₀ * Q₁ - P₁ * Q₀) * v =
            Q₀ * (Q₁ * u - P₁ * v) - Q₁ * (Q₀ * u - P₀ * v) := by ring
        _ = 0 := by rw [h₀, h₁]; ring
    exact (mul_ne_zero hdet hv) hprod
  · exact Or.inl h₀

/-- The precise integer triangle-inequality core of (7.4), with arbitrary
integer parameters and no sign assumptions on the approximating row.
Here `r*u-s*v` is the target gap and `r*P-s*Q` is the row error. -/
theorem integer_gap_lower_bound
    {r s P Q u v D : ℤ}
    (hr : 0 ≤ r) (hcross : Q * u - P * v ≠ 0)
    (hgap : |r * u - s * v| ≤ D) :
    r ≤ |Q| * D + |r * P - s * Q| * |v| := by
  calc
    r = r * 1 := by ring
    _ ≤ r * |Q * u - P * v| :=
      mul_le_mul_of_nonneg_left (Int.one_le_abs hcross) hr
    _ = |r * (Q * u - P * v)| := by rw [abs_mul, abs_of_nonneg hr]
    _ = |Q * (r * u - s * v) - (r * P - s * Q) * v| := by
      congr 1
      ring
    _ ≤ |Q * (r * u - s * v)| + |(r * P - s * Q) * v| := by
      simpa only [sub_eq_add_neg, abs_neg] using
        (abs_add_le (Q * (r * u - s * v)) (-((r * P - s * Q) * v)))
    _ = |Q| * |r * u - s * v| + |r * P - s * Q| * |v| := by
      rw [abs_mul, abs_mul]
    _ ≤ |Q| * D + |r * P - s * Q| * |v| :=
      add_le_add (mul_le_mul_of_nonneg_left hgap (abs_nonneg Q)) (le_refl _)

/-- A finite two-index form: the determinant chooses a usable row, then the
integer gap bound follows. Arbitrary indices cover both `d*m` and `d*m-1`
without silently imposing a convention on natural-number subtraction. -/
theorem exists_integer_gap_lower_bound
    {ι : Type*} (P Q : ι → ℤ) (i₀ i₁ : ι)
    {r s u v D : ℤ}
    (hr : 0 ≤ r) (hv : v ≠ 0)
    (hdet : P i₀ * Q i₁ - P i₁ * Q i₀ ≠ 0)
    (hgap : |r * u - s * v| ≤ D) :
    ∃ i, (i = i₀ ∨ i = i₁) ∧ Q i * u - P i * v ≠ 0 ∧
      r ≤ |Q i| * D + |r * P i - s * Q i| * |v| := by
  rcases cross_ne_zero_or (u := u) hdet hv with h₀ | h₁
  · exact ⟨i₀, Or.inl rfl, h₀, integer_gap_lower_bound hr h₀ hgap⟩
  · exact ⟨i₁, Or.inr rfl, h₁, integer_gap_lower_bound hr h₁ hgap⟩

/-- Directly shaped for BFT (7.4). The unscaled Padé determinant is an input;
common nonzero integer scaling factors preserve its nonvanishing. -/
theorem bft_7_4_of_two_rows
    {ι : Type*} (P Q : ι → ℤ) (i₀ i₁ : ι)
    {r s a b u v D : ℤ}
    (hr : 0 ≤ r) (ha : a ≠ 0) (hb : 0 < b) (hv : v ≠ 0)
    (hdet : P i₀ * Q i₁ - P i₁ * Q i₀ ≠ 0)
    (hgap : |r * u - s * v| ≤ D) :
    ∃ i, (i = i₀ ∨ i = i₁) ∧ b * Q i * u - a * P i * v ≠ 0 ∧
      r ≤ b * D * |Q i| + |r * a * P i - s * b * Q i| * |v| := by
  have hscaled :
      (a * P i₀) * (b * Q i₁) - (a * P i₁) * (b * Q i₀) ≠ 0 := by
    have hid :
        (a * P i₀) * (b * Q i₁) - (a * P i₁) * (b * Q i₀) =
          a * b * (P i₀ * Q i₁ - P i₁ * Q i₀) := by ring
    rw [hid]
    exact mul_ne_zero (mul_ne_zero ha (ne_of_gt hb)) hdet
  obtain ⟨i, hi, hcross, hbound⟩ :=
    exists_integer_gap_lower_bound (fun j => a * P j) (fun j => b * Q j)
      i₀ i₁ hr hv hscaled hgap
  refine ⟨i, hi, hcross, ?_⟩
  simpa only [abs_mul, abs_of_pos hb, mul_assoc, mul_left_comm, mul_comm] using hbound

/-- Cast the discrete nonzero-integer lower bound into the real numbers. -/
theorem one_le_abs_int_cast {z : ℤ} (hz : z ≠ 0) :
    (1 : ℝ) ≤ |(z : ℝ)| := by
  have hcast : ((1 : ℤ) : ℝ) ≤ ((|z| : ℤ) : ℝ) :=
    Int.cast_le.mpr (Int.one_le_abs hz)
  simpa only [Int.cast_one, Int.cast_abs] using hcast

/-- Real approximation form of the same integer determinant mechanism.
The conclusion remains valid for any real `α`; irrationality is not assumed. -/
theorem one_le_approximation_sum
    {P Q p q : ℤ} {α : ℝ}
    (hcross : Q * p - P * q ≠ 0) :
    (1 : ℝ) ≤ |(Q : ℝ)| * |(q : ℝ) * α - (p : ℝ)| +
      |(q : ℝ)| * |(Q : ℝ) * α - (P : ℝ)| := by
  have hunit := one_le_abs_int_cast hcross
  have hid :
      ((Q * p - P * q : ℤ) : ℝ) =
        (q : ℝ) * ((Q : ℝ) * α - (P : ℝ)) -
          (Q : ℝ) * ((q : ℝ) * α - (p : ℝ)) := by
    rw [Int.cast_sub, Int.cast_mul, Int.cast_mul]
    ring
  rw [hid] at hunit
  have htriangle := abs_add_le
    ((q : ℝ) * ((Q : ℝ) * α - (P : ℝ)))
    (-((Q : ℝ) * ((q : ℝ) * α - (p : ℝ))))
  have hsum :
      |(q : ℝ) * ((Q : ℝ) * α - (P : ℝ)) -
        (Q : ℝ) * ((q : ℝ) * α - (p : ℝ))| ≤
      |(Q : ℝ)| * |(q : ℝ) * α - (p : ℝ)| +
        |(q : ℝ)| * |(Q : ℝ) * α - (P : ℝ)| := by
    simpa only [sub_eq_add_neg, abs_neg, abs_mul, add_comm] using htriangle
  exact le_trans hunit hsum

/-- If a selected row has height at most `B` and its error times `|q|`
is strictly less than one half, then the target linear form is bounded below.
The strict conclusion comes from the strict error hypothesis. -/
theorem half_lt_height_mul_error
    {P Q p q : ℤ} {α B : ℝ}
    (hcross : Q * p - P * q ≠ 0)
    (hheight : |(Q : ℝ)| ≤ B)
    (herror : |(q : ℝ)| * |(Q : ℝ) * α - (P : ℝ)| < 1 / 2) :
    (1 : ℝ) / 2 < B * |(q : ℝ) * α - (p : ℝ)| := by
  have hsum := one_le_approximation_sum (α := α) hcross
  have hmono := mul_le_mul_of_nonneg_right hheight
    (abs_nonneg ((q : ℝ) * α - (p : ℝ)))
  linarith

/-- A finite-index rational-approximation lower bound.
Both row estimates are checked only at the two supplied indices. The
nonzero determinant selects one of them; no lower-bound conclusion is
included among the assumptions. For `q ≠ 0`, the resulting strict bound is
`1 / (2 * B * |q|) < |α - p/q|`.

This is an independent auxiliary corollary, not a source statement numbered
Lemma 4.1. An infinite-sequence/logarithm theorem still has to construct the
index pair and prove these quantitative input estimates. -/
theorem rational_approximation_lower_bound_of_two_rows
    {ι : Type*} (P Q : ι → ℤ) (i₀ i₁ : ι)
    {α B : ℝ} {p q : ℤ}
    (hB : 0 < B) (hq : q ≠ 0)
    (hdet : P i₀ * Q i₁ - P i₁ * Q i₀ ≠ 0)
    (hheight : ∀ i, i = i₀ ∨ i = i₁ → |(Q i : ℝ)| ≤ B)
    (herror : ∀ i, i = i₀ ∨ i = i₁ →
      |(q : ℝ)| * |(Q i : ℝ) * α - (P i : ℝ)| < 1 / 2) :
    1 / (2 * B * |(q : ℝ)|) < |α - (p : ℝ) / (q : ℝ)| := by
  have hlinear : (1 : ℝ) / 2 < B * |(q : ℝ) * α - (p : ℝ)| := by
    rcases cross_ne_zero_or (u := p) hdet hq with h₀ | h₁
    · exact half_lt_height_mul_error h₀ (hheight i₀ (Or.inl rfl))
        (herror i₀ (Or.inl rfl))
    · exact half_lt_height_mul_error h₁ (hheight i₁ (Or.inr rfl))
        (herror i₁ (Or.inr rfl))
  have hqreal : (q : ℝ) ≠ 0 := Int.cast_ne_zero.mpr hq
  have hqabs : 0 < |(q : ℝ)| := abs_pos.mpr hqreal
  have hid : (q : ℝ) * α - (p : ℝ) =
      (q : ℝ) * (α - (p : ℝ) / (q : ℝ)) := by
    calc
      (q : ℝ) * α - (p : ℝ) =
          (q : ℝ) * α - ((p : ℝ) / (q : ℝ)) * (q : ℝ) := by
        rw [div_mul_cancel₀ _ hqreal]
      _ = (q : ℝ) * (α - (p : ℝ) / (q : ℝ)) := by ring
  rw [hid, abs_mul] at hlinear
  apply (div_lt_iff₀ (mul_pos (mul_pos (by norm_num) hB) hqabs)).2
  nlinarith

#print axioms Math.B699.IntegerApproximationBridge.cross_ne_zero_or
#print axioms Math.B699.IntegerApproximationBridge.integer_gap_lower_bound
#print axioms Math.B699.IntegerApproximationBridge.exists_integer_gap_lower_bound
#print axioms Math.B699.IntegerApproximationBridge.bft_7_4_of_two_rows
#print axioms Math.B699.IntegerApproximationBridge.one_le_abs_int_cast
#print axioms Math.B699.IntegerApproximationBridge.one_le_approximation_sum
#print axioms Math.B699.IntegerApproximationBridge.half_lt_height_mul_error
#print axioms Math.B699.IntegerApproximationBridge.rational_approximation_lower_bound_of_two_rows

end Math.B699.IntegerApproximationBridge


end HeightMember016
/- Frozen source member 17: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Pade\Rows.lean SHA256 9436eed58f7a68a64de455efcd13d976ddf171b8f9874fc67fa09f39ea5d9901 -/
section HeightMember017




/-!
# Actual normalized rows with no hraw hypothesis

This module calls the actual P/Q content-normalization lemmas and the actual
source homogeneous determinant directly. It does not import the old conditional
adjacent-determinant consumers. PContentTransform is a complete but still pending
candidate dependency. The final Section 7 theorem has no Padé identity, recurrence,
six-ratio, or raw-determinant hypothesis. Analytic growth/height inputs are separate.
-/

namespace Math.B699.PadeActualRows

open Math.B699.PadeConstruction
open Math.B699.PadeContent
open Math.B699.PadeActualRecurrence

def normalizedDeterminant (u v : ℕ) (x y : ℤ) : ℤ :=
  pNormalizedValue u v x y * qNormalizedValue (u - 1) (v + 1) (u - 1) x y -
    pNormalizedValue (u - 1) (v + 1) x y * qNormalizedValue u v u x y

/-- The actual content scaling, established without a determinant hypothesis. -/
theorem content_product_mul_normalizedDeterminant (u v : ℕ) (x y : ℤ) :
    (qContent u v u : ℤ) * (qContent (u - 1) (v + 1) (u - 1) : ℤ) *
      normalizedDeterminant u v x y = rawHomogeneousDeterminant u v x y := by
  unfold normalizedDeterminant rawHomogeneousDeterminant
  calc
    (qContent u v u : ℤ) * (qContent (u - 1) (v + 1) (u - 1) : ℤ) *
        (pNormalizedValue u v x y * qNormalizedValue (u - 1) (v + 1) (u - 1) x y -
          pNormalizedValue (u - 1) (v + 1) x y * qNormalizedValue u v u x y) =
      ((qContent u v u : ℤ) * pNormalizedValue u v x y) *
          ((qContent (u - 1) (v + 1) (u - 1) : ℤ) * qNormalizedValue (u - 1) (v + 1) (u - 1) x y) -
        ((qContent (u - 1) (v + 1) (u - 1) : ℤ) * pNormalizedValue (u - 1) (v + 1) x y) *
          ((qContent u v u : ℤ) * qNormalizedValue u v u x y) := by ring
    _ = homogeneousValue u (pCoefficient u v u) x y *
          homogeneousValue (u - 1) (qCoefficient (u - 1) (v + 1) (u - 1)) x y -
        homogeneousValue (u - 1) (pCoefficient (u - 1) (v + 1) (u - 1)) x y *
          homogeneousValue u (qCoefficient u v u) x y := by
      rw [qContent_mul_pNormalizedValue, qContent_mul_normalizedValue,
        qContent_mul_pNormalizedValue, qContent_mul_normalizedValue]

/-- The concrete gcd-normalized rows have nonzero determinant for every
u>=1,v and nonzero numerator/denominator. No hraw input remains. -/
theorem actual_normalized_rows_det_ne_zero (u v : ℕ) (hu : 1 ≤ u) {x y : ℤ}
    (hx : x ≠ 0) (hy : y ≠ 0) : normalizedDeterminant u v x y ≠ 0 := by
  have hraw := rawHomogeneousDeterminant_ne_zero u v hu hx hy
  intro hz
  have hs := content_product_mul_normalizedDeterminant u v x y
  rw [hz, mul_zero] at hs
  exact hraw hs.symm

def actualPRow (u v : ℕ) (x y : ℤ) (upper : Bool) : ℤ :=
  if upper then pNormalizedValue u v x y else pNormalizedValue (u - 1) (v + 1) x y

def actualQRow (u v : ℕ) (x y : ℤ) (upper : Bool) : ℤ :=
  if upper then qNormalizedValue u v u x y else qNormalizedValue (u - 1) (v + 1) (u - 1) x y

/-- BFT (7.4) for the actual constructed adjacent row pair. Only ordinary
integer/scaling/gap conditions remain; the source determinant is proved upstream. -/
theorem actual_bft_integer_gap (u v : ℕ) (hu : 1 ≤ u) (x y : ℤ)
    {r s a b U V D : ℤ}
    (hx : x ≠ 0) (hy : y ≠ 0)
    (hr : 0 ≤ r) (ha : a ≠ 0) (hb : 0 < b) (hV : V ≠ 0)
    (hgap : |r * U - s * V| ≤ D) :
    ∃ row : Bool,
      b * actualQRow u v x y row * U - a * actualPRow u v x y row * V ≠ 0 ∧
      r ≤ b * D * |actualQRow u v x y row| +
        |r * a * actualPRow u v x y row - s * b * actualQRow u v x y row| * |V| := by
  have hn := actual_normalized_rows_det_ne_zero u v hu hx hy
  have hd : actualPRow u v x y true * actualQRow u v x y false -
      actualPRow u v x y false * actualQRow u v x y true ≠ 0 := by
    simpa [actualPRow, actualQRow, normalizedDeterminant] using hn
  obtain ⟨row, _, hc, hbnd⟩ :=
    Math.B699.IntegerApproximationBridge.bft_7_4_of_two_rows
      (actualPRow u v x y) (actualQRow u v x y) true false hr ha hb hV hd hgap
  exact ⟨row, hc, hbnd⟩

#print axioms Math.B699.PadeActualRows.content_product_mul_normalizedDeterminant
#print axioms Math.B699.PadeActualRows.actual_normalized_rows_det_ne_zero
#print axioms Math.B699.PadeActualRows.actual_bft_integer_gap

end Math.B699.PadeActualRows

end HeightMember017
/- Frozen source member 18: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\HomRemainder\RationalHom.lean SHA256 b3b9101deb68816685b6a14e87d223d9b228c90a078ed54fd2b6f52d393c0fc0 -/
section HeightMember018


/-!
# Actual integer homogeneous values over the rationals

UNCOMPILED CANDIDATE. The accepted construction supplies the actual finite
integer coefficient arrays and the actual content-divisibility identities.
This module proves the rational evaluation correspondence directly, using
the same finite-sum argument as the accepted real-valued correspondence.
No source identity, gcd divisibility, or analytic estimate is an input.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.PadeRationalHomogeneous

open Polynomial Math.B699.PadeConstruction Math.B699.PadeContent
open scoped BigOperators

/-- Rational evaluation of the actual integer homogeneous finite sum.
Only the denominator is required to be nonzero; the numerator may be zero. -/
theorem homogeneousValue_cast_q (n : ℕ) (a : ℕ → ℤ) (x y : ℤ) (hy : y ≠ 0) :
    (homogeneousValue n a x y : ℚ) =
      (y : ℚ) ^ n * (coefficientPolynomial n a).eval₂ (Int.castRingHom ℚ)
        ((x : ℚ) / (y : ℚ)) := by
  classical
  have hyq : (y : ℚ) ≠ 0 := Int.cast_ne_zero.mpr hy
  simp only [homogeneousValue, coefficientPolynomial, Int.cast_sum, Int.cast_mul,
    Int.cast_pow, Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial,
    Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have hle : r ≤ n := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
  have hpow : (y : ℚ) ^ n = (y : ℚ) ^ (n - r) * (y : ℚ) ^ r := by
    rw [← pow_add, Nat.sub_add_cancel hle]
  change (a r : ℚ) * (x : ℚ) ^ r * (y : ℚ) ^ (n - r) =
    (y : ℚ) ^ n * ((a r : ℚ) * ((x : ℚ) / (y : ℚ)) ^ r)
  rw [hpow, div_pow]
  field_simp [hyq]
  <;> ring

/-- The actual P array has homogeneous degree C, including degenerate cases. -/
theorem p_homogeneousValue_cast_q (A B C : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (homogeneousValue C (pCoefficient A B C) x y : ℚ) =
      (y : ℚ) ^ C * (pPolynomial A B C).eval₂ (Int.castRingHom ℚ)
        ((x : ℚ) / (y : ℚ)) := by
  simpa only [pPolynomial] using
    homogeneousValue_cast_q C (pCoefficient A B C) x y hy

/-- The actual Q array has homogeneous degree A, including degenerate cases. -/
theorem q_homogeneousValue_cast_q (A B C : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (homogeneousValue A (qCoefficient A B C) x y : ℚ) =
      (y : ℚ) ^ A * (qPolynomial A B C).eval₂ (Int.castRingHom ℚ)
        ((x : ℚ) / (y : ℚ)) := by
  simpa only [qPolynomial] using
    homogeneousValue_cast_q A (qCoefficient A B C) x y hy

/-- Cast the accepted actual P-content identity; this statement even permits y=0. -/
theorem qContent_mul_pNormalizedValue_cast_q (u v : ℕ) (x y : ℤ) :
    (qContent u v u : ℚ) * (pNormalizedValue u v x y : ℚ) =
      (homogeneousValue u (pCoefficient u v u) x y : ℚ) := by
  have h := congrArg (fun k : ℤ => (k : ℚ))
    (qContent_mul_pNormalizedValue u v x y)
  simpa only [Int.cast_mul, Int.cast_natCast] using h

/-- Cast the accepted actual Q-content identity; no divisibility is assumed. -/
theorem qContent_mul_qNormalizedValue_cast_q (A B C : ℕ) (x y : ℤ) :
    (qContent A B C : ℚ) * (qNormalizedValue A B C x y : ℚ) =
      (homogeneousValue A (qCoefficient A B C) x y : ℚ) := by
  have h := congrArg (fun k : ℤ => (k : ℚ))
    (qContent_mul_normalizedValue A B C x y)
  simpa only [Int.cast_mul, Int.cast_natCast] using h

end Math.B699.PadeRationalHomogeneous

end HeightMember018
/- Frozen source member 19: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Moment\Kernel.lean SHA256 18e6f3030d5957cc63ceeb4f6542fe56ee37e596ebe4210a7857247f2d15f12f -/
section HeightMember019





/-!
# Finite BFT kernel expansions over any commutative ring

Derived from the frozen sibling KernelExpansion.lean, generalized from Real
to an arbitrary commutative ring. Used below with R = Rat[X].
All sources in this new experiment are UNCOMPILED CANDIDATES.
-/

namespace Math.B699.PadeMomentIdentity.KernelAlgebra

variable {R : Type*} [CommRing R]

open scoped BigOperators

private theorem parity_sub_add (C r : ℕ) (hr : r ≤ C) :
    (-1 : R) ^ (C - r) = (-1 : R) ^ (C + r) := by
  conv_lhs => rw [neg_one_pow_eq_pow_mod_two]
  conv_rhs => rw [neg_one_pow_eq_pow_mod_two]
  congr 1
  omega

/-- BFT (3.1) expanded in powers of z; the parity factor is explicit. -/
theorem p_kernel_expansion (A B C : ℕ) (z u : R) :
    u ^ A * (1 - u) ^ B * (z - u) ^ C =
      ∑ r ∈ Finset.range (C + 1),
        ((-1 : R) ^ (C + r) * (C.choose r : R) * z ^ r) *
          (u ^ (A + C - r) * (1 - u) ^ B) := by
  have hbin : (z - u) ^ C =
      ∑ r ∈ Finset.range (C + 1), z ^ r * (-u) ^ (C - r) * (C.choose r : R) := by
    simpa only [sub_eq_add_neg] using (add_pow z (-u) C)
  rw [hbin, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have hle : r ≤ C := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
  have hexp : A + C - r = A + (C - r) := by omega
  rw [neg_pow, parity_sub_add C r hle, hexp, pow_add]
  ring

/-- BFT (3.2), before its outer `(-1)^C` and factorial prefactor. -/
theorem q_kernel_expansion (A B C : ℕ) (z u : R) :
    u ^ B * (1 - u) ^ C * (1 - u + z * u) ^ A =
      ∑ r ∈ Finset.range (A + 1), ((A.choose r : R) * z ^ r) *
        (u ^ (B + r) * (1 - u) ^ (A + C - r)) := by
  have hbin : (1 - u + z * u) ^ A =
      ∑ r ∈ Finset.range (A + 1),
        (z * u) ^ r * (1 - u) ^ (A - r) * (A.choose r : R) := by
    simpa only [add_comm (z * u) (1 - u)] using (add_pow (z * u) (1 - u) A)
  rw [hbin, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have hle : r ≤ A := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
  have hexp : A + C - r = C + (A - r) := by omega
  rw [hexp, mul_pow, pow_add, pow_add]
  ring

/-- BFT (3.3), with the error polynomial's alternating coefficients. -/
theorem e_kernel_expansion (A B C : ℕ) (z u : R) :
    u ^ A * (1 - u) ^ C * (1 - z * u) ^ B =
      ∑ r ∈ Finset.range (B + 1),
        ((-1 : R) ^ r * (B.choose r : R) * z ^ r) *
          (u ^ (A + r) * (1 - u) ^ C) := by
  have hbin : (1 - z * u) ^ B =
      ∑ r ∈ Finset.range (B + 1), (-(z * u)) ^ r * (B.choose r : R) := by
    have h := add_pow (-(z * u)) (1 : R) B
    simpa only [one_pow, mul_one, neg_add_eq_sub] using h
  rw [hbin, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  rw [neg_pow, mul_pow, pow_add]
  ring

#print axioms Math.B699.PadeMomentIdentity.KernelAlgebra.p_kernel_expansion
#print axioms Math.B699.PadeMomentIdentity.KernelAlgebra.q_kernel_expansion
#print axioms Math.B699.PadeMomentIdentity.KernelAlgebra.e_kernel_expansion

end Math.B699.PadeMomentIdentity.KernelAlgebra

end HeightMember019
/- Frozen source member 20: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Moment\Moment.lean SHA256 5412406fdae927ccb256c2221d0154d2eebbdd2b35da4fcd510312c947a021e8 -/
section HeightMember020







/-!
# A concrete rational polynomial moment, without integration

All values are defined from the actual finitely supported coefficients.
The beta moment theorem uses a polynomial recurrence and factorial arithmetic.
No existence assumption on a linear functional is an input.

Candidate only: this file has not been compiled or axiom-audited in this task.
The source API and direct import-cache inventory are recorded beside the file.
-/

namespace Math.B699.PadeMoment

open Polynomial

/-- The actual rational coefficient sum, not an abstract moment axiom. -/
noncomputable def moment (p : ℚ[X]) : ℚ :=
  p.sum fun n a => a / ((n : ℚ) + 1)

@[simp] theorem moment_zero : moment (0 : ℚ[X]) = 0 := by
  simp [moment]

@[simp] theorem moment_monomial (n : ℕ) (a : ℚ) :
    moment (Polynomial.monomial n a) = a / ((n : ℚ) + 1) := by
  simp [moment, Polynomial.sum_monomial_index]

@[simp] theorem moment_X_pow (n : ℕ) :
    moment ((X : ℚ[X]) ^ n) = 1 / ((n : ℚ) + 1) := by
  rw [Polynomial.X_pow_eq_monomial, moment_monomial]

@[simp] theorem moment_add (p q : ℚ[X]) :
    moment (p + q) = moment p + moment q := by
  unfold moment
  apply Polynomial.sum_add_index
  · intro n
    exact zero_div _
  · intro n a b
    exact add_div a b _

@[simp] theorem moment_smul (c : ℚ) (p : ℚ[X]) :
    moment (c • p) = c * moment p := by
  unfold moment
  rw [Polynomial.sum_smul_index p c _ (by intro n; exact zero_div _)]
  simpa only [smul_eq_mul, mul_div_assoc] using
    (Polynomial.smul_sum p c (fun n a => a / ((n : ℚ) + 1))).symm

/-- The proved linear structure on the concrete coefficient sum. -/
noncomputable def momentLinear : ℚ[X] →ₗ[ℚ] ℚ where
  toFun := moment
  map_add' := moment_add
  map_smul' c p := by
    simpa only [smul_eq_mul, RingHom.id_apply] using moment_smul c p

@[simp] theorem momentLinear_apply (p : ℚ[X]) : momentLinear p = moment p := rfl

@[simp] theorem moment_sub (p q : ℚ[X]) :
    moment (p - q) = moment p - moment q := by
  exact map_sub momentLinear p q

@[simp] theorem moment_C_mul (c : ℚ) (p : ℚ[X]) :
    moment (Polynomial.C c * p) = c * moment p := by
  simpa only [Polynomial.smul_eq_C_mul] using moment_smul c p

@[simp] theorem moment_one : moment (1 : ℚ[X]) = 1 := by
  simpa only [pow_zero, Nat.cast_zero, zero_add, div_one] using moment_X_pow 0

/-- An unnormalized Bernstein basis element. -/
noncomputable def bernsteinMonomial (a b : ℕ) : ℚ[X] :=
  X ^ a * (1 - X) ^ b

theorem bernsteinMonomial_succ_right (a b : ℕ) :
    bernsteinMonomial a (b + 1) =
      bernsteinMonomial a b - bernsteinMonomial (a + 1) b := by
  unfold bernsteinMonomial
  simp only [pow_succ]
  ring

/-- The explicit factorial expression, to be proved equal to the actual moment. -/
def betaMoment (a b : ℕ) : ℚ :=
  (a.factorial : ℚ) * (b.factorial : ℚ) / ((a + b + 1).factorial : ℚ)

private theorem factorialRat_ne_zero (n : ℕ) : (n.factorial : ℚ) ≠ 0 :=
  Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero n)

private theorem natSuccRat_ne_zero (n : ℕ) : (n : ℚ) + 1 ≠ 0 := by
  have h : ((n + 1 : ℕ) : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.succ_ne_zero n)
  simpa only [Nat.cast_add, Nat.cast_one] using h

@[simp] theorem betaMoment_zero_right (a : ℕ) :
    betaMoment a 0 = 1 / ((a : ℚ) + 1) := by
  unfold betaMoment
  simp only [Nat.add_zero, Nat.factorial_zero, Nat.cast_one, mul_one]
  rw [Nat.factorial_succ]
  simp only [Nat.cast_mul, Nat.cast_add, Nat.cast_one]
  field_simp [factorialRat_ne_zero a, natSuccRat_ne_zero a] <;> ring

theorem betaMoment_succ_right (a b : ℕ) :
    betaMoment a (b + 1) = betaMoment a b - betaMoment (a + 1) b := by
  have hleft : a + (b + 1) + 1 = (a + b + 1) + 1 := by
    simp only [Nat.add_assoc]
  have hright : (a + 1) + b + 1 = (a + b + 1) + 1 := by
    simp only [Nat.add_assoc, Nat.add_left_comm, Nat.add_comm]
  have hden : (a : ℚ) + (b : ℚ) + 1 + 1 ≠ 0 := by
    simpa only [Nat.cast_add, Nat.cast_one] using natSuccRat_ne_zero (a + b + 1)
  unfold betaMoment
  rw [hleft, hright]
  simp only [Nat.factorial_succ (a + b + 1), Nat.factorial_succ a,
    Nat.factorial_succ b, Nat.cast_mul, Nat.cast_add, Nat.cast_one]
  field_simp [factorialRat_ne_zero (a + b + 1), hden] <;> ring

/-- The unrestricted beta moment formula for the explicitly defined functional. -/
theorem moment_bernsteinMonomial (a b : ℕ) :
    moment (bernsteinMonomial a b) = betaMoment a b := by
  induction b generalizing a with
  | zero =>
      simp only [bernsteinMonomial, pow_zero, mul_one, moment_X_pow,
        betaMoment_zero_right]
  | succ b ih =>
      rw [bernsteinMonomial_succ_right, moment_sub, ih a, ih (a + 1)]
      exact (betaMoment_succ_right a b).symm

theorem moment_X_pow_one_sub_X_pow (a b : ℕ) :
    moment ((X : ℚ[X]) ^ a * (1 - X) ^ b) =
      (a.factorial : ℚ) * (b.factorial : ℚ) / ((a + b + 1).factorial : ℚ) := by
  exact moment_bernsteinMonomial a b

theorem bernsteinMonomial_mul (a b c d : ℕ) :
    bernsteinMonomial a b * bernsteinMonomial c d =
      bernsteinMonomial (a + c) (b + d) := by
  unfold bernsteinMonomial
  simp only [pow_add]
  ring

#print axioms Math.B699.PadeMoment.moment_add
#print axioms Math.B699.PadeMoment.moment_smul
#print axioms Math.B699.PadeMoment.moment_C_mul
#print axioms Math.B699.PadeMoment.moment_sub
#print axioms Math.B699.PadeMoment.moment_X_pow
#print axioms Math.B699.PadeMoment.moment_X_pow_one_sub_X_pow

end Math.B699.PadeMoment

end HeightMember020
/- Frozen source member 21: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Moment\Factors.lean SHA256 6b623cfbb0c112bbc450f8daf6f814136d3921a55344615ad4ffa57987727991 -/
section HeightMember021







/-!
# Rational factorial cancellation for the actual BFT coefficient formulas

Derived from the frozen sibling CoefficientFactors.lean by changing the field
to Rat and using the explicit betaMoment from the concrete Moment candidate.
No coefficient factor theorem or analytic integral is an assumption.
All sources in this new experiment are UNCOMPILED CANDIDATES.
-/

namespace Math.B699.PadeMomentIdentity

open Math.B699.PadeMoment

noncomputable def prefactor (A B C : ℕ) : ℚ :=
  ((A + B + C + 1).factorial : ℚ) /
    ((A.factorial : ℚ) * (B.factorial : ℚ) * (C.factorial : ℚ))

private theorem factorial_cast_ne_zero (n : ℕ) : (n.factorial : ℚ) ≠ 0 :=
  Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero n)

theorem choose_cast_factorial (n r : ℕ) (hr : r ≤ n) :
    (n.choose r : ℚ) = (n.factorial : ℚ) /
      ((r.factorial : ℚ) * ((n - r).factorial : ℚ)) := by
  apply (eq_div_iff (mul_ne_zero (factorial_cast_ne_zero r)
    (factorial_cast_ne_zero (n - r)))).2
  have h := Nat.choose_mul_factorial_mul_factorial hr
  have hc : (n.choose r : ℚ) * (r.factorial : ℚ) * ((n - r).factorial : ℚ) =
      (n.factorial : ℚ) := by exact_mod_cast h
  simpa only [mul_assoc] using hc

/-- Expanding `(z-u)^C` in (3.1) yields this coefficient; multiply by
`(-1)^(C+r)` to recover the signed integer P coefficient. -/
theorem p_coefficient_factor (A B C r : ℕ) (hr : r ≤ C) :
    prefactor A B C * (C.choose r : ℚ) * betaMoment (A + C - r) B =
      ((A + B + C + 1).choose r : ℚ) * ((A + C - r).choose A : ℚ) := by
  have hrN : r ≤ A + B + C + 1 := by omega
  have hA : A ≤ A + C - r := by omega
  rw [choose_cast_factorial C r hr,
    choose_cast_factorial (A + B + C + 1) r hrN,
    choose_cast_factorial (A + C - r) A hA]
  dsimp [prefactor, betaMoment]
  have hsub : A + C - r - A = C - r := by omega
  have htotal : A + C - r + B + 1 = A + B + C + 1 - r := by omega
  rw [hsub, htotal]
  field_simp [factorial_cast_ne_zero]
  <;> ring

/-- Expanding `(1-u+zu)^A` in (3.2) yields this coefficient; the global
parity factor is `(-1)^C`. -/
theorem q_coefficient_factor (A B C r : ℕ) (hr : r ≤ A) :
    prefactor A B C * (A.choose r : ℚ) * betaMoment (B + r) (A + C - r) =
      ((A + C - r).choose C : ℚ) * ((B + r).choose r : ℚ) := by
  have hC : C ≤ A + C - r := by omega
  have hrB : r ≤ B + r := by omega
  rw [choose_cast_factorial A r hr,
    choose_cast_factorial (A + C - r) C hC,
    choose_cast_factorial (B + r) r hrB]
  dsimp [prefactor, betaMoment]
  have hsub : A + C - r - C = A - r := by omega
  have hsubB : B + r - r = B := by omega
  have htotal : B + r + (A + C - r) + 1 = A + B + C + 1 := by omega
  rw [hsub, hsubB, htotal]
  field_simp [factorial_cast_ne_zero]
  <;> ring

/-- Expanding `(1-zu)^B` in (3.3) yields this coefficient; multiply by
`(-1)^r` to recover the signed integer E coefficient. -/
theorem e_coefficient_factor (A B C r : ℕ) (hr : r ≤ B) :
    prefactor A B C * (B.choose r : ℚ) * betaMoment (A + r) C =
      ((A + r).choose r : ℚ) *
        ((A + B + C + 1).choose (A + C + r + 1) : ℚ) := by
  have hrA : r ≤ A + r := by omega
  have hN : A + C + r + 1 ≤ A + B + C + 1 := by omega
  rw [choose_cast_factorial B r hr,
    choose_cast_factorial (A + r) r hrA,
    choose_cast_factorial (A + B + C + 1) (A + C + r + 1) hN]
  dsimp [prefactor, betaMoment]
  have hsubA : A + r - r = A := by omega
  have hsub : A + B + C + 1 - (A + C + r + 1) = B - r := by omega
  have htotal : A + r + C + 1 = A + C + r + 1 := by omega
  rw [hsubA, hsub, htotal]
  field_simp [factorial_cast_ne_zero]
  <;> ring

#print axioms Math.B699.PadeMomentIdentity.choose_cast_factorial
#print axioms Math.B699.PadeMomentIdentity.p_coefficient_factor
#print axioms Math.B699.PadeMomentIdentity.q_coefficient_factor
#print axioms Math.B699.PadeMomentIdentity.e_coefficient_factor

end Math.B699.PadeMomentIdentity

end HeightMember021
/- Frozen source member 22: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Moment\Subdivision.lean SHA256 f8e9687e0d6b4184b37e29640f2a643981028f6347c567424b87d00adef60a6f -/
section HeightMember022





/-!
# Algebraic subdivision of the concrete rational moment

UNCOMPILED CANDIDATE. The proof uses actual coefficient moments, the proved
beta-moment candidate, a finite binomial expansion, and a geometric identity.
No interval integral, derivative, division by z or division by 1-z is used.
-/

namespace Math.B699.PadeMomentIdentity

open Polynomial Math.B699.PadeMoment
open scoped BigOperators

theorem moment_sum {ι : Type*} (s : Finset ι) (f : ι → ℚ[X]) :
    moment (∑ i ∈ s, f i) = ∑ i ∈ s, moment (f i) := by
  classical
  simpa only [momentLinear_apply] using (map_sum momentLinear f s)

private theorem factorial_rat_ne_zero (n : ℕ) : (n.factorial : ℚ) ≠ 0 :=
  Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero n)

/-- Every normalized Bernstein basis element of degree n has the same mass. -/
theorem choose_mul_beta (n r : ℕ) (hr : r ≤ n) :
    (n.choose r : ℚ) * betaMoment r (n - r) = 1 / ((n : ℚ) + 1) := by
  rw [choose_cast_factorial n r hr]
  unfold betaMoment
  have htotal : r + (n - r) + 1 = n + 1 := by omega
  rw [htotal, Nat.factorial_succ n]
  have hn : (n : ℚ) + 1 ≠ 0 := by
    have h : ((n + 1 : ℕ) : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.succ_ne_zero n)
    simpa only [Nat.cast_add, Nat.cast_one] using h
  simp only [Nat.cast_mul, Nat.cast_add, Nat.cast_one]
  field_simp [factorial_rat_ne_zero, hn] <;> ring

theorem affine_right_power_expansion (n : ℕ) (z : ℚ) :
    ((1 - X : ℚ[X]) + Polynomial.C z * X) ^ n =
      ∑ r ∈ Finset.range (n + 1),
        Polynomial.C ((n.choose r : ℚ) * z ^ r) * bernsteinMonomial r (n - r) := by
  classical
  calc
    ((1 - X : ℚ[X]) + Polynomial.C z * X) ^ n =
        (Polynomial.C z * X + (1 - X)) ^ n := by rw [add_comm]
    _ = ∑ r ∈ Finset.range (n + 1),
        (Polynomial.C z * X) ^ r * (1 - X) ^ (n - r) * (n.choose r : ℚ[X]) :=
      add_pow _ _ _
    _ = _ := by
      apply Finset.sum_congr rfl
      intro r hr
      unfold bernsteinMonomial
      rw [mul_pow, map_mul, map_pow, map_natCast]
      ring

theorem moment_affine_right_power (n : ℕ) (z : ℚ) :
    moment (((1 - X : ℚ[X]) + Polynomial.C z * X) ^ n) =
      (1 / ((n : ℚ) + 1)) * ∑ r ∈ Finset.range (n + 1), z ^ r := by
  classical
  rw [affine_right_power_expansion, moment_sum]
  simp only [moment_C_mul, moment_bernsteinMonomial]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have hmass := choose_mul_beta n r (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))
  calc
    ((n.choose r : ℚ) * z ^ r) * betaMoment r (n - r) =
        z ^ r * ((n.choose r : ℚ) * betaMoment r (n - r)) := by ring
    _ = z ^ r * (1 / ((n : ℚ) + 1)) := by rw [hmass]
    _ = _ := by ring

/-- A division-free geometric sum identity, including z=0 and z=1. -/
theorem one_sub_mul_power_sum (n : ℕ) (z : ℚ) :
    (1 - z) * (∑ r ∈ Finset.range (n + 1), z ^ r) = 1 - z ^ (n + 1) := by
  induction n with
  | zero => simp
  | succ n ih =>
      rw [Finset.sum_range_succ, mul_add, ih]
      simp only [pow_succ]
      ring

theorem moment_monomial_comp_left (n : ℕ) (a z : ℚ) :
    moment ((Polynomial.monomial n a).comp (Polynomial.C z * X)) =
      a * z ^ n / ((n : ℚ) + 1) := by
  rw [Polynomial.monomial_comp]
  have hpow : (Polynomial.C z * (X : ℚ[X])) ^ n = Polynomial.C (z ^ n) * X ^ n := by
    rw [mul_pow, map_pow]
  rw [hpow, ← mul_assoc, ← map_mul, moment_C_mul, moment_X_pow]
  ring

/-- Algebraic oriented subdivision with a reflected right segment.
The identity holds for every rational z, not only for z in the unit interval. -/
theorem moment_subdivision (p : ℚ[X]) (z : ℚ) :
    moment p = z * moment (p.comp (Polynomial.C z * X)) +
      (1 - z) * moment (p.comp ((1 - X) + Polynomial.C z * X)) := by
  induction p using Polynomial.induction_on' with
  | add p q ihp ihq =>
      simp only [Polynomial.add_comp, moment_add]
      rw [ihp, ihq]
      ring
  | monomial n a =>
      rw [moment_monomial, moment_monomial_comp_left, Polynomial.monomial_comp,
        moment_C_mul, moment_affine_right_power]
      have hsum : z * z ^ n +
          (1 - z) * (∑ r ∈ Finset.range (n + 1), z ^ r) = 1 := by
        rw [← pow_succ', one_sub_mul_power_sum]
        ring
      calc
        a / ((n : ℚ) + 1) = (a / ((n : ℚ) + 1)) * 1 := by ring
        _ = (a / ((n : ℚ) + 1)) *
            (z * z ^ n + (1 - z) * (∑ r ∈ Finset.range (n + 1), z ^ r)) := by rw [hsum]
        _ = _ := by ring

#print axioms Math.B699.PadeMomentIdentity.choose_mul_beta
#print axioms Math.B699.PadeMomentIdentity.moment_affine_right_power
#print axioms Math.B699.PadeMomentIdentity.moment_subdivision

end Math.B699.PadeMomentIdentity

end HeightMember022
/- Frozen source member 23: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Moment\KernelMoments.lean SHA256 75b49f5b6019ebebc26c25321886e75dd48b520592e43b2c77ab704586c7423f -/
section HeightMember023


/-!
# The Padé identity from actual rational moments of polynomial kernels

UNCOMPILED CANDIDATE. All A,B,C are natural numbers and z is any rational.
No Padé identity, multiplicativity of moment, or analytic substitution rule
is an input. The actual integer-coefficient connection is in SourceMoments.
-/

namespace Math.B699.PadeMomentIdentity

open Polynomial Math.B699.PadeMoment

noncomputable def pKernel (A B C : ℕ) (z : ℚ) : ℚ[X] :=
  X ^ A * (1 - X) ^ B * (Polynomial.C z - X) ^ C

noncomputable def qKernel (A B C : ℕ) (z : ℚ) : ℚ[X] :=
  X ^ B * (1 - X) ^ C * (1 - X + Polynomial.C z * X) ^ A

noncomputable def eKernel (A B C : ℕ) (z : ℚ) : ℚ[X] :=
  X ^ A * (1 - X) ^ C * (1 - Polynomial.C z * X) ^ B

noncomputable def pMoment (A B C : ℕ) (z : ℚ) : ℚ :=
  prefactor A B C * moment (pKernel A B C z)

noncomputable def qMoment (A B C : ℕ) (z : ℚ) : ℚ :=
  (-1 : ℚ) ^ C * prefactor A B C * moment (qKernel A B C z)

noncomputable def eMoment (A B C : ℕ) (z : ℚ) : ℚ :=
  prefactor A B C * moment (eKernel A B C z)

theorem pKernel_comp_left (A B C : ℕ) (z : ℚ) :
    (pKernel A B C z).comp (Polynomial.C z * X) =
      Polynomial.C (z ^ (A + C)) * eKernel A B C z := by
  simp only [pKernel, Polynomial.mul_comp, Polynomial.pow_comp,
    Polynomial.sub_comp, Polynomial.X_comp, Polynomial.C_comp, Polynomial.one_comp]
  have h : Polynomial.C z - Polynomial.C z * (X : ℚ[X]) =
      Polynomial.C z * (1 - X) := by ring
  rw [h]
  unfold eKernel
  simp only [mul_pow, Polynomial.C_mul, Polynomial.C_pow, pow_add]
  ring

theorem pKernel_comp_right (A B C : ℕ) (z : ℚ) :
    (pKernel A B C z).comp ((1 - X) + Polynomial.C z * X) =
      Polynomial.C ((-1 : ℚ) ^ C * (1 - z) ^ (B + C)) * qKernel A B C z := by
  simp only [pKernel, Polynomial.mul_comp, Polynomial.pow_comp,
    Polynomial.sub_comp, Polynomial.X_comp, Polynomial.C_comp, Polynomial.one_comp]
  have h1 : (1 : ℚ[X]) - ((1 - X) + Polynomial.C z * X) =
      Polynomial.C (1 - z) * X := by
    simp only [map_sub, map_one]
    ring
  have h2 : Polynomial.C z - ((1 - X : ℚ[X]) + Polynomial.C z * X) =
      Polynomial.C (-(1 - z)) * (1 - X) := by
    simp only [map_neg, map_sub, map_one]
    ring
  have hneg : (Polynomial.C (-(1 - z)) : ℚ[X]) =
      Polynomial.C (-1) * Polynomial.C (1 - z) := by
    rw [← Polynomial.C_mul, neg_one_mul]
  rw [h1, h2, hneg]
  unfold qKernel
  simp only [mul_pow, Polynomial.C_mul, Polynomial.C_pow, pow_add]
  ring

/-- The correct source exponents are B+C+1 and A+C+1. -/
theorem moment_pade_identity (A B C : ℕ) (z : ℚ) :
    pMoment A B C z - (1 - z) ^ (B + C + 1) * qMoment A B C z =
      z ^ (A + C + 1) * eMoment A B C z := by
  have h := moment_subdivision (pKernel A B C z) z
  simp only [pKernel_comp_left, pKernel_comp_right, moment_C_mul] at h
  unfold pMoment qMoment eMoment
  rw [h]
  simp only [pow_succ]
  ring

#print axioms Math.B699.PadeMomentIdentity.pKernel_comp_left
#print axioms Math.B699.PadeMomentIdentity.pKernel_comp_right
#print axioms Math.B699.PadeMomentIdentity.moment_pade_identity

end Math.B699.PadeMomentIdentity

end HeightMember023
/- Frozen source member 24: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Moment\Sources.lean SHA256 8ed8bfdecdfd25a0d3340d624f290ee87fbebf873bc1c0cf3af23d888279c543 -/
section HeightMember024



/-!
# Actual source coefficient sums are the concrete moment values

UNCOMPILED CANDIDATE. These are the explicit integer BFT coefficient formulas,
cast to Rat, not polynomials specified only by satisfying a Padé identity.
Every natural-subtraction bound is attached to the finite sum index.
-/

namespace Math.B699.PadeMomentIdentity

open Polynomial Math.B699.PadeMoment
open scoped BigOperators

def pSource (A B C : ℕ) (z : ℚ) : ℚ :=
  ∑ r ∈ Finset.range (C + 1),
    ((-1 : ℚ) ^ (C + r) * ((A + B + C + 1).choose r : ℚ) *
      ((A + C - r).choose A : ℚ)) * z ^ r

def qSource (A B C : ℕ) (z : ℚ) : ℚ :=
  ∑ r ∈ Finset.range (A + 1),
    ((-1 : ℚ) ^ C * ((A + C - r).choose C : ℚ) * ((B + r).choose r : ℚ)) * z ^ r

def eSource (A B C : ℕ) (z : ℚ) : ℚ :=
  ∑ r ∈ Finset.range (B + 1),
    ((-1 : ℚ) ^ r * ((A + r).choose r : ℚ) *
      ((A + B + C + 1).choose (A + C + r + 1) : ℚ)) * z ^ r

theorem pKernel_expansion (A B C : ℕ) (z : ℚ) :
    pKernel A B C z =
      ∑ r ∈ Finset.range (C + 1),
        Polynomial.C ((-1 : ℚ) ^ (C + r) * (C.choose r : ℚ) * z ^ r) *
          bernsteinMonomial (A + C - r) B := by
  simpa only [pKernel, bernsteinMonomial, map_mul, map_pow, map_neg, map_one,
    map_natCast] using
    (KernelAlgebra.p_kernel_expansion A B C (Polynomial.C z) (X : ℚ[X]))

theorem qKernel_expansion (A B C : ℕ) (z : ℚ) :
    qKernel A B C z =
      ∑ r ∈ Finset.range (A + 1),
        Polynomial.C ((A.choose r : ℚ) * z ^ r) *
          bernsteinMonomial (B + r) (A + C - r) := by
  simpa only [qKernel, bernsteinMonomial, map_mul, map_pow, map_natCast] using
    (KernelAlgebra.q_kernel_expansion A B C (Polynomial.C z) (X : ℚ[X]))

theorem eKernel_expansion (A B C : ℕ) (z : ℚ) :
    eKernel A B C z =
      ∑ r ∈ Finset.range (B + 1),
        Polynomial.C ((-1 : ℚ) ^ r * (B.choose r : ℚ) * z ^ r) *
          bernsteinMonomial (A + r) C := by
  simpa only [eKernel, bernsteinMonomial, map_mul, map_pow, map_neg, map_one,
    map_natCast] using
    (KernelAlgebra.e_kernel_expansion A B C (Polynomial.C z) (X : ℚ[X]))

theorem pSource_eq_moment (A B C : ℕ) (z : ℚ) : pSource A B C z = pMoment A B C z := by
  classical
  unfold pSource pMoment
  rw [pKernel_expansion, moment_sum]
  simp only [moment_C_mul, moment_bernsteinMonomial]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have h := p_coefficient_factor A B C r (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))
  calc
    ((-1 : ℚ) ^ (C + r) * ((A + B + C + 1).choose r : ℚ) *
        ((A + C - r).choose A : ℚ)) * z ^ r =
      ((-1 : ℚ) ^ (C + r) * z ^ r) *
        (((A + B + C + 1).choose r : ℚ) * ((A + C - r).choose A : ℚ)) := by ring
    _ = ((-1 : ℚ) ^ (C + r) * z ^ r) *
        (prefactor A B C * (C.choose r : ℚ) * betaMoment (A + C - r) B) := by rw [h]
    _ = _ := by ring

theorem qSource_eq_moment (A B C : ℕ) (z : ℚ) : qSource A B C z = qMoment A B C z := by
  classical
  unfold qSource qMoment
  rw [qKernel_expansion, moment_sum]
  simp only [moment_C_mul, moment_bernsteinMonomial]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have h := q_coefficient_factor A B C r (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))
  calc
    ((-1 : ℚ) ^ C * ((A + C - r).choose C : ℚ) * ((B + r).choose r : ℚ)) * z ^ r =
        ((-1 : ℚ) ^ C * z ^ r) *
          (((A + C - r).choose C : ℚ) * ((B + r).choose r : ℚ)) := by ring
    _ = ((-1 : ℚ) ^ C * z ^ r) *
        (prefactor A B C * (A.choose r : ℚ) * betaMoment (B + r) (A + C - r)) := by rw [h]
    _ = _ := by ring

theorem eSource_eq_moment (A B C : ℕ) (z : ℚ) : eSource A B C z = eMoment A B C z := by
  classical
  unfold eSource eMoment
  rw [eKernel_expansion, moment_sum]
  simp only [moment_C_mul, moment_bernsteinMonomial]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have h := e_coefficient_factor A B C r (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))
  calc
    ((-1 : ℚ) ^ r * ((A + r).choose r : ℚ) *
        ((A + B + C + 1).choose (A + C + r + 1) : ℚ)) * z ^ r =
      ((-1 : ℚ) ^ r * z ^ r) *
        (((A + r).choose r : ℚ) * ((A + B + C + 1).choose (A + C + r + 1) : ℚ)) := by ring
    _ = ((-1 : ℚ) ^ r * z ^ r) *
        (prefactor A B C * (B.choose r : ℚ) * betaMoment (A + r) C) := by rw [h]
    _ = _ := by ring

theorem source_pade_identity (A B C : ℕ) (z : ℚ) :
    pSource A B C z - (1 - z) ^ (B + C + 1) * qSource A B C z =
      z ^ (A + C + 1) * eSource A B C z := by
  rw [pSource_eq_moment, qSource_eq_moment, eSource_eq_moment]
  exact moment_pade_identity A B C z

#print axioms Math.B699.PadeMomentIdentity.pSource_eq_moment
#print axioms Math.B699.PadeMomentIdentity.qSource_eq_moment
#print axioms Math.B699.PadeMomentIdentity.eSource_eq_moment
#print axioms Math.B699.PadeMomentIdentity.source_pade_identity

end Math.B699.PadeMomentIdentity

end HeightMember024
/- Frozen source member 25: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Moment\Identity.lean SHA256 58ec20412d6b14972eb24176d14c27a766fe4d6b89ebc0a9718f9c8e15f6008e -/
section HeightMember025



/-!
# Adapter to the actual PadeInteger arrays

UNCOMPILED CANDIDATE. This final file states the result using the existing
pPolynomial/qPolynomial/ePolynomial, not replacement objects with a Padé
identity in their definition. The source candidate imports are not treated
as accepted merely because this file references them.
-/

namespace Math.B699.PadeMomentIdentity

open Math.B699.PadeConstruction
open scoped BigOperators

theorem pSource_eq_actual_eval (A B C : ℕ) (z : ℚ) :
    pSource A B C z = (pPolynomial A B C).eval₂ (Int.castRingHom ℚ) z := by
  classical
  unfold pSource pPolynomial coefficientPolynomial
  simp only [Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial]
  apply Finset.sum_congr rfl
  intro r hr
  simp [pCoefficient]

theorem qSource_eq_actual_eval (A B C : ℕ) (z : ℚ) :
    qSource A B C z = (qPolynomial A B C).eval₂ (Int.castRingHom ℚ) z := by
  classical
  unfold qSource qPolynomial coefficientPolynomial
  simp only [Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial]
  apply Finset.sum_congr rfl
  intro r hr
  simp [qCoefficient, qMagnitude, mul_assoc]

theorem eSource_eq_actual_eval (A B C : ℕ) (z : ℚ) :
    eSource A B C z = (ePolynomial A B C).eval₂ (Int.castRingHom ℚ) z := by
  classical
  unfold eSource ePolynomial coefficientPolynomial
  simp only [Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial]
  apply Finset.sum_congr rfl
  intro r hr
  simp [eCoefficient]

theorem actual_integer_pade_identity (A B C : ℕ) (z : ℚ) :
    (pPolynomial A B C).eval₂ (Int.castRingHom ℚ) z -
        (1 - z) ^ (B + C + 1) * (qPolynomial A B C).eval₂ (Int.castRingHom ℚ) z =
      z ^ (A + C + 1) * (ePolynomial A B C).eval₂ (Int.castRingHom ℚ) z := by
  rw [← pSource_eq_actual_eval, ← qSource_eq_actual_eval, ← eSource_eq_actual_eval]
  exact source_pade_identity A B C z

#print axioms Math.B699.PadeMomentIdentity.pSource_eq_actual_eval
#print axioms Math.B699.PadeMomentIdentity.qSource_eq_actual_eval
#print axioms Math.B699.PadeMomentIdentity.eSource_eq_actual_eval
#print axioms Math.B699.PadeMomentIdentity.actual_integer_pade_identity

end Math.B699.PadeMomentIdentity

end HeightMember025
/- Frozen source member 26: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\HomRemainder\Remainder.lean SHA256 9ce51165d87486001436f9090a1cf164552a04b5c4260b38870a7bc04c71c8dd -/
section HeightMember026



/-!
# Rational remainder identity for the actual gcd-normalized integer rows

UNCOMPILED CANDIDATE. The only denominator assumption is y != 0.
The source Padé identity and the actual coefficient-content divisibility
are proved imports, never external hypotheses of the results below.
The numerator x may be zero. Actual adjacent-row nonvanishing, when used
later, separately retains the accepted Pade/Rows requirement x != 0.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.PadeRationalHomogeneous

open Polynomial Math.B699.PadeConstruction Math.B699.PadeContent
open Math.B699.PadeMomentIdentity

/-- Clear the denominator in the actual source identity, before normalizing.
All exponents are natural and the surviving power of y is exactly v. -/
theorem raw_homogeneous_remainder_q (u v : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (y : ℚ) ^ (u + v + 1) * (homogeneousValue u (pCoefficient u v u) x y : ℚ) -
        ((y - x : ℤ) : ℚ) ^ (u + v + 1) *
          (homogeneousValue u (qCoefficient u v u) x y : ℚ) =
      (y : ℚ) ^ v * (x : ℚ) ^ (2 * u + 1) *
        (ePolynomial u v u).eval₂ (Int.castRingHom ℚ) ((x : ℚ) / (y : ℚ)) := by
  let z : ℚ := (x : ℚ) / (y : ℚ)
  let pEval : ℚ := (pPolynomial u v u).eval₂ (Int.castRingHom ℚ) z
  let qEval : ℚ := (qPolynomial u v u).eval₂ (Int.castRingHom ℚ) z
  let eEval : ℚ := (ePolynomial u v u).eval₂ (Int.castRingHom ℚ) z
  have hyq : (y : ℚ) ≠ 0 := Int.cast_ne_zero.mpr hy
  have hyz : (y : ℚ) * z = (x : ℚ) := by
    dsimp [z]
    field_simp [hyq]
    <;> ring
  have hbase : (y : ℚ) * (1 - z) = (y : ℚ) - (x : ℚ) := by
    calc
      (y : ℚ) * (1 - z) = (y : ℚ) - (y : ℚ) * z := by ring
      _ = (y : ℚ) - (x : ℚ) := by rw [hyz]
  have hquotient_pow :
      (y : ℚ) ^ (u + v + 1) * (1 - z) ^ (u + v + 1) =
        ((y : ℚ) - (x : ℚ)) ^ (u + v + 1) := by
    rw [← mul_pow, hbase]
  have hsource : pEval - (1 - z) ^ (u + v + 1) * qEval =
      z ^ (2 * u + 1) * eEval := by
    have hvu : v + u + 1 = u + v + 1 := by omega
    have huu : u + u + 1 = 2 * u + 1 := by omega
    dsimp only [pEval, qEval, eEval]
    simpa only [hvu, huu] using actual_integer_pade_identity u v u z
  have hy_powers :
      (y : ℚ) ^ u * (y : ℚ) ^ (u + v + 1) =
        (y : ℚ) ^ v * (y : ℚ) ^ (2 * u + 1) := by
    rw [← pow_add, ← pow_add]
    congr 1
    omega
  have hyz_pow : (y : ℚ) ^ (2 * u + 1) * z ^ (2 * u + 1) =
      (x : ℚ) ^ (2 * u + 1) := by
    rw [← mul_pow, hyz]
  rw [p_homogeneousValue_cast_q u v u x y hy,
    q_homogeneousValue_cast_q u v u x y hy]
  simp only [Int.cast_sub]
  change (y : ℚ) ^ (u + v + 1) * ((y : ℚ) ^ u * pEval) -
      ((y : ℚ) - (x : ℚ)) ^ (u + v + 1) * ((y : ℚ) ^ u * qEval) =
    (y : ℚ) ^ v * (x : ℚ) ^ (2 * u + 1) * eEval
  calc
    (y : ℚ) ^ (u + v + 1) * ((y : ℚ) ^ u * pEval) -
        ((y : ℚ) - (x : ℚ)) ^ (u + v + 1) * ((y : ℚ) ^ u * qEval) =
      (y : ℚ) ^ u * ((y : ℚ) ^ (u + v + 1) * pEval -
        ((y : ℚ) - (x : ℚ)) ^ (u + v + 1) * qEval) := by ring
    _ = (y : ℚ) ^ u * ((y : ℚ) ^ (u + v + 1) *
        (pEval - (1 - z) ^ (u + v + 1) * qEval)) := by
      congr 1
      calc
        (y : ℚ) ^ (u + v + 1) * pEval -
            ((y : ℚ) - (x : ℚ)) ^ (u + v + 1) * qEval =
          (y : ℚ) ^ (u + v + 1) * pEval -
            ((y : ℚ) ^ (u + v + 1) * (1 - z) ^ (u + v + 1)) * qEval := by
          rw [hquotient_pow]
        _ = (y : ℚ) ^ (u + v + 1) *
            (pEval - (1 - z) ^ (u + v + 1) * qEval) := by ring
    _ = (y : ℚ) ^ u * ((y : ℚ) ^ (u + v + 1) *
        (z ^ (2 * u + 1) * eEval)) := by rw [hsource]
    _ = ((y : ℚ) ^ u * (y : ℚ) ^ (u + v + 1)) *
        z ^ (2 * u + 1) * eEval := by ring
    _ = ((y : ℚ) ^ v * (y : ℚ) ^ (2 * u + 1)) *
        z ^ (2 * u + 1) * eEval := by rw [hy_powers]
    _ = (y : ℚ) ^ v * ((y : ℚ) ^ (2 * u + 1) * z ^ (2 * u + 1)) *
        eEval := by ring
    _ = (y : ℚ) ^ v * (x : ℚ) ^ (2 * u + 1) * eEval := by rw [hyz_pow]

/-- Exact remainder for the actual integer P/Q normalization by qContent.
There is no source-identity, Hom-correspondence or gcd-divisibility premise. -/
theorem normalized_remainder_q (u v : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (qContent u v u : ℚ) *
      ((y : ℚ) ^ (u + v + 1) * (pNormalizedValue u v x y : ℚ) -
        ((y - x : ℤ) : ℚ) ^ (u + v + 1) *
          (qNormalizedValue u v u x y : ℚ)) =
      (y : ℚ) ^ v * (x : ℚ) ^ (2 * u + 1) *
        (ePolynomial u v u).eval₂ (Int.castRingHom ℚ) ((x : ℚ) / (y : ℚ)) := by
  calc
    (qContent u v u : ℚ) *
        ((y : ℚ) ^ (u + v + 1) * (pNormalizedValue u v x y : ℚ) -
          ((y - x : ℤ) : ℚ) ^ (u + v + 1) *
            (qNormalizedValue u v u x y : ℚ)) =
      (y : ℚ) ^ (u + v + 1) *
          ((qContent u v u : ℚ) * (pNormalizedValue u v x y : ℚ)) -
        ((y - x : ℤ) : ℚ) ^ (u + v + 1) *
          ((qContent u v u : ℚ) * (qNormalizedValue u v u x y : ℚ)) := by ring
    _ = (y : ℚ) ^ (u + v + 1) *
          (homogeneousValue u (pCoefficient u v u) x y : ℚ) -
        ((y - x : ℤ) : ℚ) ^ (u + v + 1) *
          (homogeneousValue u (qCoefficient u v u) x y : ℚ) := by
      rw [qContent_mul_pNormalizedValue_cast_q u v x y,
        qContent_mul_qNormalizedValue_cast_q u v u x y]
    _ = (y : ℚ) ^ v * (x : ℚ) ^ (2 * u + 1) *
        (ePolynomial u v u).eval₂ (Int.castRingHom ℚ) ((x : ℚ) / (y : ℚ)) :=
      raw_homogeneous_remainder_q u v x y hy

/-- The same actual identity with the integer row error kept as one cast.
This is the expression appearing in the accepted integer-gap consumer. -/
theorem normalized_integer_error_cast_q (u v : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (qContent u v u : ℚ) *
      ((y ^ (u + v + 1) * pNormalizedValue u v x y -
          (y - x) ^ (u + v + 1) * qNormalizedValue u v u x y : ℤ) : ℚ) =
      (y : ℚ) ^ v * (x : ℚ) ^ (2 * u + 1) *
        (ePolynomial u v u).eval₂ (Int.castRingHom ℚ) ((x : ℚ) / (y : ℚ)) := by
  simpa only [Int.cast_sub, Int.cast_mul, Int.cast_pow] using
    normalized_remainder_q u v x y hy

end Math.B699.PadeRationalHomogeneous

end HeightMember026
/- Frozen source member 27: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Moment\Bernstein.lean SHA256 db7132f7228db04d75cb78004be964e821df07787a70ea87f1307c23744c2441 -/
section HeightMember027



/-!
# Positivity of the concrete moment on a generated Bernstein cone

This is a separate candidate from Moment.lean. It provides no certificate
that a particular Padé kernel has the required numerical growth constant.
The functional is not multiplicative; all product estimates below pass
through cone closure and proved linearity instead.

No compilation or axiom audit has been run in this task.
-/

namespace Math.B699.PadeMoment

open Polynomial

theorem moment_bernsteinMonomial_pos (a b : ℕ) :
    0 < moment (bernsteinMonomial a b) := by
  rw [moment_bernsteinMonomial]
  unfold betaMoment
  exact div_pos
    (mul_pos (Nat.cast_pos.mpr (Nat.factorial_pos a))
      (Nat.cast_pos.mpr (Nat.factorial_pos b)))
    (Nat.cast_pos.mpr (Nat.factorial_pos (a + b + 1)))

/-- Finite sums of nonnegative rational multiples of Bernstein monomials.
Multiplication is deliberately not a constructor; it is proved below. -/
inductive BernsteinCone : ℚ[X] → Prop
  | zero : BernsteinCone 0
  | basis (a b : ℕ) : BernsteinCone (bernsteinMonomial a b)
  | add {p q : ℚ[X]} : BernsteinCone p → BernsteinCone q → BernsteinCone (p + q)
  | scale (c : ℚ) (hc : 0 ≤ c) {p : ℚ[X]} :
      BernsteinCone p → BernsteinCone (Polynomial.C c * p)

theorem bernsteinCone_one : BernsteinCone (1 : ℚ[X]) := by
  simpa only [bernsteinMonomial, pow_zero, mul_one] using BernsteinCone.basis 0 0

theorem bernsteinCone_moment_nonneg {p : ℚ[X]} (hp : BernsteinCone p) :
    0 ≤ moment p := by
  induction hp with
  | zero => simp only [moment_zero, le_refl]
  | basis a b => exact (moment_bernsteinMonomial_pos a b).le
  | @add p q hp hq ihp ihq =>
      rw [moment_add]
      exact add_nonneg ihp ihq
  | @scale c hc p hp ihp =>
      rw [moment_C_mul]
      exact mul_nonneg hc ihp

theorem bernsteinCone_basis_mul (a b : ℕ) {q : ℚ[X]} (hq : BernsteinCone q) :
    BernsteinCone (bernsteinMonomial a b * q) := by
  induction hq with
  | zero => simpa only [mul_zero] using BernsteinCone.zero
  | basis c d =>
      simpa only [bernsteinMonomial_mul] using BernsteinCone.basis (a + c) (b + d)
  | @add p q hp hq ihp ihq =>
      simpa only [mul_add] using BernsteinCone.add ihp ihq
  | @scale c hc p hp ihp =>
      have h := BernsteinCone.scale c hc ihp
      convert h using 1 <;> ring

theorem bernsteinCone_mul {p q : ℚ[X]} (hp : BernsteinCone p) (hq : BernsteinCone q) :
    BernsteinCone (p * q) := by
  induction hp with
  | zero => simpa only [zero_mul] using BernsteinCone.zero
  | basis a b => exact bernsteinCone_basis_mul a b hq
  | @add p r hp hr ihp ihr =>
      simpa only [add_mul] using BernsteinCone.add ihp ihr
  | @scale c hc p hp ihp =>
      simpa only [mul_assoc] using BernsteinCone.scale c hc ihp

theorem bernsteinCone_pow {p : ℚ[X]} (hp : BernsteinCone p) (n : ℕ) :
    BernsteinCone (p ^ n) := by
  induction n with
  | zero => simpa only [pow_zero] using bernsteinCone_one
  | succ n ih => simpa only [pow_succ] using bernsteinCone_mul ih hp

theorem moment_le_of_bernsteinCone_sub {p q : ℚ[X]} (h : BernsteinCone (q - p)) :
    moment p ≤ moment q := by
  have h' : 0 ≤ moment q - moment p := by
    simpa only [moment_sub] using bernsteinCone_moment_nonneg h
  exact sub_nonneg.mp h'

/-- A finite cone certificate for C(lambda)-F yields all powers, without
assuming that moment preserves multiplication. -/
theorem bernsteinCone_power_gap (F : ℚ[X]) (lam : ℚ) (hlam : 0 ≤ lam)
    (hF : BernsteinCone F) (hgap : BernsteinCone (Polynomial.C lam - F)) (n : ℕ) :
    BernsteinCone (Polynomial.C (lam ^ n) - F ^ n) := by
  induction n with
  | zero => simpa only [pow_zero, map_one, sub_self] using BernsteinCone.zero
  | succ n ih =>
      have h := BernsteinCone.add (BernsteinCone.scale lam hlam ih)
        (bernsteinCone_mul (bernsteinCone_pow hF n) hgap)
      convert h using 1 <;> simp only [pow_succ, map_mul] <;> ring

/-- Conditional all-n growth consumer. Supplying concrete Padé kernels and
their numerical cone certificates remains a separate obligation. -/
theorem moment_weighted_power_le (g F : ℚ[X]) (lam : ℚ) (hlam : 0 ≤ lam)
    (hg : BernsteinCone g) (hF : BernsteinCone F)
    (hgap : BernsteinCone (Polynomial.C lam - F)) (n : ℕ) :
    moment (g * F ^ n) ≤ lam ^ n * moment g := by
  have hprod := bernsteinCone_mul hg (bernsteinCone_power_gap F lam hlam hF hgap n)
  have hsub : BernsteinCone (Polynomial.C (lam ^ n) * g - g * F ^ n) := by
    convert hprod using 1 <;> ring
  have hle := moment_le_of_bernsteinCone_sub hsub
  simpa only [moment_C_mul] using hle

#print axioms Math.B699.PadeMoment.bernsteinCone_moment_nonneg
#print axioms Math.B699.PadeMoment.bernsteinCone_mul
#print axioms Math.B699.PadeMoment.bernsteinCone_power_gap
#print axioms Math.B699.PadeMoment.moment_weighted_power_le

end Math.B699.PadeMoment

end HeightMember027
/- Frozen source member 28: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Growth\Affine.lean SHA256 630dee1e6c6fc6cb3750192d2e2ca319b0d0d57cb1b6cf88ab7849bf3c378071 -/
section HeightMember028




/-!
# Actual positive affine substitution preserves the Bernstein cone

UNCOMPILED CANDIDATE. No cone membership is assumed for a desired source core
or weight. They are built below from X, 1-X and positive affine factors.
-/

namespace Math.B699.GrowthLeaf

open Polynomial Math.B699.PadeMoment

theorem cone_X : BernsteinCone (X : ℚ[X]) := by
  simpa only [bernsteinMonomial, pow_one, pow_zero, mul_one] using BernsteinCone.basis 1 0

theorem cone_one_sub_X : BernsteinCone (1 - X : ℚ[X]) := by
  simpa only [bernsteinMonomial, pow_zero, pow_one, one_mul] using BernsteinCone.basis 0 1

noncomputable def affine (a b : ℚ) : ℚ[X] :=
  Polynomial.C a * (1 - X) + Polynomial.C b * X

theorem affine_eq_standard (a b : ℚ) :
    affine a b = Polynomial.C a + Polynomial.C (b - a) * X := by
  unfold affine
  rw [map_sub]
  ring

theorem cone_affine (a b : ℚ) (ha : 0 ≤ a) (hb : 0 ≤ b) :
    BernsteinCone (affine a b) := by
  exact BernsteinCone.add (BernsteinCone.scale a ha cone_one_sub_X)
    (BernsteinCone.scale b hb cone_X)

theorem one_sub_affine (a b : ℚ) :
    1 - affine a b = affine (1 - a) (1 - b) := by
  unfold affine
  simp only [map_sub, map_one]
  ring

/-- All endpoint inequalities are actual hypotheses. No interval order is
inferred from a numerical certificate label. -/
theorem cone_comp_affine {p : ℚ[X]} (hp : BernsteinCone p)
    (a b : ℚ) (ha : 0 ≤ a) (hab : a ≤ b) (hb : b ≤ 1) :
    BernsteinCone (p.comp (affine a b)) := by
  have ht : BernsteinCone (affine a b) := cone_affine a b ha (ha.trans hab)
  have hcomp : BernsteinCone (1 - affine a b) := by
    rw [one_sub_affine]
    exact cone_affine (1 - a) (1 - b)
      (sub_nonneg.mpr (hab.trans hb)) (sub_nonneg.mpr hb)
  induction hp with
  | zero => simpa only [Polynomial.zero_comp] using BernsteinCone.zero
  | basis i j =>
      simpa only [bernsteinMonomial, Polynomial.mul_comp, Polynomial.pow_comp,
        Polynomial.sub_comp, Polynomial.one_comp, Polynomial.X_comp] using
        bernsteinCone_mul (bernsteinCone_pow ht i) (bernsteinCone_pow hcomp j)
  | @add p q hp hq ihp ihq =>
      simpa only [Polynomial.add_comp] using BernsteinCone.add ihp ihq
  | @scale c hc p hp ih =>
      simpa only [Polynomial.mul_comp, Polynomial.C_comp] using BernsteinCone.scale c hc ih

noncomputable def qFactor (z : ℚ) : ℚ[X] := (1 - X) + Polynomial.C z * X
noncomputable def eFactor (z : ℚ) : ℚ[X] := 1 - Polynomial.C z * X

theorem cone_qFactor (z : ℚ) (hz : 0 ≤ z) : BernsteinCone (qFactor z) := by
  exact BernsteinCone.add cone_one_sub_X (BernsteinCone.scale z hz cone_X)

theorem cone_eFactor (z : ℚ) (hz : z ≤ 1) : BernsteinCone (eFactor z) := by
  have h : eFactor z = qFactor (1 - z) := by
    unfold eFactor qFactor
    rw [map_sub, map_one]
    ring
  rw [h]
  exact cone_qFactor (1 - z) (sub_nonneg.mpr hz)

noncomputable def qCore (c d : ℕ) (z : ℚ) : ℚ[X] :=
  X ^ (c - d) * (1 - X) ^ d * qFactor z ^ d
noncomputable def eCore (c d : ℕ) (z : ℚ) : ℚ[X] :=
  X ^ d * (1 - X) ^ d * eFactor z ^ (c - d)
noncomputable def qWeight (c d delta : ℕ) (z : ℚ) : ℚ[X] :=
  X ^ (c - d - 1 + delta) * (1 - X) ^ (d - delta) * qFactor z ^ (d - delta)
noncomputable def eWeight (c d delta : ℕ) (z : ℚ) : ℚ[X] :=
  X ^ (d - delta) * (1 - X) ^ (d - delta) * eFactor z ^ (c - d - 1 + delta)

theorem cone_qCore (c d : ℕ) (z : ℚ) (hz : 0 ≤ z) : BernsteinCone (qCore c d z) := by
  exact bernsteinCone_mul
    (bernsteinCone_mul (bernsteinCone_pow cone_X (c - d)) (bernsteinCone_pow cone_one_sub_X d))
    (bernsteinCone_pow (cone_qFactor z hz) d)

theorem cone_eCore (c d : ℕ) (z : ℚ) (hz : z ≤ 1) : BernsteinCone (eCore c d z) := by
  exact bernsteinCone_mul
    (bernsteinCone_mul (bernsteinCone_pow cone_X d) (bernsteinCone_pow cone_one_sub_X d))
    (bernsteinCone_pow (cone_eFactor z hz) (c - d))

theorem cone_qWeight (c d delta : ℕ) (z : ℚ) (hz : 0 ≤ z) :
    BernsteinCone (qWeight c d delta z) := by
  exact bernsteinCone_mul
    (bernsteinCone_mul (bernsteinCone_pow cone_X (c - d - 1 + delta))
      (bernsteinCone_pow cone_one_sub_X (d - delta)))
    (bernsteinCone_pow (cone_qFactor z hz) (d - delta))

theorem cone_eWeight (c d delta : ℕ) (z : ℚ) (hz : z ≤ 1) :
    BernsteinCone (eWeight c d delta z) := by
  exact bernsteinCone_mul
    (bernsteinCone_mul (bernsteinCone_pow cone_X (d - delta))
      (bernsteinCone_pow cone_one_sub_X (d - delta)))
    (bernsteinCone_pow (cone_eFactor z hz) (c - d - 1 + delta))

#print axioms Math.B699.GrowthLeaf.cone_comp_affine
#print axioms Math.B699.GrowthLeaf.cone_qCore
#print axioms Math.B699.GrowthLeaf.cone_eCore
#print axioms Math.B699.GrowthLeaf.cone_qWeight
#print axioms Math.B699.GrowthLeaf.cone_eWeight

end Math.B699.GrowthLeaf

end HeightMember028
/- Frozen source member 29: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Growth\Partition.lean SHA256 545ba579fdff23eec83f79a5c8e6fad991e8945c2de43db8c5d1343d65aed818 -/
section HeightMember029





/-!
# Combine actual dyadic moment subdivisions with local Bernstein certificates

UNCOMPILED CANDIDATE. The imported Moment/Subdivision/Bernstein prerequisites
have separate parent acceptance records. This file has not been run in Lean.

The data checker only supplies finite polynomial certificates. Constructing
GrowthTree terms for those concrete data is still a separate obligation.
No local numerical bound is substituted for a global BernsteinCone premise.
-/

namespace Math.B699.PadeGrowthPartition

open Polynomial Math.B699.PadeMoment Math.B699.PadeMomentIdentity

noncomputable def halfLeft : ℚ[X] := Polynomial.C (1 / 2 : ℚ) * X
noncomputable def halfRight : ℚ[X] := Polynomial.C (1 / 2 : ℚ) + Polynomial.C (1 / 2 : ℚ) * X
noncomputable def halfReflected : ℚ[X] := (1 - X) + Polynomial.C (1 / 2 : ℚ) * X

/-- This is obtained from the actual subdivision theorem at z=0. -/
theorem moment_reflection (p : ℚ[X]) :
    moment (p.comp (1 - X)) = moment p := by
  simpa using (moment_subdivision p (0 : ℚ)).symm

theorem halfReflected_comp_reflection :
    halfReflected.comp (1 - X) = halfRight := by
  unfold halfReflected halfRight
  simp only [Polynomial.add_comp, Polynomial.sub_comp, Polynomial.one_comp,
    Polynomial.X_comp, Polynomial.mul_comp, Polynomial.C_comp]
  have htwo : (Polynomial.C (1 / 2 : ℚ) : ℚ[X]) + Polynomial.C (1 / 2 : ℚ) = 1 := by
    rw [← map_add]
    norm_num
  have hsub : (1 : ℚ[X]) - Polynomial.C (1 / 2 : ℚ) = Polynomial.C (1 / 2 : ℚ) :=
    (sub_eq_iff_eq_add).2 htwo.symm
  calc
    (1 : ℚ[X]) - (1 - X) + Polynomial.C (1 / 2 : ℚ) * (1 - X) =
        Polynomial.C (1 / 2 : ℚ) + (1 - Polynomial.C (1 / 2 : ℚ)) * X := by ring
    _ = _ := by rw [hsub]

/-- The orientation-preserving binary split used by the certificate tree. -/
theorem moment_half_split (p : ℚ[X]) :
    moment p = (1 / 2 : ℚ) * moment (p.comp halfLeft) +
      (1 / 2 : ℚ) * moment (p.comp halfRight) := by
  have hr : moment (p.comp halfReflected) = moment (p.comp halfRight) := by
    calc
      moment (p.comp halfReflected) =
          moment ((p.comp halfReflected).comp (1 - X)) :=
        (moment_reflection (p.comp halfReflected)).symm
      _ = moment (p.comp halfRight) := by
        rw [Polynomial.comp_assoc, halfReflected_comp_reflection]
  have h := moment_subdivision p (1 / 2 : ℚ)
  change moment p = (1 / 2 : ℚ) * moment (p.comp halfLeft) +
    (1 - (1 / 2 : ℚ)) * moment (p.comp halfReflected) at h
  have hhalf : 1 - (1 / 2 : ℚ) = (1 / 2 : ℚ) := by norm_num
  rw [hhalf, hr] at h
  exact h

/-- A finite binary tree of genuine local cone proofs. The uniform lambda is
shared by every leaf; numerical pointwise assertions are not constructors. -/
inductive GrowthTree (lam : ℚ) : ℚ[X] → ℚ[X] → Prop
  | leaf {w f : ℚ[X]} : BernsteinCone w → BernsteinCone f →
      BernsteinCone (Polynomial.C lam - f) → GrowthTree lam w f
  | split {w f : ℚ[X]} :
      GrowthTree lam (w.comp halfLeft) (f.comp halfLeft) →
      GrowthTree lam (w.comp halfRight) (f.comp halfRight) → GrowthTree lam w f

/-- Local cone positivity also survives the actual moment subdivision. -/
theorem moment_nonneg_of_tree (lam : ℚ) {w f : ℚ[X]}
    (certificate : GrowthTree lam w f) (n : ℕ) :
    0 ≤ moment (w * f ^ n) := by
  induction certificate with
  | @leaf w f hw hf hgap =>
      exact bernsteinCone_moment_nonneg (bernsteinCone_mul hw (bernsteinCone_pow hf n))
  | @split w f left right ihl ihr =>
      have h := moment_half_split (w * f ^ n)
      simp only [Polynomial.mul_comp, Polynomial.pow_comp] at h
      rw [h]
      exact add_nonneg (mul_nonneg (by norm_num) ihl) (mul_nonneg (by norm_num) ihr)

/-- Full-parameter growth from a finite certificate tree, using the actual M.
This proof never calls multiplicativity of M; only the affine maps preserve
products, and the moment split adds the resulting pieces with positive weights. -/
theorem moment_growth_of_tree (lam : ℚ) (hlam : 0 ≤ lam)
    {w f : ℚ[X]} (certificate : GrowthTree lam w f) (n : ℕ) :
    moment (w * f ^ n) ≤ lam ^ n * moment w := by
  induction certificate with
  | @leaf w f hw hf hgap =>
      exact moment_weighted_power_le w f lam hlam hw hf hgap n
  | @split w f left right ihl ihr =>
      have hproduct : moment (w * f ^ n) =
          (1 / 2 : ℚ) * moment (w.comp halfLeft * (f.comp halfLeft) ^ n) +
          (1 / 2 : ℚ) * moment (w.comp halfRight * (f.comp halfRight) ^ n) := by
        simpa only [Polynomial.mul_comp, Polynomial.pow_comp] using moment_half_split (w * f ^ n)
      have hweight := moment_half_split w
      calc
        moment (w * f ^ n) =
            (1 / 2 : ℚ) * moment (w.comp halfLeft * (f.comp halfLeft) ^ n) +
            (1 / 2 : ℚ) * moment (w.comp halfRight * (f.comp halfRight) ^ n) := hproduct
        _ ≤ (1 / 2 : ℚ) * (lam ^ n * moment (w.comp halfLeft)) +
            (1 / 2 : ℚ) * (lam ^ n * moment (w.comp halfRight)) :=
          add_le_add (mul_le_mul_of_nonneg_left ihl (by norm_num))
            (mul_le_mul_of_nonneg_left ihr (by norm_num))
        _ = lam ^ n * ((1 / 2 : ℚ) * moment (w.comp halfLeft) +
            (1 / 2 : ℚ) * moment (w.comp halfRight)) := by ring
        _ = lam ^ n * moment w := by rw [← hweight]

theorem moment_abs_growth_of_tree (lam : ℚ) (hlam : 0 ≤ lam)
    {w f : ℚ[X]} (certificate : GrowthTree lam w f) (n : ℕ) :
    |moment (w * f ^ n)| ≤ lam ^ n * moment w := by
  rw [abs_of_nonneg (moment_nonneg_of_tree lam certificate n)]
  exact moment_growth_of_tree lam hlam certificate n

#print axioms Math.B699.PadeGrowthPartition.moment_reflection
#print axioms Math.B699.PadeGrowthPartition.moment_half_split
#print axioms Math.B699.PadeGrowthPartition.moment_growth_of_tree
#print axioms Math.B699.PadeGrowthPartition.moment_nonneg_of_tree
#print axioms Math.B699.PadeGrowthPartition.moment_abs_growth_of_tree

end Math.B699.PadeGrowthPartition

end HeightMember029
/- Frozen source member 30: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Growth\ActualKernel.lean SHA256 82962fb0fffebcb9fe1fdf6054ad861300365106cb85c2a150962c227949622a -/
section HeightMember030




/-!
Connect actual Padé kernels to fixed positive weights times a core power.
The finite GrowthTree certificate remains an explicit input; all source
factorization and integer polynomial correspondence are proved here.
No full original index or unconditional seed bound is claimed by this bridge.
-/

namespace Math.B699.PadeActualGrowth

open Polynomial Math.B699.PadeMoment Math.B699.PadeMomentIdentity
open Math.B699.GrowthLeaf Math.B699.PadeGrowthPartition Math.B699.PadeConstruction

private theorem exponent_split (c d delta m : ℕ) (hcd : d < c)
    (hdelta : delta ≤ d) (hm : 1 ≤ m) :
    d * m - delta = (d - delta) + d * (m - 1) ∧
    (c - d) * m + delta - 1 = (c - d - 1 + delta) + (c - d) * (m - 1) := by
  have hm' : m = (m - 1) + 1 := by omega
  have hd : d * m = d * (m - 1) + d := by
    conv_lhs => rw [hm']
    ring
  have hc : (c - d) * m = (c - d) * (m - 1) + (c - d) := by
    conv_lhs => rw [hm']
    ring
  omega

theorem qKernel_eq_weight_core (c d delta m : ℕ) (z : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hm : 1 ≤ m) :
    qKernel (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) z =
      qWeight c d delta z * qCore c d z ^ (m - 1) := by
  obtain ⟨hd, hb⟩ := exponent_split c d delta m hcd hdelta hm
  simp only [qKernel, qWeight, qCore, qFactor, hd, hb, mul_pow, pow_add, pow_mul]
  ring

theorem eKernel_eq_weight_core (c d delta m : ℕ) (z : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hm : 1 ≤ m) :
    eKernel (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) z =
      eWeight c d delta z * eCore c d z ^ (m - 1) := by
  obtain ⟨hd, hb⟩ := exponent_split c d delta m hcd hdelta hm
  simp only [eKernel, eWeight, eCore, eFactor, hd, hb, mul_pow, pow_add, pow_mul]
  ring

theorem qKernel_abs_moment_bound (c d delta m : ℕ) (z lam : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hm : 1 ≤ m) (hlam : 0 ≤ lam)
    (tree : GrowthTree lam (qWeight c d delta z) (qCore c d z)) :
    |moment (qKernel (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) z)| ≤
      lam ^ (m - 1) * moment (qWeight c d delta z) := by
  rw [qKernel_eq_weight_core c d delta m z hcd hdelta hm]
  exact moment_abs_growth_of_tree lam hlam tree (m - 1)

theorem eKernel_abs_moment_bound (c d delta m : ℕ) (z lam : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hm : 1 ≤ m) (hlam : 0 ≤ lam)
    (tree : GrowthTree lam (eWeight c d delta z) (eCore c d z)) :
    |moment (eKernel (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) z)| ≤
      lam ^ (m - 1) * moment (eWeight c d delta z) := by
  rw [eKernel_eq_weight_core c d delta m z hcd hdelta hm]
  exact moment_abs_growth_of_tree lam hlam tree (m - 1)

theorem prefactor_pos (A B C : ℕ) : 0 < prefactor A B C := by
  unfold prefactor
  exact div_pos (Nat.cast_pos.mpr (Nat.factorial_pos _))
    (mul_pos (mul_pos (Nat.cast_pos.mpr (Nat.factorial_pos _))
      (Nat.cast_pos.mpr (Nat.factorial_pos _))) (Nat.cast_pos.mpr (Nat.factorial_pos _)))

theorem actual_q_eval_bound (c d delta m : ℕ) (z lam : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hm : 1 ≤ m) (hlam : 0 ≤ lam)
    (tree : GrowthTree lam (qWeight c d delta z) (qCore c d z)) :
    |(qPolynomial (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta)).eval₂
        (Int.castRingHom ℚ) z| ≤
      prefactor (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) *
        (lam ^ (m - 1) * moment (qWeight c d delta z)) := by
  rw [← qSource_eq_actual_eval, qSource_eq_moment]
  simp only [qMoment, abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul]
  rw [abs_of_pos (prefactor_pos _ _ _)]
  exact mul_le_mul_of_nonneg_left
    (qKernel_abs_moment_bound c d delta m z lam hcd hdelta hm hlam tree)
    (le_of_lt (prefactor_pos _ _ _))

theorem actual_e_eval_bound (c d delta m : ℕ) (z lam : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hm : 1 ≤ m) (hlam : 0 ≤ lam)
    (tree : GrowthTree lam (eWeight c d delta z) (eCore c d z)) :
    |(ePolynomial (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta)).eval₂
        (Int.castRingHom ℚ) z| ≤
      prefactor (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) *
        (lam ^ (m - 1) * moment (eWeight c d delta z)) := by
  rw [← eSource_eq_actual_eval, eSource_eq_moment]
  simp only [eMoment, abs_mul]
  rw [abs_of_pos (prefactor_pos _ _ _)]
  exact mul_le_mul_of_nonneg_left
    (eKernel_abs_moment_bound c d delta m z lam hcd hdelta hm hlam tree)
    (le_of_lt (prefactor_pos _ _ _))

#print axioms Math.B699.PadeActualGrowth.qKernel_eq_weight_core
#print axioms Math.B699.PadeActualGrowth.eKernel_eq_weight_core
#print axioms Math.B699.PadeActualGrowth.qKernel_abs_moment_bound
#print axioms Math.B699.PadeActualGrowth.eKernel_abs_moment_bound
#print axioms Math.B699.PadeActualGrowth.prefactor_pos
#print axioms Math.B699.PadeActualGrowth.actual_q_eval_bound
#print axioms Math.B699.PadeActualGrowth.actual_e_eval_bound

end Math.B699.PadeActualGrowth

end HeightMember030
/- Frozen source member 31: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Factorial\FactorialCommon.lean SHA256 0995a9105c3c2d13ce2ffdcdcc7853c26886d585b8e9f0fc9d396ae0e1c73fd6 -/
section HeightMember031







/-!
# Elementary factorial bounds for three BFT parameter pairs

UNCOMPILED CANDIDATE. No Lean execution or axiom audit has occurred.
Source: BFT author manuscript 2007-02-26, equations (3.1)--(3.3), page 9,
with A=C=d*m-delta and B=(c-d)*m+delta-1 on page 10.
PDF SHA256: 0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c.

This candidate concerns only the factorial prefactor. It does not prove
an integral representation, a maximizer bound, G/theta estimates, BFT
Lemma 4.1 with its printed constants, or a B699 original-problem theorem.

The target is intentionally represented in Q. Every factorial is a natural
factorial, cast before division; there is no natural-number quotient. All
final source-aligned statements require m >= 1 and delta in {0,1}.
The formula is total at other inputs only because Nat subtraction is total;
no source claim is made at those inputs. The pure factorial base at m=1
does not assert that the source's positive A,B,C convention covers that
Pade endpoint.
-/

namespace Math.B699.ElementaryFactorialBound

/-- The exact factorial prefactor after the BFT substitutions. -/
def factorialTerm (c d delta m : ℕ) : ℚ :=
  ((((c + d) * m - delta).factorial : ℕ) : ℚ) /
    (((((d * m - delta).factorial : ℕ) : ℚ) ^ 2) *
      ((((c - d) * m + delta - 1).factorial : ℕ) : ℚ))

/-- The rational growth base; the real identity with alpha(c/d)^d remains
an explicit analytic-notation bridge outside this candidate. -/
def beta (c d : ℕ) : ℚ :=
  (((c + d : ℕ) : ℚ) ^ (c + d)) /
    ((d : ℚ) ^ (2 * d) * ((c - d : ℕ) : ℚ) ^ (c - d))

theorem factorialTerm_pos (c d delta m : ℕ) :
    0 < factorialTerm c d delta m := by
  unfold factorialTerm
  positivity

/-- A casted exact factorial recurrence, with no integer division. -/
theorem factorial_add_cast (n k : ℕ) :
    (((n + k).factorial : ℕ) : ℚ) =
      ((n.factorial : ℕ) : ℚ) * (((n + 1).ascFactorial k : ℕ) : ℚ) := by
  rw [← Nat.factorial_mul_ascFactorial, Nat.cast_mul]

theorem factorial_cast_mul_pred (n : ℕ) (hn : 0 < n) :
    ((n.factorial : ℕ) : ℚ) = (n : ℚ) * (((n - 1).factorial : ℕ) : ℚ) := by
  have hpred : n - 1 + 1 = n := Nat.sub_add_cancel (by omega)
  have hnat : n.factorial = n * (n - 1).factorial := by
    calc
      n.factorial = (n - 1 + 1).factorial := congrArg Nat.factorial hpred.symm
      _ = n * (n - 1).factorial := by rw [Nat.factorial_succ, hpred]
  rw [hnat, Nat.cast_mul]

/-- The exact delta ratio. This proves the suggested constant instead of
assuming it. The denominator is (c+d)*(c-d)=c^2-d^2. -/
theorem factorial_delta_one_eq (c d m : ℕ)
    (hc : d < c) (hd : 0 < d) (hm : 0 < m) :
    factorialTerm c d 1 m =
      ((d : ℚ) ^ 2 / (((c + d : ℕ) : ℚ) * ((c - d : ℕ) : ℚ))) *
        factorialTerm c d 0 m := by
  have hcp : 0 < c + d := by omega
  have hcm : 0 < c - d := Nat.sub_pos_of_lt hc
  have ha : 0 < (c + d) * m := Nat.mul_pos hcp hm
  have hdm : 0 < d * m := Nat.mul_pos hd hm
  have hb : 0 < (c - d) * m := Nat.mul_pos hcm hm
  simp only [factorialTerm, Nat.add_zero, Nat.sub_zero, Nat.add_sub_cancel]
  rw [factorial_cast_mul_pred ((c + d) * m) ha,
    factorial_cast_mul_pred (d * m) hdm,
    factorial_cast_mul_pred ((c - d) * m) hb]
  simp only [Nat.cast_mul]
  field_simp
  <;> ring

/-- Common consumer of the finite positive-coefficient certificates. All
factors that are cancelled have explicit positivity hypotheses. -/
theorem ratio_le_of_certificate
    {a b d bn bd U W m : ℚ}
    (hb : 0 < b) (hd : 0 < d) (hbd : 0 < bd)
    (hm : 0 < m) (hW : 0 < W)
    (hcert : a * bd * (m + 2) * U ≤
      bn * b * d ^ 2 * (m + 1) ^ 3 * W) :
    a * U / (b * d ^ 2 * m * (m + 1) * W) ≤
      (bn / bd) * (m + 1) ^ 2 / (m * (m + 2)) := by
  apply sub_nonneg.mp
  have hid :
      (bn / bd) * (m + 1) ^ 2 / (m * (m + 2)) -
        a * U / (b * d ^ 2 * m * (m + 1) * W) =
      (bn * b * d ^ 2 * (m + 1) ^ 3 * W - a * bd * (m + 2) * U) /
        (bd * b * d ^ 2 * m * (m + 1) * (m + 2) * W) := by
    field_simp
    <;> ring
  rw [hid]
  exact div_nonneg (sub_nonneg.mpr hcert) (by positivity)

/-- The telescoping induction, used below with actual factorial sequences.
This generic lemma is not the final factorial theorem on its own. -/
theorem telescoping_bound_from_step
    {F : ℕ → ℚ} {B : ℚ} (hB : 0 < B)
    (hstep : ∀ m : ℕ, 1 ≤ m →
      F (m + 1) ≤ F m * (B * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))))
    {m : ℕ} (hm : 1 ≤ m) :
    F m ≤ (2 * F 1 / B) * B ^ m * (m : ℚ) / ((m : ℚ) + 1) := by
  induction m, hm using Nat.le_induction with
  | base =>
      apply le_of_eq
      simp only [pow_one, Nat.cast_one]
      field_simp
      <;> ring
  | succ m hm ih =>
      have hmQ : 0 < (m : ℚ) := Nat.cast_pos.mpr (by omega)
      calc
        F (m + 1) ≤
            F m * (B * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) :=
          hstep m hm
        _ ≤ ((2 * F 1 / B) * B ^ m * (m : ℚ) / ((m : ℚ) + 1)) *
            (B * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) :=
          mul_le_mul_of_nonneg_right ih (by positivity)
        _ = (2 * F 1 / B) * B ^ (m + 1) * ((m + 1 : ℕ) : ℚ) /
            (((m + 1 : ℕ) : ℚ) + 1) := by
          rw [pow_succ]
          simp only [Nat.cast_add, Nat.cast_one]
          field_simp
          <;> ring

theorem strict_bound_from_step
    {F : ℕ → ℚ} {B : ℚ} (hB : 0 < B) (hF : 0 < F 1)
    (hstep : ∀ m : ℕ, 1 ≤ m →
      F (m + 1) ≤ F m * (B * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))))
    {m : ℕ} (hm : 1 ≤ m) :
    F m < (2 * F 1 / B) * B ^ m := by
  have hmQ : 0 < (m : ℚ) := Nat.cast_pos.mpr (by omega)
  have hpos : 0 < (2 * F 1 / B) * B ^ m := by positivity
  calc
    F m ≤ (2 * F 1 / B) * B ^ m * (m : ℚ) / ((m : ℚ) + 1) :=
      telescoping_bound_from_step hB hstep hm
    _ < (2 * F 1 / B) * B ^ m := by
      apply (div_lt_iff₀ (show 0 < (m : ℚ) + 1 by positivity)).2
      nlinarith

#print axioms Math.B699.ElementaryFactorialBound.factorialTerm_pos
#print axioms Math.B699.ElementaryFactorialBound.factorial_add_cast
#print axioms Math.B699.ElementaryFactorialBound.factorial_cast_mul_pred
#print axioms Math.B699.ElementaryFactorialBound.factorial_delta_one_eq
#print axioms Math.B699.ElementaryFactorialBound.ratio_le_of_certificate
#print axioms Math.B699.ElementaryFactorialBound.telescoping_bound_from_step
#print axioms Math.B699.ElementaryFactorialBound.strict_bound_from_step

end Math.B699.ElementaryFactorialBound

end HeightMember031
/- Frozen source member 32: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Growth\Normalization.lean SHA256 83c909757f3c03f48163de8b1733ce6dd9e817cd417f775f1df254ed7a266a4d -/
section HeightMember032



/-!
Exact source normalization. The constants K_delta*M(weight)/lambda can be
checked by the low-degree actual Padé polynomial at m=1. This is an identity,
not an assumption of positivity, a numerical bound, or a full seed result.
-/

namespace Math.B699.PadeGrowthNormalization

open Polynomial Math.B699.PadeMoment Math.B699.PadeMomentIdentity
open Math.B699.PadeConstruction Math.B699.PadeActualGrowth Math.B699.GrowthLeaf
open Math.B699.ElementaryFactorialBound

noncomputable def actualQ (c d delta m : ℕ) (z : ℚ) : ℚ :=
  (qPolynomial (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta)).eval₂
    (Int.castRingHom ℚ) z

noncomputable def actualE (c d delta m : ℕ) (z : ℚ) : ℚ :=
  (ePolynomial (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta)).eval₂
    (Int.castRingHom ℚ) z

theorem prefactor_eq_factorialTerm (c d delta m : ℕ)
    (hcd : d < c) (hdelta : delta ≤ d) (hm : 1 ≤ m) :
    prefactor (d * m - delta) ((c - d) * m + delta - 1) (d * m - delta) =
      factorialTerm c d delta m := by
  have hm' : m = (m - 1) + 1 := by omega
  have hd : d * m = d * (m - 1) + d := by
    conv_lhs => rw [hm']
    ring
  have he : (c - d) * m = (c - d) * (m - 1) + (c - d) := by
    conv_lhs => rw [hm']
    ring
  have hc : c = d + (c - d) := by omega
  have htotal : (c + d) * m = d * m + (c - d) * m + d * m := by
    conv_lhs => rw [hc]
    ring
  have hsum : d * m - delta + ((c - d) * m + delta - 1) +
      (d * m - delta) + 1 = (c + d) * m - delta := by omega
  unfold prefactor factorialTerm
  rw [hsum]
  congr 1
  ring

theorem actualQ_one_abs (c d delta : ℕ) (z : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hz : 0 ≤ z) :
    |actualQ c d delta 1 z| = factorialTerm c d delta 1 * moment (qWeight c d delta z) := by
  unfold actualQ
  rw [← qSource_eq_actual_eval, qSource_eq_moment]
  simp only [qMoment, abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul]
  rw [abs_of_pos (prefactor_pos _ _ _)]
  rw [qKernel_eq_weight_core c d delta 1 z hcd hdelta (by omega)]
  simp only [Nat.sub_self, pow_zero, mul_one]
  rw [abs_of_nonneg (bernsteinCone_moment_nonneg (cone_qWeight c d delta z hz))]
  have hp : prefactor (d - delta) (c - d + delta - 1) (d - delta) =
      factorialTerm c d delta 1 := by
    simpa only [Nat.mul_one] using prefactor_eq_factorialTerm c d delta 1 hcd hdelta (by omega)
  rw [hp]

theorem actualE_one_abs (c d delta : ℕ) (z : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hz : z ≤ 1) :
    |actualE c d delta 1 z| = factorialTerm c d delta 1 * moment (eWeight c d delta z) := by
  unfold actualE
  rw [← eSource_eq_actual_eval, eSource_eq_moment]
  simp only [eMoment, abs_mul]
  rw [abs_of_pos (prefactor_pos _ _ _)]
  rw [eKernel_eq_weight_core c d delta 1 z hcd hdelta (by omega)]
  simp only [Nat.sub_self, pow_zero, mul_one]
  rw [abs_of_nonneg (bernsteinCone_moment_nonneg (cone_eWeight c d delta z hz))]
  have hp : prefactor (d - delta) (c - d + delta - 1) (d - delta) =
      factorialTerm c d delta 1 := by
    simpa only [Nat.mul_one] using prefactor_eq_factorialTerm c d delta 1 hcd hdelta (by omega)
  rw [hp]

theorem q_normalized_constant (c d delta : ℕ) (z lam : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hz : 0 ≤ z) :
    (2 * factorialTerm c d delta 1 / beta c d) * moment (qWeight c d delta z) / lam =
      2 * |actualQ c d delta 1 z| / (beta c d * lam) := by
  rw [actualQ_one_abs c d delta z hcd hdelta hz]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

theorem e_normalized_constant (c d delta : ℕ) (z lam : ℚ)
    (hcd : d < c) (hdelta : delta ≤ d) (hz : z ≤ 1) :
    (2 * factorialTerm c d delta 1 / beta c d) * moment (eWeight c d delta z) / lam =
      2 * |actualE c d delta 1 z| / (beta c d * lam) := by
  rw [actualE_one_abs c d delta z hcd hdelta hz]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

#print axioms Math.B699.PadeGrowthNormalization.prefactor_eq_factorialTerm
#print axioms Math.B699.PadeGrowthNormalization.actualQ_one_abs
#print axioms Math.B699.PadeGrowthNormalization.actualE_one_abs
#print axioms Math.B699.PadeGrowthNormalization.q_normalized_constant
#print axioms Math.B699.PadeGrowthNormalization.e_normalized_constant

end Math.B699.PadeGrowthNormalization

end HeightMember032
/- Frozen source member 33: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFive\Prefix.lean SHA256 737f2a226a7b1c21ca34ec8cbe738bcd2abfcdb7de7adffdce3d0eb7efe89c20 -/
section HeightMember033






/-!
UNCOMPILED minimal prefix for the fixed i11 (2,5) seed.
The numerator is 3, so the actual remainder keeps 3^(2*u+1).
No G lower bound, growth bound, identity or determinant is an external premise.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.I11TwoFivePrefix

open Math.B699.PadeActualRows Math.B699.PadeConstruction Math.B699.PadeContent
open Math.B699.PadeRationalHomogeneous Math.B699.PadeGrowthNormalization

def rowDelta (row : Bool) : ℕ := if row then 0 else 1

theorem rowDelta_cases (row : Bool) : rowDelta row = 0 ∨ rowDelta row = 1 := by
  cases row <;> simp [rowDelta]

theorem row_degrees (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (4 * m - rowDelta row) + (m + rowDelta row - 1) + 1 = 5 * m := by
  rcases rowDelta_cases row with h | h <;> rw [h] <;> omega

theorem actual_rows (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    actualPRow (4 * m) (m - 1) 3 128 row =
      pNormalizedValue (4 * m - rowDelta row) (m + rowDelta row - 1) 3 128 ∧
    actualQRow (4 * m) (m - 1) 3 128 row =
      qNormalizedValue (4 * m - rowDelta row) (m + rowDelta row - 1)
        (4 * m - rowDelta row) 3 128 := by
  have hv : m - 1 + 1 = m := by omega
  cases row <;> simp [rowDelta, actualPRow, actualQRow, hv]

/-- The Q row is cleared by its own actual coefficient gcd. -/
theorem actual_q_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (qContent (4 * m - rowDelta row) (m + rowDelta row - 1)
        (4 * m - rowDelta row) : ℚ) *
      (actualQRow (4 * m) (m - 1) 3 128 row : ℚ) =
    (128 : ℚ) ^ (4 * m - rowDelta row) *
      actualQ 5 4 (rowDelta row) m (3 / 128) := by
  have hq := (actual_rows m hm row).2
  rw [hq, qContent_mul_qNormalizedValue_cast_q]
  have h := q_homogeneousValue_cast_q (4 * m - rowDelta row)
    (m + rowDelta row - 1) (4 * m - rowDelta row) 3 128 (by decide)
  simpa only [actualQ, show (5 : ℕ) - 4 = 1 by decide, one_mul,
    Int.cast_ofNat] using h

/-- The exact D=3 remainder; no 3-power is suppressed in this equality. -/
theorem actual_remainder (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (qContent (4 * m - rowDelta row) (m + rowDelta row - 1)
        (4 * m - rowDelta row) : ℚ) *
      (((128 : ℤ) ^ (5 * m) * actualPRow (4 * m) (m - 1) 3 128 row -
        (125 : ℤ) ^ (5 * m) * actualQRow (4 * m) (m - 1) 3 128 row : ℤ) : ℚ) =
    (128 : ℚ) ^ (m + rowDelta row - 1) *
      (3 : ℚ) ^ (2 * (4 * m - rowDelta row) + 1) *
      actualE 5 4 (rowDelta row) m (3 / 128) := by
  obtain ⟨hp, hq⟩ := actual_rows m hm row
  rw [hp, hq]
  have h := normalized_integer_error_cast_q (4 * m - rowDelta row)
    (m + rowDelta row - 1) 3 128 (by decide)
  simpa only [row_degrees m hm row, show (128 : ℤ) - 3 = 125 by decide,
    Int.cast_ofNat, actualE, show (5 : ℕ) - 4 = 1 by decide, one_mul] using h

/-- Both rows fit the *correct* uniform scale (128*3^8)^m.
For delta=0 the leftover factor is 3/128; for delta=1 it is 1/3. -/
theorem error_scale_le (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    (128 : ℚ) ^ (m + rowDelta row - 1) *
      (3 : ℚ) ^ (2 * (4 * m - rowDelta row) + 1) ≤
    ((128 : ℚ) * 3 ^ 8) ^ m := by
  have hbase : ((128 : ℚ) * 3 ^ 8) ^ m = (128 : ℚ) ^ m * 3 ^ (8 * m) := by
    rw [mul_pow, ← pow_mul]
  rw [hbase]
  rcases rowDelta_cases row with h | h
  · rw [h]
    simp only [Nat.add_zero, Nat.sub_zero]
    have he : 2 * (4 * m) + 1 = 8 * m + 1 := by omega
    rw [he, pow_succ]
    calc
      (128 : ℚ) ^ (m - 1) * (3 ^ (8 * m) * 3) =
          ((128 : ℚ) ^ (m - 1) * 3) * 3 ^ (8 * m) := by ring
      _ ≤ ((128 : ℚ) ^ (m - 1) * 128) * 3 ^ (8 * m) :=
        mul_le_mul_of_nonneg_right
          (mul_le_mul_of_nonneg_left (by norm_num : (3 : ℚ) ≤ 128)
            (pow_nonneg (by norm_num : (0 : ℚ) ≤ 128) (m - 1)))
          (pow_nonneg (by norm_num : (0 : ℚ) ≤ 3) (8 * m))
      _ = (128 : ℚ) ^ m * 3 ^ (8 * m) := by
        rw [← pow_succ, Nat.sub_add_cancel hm]
  · rw [h]
    have hv : m + 1 - 1 = m := by omega
    rw [hv]
    exact mul_le_mul_of_nonneg_left
      (pow_le_pow_right₀ (by norm_num : (1 : ℚ) ≤ 3)
        (by omega : 2 * (4 * m - 1) + 1 ≤ 8 * m))
      (pow_nonneg (by norm_num : (0 : ℚ) ≤ 128) m)

end Math.B699.I11TwoFivePrefix

end HeightMember033
/- Frozen source member 34: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\RationalDivisor\FloorLayers.lean SHA256 a20112ab71a801e0b13f3f823bff116bd5c30a9665e37a2e289b22adf5d76e24 -/
section HeightMember034


/-!
UNCOMPILED CANDIDATE. Exact natural division identities and the concrete
factorial-valuation layer. No divisibility or analytic estimate is assumed.
-/

namespace Math.B699.RationalFactorialDivisor

theorem twice_add_div_decomposition (a b n : ℕ) (hn : 0 < n) :
    (2 * a + b) / n =
      2 * (a / n) + b / n + (2 * (a % n) + b % n) / n := by
  have heq : 2 * a + b =
      n * (2 * (a / n) + b / n) + (2 * (a % n) + b % n) := by
    calc
      2 * a + b =
          2 * (n * (a / n) + a % n) + (n * (b / n) + b % n) := by
        simp only [Nat.div_add_mod]
      _ = _ := by
        simp only [Nat.mul_add, Nat.add_mul]
        ac_rfl
  rw [heq, Nat.mul_add_div hn]

theorem triple_add_div_decomposition (a b f n : ℕ) (hn : 0 < n) :
    (a + b + f) / n =
      a / n + b / n + f / n + (a % n + b % n + f % n) / n := by
  have heq : a + b + f =
      n * (a / n + b / n + f / n) + (a % n + b % n + f % n) := by
    calc
      a + b + f = (n * (a / n) + a % n) +
          (n * (b / n) + b % n) + (n * (f / n) + f % n) := by
        simp only [Nat.div_add_mod]
      _ = _ := by
        simp only [Nat.mul_add, Nat.add_mul]
        ac_rfl
  rw [heq, Nat.mul_add_div hn]

/-- The middle numerator is at most one of the two outer numerators. -/
theorem middle_div_le_outer_div_sum (A B F n : ℕ) :
    (A + B + F) / n ≤ (2 * A + B) / n + (2 * F + B) / n := by
  by_cases h : A ≤ F
  · have hnum : A + B + F ≤ 2 * F + B := by omega
    have hdiv : (A + B + F) / n ≤ (2 * F + B) / n := Nat.div_le_div_right hnum
    exact Nat.le_trans hdiv (Nat.le_add_left _ _)
  · have hnum : A + B + F ≤ 2 * A + B := by omega
    have hdiv : (A + B + F) / n ≤ (2 * A + B) / n := Nat.div_le_div_right hnum
    exact Nat.le_trans hdiv (Nat.le_add_right _ _)

/-- Every prime-power layer of the concrete factorial ratio is nonnegative. -/
theorem factorial_floor_layer (a b f n : ℕ) (hn : 0 < n) :
    a / n + b / n + (a + b + f) / n + f / n ≤
      (2 * a + b) / n + (2 * f + b) / n := by
  rw [twice_add_div_decomposition a b n hn,
    twice_add_div_decomposition f b n hn,
    triple_add_div_decomposition a b f n hn]
  have hres := middle_div_le_outer_div_sum (a % n) (b % n) (f % n) n
  omega

end Math.B699.RationalFactorialDivisor

#print axioms Math.B699.RationalFactorialDivisor.twice_add_div_decomposition
#print axioms Math.B699.RationalFactorialDivisor.triple_add_div_decomposition
#print axioms Math.B699.RationalFactorialDivisor.middle_div_le_outer_div_sum
#print axioms Math.B699.RationalFactorialDivisor.factorial_floor_layer

end HeightMember034
/- Frozen source member 35: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\RationalDivisor\FactorialDivisibility.lean SHA256 782d08f0f647898240b0593a5718dd6915db0e50c7f5f7581433f6df8451a489 -/
section HeightMember035



/-!
UNCOMPILED CANDIDATE. A common finite Legendre sum proves the actual
four-factorial denominator divides the actual two-factorial numerator.
-/

open scoped BigOperators

open scoped Nat

namespace Math.B699.RationalFactorialDivisor

theorem factorial_factorization_le (a b f p : ℕ) (hp : p.Prime) :
    (a !).factorization p + (b !).factorization p +
        ((a + b + f) !).factorization p + (f !).factorization p ≤
      ((2 * a + b) !).factorization p + ((2 * f + b) !).factorization p := by
  let bound := 2 * a + 2 * b + 2 * f
  let cutoff := Nat.log p bound + 1
  have hlog (k : ℕ) (hk : k ≤ bound) : Nat.log p k < cutoff := by
    exact (Nat.log_mono_right hk).trans_lt (Nat.lt_add_one _)
  have ha : a ≤ bound := by dsimp [bound]; omega
  have hb : b ≤ bound := by dsimp [bound]; omega
  have haf : a + b + f ≤ bound := by dsimp [bound]; omega
  have hf : f ≤ bound := by dsimp [bound]; omega
  have ha2 : 2 * a + b ≤ bound := by dsimp [bound]; omega
  have hf2 : 2 * f + b ≤ bound := by dsimp [bound]; omega
  rw [Nat.factorization_factorial hp (hlog a ha),
    Nat.factorization_factorial hp (hlog b hb),
    Nat.factorization_factorial hp (hlog (a + b + f) haf),
    Nat.factorization_factorial hp (hlog f hf),
    Nat.factorization_factorial hp (hlog (2 * a + b) ha2),
    Nat.factorization_factorial hp (hlog (2 * f + b) hf2)]
  have hsum :
      (∑ i ∈ Finset.Ico 1 cutoff,
        (a / p ^ i + b / p ^ i + (a + b + f) / p ^ i + f / p ^ i)) ≤
      ∑ i ∈ Finset.Ico 1 cutoff,
        ((2 * a + b) / p ^ i + (2 * f + b) / p ^ i) := by
    apply Finset.sum_le_sum
    intro i hi
    exact factorial_floor_layer a b f (p ^ i) (pow_pos hp.pos i)
  simpa only [Finset.sum_add_distrib] using hsum

/-- The concrete balanced factorial ratio is a positive integer. -/
theorem factorial_product_dvd (a b f : ℕ) :
    a ! * b ! * (a + b + f) ! * f ! ∣ (2 * a + b) ! * (2 * f + b) ! := by
  have hden : a ! * b ! * (a + b + f) ! * f ! ≠ 0 :=
    mul_ne_zero (mul_ne_zero
      (mul_ne_zero (Nat.factorial_ne_zero a) (Nat.factorial_ne_zero b))
      (Nat.factorial_ne_zero (a + b + f))) (Nat.factorial_ne_zero f)
  have hnum : (2 * a + b) ! * (2 * f + b) ! ≠ 0 :=
    mul_ne_zero (Nat.factorial_ne_zero (2 * a + b))
      (Nat.factorial_ne_zero (2 * f + b))
  apply (Nat.factorization_le_iff_dvd hden hnum).mp
  intro p
  by_cases hp : p.Prime
  · rw [Nat.factorization_mul
        (mul_ne_zero (mul_ne_zero (Nat.factorial_ne_zero a) (Nat.factorial_ne_zero b))
          (Nat.factorial_ne_zero (a + b + f))) (Nat.factorial_ne_zero f),
      Nat.factorization_mul (mul_ne_zero (Nat.factorial_ne_zero a) (Nat.factorial_ne_zero b))
        (Nat.factorial_ne_zero (a + b + f)),
      Nat.factorization_mul (Nat.factorial_ne_zero a) (Nat.factorial_ne_zero b),
      Nat.factorization_mul (Nat.factorial_ne_zero (2 * a + b))
        (Nat.factorial_ne_zero (2 * f + b))]
    simpa only [Finsupp.add_apply] using factorial_factorization_le a b f p hp
  · simp only [Nat.factorization_eq_zero_of_not_prime _ hp, le_refl]

/-- Increasing the second numerator handles odd v and any larger v uniformly. -/
theorem factorial_product_dvd_of_two_mul_le (a b f v : ℕ) (hv : 2 * f ≤ v) :
    a ! * b ! * (a + b + f) ! * f ! ∣ (2 * a + b) ! * (v + b) ! := by
  apply (factorial_product_dvd a b f).trans
  exact Nat.mul_dvd_mul_left _
    (Nat.factorial_dvd_factorial (show 2 * f + b ≤ v + b by omega))

end Math.B699.RationalFactorialDivisor

#print axioms Math.B699.RationalFactorialDivisor.factorial_factorization_le
#print axioms Math.B699.RationalFactorialDivisor.factorial_product_dvd
#print axioms Math.B699.RationalFactorialDivisor.factorial_product_dvd_of_two_mul_le

end HeightMember035
/- Frozen source member 36: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\RationalDivisor\Coefficients.lean SHA256 649a777668dd496ed45f255400c773a313c19242e7c7b059638e40d5128a2b95 -/
section HeightMember036



/-!
UNCOMPILED CANDIDATE. The actual diagonal qMagnitude, with h in its full
coefficient range. No factorial divisibility hypothesis is supplied by users.
-/

open scoped Nat

namespace Math.B699.RationalFactorialDivisor

open Math.B699.PadeConstruction

def factorialNumerator (u v : ℕ) : ℕ :=
  (u + v / 2) ! * (v / 2) !

def factorialDenominator (u v : ℕ) : ℕ :=
  u ! * v !

theorem factorialNumerator_pos (u v : ℕ) : 0 < factorialNumerator u v := by
  exact Nat.mul_pos (Nat.factorial_pos _) (Nat.factorial_pos _)

theorem factorialDenominator_pos (u v : ℕ) : 0 < factorialDenominator u v := by
  exact Nat.mul_pos (Nat.factorial_pos _) (Nat.factorial_pos _)

theorem qMagnitude_diagonal_pos (u v h : ℕ) (hh : h ≤ u) :
    0 < qMagnitude u v u h := by
  unfold qMagnitude
  exact Nat.mul_pos (Nat.choose_pos (by omega)) (Nat.choose_pos (by omega))

/-- Exact cancellation identity obtained from the two actual choose factors. -/
theorem qMagnitude_factorial_identity (u v h : ℕ) (hh : h ≤ u) :
    ((u - h) ! * h !) * (factorialDenominator u v * qMagnitude u v u h) =
      (u + u - h) ! * (v + h) ! := by
  have hfirst := Nat.choose_mul_factorial_mul_factorial
    (n := u + u - h) (k := u) (by omega : u ≤ u + u - h)
  have hsecond := Nat.choose_mul_factorial_mul_factorial
    (n := v + h) (k := h) (by omega : h ≤ v + h)
  have hsubfirst : u + u - h - u = u - h := by omega
  have hsubsecond : v + h - h = v := by omega
  rw [hsubfirst] at hfirst
  rw [hsubsecond] at hsecond
  calc
    _ = ((u + u - h).choose u * u ! * (u - h) !) *
        ((v + h).choose h * h ! * v !) := by
      dsimp [factorialDenominator, qMagnitude]
      ring
    _ = _ := by rw [hfirst, hsecond]

/-- This is the required concrete scaled divisibility for every actual q_h. -/
theorem factorialNumerator_dvd_scaled_qMagnitude
    (u v h : ℕ) (hh : h ≤ u) :
    factorialNumerator u v ∣ factorialDenominator u v * qMagnitude u v u h := by
  have hraw := factorial_product_dvd_of_two_mul_le
    (u - h) h (v / 2) v (by omega : 2 * (v / 2) ≤ v)
  have hsum : u - h + h + v / 2 = u + v / 2 := by omega
  have htwice : 2 * (u - h) + h = u + u - h := by omega
  rw [hsum, htwice] at hraw
  have hscaled :
      ((u - h) ! * h !) * factorialNumerator u v ∣
        (u + u - h) ! * (v + h) ! := by
    simpa only [factorialNumerator, Nat.mul_assoc] using hraw
  rw [← qMagnitude_factorial_identity u v h hh] at hscaled
  exact (Nat.mul_dvd_mul_iff_left
    (Nat.mul_pos (Nat.factorial_pos (u - h)) (Nat.factorial_pos h))).mp hscaled

end Math.B699.RationalFactorialDivisor

#print axioms Math.B699.RationalFactorialDivisor.factorialNumerator
#print axioms Math.B699.RationalFactorialDivisor.factorialDenominator
#print axioms Math.B699.RationalFactorialDivisor.factorialNumerator_pos
#print axioms Math.B699.RationalFactorialDivisor.factorialDenominator_pos
#print axioms Math.B699.RationalFactorialDivisor.qMagnitude_diagonal_pos
#print axioms Math.B699.RationalFactorialDivisor.qMagnitude_factorial_identity
#print axioms Math.B699.RationalFactorialDivisor.factorialNumerator_dvd_scaled_qMagnitude

end HeightMember036
/- Frozen source member 37: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\RationalDivisor\Content.lean SHA256 4ed0d41a0b56a94586c0b56cdc34e14b52e54b83a99cb1c035dd0e6125548043 -/
section HeightMember037




/-!
UNCOMPILED CANDIDATE. An explicit positive rational divisor for the actual
qMagnitude array and its actual finite gcd. No reduced-numerator API is needed.
-/

namespace Math.B699.RationalFactorialDivisor

open Math.B699.PadeConstruction

def rationalDivisor (u v : ℕ) : ℚ :=
  (factorialNumerator u v : ℚ) / (factorialDenominator u v : ℚ)

theorem rationalDivisor_pos (u v : ℕ) : 0 < rationalDivisor u v := by
  apply div_pos
  · exact_mod_cast factorialNumerator_pos u v
  · exact_mod_cast factorialDenominator_pos u v

theorem factorialNumerator_dvd_scaled_qContent (u v : ℕ) :
    factorialNumerator u v ∣ factorialDenominator u v * qContent u v u := by
  have hd : factorialNumerator u v ∣
      (Finset.range (u + 1)).gcd
        (fun h => factorialDenominator u v * qMagnitude u v u h) := by
    apply Finset.dvd_gcd
    intro h hh
    exact factorialNumerator_dvd_scaled_qMagnitude u v h
      (Nat.lt_succ_iff.mp (Finset.mem_range.mp hh))
  simpa [Finset.gcd_mul_left, qContent] using hd

/-- Elementary conversion of a positive scaled divisibility witness to ℚ. -/
theorem positive_nat_quotient_of_scaled_dvd (N V q : ℕ)
    (hN : 0 < N) (hV : 0 < V) (hq : 0 < q) (hd : N ∣ V * q) :
    ∃ k : ℕ, 0 < k ∧ (q : ℚ) / ((N : ℚ) / (V : ℚ)) = (k : ℚ) := by
  obtain ⟨k, hk⟩ := hd
  have hkpos : 0 < k := by
    apply Nat.pos_of_ne_zero
    intro hz
    rw [hz, Nat.mul_zero] at hk
    have hprod : 0 < V * q := Nat.mul_pos hV hq
    omega
  refine ⟨k, hkpos, ?_⟩
  have hNc : (N : ℚ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hN)
  have hVc : (V : ℚ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hV)
  have hkc : (V : ℚ) * (q : ℚ) = (N : ℚ) * (k : ℚ) := by
    exact_mod_cast hk
  field_simp [hNc, hVc]
  nlinarith only [hkc]

/-- Every coefficient in the actual unsigned q array has a positive integer quotient. -/
theorem qMagnitude_div_rationalDivisor_positive_integer
    (u v h : ℕ) (hh : h ≤ u) :
    ∃ k : ℕ, 0 < k ∧
      (qMagnitude u v u h : ℚ) / rationalDivisor u v = (k : ℚ) := by
  exact positive_nat_quotient_of_scaled_dvd
    (factorialNumerator u v) (factorialDenominator u v) (qMagnitude u v u h)
    (factorialNumerator_pos u v) (factorialDenominator_pos u v)
    (qMagnitude_diagonal_pos u v h hh)
    (factorialNumerator_dvd_scaled_qMagnitude u v h hh)

/-- The signed coefficient has an integer quotient; positivity would be false for odd u. -/
theorem qCoefficient_div_rationalDivisor_integer
    (u v h : ℕ) (hh : h ≤ u) :
    ∃ k : ℤ, (qCoefficient u v u h : ℚ) / rationalDivisor u v = (k : ℚ) := by
  obtain ⟨k, hk, hq⟩ := qMagnitude_div_rationalDivisor_positive_integer u v h hh
  refine ⟨(-1 : ℤ) ^ u * (k : ℤ), ?_⟩
  simp only [qCoefficient, Int.cast_mul, Int.cast_pow, Int.cast_neg, Int.cast_one,
    Int.cast_natCast, mul_div_assoc, hq]

/-- The actual finite gcd has a positive integer quotient by the same rational D. -/
theorem qContent_div_rationalDivisor_positive_integer (u v : ℕ) :
    ∃ k : ℕ, 0 < k ∧ (qContent u v u : ℚ) / rationalDivisor u v = (k : ℚ) := by
  exact positive_nat_quotient_of_scaled_dvd
    (factorialNumerator u v) (factorialDenominator u v) (qContent u v u)
    (factorialNumerator_pos u v) (factorialDenominator_pos u v)
    (qContent_pos u v u) (factorialNumerator_dvd_scaled_qContent u v)

/-- The unconditional rational factorial lower bound for the actual content. -/
theorem rationalDivisor_le_qContent (u v : ℕ) :
    rationalDivisor u v ≤ (qContent u v u : ℚ) := by
  obtain ⟨k, hk, heq⟩ := qContent_div_rationalDivisor_positive_integer u v
  have hD := rationalDivisor_pos u v
  have hk1 : (1 : ℚ) ≤ (k : ℚ) := by
    exact_mod_cast (show 1 ≤ k by omega)
  have hmul : (qContent u v u : ℚ) = (k : ℚ) * rationalDivisor u v :=
    (div_eq_iff (ne_of_gt hD)).mp heq
  calc
    rationalDivisor u v = 1 * rationalDivisor u v := by ring
    _ ≤ (k : ℚ) * rationalDivisor u v :=
      mul_le_mul_of_nonneg_right hk1 (le_of_lt hD)
    _ = (qContent u v u : ℚ) := hmul.symm

end Math.B699.RationalFactorialDivisor

#print axioms Math.B699.RationalFactorialDivisor.rationalDivisor
#print axioms Math.B699.RationalFactorialDivisor.rationalDivisor_pos
#print axioms Math.B699.RationalFactorialDivisor.factorialNumerator_dvd_scaled_qContent
#print axioms Math.B699.RationalFactorialDivisor.positive_nat_quotient_of_scaled_dvd
#print axioms Math.B699.RationalFactorialDivisor.qMagnitude_div_rationalDivisor_positive_integer
#print axioms Math.B699.RationalFactorialDivisor.qCoefficient_div_rationalDivisor_integer
#print axioms Math.B699.RationalFactorialDivisor.qContent_div_rationalDivisor_positive_integer
#print axioms Math.B699.RationalFactorialDivisor.rationalDivisor_le_qContent

end HeightMember037
/- Frozen source member 38: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11DivisorTwoFive\Actual.lean SHA256 ae1d0b5d1dc64ca9a5735889348ed062a965c222296d340c6c2053ee7317f195 -/
section HeightMember038




/-! UNCOMPILED. Four actual c5d4 divisor tracks, each step advances m by 2. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11DivisorTwoFive
open Math.B699.RationalFactorialDivisor Math.B699.ElementaryFactorialBound

inductive Track
  | evenZero | evenOne | oddZero | oddOne
  deriving DecidableEq, Repr

def rho : Track → ℕ
  | .evenZero => 0
  | .evenOne => 0
  | .oddZero => 1
  | .oddOne => 1

def delta : Track → ℕ
  | .evenZero => 0
  | .evenOne => 1
  | .oddZero => 0
  | .oddOne => 1

def kMin : Track → ℕ
  | .evenZero => 1
  | .evenOne => 1
  | .oddZero => 0
  | .oddOne => 0

def cutoff : Track → ℕ
  | .evenZero => 16
  | .evenOne => 1
  | .oddZero => 0
  | .oddOne => 15

def loss : Track → ℕ
  | .evenZero => 9
  | .evenOne => 1
  | .oddZero => 2
  | .oddOne => 10

def initialValue : Track → ℚ
  | .evenZero => 1
  | .evenOne => 4
  | .oddZero => 1
  | .oddOne => 1

def divisor : Track → ℕ → ℚ
  | .evenZero, k => rationalDivisor (8 * k) (2 * k - 1)
  | .evenOne, k => rationalDivisor (8 * k - 1) (2 * k)
  | .oddZero, k => rationalDivisor (8 * k + 4) (2 * k)
  | .oddOne, k => rationalDivisor (8 * k + 3) (2 * k + 1)

def numerator : Track → ℚ → ℚ
  | .evenZero, x => (9 * x) * (9 * x + 1) * (9 * x + 2) * (9 * x + 3) * (9 * x + 4) * (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (x)
  | .evenOne, x => (9 * x) * (9 * x + 1) * (9 * x + 2) * (9 * x + 3) * (9 * x + 4) * (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (x + 1)
  | .oddZero, x => (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (9 * x + 9) * (9 * x + 10) * (9 * x + 11) * (9 * x + 12) * (9 * x + 13) * (x + 1)
  | .oddOne, x => (9 * x + 4) * (9 * x + 5) * (9 * x + 6) * (9 * x + 7) * (9 * x + 8) * (9 * x + 9) * (9 * x + 10) * (9 * x + 11) * (9 * x + 12) * (x + 1)

def denominator : Track → ℚ → ℚ
  | .evenZero, x => (8 * x + 1) * (8 * x + 2) * (8 * x + 3) * (8 * x + 4) * (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (8 * x + 8) * (2 * x) * (2 * x + 1)
  | .evenOne, x => (8 * x) * (8 * x + 1) * (8 * x + 2) * (8 * x + 3) * (8 * x + 4) * (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (2 * x + 1) * (2 * x + 2)
  | .oddZero, x => (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (8 * x + 8) * (8 * x + 9) * (8 * x + 10) * (8 * x + 11) * (8 * x + 12) * (2 * x + 1) * (2 * x + 2)
  | .oddOne, x => (8 * x + 4) * (8 * x + 5) * (8 * x + 6) * (8 * x + 7) * (8 * x + 8) * (8 * x + 9) * (8 * x + 10) * (8 * x + 11) * (2 * x + 2) * (2 * x + 3)

def ratio (t : Track) (x : ℚ) : ℚ := numerator t x / denominator t x
def targetBase : ℚ := 602791 / 500000
def middleBase : ℚ := 1235039 / 1000000
def targetRate : ℚ := targetBase ^ 8
def middleRate : ℚ := middleBase ^ 8
def infiniteRate : ℚ := 387420489 / 67108864
def blockRatio : ℚ := middleRate / targetRate

theorem target_base_pos : 0 < targetBase := by norm_num [targetBase]
theorem target_rate_pos : 0 < targetRate := by norm_num [targetRate, targetBase]
theorem middle_rate_pos : 0 < middleRate := by norm_num [middleRate, middleBase]
theorem target_rate_le_infinite : targetRate ≤ infiniteRate := by
  norm_num [targetRate, targetBase, infiniteRate]
theorem block_ratio_ge_one : 1 ≤ blockRatio := by
  norm_num [blockRatio, middleRate, targetRate, middleBase, targetBase]
theorem block_linear_bound : (2 : ℚ) ≤ 1 + 5 * (blockRatio - 1) := by
  norm_num [blockRatio, middleRate, targetRate, middleBase, targetBase]
theorem cutoff_ge_kMin (t : Track) : kMin t ≤ cutoff t := by cases t <;> decide

theorem divisor_pos (t : Track) (k : ℕ) : 0 < divisor t k := by
  cases t <;> exact rationalDivisor_pos _ _

theorem denominator_pos (t : Track) (x : ℚ) (hx : (kMin t : ℚ) ≤ x) :
    0 < denominator t x := by
  cases t <;> simp only [kMin, Nat.cast_zero, Nat.cast_one] at hx
  · have hpos : 0 < x := by linarith
    unfold denominator
    positivity
  · have hpos : 0 < x := by linarith
    unfold denominator
    positivity
  · unfold denominator
    positivity
  · unfold denominator
    positivity

theorem divisor_eq_actual (t : Track) (k : ℕ) :
    divisor t k = rationalDivisor (4 * (2 * k + rho t) - delta t)
      (2 * k + rho t + delta t - 1) := by
  cases t <;> dsimp only [divisor, rho, delta] <;> congr 1 <;> omega

theorem divisor_even_zero_formula (k : ℕ) (hk : 1 ≤ k) :
    divisor .evenZero k =
      (((9 * k - 1).factorial : ℕ) : ℚ) * (((k - 1).factorial : ℕ) : ℚ) /
        ((((8 * k).factorial : ℕ) : ℚ) * (((2 * k - 1).factorial : ℕ) : ℚ)) := by
  have hf : (2 * k - 1) / 2 = k - 1 := by omega
  have hn : (8 * k) + (k - 1) = 9 * k - 1 := by omega
  simp only [divisor, rationalDivisor, factorialNumerator, factorialDenominator,
    hf, hn, Nat.cast_mul]

theorem divisor_even_one_formula (k : ℕ) (hk : 1 ≤ k) :
    divisor .evenOne k =
      (((9 * k - 1).factorial : ℕ) : ℚ) * (((k).factorial : ℕ) : ℚ) /
        ((((8 * k - 1).factorial : ℕ) : ℚ) * (((2 * k).factorial : ℕ) : ℚ)) := by
  have hf : (2 * k) / 2 = k := by omega
  have hn : (8 * k - 1) + (k) = 9 * k - 1 := by omega
  simp only [divisor, rationalDivisor, factorialNumerator, factorialDenominator,
    hf, hn, Nat.cast_mul]

theorem divisor_odd_zero_formula (k : ℕ) (hk : 0 ≤ k) :
    divisor .oddZero k =
      (((9 * k + 4).factorial : ℕ) : ℚ) * (((k).factorial : ℕ) : ℚ) /
        ((((8 * k + 4).factorial : ℕ) : ℚ) * (((2 * k).factorial : ℕ) : ℚ)) := by
  have hf : (2 * k) / 2 = k := by omega
  have hn : (8 * k + 4) + (k) = 9 * k + 4 := by omega
  simp only [divisor, rationalDivisor, factorialNumerator, factorialDenominator,
    hf, hn, Nat.cast_mul]

theorem divisor_odd_one_formula (k : ℕ) (hk : 0 ≤ k) :
    divisor .oddOne k =
      (((9 * k + 3).factorial : ℕ) : ℚ) * (((k).factorial : ℕ) : ℚ) /
        ((((8 * k + 3).factorial : ℕ) : ℚ) * (((2 * k + 1).factorial : ℕ) : ℚ)) := by
  have hf : (2 * k + 1) / 2 = k := by omega
  have hn : (8 * k + 3) + (k) = 9 * k + 3 := by omega
  simp only [divisor, rationalDivisor, factorialNumerator, factorialDenominator,
    hf, hn, Nat.cast_mul]

theorem divisor_initial (t : Track) : divisor t (kMin t) = initialValue t := by
  cases t <;> norm_num [divisor, kMin, initialValue, rationalDivisor,
    factorialNumerator, factorialDenominator, Nat.factorial]

theorem divisor_even_zero_step_succ (k : ℕ) :
    divisor .evenZero (k + 2) = divisor .evenZero (k + 1) * ratio .evenZero ((k : ℚ) + 1) := by
  rw [divisor_even_zero_formula (k + 2) (by omega), divisor_even_zero_formula (k + 1) (by omega)]
  have hn : 9 * (k + 2) - 1 = (9 * (k + 1) - 1) + 9 := by omega
  have hf : (k + 2) - 1 = ((k + 1) - 1) + 1 := by omega
  have hu : 8 * (k + 2) = (8 * (k + 1)) + 8 := by omega
  have hv : 2 * (k + 2) - 1 = (2 * (k + 1) - 1) + 2 := by omega
  have hn1 : (9 * (k + 1) - 1) + 1 = 9 * (k + 1) := by omega
  have hf1 : ((k + 1) - 1) + 1 = (k + 1) := by omega
  have hv1 : (2 * (k + 1) - 1) + 1 = 2 * (k + 1) := by omega
  rw [hn,
    hf,
    hu,
    hv,
    factorial_add_cast (9 * (k + 1) - 1) 9,
    factorial_add_cast ((k + 1) - 1) 1,
    factorial_add_cast (8 * (k + 1)) 8,
    factorial_add_cast (2 * (k + 1) - 1) 2,
    hn1,
    hf1,
    hv1]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio numerator denominator
  field_simp
  <;> ring

theorem divisor_even_one_step_succ (k : ℕ) :
    divisor .evenOne (k + 2) = divisor .evenOne (k + 1) * ratio .evenOne ((k : ℚ) + 1) := by
  rw [divisor_even_one_formula (k + 2) (by omega), divisor_even_one_formula (k + 1) (by omega)]
  have hn : 9 * (k + 2) - 1 = (9 * (k + 1) - 1) + 9 := by omega
  have hf : (k + 2) = ((k + 1)) + 1 := by omega
  have hu : 8 * (k + 2) - 1 = (8 * (k + 1) - 1) + 8 := by omega
  have hv : 2 * (k + 2) = (2 * (k + 1)) + 2 := by omega
  have hn1 : (9 * (k + 1) - 1) + 1 = 9 * (k + 1) := by omega
  have hu1 : (8 * (k + 1) - 1) + 1 = 8 * (k + 1) := by omega
  rw [hn,
    hf,
    hu,
    hv,
    factorial_add_cast (9 * (k + 1) - 1) 9,
    factorial_add_cast ((k + 1)) 1,
    factorial_add_cast (8 * (k + 1) - 1) 8,
    factorial_add_cast (2 * (k + 1)) 2,
    hn1,
    hu1]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio numerator denominator
  field_simp
  <;> ring

theorem divisor_odd_zero_step (k : ℕ) :
    divisor .oddZero (k + 1) = divisor .oddZero k * ratio .oddZero (k : ℚ) := by
  rw [divisor_odd_zero_formula (k + 1) (by omega), divisor_odd_zero_formula k (by omega)]
  have hn : 9 * (k + 1) + 4 = (9 * k + 4) + 9 := by omega
  have hf : (k + 1) = (k) + 1 := by omega
  have hu : 8 * (k + 1) + 4 = (8 * k + 4) + 8 := by omega
  have hv : 2 * (k + 1) = (2 * k) + 2 := by omega
  rw [hn,
    hf,
    hu,
    hv,
    factorial_add_cast (9 * k + 4) 9,
    factorial_add_cast (k) 1,
    factorial_add_cast (8 * k + 4) 8,
    factorial_add_cast (2 * k) 2]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio numerator denominator
  field_simp
  <;> ring

theorem divisor_odd_one_step (k : ℕ) :
    divisor .oddOne (k + 1) = divisor .oddOne k * ratio .oddOne (k : ℚ) := by
  rw [divisor_odd_one_formula (k + 1) (by omega), divisor_odd_one_formula k (by omega)]
  have hn : 9 * (k + 1) + 3 = (9 * k + 3) + 9 := by omega
  have hf : (k + 1) = (k) + 1 := by omega
  have hu : 8 * (k + 1) + 3 = (8 * k + 3) + 8 := by omega
  have hv : 2 * (k + 1) + 1 = (2 * k + 1) + 2 := by omega
  rw [hn,
    hf,
    hu,
    hv,
    factorial_add_cast (9 * k + 3) 9,
    factorial_add_cast (k) 1,
    factorial_add_cast (8 * k + 3) 8,
    factorial_add_cast (2 * k + 1) 2]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio numerator denominator
  field_simp
  <;> ring

theorem divisor_step (t : Track) (k : ℕ) (hk : kMin t ≤ k) :
    divisor t (k + 1) = divisor t k * ratio t (k : ℚ) := by
  cases t
  · obtain ⟨j, rfl⟩ : ∃ j, k = j + 1 := Nat.exists_eq_add_of_le' hk
    simpa only [Nat.cast_add, Nat.cast_one] using divisor_even_zero_step_succ j
  · obtain ⟨j, rfl⟩ : ∃ j, k = j + 1 := Nat.exists_eq_add_of_le' hk
    simpa only [Nat.cast_add, Nat.cast_one] using divisor_even_one_step_succ j
  · exact divisor_odd_zero_step k
  · exact divisor_odd_one_step k

end Math.B699.I11DivisorTwoFive

end HeightMember038
/- Frozen source member 39: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11DivisorTwoFive\Certificates.lean SHA256 e5bfc473857b1c041dbef4a5ca0c84c3da649161ed003a4995e8b28cab96555e -/
section HeightMember039


/-! UNCOMPILED. Exact polynomial identities matched to all four frozen tracks. -/
namespace Math.B699.I11DivisorTwoFive

theorem rough_certificate (t : Track) (x : ℚ) (hx : 0 ≤ x) :
    387420489 * denominator t (x + (kMin t : ℚ)) * (x + (kMin t : ℚ) + 1) ^ 2 ≤
      67108864 * numerator t (x + (kMin t : ℚ)) * (x + (kMin t : ℚ) + 2) ^ 2 := by
  cases t <;> simp only [kMin, Nat.cast_zero, Nat.cast_one]
  · apply sub_nonneg.mp
    calc
      0 ≤ 20736 * (24263350511400 + x * (242777113253700 + x * (1033716033970858 + x * (2524411128531755 + x * (3973462600211233 + x * (4261694937172776 + x * (3192124902952356 + x * (1674717415752384 + x * (604329429638592 + x * (143052330369024 + x * (20010434420736 + x * (1253826625536)))))))))))) := by positivity
      _ = 67108864 * numerator .evenZero (x + 1) * (x + 1 + 2) ^ 2 -
          387420489 * denominator .evenZero (x + 1) * (x + 1 + 1) ^ 2 := by
        unfold numerator denominator
        ring
  · apply sub_nonneg.mp
    calc
      0 ≤ 20736 * (281211446716200 + x * (2083020128933700 + x * (6966620453921450 + x * (13886565142317867 + x * (18330264815295265 + x * (16824035069070120 + x * (10955864659676580 + x * (5061831722156736 + x * (1626012377357760 + x * (345847177543680 + x * (43833140305920 + x * (2507653251072)))))))))))) := by positivity
      _ = 67108864 * numerator .evenOne (x + 1) * (x + 1 + 2) ^ 2 -
          387420489 * denominator .evenOne (x + 1) * (x + 1 + 1) ^ 2 := by
        unfold numerator denominator
        ring
  · apply sub_nonneg.mp
    calc
      0 ≤ 20736 * (2613014201875 + x * (30059191750260 + x * (155530009153318 + x * (477933347740812 + x * (969447703495915 + x * (1363309493026680 + x * (1356630018031764 + x * (955489636118016 + x * (466881158208960 + x * (150763944591360 + x * (28961363386368 + x * (2507653251072)))))))))))) := by positivity
      _ = 67108864 * numerator .oddZero (x + 0) * (x + 0 + 2) ^ 2 -
          387420489 * denominator .oddZero (x + 0) * (x + 0 + 1) ^ 2 := by
        unfold numerator denominator
        ring
  · apply sub_nonneg.mp
    calc
      0 ≤ 20736 * (287692064275 + x * (4064657165940 + x * (25292075863846 + x * (91894917569676 + x * (217310178493675 + x * (352020572471160 + x * (399314332221588 + x * (317635104665088 + x * (173822833483200 + x * (62376907161600 + x * (13218873532416 + x * (1253826625536)))))))))))) := by positivity
      _ = 67108864 * numerator .oddOne (x + 0) * (x + 0 + 2) ^ 2 -
          387420489 * denominator .oddOne (x + 0) * (x + 0 + 1) ^ 2 := by
        unfold numerator denominator
        ring

theorem middle_certificate (t : Track) (x : ℚ) (hx : 0 ≤ x) :
    5413091590980161748469798877616017917092297780481 * denominator t (x + (cutoff t : ℚ)) ≤
      1000000000000000000000000000000000000000000000000 * numerator t (x + (cutoff t : ℚ)) := by
  cases t <;> simp only [cutoff, Nat.cast_zero, Nat.cast_one, Nat.cast_ofNat]
  · apply sub_nonneg.mp
    calc
      0 ≤ 256 * (7642594268262588524703707747581488570059128670741711743572133200 + x * (12489408185551690524412584511824350903355160039547169816312344805 + x * (5563670642460919695073211199964689529881137503187585696424789321 + x * (1250179026357213779777890221231468289356325001998481197644405960 + x * (170065066762123898263031146509787890596985340701215754040332100 + x * (15110951798131466346778068630269129287427354166517443203791680 + x * (902565301599461670575068275737284931713355423895170085624768 + x * (36114701181445680057032272401465331629537756674256222781440 + x * (931844525345161625835793162261140079017098957676019507200 + x * (14054686231350918970506952099327388858389853954542141440 + x * (94351803130346478609133043026226599141756690633588736))))))))))) := by positivity
      _ = 1000000000000000000000000000000000000000000000000 * numerator .evenZero (x + 16) -
          5413091590980161748469798877616017917092297780481 * denominator .evenZero (x + 16) := by
        unfold numerator denominator
        ring
  · apply sub_nonneg.mp
    calc
      0 ≤ 256 * (3084018106760625790848035580602347689635910549123005850 + x * (23259991115004030757515010554804208042889777491859138175 + x * (77541535920391966898001943202483394381340735868437856121 + x * (150711327626051822855414990492022151742924371235027919960 + x * (189370046181709120734965322564371696228180575650825948100 + x * (160896032394758065502000959996550749429502210661496666560 + x * (93691178295542426801339341864399191891627642832740293568 + x * (36946089639342281144522509058599248032239078321789501440 + x * (9447587514576910734826689492486899444755166477916364800 + x * (1415277046955197179136995645393398987126350359503831040 + x * (94351803130346478609133043026226599141756690633588736))))))))))) := by positivity
      _ = 1000000000000000000000000000000000000000000000000 * numerator .evenOne (x + 1) -
          5413091590980161748469798877616017917092297780481 * denominator .evenOne (x + 1) := by
        unfold numerator denominator
        ring
  · apply sub_nonneg.mp
    calc
      0 ≤ 256 * (169476193676418279369846610007722406277383468578500075 + x * (1599483961942247962515004046914457304796914630896474430 + x * (6714697330938548038973886038903339135922785386037122671 + x * (16559249571812852078755917204233182907359019947207641040 + x * (26667828660881992745150541406443564694410479903510538100 + x * (29447775347799147729596198507232412365966953149609272960 + x * (22712653764091388840103803519798654640985911841667218368 + x * (12159468495738715638311716251798842150229215286154690560 + x * (4350487655877733813062955822261653243031352629776998400 + x * (943518031303464786091330430262265991417566906335887360 + x * (94351803130346478609133043026226599141756690633588736))))))))))) := by positivity
      _ = 1000000000000000000000000000000000000000000000000 * numerator .oddZero (x + 0) -
          5413091590980161748469798877616017917092297780481 * denominator .oddZero (x + 0) := by
        unfold numerator denominator
        ring
  · apply sub_nonneg.mp
    calc
      0 ≤ 256 * (3149544096945003945981416195545085436934436472615834260435040000 + x * (8038471699138458207788044990800398681115162979954625757459406560 + x * (3981814064310372988300491815509012642164853553029659445142004471 + x * (952754056206966669233543174650378769999551091313440792679927040 + x * (136078189955992102589929120436552273862520908770858190594402100 + x * (12614670987127929507073556376354207874442033003433999259822080 + x * (783429772950280897123397296342131033204193610329047315807168 + x * (32528411715166642877244525325669324414207743178783520194560 + x * (869786008529728575852864624548211878394689377650207744000 + x * (13582927215699186577461286884196255862681070501374197760 + x * (94351803130346478609133043026226599141756690633588736))))))))))) := by positivity
      _ = 1000000000000000000000000000000000000000000000000 * numerator .oddOne (x + 15) -
          5413091590980161748469798877616017917092297780481 * denominator .oddOne (x + 15) := by
        unfold numerator denominator
        ring

end Math.B699.I11DivisorTwoFive

end HeightMember039
/- Frozen source member 40: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11DivisorTwoFive\Bounds.lean SHA256 c57b4648b25767c75632bd31bfd3bfa77860660770ccd8f2ae999ca34c0b0fd0 -/
section HeightMember040


/-! UNCOMPILED. Bounds for the actual four factorial-ratio tracks. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11DivisorTwoFive

theorem ratio_rough (t : Track) (x : ℚ) (hx : (kMin t : ℚ) ≤ x) :
    infiniteRate * ((x + 1) / (x + 2)) ^ 2 ≤ ratio t x := by
  have hden : 0 < denominator t x := denominator_pos t x hx
  have hx0 : 0 ≤ x := le_trans (Nat.cast_nonneg _) hx
  have hmp : x + 2 ≠ 0 := ne_of_gt (by linarith : 0 < x + 2)
  have hcert := rough_certificate t (x - (kMin t : ℚ)) (sub_nonneg.mpr hx)
  have hs : x - (kMin t : ℚ) + (kMin t : ℚ) = x := by ring
  simp only [hs] at hcert
  apply sub_nonneg.mp
  have hid : ratio t x - infiniteRate * ((x + 1) / (x + 2)) ^ 2 =
      (67108864 * numerator t x * (x + 2) ^ 2 -
        387420489 * denominator t x * (x + 1) ^ 2) /
      (67108864 * denominator t x * (x + 2) ^ 2) := by
    unfold ratio infiniteRate
    field_simp [ne_of_gt hden, hmp]
    <;> ring
  rw [hid]
  exact div_nonneg (sub_nonneg.mpr hcert) (by positivity)

theorem divisor_rough_step (t : Track) (k : ℕ) (hk : kMin t ≤ k) :
    divisor t k * (infiniteRate * (((k : ℚ) + 1) / ((k : ℚ) + 2)) ^ 2) ≤
      divisor t (k + 1) := by
  rw [divisor_step t k hk]
  exact mul_le_mul_of_nonneg_left
    (ratio_rough t (k : ℚ) (by exact_mod_cast hk)) (divisor_pos t k).le

theorem ratio_middle (t : Track) (x : ℚ) (hx : (cutoff t : ℚ) ≤ x) :
    middleRate ≤ ratio t x := by
  have hstart : (kMin t : ℚ) ≤ (cutoff t : ℚ) := by
    exact_mod_cast cutoff_ge_kMin t
  have hden : 0 < denominator t x := denominator_pos t x (hstart.trans hx)
  have hcert := middle_certificate t (x - (cutoff t : ℚ)) (sub_nonneg.mpr hx)
  have hs : x - (cutoff t : ℚ) + (cutoff t : ℚ) = x := by ring
  simp only [hs] at hcert
  have hmid : middleRate = (5413091590980161748469798877616017917092297780481 : ℚ) / 1000000000000000000000000000000000000000000000000 := by
    norm_num [middleRate, middleBase]
  rw [hmid, ratio]
  apply (div_le_div_iff₀ (by norm_num) hden).2
  simpa only [mul_comm (numerator t x) (1000000000000000000000000000000000000000000000000 : ℚ)] using hcert

theorem divisor_middle_step (t : Track) (k : ℕ) (hk : cutoff t ≤ k) :
    divisor t k * middleRate ≤ divisor t (k + 1) := by
  rw [divisor_step t k ((cutoff_ge_kMin t).trans hk)]
  exact mul_le_mul_of_nonneg_left
    (ratio_middle t (k : ℚ) (by exact_mod_cast hk)) (divisor_pos t k).le

end Math.B699.I11DivisorTwoFive

end HeightMember040
/- Frozen source member 41: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Growth\ElementaryRate.lean SHA256 1a277b639beae4464785efec3655f9631debc59be48d7c70b348ff528362b271 -/
section HeightMember041








/-!
Finite rational growth from actual one-step certificates.
These sequence lemmas do not themselves prove factorial divisibility or a
Padé G bound. Each actual sequence must discharge the displayed step and
base obligations with its source-aligned certificate.
-/

namespace Math.B699.ElementaryRate

theorem lower_telescoping_from_step {F : ℕ → ℚ} {R : ℚ} {k0 : ℕ}
    (hR : 0 ≤ R)
    (hstep : ∀ k : ℕ, k0 ≤ k →
      F k * (R * (((k : ℚ) + 1) / ((k : ℚ) + 2)) ^ 2) ≤ F (k + 1))
    (n : ℕ) :
    F k0 * R ^ n * ((k0 : ℚ) + 1) ^ 2 /
      (((k0 + n : ℕ) : ℚ) + 1) ^ 2 ≤ F (k0 + n) := by
  induction n with
  | zero =>
      apply le_of_eq
      simp only [pow_zero, mul_one, Nat.add_zero]
      have hk : (k0 : ℚ) + 1 ≠ 0 := by positivity
      field_simp
  | succ n ih =>
      have hk : 0 < ((k0 + n : ℕ) : ℚ) + 1 := by positivity
      have hk2 : 0 < ((k0 + n : ℕ) : ℚ) + 2 := by positivity
      calc
        F k0 * R ^ (n + 1) * ((k0 : ℚ) + 1) ^ 2 /
            (((k0 + (n + 1) : ℕ) : ℚ) + 1) ^ 2 =
          (F k0 * R ^ n * ((k0 : ℚ) + 1) ^ 2 /
            (((k0 + n : ℕ) : ℚ) + 1) ^ 2) *
            (R * ((((k0 + n : ℕ) : ℚ) + 1) / (((k0 + n : ℕ) : ℚ) + 2)) ^ 2) := by
              rw [pow_succ]
              simp only [Nat.cast_add, Nat.cast_one] at *
              field_simp
              <;> ring
        _ ≤ F (k0 + n) *
            (R * ((((k0 + n : ℕ) : ℚ) + 1) / (((k0 + n : ℕ) : ℚ) + 2)) ^ 2) :=
          mul_le_mul_of_nonneg_right ih (mul_nonneg hR (sq_nonneg _))
        _ ≤ F (k0 + (n + 1)) := by
          simpa only [Nat.add_assoc] using hstep (k0 + n) (by omega)

theorem lower_geometric_from_step {F : ℕ → ℚ} {R : ℚ} {K : ℕ}
    (hR : 0 ≤ R)
    (hstep : ∀ k : ℕ, K ≤ k → F k * R ≤ F (k + 1))
    (n : ℕ) : F K * R ^ n ≤ F (K + n) := by
  induction n with
  | zero => simp
  | succ n ih =>
      calc
        F K * R ^ (n + 1) = (F K * R ^ n) * R := by rw [pow_succ]; ring
        _ ≤ F (K + n) * R := mul_le_mul_of_nonneg_right ih hR
        _ ≤ F (K + (n + 1)) := by
          simpa only [Nat.add_assoc] using hstep (K + n) (by omega)

theorem two_le_block_power {R : ℚ} {B : ℕ}
    (hR : 1 ≤ R) (hlinear : 2 ≤ 1 + (B : ℚ) * (R - 1)) :
    2 ≤ R ^ B := by
  exact hlinear.trans (one_add_mul_sub_le_pow (by linarith : -1 ≤ R) B)

theorem two_pow_le_block_power {R : ℚ} {B : ℕ}
    (hblock : 2 ≤ R ^ B) (t : ℕ) : (2 : ℚ) ^ t ≤ R ^ (B * t) := by
  rw [pow_mul]
  exact pow_le_pow_left₀ (by norm_num) hblock t

/-- All exponents and base losses are finite integer data. No large block
power needs to be evaluated: the linear Bernoulli premise implies it. -/
theorem strict_threshold_from_step {F : ℕ → ℚ} {R : ℚ} {K T B n : ℕ}
    (hR : 1 ≤ R) (hF : 0 ≤ F K)
    (hstep : ∀ k : ℕ, K ≤ k → F k * R ≤ F (k + 1))
    (hbase : 1 ≤ F K * (2 : ℚ) ^ T)
    (hlinear : 2 ≤ 1 + (B : ℚ) * (R - 1))
    (hn : B * (T + 1) ≤ n) : 1 < F (K + n) := by
  have hp : (2 : ℚ) ^ (T + 1) ≤ R ^ n :=
    (two_pow_le_block_power (two_le_block_power hR hlinear) (T + 1)).trans
      (pow_le_pow_right₀ hR hn)
  have hbound : (2 : ℚ) ≤ F (K + n) := by
    calc
      (2 : ℚ) = 1 * 2 := by ring
      _ ≤ (F K * (2 : ℚ) ^ T) * 2 := mul_le_mul_of_nonneg_right hbase (by norm_num)
      _ = F K * (2 : ℚ) ^ (T + 1) := by rw [pow_succ]; ring
      _ ≤ F K * R ^ n := mul_le_mul_of_nonneg_left hp hF
      _ ≤ F (K + n) := lower_geometric_from_step (by linarith) hstep n
  exact lt_of_lt_of_le (by norm_num : (1 : ℚ) < 2) hbound

#print axioms Math.B699.ElementaryRate.lower_telescoping_from_step
#print axioms Math.B699.ElementaryRate.lower_geometric_from_step
#print axioms Math.B699.ElementaryRate.two_le_block_power
#print axioms Math.B699.ElementaryRate.two_pow_le_block_power
#print axioms Math.B699.ElementaryRate.strict_threshold_from_step

end Math.B699.ElementaryRate

end HeightMember041
/- Frozen source member 42: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11DivisorTwoFive\Threshold.lean SHA256 8fd9d17d1e7a8c7f90e56915c1f1135c6c7c99e2c60482832ba2b3161ee8f094 -/
section HeightMember042



/-!
UNCOMPILED. All four actual tracks feed the accepted sequence lemmas.
The final qContent statement has no G, divisor-step, asymptotic or height premise.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11DivisorTwoFive
open Math.B699.ElementaryRate Math.B699.RationalFactorialDivisor
open Math.B699.PadeConstruction

def normalized (t : Track) (k : ℕ) : ℚ :=
  divisor t k / (targetBase ^ (4 * rho t) * targetRate ^ k)

theorem normalized_pos (t : Track) (k : ℕ) : 0 < normalized t k :=
  div_pos (divisor_pos t k)
    (mul_pos (pow_pos target_base_pos _) (pow_pos target_rate_pos _))

theorem normalized_rough_step (t : Track) (k : ℕ) (hk : kMin t ≤ k) :
    normalized t k * (1 * (((k : ℚ) + 1) / ((k : ℚ) + 2)) ^ 2) ≤
      normalized t (k + 1) := by
  have hcoef := mul_le_mul_of_nonneg_right target_rate_le_infinite
    (sq_nonneg ((((k : ℚ) + 1) / ((k : ℚ) + 2))))
  have hstep : divisor t k *
      (targetRate * (((k : ℚ) + 1) / ((k : ℚ) + 2)) ^ 2) ≤ divisor t (k + 1) :=
    (mul_le_mul_of_nonneg_left hcoef (divisor_pos t k).le).trans
      (divisor_rough_step t k hk)
  have ht : targetRate ≠ 0 := ne_of_gt target_rate_pos
  have hp : targetRate ^ k ≠ 0 := pow_ne_zero _ ht
  have hs : targetBase ^ (4 * rho t) ≠ 0 :=
    pow_ne_zero _ (ne_of_gt target_base_pos)
  have hd : (k : ℚ) + 2 ≠ 0 := by positivity
  calc
    _ = (divisor t k * (targetRate * (((k : ℚ) + 1) / ((k : ℚ) + 2)) ^ 2)) /
        (targetBase ^ (4 * rho t) * targetRate ^ (k + 1)) := by
      unfold normalized
      rw [pow_succ targetRate k]
      field_simp [ht, hp, hs, hd]
      <;> ring
    _ ≤ divisor t (k + 1) / (targetBase ^ (4 * rho t) * targetRate ^ (k + 1)) :=
      div_le_div_of_nonneg_right hstep
        (mul_pos (pow_pos target_base_pos _) (pow_pos target_rate_pos _)).le
    _ = normalized t (k + 1) := rfl

theorem normalized_middle_step (t : Track) (k : ℕ) (hk : cutoff t ≤ k) :
    normalized t k * blockRatio ≤ normalized t (k + 1) := by
  have ht : targetRate ≠ 0 := ne_of_gt target_rate_pos
  have hp : targetRate ^ k ≠ 0 := pow_ne_zero _ ht
  have hs : targetBase ^ (4 * rho t) ≠ 0 :=
    pow_ne_zero _ (ne_of_gt target_base_pos)
  calc
    _ = (divisor t k * middleRate) /
        (targetBase ^ (4 * rho t) * targetRate ^ (k + 1)) := by
      unfold normalized blockRatio
      rw [pow_succ targetRate k]
      field_simp [ht, hp, hs]
      <;> ring
    _ ≤ divisor t (k + 1) / (targetBase ^ (4 * rho t) * targetRate ^ (k + 1)) :=
      div_le_div_of_nonneg_right (divisor_middle_step t k hk)
        (mul_pos (pow_pos target_base_pos _) (pow_pos target_rate_pos _)).le
    _ = normalized t (k + 1) := rfl

/-- The only direct evaluations use the actual four small initial values. -/
theorem finite_binary_base (t : Track) :
    1 ≤ (normalized t (kMin t) * ((kMin t : ℚ) + 1) ^ 2 /
      ((cutoff t : ℚ) + 1) ^ 2) * (2 : ℚ) ^ loss t := by
  rw [normalized, divisor_initial]
  cases t <;> norm_num [initialValue, kMin, cutoff, loss, rho, targetRate, targetBase]

theorem normalized_binary_base (t : Track) :
    1 ≤ normalized t (cutoff t) * (2 : ℚ) ^ loss t := by
  have hstart := cutoff_ge_kMin t
  have hindex : kMin t + (cutoff t - kMin t) = cutoff t := by omega
  have h := lower_telescoping_from_step (F := normalized t) (R := 1) (k0 := kMin t)
    (by norm_num) (fun k hk => normalized_rough_step t k hk) (cutoff t - kMin t)
  have htel : normalized t (kMin t) * ((kMin t : ℚ) + 1) ^ 2 /
      ((cutoff t : ℚ) + 1) ^ 2 ≤ normalized t (cutoff t) := by
    simpa only [one_pow, mul_one, hindex] using h
  exact (finite_binary_base t).trans
    (mul_le_mul_of_nonneg_right htel (by positivity))

theorem normalized_gt_one (t : Track) (k : ℕ)
    (hk : cutoff t + 5 * (loss t + 1) ≤ k) : 1 < normalized t k := by
  have hn : 5 * (loss t + 1) ≤ k - cutoff t := by omega
  have h := strict_threshold_from_step (F := normalized t) (R := blockRatio)
    (K := cutoff t) (T := loss t) (B := 5) (n := k - cutoff t)
    block_ratio_ge_one (normalized_pos t (cutoff t)).le
    (fun j hj => normalized_middle_step t j hj)
    (normalized_binary_base t) block_linear_bound hn
  have hindex : cutoff t + (k - cutoff t) = k := by omega
  simpa only [hindex] using h

theorem divisor_lower (t : Track) (k : ℕ)
    (hk : cutoff t + 5 * (loss t + 1) ≤ k) :
    targetBase ^ (4 * (2 * k + rho t)) < divisor t k := by
  have h := normalized_gt_one t k hk
  change 1 < divisor t k / (targetBase ^ (4 * rho t) * targetRate ^ k) at h
  have hmul := (lt_div_iff₀
    (mul_pos (pow_pos target_base_pos _) (pow_pos target_rate_pos _))).mp h
  have hden : targetBase ^ (4 * rho t) * targetRate ^ k =
      targetBase ^ (4 * (2 * k + rho t)) := by
    rw [targetRate, ← pow_mul, ← pow_add]
    congr 1
    ring
  simpa only [one_mul, hden] using hmul

theorem threshold_from_large_m (t : Track) (k : ℕ) (hm : 141 ≤ 2 * k + rho t) :
    cutoff t + 5 * (loss t + 1) ≤ k := by
  cases t <;> simp only [rho, cutoff, loss] at * <;> omega

/-- Both delta values and both parity classes are covered, including odd m=141. -/
theorem source_track (d m : ℕ) (hd : d = 0 ∨ d = 1) (hm : 1 ≤ m) :
    ∃ t : Track, ∃ k : ℕ, kMin t ≤ k ∧ d = delta t ∧ m = 2 * k + rho t := by
  have hmod : m % 2 = 0 ∨ m % 2 = 1 := by omega
  have hdiv := Nat.mod_add_div m 2
  rcases hd with rfl | rfl
  · rcases hmod with hz | ho
    · refine ⟨.evenZero, m / 2, ?_, rfl, ?_⟩ <;> simp only [kMin, rho] <;> omega
    · refine ⟨.oddZero, m / 2, ?_, rfl, ?_⟩ <;> simp only [kMin, rho] <;> omega
  · rcases hmod with hz | ho
    · refine ⟨.evenOne, m / 2, ?_, rfl, ?_⟩ <;> simp only [kMin, rho] <;> omega
    · refine ⟨.oddOne, m / 2, ?_, rfl, ?_⟩ <;> simp only [kMin, rho] <;> omega

theorem rationalDivisor_two_five_lower (d m : ℕ)
    (hd : d = 0 ∨ d = 1) (hm : 141 ≤ m) :
    (602791 / 500000 : ℚ) ^ (4 * m) <
      rationalDivisor (4 * m - d) (m + d - 1) := by
  obtain ⟨t, k, _hk, hdrep, hmrep⟩ := source_track d m hd (by omega)
  have hlarge : 141 ≤ 2 * k + rho t := by omega
  have h := divisor_lower t k (threshold_from_large_m t k hlarge)
  rw [divisor_eq_actual] at h
  change targetBase ^ (4 * m) < rationalDivisor (4 * m - d) (m + d - 1)
  rw [hdrep, hmrep]
  exact h

/-- Actual finite-gcd qContent, with no G, recurrence, growth or height assumption. -/
theorem qContent_two_five_lower (d m : ℕ)
    (hd : d = 0 ∨ d = 1) (hm : 141 ≤ m) :
    (602791 / 500000 : ℚ) ^ (4 * m) <
      (qContent (4 * m - d) (m + d - 1) (4 * m - d) : ℚ) := by
  exact (rationalDivisor_two_five_lower d m hd hm).trans_le
    (rationalDivisor_le_qContent (4 * m - d) (m + d - 1))

theorem qContent_upper_row_lower (m : ℕ) (hm : 141 ≤ m) :
    (602791 / 500000 : ℚ) ^ (4 * m) < (qContent (4 * m) (m - 1) (4 * m) : ℚ) := by
  simpa only [Nat.sub_zero, Nat.add_zero] using
    qContent_two_five_lower 0 m (Or.inl rfl) hm

theorem qContent_adjacent_row_lower (m : ℕ) (hm : 141 ≤ m) :
    (602791 / 500000 : ℚ) ^ (4 * m) < (qContent (4 * m - 1) m (4 * m - 1) : ℚ) := by
  simpa only [Nat.add_sub_cancel] using
    qContent_two_five_lower 1 m (Or.inr rfl) hm

end Math.B699.I11DivisorTwoFive

end HeightMember042
/- Frozen source member 43: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11Scaled\RatBounds.lean SHA256 b6d44c355213e6513ca30b440af47efcc731cdbec86a2838c9e22ac9ddb392b8 -/
section HeightMember043







/-! UNCOMPILED CANDIDATE. Denominator-free rational bounds. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ScaledBounds

theorem normalized_abs_bound (g l t x v H : ℚ)
    (hl : 0 ≤ l) (hgl : l ≤ g) (ht : 0 ≤ t)
    (hid : g * x = t * v) (hv : |v| ≤ H) : l * |x| ≤ t * H := by
  have hg : 0 ≤ g := le_trans hl hgl
  have habs : g * |x| = t * |v| := by
    simpa only [abs_mul, abs_of_nonneg hg, abs_of_nonneg ht] using congrArg abs hid
  calc
    l * |x| ≤ g * |x| := mul_le_mul_of_nonneg_right hgl (abs_nonneg x)
    _ = t * |v| := habs
    _ ≤ t * H := mul_le_mul_of_nonneg_left hv ht

theorem weighted_bound_lt (l r k x D : ℚ)
    (hl : 0 < l) (hk : 0 ≤ k) (hbound : l * x ≤ D)
    (hsmall : k * D < r * l) : k * x < r := by
  apply (Rat.mul_lt_mul_left hl).mp
  calc
    l * (k * x) = k * (l * x) := by ring
    _ ≤ k * D := mul_le_mul_of_nonneg_left hbound hk
    _ < l * r := by simpa only [mul_comm l r] using hsmall

theorem ratio_pow_mul (N D : ℚ) (hD : D ≠ 0) (m : ℕ) :
    (N / D) ^ m * D ^ m = N ^ m := by
  rw [← mul_pow, div_mul_cancel₀ _ hD]

theorem sum_lt_of_twice_lt (a b r : ℚ)
    (ha : 2 * a < r) (hb : 2 * b < r) : a + b < r := by linarith

end Math.B699.I11ScaledBounds
#print axioms Math.B699.I11ScaledBounds.normalized_abs_bound
#print axioms Math.B699.I11ScaledBounds.weighted_bound_lt
#print axioms Math.B699.I11ScaledBounds.ratio_pow_mul
#print axioms Math.B699.I11ScaledBounds.sum_lt_of_twice_lt

end HeightMember043
/- Frozen source member 44: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveEdge\ActualRows.lean SHA256 13c9d5d127c8f85434421742002feedb66e7f954533841fc740b0d9e7b5e931c -/
section HeightMember044





/-!
UNCOMPILED. Actual source rows, each row's own gcd, and the D=3 remainder.
Prefix and four-track G have complete proof text but separate acceptance states.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveScaled

open Math.B699.PadeActualRows Math.B699.PadeConstruction Math.B699.PadeContent
open Math.B699.I11TwoFivePrefix Math.B699.PadeGrowthNormalization

def contentBase : ℚ := (602791 / 500000 : ℚ) ^ 4
noncomputable def qEval (m : ℕ) (row : Bool) : ℚ :=
  actualQ 5 4 (rowDelta row) m (3 / 128)
noncomputable def eEval (m : ℕ) (row : Bool) : ℚ :=
  actualE 5 4 (rowDelta row) m (3 / 128)
noncomputable def content (m : ℕ) (row : Bool) : ℚ :=
  (qContent (4 * m - rowDelta row) (m + rowDelta row - 1)
    (4 * m - rowDelta row) : ℚ)
def qRow (m : ℕ) (row : Bool) : ℤ := actualQRow (4 * m) (m - 1) 3 128 row
def rowError (m : ℕ) (row : Bool) : ℤ :=
  (128 : ℤ) ^ (5 * m) * actualPRow (4 * m) (m - 1) 3 128 row -
    (125 : ℤ) ^ (5 * m) * qRow m row

theorem contentBase_pos : 0 < contentBase := by norm_num [contentBase]

theorem content_lower (m : ℕ) (hm : 141 ≤ m) (row : Bool) :
    contentBase ^ m ≤ content m row := by
  have h := Math.B699.I11DivisorTwoFive.qContent_two_five_lower
    (rowDelta row) m (rowDelta_cases row) hm
  simpa only [contentBase, content, ← pow_mul] using le_of_lt h

theorem q_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    content m row * (qRow m row : ℚ) =
      (128 : ℚ) ^ (4 * m - rowDelta row) * qEval m row := by
  simpa only [content, qRow, qEval] using
    Math.B699.I11TwoFivePrefix.actual_q_content_identity m hm row

theorem e_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    content m row * (rowError m row : ℚ) =
      (128 : ℚ) ^ (m + rowDelta row - 1) *
        (3 : ℚ) ^ (2 * (4 * m - rowDelta row) + 1) * eEval m row := by
  simpa only [content, rowError, qRow, eEval] using
    Math.B699.I11TwoFivePrefix.actual_remainder m hm row

theorem actual_q_content_bound (m : ℕ) (hm : 141 ≤ m) (row : Bool)
    (BQ : ℚ) (hBQ : 0 ≤ BQ) (hQ : |qEval m row| ≤ BQ ^ m) :
    contentBase ^ m * |(qRow m row : ℚ)| ≤ ((128 : ℚ) ^ 4 * BQ) ^ m := by
  have h := Math.B699.I11ScaledBounds.normalized_abs_bound
    (content m row) (contentBase ^ m) ((128 : ℚ) ^ (4 * m - rowDelta row))
    (qRow m row) (qEval m row) (BQ ^ m)
    (le_of_lt (pow_pos contentBase_pos m)) (content_lower m hm row)
    (pow_nonneg (by norm_num) _) (q_content_identity m (by omega) row) hQ
  calc
    _ ≤ (128 : ℚ) ^ (4 * m - rowDelta row) * BQ ^ m := h
    _ ≤ (128 : ℚ) ^ (4 * m) * BQ ^ m :=
      mul_le_mul_of_nonneg_right
        (pow_le_pow_right₀ (by norm_num : (1 : ℚ) ≤ 128) (Nat.sub_le _ _))
        (pow_nonneg hBQ m)
    _ = ((128 : ℚ) ^ 4 * BQ) ^ m := by rw [mul_pow, ← pow_mul]

theorem actual_e_content_bound (m : ℕ) (hm : 141 ≤ m) (row : Bool)
    (BE : ℚ) (hBE : 0 ≤ BE) (hE : |eEval m row| ≤ BE ^ m) :
    contentBase ^ m * |(rowError m row : ℚ)| ≤ ((128 : ℚ) * 3 ^ 8 * BE) ^ m := by
  have h := Math.B699.I11ScaledBounds.normalized_abs_bound
    (content m row) (contentBase ^ m)
    ((128 : ℚ) ^ (m + rowDelta row - 1) *
      (3 : ℚ) ^ (2 * (4 * m - rowDelta row) + 1))
    (rowError m row) (eEval m row) (BE ^ m)
    (le_of_lt (pow_pos contentBase_pos m)) (content_lower m hm row)
    (by positivity) (e_content_identity m (by omega) row) hE
  calc
    _ ≤ ((128 : ℚ) ^ (m + rowDelta row - 1) *
          (3 : ℚ) ^ (2 * (4 * m - rowDelta row) + 1)) * BE ^ m := h
    _ ≤ ((128 : ℚ) * 3 ^ 8) ^ m * BE ^ m :=
      mul_le_mul_of_nonneg_right
        (Math.B699.I11TwoFivePrefix.error_scale_le m (by omega) row) (pow_nonneg hBE m)
    _ = ((128 : ℚ) * 3 ^ 8 * BE) ^ m := by rw [← mul_pow]

/-- The actual nonzero-row theorem supplies the integer lower bound. -/
theorem actual_integer_gap (m e f A C : ℕ)
    (hm : 1 ≤ m) (he : 35 * m ≤ e) (hf : 15 * m ≤ f) (hC : 1 ≤ C)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    ∃ row : Bool, (128 : ℤ) ^ (5 * m) ≤
      24 * |qRow m row| +
        |rowError m row| * |(5 : ℤ) ^ (f - 15 * m) * (C : ℤ)| := by
  have hp : (128 : ℕ) ^ (5 * m) = (2 : ℕ) ^ (35 * m) := by
    calc
      _ = ((2 : ℕ) ^ 7) ^ (5 * m) := by norm_num
      _ = (2 : ℕ) ^ (35 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
  have hq : (125 : ℕ) ^ (5 * m) = (5 : ℕ) ^ (15 * m) := by
    calc
      _ = ((5 : ℕ) ^ 3) ^ (5 * m) := by norm_num
      _ = (5 : ℕ) ^ (15 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
  have hPnat : (128 : ℕ) ^ (5 * m) * (2 ^ (e - 35 * m) * A) = 2 ^ e * A := by
    rw [hp]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 2 e (35 * m) A he
  have hQnat : (125 : ℕ) ^ (5 * m) * (5 ^ (f - 15 * m) * C) = 5 ^ f * C := by
    rw [hq]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 5 f (15 * m) C hf
  have hPint : (128 : ℤ) ^ (5 * m) * ((2 : ℤ) ^ (e - 35 * m) * (A : ℤ)) =
      (2 : ℤ) ^ e * (A : ℤ) := by exact_mod_cast hPnat
  have hQint : (125 : ℤ) ^ (5 * m) * ((5 : ℤ) ^ (f - 15 * m) * (C : ℤ)) =
      (5 : ℤ) ^ f * (C : ℤ) := by exact_mod_cast hQnat
  have hgap' : |(128 : ℤ) ^ (5 * m) * ((2 : ℤ) ^ (e - 35 * m) * (A : ℤ)) -
      (125 : ℤ) ^ (5 * m) * ((5 : ℤ) ^ (f - 15 * m) * (C : ℤ))| ≤ 24 := by
    rw [hPint, hQint]
    exact hgap
  have hV : (5 : ℤ) ^ (f - 15 * m) * (C : ℤ) ≠ 0 := by
    apply mul_ne_zero (pow_ne_zero _ (by decide : (5 : ℤ) ≠ 0))
    exact_mod_cast (by omega : C ≠ 0)
  obtain ⟨row, _hne, hlower⟩ := actual_bft_integer_gap
    (4 * m) (m - 1) (by omega) 3 128
    (r := (128 : ℤ) ^ (5 * m)) (s := (125 : ℤ) ^ (5 * m))
    (a := 1) (b := 1)
    (U := (2 : ℤ) ^ (e - 35 * m) * (A : ℤ))
    (V := (5 : ℤ) ^ (f - 15 * m) * (C : ℤ)) (D := 24)
    (by decide) (by decide) (pow_nonneg (by decide) _)
    (by decide) (by decide) hV hgap'
  exact ⟨row, by simpa only [qRow, rowError, one_mul, mul_one] using hlower⟩

end Math.B699.I11TwoFiveScaled

end HeightMember044
/- Frozen source member 45: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveEdge\ScaledGap.lean SHA256 838752980c018e7e88cd32978901b87716e718aaf9ffcdb3122aeafd599fce75 -/
section HeightMember045



/-! UNCOMPILED. Both strict gap terms follow from actual Q/E and actual G.
The E denominator retains 128*3^8. Positive cancellation uses Rat lemmas. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveScaled

def qNumerator : ℚ := (128 : ℚ) ^ 5 * contentBase
def qDenominator (BQ : ℚ) : ℚ := (128 : ℚ) ^ 4 * BQ
def qRate (BQ : ℚ) : ℚ := qNumerator / qDenominator BQ
def wNumerator : ℚ := ((128 : ℚ) * 125) ^ 5 * contentBase
def wDenominator (BE : ℚ) : ℚ := (128 : ℚ) * 3 ^ 8 * BE
def wRate (BE : ℚ) : ℚ := wNumerator / wDenominator BE

theorem qRate_eq_seed (BQ : ℚ) :
    qRate BQ = (128 : ℚ) * contentBase / BQ := by
  by_cases hBQ : BQ = 0
  · simp [qRate, qNumerator, qDenominator, hBQ]
  · unfold qRate qNumerator qDenominator
    field_simp [hBQ]
    <;> norm_num
    <;> ring

theorem actual_q_gap_twice_lt (m : ℕ) (hm : 141 ≤ m) (row : Bool)
    (BQ : ℚ) (hBQ : 0 < BQ) (hQ : |qEval m row| ≤ BQ ^ m)
    (hA : (48 : ℚ) < qRate BQ ^ m) :
    2 * (24 * |(qRow m row : ℚ)|) < (128 : ℚ) ^ (5 * m) := by
  have hden : 0 < qDenominator BQ := by unfold qDenominator; positivity
  have hnum : (48 : ℚ) * qDenominator BQ ^ m < qNumerator ^ m := by
    calc
      _ < qRate BQ ^ m * qDenominator BQ ^ m :=
        mul_lt_mul_of_pos_right hA (pow_pos hden m)
      _ = qNumerator ^ m :=
        Math.B699.I11ScaledBounds.ratio_pow_mul qNumerator (qDenominator BQ)
          (ne_of_gt hden) m
  have hsmall : (48 : ℚ) * ((128 : ℚ) ^ 4 * BQ) ^ m <
      (128 : ℚ) ^ (5 * m) * contentBase ^ m := by
    calc
      _ < qNumerator ^ m := hnum
      _ = (128 : ℚ) ^ (5 * m) * contentBase ^ m := by
        simp only [qNumerator, mul_pow, ← pow_mul]
  have h := Math.B699.I11ScaledBounds.weighted_bound_lt
    (contentBase ^ m) ((128 : ℚ) ^ (5 * m)) 48 |(qRow m row : ℚ)|
    (((128 : ℚ) ^ 4 * BQ) ^ m) (pow_pos contentBase_pos m) (by norm_num)
    (actual_q_content_bound m hm row BQ hBQ.le hQ) hsmall
  nlinarith only [h]

theorem actual_e_gap_twice_lt (m : ℕ) (hm : 141 ≤ m) (row : Bool)
    (BE : ℚ) (hBE : 0 < BE) (hE : |eEval m row| ≤ BE ^ m)
    (V Nq : ℕ) (hNV : (125 : ℚ) ^ (5 * m) * (V : ℚ) = (Nq : ℚ))
    (hNsmall : 2 * (Nq : ℚ) < wRate BE ^ m) :
    2 * (|(rowError m row : ℚ)| * (V : ℚ)) < (128 : ℚ) ^ (5 * m) := by
  have hden : 0 < wDenominator BE := by unfold wDenominator; positivity
  have hsmall : (2 * (V : ℚ)) * wDenominator BE ^ m <
      (128 : ℚ) ^ (5 * m) * contentBase ^ m := by
    apply (Rat.mul_lt_mul_right
      (pow_pos (by norm_num : (0 : ℚ) < 125) (5 * m))).mp
    calc
      (2 * (V : ℚ)) * wDenominator BE ^ m * (125 : ℚ) ^ (5 * m) =
          (2 * (Nq : ℚ)) * wDenominator BE ^ m := by rw [← hNV]; ring
      _ < wRate BE ^ m * wDenominator BE ^ m :=
        mul_lt_mul_of_pos_right hNsmall (pow_pos hden m)
      _ = wNumerator ^ m :=
        Math.B699.I11ScaledBounds.ratio_pow_mul wNumerator (wDenominator BE)
          (ne_of_gt hden) m
      _ = ((128 : ℚ) ^ (5 * m) * contentBase ^ m) * (125 : ℚ) ^ (5 * m) := by
        simp only [wNumerator, mul_pow, ← pow_mul]
        ring
  have h := Math.B699.I11ScaledBounds.weighted_bound_lt
    (contentBase ^ m) ((128 : ℚ) ^ (5 * m)) (2 * (V : ℚ))
    |(rowError m row : ℚ)| (wDenominator BE ^ m)
    (pow_pos contentBase_pos m) (by positivity)
    (actual_e_content_bound m hm row BE hBE.le hE) hsmall
  nlinarith only [h]

theorem actual_integer_gap_sum_lt (m : ℕ) (hm : 141 ≤ m) (row : Bool)
    (BQ BE : ℚ) (hBQ : 0 < BQ) (hBE : 0 < BE)
    (hQ : |qEval m row| ≤ BQ ^ m) (hE : |eEval m row| ≤ BE ^ m)
    (hA : (48 : ℚ) < qRate BQ ^ m)
    (V Nq : ℕ) (hNV : (125 : ℚ) ^ (5 * m) * (V : ℚ) = (Nq : ℚ))
    (hNsmall : 2 * (Nq : ℚ) < wRate BE ^ m) :
    24 * |qRow m row| + |rowError m row| * (V : ℤ) < (128 : ℤ) ^ (5 * m) := by
  have h := Math.B699.I11ScaledBounds.sum_lt_of_twice_lt
    (24 * |(qRow m row : ℚ)|) (|(rowError m row : ℚ)| * (V : ℚ))
    ((128 : ℚ) ^ (5 * m))
    (actual_q_gap_twice_lt m hm row BQ hBQ hQ hA)
    (actual_e_gap_twice_lt m hm row BE hBE hE V Nq hNV hNsmall)
  exact_mod_cast h

end Math.B699.I11TwoFiveScaled

end HeightMember045
/- Frozen source member 46: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveEdge\SelectedEdge.lean SHA256 6c1befc16cc9b77d838e9355b65f8c157f8b9fbe6fa4fabe971a29aea619529a -/
section HeightMember046


/-! UNCOMPILED. Actual two-five cofactor edge, conditional on raw growth and
explicit numeric data. No actual Hom, G, determinant, or desired edge is assumed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveScaled
open Math.B699.DiscretePadeSelector

theorem edge_of_actual_growth
    (BQ BE : ℚ) (hBQ : 0 < BQ) (hBE : 0 < BE)
    (hQ : ∀ m : ℕ, 141 ≤ m → ∀ row : Bool, |qEval m row| ≤ BQ ^ m)
    (hE : ∀ m : ℕ, 141 ≤ m → ∀ row : Bool, |eEval m row| ≤ BE ^ m)
    (hAone : 1 ≤ qRate BQ) (hAbase : (48 : ℚ) < qRate BQ ^ 329)
    (hW : (twoFiveZ : ℚ) ≤ wRate BE)
    (hprevious : twoFiveZ ^ (twoFiveM - 1) ≤ 4 * twoFiveY0)
    (hrateP : 2 ^ 35000 ≤ twoFiveZ ^ 752)
    (hbaseP : (2 ^ 35000) ^ twoFiveM ≤ twoFiveY0 ^ 752)
    (hlookP : 4 ^ 752 * (2 ^ 35000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (752 * twoFiveM))
    (hrateQ : 5 ^ 15000 ≤ twoFiveZ ^ 748)
    (hbaseQ : (5 ^ 15000) ^ twoFiveM ≤ twoFiveY0 ^ 748)
    (hlookQ : 4 ^ 748 * (5 ^ 15000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (748 * twoFiveM))
    (Y e f A C : ℕ) (hY : twoFiveY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hupperQ : 5 ^ f * C ≤ 2 * Y)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 248 ≤ A ^ 1000 ∨ Y ^ 252 ≤ C ^ 1000 := by
  by_cases hP : Y ^ 248 ≤ A ^ 1000
  · exact Or.inl hP
  by_cases hQcofactor : Y ^ 252 ≤ C ^ 1000
  · exact Or.inr hQcofactor
  exfalso
  have hsmallP : A ^ 1000 < Y ^ 248 := Nat.lt_of_not_ge hP
  have hsmallQ : C ^ 1000 < Y ^ 252 := Nat.lt_of_not_ge hQcofactor
  let m := twoFiveIndex Y
  obtain ⟨he, hf⟩ := extract_same_index Y e f A C hY hprevious
    hrateP hbaseP hlookP hrateQ hbaseQ hlookQ hwindowP hwindowQ hsmallP hsmallQ
  change 35 * m < e at he
  change 15 * m < f at hf
  have hm : 141 ≤ m := index_ge_m0 Y hY hprevious
  have hmM : 329 ≤ m := index_ge_M Y hY hprevious
  have hAm : (48 : ℚ) < qRate BQ ^ m :=
    lt_of_lt_of_le hAbase (pow_le_pow_right₀ hAone hmM)
  have hthreshold : (4 : ℚ) * (Y : ℚ) < (twoFiveZ : ℚ) ^ m := by
    have h := leastExponent_threshold twoFiveZ Y twoFiveZ_gt_one
    change 4 * Y < twoFiveZ ^ m at h
    exact_mod_cast h
  have hWm : (4 : ℚ) * (Y : ℚ) < wRate BE ^ m :=
    lt_of_lt_of_le hthreshold (pow_le_pow_left₀ (Nat.cast_nonneg twoFiveZ) hW m)
  let V : ℕ := 5 ^ (f - 15 * m) * C
  let Nq : ℕ := 5 ^ f * C
  have hNVnat : (125 : ℕ) ^ (5 * m) * V = Nq := by
    have hpow : (125 : ℕ) ^ (5 * m) = (5 : ℕ) ^ (15 * m) := by
      calc
        _ = ((5 : ℕ) ^ 3) ^ (5 * m) := by norm_num
        _ = (5 : ℕ) ^ (15 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
    dsimp only [V, Nq]
    rw [hpow]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 5 f (15 * m) C (Nat.le_of_lt hf)
  have hNV : (125 : ℚ) ^ (5 * m) * (V : ℚ) = (Nq : ℚ) := by exact_mod_cast hNVnat
  have hNsmall : 2 * (Nq : ℚ) < wRate BE ^ m := by
    have hN : (Nq : ℚ) ≤ 2 * (Y : ℚ) := by exact_mod_cast hupperQ
    linarith
  obtain ⟨row, hlower⟩ := actual_integer_gap m e f A C
    (by omega) (Nat.le_of_lt he) (Nat.le_of_lt hf) hC hgap
  have hVcast : (5 : ℤ) ^ (f - 15 * m) * (C : ℤ) = (V : ℤ) := by
    dsimp only [V]
    simp only [Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat]
  have hVabs : |(5 : ℤ) ^ (f - 15 * m) * (C : ℤ)| = (V : ℤ) := by
    rw [hVcast, abs_of_nonneg (Int.natCast_nonneg V)]
  have hlow : (128 : ℤ) ^ (5 * m) ≤
      24 * |qRow m row| + |rowError m row| * (V : ℤ) := by
    simpa only [hVabs] using hlower
  have hstrict := actual_integer_gap_sum_lt m hm row BQ BE hBQ hBE
    (hQ m hm row) (hE m hm row) hAm V Nq hNV hNsmall
  exact (not_lt_of_ge hlow) hstrict

end Math.B699.I11TwoFiveScaled

end HeightMember046
/- Frozen source member 47: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Factorial\Factorial5D4.lean SHA256 42eba13fd4af7ba709685fbfc2877797e8de98cbca0aeba97bf9ca2d7a0771da -/
section HeightMember047


/-!
# Additional actual BFT factorial prefactor: (c,d)=(5,4)

UNCOMPILED CANDIDATE. The imported common module is accepted under the source
hashes in INPUT_SOURCES.json; this file has not been compiled or axiom-audited.
The complete actual factorial proof follows accepted Factorial3D2.lean, with
an independently computed positive-coefficient certificate for this fixed pair.
No recurrence, factorial bound, or HeightValid hypothesis is assumed.

Source: BFT author manuscript 2007-02-26, (3.1)--(3.3) and page-10 substitution;
PDF SHA256 0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c.
Only the factorial prefactor is covered. No G/theta, integral maximum, or
B699 original-index claim is made.
-/

namespace Math.B699.ElementaryFactorialBound

/-- Exact numerator after cancellation of positive endpoint factors. -/
def numerator_5_4 (m : ℚ) : ℚ :=
  (9 * m + 1) * (9 * m + 2) * (9 * m + 3) * (9 * m + 4) * (9 * m + 5) * (9 * m + 6) * (9 * m + 7) * (9 * m + 8)

def denominator_5_4 (m : ℚ) : ℚ :=
  (4 * m + 1) * (4 * m + 2) * (4 * m + 3) * (4 * m + 1) * (4 * m + 2) * (4 * m + 3)

def ratio_5_4 (m : ℚ) : ℚ :=
  9 * numerator_5_4 m /
    (1 * 4 ^ 2 * m * (m + 1) * denominator_5_4 m)

/-- All coefficients of the residual in x=m-1 are strictly positive.
The literal integer identity is a proof obligation for ring, not an input axiom. -/
theorem certificate_5_4 (x : ℚ) (hx : 0 ≤ x) :
    9 * 65536 * (x + 3) * numerator_5_4 (x + 1) ≤
      387420489 * 1 * 4 ^ 2 * (x + 2) ^ 3 * denominator_5_4 (x + 1) := by
  apply sub_nonneg.mp
  calc
    0 ≤ 5184 * (87290032200 + x * (402300498380 + x * (791641303398 + x * (862210695105 + x * (561361285764 + x * (218489584356 + x * (47072918016 + x * 4330889856))))))) := by positivity
    _ = 387420489 * 1 * 4 ^ 2 * (x + 2) ^ 3 * denominator_5_4 (x + 1) -
        9 * 65536 * (x + 3) * numerator_5_4 (x + 1) := by
      unfold numerator_5_4 denominator_5_4
      ring

theorem ratio_bound_5_4 (m : ℚ) (hm : 1 ≤ m) :
    ratio_5_4 m ≤ beta 5 4 * (m + 1) ^ 2 / (m * (m + 2)) := by
  have hmpos : 0 < m := lt_of_lt_of_le (by norm_num) hm
  have hcert := certificate_5_4 (m - 1) (sub_nonneg.mpr hm)
  have hs₁ : m - 1 + 1 = m := by ring
  have hs₂ : m - 1 + 2 = m + 1 := by ring
  have hs₃ : m - 1 + 3 = m + 2 := by ring
  simp only [hs₁, hs₂, hs₃] at hcert
  have hW : 0 < denominator_5_4 m := by
    unfold denominator_5_4
    positivity
  have hbeta : beta 5 4 = (387420489 : ℚ) / 65536 := by norm_num [beta]
  rw [hbeta]
  exact ratio_le_of_certificate (by norm_num) (by norm_num) (by norm_num)
    hmpos hW hcert

/-- The actual factorial recurrence for all k, with m=k+1.
All subtracted natural-number indices are nonnegative on this domain. -/
theorem factorial_step_zero_5_4 (k : ℕ) :
    factorialTerm 5 4 0 (k + 2) =
      factorialTerm 5 4 0 (k + 1) * ratio_5_4 ((k : ℚ) + 1) := by
  change (((9 * (k + 2)).factorial : ℕ) : ℚ) /
      (((((4 * (k + 2)).factorial : ℕ) : ℚ) ^ 2) *
        (((1 * (k + 2) - 1).factorial : ℕ) : ℚ)) =
    (((9 * (k + 1)).factorial : ℕ) : ℚ) /
      (((((4 * (k + 1)).factorial : ℕ) : ℚ) ^ 2) *
        (((1 * (k + 1) - 1).factorial : ℕ) : ℚ)) * ratio_5_4 ((k : ℚ) + 1)
  have ha : 9 * (k + 2) = 9 * (k + 1) + 9 := by omega
  have hd : 4 * (k + 2) = 4 * (k + 1) + 4 := by omega
  have hb : 1 * (k + 2) - 1 = (1 * (k + 1) - 1) + 1 := by omega
  have hp : (1 * (k + 1) - 1) + 1 = 1 * (k + 1) := by omega
  rw [ha, hd, hb, factorial_add_cast (9 * (k + 1)) 9,
    factorial_add_cast (4 * (k + 1)) 4,
    factorial_add_cast (1 * (k + 1) - 1) 1, hp]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio_5_4 numerator_5_4 denominator_5_4
  field_simp
  <;> ring

theorem factorial_step_bound_zero_5_4 (m : ℕ) (hm : 1 ≤ m) :
    factorialTerm 5 4 0 (m + 1) ≤ factorialTerm 5 4 0 m *
      (beta 5 4 * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) := by
  obtain ⟨k, rfl⟩ : ∃ k, m = k + 1 := Nat.exists_eq_add_of_le' hm
  rw [factorial_step_zero_5_4]
  have hk : 0 ≤ (k : ℚ) := Nat.cast_nonneg k
  have hratio := ratio_bound_5_4 ((k : ℚ) + 1) (by linarith)
  have hmul := mul_le_mul_of_nonneg_left hratio (factorialTerm_pos 5 4 0 (k + 1)).le
  simpa only [Nat.cast_add, Nat.cast_one] using hmul

theorem factorial_step_bound_5_4 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 5 4 delta (m + 1) ≤ factorialTerm 5 4 delta m *
      (beta 5 4 * ((m : ℚ) + 1) ^ 2 / ((m : ℚ) * (m + 2))) := by
  rcases hdelta with rfl | rfl
  · exact factorial_step_bound_zero_5_4 m hm
  · rw [factorial_delta_one_eq 5 4 (m + 1) (by norm_num) (by norm_num) (by omega),
      factorial_delta_one_eq 5 4 m (by norm_num) (by norm_num) (by omega)]
    have hmul := mul_le_mul_of_nonneg_left (factorial_step_bound_zero_5_4 m hm)
      (show (0 : ℚ) ≤ (4 : ℚ) ^ 2 / ((9 : ℚ) * (1 : ℚ)) by norm_num)
    convert hmul using 1 <;> norm_num [mul_assoc] <;> rfl

/-- The requested precise telescoping bound for the actual factorial term. -/
theorem factorial_telescoping_5_4 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 5 4 delta m ≤
      (2 * factorialTerm 5 4 delta 1 / beta 5 4) *
        beta 5 4 ^ m * (m : ℚ) / ((m : ℚ) + 1) := by
  exact telescoping_bound_from_step (by norm_num [beta])
    (fun n hn => factorial_step_bound_5_4 delta n hdelta hn) hm

/-- A convenient single rational constant for both deltas: F_m < beta^m/2.
The exact K=2*F_1/beta constants were independently checked to be <1/2. -/
theorem factorial_uniform_5_4 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 5 4 delta m < (1 / 2 : ℚ) * beta 5 4 ^ m := by
  have hbeta : 0 < beta 5 4 := by norm_num [beta]
  have hK : 2 * factorialTerm 5 4 delta 1 / beta 5 4 < (1 / 2 : ℚ) := by
    rcases hdelta with rfl | rfl <;> norm_num [factorialTerm, beta, Nat.factorial]
  have hbound := strict_bound_from_step hbeta (factorialTerm_pos 5 4 delta 1)
    (fun n hn => factorial_step_bound_5_4 delta n hdelta hn) hm
  exact lt_of_lt_of_le hbound (mul_le_mul_of_nonneg_right hK.le (pow_pos hbeta m).le)

/-- Both actual initial constants are recorded separately.
There is no assumption that the delta=1 constant is smaller. -/
theorem factorial_initial_constants_5_4 :
    2 * factorialTerm 5 4 0 1 / beta 5 4 = (9175040 : ℚ) / 43046721 ∧
    2 * factorialTerm 5 4 1 1 / beta 5 4 = (146800640 : ℚ) / 387420489 := by
  norm_num [factorialTerm, beta, Nat.factorial]

/-- Tight K_delta bound for the downstream Q/E growth constants. -/
theorem factorial_strict_k_5_4 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 5 4 delta m <
      (2 * factorialTerm 5 4 delta 1 / beta 5 4) * beta 5 4 ^ m := by
  exact strict_bound_from_step (by norm_num [beta]) (factorialTerm_pos 5 4 delta 1)
    (fun n hn => factorial_step_bound_5_4 delta n hdelta hn) hm

/-- The middle envelope itself is strictly below beta^m/2. -/
theorem factorial_envelope_lt_half_5_4 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    (2 * factorialTerm 5 4 delta 1 / beta 5 4) *
        beta 5 4 ^ m * (m : ℚ) / ((m : ℚ) + 1) < (1 / 2 : ℚ) * beta 5 4 ^ m := by
  have hbeta : 0 < beta 5 4 := by norm_num [beta]
  have hK : 2 * factorialTerm 5 4 delta 1 / beta 5 4 < (1 / 2 : ℚ) := by
    rcases hdelta with rfl | rfl <;> norm_num [factorialTerm, beta, Nat.factorial]
  have hF : 0 < factorialTerm 5 4 delta 1 := factorialTerm_pos 5 4 delta 1
  have hmQ : 0 < (m : ℚ) := Nat.cast_pos.mpr (by omega)
  have hpos : 0 < (2 * factorialTerm 5 4 delta 1 / beta 5 4) * beta 5 4 ^ m := by
    positivity
  calc
    _ < (2 * factorialTerm 5 4 delta 1 / beta 5 4) * beta 5 4 ^ m := by
      apply (div_lt_iff₀ (show 0 < (m : ℚ) + 1 by positivity)).2
      nlinarith
    _ < (1 / 2 : ℚ) * beta 5 4 ^ m := mul_lt_mul_of_pos_right hK (pow_pos hbeta m)

/-- The requested complete strengthened bound for every m>=1 and both deltas. -/
theorem factorial_full_bound_5_4 (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 1 ≤ m) :
    factorialTerm 5 4 delta m ≤
        (2 * factorialTerm 5 4 delta 1 / beta 5 4) *
          beta 5 4 ^ m * (m : ℚ) / ((m : ℚ) + 1) ∧
      (2 * factorialTerm 5 4 delta 1 / beta 5 4) *
        beta 5 4 ^ m * (m : ℚ) / ((m : ℚ) + 1) < (1 / 2 : ℚ) * beta 5 4 ^ m := by
  exact ⟨factorial_telescoping_5_4 delta m hdelta hm,
    factorial_envelope_lt_half_5_4 delta m hdelta hm⟩

#print axioms Math.B699.ElementaryFactorialBound.certificate_5_4
#print axioms Math.B699.ElementaryFactorialBound.ratio_bound_5_4
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_zero_5_4
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_bound_zero_5_4
#print axioms Math.B699.ElementaryFactorialBound.factorial_step_bound_5_4
#print axioms Math.B699.ElementaryFactorialBound.factorial_telescoping_5_4
#print axioms Math.B699.ElementaryFactorialBound.factorial_uniform_5_4
#print axioms Math.B699.ElementaryFactorialBound.factorial_initial_constants_5_4
#print axioms Math.B699.ElementaryFactorialBound.factorial_strict_k_5_4
#print axioms Math.B699.ElementaryFactorialBound.factorial_envelope_lt_half_5_4
#print axioms Math.B699.ElementaryFactorialBound.factorial_full_bound_5_4

end Math.B699.ElementaryFactorialBound

end HeightMember047
/- Frozen source member 48: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveEdge\GrowthInputs.lean SHA256 1a774dea34ae8389fdfa55519fa0c7fe1b3a91b8850fb792df822cb373c4dc13 -/
section HeightMember048



/-! UNCOMPILED CANDIDATE. Standard actual Q/E bounds are reduced to the
fixed GrowthTree and four m=1 polynomial inequalities, using the actual
all-m (5,4) factorial theorem. The desired growth bound is not a field. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveScaled
open Math.B699.PadeGrowthNormalization Math.B699.PadeActualGrowth
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf Math.B699.PadeMoment
open Math.B699.ElementaryFactorialBound Math.B699.I11TwoFivePrefix

def qLambda : ℚ := 3471657440109699659204039683 / 79228162514264337593543950336
def eLambda : ℚ := 305863978762465520211566521 / 79228162514264337593543950336
def qBase : ℚ := beta 5 4 * qLambda
def eBase : ℚ := beta 5 4 * eLambda

theorem fixed_bases_pos : 0 < qLambda ∧ 0 < eLambda ∧ 0 < qBase ∧ 0 < eBase := by
  norm_num [qLambda, eLambda, qBase, eBase, beta]

theorem geometric_majorant (F K beta lam weight : ℚ) (m : ℕ)
    (hm : 1 ≤ m) (hbeta : 0 ≤ beta) (hlam : 0 ≤ lam) (hweight : 0 ≤ weight)
    (hF : F ≤ K * beta ^ m) (hcap : K * weight ≤ lam) :
    F * (lam ^ (m - 1) * weight) ≤ (beta * lam) ^ m := by
  calc
    _ ≤ (K * beta ^ m) * (lam ^ (m - 1) * weight) :=
      mul_le_mul_of_nonneg_right hF (mul_nonneg (pow_nonneg hlam _) hweight)
    _ = (beta ^ m * lam ^ (m - 1)) * (K * weight) := by ring
    _ ≤ (beta ^ m * lam ^ (m - 1)) * lam :=
      mul_le_mul_of_nonneg_left hcap (mul_nonneg (pow_nonneg hbeta _) (pow_nonneg hlam _))
    _ = (beta * lam) ^ m := by
      simp only [mul_pow]
      rw [mul_assoc, ← pow_succ, Nat.sub_add_cancel hm]

theorem actual_q_growth_of_tree (delta m : ℕ) (hdelta : delta = 0 ∨ delta = 1)
    (hm : 1 ≤ m) (lam : ℚ) (hlam : 0 < lam)
    (tree : GrowthTree lam (qWeight 5 4 delta (3 / 128)) (qCore 5 4 (3 / 128)))
    (hcap : 2 * |actualQ 5 4 delta 1 (3 / 128)| ≤ beta 5 4 * lam) :
    |actualQ 5 4 delta m (3 / 128)| ≤ (beta 5 4 * lam) ^ m := by
  have hd : delta ≤ 4 := by rcases hdelta with h | h <;> omega
  have hb : 0 < beta 5 4 := by norm_num [beta]
  have hw : 0 ≤ moment (qWeight 5 4 delta (3 / 128)) :=
    bernsteinCone_moment_nonneg (cone_qWeight 5 4 delta (3 / 128) (by norm_num))
  have heq : (2 * factorialTerm 5 4 delta 1 / beta 5 4) *
      moment (qWeight 5 4 delta (3 / 128)) =
      2 * |actualQ 5 4 delta 1 (3 / 128)| / beta 5 4 := by
    rw [actualQ_one_abs 5 4 delta (3 / 128) (by decide) hd (by norm_num)]
    ring
  have hcap' : (2 * factorialTerm 5 4 delta 1 / beta 5 4) *
      moment (qWeight 5 4 delta (3 / 128)) ≤ lam := by
    rw [heq]
    exact (div_le_iff₀ hb).mpr (by simpa only [mul_comm lam (beta 5 4)] using hcap)
  have hsource := actual_q_eval_bound 5 4 delta m (3 / 128) lam
    (by decide) hd hm (le_of_lt hlam) tree
  rw [prefactor_eq_factorialTerm 5 4 delta m (by decide) hd hm] at hsource
  exact le_trans hsource (geometric_majorant _ _ _ _ _ m hm (le_of_lt hb)
    (le_of_lt hlam) hw (le_of_lt (factorial_strict_k_5_4 delta m hdelta hm)) hcap')

theorem actual_e_growth_of_tree (delta m : ℕ) (hdelta : delta = 0 ∨ delta = 1)
    (hm : 1 ≤ m) (lam : ℚ) (hlam : 0 < lam)
    (tree : GrowthTree lam (eWeight 5 4 delta (3 / 128)) (eCore 5 4 (3 / 128)))
    (hcap : 2 * |actualE 5 4 delta 1 (3 / 128)| ≤ beta 5 4 * lam) :
    |actualE 5 4 delta m (3 / 128)| ≤ (beta 5 4 * lam) ^ m := by
  have hd : delta ≤ 4 := by rcases hdelta with h | h <;> omega
  have hb : 0 < beta 5 4 := by norm_num [beta]
  have hw : 0 ≤ moment (eWeight 5 4 delta (3 / 128)) :=
    bernsteinCone_moment_nonneg (cone_eWeight 5 4 delta (3 / 128) (by norm_num))
  have heq : (2 * factorialTerm 5 4 delta 1 / beta 5 4) *
      moment (eWeight 5 4 delta (3 / 128)) =
      2 * |actualE 5 4 delta 1 (3 / 128)| / beta 5 4 := by
    rw [actualE_one_abs 5 4 delta (3 / 128) (by decide) hd (by norm_num)]
    ring
  have hcap' : (2 * factorialTerm 5 4 delta 1 / beta 5 4) *
      moment (eWeight 5 4 delta (3 / 128)) ≤ lam := by
    rw [heq]
    exact (div_le_iff₀ hb).mpr (by simpa only [mul_comm lam (beta 5 4)] using hcap)
  have hsource := actual_e_eval_bound 5 4 delta m (3 / 128) lam
    (by decide) hd hm (le_of_lt hlam) tree
  rw [prefactor_eq_factorialTerm 5 4 delta m (by decide) hd hm] at hsource
  exact le_trans hsource (geometric_majorant _ _ _ _ _ m hm (le_of_lt hb)
    (le_of_lt hlam) hw (le_of_lt (factorial_strict_k_5_4 delta m hdelta hm)) hcap')

theorem standard_bounds_from_fixed_trees
    (qt : ∀ row : Bool, GrowthTree qLambda (qWeight 5 4 (rowDelta row) (3 / 128))
      (qCore 5 4 (3 / 128)))
    (et : ∀ row : Bool, GrowthTree eLambda (eWeight 5 4 (rowDelta row) (3 / 128))
      (eCore 5 4 (3 / 128)))
    (qc : ∀ row : Bool, 2 * |actualQ 5 4 (rowDelta row) 1 (3 / 128)| ≤ qBase)
    (ec : ∀ row : Bool, 2 * |actualE 5 4 (rowDelta row) 1 (3 / 128)| ≤ eBase) :
    (∀ m : ℕ, 141 ≤ m → ∀ row : Bool, |qEval m row| ≤ qBase ^ m) ∧
      (∀ m : ℕ, 141 ≤ m → ∀ row : Bool, |eEval m row| ≤ eBase ^ m) := by
  constructor
  · intro m hm row
    exact actual_q_growth_of_tree (rowDelta row) m (rowDelta_cases row) (by omega)
      qLambda fixed_bases_pos.1 (qt row) (qc row)
  · intro m hm row
    exact actual_e_growth_of_tree (rowDelta row) m (rowDelta_cases row) (by omega)
      eLambda fixed_bases_pos.2.1 (et row) (ec row)

end Math.B699.I11TwoFiveScaled

end HeightMember048
/- Frozen source member 49: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveEdge\SmallCertificates.lean SHA256 676b688d2d45117b4625f52092397289f324d6db55e7ce9e98025e9a26da1bad -/
section HeightMember049



/-! UNCOMPILED CANDIDATE. Only low-degree actual polynomials and fixed
rational inequalities are evaluated. The 329th-power certificate is deliberately
left for the parent's bounded serial verifier; no giant selector powers occur. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveScaled
open Math.B699.PadeGrowthNormalization Math.B699.PadeConstruction
open Math.B699.ElementaryFactorialBound Math.B699.I11TwoFivePrefix

theorem fixed_initial_q_cap (row : Bool) :
    2 * |actualQ 5 4 (rowDelta row) 1 (3 / 128)| ≤ qBase := by
  cases row <;>
    norm_num [actualQ, rowDelta, qBase, beta, qLambda, qPolynomial,
      coefficientPolynomial, qCoefficient, qMagnitude, Finset.sum_range_succ,
      Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial, Nat.choose]

theorem fixed_initial_e_cap (row : Bool) :
    2 * |actualE 5 4 (rowDelta row) 1 (3 / 128)| ≤ eBase := by
  cases row <;>
    norm_num [actualE, rowDelta, eBase, beta, eLambda, ePolynomial,
      coefficientPolynomial, eCoefficient, Finset.sum_range_succ,
      Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial, Nat.choose]

theorem fixed_qRate_ge_one : 1 ≤ qRate qBase := by
  norm_num [qRate, qNumerator, qDenominator, contentBase, qBase, beta, qLambda]

theorem fixed_wRate_ge_Z : (twoFiveZ : ℚ) ≤ wRate eBase := by
  norm_num [twoFiveZ, wRate, wNumerator, wDenominator, contentBase, eBase, beta, eLambda]

end Math.B699.I11TwoFiveScaled

end HeightMember049
/- Frozen source member 50: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveEdge\FixedEdge.lean SHA256 c2c3be0c6234bee52adc7591c8b36f6dfcb8f96027adaeea1cffc04e8ad690f9 -/
section HeightMember050



/-!
UNCOMPILED. Final fixed two-five cofactor edge.
Remaining special data: four actual GrowthTrees and eight explicit finite numeric
certificates. All actual rows, Hom identities, G and scaling bounds are constructed.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveScaled
open Math.B699.I11TwoFivePrefix Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

theorem two_five_edge_of_fixed_certificates
    (qt : ∀ row : Bool, GrowthTree qLambda (qWeight 5 4 (rowDelta row) (3 / 128))
      (qCore 5 4 (3 / 128)))
    (et : ∀ row : Bool, GrowthTree eLambda (eWeight 5 4 (rowDelta row) (3 / 128))
      (eCore 5 4 (3 / 128)))
    (hAbase : (48 : ℚ) < qRate qBase ^ 329)
    (hprevious : twoFiveZ ^ (twoFiveM - 1) ≤ 4 * twoFiveY0)
    (hrateP : 2 ^ 35000 ≤ twoFiveZ ^ 752)
    (hbaseP : (2 ^ 35000) ^ twoFiveM ≤ twoFiveY0 ^ 752)
    (hlookP : 4 ^ 752 * (2 ^ 35000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (752 * twoFiveM))
    (hrateQ : 5 ^ 15000 ≤ twoFiveZ ^ 748)
    (hbaseQ : (5 ^ 15000) ^ twoFiveM ≤ twoFiveY0 ^ 748)
    (hlookQ : 4 ^ 748 * (5 ^ 15000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (748 * twoFiveM))
    (Y e f A C : ℕ) (hY : twoFiveY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hupperQ : 5 ^ f * C ≤ 2 * Y)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 248 ≤ A ^ 1000 ∨ Y ^ 252 ≤ C ^ 1000 := by
  obtain ⟨hQ, hE⟩ := standard_bounds_from_fixed_trees qt et
    fixed_initial_q_cap fixed_initial_e_cap
  exact edge_of_actual_growth qBase eBase
    fixed_bases_pos.2.2.1 fixed_bases_pos.2.2.2 hQ hE
    fixed_qRate_ge_one hAbase fixed_wRate_ge_Z
    hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
    Y e f A C hY hC hwindowP hwindowQ hupperQ hgap

end Math.B699.I11TwoFiveScaled

end HeightMember050
/- Frozen source member 51: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveFinal\ActualNumeric.lean SHA256 8dc6d55123a66d9834875a7849938c5e570364e6d4b0d93c344ba70412282671 -/
section HeightMember051




/-! UNCOMPILED. Bind the actual rate and build a source bundle before any alias
normalization. Large powers are never resolved by cross-name definitional equality. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveFinalConsumers
open Math.B699.I11TwoFiveScaled Math.B699.I11TwoFivePrefix
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.ElementaryFactorialBound

theorem actual_rate_eq_rational : qRate qBase = rateRational := by
  norm_num [qRate, qNumerator, qDenominator, contentBase, qBase, beta, qLambda,
    rateRational, rateNumerator, rateDenominator]

theorem actual_rate_pow329_gt_48 : (48 : ℚ) < qRate qBase ^ 329 := by
  rw [actual_rate_eq_rational]
  exact rateRational_pow329_gt_48

theorem actual_numeric_certificates :
    (48 : ℚ) < qRate qBase ^ 329 ∧
    twoFiveZ ^ (twoFiveM - 1) ≤ 4 * twoFiveY0 ∧
    (2 : ℕ) ^ 35000 ≤ twoFiveZ ^ 752 ∧
    ((2 : ℕ) ^ 35000) ^ twoFiveM ≤ twoFiveY0 ^ 752 ∧
    (4 : ℕ) ^ 752 * (2 ^ 35000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (752 * twoFiveM) ∧
    (5 : ℕ) ^ 15000 ≤ twoFiveZ ^ 748 ∧
    ((5 : ℕ) ^ 15000) ^ twoFiveM ≤ twoFiveY0 ^ 748 ∧
    (4 : ℕ) ^ 748 * (5 ^ 15000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (748 * twoFiveM) := by
  have h := And.intro actual_rate_pow329_gt_48
    (And.intro Math.B699.I11TwoFiveNumeric.predecessor
      (And.intro Math.B699.I11TwoFiveNumeric.p_rate
        (And.intro Math.B699.I11TwoFiveNumeric.p_base
          (And.intro Math.B699.I11TwoFiveNumeric.p_lookahead
            (And.intro Math.B699.I11TwoFiveNumeric.q_rate
              (And.intro Math.B699.I11TwoFiveNumeric.q_base
                Math.B699.I11TwoFiveNumeric.q_lookahead))))))
  simpa only [twoFiveZ, Math.B699.I11TwoFiveNumeric.certificateZ,
    twoFiveM, twoFiveY0] using h

theorem two_five_edge_of_growth_trees
    (qt : ∀ row : Bool, GrowthTree qLambda (qWeight 5 4 (rowDelta row) (3 / 128))
      (qCore 5 4 (3 / 128)))
    (et : ∀ row : Bool, GrowthTree eLambda (eWeight 5 4 (rowDelta row) (3 / 128))
      (eCore 5 4 (3 / 128)))
    (Y e f A C : ℕ) (hY : twoFiveY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hupperQ : 5 ^ f * C ≤ 2 * Y)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 248 ≤ A ^ 1000 ∨ Y ^ 252 ≤ C ^ 1000 := by
  obtain ⟨hA, hprevious, hrateP, hbaseP, hlookP, hrateQ, hbaseQ, hlookQ⟩ :=
    actual_numeric_certificates
  exact two_five_edge_of_fixed_certificates qt et hA
    hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
    Y e f A C hY hC hwindowP hwindowQ hupperQ hgap

end Math.B699.I11TwoFiveFinalConsumers

end HeightMember051
/- Frozen source member 52: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\TwoFiveGap33\Rate.lean SHA256 b7053b071246bcb7fe1e329a06ff04f37e4a682accd45ec8155a62287a51ad2b -/
section HeightMember052


/-!
Complete candidate proof text; not compiled by this worker.
The accepted 32nd-power certificate supplies a strict 66 budget at the unchanged
selector index. No new large integer decision or analytic premise is introduced.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.TwoFiveGap33
open Math.B699.I11TwoFiveScaled Math.B699.I11TwoFiveFinalConsumers

theorem rateRational_pow224_ge_128 : (128 : ℚ) ≤ rateRational ^ 224 := by
  calc
    (128 : ℚ) = (2 : ℚ) ^ 7 := by norm_num
    _ ≤ (rateRational ^ 32) ^ 7 :=
      pow_le_pow_left₀ (by norm_num : (0 : ℚ) ≤ 2)
        rateRational_thirtytwo_ge_two 7
    _ = rateRational ^ 224 := by rw [← pow_mul]

theorem actual_rate_pow329_gt_66 : (66 : ℚ) < qRate qBase ^ 329 := by
  rw [actual_rate_eq_rational]
  exact lt_of_lt_of_le (by norm_num : (66 : ℚ) < 128)
    (rateRational_pow224_ge_128.trans
      (pow_le_pow_right₀ rateRational_ge_one (by decide : 224 ≤ 329)))

theorem actual_rate_gt_66 (m : ℕ) (hm : 329 ≤ m) :
    (66 : ℚ) < qRate qBase ^ m := by
  exact lt_of_lt_of_le actual_rate_pow329_gt_66
    (pow_le_pow_right₀ fixed_qRate_ge_one hm)

end Math.B699.TwoFiveGap33

end HeightMember052
/- Frozen source member 53: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\TwoFiveGap33\Gap.lean SHA256 315a4671830b8fe6d009accf8b9eb22d63244a6f8d50a7acaee36b4d07b1f247 -/
section HeightMember053


/-!
Complete candidate proof text; not compiled by this worker.
Same actual rows, qContent/G, and 128/125 extraction as the accepted 2–5 edge.
The integer budget is exposed explicitly; the Q/E sum below specializes it to 33.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.TwoFiveGap33
open Math.B699.I11TwoFiveScaled Math.B699.PadeActualRows

theorem actual_integer_gap_budget (m e f A C : ℕ) (D : ℤ)
    (hm : 1 ≤ m) (he : 35 * m ≤ e) (hf : 15 * m ≤ f) (hC : 1 ≤ C)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ D) :
    ∃ row : Bool, (128 : ℤ) ^ (5 * m) ≤
      D * |qRow m row| +
        |rowError m row| * |(5 : ℤ) ^ (f - 15 * m) * (C : ℤ)| := by
  have hp : (128 : ℕ) ^ (5 * m) = (2 : ℕ) ^ (35 * m) := by
    calc
      _ = ((2 : ℕ) ^ 7) ^ (5 * m) := by norm_num
      _ = (2 : ℕ) ^ (35 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
  have hq : (125 : ℕ) ^ (5 * m) = (5 : ℕ) ^ (15 * m) := by
    calc
      _ = ((5 : ℕ) ^ 3) ^ (5 * m) := by norm_num
      _ = (5 : ℕ) ^ (15 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
  have hPnat : (128 : ℕ) ^ (5 * m) * (2 ^ (e - 35 * m) * A) = 2 ^ e * A := by
    rw [hp]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 2 e (35 * m) A he
  have hQnat : (125 : ℕ) ^ (5 * m) * (5 ^ (f - 15 * m) * C) = 5 ^ f * C := by
    rw [hq]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 5 f (15 * m) C hf
  have hPint : (128 : ℤ) ^ (5 * m) * ((2 : ℤ) ^ (e - 35 * m) * (A : ℤ)) =
      (2 : ℤ) ^ e * (A : ℤ) := by exact_mod_cast hPnat
  have hQint : (125 : ℤ) ^ (5 * m) * ((5 : ℤ) ^ (f - 15 * m) * (C : ℤ)) =
      (5 : ℤ) ^ f * (C : ℤ) := by exact_mod_cast hQnat
  have hgap' : |(128 : ℤ) ^ (5 * m) * ((2 : ℤ) ^ (e - 35 * m) * (A : ℤ)) -
      (125 : ℤ) ^ (5 * m) * ((5 : ℤ) ^ (f - 15 * m) * (C : ℤ))| ≤ D := by
    rw [hPint, hQint]
    exact hgap
  have hV : (5 : ℤ) ^ (f - 15 * m) * (C : ℤ) ≠ 0 := by
    apply mul_ne_zero (pow_ne_zero _ (by decide : (5 : ℤ) ≠ 0))
    exact_mod_cast (by omega : C ≠ 0)
  obtain ⟨row, _hne, hlower⟩ := actual_bft_integer_gap
    (4 * m) (m - 1) (by omega) 3 128
    (r := (128 : ℤ) ^ (5 * m)) (s := (125 : ℤ) ^ (5 * m))
    (a := 1) (b := 1)
    (U := (2 : ℤ) ^ (e - 35 * m) * (A : ℤ))
    (V := (5 : ℤ) ^ (f - 15 * m) * (C : ℤ)) (D := D)
    (by decide) (by decide) (pow_nonneg (by decide) _)
    (by decide) (by decide) hV hgap'
  exact ⟨row, by simpa only [qRow, rowError, one_mul, mul_one] using hlower⟩

theorem actual_q_gap33_twice_lt (m : ℕ) (hm : 141 ≤ m) (row : Bool)
    (BQ : ℚ) (hBQ : 0 < BQ) (hQ : |qEval m row| ≤ BQ ^ m)
    (hA : (66 : ℚ) < qRate BQ ^ m) :
    2 * (33 * |(qRow m row : ℚ)|) < (128 : ℚ) ^ (5 * m) := by
  have hden : 0 < qDenominator BQ := by unfold qDenominator; positivity
  have hnum : (66 : ℚ) * qDenominator BQ ^ m < qNumerator ^ m := by
    calc
      _ < qRate BQ ^ m * qDenominator BQ ^ m :=
        mul_lt_mul_of_pos_right hA (pow_pos hden m)
      _ = qNumerator ^ m :=
        Math.B699.I11ScaledBounds.ratio_pow_mul qNumerator (qDenominator BQ)
          (ne_of_gt hden) m
  have hsmall : (66 : ℚ) * ((128 : ℚ) ^ 4 * BQ) ^ m <
      (128 : ℚ) ^ (5 * m) * contentBase ^ m := by
    calc
      _ < qNumerator ^ m := hnum
      _ = (128 : ℚ) ^ (5 * m) * contentBase ^ m := by
        simp only [qNumerator, mul_pow, ← pow_mul]
  have h := Math.B699.I11ScaledBounds.weighted_bound_lt
    (contentBase ^ m) ((128 : ℚ) ^ (5 * m)) 66 |(qRow m row : ℚ)|
    (((128 : ℚ) ^ 4 * BQ) ^ m) (pow_pos contentBase_pos m) (by norm_num)
    (actual_q_content_bound m hm row BQ hBQ.le hQ) hsmall
  nlinarith only [h]

theorem actual_integer_gap33_sum_lt (m : ℕ) (hm : 141 ≤ m) (row : Bool)
    (BQ BE : ℚ) (hBQ : 0 < BQ) (hBE : 0 < BE)
    (hQ : |qEval m row| ≤ BQ ^ m) (hE : |eEval m row| ≤ BE ^ m)
    (hA : (66 : ℚ) < qRate BQ ^ m)
    (V Nq : ℕ) (hNV : (125 : ℚ) ^ (5 * m) * (V : ℚ) = (Nq : ℚ))
    (hNsmall : 2 * (Nq : ℚ) < wRate BE ^ m) :
    33 * |qRow m row| + |rowError m row| * (V : ℤ) < (128 : ℤ) ^ (5 * m) := by
  have h := Math.B699.I11ScaledBounds.sum_lt_of_twice_lt
    (33 * |(qRow m row : ℚ)|) (|(rowError m row : ℚ)| * (V : ℚ))
    ((128 : ℚ) ^ (5 * m))
    (actual_q_gap33_twice_lt m hm row BQ hBQ hQ hA)
    (actual_e_gap_twice_lt m hm row BE hBE hE V Nq hNV hNsmall)
  exact_mod_cast h

end Math.B699.TwoFiveGap33

end HeightMember053
/- Frozen source member 54: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Growth\I11TwoFiveShared.lean SHA256 8895518407974316e5971d65240364a29a037112abe9199a86c3b916ac9fdc39 -/
section HeightMember054






set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11TwoFiveGrowth.Shared


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

def qSeedC : ℕ := 5
def qSeedD : ℕ := 4
def qSeedZ : ℚ := (3 : ℚ) / 128
def qLam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336
noncomputable def qSeedCore : ℚ[X] := Math.B699.GrowthLeaf.qCore qSeedC qSeedD qSeedZ
noncomputable def qSeedWeight0 : ℚ[X] := Math.B699.GrowthLeaf.qWeight qSeedC qSeedD 0 qSeedZ
noncomputable def qSeedWeight1 : ℚ[X] := Math.B699.GrowthLeaf.qWeight qSeedC qSeedD 1 qSeedZ

def eSeedC : ℕ := 5
def eSeedD : ℕ := 4
def eSeedZ : ℚ := (3 : ℚ) / 128
def eLam : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336
noncomputable def eSeedCore : ℚ[X] := Math.B699.GrowthLeaf.eCore eSeedC eSeedD eSeedZ
noncomputable def eSeedWeight0 : ℚ[X] := Math.B699.GrowthLeaf.eWeight eSeedC eSeedD 0 eSeedZ
noncomputable def eSeedWeight1 : ℚ[X] := Math.B699.GrowthLeaf.eWeight eSeedC eSeedD 1 eSeedZ

end Math.B699.I11TwoFiveGrowth.Shared



end HeightMember054
/- Frozen source member 55: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Growth\I11TwoFiveLeaves.lean SHA256 9328176b3e651a8d4b4ff1877bba760917e7e4a0c5f33b98fee6bcb7acb347a1 -/
section HeightMember055







set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11TwoFiveGrowth.QLeaf000


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (0 : ℚ)
def leafB : ℚ := (1 : ℚ) / 16
def lam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (26293156803845775833239860251 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (21953113111429257096044688411 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (42392258195880831931882546239 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (104202991260268635555277728957 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (84416536396148447231838416061 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (22503772836613671059812131903 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (7600985434230358557183390747 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (5892355187708056186663941147 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (498334822890731326670279683 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((halfLeft).comp halfLeft).comp halfLeft).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11TwoFiveGrowth.QLeaf000

#print axioms Math.B699.I11TwoFiveGrowth.QLeaf000.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf000.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf000.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf000.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf000.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf000.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf000.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf000.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf000.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.QLeaf001


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (1 : ℚ) / 16
def leafB : ℚ := (3 : ℚ) / 32
def lam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (498334822890731326670279683 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (3781342515170844816716805147 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (3152993740532814724373099547 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (6056798629457622637907420223 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (14739705482577706660901317821 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (11752178311672223457895935165 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (3060785590375500223654536255 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (1000854145158193816693060635 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (742846832268291980877575195 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (59399706967090870550434819 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11TwoFiveGrowth.QLeaf001

#print axioms Math.B699.I11TwoFiveGrowth.QLeaf001.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf001.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf001.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf001.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf001.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf001.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf001.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf001.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf001.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.QLeaf002


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (3 : ℚ) / 32
def leafB : ℚ := (7 : ℚ) / 64
def lam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (59399706967090870550434819 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (430472627921580761992082459 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (338787353970700611503207451 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (604679359423087341713630271 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (1338203961636715811983223997 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (941391831834164682480577725 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (207016610350243845942027327 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (53527152929092011396707355 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (28555313181133195901776923 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (1496459706801980805010435 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11TwoFiveGrowth.QLeaf002

#print axioms Math.B699.I11TwoFiveGrowth.QLeaf002.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf002.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf002.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf002.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf002.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf002.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf002.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf002.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf002.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.QLeaf003


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (7 : ℚ) / 64
def leafB : ℚ := (57 : ℚ) / 512
def lam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (1496459706801980805010435 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (11582240383728406163008539 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (9850791280114663937770779 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (19303970902171005741499551 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (47940201199741017878588313 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (78071633193341822320483587 : ℚ) / 79228162514264337593543950336
def gapCoeff6 : ℚ := (166368991415014134279113133 : ℚ) / 316912650057057350374175801344
def gapCoeff7 : ℚ := (446368015868070880297457391 : ℚ) / 2535301200456458802993406410752
def gapCoeff8 : ℚ := (2732758757328803339472947153 : ℚ) / 81129638414606681695789005144064
def gapCoeff9 : ℚ := (1820484590130372079098547511 : ℚ) / 649037107316853453566312041152512

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11TwoFiveGrowth.QLeaf003

#print axioms Math.B699.I11TwoFiveGrowth.QLeaf003.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf003.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf003.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf003.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf003.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf003.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf003.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf003.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf003.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.QLeaf004


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (57 : ℚ) / 512
def leafB : ℚ := (29 : ℚ) / 256
def lam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (1820484590130372079098547511 : ℚ) / 649037107316853453566312041152512
def gapCoeff1 : ℚ := (5453326281858135353995138987 : ℚ) / 324518553658426726783156020576256
def gapCoeff2 : ℚ := (1664179506432056080862668631 : ℚ) / 40564819207303340847894502572032
def gapCoeff3 : ℚ := (1058533514194354155278964727 : ℚ) / 20282409603651670423947251286016
def gapCoeff4 : ℚ := (795807711495749909814690937 : ℚ) / 20282409603651670423947251286016
def gapCoeff5 : ℚ := (267016387937053567551337565 : ℚ) / 10141204801825835211973625643008
def gapCoeff6 : ℚ := (66681605914447891189503515 : ℚ) / 2535301200456458802993406410752
def gapCoeff7 : ℚ := (28427829807860630823147715 : ℚ) / 1267650600228229401496703205376
def gapCoeff8 : ℚ := (25956152566412374405820015 : ℚ) / 2535301200456458802993406410752
def gapCoeff9 : ℚ := (2352826024366834956007139 : ℚ) / 1267650600228229401496703205376

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft).comp halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11TwoFiveGrowth.QLeaf004

#print axioms Math.B699.I11TwoFiveGrowth.QLeaf004.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf004.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf004.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf004.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf004.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf004.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf004.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf004.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf004.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.QLeaf005


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (29 : ℚ) / 256
def leafB : ℚ := (15 : ℚ) / 128
def lam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (2352826024366834956007139 : ℚ) / 1267650600228229401496703205376
def gapCoeff1 : ℚ := (18785075045746084703186369 : ℚ) / 633825300114114700748351602688
def gapCoeff2 : ℚ := (15817455595775003956201471 : ℚ) / 79228162514264337593543950336
def gapCoeff3 : ℚ := (28639695522830148573248171 : ℚ) / 39614081257132168796771975168
def gapCoeff4 : ℚ := (31119315766389114549485821 : ℚ) / 19807040628566084398385987584
def gapCoeff5 : ℚ := (85482745548031883690759579 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (37552349372954436900405211 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (20532418568924532034183075 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (25522572642992314873418443 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (3451049624523998546029603 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11TwoFiveGrowth.QLeaf005

#print axioms Math.B699.I11TwoFiveGrowth.QLeaf005.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf005.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf005.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf005.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf005.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf005.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf005.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf005.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf005.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.QLeaf006


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (15 : ℚ) / 128
def leafB : ℚ := (1 : ℚ) / 8
def lam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (3451049624523998546029603 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (42133194576163330995962395 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (55393822146234231884108827 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (165205348894100697216197695 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (618240583313109239200640189 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (755364274038095637048618173 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (302241516379310225001948223 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (153151759835480486224540699 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (178731704658249836955120667 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (22915097440490794778006531 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11TwoFiveGrowth.QLeaf006

#print axioms Math.B699.I11TwoFiveGrowth.QLeaf006.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf006.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf006.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf006.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf006.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf006.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf006.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf006.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf006.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.QLeaf007


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (1 : ℚ) / 8
def leafB : ℚ := (1 : ℚ) / 4
def lam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (22915097440490794778006531 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (646302633863094209753068571 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (1578971626511650387491763227 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (6665492387948897804350006335 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (30544673030895037607085763773 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (42067402286902413927337847997 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (18026796224219538643865969727 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (9459501135841323999868695579 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (11171769284969757016056345627 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (1426020007425357869133239299 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((halfLeft).comp halfLeft).comp halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11TwoFiveGrowth.QLeaf007

#print axioms Math.B699.I11TwoFiveGrowth.QLeaf007.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf007.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf007.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf007.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf007.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf007.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf007.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf007.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf007.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.QLeaf008


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (1 : ℚ) / 4
def leafB : ℚ := (1 : ℚ) / 2
def lam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (1426020007425357869133239299 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (16159001630545148434484769819 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (19284393725182199206591018011 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (51294139920903434613489804351 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (169391780424621979115199556797 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (181704202410425444912463768765 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (63749208019404364924587746367 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (28359057412144175455383794715 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (29138372620574590784617788443 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (3301889794096740873958495235 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (halfLeft).comp halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11TwoFiveGrowth.QLeaf008

#print axioms Math.B699.I11TwoFiveGrowth.QLeaf008.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf008.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf008.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf008.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf008.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf008.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf008.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf008.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf008.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.QLeaf009


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (1 : ℚ) / 2
def leafB : ℚ := (1 : ℚ)
def lam : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (3301889794096740873958495235 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (30874279199462822027643794459 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (31228831523517623196759831579 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (72903721525329455528162239551 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (218714353107230722326552014013 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (218714417979817943544617659581 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (72904806242303692843284833343 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (31244916960987296932836357147 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (31244916960987296932836357147 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (3471657440109699659204039683 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11TwoFiveGrowth.QLeaf009

#print axioms Math.B699.I11TwoFiveGrowth.QLeaf009.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf009.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf009.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf009.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf009.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf009.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf009.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf009.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.QLeaf009.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.ELeaf000


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (0 : ℚ)
def leafB : ℚ := (1 : ℚ) / 4
def lam : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (2752775808862189681904098689 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (2752775808862189681904098689 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (6423143554011775924442896941 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (19114688157124655238966300295 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (18651367336757348607760158343 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (5931261861156073678984321581 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (2362613890047499594348535169 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (2135656956880784445378305409 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (208514754901349218953830329 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, eSeedCore, eSeedC, eSeedD, eSeedZ,
    Math.B699.GrowthLeaf.eCore, Math.B699.GrowthLeaf.eFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (halfLeft).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_eCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11TwoFiveGrowth.ELeaf000

#print axioms Math.B699.I11TwoFiveGrowth.ELeaf000.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf000.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf000.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf000.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf000.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf000.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf000.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf000.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf000.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.ELeaf001


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (1 : ℚ) / 4
def leafB : ℚ := (3 : ℚ) / 8
def lam : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (208514754901349218953830329 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (1747120712727822233187556737 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (1609591823943019914334739841 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (3420638446927125611290434093 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (9230507852050347902716759687 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (8191258799987537630846668423 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (2387858335969571952400144941 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (880996216917927547898338689 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (745741230604975294908898689 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (68895375009335709881966521 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, eSeedCore, eSeedC, eSeedD, eSeedZ,
    Math.B699.GrowthLeaf.eCore, Math.B699.GrowthLeaf.eFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((halfLeft).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_eCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11TwoFiveGrowth.ELeaf001

#print axioms Math.B699.I11TwoFiveGrowth.ELeaf001.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf001.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf001.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf001.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf001.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf001.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf001.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf001.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf001.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.ELeaf002


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (3 : ℚ) / 8
def leafB : ℚ := (7 : ℚ) / 16
def lam : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (68895375009335709881966521 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (557216947323544435952098689 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (496768552261067069721058689 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (1024380290185851309659920941 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (2689853564708647814160076423 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (2329449395739899264253185671 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (664572505822100076277406253 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (240612214469371092374297985 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (200371850660411323065998721 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (18252830022500270430855097 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, eSeedCore, eSeedC, eSeedD, eSeedZ,
    Math.B699.GrowthLeaf.eCore, Math.B699.GrowthLeaf.eFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((halfLeft).comp halfRight).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_eCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11TwoFiveGrowth.ELeaf002

#print axioms Math.B699.I11TwoFiveGrowth.ELeaf002.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf002.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf002.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf002.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf002.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf002.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf002.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf002.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf002.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.ELeaf003


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (7 : ℚ) / 16
def leafB : ℚ := (15 : ℚ) / 32
def lam : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (18252830022500270430855097 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (146227279973547989283544449 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (129215085582356264719392129 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (264276503648304105589971501 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (688708047569655575406857863 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (592274198085147633625484935 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (167882741479683686919707181 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (60419621197714354709372289 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (50033641577177364826594689 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (4533699459284271453806521 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, eSeedCore, eSeedC, eSeedD, eSeedZ,
    Math.B699.GrowthLeaf.eCore, Math.B699.GrowthLeaf.eFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_eCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11TwoFiveGrowth.ELeaf003

#print axioms Math.B699.I11TwoFiveGrowth.ELeaf003.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf003.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf003.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf003.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf003.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf003.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf003.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf003.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf003.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.ELeaf004


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (15 : ℚ) / 32
def leafB : ℚ := (31 : ℚ) / 64
def lam : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (4533699459284271453806521 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (36188121911748982213090689 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (31861856984169038377033089 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (64927184715540711526242861 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (168571726620881900282990215 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (144411873086193008259255943 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (40769831330914615265204781 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (14610175525339886552259969 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (12043264488866157305437569 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (1085861402591555927777209 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, eSeedCore, eSeedC, eSeedD, eSeedZ,
    Math.B699.GrowthLeaf.eCore, Math.B699.GrowthLeaf.eFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_eCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11TwoFiveGrowth.ELeaf004

#print axioms Math.B699.I11TwoFiveGrowth.ELeaf004.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf004.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf004.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf004.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf004.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf004.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf004.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf004.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf004.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.ELeaf005


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (31 : ℚ) / 64
def leafB : ℚ := (63 : ℚ) / 128
def lam : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (1085861402591555927777209 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (8637496690552926372273537 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (7576340550514743217397121 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (15375200896508412892420653 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (39736692349602434500152967 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (33868157486125825724927623 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (9506816104141927487248941 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (3384851504700939831778689 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (2769862183774066313698689 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (247713636555185542766521 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, eSeedCore, eSeedC, eSeedD, eSeedZ,
    Math.B699.GrowthLeaf.eCore, Math.B699.GrowthLeaf.eFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_eCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11TwoFiveGrowth.ELeaf005

#print axioms Math.B699.I11TwoFiveGrowth.ELeaf005.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf005.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf005.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf005.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf005.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf005.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf005.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf005.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf005.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.ELeaf006


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (63 : ℚ) / 128
def leafB : ℚ := (127 : ℚ) / 256
def lam : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (247713636555185542766521 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (1959203001607971670498689 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (1707620740756642728418689 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (3440922480450229245712941 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (8822720182618086511103623 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (7453232397893696461098631 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (2071443220141272164080173 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (729433446710097017216385 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (589766362440821475286401 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (52084701787169966235577 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, eSeedCore, eSeedC, eSeedD, eSeedZ,
    Math.B699.GrowthLeaf.eCore, Math.B699.GrowthLeaf.eFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfLeft := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_eCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11TwoFiveGrowth.ELeaf006

#print axioms Math.B699.I11TwoFiveGrowth.ELeaf006.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf006.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf006.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf006.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf006.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf006.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf006.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf006.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf006.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.ELeaf007


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (127 : ℚ) / 256
def leafB : ℚ := (1 : ℚ) / 2
def lam : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (52084701787169966235577 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (347758269728237916953985 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (245417261284929900551553 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (377396785701639096506925 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (677128376522778916834951 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (352743373095173821976199 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (53013471371009503926829 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (13717306887209421806977 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (23383400781833226853761 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (5746399964339010903993 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, eSeedCore, eSeedC, eSeedD, eSeedZ,
    Math.B699.GrowthLeaf.eCore, Math.B699.GrowthLeaf.eFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_eCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11TwoFiveGrowth.ELeaf007

#print axioms Math.B699.I11TwoFiveGrowth.ELeaf007.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf007.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf007.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf007.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf007.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf007.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf007.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf007.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf007.leaf_delta1
namespace Math.B699.I11TwoFiveGrowth.ELeaf008


open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11TwoFiveGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 5
def seedD : ℕ := 4
def seedZ : ℚ := (3 : ℚ) / 128
def leafA : ℚ := (1 : ℚ) / 2
def leafB : ℚ := (1 : ℚ)
def lam : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336

noncomputable def seedCore : ℚ[X] := eSeedCore
noncomputable def seedWeight0 : ℚ[X] := eSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := eSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

def gapCoeff0 : ℚ := (5746399964339010903993 : ℚ) / 79228162514264337593543950336
def gapCoeff1 : ℚ := (3678495058522938622254465 : ℚ) / 79228162514264337593543950336
def gapCoeff2 : ℚ := (313163504879868007347035521 : ℚ) / 19807040628566084398385987584
def gapCoeff3 : ℚ := (2162888965689822712778332717 : ℚ) / 19807040628566084398385987584
def gapCoeff4 : ℚ := (11986861524676801624898686599 : ℚ) / 39614081257132168796771975168
def gapCoeff5 : ℚ := (16851579022806069423916338823 : ℚ) / 39614081257132168796771975168
def gapCoeff6 : ℚ := (6423143554011775924442896941 : ℚ) / 19807040628566084398385987584
def gapCoeff7 : ℚ := (2752775808862189681904098689 : ℚ) / 19807040628566084398385987584
def gapCoeff8 : ℚ := (2752775808862189681904098689 : ℚ) / 79228162514264337593543950336
def gapCoeff9 : ℚ := (305863978762465520211566521 : ℚ) / 79228162514264337593543950336

noncomputable def gapExpansion : ℚ[X] :=
  Polynomial.C gapCoeff0 * bernsteinMonomial 0 9 +
  Polynomial.C gapCoeff1 * bernsteinMonomial 1 8 +
  Polynomial.C gapCoeff2 * bernsteinMonomial 2 7 +
  Polynomial.C gapCoeff3 * bernsteinMonomial 3 6 +
  Polynomial.C gapCoeff4 * bernsteinMonomial 4 5 +
  Polynomial.C gapCoeff5 * bernsteinMonomial 5 4 +
  Polynomial.C gapCoeff6 * bernsteinMonomial 6 3 +
  Polynomial.C gapCoeff7 * bernsteinMonomial 7 2 +
  Polynomial.C gapCoeff8 * bernsteinMonomial 8 1 +
  Polynomial.C gapCoeff9 * bernsteinMonomial 9 0

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, eSeedCore, eSeedC, eSeedD, eSeedZ,
    Math.B699.GrowthLeaf.eCore, Math.B699.GrowthLeaf.eFactor, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    gapCoeff0, gapCoeff1, gapCoeff2, gapCoeff3, gapCoeff4, gapCoeff5, gapCoeff6, gapCoeff7, gapCoeff8, gapCoeff9,
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = halfRight := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem gapExpansion_cone : BernsteinCone gapExpansion := by
  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 9) :=
    BernsteinCone.scale gapCoeff0 (by norm_num [gapCoeff0]) (BernsteinCone.basis 0 9)
  have h1 : BernsteinCone (Polynomial.C gapCoeff1 * bernsteinMonomial 1 8) :=
    BernsteinCone.scale gapCoeff1 (by norm_num [gapCoeff1]) (BernsteinCone.basis 1 8)
  have h2 : BernsteinCone (Polynomial.C gapCoeff2 * bernsteinMonomial 2 7) :=
    BernsteinCone.scale gapCoeff2 (by norm_num [gapCoeff2]) (BernsteinCone.basis 2 7)
  have h3 : BernsteinCone (Polynomial.C gapCoeff3 * bernsteinMonomial 3 6) :=
    BernsteinCone.scale gapCoeff3 (by norm_num [gapCoeff3]) (BernsteinCone.basis 3 6)
  have h4 : BernsteinCone (Polynomial.C gapCoeff4 * bernsteinMonomial 4 5) :=
    BernsteinCone.scale gapCoeff4 (by norm_num [gapCoeff4]) (BernsteinCone.basis 4 5)
  have h5 : BernsteinCone (Polynomial.C gapCoeff5 * bernsteinMonomial 5 4) :=
    BernsteinCone.scale gapCoeff5 (by norm_num [gapCoeff5]) (BernsteinCone.basis 5 4)
  have h6 : BernsteinCone (Polynomial.C gapCoeff6 * bernsteinMonomial 6 3) :=
    BernsteinCone.scale gapCoeff6 (by norm_num [gapCoeff6]) (BernsteinCone.basis 6 3)
  have h7 : BernsteinCone (Polynomial.C gapCoeff7 * bernsteinMonomial 7 2) :=
    BernsteinCone.scale gapCoeff7 (by norm_num [gapCoeff7]) (BernsteinCone.basis 7 2)
  have h8 : BernsteinCone (Polynomial.C gapCoeff8 * bernsteinMonomial 8 1) :=
    BernsteinCone.scale gapCoeff8 (by norm_num [gapCoeff8]) (BernsteinCone.basis 8 1)
  have h9 : BernsteinCone (Polynomial.C gapCoeff9 * bernsteinMonomial 9 0) :=
    BernsteinCone.scale gapCoeff9 (by norm_num [gapCoeff9]) (BernsteinCone.basis 9 0)
  exact BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (BernsteinCone.add (h0) h1) h2) h3) h4) h5) h6) h7) h8) h9

theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_eCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_eWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone

end Math.B699.I11TwoFiveGrowth.ELeaf008

#print axioms Math.B699.I11TwoFiveGrowth.ELeaf008.actual_gap_eq
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf008.leafMap_eq_path
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf008.gapExpansion_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf008.local_gap_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf008.local_core_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf008.local_weight0_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf008.local_weight1_cone
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf008.leaf_delta0
#print axioms Math.B699.I11TwoFiveGrowth.ELeaf008.leaf_delta1

end HeightMember055
/- Frozen source member 56: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Growth\I11TwoFiveTree.lean SHA256 68315d8d101ef9675700c3ae593d2d81151b28ddff5bef4b1543e54adf0186cd -/
section HeightMember056




set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace Math.B699.I11TwoFiveGrowth.Tree

open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition
open Math.B699.I11TwoFiveGrowth.Shared

theorem qTreeNodeLLLRRRLLDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)) ((qSeedCore).comp ((((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft))) (f := ((qSeedCore).comp ((((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf003.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf003.localWeight0, Math.B699.I11TwoFiveGrowth.QLeaf003.seedWeight0, Math.B699.I11TwoFiveGrowth.QLeaf003.localCore, Math.B699.I11TwoFiveGrowth.QLeaf003.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf003.leaf_delta0)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf004.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf004.localWeight0, Math.B699.I11TwoFiveGrowth.QLeaf004.seedWeight0, Math.B699.I11TwoFiveGrowth.QLeaf004.localCore, Math.B699.I11TwoFiveGrowth.QLeaf004.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf004.leaf_delta0)

theorem qTreeNodeLLLRRRLDelta0 : GrowthTree qLam ((qSeedWeight0).comp (((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)) ((qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft))) (f := ((qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLRRRLLDelta0)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf005.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf005.localWeight0, Math.B699.I11TwoFiveGrowth.QLeaf005.seedWeight0, Math.B699.I11TwoFiveGrowth.QLeaf005.localCore, Math.B699.I11TwoFiveGrowth.QLeaf005.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf005.leaf_delta0)

theorem qTreeNodeLLLRRRDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)) ((qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight))) (f := ((qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLRRRLDelta0)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf006.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf006.localWeight0, Math.B699.I11TwoFiveGrowth.QLeaf006.seedWeight0, Math.B699.I11TwoFiveGrowth.QLeaf006.localCore, Math.B699.I11TwoFiveGrowth.QLeaf006.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf006.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf006.leaf_delta0)

theorem qTreeNodeLLLRRDelta0 : GrowthTree qLam ((qSeedWeight0).comp (((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight)) ((qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight))) (f := ((qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf002.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf002.localWeight0, Math.B699.I11TwoFiveGrowth.QLeaf002.seedWeight0, Math.B699.I11TwoFiveGrowth.QLeaf002.localCore, Math.B699.I11TwoFiveGrowth.QLeaf002.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf002.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLRRRDelta0)

theorem qTreeNodeLLLRDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight)) ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight))) (f := ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf001.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf001.localWeight0, Math.B699.I11TwoFiveGrowth.QLeaf001.seedWeight0, Math.B699.I11TwoFiveGrowth.QLeaf001.localCore, Math.B699.I11TwoFiveGrowth.QLeaf001.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf001.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLRRDelta0)

theorem qTreeNodeLLLDelta0 : GrowthTree qLam ((qSeedWeight0).comp (((halfLeft).comp halfLeft).comp halfLeft)) ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (((halfLeft).comp halfLeft).comp halfLeft))) (f := ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf000.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf000.localWeight0, Math.B699.I11TwoFiveGrowth.QLeaf000.seedWeight0, Math.B699.I11TwoFiveGrowth.QLeaf000.localCore, Math.B699.I11TwoFiveGrowth.QLeaf000.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf000.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLRDelta0)

theorem qTreeNodeLLDelta0 : GrowthTree qLam ((qSeedWeight0).comp ((halfLeft).comp halfLeft)) ((qSeedCore).comp ((halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp ((halfLeft).comp halfLeft))) (f := ((qSeedCore).comp ((halfLeft).comp halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLDelta0)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf007.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf007.localWeight0, Math.B699.I11TwoFiveGrowth.QLeaf007.seedWeight0, Math.B699.I11TwoFiveGrowth.QLeaf007.localCore, Math.B699.I11TwoFiveGrowth.QLeaf007.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf007.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf007.leaf_delta0)

theorem qTreeNodeLDelta0 : GrowthTree qLam ((qSeedWeight0).comp (halfLeft)) ((qSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight0).comp (halfLeft))) (f := ((qSeedCore).comp (halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLDelta0)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf008.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf008.localWeight0, Math.B699.I11TwoFiveGrowth.QLeaf008.seedWeight0, Math.B699.I11TwoFiveGrowth.QLeaf008.localCore, Math.B699.I11TwoFiveGrowth.QLeaf008.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf008.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf008.leaf_delta0)

theorem qTreeNodeRootDelta0 : GrowthTree qLam (qSeedWeight0) (qSeedCore) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight0)) (f := (qSeedCore))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLDelta0)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf009.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf009.localWeight0, Math.B699.I11TwoFiveGrowth.QLeaf009.seedWeight0, Math.B699.I11TwoFiveGrowth.QLeaf009.localCore, Math.B699.I11TwoFiveGrowth.QLeaf009.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf009.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf009.leaf_delta0)

theorem q_tree_delta0 : GrowthTree qLam (qSeedWeight0) (qSeedCore) := by
  exact qTreeNodeRootDelta0

theorem qTreeNodeLLLRRRLLDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)) ((qSeedCore).comp ((((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft))) (f := ((qSeedCore).comp ((((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf003.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf003.localWeight1, Math.B699.I11TwoFiveGrowth.QLeaf003.seedWeight1, Math.B699.I11TwoFiveGrowth.QLeaf003.localCore, Math.B699.I11TwoFiveGrowth.QLeaf003.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf003.leaf_delta1)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf004.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf004.localWeight1, Math.B699.I11TwoFiveGrowth.QLeaf004.seedWeight1, Math.B699.I11TwoFiveGrowth.QLeaf004.localCore, Math.B699.I11TwoFiveGrowth.QLeaf004.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf004.leaf_delta1)

theorem qTreeNodeLLLRRRLDelta1 : GrowthTree qLam ((qSeedWeight1).comp (((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)) ((qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft))) (f := ((qSeedCore).comp (((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLRRRLLDelta1)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf005.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf005.localWeight1, Math.B699.I11TwoFiveGrowth.QLeaf005.seedWeight1, Math.B699.I11TwoFiveGrowth.QLeaf005.localCore, Math.B699.I11TwoFiveGrowth.QLeaf005.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf005.leaf_delta1)

theorem qTreeNodeLLLRRRDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)) ((qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight))) (f := ((qSeedCore).comp ((((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLRRRLDelta1)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf006.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf006.localWeight1, Math.B699.I11TwoFiveGrowth.QLeaf006.seedWeight1, Math.B699.I11TwoFiveGrowth.QLeaf006.localCore, Math.B699.I11TwoFiveGrowth.QLeaf006.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf006.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf006.leaf_delta1)

theorem qTreeNodeLLLRRDelta1 : GrowthTree qLam ((qSeedWeight1).comp (((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight)) ((qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight))) (f := ((qSeedCore).comp (((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf002.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf002.localWeight1, Math.B699.I11TwoFiveGrowth.QLeaf002.seedWeight1, Math.B699.I11TwoFiveGrowth.QLeaf002.localCore, Math.B699.I11TwoFiveGrowth.QLeaf002.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf002.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLRRRDelta1)

theorem qTreeNodeLLLRDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight)) ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight))) (f := ((qSeedCore).comp ((((halfLeft).comp halfLeft).comp halfLeft).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf001.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf001.localWeight1, Math.B699.I11TwoFiveGrowth.QLeaf001.seedWeight1, Math.B699.I11TwoFiveGrowth.QLeaf001.localCore, Math.B699.I11TwoFiveGrowth.QLeaf001.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf001.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLRRDelta1)

theorem qTreeNodeLLLDelta1 : GrowthTree qLam ((qSeedWeight1).comp (((halfLeft).comp halfLeft).comp halfLeft)) ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (((halfLeft).comp halfLeft).comp halfLeft))) (f := ((qSeedCore).comp (((halfLeft).comp halfLeft).comp halfLeft)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf000.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf000.localWeight1, Math.B699.I11TwoFiveGrowth.QLeaf000.seedWeight1, Math.B699.I11TwoFiveGrowth.QLeaf000.localCore, Math.B699.I11TwoFiveGrowth.QLeaf000.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf000.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLRDelta1)

theorem qTreeNodeLLDelta1 : GrowthTree qLam ((qSeedWeight1).comp ((halfLeft).comp halfLeft)) ((qSeedCore).comp ((halfLeft).comp halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp ((halfLeft).comp halfLeft))) (f := ((qSeedCore).comp ((halfLeft).comp halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLLDelta1)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf007.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf007.localWeight1, Math.B699.I11TwoFiveGrowth.QLeaf007.seedWeight1, Math.B699.I11TwoFiveGrowth.QLeaf007.localCore, Math.B699.I11TwoFiveGrowth.QLeaf007.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf007.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf007.leaf_delta1)

theorem qTreeNodeLDelta1 : GrowthTree qLam ((qSeedWeight1).comp (halfLeft)) ((qSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := qLam) (w := ((qSeedWeight1).comp (halfLeft))) (f := ((qSeedCore).comp (halfLeft)))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLLDelta1)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf008.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf008.localWeight1, Math.B699.I11TwoFiveGrowth.QLeaf008.seedWeight1, Math.B699.I11TwoFiveGrowth.QLeaf008.localCore, Math.B699.I11TwoFiveGrowth.QLeaf008.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf008.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf008.leaf_delta1)

theorem qTreeNodeRootDelta1 : GrowthTree qLam (qSeedWeight1) (qSeedCore) := by
  exact GrowthTree.split (lam := qLam) (w := (qSeedWeight1)) (f := (qSeedCore))
    (by simpa only [Polynomial.comp_assoc] using qTreeNodeLDelta1)
    (by simpa only [Math.B699.I11TwoFiveGrowth.QLeaf009.lam, Math.B699.I11TwoFiveGrowth.Shared.qLam, Math.B699.I11TwoFiveGrowth.QLeaf009.localWeight1, Math.B699.I11TwoFiveGrowth.QLeaf009.seedWeight1, Math.B699.I11TwoFiveGrowth.QLeaf009.localCore, Math.B699.I11TwoFiveGrowth.QLeaf009.seedCore, Math.B699.I11TwoFiveGrowth.QLeaf009.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.QLeaf009.leaf_delta1)

theorem q_tree_delta1 : GrowthTree qLam (qSeedWeight1) (qSeedCore) := by
  exact qTreeNodeRootDelta1

theorem eTreeNodeLRRRRRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf006.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf006.localWeight0, Math.B699.I11TwoFiveGrowth.ELeaf006.seedWeight0, Math.B699.I11TwoFiveGrowth.ELeaf006.localCore, Math.B699.I11TwoFiveGrowth.ELeaf006.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf006.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf006.leaf_delta0)
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf007.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf007.localWeight0, Math.B699.I11TwoFiveGrowth.ELeaf007.seedWeight0, Math.B699.I11TwoFiveGrowth.ELeaf007.localCore, Math.B699.I11TwoFiveGrowth.ELeaf007.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf007.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf007.leaf_delta0)

theorem eTreeNodeLRRRRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf005.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf005.localWeight0, Math.B699.I11TwoFiveGrowth.ELeaf005.seedWeight0, Math.B699.I11TwoFiveGrowth.ELeaf005.localCore, Math.B699.I11TwoFiveGrowth.ELeaf005.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf005.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRRRDelta0)

theorem eTreeNodeLRRRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf004.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf004.localWeight0, Math.B699.I11TwoFiveGrowth.ELeaf004.seedWeight0, Math.B699.I11TwoFiveGrowth.ELeaf004.localCore, Math.B699.I11TwoFiveGrowth.ELeaf004.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf004.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRRDelta0)

theorem eTreeNodeLRRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf003.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf003.localWeight0, Math.B699.I11TwoFiveGrowth.ELeaf003.seedWeight0, Math.B699.I11TwoFiveGrowth.ELeaf003.localCore, Math.B699.I11TwoFiveGrowth.ELeaf003.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf003.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRDelta0)

theorem eTreeNodeLRRDelta0 : GrowthTree eLam ((eSeedWeight0).comp (((halfLeft).comp halfRight).comp halfRight)) ((eSeedCore).comp (((halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp (((halfLeft).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf002.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf002.localWeight0, Math.B699.I11TwoFiveGrowth.ELeaf002.seedWeight0, Math.B699.I11TwoFiveGrowth.ELeaf002.localCore, Math.B699.I11TwoFiveGrowth.ELeaf002.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf002.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRDelta0)

theorem eTreeNodeLRDelta0 : GrowthTree eLam ((eSeedWeight0).comp ((halfLeft).comp halfRight)) ((eSeedCore).comp ((halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp ((halfLeft).comp halfRight))) (f := ((eSeedCore).comp ((halfLeft).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf001.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf001.localWeight0, Math.B699.I11TwoFiveGrowth.ELeaf001.seedWeight0, Math.B699.I11TwoFiveGrowth.ELeaf001.localCore, Math.B699.I11TwoFiveGrowth.ELeaf001.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf001.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRDelta0)

theorem eTreeNodeLDelta0 : GrowthTree eLam ((eSeedWeight0).comp (halfLeft)) ((eSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight0).comp (halfLeft))) (f := ((eSeedCore).comp (halfLeft)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf000.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf000.localWeight0, Math.B699.I11TwoFiveGrowth.ELeaf000.seedWeight0, Math.B699.I11TwoFiveGrowth.ELeaf000.localCore, Math.B699.I11TwoFiveGrowth.ELeaf000.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf000.leaf_delta0)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRDelta0)

theorem eTreeNodeRootDelta0 : GrowthTree eLam (eSeedWeight0) (eSeedCore) := by
  exact GrowthTree.split (lam := eLam) (w := (eSeedWeight0)) (f := (eSeedCore))
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLDelta0)
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf008.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf008.localWeight0, Math.B699.I11TwoFiveGrowth.ELeaf008.seedWeight0, Math.B699.I11TwoFiveGrowth.ELeaf008.localCore, Math.B699.I11TwoFiveGrowth.ELeaf008.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf008.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf008.leaf_delta0)

theorem e_tree_delta0 : GrowthTree eLam (eSeedWeight0) (eSeedCore) := by
  exact eTreeNodeRootDelta0

theorem eTreeNodeLRRRRRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf006.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf006.localWeight1, Math.B699.I11TwoFiveGrowth.ELeaf006.seedWeight1, Math.B699.I11TwoFiveGrowth.ELeaf006.localCore, Math.B699.I11TwoFiveGrowth.ELeaf006.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf006.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf006.leaf_delta1)
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf007.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf007.localWeight1, Math.B699.I11TwoFiveGrowth.ELeaf007.seedWeight1, Math.B699.I11TwoFiveGrowth.ELeaf007.localCore, Math.B699.I11TwoFiveGrowth.ELeaf007.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf007.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf007.leaf_delta1)

theorem eTreeNodeLRRRRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp ((((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf005.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf005.localWeight1, Math.B699.I11TwoFiveGrowth.ELeaf005.seedWeight1, Math.B699.I11TwoFiveGrowth.ELeaf005.localCore, Math.B699.I11TwoFiveGrowth.ELeaf005.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf005.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf005.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRRRDelta1)

theorem eTreeNodeLRRRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((((halfLeft).comp halfRight).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf004.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf004.localWeight1, Math.B699.I11TwoFiveGrowth.ELeaf004.seedWeight1, Math.B699.I11TwoFiveGrowth.ELeaf004.localCore, Math.B699.I11TwoFiveGrowth.ELeaf004.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf004.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf004.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRRDelta1)

theorem eTreeNodeLRRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)) ((eSeedCore).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp ((((halfLeft).comp halfRight).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf003.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf003.localWeight1, Math.B699.I11TwoFiveGrowth.ELeaf003.seedWeight1, Math.B699.I11TwoFiveGrowth.ELeaf003.localCore, Math.B699.I11TwoFiveGrowth.ELeaf003.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf003.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf003.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRRDelta1)

theorem eTreeNodeLRRDelta1 : GrowthTree eLam ((eSeedWeight1).comp (((halfLeft).comp halfRight).comp halfRight)) ((eSeedCore).comp (((halfLeft).comp halfRight).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp (((halfLeft).comp halfRight).comp halfRight))) (f := ((eSeedCore).comp (((halfLeft).comp halfRight).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf002.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf002.localWeight1, Math.B699.I11TwoFiveGrowth.ELeaf002.seedWeight1, Math.B699.I11TwoFiveGrowth.ELeaf002.localCore, Math.B699.I11TwoFiveGrowth.ELeaf002.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf002.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf002.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRRDelta1)

theorem eTreeNodeLRDelta1 : GrowthTree eLam ((eSeedWeight1).comp ((halfLeft).comp halfRight)) ((eSeedCore).comp ((halfLeft).comp halfRight)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp ((halfLeft).comp halfRight))) (f := ((eSeedCore).comp ((halfLeft).comp halfRight)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf001.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf001.localWeight1, Math.B699.I11TwoFiveGrowth.ELeaf001.seedWeight1, Math.B699.I11TwoFiveGrowth.ELeaf001.localCore, Math.B699.I11TwoFiveGrowth.ELeaf001.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf001.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf001.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRRDelta1)

theorem eTreeNodeLDelta1 : GrowthTree eLam ((eSeedWeight1).comp (halfLeft)) ((eSeedCore).comp (halfLeft)) := by
  exact GrowthTree.split (lam := eLam) (w := ((eSeedWeight1).comp (halfLeft))) (f := ((eSeedCore).comp (halfLeft)))
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf000.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf000.localWeight1, Math.B699.I11TwoFiveGrowth.ELeaf000.seedWeight1, Math.B699.I11TwoFiveGrowth.ELeaf000.localCore, Math.B699.I11TwoFiveGrowth.ELeaf000.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf000.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf000.leaf_delta1)
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLRDelta1)

theorem eTreeNodeRootDelta1 : GrowthTree eLam (eSeedWeight1) (eSeedCore) := by
  exact GrowthTree.split (lam := eLam) (w := (eSeedWeight1)) (f := (eSeedCore))
    (by simpa only [Polynomial.comp_assoc] using eTreeNodeLDelta1)
    (by simpa only [Math.B699.I11TwoFiveGrowth.ELeaf008.lam, Math.B699.I11TwoFiveGrowth.Shared.eLam, Math.B699.I11TwoFiveGrowth.ELeaf008.localWeight1, Math.B699.I11TwoFiveGrowth.ELeaf008.seedWeight1, Math.B699.I11TwoFiveGrowth.ELeaf008.localCore, Math.B699.I11TwoFiveGrowth.ELeaf008.seedCore, Math.B699.I11TwoFiveGrowth.ELeaf008.leafMap_eq_path, Polynomial.comp_assoc] using Math.B699.I11TwoFiveGrowth.ELeaf008.leaf_delta1)

theorem e_tree_delta1 : GrowthTree eLam (eSeedWeight1) (eSeedCore) := by
  exact eTreeNodeRootDelta1

end Math.B699.I11TwoFiveGrowth.Tree

#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLRRRLLDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLRRRLDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLRRRDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLRRDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLRDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeRootDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.q_tree_delta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLRRRLLDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLRRRLDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLRRRDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLRRDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLRDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLLDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLLDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeLDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.qTreeNodeRootDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.q_tree_delta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRRRRRRDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRRRRRDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRRRRDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRRRDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRRDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeRootDelta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.e_tree_delta0
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRRRRRRDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRRRRRDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRRRRDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRRRDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRRDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLRDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeLDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.eTreeNodeRootDelta1
#print axioms Math.B699.I11TwoFiveGrowth.Tree.e_tree_delta1

end HeightMember056
/- Frozen source member 57: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveFinal\ActualInstance.lean SHA256 c4e4283d7d8ff0a76b0d9b058ef6c75037f9f9af78418d6982b532348d363d08 -/
section HeightMember057



/-! UNCOMPILED. The actual accepted c5d4,z3/128 roots supply all four tree inputs. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveFinalConsumers
open Math.B699.I11TwoFiveScaled Math.B699.I11TwoFivePrefix
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

theorem q_lambda_eq : Math.B699.I11TwoFiveGrowth.Shared.qLam = qLambda := rfl
theorem e_lambda_eq : Math.B699.I11TwoFiveGrowth.Shared.eLam = eLambda := rfl
theorem row_delta_false : rowDelta false = 1 := rfl
theorem row_delta_true : rowDelta true = 0 := rfl

theorem actual_q_tree_family (row : Bool) :
    GrowthTree qLambda (qWeight 5 4 (rowDelta row) (3 / 128)) (qCore 5 4 (3 / 128)) := by
  cases row with
  | false =>
    simpa only [row_delta_false, q_lambda_eq,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedWeight1,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedCore,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedC,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedD,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedZ] using
        Math.B699.I11TwoFiveGrowth.Tree.q_tree_delta1
  | true =>
    simpa only [row_delta_true, q_lambda_eq,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedWeight0,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedCore,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedC,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedD,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedZ] using
        Math.B699.I11TwoFiveGrowth.Tree.q_tree_delta0

theorem actual_e_tree_family (row : Bool) :
    GrowthTree eLambda (eWeight 5 4 (rowDelta row) (3 / 128)) (eCore 5 4 (3 / 128)) := by
  cases row with
  | false =>
    simpa only [row_delta_false, e_lambda_eq,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedWeight1,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedCore,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedC,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedD,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedZ] using
        Math.B699.I11TwoFiveGrowth.Tree.e_tree_delta1
  | true =>
    simpa only [row_delta_true, e_lambda_eq,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedWeight0,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedCore,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedC,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedD,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedZ] using
        Math.B699.I11TwoFiveGrowth.Tree.e_tree_delta0

theorem actual_two_five_cofactor_edge
    (Y e f A C : ℕ) (hY : twoFiveY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hupperQ : 5 ^ f * C ≤ 2 * Y)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 248 ≤ A ^ 1000 ∨ Y ^ 252 ≤ C ^ 1000 := by
  exact two_five_edge_of_growth_trees actual_q_tree_family actual_e_tree_family
    Y e f A C hY hC hwindowP hwindowQ hupperQ hgap

end Math.B699.I11TwoFiveFinalConsumers

end HeightMember057
/- Frozen source member 58: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\TwoFiveGap33\Edge.lean SHA256 369c3622e707e52488c4016f7aef1adcade3b56688a661a60c43c90174ecbebc -/
section HeightMember058




/-!
Complete candidate proof text; not compiled by this worker.
All four actual growth trees, actual G, and selector numbers are supplied here.
The height and the original stronger cofactor weights remain unchanged.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.TwoFiveGap33
open Math.B699.I11TwoFiveScaled Math.B699.I11TwoFiveFinalConsumers
open Math.B699.DiscretePadeSelector

theorem actual_two_five_strong_edge
    (Y e f A C : ℕ) (hY : (2 : ℕ) ^ 15359 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hupperQ : 5 ^ f * C ≤ 2 * Y)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 33) :
    Y ^ 248 ≤ A ^ 1000 ∨ Y ^ 252 ≤ C ^ 1000 := by
  by_cases hP : Y ^ 248 ≤ A ^ 1000
  · exact Or.inl hP
  by_cases hQcofactor : Y ^ 252 ≤ C ^ 1000
  · exact Or.inr hQcofactor
  exfalso
  have hsmallP : A ^ 1000 < Y ^ 248 := Nat.lt_of_not_ge hP
  have hsmallQ : C ^ 1000 < Y ^ 252 := Nat.lt_of_not_ge hQcofactor
  have hYseed : twoFiveY0 ≤ Y := hY
  obtain ⟨_hOldRate, hprevious, hrateP, hbaseP, hlookP, hrateQ, hbaseQ, hlookQ⟩ :=
    actual_numeric_certificates
  obtain ⟨hQ, hE⟩ := standard_bounds_from_fixed_trees
    actual_q_tree_family actual_e_tree_family fixed_initial_q_cap fixed_initial_e_cap
  let m := twoFiveIndex Y
  obtain ⟨he, hf⟩ := extract_same_index Y e f A C hYseed hprevious
    hrateP hbaseP hlookP hrateQ hbaseQ hlookQ hwindowP hwindowQ hsmallP hsmallQ
  change 35 * m < e at he
  change 15 * m < f at hf
  have hm : 141 ≤ m := index_ge_m0 Y hYseed hprevious
  have hmM : 329 ≤ m := index_ge_M Y hYseed hprevious
  have hAm : (66 : ℚ) < qRate qBase ^ m := actual_rate_gt_66 m hmM
  have hthreshold : (4 : ℚ) * (Y : ℚ) < (twoFiveZ : ℚ) ^ m := by
    have h := leastExponent_threshold twoFiveZ Y twoFiveZ_gt_one
    change 4 * Y < twoFiveZ ^ m at h
    exact_mod_cast h
  have hWm : (4 : ℚ) * (Y : ℚ) < wRate eBase ^ m :=
    lt_of_lt_of_le hthreshold
      (pow_le_pow_left₀ (Nat.cast_nonneg twoFiveZ) fixed_wRate_ge_Z m)
  let V : ℕ := 5 ^ (f - 15 * m) * C
  let Nq : ℕ := 5 ^ f * C
  have hNVnat : (125 : ℕ) ^ (5 * m) * V = Nq := by
    have hpow : (125 : ℕ) ^ (5 * m) = (5 : ℕ) ^ (15 * m) := by
      calc
        _ = ((5 : ℕ) ^ 3) ^ (5 * m) := by norm_num
        _ = (5 : ℕ) ^ (15 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
    dsimp only [V, Nq]
    rw [hpow]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 5 f (15 * m) C
      (Nat.le_of_lt hf)
  have hNV : (125 : ℚ) ^ (5 * m) * (V : ℚ) = (Nq : ℚ) := by exact_mod_cast hNVnat
  have hNsmall : 2 * (Nq : ℚ) < wRate eBase ^ m := by
    have hN : (Nq : ℚ) ≤ 2 * (Y : ℚ) := by exact_mod_cast hupperQ
    linarith
  obtain ⟨row, hlower⟩ := actual_integer_gap_budget m e f A C 33
    (by omega) (Nat.le_of_lt he) (Nat.le_of_lt hf) hC hgap
  have hVcast : (5 : ℤ) ^ (f - 15 * m) * (C : ℤ) = (V : ℤ) := by
    dsimp only [V]
    simp only [Nat.cast_mul, Nat.cast_pow, Nat.cast_ofNat]
  have hVabs : |(5 : ℤ) ^ (f - 15 * m) * (C : ℤ)| = (V : ℤ) := by
    rw [hVcast, abs_of_nonneg (Int.natCast_nonneg V)]
  have hlow : (128 : ℤ) ^ (5 * m) ≤
      33 * |qRow m row| + |rowError m row| * (V : ℤ) := by
    simpa only [hVabs] using hlower
  have hstrict := actual_integer_gap33_sum_lt m hm row qBase eBase
    fixed_bases_pos.2.2.1 fixed_bases_pos.2.2.2
    (hQ m hm row) (hE m hm row) hAm V Nq hNV hNsmall
  exact (not_lt_of_ge hlow) hstrict

/-- Actual 2–5 weak edge with gap 33; no growth/tree/G or numeric hypothesis. -/
theorem actual_two_five_weak_edge
    (Y e f A C : ℕ) (hY : (2 : ℕ) ^ 15359 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hupperQ : 5 ^ f * C ≤ 2 * Y)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 33) :
    Y ^ 10 ≤ A ^ 1000 ∨ Y ^ 10 ≤ C ^ 1000 := by
  have hpow : 0 < (2 : ℕ) ^ 15359 := Nat.pow_pos (by decide : 0 < (2 : ℕ))
  have hYone : 1 ≤ Y := (Nat.succ_le_of_lt hpow).trans hY
  rcases actual_two_five_strong_edge Y e f A C hY hC hwindowP hwindowQ hupperQ hgap
      with hP | hQ
  · exact Or.inl ((pow_le_pow_right₀ hYone (by decide : 10 ≤ 248)).trans hP)
  · exact Or.inr ((pow_le_pow_right₀ hYone (by decide : 10 ≤ 252)).trans hQ)

end Math.B699.TwoFiveGap33

end HeightMember058
/- Frozen source member 59: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11Component\CeilHalf.lean SHA256 1df62fa8b16d2af222d1cb55bc15dd46453d31b90cf3177114c3818dba5df890 -/
section HeightMember059



/-! UNCOMPILED CANDIDATE. A common dyadic interval for all eleven numerator
positions. The huge concrete height is kept out of arithmetic normalization. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699LowIndex.I11FiveThreeComponentEdge

def ceilHalf (n : ℕ) : ℕ := (n + 1) / 2

theorem window_in_ceilHalf_interval {n a : ℕ} (hn : 20 ≤ n) (ha : a < 11) :
    ceilHalf n ≤ n - a ∧ n - a ≤ 2 * ceilHalf n := by
  dsimp only [ceilHalf]
  omega

theorem ceilHalf_lower_of_two_mul_le {n H : ℕ} (h : 2 * H ≤ n) :
    H ≤ ceilHalf n := by
  dsimp only [ceilHalf]
  omega

theorem ceilHalf_power_lower {n k : ℕ} (h : (2 : ℕ) ^ (k + 1) ≤ n) :
    (2 : ℕ) ^ k ≤ ceilHalf n := by
  apply ceilHalf_lower_of_two_mul_le
  calc
    2 * (2 : ℕ) ^ k = (2 : ℕ) ^ (k + 1) := by
      rw [Nat.pow_succ]
      exact Nat.mul_comm _ _
    _ ≤ n := h

theorem twenty_le_of_power_bound {n k : ℕ} (hk : 5 ≤ k) (hn : (2 : ℕ) ^ k ≤ n) :
    20 ≤ n := by
  have h32 : 32 ≤ (2 : ℕ) ^ k := by
    change (2 : ℕ) ^ 5 ≤ (2 : ℕ) ^ k
    exact Nat.pow_le_pow_right (by decide) hk
  exact Nat.le_trans (by decide : 20 ≤ 32) (Nat.le_trans h32 hn)

end B699LowIndex.I11FiveThreeComponentEdge
#print axioms B699LowIndex.I11FiveThreeComponentEdge.window_in_ceilHalf_interval
#print axioms B699LowIndex.I11FiveThreeComponentEdge.ceilHalf_lower_of_two_mul_le
#print axioms B699LowIndex.I11FiveThreeComponentEdge.ceilHalf_power_lower
#print axioms B699LowIndex.I11FiveThreeComponentEdge.twenty_le_of_power_bound

end HeightMember059
/- Frozen source member 60: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\CriticalPadeHeight\Windows.lean SHA256 97ca085094e8830a947d8cfde68955839070221a14fe17f7c62d7510119be713 -/
section HeightMember060




/-! Complete uncompiled candidate: ordinary localization supplies the actual 2/5 windows. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.CriticalPadeHeight
open B699LargePrimeStructure

theorem window_bounds {n a : ℕ} (hn : 66 ≤ n) (ha : a < 34) :
    (n + 1) / 2 ≤ n - a ∧ n - a ≤ 2 * ((n + 1) / 2) := by omega

theorem integer_window_gap33 {n a b : ℕ} (ha : a < 34) (hb : b < 34) :
    |((n - a : ℕ) : ℤ) - ((n - b : ℕ) : ℤ)| ≤ 33 := by
  apply abs_le.mpr
  constructor <;> omega

theorem large_height_bounds {n : ℕ} (hheight : (2 : ℕ) ^ 15360 ≤ n) :
    1122 ≤ n ∧ (2 : ℕ) ^ 15359 ≤ (n + 1) / 2 := by
  constructor
  · exact (by decide : 1122 ≤ (2 : ℕ) ^ 11).trans
      ((Nat.pow_le_pow_right (by decide : 0 < (2 : ℕ))
        (by decide : 11 ≤ 15360)).trans hheight)
  · simpa only [B699LowIndex.I11FiveThreeComponentEdge.ceilHalf] using
      B699LowIndex.I11FiveThreeComponentEdge.ceilHalf_power_lower (n := n) (k := 15359) hheight

theorem actual_two_five_component_capacity {n i : ℕ}
    (hi : 6 ≤ i) (hi34 : i ≤ 34) (hheight : (2 : ℕ) ^ 15360 ≤ n) :
    (primeComponent n i 2) ^ 1000 * ((n + 1) / 2) ^ 10 ≤ n ^ 1000 ∨
      (primeComponent n i 5) ^ 1000 * ((n + 1) / 2) ^ 10 ≤ n ^ 1000 := by
  obtain ⟨hlarge, hY⟩ := large_height_bounds hheight
  have hin : i ≤ n := by omega
  obtain ⟨a, A, hai, hA, hP⟩ :=
    exists_prime_window (n := n) (i := i) (p := 2) (by omega) hin (by decide)
  obtain ⟨b, C, hbi, hC, hQ⟩ :=
    exists_prime_window (n := n) (i := i) (p := 5) (by omega) hin (by decide)
  have ha : a < 34 := lt_of_lt_of_le hai hi34
  have hb : b < 34 := lt_of_lt_of_le hbi hi34
  have hpBounds := window_bounds (n := n) (by omega) ha
  have hqBounds := window_bounds (n := n) (by omega) hb
  have hPnat : (2 : ℕ) ^ ((n.choose i).factorization 2) * A = n - a := hP
  have hQnat : (5 : ℕ) ^ ((n.choose i).factorization 5) * C = n - b := hQ
  have hPint : (2 : ℤ) ^ ((n.choose i).factorization 2) * (A : ℤ) =
      ((n - a : ℕ) : ℤ) := by exact_mod_cast hPnat
  have hQint : (5 : ℤ) ^ ((n.choose i).factorization 5) * (C : ℤ) =
      ((n - b : ℕ) : ℤ) := by exact_mod_cast hQnat
  have hgap : |(2 : ℤ) ^ ((n.choose i).factorization 2) * (A : ℤ) -
      (5 : ℤ) ^ ((n.choose i).factorization 5) * (C : ℤ)| ≤ 33 := by
    rw [hPint, hQint]
    exact integer_window_gap33 ha hb
  have hcofactor := Math.B699.TwoFiveGap33.actual_two_five_weak_edge
    ((n + 1) / 2) ((n.choose i).factorization 2) ((n.choose i).factorization 5)
    A C hY hC (by simpa only [hPnat] using hpBounds.1)
    (by simpa only [hQnat] using hqBounds.1)
    (by simpa only [hQnat] using hqBounds.2) hgap
  rcases hcofactor with hleft | hright
  · exact Or.inl (component_cofactor_capacity
      (hP.le.trans (Nat.sub_le n a)) hleft)
  · exact Or.inr (component_cofactor_capacity
      (hQ.le.trans (Nat.sub_le n b)) hright)

theorem actual_small_part_capacity {n i : ℕ}
    (hi : 6 ≤ i) (hi34 : i ≤ 34) (hheight : (2 : ℕ) ^ 15360 ≤ n) :
    (smallPrimePart n i) ^ 1000 * ((n + 1) / 2) ^ 10 ≤
      n ^ (1000 * smallPrimeCount i) := by
  have hn : 0 < n := (Nat.pow_pos (by decide : 0 < (2 : ℕ))).trans_le hheight
  rcases actual_two_five_component_capacity hi hi34 hheight with hP | hQ
  · exact smallPrimePart_capacity hn (by decide : Nat.Prime 2) (by omega) hP
  · exact smallPrimePart_capacity hn (by decide : Nat.Prime 5) (by omega) hQ

end Math.B699.CriticalPadeHeight

end HeightMember060
/- Frozen source member 61: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\CriticalPadeHeight\Constants.lean SHA256 53aef49f6b42eece604859f9db0a0b9a7cb5a93dfa361b08dc39894a98b18ccc -/
section HeightMember061




/-! Complete uncompiled candidate: the only factorial decision has 130 bits. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.CriticalPadeHeight

theorem factorial_34_bound : 2 * (34 : ℕ).factorial ≤ (2 : ℕ) ^ 129 := by decide

theorem factorial_bound {i : ℕ} (hi : i ≤ 34) :
    2 * i.factorial ≤ (2 : ℕ) ^ 129 :=
  (Nat.mul_le_mul_left 2 (Nat.factorial_le hi)).trans factorial_34_bound

theorem height_budget_contradiction {Y i : ℕ} (hi : i ≤ 34)
    (hY : (2 : ℕ) ^ 15359 ≤ Y) (hbound : Y ^ 10 ≤ (2 * i.factorial) ^ 1000) : False := by
  have hconstant : (2 * i.factorial) ^ 1000 ≤ (2 : ℕ) ^ 129000 := by
    simpa only [← pow_mul] using Nat.pow_le_pow_left (factorial_bound hi) 1000
  have hupper : Y ^ 10 ≤ (2 : ℕ) ^ 129000 := hbound.trans hconstant
  have hlower : (2 : ℕ) ^ 153590 ≤ Y ^ 10 := by
    simpa only [← pow_mul] using Nat.pow_le_pow_left hY 10
  have hstrict : (2 : ℕ) ^ 129000 < 2 ^ 153590 :=
    pow_lt_pow_right₀ (by decide : 1 < (2 : ℕ)) (by decide : 129000 < 153590)
  exact (not_lt_of_ge (hlower.trans hupper)) hstrict

end Math.B699.CriticalPadeHeight

end HeightMember061
/- Frozen source member 62: research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\CriticalPadeHeight\Final.lean SHA256 fb5583db9713df13cdeb81863e1d1374c50d9b0a9d96e35f1753d89bd3b9cf86 -/
section HeightMember062




/-!
Complete uncompiled candidate: all mathematical special inputs are supplied.
These initial-height statements do not settle the remaining finite original cases.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.CriticalPadeHeight
open B699LowIndex B699LargePrimeStructure

theorem critical_noCommon_below_15360 {n i j r s t : ℕ}
    (hi : 6 ≤ i) (hi34 : i ≤ 34) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hlambda : 2 * s - r = i) (ht : t ≤ i)
    (hdegree : windowDegree i r s = (i - t) * i) (hcount : smallPrimeCount i = t)
    (hno : ¬ Common n i j) : n < (2 : ℕ) ^ 15360 := by
  by_contra hnot
  have hheight : (2 : ℕ) ^ 15360 ≤ n := Nat.le_of_not_gt hnot
  obtain ⟨hlarge0, hY⟩ := large_height_bounds hheight
  have hlarge : i * (i - 1) ≤ n := by
    calc
      i * (i - 1) ≤ 34 * (34 - 1) :=
        Nat.mul_le_mul hi34 (Nat.sub_le_sub_right hi34 1)
      _ ≤ n := hlarge0
  have hlower := critical_small_part_lower (by omega : 2 ≤ i) hij hjn hsi
    hlarge hlambda ht hdegree hno
  have hcapacity : (smallPrimePart n i) ^ 1000 * ((n + 1) / 2) ^ 10 ≤ n ^ (1000 * t) := by
    simpa only [hcount] using actual_small_part_capacity hi hi34 hheight
  have hbudget := critical_budget_bound (smallPrimePart_pos n i) hlower hcapacity
  exact height_budget_contradiction hi34 hY hbudget

theorem i28_parameters : 2 * 18 - 8 = (28 : ℕ) ∧
    windowDegree 28 8 18 = (28 - 9) * 28 ∧ smallPrimeCount 28 = 9 := by decide

theorem i31_parameters : 2 * 20 - 9 = (31 : ℕ) ∧
    windowDegree 31 9 20 = (31 - 10) * 31 ∧ smallPrimeCount 31 = 10 := by decide

theorem i34_parameters : 2 * 22 - 10 = (34 : ℕ) ∧
    windowDegree 34 10 22 = (34 - 11) * 34 ∧ smallPrimeCount 34 = 11 := by decide

theorem actual_i28_below_15360 {n j : ℕ}
    (hij : 28 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 28 j) : n < (2 : ℕ) ^ 15360 := by
  obtain ⟨hlambda, hdegree, hcount⟩ := i28_parameters
  exact critical_noCommon_below_15360 (r := 8) (s := 18) (t := 9)
    (by decide) (by decide) hij hjn (by decide) hlambda (by decide) hdegree hcount hno

theorem actual_i31_below_15360 {n j : ℕ}
    (hij : 31 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 31 j) : n < (2 : ℕ) ^ 15360 := by
  obtain ⟨hlambda, hdegree, hcount⟩ := i31_parameters
  exact critical_noCommon_below_15360 (r := 9) (s := 20) (t := 10)
    (by decide) (by decide) hij hjn (by decide) hlambda (by decide) hdegree hcount hno

theorem actual_i34_below_15360 {n j : ℕ}
    (hij : 34 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 34 j) : n < (2 : ℕ) ^ 15360 := by
  obtain ⟨hlambda, hdegree, hcount⟩ := i34_parameters
  exact critical_noCommon_below_15360 (r := 10) (s := 22) (t := 11)
    (by decide) (by decide) hij hjn (by decide) hlambda (by decide) hdegree hcount hno

end Math.B699.CriticalPadeHeight

end HeightMember062
