import Mathlib.Data.Nat.Size
import Mathlib.Tactic.Omega
import Mathlib.Tactic.Ring

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699Dyadic

/-- A natural number stored as a small mantissa times a power of two. -/
structure Dyadic where
  mantissa : ℕ
  exponent : ℕ
  deriving DecidableEq, Repr

namespace Dyadic

def value (x : Dyadic) : ℕ := x.mantissa * 2 ^ x.exponent

end Dyadic

def embed (n : ℕ) : Dyadic := ⟨n, 0⟩

def one : Dyadic := embed 1

@[simp] theorem value_embed (n : ℕ) : (embed n).value = n := by
  simp [embed, Dyadic.value]

@[simp] theorem value_one : one.value = 1 := by
  simp [one]

/-- The ceiling quotient; its semantic use below always has a positive divisor. -/
def ceilDiv (m d : ℕ) : ℕ := m / d + if m % d = 0 then 0 else 1

theorem quotient_mul_le (m d : ℕ) : (m / d) * d ≤ m := by
  have h := Nat.mod_add_div m d
  rw [Nat.mul_comm d (m / d)] at h
  omega

theorem le_ceilDiv_mul (m d : ℕ) (hd : 0 < d) : m ≤ ceilDiv m d * d := by
  have h := Nat.mod_add_div m d
  rw [Nat.mul_comm d (m / d)] at h
  have hr := Nat.mod_lt m hd
  by_cases hz : m % d = 0
  · simp only [ceilDiv, if_pos hz, Nat.add_zero]
    omega
  · simp only [ceilDiv, if_neg hz, Nat.add_mul, Nat.one_mul]
    omega

def mulDownShift (shift : ℕ) (x y : Dyadic) : Dyadic :=
  ⟨x.mantissa * y.mantissa / 2 ^ shift, x.exponent + y.exponent + shift⟩

def mulUpShift (shift : ℕ) (x y : Dyadic) : Dyadic :=
  ⟨ceilDiv (x.mantissa * y.mantissa) (2 ^ shift),
    x.exponent + y.exponent + shift⟩

theorem mulDownShift_le (shift : ℕ) (x y : Dyadic) :
    (mulDownShift shift x y).value ≤ x.value * y.value := by
  calc
    (mulDownShift shift x y).value =
        ((x.mantissa * y.mantissa / 2 ^ shift) * 2 ^ shift) *
          2 ^ (x.exponent + y.exponent) := by
      simp only [mulDownShift, Dyadic.value, pow_add]
      ring
    _ ≤ (x.mantissa * y.mantissa) * 2 ^ (x.exponent + y.exponent) :=
      Nat.mul_le_mul (quotient_mul_le _ _) (Nat.le_refl _)
    _ = x.value * y.value := by
      simp only [Dyadic.value, pow_add]
      ring

theorem mul_le_mulUpShift (shift : ℕ) (x y : Dyadic) :
    x.value * y.value ≤ (mulUpShift shift x y).value := by
  calc
    x.value * y.value =
        (x.mantissa * y.mantissa) * 2 ^ (x.exponent + y.exponent) := by
      simp only [Dyadic.value, pow_add]
      ring
    _ ≤ (ceilDiv (x.mantissa * y.mantissa) (2 ^ shift) * 2 ^ shift) *
        2 ^ (x.exponent + y.exponent) :=
      Nat.mul_le_mul (le_ceilDiv_mul _ _ (pow_pos (by decide) _)) (Nat.le_refl _)
    _ = (mulUpShift shift x y).value := by
      simp only [mulUpShift, Dyadic.value, pow_add]
      ring

/-- One spare bit accommodates an upward rounding carry. Soundness does not
require a positive precision, or any theorem about this chosen shift. -/
def productShift (bits : ℕ) (x y : Dyadic) : ℕ :=
  (x.mantissa * y.mantissa).size + 1 - bits

def mulDown (bits : ℕ) (x y : Dyadic) : Dyadic :=
  mulDownShift (productShift bits x y) x y

def mulUp (bits : ℕ) (x y : Dyadic) : Dyadic :=
  mulUpShift (productShift bits x y) x y

theorem mulDown_le (bits : ℕ) (x y : Dyadic) :
    (mulDown bits x y).value ≤ x.value * y.value :=
  mulDownShift_le _ _ _

theorem mul_le_mulUp (bits : ℕ) (x y : Dyadic) :
    x.value * y.value ≤ (mulUp bits x y).value :=
  mul_le_mulUpShift _ _ _

end B699Dyadic

#print axioms B699Dyadic.mulDown_le
#print axioms B699Dyadic.mul_le_mulUp
