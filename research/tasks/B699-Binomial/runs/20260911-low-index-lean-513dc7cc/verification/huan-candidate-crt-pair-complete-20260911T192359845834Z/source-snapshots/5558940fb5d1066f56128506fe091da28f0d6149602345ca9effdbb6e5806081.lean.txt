import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.CrtPair.Parameterization
import Mathlib.Tactic.NormNum

/-! UNCOMPILED CANDIDATE. All bounds below are explicit affine inequalities. -/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.CRTPairMax

open Math.B699.CubicExponentBlock

def coordinateA (Q v : ℕ) (d t : ℤ) : ℤ :=
  (positiveResidue Q v d : ℤ) + (Q : ℤ) * t

def coordinateC (P Q v : ℕ) (d t : ℤ) : ℤ :=
  baseC P Q v d + (P : ℤ) * t

def upperValue (P Q v w : ℕ) (d t : ℤ) : ℤ :=
  min ((P : ℤ) * coordinateA Q v d t) ((Q : ℤ) * coordinateC P Q v d t) + (w : ℤ)

def lowerCondition (P Q v : ℕ) (d lo : ℤ) : Prop :=
  lo ≤ 0 ∨ coordinateC P Q v d (lo - 1) < 1

def upperCondition (P Q v capA capC : ℕ) (d hi : ℤ) : Prop :=
  (capA : ℤ) < coordinateA Q v d (hi + 1) ∨
    (capC : ℤ) < coordinateC P Q v d (hi + 1)

instance (P Q v : ℕ) (d lo : ℤ) : Decidable (lowerCondition P Q v d lo) := by
  unfold lowerCondition
  infer_instance

instance (P Q v capA capC : ℕ) (d hi : ℤ) :
    Decidable (upperCondition P Q v capA capC d hi) := by
  unfold upperCondition
  infer_instance

theorem coordinateA_mono {Q v : ℕ} {d t T : ℤ} (h : t ≤ T) :
    coordinateA Q v d t ≤ coordinateA Q v d T := by
  unfold coordinateA
  exact Int.add_le_add le_rfl
    (Int.mul_le_mul_of_nonneg_left h (by omega : 0 ≤ (Q : ℤ)))

theorem coordinateC_mono {P Q v : ℕ} {d t T : ℤ} (h : t ≤ T) :
    coordinateC P Q v d t ≤ coordinateC P Q v d T := by
  unfold coordinateC
  exact Int.add_le_add le_rfl
    (Int.mul_le_mul_of_nonneg_left h (by omega : 0 ≤ (P : ℤ)))

theorem upperValue_mono {P Q v w : ℕ} {d t T : ℤ} (h : t ≤ T) :
    upperValue P Q v w d t ≤ upperValue P Q v w d T := by
  unfold upperValue
  exact Int.add_le_add
    (min_le_min
      (Int.mul_le_mul_of_nonneg_left (coordinateA_mono h) (by omega : 0 ≤ (P : ℤ)))
      (Int.mul_le_mul_of_nonneg_left (coordinateC_mono h) (by omega : 0 ≤ (Q : ℤ))))
    le_rfl

/-- Previous-step positivity and next-step cap violations give every feasible
parameter both bounds. No floor-search or maximum hypothesis is present. -/
theorem parameter_bounds {P Q v capA capC : ℕ} {d lo hi t : ℤ}
    (hlow : lowerCondition P Q v d lo)
    (hupp : upperCondition P Q v capA capC d hi)
    (ht : 0 ≤ t) (hCpos : 1 ≤ coordinateC P Q v d t)
    (hAcap : coordinateA Q v d t ≤ (capA : ℤ))
    (hCcap : coordinateC P Q v d t ≤ (capC : ℤ)) : lo ≤ t ∧ t ≤ hi := by
  unfold lowerCondition at hlow
  unfold upperCondition at hupp
  constructor
  · rcases hlow with hlo | hprev
    · exact hlo.trans ht
    · by_contra hnot
      have hmono : coordinateC P Q v d t ≤ coordinateC P Q v d (lo - 1) :=
        coordinateC_mono (by omega : t ≤ lo - 1)
      exact (not_lt_of_ge (hCpos.trans hmono)) hprev
  · by_contra hnot
    have hnext : hi + 1 ≤ t := by omega
    rcases hupp with hnextA | hnextC
    · exact (not_lt_of_ge ((coordinateA_mono hnext).trans hAcap)) hnextA
    · exact (not_lt_of_ge ((coordinateC_mono hnext).trans hCcap)) hnextC

/-- Positive affine coordinates within the caps give an actual natural solution.
Together with solution_parameterization this proves both directions. -/
theorem feasible_parameter_gives_solution {P Q v capA capC : ℕ} {d t : ℤ}
    (hQ : 1 < Q) (hinv : (P * v) % Q = 1)
    (hApos : 1 ≤ coordinateA Q v d t) (hCpos : 1 ≤ coordinateC P Q v d t)
    (hAcap : coordinateA Q v d t ≤ (capA : ℤ))
    (hCcap : coordinateC P Q v d t ≤ (capC : ℤ)) :
    ∃ A C : ℕ, 1 ≤ A ∧ A ≤ capA ∧ 1 ≤ C ∧ C ≤ capC ∧
      (A : ℤ) = coordinateA Q v d t ∧ (C : ℤ) = coordinateC P Q v d t ∧
      (P : ℤ) * (A : ℤ) - (Q : ℤ) * (C : ℤ) = d := by
  let A : ℕ := (coordinateA Q v d t).toNat
  let C : ℕ := (coordinateC P Q v d t).toNat
  have hAI : (A : ℤ) = coordinateA Q v d t := by
    dsimp only [A]
    exact Int.toNat_of_nonneg (by omega)
  have hCI : (C : ℤ) = coordinateC P Q v d t := by
    dsimp only [C]
    exact Int.toNat_of_nonneg (by omega)
  refine ⟨A, C, by omega, by omega, by omega, by omega, hAI, hCI, ?_⟩
  rw [hAI, hCI]
  simpa only [coordinateA, coordinateC] using progression_equation (d := d) hQ hinv t

end Math.B699.CRTPairMax
