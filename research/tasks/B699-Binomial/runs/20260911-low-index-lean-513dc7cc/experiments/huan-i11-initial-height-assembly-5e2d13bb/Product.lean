import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-initial-height-assembly-5e2d13bb».WindowBounds
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11WeightedProduct.Product
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Component.ActualInstance
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TwoFiveFinal.Component
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11SevenTwoFinal.Component
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11ThreeTwoFinal.Component
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11FiveSevenFinal.Component

/-! UNCOMPILED CANDIDATE. All five edges and all four component bounds
are supplied by actual theorems. No graph edge, product identity, or bound is
an external assumption. The height is the existing edge domain. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11InitialHeight
open B699LargePrimeStructure B699LowIndex.I11SmallPrimes
open B699LowIndex.I11FiveThreeComponentEdge

theorem actual_components_product_bound {n : ℕ} (hheight : (2 : ℕ) ^ 15360 ≤ n) :
    (primeComponent n 2 * primeComponent n 3 * primeComponent n 5 *
      primeComponent n 7) ^ 1000 * (ceilHalf n) ^ 640 ≤ n ^ 4000 := by
  have hn20 : 20 ≤ n :=
    twenty_le_of_power_bound (by decide : 5 ≤ 15360) hheight
  have hn11 : 11 ≤ n := Nat.le_trans (by decide : 11 ≤ 20) hn20
  have hn1 : 1 ≤ n := Nat.le_trans (by decide : 1 ≤ 20) hn20
  have hY : 1 ≤ ceilHalf n := ceil_half_positive hn1
  have h2n : primeComponent n 2 ≤ n := actual_prime_component_le hn11 (by decide)
  have h3n : primeComponent n 3 ≤ n := actual_prime_component_le hn11 (by decide)
  have h5n : primeComponent n 5 ≤ n := actual_prime_component_le hn11 (by decide)
  have h7n : primeComponent n 7 ≤ n := actual_prime_component_le hn11 (by decide)
  have h25 := Math.B699.I11TwoFiveFinalConsumers.actual_two_five_component_edge
    (n := n) hheight
  have h72 := Math.B699.I11SevenTwoFinalConsumers.actual_seven_two_component_edge
    (n := n) hheight
  have h32 := Math.B699.I11ThreeTwoFinalConsumers.actual_three_two_component_edge
    (n := n) hheight
  have h53 := B699LowIndex.I11FiveThreeFinalInstance.actual_five_three_component_edge
    (n := n) hheight
  have h57 := Math.B699.I11FiveSevenFinalConsumers.actual_five_seven_component_edge
    (n := n) hheight
  exact Math.B699.I11WeightedProduct.i11_five_edges_product
    hY h2n h3n h5n h7n
    (by simpa only [ceilHalf] using h25)
    (by simpa only [ceilHalf] using h72)
    (by simpa only [ceilHalf] using h32)
    (by simpa only [ceilHalf] using h53)
    (by simpa only [ceilHalf] using h57)

theorem actual_small_prime_part_bound {n : ℕ} (hheight : (2 : ℕ) ^ 15360 ≤ n) :
    (smallPrimePart n 11) ^ 1000 * (ceilHalf n) ^ 640 ≤ n ^ 4000 := by
  rw [smallPrimePart_eq_four_components n]
  exact actual_components_product_bound hheight

end Math.B699.I11InitialHeight
