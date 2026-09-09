import research.tasks.«B699-Binomial».runs.«20260909-discriminant-height-9d40056a».lean.HeightArithmetic
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Algebra.Order.BigOperators.Group.Finset

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699Height

/-- The lower numerator estimate is uniform in the whole legal original domain. -/
theorem pow_le_two_pow_mul_descFactorial {n i : ℕ} (hni : 2 * i ≤ n) :
    n ^ i ≤ 2 ^ i * n.descFactorial i := by
  calc
    n ^ i = ∏ r ∈ Finset.range i, n := by simp
    _ ≤ ∏ r ∈ Finset.range i, 2 * (n - r) := by
      apply Finset.prod_le_prod
      intro r hr
      have hri := Finset.mem_range.mp hr
      omega
    _ = 2 ^ i * n.descFactorial i := by
      rw [Finset.prod_mul_distrib, Nat.descFactorial_eq_prod_range]
      simp

/-- This step multiplies by the exact factorial before making any estimates.
The discriminant/content inequality is explicitly supplied at this arithmetic layer. -/
theorem factorial_cancelled_content {n i U V δ : ℕ}
    (hsplit : U * V = n.choose i)
    (hcontent : V ^ (2 * (i - 1)) ≤ δ) :
    (n.descFactorial i) ^ (2 * (i - 1)) ≤
      U ^ (2 * (i - 1)) * (i.factorial ^ (2 * (i - 1)) * δ) := by
  rw [Nat.descFactorial_eq_factorial_mul_choose, ← hsplit]
  calc
    (i.factorial * (U * V)) ^ (2 * (i - 1)) =
        U ^ (2 * (i - 1)) *
          (i.factorial ^ (2 * (i - 1)) * V ^ (2 * (i - 1))) := by
      simp only [mul_pow]
      ring
    _ ≤ _ := Nat.mul_le_mul_left _ (Nat.mul_le_mul_left _ hcontent)

/-- Complete natural-number size bridge from the two concrete discriminant
inputs. Positivity and the input formula itself are not assumed proved here. -/
theorem scaled_power_of_factorial_discriminant {n i t U V δ : ℕ}
    (hni : 2 * i ≤ n) (hsplit : U * V = n.choose i)
    (hsmall : U ≤ n ^ t)
    (hcontent : V ^ (2 * (i - 1)) ≤ δ)
    (hdiscr : (i.factorial ^ (2 * (i - 1)) * δ) ^ 2 ≤
      i ^ (i * (i + 1)) * n ^ (3 * i * (i - 1))) :
    n ^ (4 * i * (i - 1)) ≤
      2 ^ (4 * i * (i - 1)) * i ^ (i * (i + 1)) *
        n ^ ((3 * i + 4 * t) * (i - 1)) := by
  have hnum := pow_le_two_pow_mul_descFactorial hni
  have hcan := factorial_cancelled_content hsplit hcontent
  have hcan2 := Nat.pow_le_pow_left hcan 2
  have hsmall4 := Nat.pow_le_pow_left hsmall (4 * (i - 1))
  calc
    n ^ (4 * i * (i - 1)) = (n ^ i) ^ (4 * (i - 1)) := by
      rw [← pow_mul]
      congr 1
      ring
    _ ≤ (2 ^ i * n.descFactorial i) ^ (4 * (i - 1)) :=
      Nat.pow_le_pow_left hnum _
    _ = 2 ^ (4 * i * (i - 1)) *
        ((n.descFactorial i) ^ (2 * (i - 1))) ^ 2 := by
      simp only [mul_pow, ← pow_mul]
      congr 1 <;> congr 1 <;> ring
    _ ≤ 2 ^ (4 * i * (i - 1)) *
        (U ^ (2 * (i - 1)) * (i.factorial ^ (2 * (i - 1)) * δ)) ^ 2 :=
      Nat.mul_le_mul_left _ hcan2
    _ = 2 ^ (4 * i * (i - 1)) *
        (U ^ (4 * (i - 1)) * (i.factorial ^ (2 * (i - 1)) * δ) ^ 2) := by
      simp only [mul_pow, ← pow_mul]
      congr 1
      congr 1
      congr 1
      ring
    _ ≤ 2 ^ (4 * i * (i - 1)) *
        ((n ^ t) ^ (4 * (i - 1)) *
          (i ^ (i * (i + 1)) * n ^ (3 * i * (i - 1)))) :=
      Nat.mul_le_mul_left _ (Nat.mul_le_mul hsmall4 hdiscr)
    _ = _ := by
      rw [← pow_mul]
      have hexp : t * (4 * (i - 1)) + 3 * i * (i - 1) =
          (3 * i + 4 * t) * (i - 1) := by ring
      calc
        _ = (2 ^ (4 * i * (i - 1)) * i ^ (i * (i + 1))) *
            (n ^ (t * (4 * (i - 1))) * n ^ (3 * i * (i - 1))) := by ring
        _ = _ := by rw [← pow_add, hexp]

/-- The exact factorial-cancelled data imply the advertised effective height.
This is conditional arithmetic, pending the actual-polynomial inputs. -/
theorem height_of_factorial_discriminant {n i U V δ : ℕ}
    (hn : 0 < n) (hi : 3 ≤ i) (hni : 2 * i ≤ n)
    (hcount : 4 * i.primesBelow.card < i)
    (hsplit : U * V = n.choose i)
    (hsmall : U ≤ n ^ i.primesBelow.card)
    (hcontent : V ^ (2 * (i - 1)) ≤ δ)
    (hdiscr : (i.factorial ^ (2 * (i - 1)) * δ) ^ 2 ≤
      i ^ (i * (i + 1)) * n ^ (3 * i * (i - 1))) :
    n ≤ effectiveHeight i := by
  apply le_effectiveHeight_of_pow_le (by omega) hcount
  exact residual_power_le_of_discriminant_power hn hi hcount
    (scaled_power_of_factorial_discriminant hni hsplit hsmall hcontent hdiscr)

end B699Height
