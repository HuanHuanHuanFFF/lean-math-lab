import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11SmallPrimes.Window
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Component.CeilHalf

/-! UNCOMPILED CANDIDATE. Actual component bounds follow from a positive
cofactor window; ceil-half inequalities are proved for all natural n. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11InitialHeight
open B699LowIndex.I11SmallPrimes B699LowIndex.I11FiveThreeComponentEdge

theorem prime_component_le_of_window {n p : ℕ} (window : PrimeWindow n p) :
    primeComponent n p ≤ n := by
  calc
    primeComponent n p = 1 * primeComponent n p := by rw [one_mul]
    _ ≤ window.cofactor * primeComponent n p :=
      Nat.mul_le_mul_right _ window.cofactor_pos
    _ = n - window.offset := window.equation
    _ ≤ n := Nat.sub_le _ _

theorem actual_prime_component_le {n p : ℕ} (hn : 11 ≤ n) (hp : p.Prime) :
    primeComponent n p ≤ n := by
  obtain ⟨window⟩ := primeWindow_nonempty (n := n) (p := p) hn hp
  exact prime_component_le_of_window window

theorem ceil_half_positive {n : ℕ} (hn : 1 ≤ n) : 1 ≤ ceilHalf n := by
  dsimp only [ceilHalf]
  omega

theorem n_le_twice_ceil_half (n : ℕ) : n ≤ 2 * ceilHalf n := by
  dsimp only [ceilHalf]
  omega

end Math.B699.I11InitialHeight
