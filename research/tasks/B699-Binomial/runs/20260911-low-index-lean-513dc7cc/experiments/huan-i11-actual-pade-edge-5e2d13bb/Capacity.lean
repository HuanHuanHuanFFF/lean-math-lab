import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.DiscreteSelector.LeastExponent
import Mathlib.Tactic.Ring

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
