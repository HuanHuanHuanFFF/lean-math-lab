import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.HeightGroups.Group000
import Lean.Elab.Tactic.Omega
import Mathlib.Data.Nat.Basic
import Mathlib.Data.Nat.Find
import Mathlib.Tactic.Ring
set_option Elab.async false
/- Frozen member 4 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\DiscreteSelector\ShortPowerBounds.lean d22a95a35813976ace68c45bcd2c61c8b25b2236a00834c2d0f33c489315fea6 -/
section HeightMember004



/-!
UNCOMPILED CANDIDATE. Two short dyadic basis inequalities plus small exponent
comparisons imply the three capacity conditions. There are no five-row data
instances, logarithms, or computations of the original enormous powers here.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.DiscretePadeSelector

theorem rate_from_short_bases (p Z N alpha a b u v : ℕ)
    (hb : 0 < b) (hv : 0 < v)
    (hp : p ^ b ≤ 2 ^ a) (hZ : 2 ^ u ≤ Z ^ v)
    (hexponent : a * v * N ≤ u * b * alpha) : p ^ N ≤ Z ^ alpha := by
  have hpowered : (p ^ N) ^ (b * v) ≤ (Z ^ alpha) ^ (b * v) := by
    calc
      _ = (p ^ b) ^ (v * N) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
      _ ≤ (2 ^ a) ^ (v * N) := Nat.pow_le_pow_left hp (v * N)
      _ = 2 ^ (a * v * N) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
      _ ≤ 2 ^ (u * b * alpha) := Nat.pow_le_pow_right (by decide) hexponent
      _ = (2 ^ u) ^ (b * alpha) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
      _ ≤ (Z ^ v) ^ (b * alpha) := Nat.pow_le_pow_left hZ (b * alpha)
      _ = (Z ^ alpha) ^ (b * v) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
  exact Iff.mp (Nat.pow_le_pow_iff_left (Nat.ne_of_gt (Nat.mul_pos hb hv))) hpowered

theorem base_from_short_basis (p N alpha M H a b : ℕ)
    (hb : 0 < b) (hp : p ^ b ≤ 2 ^ a)
    (hexponent : a * N * M ≤ b * H * alpha) :
    (p ^ N) ^ M ≤ (2 ^ H) ^ alpha := by
  have hpowered : ((p ^ N) ^ M) ^ b ≤ ((2 ^ H) ^ alpha) ^ b := by
    calc
      _ = (p ^ b) ^ (N * M) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
      _ ≤ (2 ^ a) ^ (N * M) := Nat.pow_le_pow_left hp (N * M)
      _ = 2 ^ (a * N * M) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
      _ ≤ 2 ^ (b * H * alpha) := Nat.pow_le_pow_right (by decide) hexponent
      _ = ((2 ^ H) ^ alpha) ^ b := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
  exact Iff.mp (Nat.pow_le_pow_iff_left (Nat.ne_of_gt hb)) hpowered

theorem lookahead_from_short_bases (p Z N alpha M a b u v : ℕ)
    (hb : 0 < b) (hv : 0 < v)
    (hp : p ^ b ≤ 2 ^ a) (hZ : 2 ^ u ≤ Z ^ v)
    (hexponent : 2 * alpha * b * v + a * v * N * (M + 1) ≤ u * b * alpha * M) :
    4 ^ alpha * (p ^ N) ^ (M + 1) ≤ Z ^ (alpha * M) := by
  have hleft :
      (4 ^ alpha * (p ^ N) ^ (M + 1)) ^ (b * v) =
        2 ^ (2 * alpha * b * v) * (p ^ b) ^ (v * N * (M + 1)) := by
    rw [Nat.mul_pow]
    congr 1
    · change (((2 : ℕ) ^ 2) ^ alpha) ^ (b * v) = _
      simp only [← Nat.pow_mul] <;> congr 1 <;> ring
    · simp only [← Nat.pow_mul] <;> congr 1 <;> ring
  have hpowered :
      (4 ^ alpha * (p ^ N) ^ (M + 1)) ^ (b * v) ≤
        (Z ^ (alpha * M)) ^ (b * v) := by
    calc
      _ = 2 ^ (2 * alpha * b * v) * (p ^ b) ^ (v * N * (M + 1)) := hleft
      _ ≤ 2 ^ (2 * alpha * b * v) * (2 ^ a) ^ (v * N * (M + 1)) :=
        Nat.mul_le_mul_left _ (Nat.pow_le_pow_left hp (v * N * (M + 1)))
      _ = 2 ^ (2 * alpha * b * v + a * v * N * (M + 1)) := by
        simp only [← Nat.pow_mul, ← Nat.pow_add] <;> congr 1 <;> ring
      _ ≤ 2 ^ (u * b * alpha * M) := Nat.pow_le_pow_right (by decide) hexponent
      _ = (2 ^ u) ^ (b * alpha * M) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
      _ ≤ (Z ^ v) ^ (b * alpha * M) := Nat.pow_le_pow_left hZ (b * alpha * M)
      _ = (Z ^ (alpha * M)) ^ (b * v) := by
        simp only [← Nat.pow_mul] <;> congr 1 <;> ring
  exact Iff.mp (Nat.pow_le_pow_iff_left (Nat.ne_of_gt (Nat.mul_pos hb hv))) hpowered

