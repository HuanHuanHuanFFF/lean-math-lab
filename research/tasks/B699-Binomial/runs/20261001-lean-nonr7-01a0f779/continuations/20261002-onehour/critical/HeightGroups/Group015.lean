import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.HeightGroups.Group014
import Mathlib.Algebra.Order.GroupWithZero.Basic
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Tactic.NormNum
set_option Elab.async false
/- Frozen member 60 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\CriticalPadeHeight\Windows.lean 97ca085094e8830a947d8cfde68955839070221a14fe17f7c62d7510119be713 -/
section HeightMember060




/-! Complete uncompiled candidate: ordinary localization supplies the actual 2/5 windows. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.CriticalPadeHeight
open B699LargePrimeStructure

theorem window_bounds {n a : ℕ} (hn : 66 ≤ n) (ha : a < 34) :
    (n + 1) / 2 ≤ n - a ∧ n - a ≤ 2 * ((n + 1) / 2) := by omega

theorem integer_window_gap33 {n a b : ℕ} (ha : a < 34) (hb : b < 34) :
    |((n - a : ℕ) : ℤ) - ((n - b : ℕ) : ℤ)| ≤ 33 := by
  apply abs_le.mpr
  constructor <;> omega

theorem large_height_bounds {n : ℕ} (hheight : (2 : ℕ) ^ 15360 ≤ n) :
    1122 ≤ n ∧ (2 : ℕ) ^ 15359 ≤ (n + 1) / 2 := by
  constructor
  · exact (by decide : 1122 ≤ (2 : ℕ) ^ 11).trans
      ((Nat.pow_le_pow_right (by decide : 0 < (2 : ℕ))
        (by decide : 11 ≤ 15360)).trans hheight)
  · simpa only [B699LowIndex.I11FiveThreeComponentEdge.ceilHalf] using
      B699LowIndex.I11FiveThreeComponentEdge.ceilHalf_power_lower (n := n) (k := 15359) hheight

theorem actual_two_five_component_capacity {n i : ℕ}
    (hi : 6 ≤ i) (hi34 : i ≤ 34) (hheight : (2 : ℕ) ^ 15360 ≤ n) :
    (primeComponent n i 2) ^ 1000 * ((n + 1) / 2) ^ 10 ≤ n ^ 1000 ∨
      (primeComponent n i 5) ^ 1000 * ((n + 1) / 2) ^ 10 ≤ n ^ 1000 := by
  obtain ⟨hlarge, hY⟩ := large_height_bounds hheight
  have hin : i ≤ n := by omega
  obtain ⟨a, A, hai, hA, hP⟩ :=
    exists_prime_window (n := n) (i := i) (p := 2) (by omega) hin (by decide)
  obtain ⟨b, C, hbi, hC, hQ⟩ :=
    exists_prime_window (n := n) (i := i) (p := 5) (by omega) hin (by decide)
  have ha : a < 34 := lt_of_lt_of_le hai hi34
  have hb : b < 34 := lt_of_lt_of_le hbi hi34
  have hpBounds := window_bounds (n := n) (by omega) ha
  have hqBounds := window_bounds (n := n) (by omega) hb
  have hPnat : (2 : ℕ) ^ ((n.choose i).factorization 2) * A = n - a := hP
  have hQnat : (5 : ℕ) ^ ((n.choose i).factorization 5) * C = n - b := hQ
  have hPint : (2 : ℤ) ^ ((n.choose i).factorization 2) * (A : ℤ) =
      ((n - a : ℕ) : ℤ) := by exact_mod_cast hPnat
  have hQint : (5 : ℤ) ^ ((n.choose i).factorization 5) * (C : ℤ) =
      ((n - b : ℕ) : ℤ) := by exact_mod_cast hQnat
  have hgap : |(2 : ℤ) ^ ((n.choose i).factorization 2) * (A : ℤ) -
      (5 : ℤ) ^ ((n.choose i).factorization 5) * (C : ℤ)| ≤ 33 := by
    rw [hPint, hQint]
    exact integer_window_gap33 ha hb
  have hcofactor := Math.B699.TwoFiveGap33.actual_two_five_weak_edge
    ((n + 1) / 2) ((n.choose i).factorization 2) ((n.choose i).factorization 5)
    A C hY hC (by simpa only [hPnat] using hpBounds.1)
    (by simpa only [hQnat] using hqBounds.1)
    (by simpa only [hQnat] using hqBounds.2) hgap
  rcases hcofactor with hleft | hright
  · exact Or.inl (component_cofactor_capacity
      (hP.le.trans (Nat.sub_le n a)) hleft)
  · exact Or.inr (component_cofactor_capacity
      (hQ.le.trans (Nat.sub_le n b)) hright)

theorem actual_small_part_capacity {n i : ℕ}
    (hi : 6 ≤ i) (hi34 : i ≤ 34) (hheight : (2 : ℕ) ^ 15360 ≤ n) :
    (smallPrimePart n i) ^ 1000 * ((n + 1) / 2) ^ 10 ≤
      n ^ (1000 * smallPrimeCount i) := by
  have hn : 0 < n := (Nat.pow_pos (by decide : 0 < (2 : ℕ))).trans_le hheight
  rcases actual_two_five_component_capacity hi hi34 hheight with hP | hQ
  · exact smallPrimePart_capacity hn (by decide : Nat.Prime 2) (by omega) hP
  · exact smallPrimePart_capacity hn (by decide : Nat.Prime 5) (by omega) hQ

end Math.B699.CriticalPadeHeight

