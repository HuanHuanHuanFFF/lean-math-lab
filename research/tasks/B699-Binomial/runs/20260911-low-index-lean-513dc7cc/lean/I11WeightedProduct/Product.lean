import Mathlib.Algebra.Order.Monoid.Unbundled.Pow
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# The original five i11 edges give a pure natural-number product bound

UNCOMPILED CANDIDATE. All 32 disjunctive choices are explicit proof branches.
Each chosen vertex uses the maximum available edge weight. A vertex receiving
no chosen edge uses weight zero, derived from A_p <= n. Zero factors are allowed.
This theorem assumes the five displayed edges; it does not construct them from
Padé approximations or localize actual binomial prime powers.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.I11WeightedProduct

/-- A missing vertex contributes weight zero; the factor itself may vanish. -/
theorem zero_weight_bound {n Y A : ℕ} (hA : A ≤ n) :
    A ^ 1000 * Y ^ 0 ≤ n ^ 1000 := by
  simpa only [pow_zero, mul_one] using Nat.pow_le_pow_left hA 1000

/-- Combine four genuine factor bounds whose weights sum to at least 640. -/
theorem four_weighted_product_le {n Y A2 A3 A5 A7 : ℕ}
    (w2 w3 w5 w7 : ℕ) (hY : 1 ≤ Y) (hsum : 640 ≤ w2 + w3 + w5 + w7)
    (h2 : A2 ^ 1000 * Y ^ w2 ≤ n ^ 1000)
    (h3 : A3 ^ 1000 * Y ^ w3 ≤ n ^ 1000)
    (h5 : A5 ^ 1000 * Y ^ w5 ≤ n ^ 1000)
    (h7 : A7 ^ 1000 * Y ^ w7 ≤ n ^ 1000) :
    (A2 * A3 * A5 * A7) ^ 1000 * Y ^ 640 ≤ n ^ 4000 := by
  have hYpow : Y ^ 640 ≤ Y ^ (w2 + w3 + w5 + w7) :=
    pow_le_pow_right' hY hsum
  calc
    (A2 * A3 * A5 * A7) ^ 1000 * Y ^ 640 ≤
        (A2 * A3 * A5 * A7) ^ 1000 * Y ^ (w2 + w3 + w5 + w7) :=
      Nat.mul_le_mul_left _ hYpow
    _ = (A2 ^ 1000 * Y ^ w2 * (A3 ^ 1000 * Y ^ w3)) *
        (A5 ^ 1000 * Y ^ w5 * (A7 ^ 1000 * Y ^ w7)) := by
      simp only [mul_pow, pow_add]
      ring
    _ ≤ (n ^ 1000 * n ^ 1000) * (n ^ 1000 * n ^ 1000) :=
      Nat.mul_le_mul (Nat.mul_le_mul h2 h3) (Nat.mul_le_mul h5 h7)
    _ = n ^ ((1000 + 1000) + (1000 + 1000)) := by
      simp only [pow_add]
    _ = n ^ 4000 := by rfl