/-- The short exponent certificate produces exactly the three selector inputs. -/
theorem conditions_from_short_bases (p Z N alpha M H a b u v : ℕ)
    (hb : 0 < b) (hv : 0 < v)
    (hp : p ^ b ≤ 2 ^ a) (hZ : 2 ^ u ≤ Z ^ v)
    (hrate : a * v * N ≤ u * b * alpha)
    (hbase : a * N * M ≤ b * H * alpha)
    (hlookahead : 2 * alpha * b * v + a * v * N * (M + 1) ≤ u * b * alpha * M) :
    p ^ N ≤ Z ^ alpha ∧
      (p ^ N) ^ M ≤ (2 ^ H) ^ alpha ∧
      4 ^ alpha * (p ^ N) ^ (M + 1) ≤ Z ^ (alpha * M) := by
  exact ⟨rate_from_short_bases p Z N alpha a b u v hb hv hp hZ hrate,
    base_from_short_basis p N alpha M H a b hb hp hbase,
    lookahead_from_short_bases p Z N alpha M a b u v hb hv hp hZ hlookahead⟩

end Math.B699.DiscretePadeSelector

#print axioms Math.B699.DiscretePadeSelector.rate_from_short_bases
#print axioms Math.B699.DiscretePadeSelector.base_from_short_basis
#print axioms Math.B699.DiscretePadeSelector.lookahead_from_short_bases
#print axioms Math.B699.DiscretePadeSelector.conditions_from_short_bases

end HeightMember004
/- Frozen member 5 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveNumeric\Selector.lean e31007e81c1ed5f0cd67beab0a86a00d1446a747f4513768826bd6f1eccd9dbd -/
section HeightMember005



/-! Uncompiled (2,5) selector candidate. The three p/q conditions are derived
from ShortPowerBounds; no direct J=2^35000 or J=5^15000 reduction is used.
The qRate^329 > 48 certificate is intentionally out of scope. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 4096

namespace Math.B699.I11TwoFiveNumeric
open Math.B699.DiscretePadeSelector

private theorem two_pow_add_two (k : ℕ) : (2 : ℕ) ^ (k + 2) = 4 * (2 : ℕ) ^ k := by
  calc
    (2 : ℕ) ^ (k + 2) = (2 : ℕ) ^ k * 2 ^ 2 := Nat.pow_add 2 k 2
    _ = (2 : ℕ) ^ k * 4 := by rw [show (2 : ℕ) ^ 2 = 4 by decide]
    _ = 4 * (2 : ℕ) ^ k := Nat.mul_comm _ _

theorem predecessor : certificateZ ^ (329 - 1) ≤ 4 * (2 : ℕ) ^ 15359 := by
  have h := base_from_short_basis certificateZ 1 1 328 15361 11960 256
    (by decide)
    (by
      set_option exponentiation.threshold 11960 in
        exact basis_two_upper)
    (by decide)
  have h328 : certificateZ ^ 328 ≤ (2 : ℕ) ^ 15361 := by
    simpa only [Nat.pow_one] using h
  calc
    certificateZ ^ (329 - 1) = certificateZ ^ 328 := rfl
    _ ≤ (2 : ℕ) ^ 15361 := h328
    _ = 4 * (2 : ℕ) ^ 15359 := two_pow_add_two 15359

