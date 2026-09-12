import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.CofactorCover

/-! Complete uncompiled candidate: the critical three-window exponent cancels exactly. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.CriticalPadeHeight
open B699LowIndex B699LargePrimeStructure

theorem critical_small_part_lower {n i j r s t : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hlarge : i * (i - 1) ≤ n) (hlambda : 2 * s - r = i) (ht : t ≤ i)
    (hdegree : windowDegree i r s = (i - t) * i) (hno : ¬ Common n i j) :
    n ^ t ≤ (2 * i.factorial) * smallPrimePart n i := by
  have hn : 0 < n := by omega
  have hbase := noCommon_bernoulli_size (r := r) hi hij hjn hsi hlarge hno
  rw [hlambda, hdegree] at hbase
  have hK : 1 ≤ windowConstant i r s := window_constant_pos i r s
  have hremove : n ^ (i * i) ≤
      (2 * i.factorial) ^ i * (smallPrimePart n i) ^ i * n ^ ((i - t) * i) := by
    calc
      n ^ (i * i) = 1 * n ^ (i * i) := by ring
      _ ≤ windowConstant i r s * n ^ (i * i) := Nat.mul_le_mul_right _ hK
      _ ≤ _ := hbase
  have hshape : n ^ ((i - t) * i) * (n ^ t) ^ i = n ^ (i * i) := by
    rw [← pow_mul, ← pow_add]
    congr 1
    rw [← Nat.add_mul, Nat.sub_add_cancel ht]
  have hmul : n ^ ((i - t) * i) * (n ^ t) ^ i ≤
      n ^ ((i - t) * i) * ((2 * i.factorial) * smallPrimePart n i) ^ i := by
    calc
      _ = n ^ (i * i) := hshape
      _ ≤ (2 * i.factorial) ^ i * (smallPrimePart n i) ^ i * n ^ ((i - t) * i) :=
        hremove
      _ = _ := by rw [mul_pow]; ring
  have hpowers := Nat.le_of_mul_le_mul_left hmul (Nat.pow_pos hn)
  exact (Nat.pow_le_pow_iff_left (by omega : i ≠ 0)).mp hpowers

theorem critical_budget_bound {n U C Y t : ℕ} (hU : 0 < U)
    (hlower : n ^ t ≤ C * U)
    (hcapacity : U ^ 1000 * Y ^ 10 ≤ n ^ (1000 * t)) :
    Y ^ 10 ≤ C ^ 1000 := by
  have hpower : n ^ (1000 * t) ≤ C ^ 1000 * U ^ 1000 := by
    simpa only [mul_pow, ← pow_mul, Nat.mul_comm t 1000] using
      Nat.pow_le_pow_left hlower 1000
  have hcancel : U ^ 1000 * Y ^ 10 ≤ U ^ 1000 * C ^ 1000 := by
    calc
      _ ≤ n ^ (1000 * t) := hcapacity
      _ ≤ C ^ 1000 * U ^ 1000 := hpower
      _ = _ := Nat.mul_comm _ _
  exact Nat.le_of_mul_le_mul_left hcancel (Nat.pow_pos hU)

end Math.B699.CriticalPadeHeight
