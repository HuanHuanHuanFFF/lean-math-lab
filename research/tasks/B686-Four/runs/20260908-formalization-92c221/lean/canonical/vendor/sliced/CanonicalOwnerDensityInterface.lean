/- Generated mechanically from the pinned upstream snapshot.
   source: local consumer interface; no upstream theorem body; lines: 
   Only imports/module paths are adapted; declaration/proof text below is copied. -/
/- Stable consumer shape for the canonical-owner matrix provider.  This is a
   consumer input shape, not an existence claim. -/
import Mathlib.Algebra.BigOperators.Ring.Nat
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Order.Interval.Finset.Nat

namespace B686CanonicalVendor
namespace CanonicalOwnerDensity

structure SystemInput (P k n d : ℕ) where
  distinguished : ℕ
  cell : ℕ → ℕ → ℕ
  lowerResidual : ℕ → ℕ
  upperResidual : ℕ → ℕ
  residual : ℕ
  distinguished_mem : distinguished ∈ Finset.Icc 1 k
  distinguished_four_dvd : 4 ∣ n + d + distinguished
  residual_dvd_factorial : residual ∣ (k - 1).factorial
  lower_residual_product :
    (∏ j ∈ Finset.Icc 1 k, lowerResidual j) = residual
  upper_residual_product :
    (∏ i ∈ Finset.Icc 1 k, upperResidual i) = residual
  lower_factorization :
    ∀ j, j ∈ Finset.Icc 1 k →
      n + j = lowerResidual j * ∏ i ∈ Finset.Icc 1 k, cell j i
  upper_factorization :
    ∀ i, i ∈ Finset.Icc 1 k →
      n + d + i =
        (if i = distinguished then 4 else 1) * upperResidual i *
          ∏ j ∈ Finset.Icc 1 k, cell j i
  shifted_difference_dvd :
    ∀ j, j ∈ Finset.Icc 1 k → ∀ i, i ∈ Finset.Icc 1 k →
      cell j i ∣ d + i - j
  cells_pairwise_coprime :
    ∀ j, j ∈ Finset.Icc 1 k → ∀ i, i ∈ Finset.Icc 1 k →
      ∀ j', j' ∈ Finset.Icc 1 k → ∀ i', i' ∈ Finset.Icc 1 k →
        (j, i) ≠ (j', i') → Nat.Coprime (cell j i) (cell j' i')
  global_product :
    residual *
        (∏ j ∈ Finset.Icc 1 k,
          ∏ i ∈ Finset.Icc 1 k, cell j i) = P

end CanonicalOwnerDensity
end B686CanonicalVendor