theorem p_conditions : (2 : ℕ) ^ 35000 ≤ certificateZ ^ 752 ∧
    ((2 : ℕ) ^ 35000) ^ 329 ≤ ((2 : ℕ) ^ 15359) ^ 752 ∧
    (4 : ℕ) ^ 752 * (2 ^ 35000) ^ (329 + 1) ≤
      certificateZ ^ (752 * 329) := by
  exact conditions_from_short_bases 2 certificateZ 35000 752 329 15359
    1 1 11959 256
    (by decide) (by decide)
    (by
      set_option exponentiation.threshold 1 in
        exact basis_two_unit)
    (by
      set_option exponentiation.threshold 11960 in
        exact basis_two_lower)
    (by decide) (by decide) (by decide)

theorem q_conditions : (5 : ℕ) ^ 15000 ≤ certificateZ ^ 748 ∧
    ((5 : ℕ) ^ 15000) ^ 329 ≤ ((2 : ℕ) ^ 15359) ^ 748 ∧
    (4 : ℕ) ^ 748 * (5 ^ 15000) ^ (329 + 1) ≤
      certificateZ ^ (748 * 329) := by
  exact conditions_from_short_bases 5 certificateZ 15000 748 329 15359
    9511 4096 11959 256
    (by decide) (by decide)
    (by
      set_option exponentiation.threshold 9511 in
        exact basis_five)
    (by
      set_option exponentiation.threshold 11960 in
        exact basis_two_lower)
    (by decide) (by decide) (by decide)

theorem p_rate : (2 : ℕ) ^ 35000 ≤ certificateZ ^ 752 := p_conditions.1
theorem p_base : ((2 : ℕ) ^ 35000) ^ 329 ≤ ((2 : ℕ) ^ 15359) ^ 752 :=
  p_conditions.2.1
theorem p_lookahead : (4 : ℕ) ^ 752 * (2 ^ 35000) ^ (329 + 1) ≤
    certificateZ ^ (752 * 329) := p_conditions.2.2

theorem q_rate : (5 : ℕ) ^ 15000 ≤ certificateZ ^ 748 := q_conditions.1
theorem q_base : ((5 : ℕ) ^ 15000) ^ 329 ≤ ((2 : ℕ) ^ 15359) ^ 748 :=
  q_conditions.2.1
theorem q_lookahead : (4 : ℕ) ^ 748 * (5 ^ 15000) ^ (329 + 1) ≤
    certificateZ ^ (748 * 329) := q_conditions.2.2

end Math.B699.I11TwoFiveNumeric

#print axioms Math.B699.I11TwoFiveNumeric.predecessor
#print axioms Math.B699.I11TwoFiveNumeric.p_conditions
#print axioms Math.B699.I11TwoFiveNumeric.q_conditions
#print axioms Math.B699.I11TwoFiveNumeric.p_rate
#print axioms Math.B699.I11TwoFiveNumeric.p_base
#print axioms Math.B699.I11TwoFiveNumeric.p_lookahead
#print axioms Math.B699.I11TwoFiveNumeric.q_rate
#print axioms Math.B699.I11TwoFiveNumeric.q_base
#print axioms Math.B699.I11TwoFiveNumeric.q_lookahead

end HeightMember005
/- Frozen member 6 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\DiscreteSelector\LeastExponent.lean a2379bb7bcc693e63b171b53a5b34fa155d172fec1eeaafb85a6ff25203548a1 -/
section HeightMember006



/-!
UNCOMPILED CANDIDATE. The actual least exponent with 4*Y < Z^m, followed by
two-sided capacity at that same m. Only Nat arithmetic is used.
The existence witness 4*Y is not selected or evaluated as a huge power.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.DiscretePadeSelector

theorem exists_power_above_four_mul (Z Y : ℕ) (hZ : 1 < Z) :
    ∃ m : ℕ, 4 * Y < Z ^ m := by
  exact ⟨4 * Y, Nat.lt_pow_self hZ⟩

def leastExponent (Z Y : ℕ) (hZ : 1 < Z) : ℕ :=
  Nat.find (exists_power_above_four_mul Z Y hZ)

theorem leastExponent_threshold (Z Y : ℕ) (hZ : 1 < Z) :
    4 * Y < Z ^ leastExponent Z Y hZ := by
  exact Nat.find_spec (exists_power_above_four_mul Z Y hZ)

