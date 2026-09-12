import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.UpperHeight.I11SmallPart

/-! UNCOMPILED CANDIDATE. Strict n<H makes the existing upper-height
small-part bound strict. The original noCommon and actual U are retained. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699LowIndex.I11BoundedCofactors
open B699LargePrimeStructure B699LowIndex.UpperHeight

theorem actual_small_part_strict {n j H M : ℕ}
    (hij : 11 < j) (hjn : j ≤ n / 2) (hlarge : 110 ≤ n) (hnH : n < H)
    (hcertificate : (2 * Nat.factorial 11) ^ 11 * H ^ 7 ≤ i11K * M ^ 33)
    (hno : ¬ Common n 11 j) : n ^ 4 < M ^ 3 * smallPrimePart n 11 := by
  have hnpos : 0 < n := by omega
  have hweak := i11_noCommon_small_part_lower_of_upper_certificate
    hij hjn hlarge (Nat.le_of_lt hnH) hcertificate hno
  have hUpos : 0 < smallPrimePart n 11 := by
    apply Nat.pos_of_ne_zero
    intro hz
    rw [hz, Nat.mul_zero] at hweak
    have hp : 0 < n ^ 4 := Nat.pow_pos hnpos
    omega
  have hconstantPos : 0 < (2 * Nat.factorial 11) ^ 11 :=
    Nat.pow_pos (Nat.mul_pos (by decide : 0 < (2 : ℕ)) (Nat.factorial_pos 11))
  have hcertn : (2 * Nat.factorial 11) ^ 11 * n ^ 7 < i11K * M ^ 33 :=
    Nat.lt_of_lt_of_le
      (Nat.mul_lt_mul_of_pos_left (Nat.pow_lt_pow_left hnH (by decide : 7 ≠ 0)) hconstantPos)
      hcertificate
  have hbase : i11K * n ^ 121 ≤
      (2 * Nat.factorial 11) ^ 11 * (smallPrimePart n 11) ^ 11 * n ^ 84 := by
    have h := noCommon_bernoulli_size (r := 3) (s := 7)
      (by decide : 2 ≤ 11) hij hjn (by decide : 7 < 11) hlarge hno
    simpa only [i11_windowConstant, i11_windowDegree] using h
  have hstrict : (i11K * n ^ 84) * (n ^ 4) ^ 11 <
      (i11K * n ^ 84) * (M ^ 3 * smallPrimePart n 11) ^ 11 := by
    calc
      _ = (i11K * n ^ 121) * n ^ 7 := by
        simp only [← Nat.pow_mul, Nat.mul_assoc, ← Nat.pow_add]
      _ ≤ ((2 * Nat.factorial 11) ^ 11 * (smallPrimePart n 11) ^ 11 * n ^ 84) * n ^ 7 :=
        Nat.mul_le_mul_right _ hbase
      _ = ((2 * Nat.factorial 11) ^ 11 * n ^ 7) * (smallPrimePart n 11) ^ 11 * n ^ 84 := by ring
      _ < (i11K * M ^ 33) * (smallPrimePart n 11) ^ 11 * n ^ 84 :=
        Nat.mul_lt_mul_of_pos_right
          (Nat.mul_lt_mul_of_pos_right hcertn (Nat.pow_pos hUpos)) (Nat.pow_pos hnpos)
      _ = (i11K * n ^ 84) * (M ^ 3 * smallPrimePart n 11) ^ 11 := by
        simp only [Nat.mul_pow, ← Nat.pow_mul]
        ring
  have hpowers : (n ^ 4) ^ 11 < (M ^ 3 * smallPrimePart n 11) ^ 11 :=
    Nat.lt_of_mul_lt_mul_left hstrict
  exact (Nat.pow_lt_pow_iff_left (n := 11) (by decide)).mp hpowers

end B699LowIndex.I11BoundedCofactors
#print axioms B699LowIndex.I11BoundedCofactors.actual_small_part_strict
