import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-window-prime-assignment-5e2d13bb».Remainders
import Mathlib.Algebra.Order.BigOperators.Group.Finset

/-! UNCOMPILED. The arbitrary admissible weights are applied to the actual
remainders already proved to have product k!. No weighted conclusion is an input. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.WindowPrimeAssignment
open scoped BigOperators

theorem weighted_remainders_le (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n)
    (w : ℕ → ℕ) (L : ℕ) (hw : ∀ r : ℕ, r < k → w r ≤ L) :
    (∏ r ∈ Finset.range k, windowRemainder n k hk hkn r ^ w r) ≤ k.factorial ^ L := by
  calc
    _ ≤ ∏ r ∈ Finset.range k, windowRemainder n k hk hkn r ^ L := by
      apply Finset.prod_le_prod'
      intro r hr
      exact Nat.pow_le_pow_right (remainder_pos n k hk hkn r (Finset.mem_range.mp hr))
        (hw r (Finset.mem_range.mp hr))
    _ = (∏ r ∈ Finset.range k, windowRemainder n k hk hkn r) ^ L :=
      Finset.prod_pow (Finset.range k) L (windowRemainder n k hk hkn)
    _ = k.factorial ^ L := by rw [remainders_product n k hk hkn]

theorem thirteen_remainders_product (n : ℕ) (hn : 13 ≤ n) :
    (∏ r ∈ Finset.range 13, windowRemainder n 13 (by decide) hn r) =
      Nat.factorial 13 :=
  remainders_product n 13 (by decide) hn

theorem thirteen_weighted_remainders_le (n : ℕ) (hn : 13 ≤ n)
    (w : ℕ → ℕ) (hw : ∀ r : ℕ, r < 13 → w r ≤ 16) :
    (∏ r ∈ Finset.range 13, windowRemainder n 13 (by decide) hn r ^ w r) ≤
      (Nat.factorial 13) ^ 16 :=
  weighted_remainders_le n 13 (by decide) hn w 16 hw

theorem thirteen_linear_weight_remainders_le (n : ℕ) (hn : 13 ≤ n) :
    (∏ r ∈ Finset.range 13, windowRemainder n 13 (by decide) hn r ^ (16 - r)) ≤
      (Nat.factorial 13) ^ 16 :=
  weighted_remainders_le n 13 (by decide) hn (fun r => 16 - r) 16
    (fun r _ => Nat.sub_le 16 r)

end Math.B699.WindowPrimeAssignment