theorem leastExponent_minimal (Z Y : ℕ) (hZ : 1 < Z)
    {k : ℕ} (hk : k < leastExponent Z Y hZ) : Z ^ k ≤ 4 * Y := by
  exact Nat.le_of_not_gt (Nat.find_min (exists_power_above_four_mul Z Y hZ) hk)

theorem leastExponent_pos (Z Y : ℕ) (hZ : 1 < Z) (hY : 0 < Y) :
    0 < leastExponent Z Y hZ := by
  apply Nat.pos_of_ne_zero
  intro hz
  have hthreshold := leastExponent_threshold Z Y hZ
  rw [hz, Nat.pow_zero] at hthreshold
  omega

theorem leastExponent_previous (Z Y : ℕ) (hZ : 1 < Z) (hY : 0 < Y) :
    Z ^ (leastExponent Z Y hZ - 1) ≤ 4 * Y := by
  have hpos := leastExponent_pos Z Y hZ hY
  exact leastExponent_minimal Z Y hZ (by omega)

theorem leastExponent_lower_bound (Z Y0 Y M : ℕ) (hZ : 1 < Z)
    (hY : Y0 ≤ Y) (hM : 0 < M) (hprevious : Z ^ (M - 1) ≤ 4 * Y0) :
    M ≤ leastExponent Z Y hZ := by
  apply Nat.le_of_not_gt
  intro h
  have hsmall : leastExponent Z Y hZ ≤ M - 1 := by omega
  have hpower : Z ^ leastExponent Z Y hZ ≤ Z ^ (M - 1) :=
    Nat.pow_le_pow_right (by omega) hsmall
  have hupper : Z ^ leastExponent Z Y hZ ≤ 4 * Y :=
    Nat.le_trans hpower (Nat.le_trans hprevious (Nat.mul_le_mul_left 4 hY))
  exact Nat.not_le_of_gt (leastExponent_threshold Z Y hZ) hupper

theorem leastExponent_le_of_threshold (Z Y M : ℕ) (hZ : 1 < Z)
    (hthreshold : 4 * Y < Z ^ M) : leastExponent Z Y hZ ≤ M := by
  exact Nat.find_min' (exists_power_above_four_mul Z Y hZ) hthreshold

theorem leastExponent_eq_of_bracket (Z Y M : ℕ) (hZ : 1 < Z)
    (hM : 0 < M) (hprevious : Z ^ (M - 1) ≤ 4 * Y)
    (hthreshold : 4 * Y < Z ^ M) : leastExponent Z Y hZ = M := by
  exact Nat.le_antisymm
    (leastExponent_le_of_threshold Z Y M hZ hthreshold)
    (leastExponent_lower_bound Z Y Y M hZ (Nat.le_refl Y) hM hprevious)

/-- Extend from M+1 using the rate, with the constant 4^alpha retained. -/
theorem lookahead_rate_extend (Z J alpha M k : ℕ)
    (hrate : J ≤ Z ^ alpha)
    (hlookahead : 4 ^ alpha * J ^ (M + 1) ≤ Z ^ (alpha * M)) :
    4 ^ alpha * J ^ (M + 1 + k) ≤ Z ^ (alpha * (M + k)) := by
  calc
    _ = (4 ^ alpha * J ^ (M + 1)) * J ^ k := by
      simp only [Nat.pow_add, Nat.mul_assoc]
    _ ≤ Z ^ (alpha * M) * (Z ^ alpha) ^ k :=
      Nat.mul_le_mul hlookahead (Nat.pow_le_pow_left hrate k)
    _ = Z ^ (alpha * (M + k)) := by
      simp only [← Nat.pow_mul, ← Nat.pow_add, Nat.mul_add]

