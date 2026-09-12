import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-five-three-component-edge-5e2d13bb».WindowPair

/-! UNCOMPILED CANDIDATE. Actual (5,3) component edge for n>=2^15360.
No j or noCommon hypothesis is needed by this edge. The actual GrowthTrees
remain explicit until their source certificates have been accepted. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699LowIndex.I11FiveThreeComponentEdge
open B699LowIndex.I11SmallPrimes
open Math.B699.I11ActualPadeEdge Math.B699.I11ScaledBounds
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

theorem actual_five_three_component_edge
    (qt : ∀ row : Bool, GrowthTree qLambda (qWeight 5 3 (rowDelta row) (1 / 4375))
      (qCore 5 3 (1 / 4375)))
    (et : ∀ row : Bool, GrowthTree eLambda (eWeight 5 3 (rowDelta row) (1 / 4375))
      (eCore 5 3 (1 / 4375)))
    {n : ℕ} (hn : (2 : ℕ) ^ 15360 ≤ n) :
    (primeComponent n 5) ^ 1000 * ((n + 1) / 2) ^ 354 ≤ n ^ 1000 ∨
      (primeComponent n 3) ^ 1000 * ((n + 1) / 2) ^ 228 ≤ n ^ 1000 := by
  have hn20 : 20 ≤ n := twenty_le_of_power_bound (k := 15360) (by decide : 5 ≤ 15360) hn
  have hn11 : 11 ≤ n := Nat.le_trans (by decide : 11 ≤ 20) hn20
  have hY : fiveThreeY0 ≤ ceilHalf n := by
    change (2 : ℕ) ^ 15359 ≤ ceilHalf n
    exact ceilHalf_power_lower (k := 15359) hn
  obtain ⟨wp⟩ := primeWindow_nonempty (p := 5) hn11 (by decide : Nat.Prime 5)
  obtain ⟨wq⟩ := primeWindow_nonempty (p := 3) hn11 (by decide : Nat.Prime 3)
  exact component_edge_of_actual_windows qt et hn20 hY wp wq

end B699LowIndex.I11FiveThreeComponentEdge
#print axioms B699LowIndex.I11FiveThreeComponentEdge.actual_five_three_component_edge
