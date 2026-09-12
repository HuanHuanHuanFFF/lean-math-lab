import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-initial-height-assembly-5e2d13bb».Product
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11WeightedProduct.Tail

/-! UNCOMPILED CANDIDATE. The original counterexample assumptions force the
initial height. The complete actual product inequality is supplied internally.
Common keeps the source's inclusive prime threshold p>=11. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11InitialHeight
open B699LargePrimeStructure B699LowIndex.I11FiveThreeComponentEdge

theorem actual_i11_below_15360 {n j : ℕ}
    (hij : 11 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 11 j) :
    n < (2 : ℕ) ^ 15360 := by
  by_contra hnot
  have hheight : (2 : ℕ) ^ 15360 ≤ n := Nat.le_of_not_gt hnot
  exact Math.B699.I11WeightedProduct.i11_noCommon_false_of_product
    (n := n) (j := j) (Y := ceilHalf n)
    hheight hij hjn (n_le_twice_ceil_half n)
    (actual_small_prime_part_bound hheight) hno

end Math.B699.I11InitialHeight