/-- The elementary two-branch argument, before substituting the actual selector. -/
theorem capacity_of_previous_bound (Z J alpha M m Y0 Y : ℕ)
    (hY : Y0 ≤ Y) (hMm : M ≤ m) (hprevious : Z ^ (m - 1) ≤ 4 * Y)
    (hrate : J ≤ Z ^ alpha) (hbase : J ^ M ≤ Y0 ^ alpha)
    (hlookahead : 4 ^ alpha * J ^ (M + 1) ≤ Z ^ (alpha * M)) :
    J ^ m ≤ Y ^ alpha := by
  by_cases heq : m = M
  · rw [heq]
    exact Nat.le_trans hbase (Nat.pow_le_pow_left hY alpha)
  · let k := m - (M + 1)
    have hm : m = M + 1 + k := by dsimp [k]; omega
    have hpred : m - 1 = M + k := by omega
    have hscaled : 4 ^ alpha * J ^ m ≤ (Z ^ (m - 1)) ^ alpha := by
      calc
        _ = 4 ^ alpha * J ^ (M + 1 + k) := by rw [hm]
        _ ≤ Z ^ (alpha * (M + k)) :=
          lookahead_rate_extend Z J alpha M k hrate hlookahead
        _ = (Z ^ (m - 1)) ^ alpha := by
          rw [hpred, ← Nat.pow_mul, Nat.mul_comm alpha (M + k)]
    have hcombined := Nat.le_trans hscaled (Nat.pow_le_pow_left hprevious alpha)
    have hcancel : 4 ^ alpha * J ^ m ≤ 4 ^ alpha * Y ^ alpha := by
      simpa only [Nat.mul_pow] using hcombined
    exact Nat.le_of_mul_le_mul_left hcancel (Nat.pow_pos (by decide : 0 < (4 : ℕ)))

theorem leastExponent_capacity (Z J alpha M Y0 Y : ℕ) (hZ : 1 < Z)
    (hY0 : 0 < Y0) (hY : Y0 ≤ Y) (hM : 0 < M)
    (hprevious : Z ^ (M - 1) ≤ 4 * Y0)
    (hrate : J ≤ Z ^ alpha) (hbase : J ^ M ≤ Y0 ^ alpha)
    (hlookahead : 4 ^ alpha * J ^ (M + 1) ≤ Z ^ (alpha * M)) :
    J ^ leastExponent Z Y hZ ≤ Y ^ alpha := by
  exact capacity_of_previous_bound Z J alpha M (leastExponent Z Y hZ) Y0 Y
    hY (leastExponent_lower_bound Z Y0 Y M hZ hY hM hprevious)
    (leastExponent_previous Z Y hZ (Nat.lt_of_lt_of_le hY0 hY))
    hrate hbase hlookahead

/-- Both ends use literally the same leastExponent, not separately chosen indices. -/
theorem leastExponent_two_capacities (Z Jp alphaP Jq alphaQ M Y0 Y : ℕ)
    (hZ : 1 < Z) (hY0 : 0 < Y0) (hY : Y0 ≤ Y) (hM : 0 < M)
    (hprevious : Z ^ (M - 1) ≤ 4 * Y0)
    (hrateP : Jp ≤ Z ^ alphaP) (hbaseP : Jp ^ M ≤ Y0 ^ alphaP)
    (hlookaheadP : 4 ^ alphaP * Jp ^ (M + 1) ≤ Z ^ (alphaP * M))
    (hrateQ : Jq ≤ Z ^ alphaQ) (hbaseQ : Jq ^ M ≤ Y0 ^ alphaQ)
    (hlookaheadQ : 4 ^ alphaQ * Jq ^ (M + 1) ≤ Z ^ (alphaQ * M)) :
    Jp ^ leastExponent Z Y hZ ≤ Y ^ alphaP ∧
      Jq ^ leastExponent Z Y hZ ≤ Y ^ alphaQ := by
  exact ⟨leastExponent_capacity Z Jp alphaP M Y0 Y hZ hY0 hY hM hprevious
      hrateP hbaseP hlookaheadP,
    leastExponent_capacity Z Jq alphaQ M Y0 Y hZ hY0 hY hM hprevious
      hrateQ hbaseQ hlookaheadQ⟩

end Math.B699.DiscretePadeSelector

#print axioms Math.B699.DiscretePadeSelector.exists_power_above_four_mul
#print axioms Math.B699.DiscretePadeSelector.leastExponent
#print axioms Math.B699.DiscretePadeSelector.leastExponent_threshold
#print axioms Math.B699.DiscretePadeSelector.leastExponent_minimal
#print axioms Math.B699.DiscretePadeSelector.leastExponent_pos
#print axioms Math.B699.DiscretePadeSelector.leastExponent_previous
#print axioms Math.B699.DiscretePadeSelector.leastExponent_lower_bound
#print axioms Math.B699.DiscretePadeSelector.leastExponent_le_of_threshold
#print axioms Math.B699.DiscretePadeSelector.leastExponent_eq_of_bracket
#print axioms Math.B699.DiscretePadeSelector.lookahead_rate_extend
#print axioms Math.B699.DiscretePadeSelector.capacity_of_previous_bound
#print axioms Math.B699.DiscretePadeSelector.leastExponent_capacity
#print axioms Math.B699.DiscretePadeSelector.leastExponent_two_capacities

