import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBlock.Block
import Mathlib.Data.List.Range

/-!
# Finite signed-displacement certificate interface

UNCOMPILED CANDIDATE. For w=10 the list has exactly 21 entries,
indexed k=0..20 with displacement k-10, including its zero middle entry.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.CubicExponentBlock

def displacement (w k : ℕ) : ℤ := (k : ℤ) - (w : ℤ)

@[simp] theorem displacement_middle (w : ℕ) : displacement w w = 0 := by
  simp [displacement]

def residueChecks (p q u L b0 w v : ℕ) : Bool :=
  (List.range (2 * w + 1)).all fun k =>
    decide (p ^ (u + 3 * L) < (positiveResidue (q ^ b0) v (displacement w k)) ^ 2)

theorem residueChecks_sound {p q u L b0 w v : ℕ}
    (hcheck : residueChecks p q u L b0 w v = true) {d : ℤ}
    (hlo : -(w : ℤ) ≤ d) (hhi : d ≤ (w : ℤ)) :
    p ^ (u + 3 * L) < (positiveResidue (q ^ b0) v d) ^ 2 := by
  unfold residueChecks at hcheck
  let k : ℕ := (d + (w : ℤ)).toNat
  have hkcast : (k : ℤ) = d + (w : ℤ) := by
    dsimp only [k]
    exact Int.toNat_of_nonneg (by omega)
  have hk : k < 2 * w + 1 := by omega
  have hd : displacement w k = d := by
    unfold displacement
    omega
  have hmem : k ∈ List.range (2 * w + 1) := List.mem_range.mpr hk
  have hall := List.all_eq_true.mp hcheck k hmem
  have hbound : p ^ (u + 3 * L) <
      (positiveResidue (q ^ b0) v (displacement w k)) ^ 2 := of_decide_eq_true hall
  simpa only [hd] using hbound

/-- A named audit of the included zero displacement; no delta=0 exception exists. -/
theorem residueChecks_zero {p q u L b0 w v : ℕ}
    (hcheck : residueChecks p q u L b0 w v = true) :
    p ^ (u + 3 * L) < (q ^ b0) ^ 2 := by
  have h := residueChecks_sound hcheck (d := 0) (by omega) (by omega)
  simpa only [positiveResidue_zero] using h

def blockCheck (p q u L b0 w v : ℕ) : Bool :=
  decide (2 ≤ p ∧ 2 ≤ q ∧ 1 ≤ u ∧ 1 ≤ b0 ∧ w < p ^ u ∧
    (q ^ b0) ^ 3 ≤ (p ^ u - w) ^ 2 ∧ (p ^ u * v) % (q ^ b0) = 1) &&
    residueChecks p q u L b0 w v

/-- A finite checked block excludes every original tuple in its exponent interval.
In particular, b is quantified without an upper endpoint. -/
theorem blockCheck_sound {p q u L b0 w v a b A C : ℕ}
    (hcheck : blockCheck p q u L b0 w v = true)
    (hua : u ≤ a) (hau : a ≤ u + L) (hA : 1 ≤ A) (hC : 1 ≤ C)
    (hdist : Nat.dist (p ^ a * A) (q ^ b * C) ≤ w)
    (hsmallA : A ^ 3 ≤ min (p ^ a * A) (q ^ b * C))
    (hsmallC : C ^ 3 ≤ min (p ^ a * A) (q ^ b * C)) : False := by
  have hc := hcheck
  simp only [blockCheck, Bool.and_eq_true] at hc
  have hmeta : 2 ≤ p ∧ 2 ≤ q ∧ 1 ≤ u ∧ 1 ≤ b0 ∧ w < p ^ u ∧
      (q ^ b0) ^ 3 ≤ (p ^ u - w) ^ 2 ∧ (p ^ u * v) % (q ^ b0) = 1 :=
    of_decide_eq_true hc.1
  rcases hmeta with ⟨hp, hq, hu, hb0, hPw, hQ, hinv⟩
  exact cubic_exponent_block_excludes hp hq hu hb0 hPw hQ hinv
    (fun d hlo hhi => residueChecks_sound hc.2 hlo hhi)
    hua hau hA hC hdist hsmallA hsmallC

end Math.B699.CubicExponentBlock
