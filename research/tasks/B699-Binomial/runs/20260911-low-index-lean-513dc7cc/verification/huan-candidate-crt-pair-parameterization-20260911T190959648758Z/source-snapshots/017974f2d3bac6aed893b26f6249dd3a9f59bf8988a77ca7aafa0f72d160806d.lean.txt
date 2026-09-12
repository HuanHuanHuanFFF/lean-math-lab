import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CubicBlock.Residues

/-!
# Complete positive-representative CRT parameterization

UNCOMPILED CANDIDATE. The base C-coordinate is an integer and may be negative.
The accepted positiveResidue maps every zero residue, including d=0, to Q.
No upper cofactor bound or searched parameter bound is assumed in this file.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.CRTPairMax

open Math.B699.CubicExponentBlock

/-- The actual chosen positive representative has its stated residue class. -/
theorem positiveResidue_modEq {Q v : ℕ} (hQ : 0 < Q) (d : ℤ) :
    (positiveResidue Q v d : ℤ) ≡ (v : ℤ) * d [ZMOD (Q : ℤ)] := by
  let r : ℕ := Int.toNat (((v : ℤ) * d) % (Q : ℤ))
  have hQz : (Q : ℤ) ≠ 0 := by omega
  have hr : (r : ℤ) = ((v : ℤ) * d) % (Q : ℤ) := by
    dsimp only [r]
    exact Int.toNat_of_nonneg (Int.emod_nonneg _ hQz)
  change ((if r = 0 then Q else r : ℕ) : ℤ) ≡ (v : ℤ) * d [ZMOD (Q : ℤ)]
  split_ifs with hzero
  · change (Q : ℤ) % (Q : ℤ) = ((v : ℤ) * d) % (Q : ℤ)
    have hz : ((v : ℤ) * d) % (Q : ℤ) = 0 := by
      simpa only [hzero, Nat.cast_zero] using hr.symm
    simpa only [Int.emod_self] using hz.symm
  · change (r : ℤ) % (Q : ℤ) = ((v : ℤ) * d) % (Q : ℤ)
    rw [hr, Int.emod_emod]

theorem inverse_modEq {P Q v : ℕ} (hQ : 1 < Q) (hinv : (P * v) % Q = 1) :
    (P : ℤ) * (v : ℤ) ≡ 1 [ZMOD (Q : ℤ)] := by
  have hN : Nat.ModEq Q (P * v) 1 := by
    change (P * v) % Q = 1 % Q
    rw [hinv, Nat.mod_eq_of_lt hQ]
  have h : ((P * v : ℕ) : ℤ) ≡ ((1 : ℕ) : ℤ) [ZMOD (Q : ℤ)] :=
    Int.natCast_modEq_iff.mpr hN
  simpa only [Nat.cast_mul, Nat.cast_one] using h

/-- The computed seed cofactor, with signed exact division. -/
def baseC (P Q v : ℕ) (d : ℤ) : ℤ :=
  ((P : ℤ) * (positiveResidue Q v d : ℤ) - d) / (Q : ℤ)

/-- The seed equation is proved from the actual inverse and residue, not assumed. -/
theorem seed_equation {P Q v : ℕ} {d : ℤ}
    (hQ : 1 < Q) (hinv : (P * v) % Q = 1) :
    (P : ℤ) * (positiveResidue Q v d : ℤ) - (Q : ℤ) * baseC P Q v d = d := by
  have hr := positiveResidue_modEq (v := v) (by omega : 0 < Q) d
  have hi := inverse_modEq hQ hinv
  have hm : (P : ℤ) * (positiveResidue Q v d : ℤ) ≡ d [ZMOD (Q : ℤ)] := by
    apply (hr.mul_left (P : ℤ)).trans
    simpa only [mul_assoc, one_mul] using hi.mul_right d
  have hdiv : (Q : ℤ) ∣ (P : ℤ) * (positiveResidue Q v d : ℤ) - d := hm.symm.dvd
  have hmul : (Q : ℤ) * baseC P Q v d =
      (P : ℤ) * (positiveResidue Q v d : ℤ) - d := by
    unfold baseC
    exact Int.mul_ediv_cancel' hdiv
  rw [hmul]
  ring

/-- A checked inverse yields an explicit integer Bezout coefficient. -/
theorem inverse_bezout {P Q v : ℕ} (hinv : (P * v) % Q = 1) :
    (P : ℤ) * (v : ℤ) - (Q : ℤ) * (((P * v) / Q : ℕ) : ℤ) = 1 := by
  have hN := Nat.mod_add_div (P * v) Q
  rw [hinv] at hN
  have h := congrArg (fun k : ℕ => (k : ℤ)) hN
  simp only [Nat.cast_add, Nat.cast_one, Nat.cast_mul] at h
  omega

