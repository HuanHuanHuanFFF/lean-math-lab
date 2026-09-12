import Mathlib.Data.Nat.Choose.Factorization
import Lean.Elab.Tactic.Omega
import Mathlib.Tactic.SplitIfs

/-! UNCOMPILED. An actual finite C2 prime-power product, with zero tails proved internally. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.C2Direct
open scoped BigOperators

def total (x y z : ℕ) : ℕ := x + y + z
def layer (x y z q : ℕ) : ℕ := if 2 * q + 1 ≤ x % q + y % q + z % q then 1 else 0
def cutoff (x y z p : ℕ) : ℕ := Nat.log p (total x y z) + 1
def exponent (x y z p : ℕ) : ℕ :=
  ∑ h ∈ Finset.Ico 1 (cutoff x y z p), layer x y z (p ^ h)
def primeSet (x y z : ℕ) : Finset ℕ :=
  (Finset.range (total x y z + 1)).filter Nat.Prime
def c2 (x y z : ℕ) : ℕ :=
  ∏ p ∈ primeSet x y z, p ^ exponent x y z p

theorem layer_one (x y z : ℕ) : layer x y z 1 = 0 := by simp [layer]

theorem layer_support (x y z q : ℕ) (h : layer x y z q = 1) :
    2 * q + 1 ≤ total x y z := by
  have hx := Nat.mod_le x q
  have hy := Nat.mod_le y q
  have hz := Nat.mod_le z q
  unfold layer at h
  split_ifs at h with hc
  · unfold total
    omega
  · omega

theorem layer_zero_of_large (x y z q : ℕ) (hq : total x y z < q) :
    layer x y z q = 0 := by
  have hx := Nat.mod_le x q
  have hy := Nat.mod_le y q
  have hz := Nat.mod_le z q
  have hn : ¬ 2 * q + 1 ≤ x % q + y % q + z % q := by
    unfold total at hq
    omega
  simp only [layer, if_neg hn]

theorem layer_zero_above_cutoff (x y z p h : ℕ) (hp : p.Prime)
    (hh : cutoff x y z p ≤ h) : layer x y z (p ^ h) = 0 := by
  have hl : Nat.log p (total x y z) < h := by unfold cutoff at hh; omega
  exact layer_zero_of_large x y z (p ^ h) (Nat.lt_pow_of_log_lt hp.one_lt hl)

theorem layer_zero_outside (x y z p h : ℕ) (hp : p.Prime)
    (hh : h ∉ Finset.Ico 1 (cutoff x y z p)) : layer x y z (p ^ h) = 0 := by
  by_cases hz : h = 0
  · simpa only [hz, pow_zero] using layer_one x y z
  · have hm : cutoff x y z p ≤ h := by
      simp only [Finset.mem_Ico] at hh
      omega
    exact layer_zero_above_cutoff x y z p h hp hm

theorem exponent_zero_of_large_prime (x y z p : ℕ) (hp : p.Prime)
    (hlarge : total x y z < p) : exponent x y z p = 0 := by
  unfold exponent
  apply Finset.sum_eq_zero
  intro h hh
  have h1 : 1 ≤ h := (Finset.mem_Ico.mp hh).1
  have hpow : p ≤ p ^ h := by
    simpa only [pow_one] using Nat.pow_le_pow_right hp.pos h1
  exact layer_zero_of_large x y z (p ^ h) (hlarge.trans_le hpow)

theorem c2_pos (x y z : ℕ) : 0 < c2 x y z := by
  unfold c2
  apply Finset.prod_pos
  intro p hp
  exact Nat.pow_pos (Finset.mem_filter.mp hp).2.pos

theorem layer_swap (x y z q : ℕ) : layer x y z q = layer y x z q := by
  unfold layer
  rw [Nat.add_comm (x % q) (y % q)]

theorem exponent_swap (x y z p : ℕ) : exponent x y z p = exponent y x z p := by
  have hs : total x y z = total y x z := by unfold total; omega
  unfold exponent cutoff
  rw [hs]
  apply Finset.sum_congr rfl
  intro h hh
  exact layer_swap x y z (p ^ h)

theorem c2_swap (x y z : ℕ) : c2 x y z = c2 y x z := by
  have hs : total x y z = total y x z := by unfold total; omega
  unfold c2 primeSet
  rw [hs]
  apply Finset.prod_congr rfl
  intro p hp
  exact congrArg (fun k : ℕ => p ^ k) (exponent_swap x y z p)
end Math.B699.C2Direct
