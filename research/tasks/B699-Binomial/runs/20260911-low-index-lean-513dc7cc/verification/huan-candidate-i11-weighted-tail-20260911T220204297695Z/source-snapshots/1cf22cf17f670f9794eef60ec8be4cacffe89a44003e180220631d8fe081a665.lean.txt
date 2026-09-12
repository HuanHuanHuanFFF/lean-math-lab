import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11WeightedProduct.Product
import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.CofactorCover

/-!
# Conditional i11 tail consumer for the actual small prime part

UNCOMPILED CANDIDATE. The final theorem uses the actual smallPrimePart and
accepted noCommon_bernoulli_size. Its explicit product-bound premise still
has to be supplied by actual edge estimates and localization; this is not
a completed original i11 result. The prime threshold remains p >= 11.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.I11WeightedProduct

open B699LargePrimeStructure B699LowIndex

/-- Pure Nat cancellation of the exponents occurring in the i11 application.
No positivity of U or C is needed; the cancelled n-power is positive. -/
theorem arithmetic_tail_power_bound {n Y U C : ℕ}
    (hn : 0 < n) (hnY : n ≤ 2 * Y)
    (hbase : n ^ 121 ≤ C * U ^ 11 * n ^ 84)
    (hproduct : U ^ 1000 * Y ^ 640 ≤ n ^ 4000) :
    n ^ 40 ≤ C ^ 1000 * 2 ^ 7040 := by
  have hb : n ^ 121000 ≤ C ^ 1000 * U ^ 11000 * n ^ 84000 := by
    simpa only [mul_pow, ← pow_mul] using Nat.pow_le_pow_left hbase 1000
  have hp : U ^ 11000 * Y ^ 7040 ≤ n ^ 44000 := by
    simpa only [mul_pow, ← pow_mul] using Nat.pow_le_pow_left hproduct 11
  have hy : n ^ 7040 ≤ 2 ^ 7040 * Y ^ 7040 := by
    simpa only [mul_pow] using Nat.pow_le_pow_left hnY 7040
  have hcombined : n ^ 121000 * Y ^ 7040 ≤ C ^ 1000 * n ^ 128000 := by
    calc
      n ^ 121000 * Y ^ 7040 ≤
          (C ^ 1000 * U ^ 11000 * n ^ 84000) * Y ^ 7040 :=
        Nat.mul_le_mul_right _ hb
      _ = (C ^ 1000 * n ^ 84000) * (U ^ 11000 * Y ^ 7040) := by ring
      _ ≤ (C ^ 1000 * n ^ 84000) * n ^ 44000 := Nat.mul_le_mul_left _ hp
      _ = C ^ 1000 * n ^ 128000 := by
        rw [mul_assoc, ← pow_add]
  have hbig : n ^ 128040 ≤ (C ^ 1000 * 2 ^ 7040) * n ^ 128000 := by
    calc
      n ^ 128040 = n ^ 121000 * n ^ 7040 := by rw [← pow_add]
      _ ≤ n ^ 121000 * (2 ^ 7040 * Y ^ 7040) := Nat.mul_le_mul_left _ hy
      _ = 2 ^ 7040 * (n ^ 121000 * Y ^ 7040) := by ring
      _ ≤ 2 ^ 7040 * (C ^ 1000 * n ^ 128000) :=
        Nat.mul_le_mul_left _ hcombined
      _ = (C ^ 1000 * 2 ^ 7040) * n ^ 128000 := by ring
  have hcancel : n ^ 40 * n ^ 128000 ≤ (C ^ 1000 * 2 ^ 7040) * n ^ 128000 := by
    simpa only [← pow_add] using hbig
  exact Nat.le_of_mul_le_mul_right hcancel (Nat.pow_pos hn 128000)

