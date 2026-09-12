import Mathlib.Data.Int.ModEq
import Lean.Elab.Tactic.Omega
import Mathlib.Tactic.Ring

/-! UNCOMPILED CANDIDATE. The modular inverse is certificate data. -/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.CubicExponentBlock

/-- Least positive representative of v*d modulo Q; the zero residue becomes Q. -/
def positiveResidue (Q v : ℕ) (d : ℤ) : ℕ :=
  let r := Int.toNat (((v : ℤ) * d) % (Q : ℤ))
  if r = 0 then Q else r

@[simp] theorem positiveResidue_zero (Q v : ℕ) : positiveResidue Q v 0 = Q := by
  simp [positiveResidue]

theorem positiveResidue_pos {Q v : ℕ} (hQ : 0 < Q) (d : ℤ) :
    0 < positiveResidue Q v d := by
  unfold positiveResidue
  split_ifs with h
  · exact hQ
  · exact Nat.pos_of_ne_zero h

/-- Every positive integer in the residue class is at least this representative.
The zero-residue branch uses Q|X, rather than discarding d=0. -/
theorem positiveResidue_le_of_modEq {Q v X : ℕ} {d : ℤ} (hX : 0 < X)
    (hmod : (X : ℤ) ≡ (v : ℤ) * d [ZMOD (Q : ℤ)]) :
    positiveResidue Q v d ≤ X := by
  have hm : X % Q = Int.toNat (((v : ℤ) * d) % (Q : ℤ)) := by
    have h := congrArg Int.toNat hmod.eq
    simpa only [← Int.natCast_mod, Int.toNat_natCast] using h
  unfold positiveResidue
  split_ifs with h
  · have hz : X % Q = 0 := hm.trans h
    exact Nat.le_of_dvd hX (Nat.dvd_of_mod_eq_zero hz)
  · rw [← hm]
    exact Nat.mod_le X Q

/-- The supplied inverse and the actual signed equation force the residue class.
No coprimality premise or bound on T is required. -/
theorem inverse_positiveResidue_le {P Q v X T : ℕ} {d : ℤ}
    (hQ : 1 < Q) (hX : 0 < X) (hinv : (P * v) % Q = 1)
    (heq : (P : ℤ) * (X : ℤ) - (Q : ℤ) * (T : ℤ) = d) :
    positiveResidue Q v d ≤ X := by
  have hiN : Nat.ModEq Q (P * v) 1 := by
    change (P * v) % Q = 1 % Q
    rw [hinv, Nat.mod_eq_of_lt hQ]
  have hiI : (P : ℤ) * (v : ℤ) ≡ 1 [ZMOD (Q : ℤ)] := by
    have h : ((P * v : ℕ) : ℤ) ≡ ((1 : ℕ) : ℤ) [ZMOD (Q : ℤ)] :=
      Int.natCast_modEq_iff.mpr hiN
    simpa only [Nat.cast_mul, Nat.cast_one] using h
  have hPX : (P : ℤ) * (X : ℤ) ≡ d [ZMOD (Q : ℤ)] := by
    apply Int.modEq_iff_dvd.mpr
    refine ⟨-(T : ℤ), ?_⟩
    rw [← heq]
    ring
  have hunit : (v : ℤ) * ((P : ℤ) * (X : ℤ)) ≡ (X : ℤ) [ZMOD (Q : ℤ)] := by
    have h := hiI.mul_right (X : ℤ)
    simpa only [mul_assoc, mul_comm, mul_left_comm, one_mul] using h
  have hXD : (X : ℤ) ≡ (v : ℤ) * d [ZMOD (Q : ℤ)] :=
    hunit.symm.trans (hPX.mul_left (v : ℤ))
  exact positiveResidue_le_of_modEq hX hXD

end Math.B699.CubicExponentBlock