end HeightMember060
/- Frozen member 61 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\CriticalPadeHeight\Constants.lean 53aef49f6b42eece604859f9db0a0b9a7cb5a93dfa361b08dc39894a98b18ccc -/
section HeightMember061




/-! Complete uncompiled candidate: the only factorial decision has 130 bits. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.CriticalPadeHeight

theorem factorial_34_bound : 2 * (34 : ℕ).factorial ≤ (2 : ℕ) ^ 129 := by decide

theorem factorial_bound {i : ℕ} (hi : i ≤ 34) :
    2 * i.factorial ≤ (2 : ℕ) ^ 129 :=
  (Nat.mul_le_mul_left 2 (Nat.factorial_le hi)).trans factorial_34_bound

theorem height_budget_contradiction {Y i : ℕ} (hi : i ≤ 34)
    (hY : (2 : ℕ) ^ 15359 ≤ Y) (hbound : Y ^ 10 ≤ (2 * i.factorial) ^ 1000) : False := by
  have hconstant : (2 * i.factorial) ^ 1000 ≤ (2 : ℕ) ^ 129000 := by
    simpa only [← pow_mul] using Nat.pow_le_pow_left (factorial_bound hi) 1000
  have hupper : Y ^ 10 ≤ (2 : ℕ) ^ 129000 := hbound.trans hconstant
  have hlower : (2 : ℕ) ^ 153590 ≤ Y ^ 10 := by
    simpa only [← pow_mul] using Nat.pow_le_pow_left hY 10
  have hstrict : (2 : ℕ) ^ 129000 < 2 ^ 153590 :=
    pow_lt_pow_right₀ (by decide : 1 < (2 : ℕ)) (by decide : 129000 < 153590)
  exact (not_lt_of_ge (hlower.trans hupper)) hstrict

end Math.B699.CriticalPadeHeight

end HeightMember061
/- Frozen member 62 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\CriticalPadeHeight\Final.lean fb5583db9713df13cdeb81863e1d1374c50d9b0a9d96e35f1753d89bd3b9cf86 -/
section HeightMember062




/-!
Complete uncompiled candidate: all mathematical special inputs are supplied.
These initial-height statements do not settle the remaining finite original cases.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.CriticalPadeHeight
open B699LowIndex B699LargePrimeStructure

theorem critical_noCommon_below_15360 {n i j r s t : ℕ}
    (hi : 6 ≤ i) (hi34 : i ≤ 34) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hlambda : 2 * s - r = i) (ht : t ≤ i)
    (hdegree : windowDegree i r s = (i - t) * i) (hcount : smallPrimeCount i = t)
    (hno : ¬ Common n i j) : n < (2 : ℕ) ^ 15360 := by
  by_contra hnot
  have hheight : (2 : ℕ) ^ 15360 ≤ n := Nat.le_of_not_gt hnot
  obtain ⟨hlarge0, hY⟩ := large_height_bounds hheight
  have hlarge : i * (i - 1) ≤ n := by
    calc
      i * (i - 1) ≤ 34 * (34 - 1) :=
        Nat.mul_le_mul hi34 (Nat.sub_le_sub_right hi34 1)
      _ ≤ n := hlarge0
  have hlower := critical_small_part_lower (by omega : 2 ≤ i) hij hjn hsi
    hlarge hlambda ht hdegree hno
  have hcapacity : (smallPrimePart n i) ^ 1000 * ((n + 1) / 2) ^ 10 ≤ n ^ (1000 * t) := by
    simpa only [hcount] using actual_small_part_capacity hi hi34 hheight
  have hbudget := critical_budget_bound (smallPrimePart_pos n i) hlower hcapacity
  exact height_budget_contradiction hi34 hY hbudget

theorem i28_parameters : 2 * 18 - 8 = (28 : ℕ) ∧
    windowDegree 28 8 18 = (28 - 9) * 28 ∧ smallPrimeCount 28 = 9 := by decide

theorem i31_parameters : 2 * 20 - 9 = (31 : ℕ) ∧
    windowDegree 31 9 20 = (31 - 10) * 31 ∧ smallPrimeCount 31 = 10 := by decide

theorem i34_parameters : 2 * 22 - 10 = (34 : ℕ) ∧
    windowDegree 34 10 22 = (34 - 11) * 34 ∧ smallPrimeCount 34 = 11 := by decide

theorem actual_i28_below_15360 {n j : ℕ}
    (hij : 28 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 28 j) : n < (2 : ℕ) ^ 15360 := by
  obtain ⟨hlambda, hdegree, hcount⟩ := i28_parameters
  exact critical_noCommon_below_15360 (r := 8) (s := 18) (t := 9)
    (by decide) (by decide) hij hjn (by decide) hlambda (by decide) hdegree hcount hno

theorem actual_i31_below_15360 {n j : ℕ}
    (hij : 31 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 31 j) : n < (2 : ℕ) ^ 15360 := by
  obtain ⟨hlambda, hdegree, hcount⟩ := i31_parameters
  exact critical_noCommon_below_15360 (r := 9) (s := 20) (t := 10)
    (by decide) (by decide) hij hjn (by decide) hlambda (by decide) hdegree hcount hno

theorem actual_i34_below_15360 {n j : ℕ}
    (hij : 34 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 34 j) : n < (2 : ℕ) ^ 15360 := by
  obtain ⟨hlambda, hdegree, hcount⟩ := i34_parameters
  exact critical_noCommon_below_15360 (r := 10) (s := 22) (t := 11)
    (by decide) (by decide) hij hjn (by decide) hlambda (by decide) hdegree hcount hno

end Math.B699.CriticalPadeHeight

end HeightMember062