/-- The fixed factorial upper bound used in the original B=15360 plan. -/
theorem i11_factorial_tail_constant_lt :
    ((2 * Nat.factorial 11) ^ 11) ^ 1000 * 2 ^ 7040 < (2 : ℕ) ^ 304040 := by
  have hfactorial : 2 * Nat.factorial 11 < (2 : ℕ) ^ 27 := by decide
  have hp : (2 * Nat.factorial 11) ^ 11000 < ((2 : ℕ) ^ 27) ^ 11000 :=
    Nat.pow_lt_pow_left hfactorial (by decide : 11000 ≠ 0)
  calc
    ((2 * Nat.factorial 11) ^ 11) ^ 1000 * 2 ^ 7040 =
        (2 * Nat.factorial 11) ^ 11000 * 2 ^ 7040 := by rw [← pow_mul]
    _ < ((2 : ℕ) ^ 27) ^ 11000 * 2 ^ 7040 :=
      Nat.mul_lt_mul_of_pos_right hp (Nat.pow_pos (by decide : 0 < 2) 7040)
    _ = (2 : ℕ) ^ (27 * 11000 + 7040) := by rw [← pow_mul, ← pow_add]
    _ = (2 : ℕ) ^ 304040 := by rfl

/-- A counterexample above the fixed height is impossible once the displayed
product bound for the actual smallPrimePart is proved. This premise is not
assumed to follow merely from the abstract five-edge theorem. -/
theorem i11_noCommon_false_of_product {n j Y : ℕ}
    (hheight : (2 : ℕ) ^ 15360 ≤ n) (hij : 11 < j) (hjn : j ≤ n / 2)
    (hnY : n ≤ 2 * Y)
    (hproduct : (smallPrimePart n 11) ^ 1000 * Y ^ 640 ≤ n ^ 4000)
    (hno : ¬ Common n 11 j) : False := by
  have hn : 0 < n := (Nat.pow_pos (by decide : 0 < 2) 15360).trans_le hheight
  have hsmall : 110 ≤ (2 : ℕ) ^ 7 := by decide
  have hpow : (2 : ℕ) ^ 7 ≤ 2 ^ 15360 :=
    pow_le_pow_right' (by decide : 1 ≤ (2 : ℕ)) (by decide : 7 ≤ 15360)
  have hlarge : 11 * (11 - 1) ≤ n := hsmall.trans (hpow.trans hheight)
  have hd : windowDegree 11 3 7 = 84 := by decide
  have hcounter : windowConstant 11 3 7 * n ^ 121 ≤
      (2 * Nat.factorial 11) ^ 11 * (smallPrimePart n 11) ^ 11 * n ^ 84 := by
    have h := noCommon_bernoulli_size (i := 11) (r := 3) (s := 7)
      (by decide) hij hjn (by decide) hlarge hno
    simpa only [hd] using h
  have hK : 1 ≤ windowConstant 11 3 7 := window_constant_pos 11 3 7
  have hbase : n ^ 121 ≤
      (2 * Nat.factorial 11) ^ 11 * (smallPrimePart n 11) ^ 11 * n ^ 84 := by
    calc
      n ^ 121 = 1 * n ^ 121 := by ring
      _ ≤ windowConstant 11 3 7 * n ^ 121 := Nat.mul_le_mul_right _ hK
      _ ≤ (2 * Nat.factorial 11) ^ 11 * (smallPrimePart n 11) ^ 11 * n ^ 84 := hcounter
  have hbound : n ^ 40 ≤ ((2 * Nat.factorial 11) ^ 11) ^ 1000 * 2 ^ 7040 :=
    arithmetic_tail_power_bound (U := smallPrimePart n 11)
      (C := (2 * Nat.factorial 11) ^ 11) hn hnY hbase hproduct
  have hupper : n ^ 40 < (2 : ℕ) ^ 304040 := hbound.trans_lt i11_factorial_tail_constant_lt
  have hlower : (2 : ℕ) ^ 614400 ≤ n ^ 40 := by
    simpa only [← pow_mul] using Nat.pow_le_pow_left hheight 40
  have horder : (2 : ℕ) ^ 304040 ≤ 2 ^ 614400 :=
    pow_le_pow_right' (by decide : 1 ≤ (2 : ℕ)) (by decide : 304040 ≤ 614400)
  exact (not_lt_of_ge (horder.trans hlower)) hupper

end Math.B699.I11WeightedProduct
