from pathlib import Path
import re,json,hashlib
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-initial-height-assembly-5e2d13bb'
out.mkdir(exist_ok=True)
assert not (out/'FREEZE.json').exists()
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
own=base+'.experiments.«huan-i11-initial-height-assembly-5e2d13bb»'
def write(n,s):
    p=out/(n+'.lean');assert not p.exists();p.write_text(s,encoding='utf-8')
write('WindowBounds',f'''import {base}.lean.I11SmallPrimes.Window
import {base}.lean.I11Component.CeilHalf

/-! UNCOMPILED CANDIDATE. Actual component bounds follow from a positive
cofactor window; ceil-half inequalities are proved for all natural n. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11InitialHeight
open B699LowIndex.I11SmallPrimes B699LowIndex.I11FiveThreeComponentEdge

theorem prime_component_le_of_window {{n p : ℕ}} (window : PrimeWindow n p) :
    primeComponent n p ≤ n := by
  calc
    primeComponent n p = 1 * primeComponent n p := by rw [one_mul]
    _ ≤ window.cofactor * primeComponent n p :=
      Nat.mul_le_mul_right _ window.cofactor_pos
    _ = n - window.offset := window.equation
    _ ≤ n := Nat.sub_le _ _

theorem actual_prime_component_le {{n p : ℕ}} (hn : 11 ≤ n) (hp : p.Prime) :
    primeComponent n p ≤ n := by
  obtain ⟨window⟩ := primeWindow_nonempty (n := n) (p := p) hn hp
  exact prime_component_le_of_window window

theorem ceil_half_positive {{n : ℕ}} (hn : 1 ≤ n) : 1 ≤ ceilHalf n := by
  dsimp only [ceilHalf]
  omega

theorem n_le_twice_ceil_half (n : ℕ) : n ≤ 2 * ceilHalf n := by
  dsimp only [ceilHalf]
  omega

end Math.B699.I11InitialHeight
''')
write('Product',f'''import {own}.WindowBounds
import {base}.lean.I11WeightedProduct.Product
import {base}.lean.I11Component.ActualInstance
import {base}.lean.I11TwoFiveFinal.Component
import {base}.lean.I11SevenTwoFinal.Component
import {base}.lean.I11ThreeTwoFinal.Component
import {base}.lean.I11FiveSevenFinal.Component

/-! UNCOMPILED CANDIDATE. All five edges and all four component bounds
are supplied by actual theorems. No graph edge, product identity, or bound is
an external assumption. The height is the existing edge domain. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11InitialHeight
open B699LargePrimeStructure B699LowIndex.I11SmallPrimes
open B699LowIndex.I11FiveThreeComponentEdge

theorem actual_components_product_bound {{n : ℕ}} (hheight : (2 : ℕ) ^ 15360 ≤ n) :
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

theorem actual_small_prime_part_bound {{n : ℕ}} (hheight : (2 : ℕ) ^ 15360 ≤ n) :
    (smallPrimePart n 11) ^ 1000 * (ceilHalf n) ^ 640 ≤ n ^ 4000 := by
  rw [smallPrimePart_eq_four_components n]
  exact actual_components_product_bound hheight

end Math.B699.I11InitialHeight
''')
write('Height',f'''import {own}.Product
import {base}.lean.I11WeightedProduct.Tail

/-! UNCOMPILED CANDIDATE. The original counterexample assumptions force the
initial height. The complete actual product inequality is supplied internally.
Common keeps the source's inclusive prime threshold p>=11. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11InitialHeight
open B699LargePrimeStructure B699LowIndex.I11FiveThreeComponentEdge

theorem actual_i11_below_15360 {{n j : ℕ}}
    (hij : 11 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 11 j) :
    n < (2 : ℕ) ^ 15360 := by
  by_contra hnot
  have hheight : (2 : ℕ) ^ 15360 ≤ n := Nat.le_of_not_gt hnot
  exact Math.B699.I11WeightedProduct.i11_noCommon_false_of_product
    (n := n) (j := j) (Y := ceilHalf n)
    hheight hij hjn (n_le_twice_ceil_half n)
    (actual_small_prime_part_bound hheight) hno

end Math.B699.I11InitialHeight
''')
write('Compression',f'''import {own}.Height
import {base}.lean.CubicBatches.ActualCompression

/-! UNCOMPILED CANDIDATE. The established six-pair numerical compression
now receives the initial height from the actual five-edge proof.
Only the original hij/hjn/noCommon assumptions remain. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11InitialHeight
open B699LargePrimeStructure

theorem actual_i11_below_109 {{n j : ℕ}}
    (hij : 11 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 11 j) :
    n < (2 : ℕ) ^ 109 := by
  exact Math.B699.I11VerifiedCubicCompression.actual_i11_below_109_of_initial_height
    hij hjn hno (actual_i11_below_15360 hij hjn hno)

end Math.B699.I11InitialHeight
''')
(out/'CHECKPOINT.md').write_text('''# Initial-height assembly checkpoint

Owner: /root/pade_construction; only this new directory. Start2026-09-11 21:52:14 UTC; checkpoint22:12:14 UTC, not a total deadline.
Expected if verified: remove the entire i11 n>=2^15360 region, then the accepted 387-block six-pair compression reduces remaining counterexamples to n<2^109. Original j-domain and inclusive prime threshold preserved.
Actual: complete four-module proof candidate being source-audited; no Lean/Git. Product/Tail and remaining3/2,5/7 final consumers still await parent verification. Original B remains0/19.
No tree, number, abstract component bound, product identity, product inequality, or initial-height assumption is left in the two final height roots.
''',encoding='utf-8')
print('Wrote four actual assembly modules; no Lean.')