end HeightMember006
/- Frozen member 7 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11Edge\Capacity.lean 7006611bfa0360bf34f55ee3600da7dd4ebb877e40f57deb5f05a62c84e0492d -/
section HeightMember007



/-! UNCOMPILED CANDIDATE. Capacity forces enough actual prime exponent.
No logarithm, chosen nonminimal exponent, or assumed Padé edge is used. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11ActualPadeEdge
open Math.B699.DiscretePadeSelector

theorem small_cofactor_forces_exponent (p e A Y k T weight : ℕ)
    (hp : 0 < p) (hweight : weight ≤ T)
    (hwindow : Y ≤ p ^ e * A) (hsmall : A ^ T < Y ^ weight)
    (hcapacity : (p ^ k) ^ T ≤ Y ^ (T - weight)) : k < e := by
  apply Nat.lt_of_not_ge
  intro he
  have hupper : (p ^ e) ^ T ≤ Y ^ (T - weight) :=
    Nat.le_trans (Nat.pow_le_pow_left (Nat.pow_le_pow_right hp he) T) hcapacity
  have hsmallPower : (p ^ e * A) ^ T < Y ^ T := by
    calc
      _ = (p ^ e) ^ T * A ^ T := Nat.mul_pow _ _ _
      _ < (p ^ e) ^ T * Y ^ weight :=
        Nat.mul_lt_mul_of_pos_left hsmall (Nat.pow_pos (Nat.pow_pos hp))
      _ ≤ Y ^ (T - weight) * Y ^ weight := Nat.mul_le_mul_right _ hupper
      _ = Y ^ T := by
        rw [← Nat.pow_add]
        congr 1
        omega
  exact Nat.not_lt_of_ge (Nat.pow_le_pow_left hwindow T) hsmallPower

theorem least_capacity_forces_exponent
    (p k T weight Z M Y0 Y e A : ℕ) (hp : 0 < p) (hweight : weight ≤ T)
    (hZ : 1 < Z) (hY0 : 0 < Y0) (hY : Y0 ≤ Y) (hM : 0 < M)
    (hprevious : Z ^ (M - 1) ≤ 4 * Y0)
    (hrate : p ^ (k * T) ≤ Z ^ (T - weight))
    (hbase : (p ^ (k * T)) ^ M ≤ Y0 ^ (T - weight))
    (hlookahead : 4 ^ (T - weight) * (p ^ (k * T)) ^ (M + 1) ≤
      Z ^ ((T - weight) * M))
    (hwindow : Y ≤ p ^ e * A) (hsmall : A ^ T < Y ^ weight) :
    k * leastExponent Z Y hZ < e := by
  have hcap := leastExponent_capacity Z (p ^ (k * T)) (T - weight) M Y0 Y
    hZ hY0 hY hM hprevious hrate hbase hlookahead
  have heq : (p ^ (k * leastExponent Z Y hZ)) ^ T =
      (p ^ (k * T)) ^ leastExponent Z Y hZ := by
    simp only [← Nat.pow_mul]
    congr 1
    ring
  exact small_cofactor_forces_exponent p e A Y (k * leastExponent Z Y hZ) T weight
    hp hweight hwindow hsmall (by rw [heq]; exact hcap)

theorem extract_prime_factor (p e k A : ℕ) (hke : k ≤ e) :
    p ^ k * (p ^ (e - k) * A) = p ^ e * A := by
  have hexp : k + (e - k) = e := by omega
  rw [← Nat.mul_assoc, ← Nat.pow_add, hexp]

end Math.B699.I11ActualPadeEdge
#print axioms Math.B699.I11ActualPadeEdge.small_cofactor_forces_exponent
#print axioms Math.B699.I11ActualPadeEdge.least_capacity_forces_exponent
#print axioms Math.B699.I11ActualPadeEdge.extract_prime_factor

end HeightMember007