/-- The five original i11 edge statements, with denominator 1000 retained.
No distinct-position or positivity-of-factor assumption is present. -/
theorem i11_five_edges_product {n Y A2 A3 A5 A7 : ℕ}
    (hY : 1 ≤ Y) (h2n : A2 ≤ n) (h3n : A3 ≤ n)
    (h5n : A5 ≤ n) (h7n : A7 ≤ n)
    (h25 : A2 ^ 1000 * Y ^ 248 ≤ n ^ 1000 ∨ A5 ^ 1000 * Y ^ 252 ≤ n ^ 1000)
    (h72 : A7 ^ 1000 * Y ^ 60 ≤ n ^ 1000 ∨ A2 ^ 1000 * Y ^ 330 ≤ n ^ 1000)
    (h32 : A3 ^ 1000 * Y ^ 226 ≤ n ^ 1000 ∨ A2 ^ 1000 * Y ^ 268 ≤ n ^ 1000)
    (h53 : A5 ^ 1000 * Y ^ 354 ≤ n ^ 1000 ∨ A3 ^ 1000 * Y ^ 228 ≤ n ^ 1000)
    (h57 : A5 ^ 1000 * Y ^ 352 ≤ n ^ 1000 ∨ A7 ^ 1000 * Y ^ 216 ≤ n ^ 1000) :
    (A2 * A3 * A5 * A7) ^ 1000 * Y ^ 640 ≤ n ^ 4000 := by
  have h2zero : A2 ^ 1000 * Y ^ 0 ≤ n ^ 1000 := zero_weight_bound (Y := Y) h2n
  have h3zero : A3 ^ 1000 * Y ^ 0 ≤ n ^ 1000 := zero_weight_bound (Y := Y) h3n
  have h5zero : A5 ^ 1000 * Y ^ 0 ≤ n ^ 1000 := zero_weight_bound (Y := Y) h5n
  have h7zero : A7 ^ 1000 * Y ^ 0 ≤ n ^ 1000 := zero_weight_bound (Y := Y) h7n
  rcases h25 with h25 | h25
  · rcases h72 with h72 | h72
    · rcases h32 with h32 | h32
      · rcases h53 with h53 | h53
        · rcases h57 with h57 | h57
          · exact four_weighted_product_le 248 226 354 60 hY (by decide) h25 h32 h53 h72
          · exact four_weighted_product_le 248 226 354 216 hY (by decide) h25 h32 h53 h57
        · rcases h57 with h57 | h57
          · exact four_weighted_product_le 248 228 352 60 hY (by decide) h25 h53 h57 h72
          · exact four_weighted_product_le 248 228 0 216 hY (by decide) h25 h53 h5zero h57
      · rcases h53 with h53 | h53
        · rcases h57 with h57 | h57
          · exact four_weighted_product_le 268 0 354 60 hY (by decide) h32 h3zero h53 h72
          · exact four_weighted_product_le 268 0 354 216 hY (by decide) h32 h3zero h53 h57
        · rcases h57 with h57 | h57
          · exact four_weighted_product_le 268 228 352 60 hY (by decide) h32 h53 h57 h72
          · exact four_weighted_product_le 268 228 0 216 hY (by decide) h32 h53 h5zero h57
    · rcases h32 with h32 | h32
      · rcases h53 with h53 | h53
        · rcases h57 with h57 | h57
          · exact four_weighted_product_le 330 226 354 0 hY (by decide) h72 h32 h53 h7zero
          · exact four_weighted_product_le 330 226 354 216 hY (by decide) h72 h32 h53 h57
        · rcases h57 with h57 | h57
          · exact four_weighted_product_le 330 228 352 0 hY (by decide) h72 h53 h57 h7zero
          · exact four_weighted_product_le 330 228 0 216 hY (by decide) h72 h53 h5zero h57
      · rcases h53 with h53 | h53
        · rcases h57 with h57 | h57
          · exact four_weighted_product_le 330 0 354 0 hY (by decide) h72 h3zero h53 h7zero
          · exact four_weighted_product_le 330 0 354 216 hY (by decide) h72 h3zero h53 h57
        · rcases h57 with h57 | h57
          · exact four_weighted_product_le 330 228 352 0 hY (by decide) h72 h53 h57 h7zero
          · exact four_weighted_product_le 330 228 0 216 hY (by decide) h72 h53 h5zero h57
  · rcases h72 with h72 | h72
    · rcases h32 with h32 | h32
      · rcases h53 with h53 | h53
        · rcases h57 with h57 | h57
          · exact four_weighted_product_le 0 226 354 60 hY (by decide) h2zero h32 h53 h72
          · exact four_weighted_product_le 0 226 354 216 hY (by decide) h2zero h32 h53 h57
        · rcases h57 with h57 | h57
          · exact four_weighted_product_le 0 228 352 60 hY (by decide) h2zero h53 h57 h72
          · exact four_weighted_product_le 0 228 252 216 hY (by decide) h2zero h53 h25 h57
      · rcases h53 with h53 | h53
        · rcases h57 with h57 | h57
          · exact four_weighted_product_le 268 0 354 60 hY (by decide) h32 h3zero h53 h72
          · exact four_weighted_product_le 268 0 354 216 hY (by decide) h32 h3zero h53 h57
        · rcases h57 with h57 | h57
          · exact four_weighted_product_le 268 228 352 60 hY (by decide) h32 h53 h57 h72
          · exact four_weighted_product_le 268 228 252 216 hY (by decide) h32 h53 h25 h57
    · rcases h32 with h32 | h32
      · rcases h53 with h53 | h53
        · rcases h57 with h57 | h57
          · exact four_weighted_product_le 330 226 354 0 hY (by decide) h72 h32 h53 h7zero
          · exact four_weighted_product_le 330 226 354 216 hY (by decide) h72 h32 h53 h57
        · rcases h57 with h57 | h57
          · exact four_weighted_product_le 330 228 352 0 hY (by decide) h72 h53 h57 h7zero
          · exact four_weighted_product_le 330 228 252 216 hY (by decide) h72 h53 h25 h57
      · rcases h53 with h53 | h53
        · rcases h57 with h57 | h57
          · exact four_weighted_product_le 330 0 354 0 hY (by decide) h72 h3zero h53 h7zero
          · exact four_weighted_product_le 330 0 354 216 hY (by decide) h72 h3zero h53 h57
        · rcases h57 with h57 | h57
          · exact four_weighted_product_le 330 228 352 0 hY (by decide) h72 h53 h57 h7zero
          · exact four_weighted_product_le 330 228 252 216 hY (by decide) h72 h53 h25 h57

end Math.B699.I11WeightedProduct