/-- Every positive natural cofactor solution has one nonnegative integer parameter.
There is no cofactor coprimality premise and no bound on the parameter. -/
theorem solution_parameterization {P Q v A C : ℕ} {d : ℤ}
    (hQ : 1 < Q) (hinv : (P * v) % Q = 1) (hA : 0 < A)
    (heq : (P : ℤ) * (A : ℤ) - (Q : ℤ) * (C : ℤ) = d) :
    ∃ t : ℤ, 0 ≤ t ∧
      (A : ℤ) = (positiveResidue Q v d : ℤ) + (Q : ℤ) * t ∧
      (C : ℤ) = baseC P Q v d + (P : ℤ) * t := by
  let D : ℤ := (A : ℤ) - (positiveResidue Q v d : ℤ)
  let E : ℤ := (C : ℤ) - baseC P Q v d
  let z : ℤ := (((P * v) / Q : ℕ) : ℤ)
  let t : ℤ := (v : ℤ) * E - z * D
  have hseed := seed_equation (d := d) hQ hinv
  have hPD : (P : ℤ) * D = (Q : ℤ) * E := by
    dsimp only [D, E]
    calc
      (P : ℤ) * ((A : ℤ) - (positiveResidue Q v d : ℤ)) =
          ((P : ℤ) * (A : ℤ) - (Q : ℤ) * (C : ℤ)) -
            ((P : ℤ) * (positiveResidue Q v d : ℤ) - (Q : ℤ) * baseC P Q v d) +
            (Q : ℤ) * ((C : ℤ) - baseC P Q v d) := by ring
      _ = (Q : ℤ) * ((C : ℤ) - baseC P Q v d) := by rw [heq, hseed]; ring
  have hbez : (P : ℤ) * (v : ℤ) - (Q : ℤ) * z = 1 := inverse_bezout hinv
  have hD : D = (Q : ℤ) * t := by
    calc
      D = ((P : ℤ) * (v : ℤ) - (Q : ℤ) * z) * D := by rw [hbez]; ring
      _ = (v : ℤ) * ((P : ℤ) * D) - (Q : ℤ) * z * D := by ring
      _ = (Q : ℤ) * t := by rw [hPD]; dsimp only [t]; ring
  have hrho : positiveResidue Q v d ≤ A :=
    inverse_positiveResidue_le hQ hA hinv heq
  have hDnonneg : 0 ≤ D := by dsimp only [D]; omega
  have hQi : 0 < (Q : ℤ) := by omega
  have ht : 0 ≤ t := by
    by_contra hnot
    have hneg : (Q : ℤ) * t < 0 := Int.mul_neg_of_pos_of_neg hQi (by omega : t < 0)
    rw [← hD] at hneg
    exact (not_lt_of_ge hDnonneg) hneg
  have hcancel : (Q : ℤ) * ((P : ℤ) * t) = (Q : ℤ) * E := by
    calc
      (Q : ℤ) * ((P : ℤ) * t) = (P : ℤ) * ((Q : ℤ) * t) := by ring
      _ = (P : ℤ) * D := by rw [← hD]
      _ = (Q : ℤ) * E := hPD
  have hEt : (P : ℤ) * t = E := mul_left_cancel₀ (ne_of_gt hQi) hcancel
  refine ⟨t, ht, ?_, ?_⟩
  · dsimp only [D] at hD
    omega
  · dsimp only [E] at hEt
    omega

/-- Conversely, every integer parameter satisfies the original affine equation.
Positivity and caps are separate linear conditions on these two coordinates. -/
theorem progression_equation {P Q v : ℕ} {d : ℤ}
    (hQ : 1 < Q) (hinv : (P * v) % Q = 1) (t : ℤ) :
    (P : ℤ) * ((positiveResidue Q v d : ℤ) + (Q : ℤ) * t) -
      (Q : ℤ) * (baseC P Q v d + (P : ℤ) * t) = d := by
  calc
    (P : ℤ) * ((positiveResidue Q v d : ℤ) + (Q : ℤ) * t) -
        (Q : ℤ) * (baseC P Q v d + (P : ℤ) * t) =
      (P : ℤ) * (positiveResidue Q v d : ℤ) - (Q : ℤ) * baseC P Q v d := by ring
    _ = d := seed_equation hQ hinv


/-- The parameter is unique because the modulus is positive. -/
theorem parameter_unique {Q v : ℕ} {d A t s : ℤ} (hQ : 0 < Q)
    (ht : A = (positiveResidue Q v d : ℤ) + (Q : ℤ) * t)
    (hs : A = (positiveResidue Q v d : ℤ) + (Q : ℤ) * s) : t = s := by
  have hmul : (Q : ℤ) * t = (Q : ℤ) * s := add_left_cancel (ht.symm.trans hs)
  exact mul_left_cancel₀ (by omega : (Q : ℤ) ≠ 0) hmul

end Math.B699.CRTPairMax
