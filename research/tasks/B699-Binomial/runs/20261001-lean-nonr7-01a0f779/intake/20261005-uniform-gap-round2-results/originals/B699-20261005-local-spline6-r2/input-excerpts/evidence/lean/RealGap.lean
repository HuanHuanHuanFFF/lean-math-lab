module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».gap.GapDefinitions
public import Mathlib.Algebra.Order.Archimedean.Real.Basic
public import Mathlib.Algebra.Order.Floor.Semiring
public import Lean.Elab.Tactic.NormCast

/-! Exact natural/real domain conversion. The denominator and threshold are
unchanged; no infinite prime supplier is asserted without its input. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false

@[expose] public section

namespace B699TailGap

def RealGap (D Y : ℕ) : Prop :=
  ∀ x : ℝ, (Y : ℝ) ≤ x → ∃ p : ℕ, p.Prime ∧ x < (p : ℝ) ∧
    (D : ℝ) * ((p : ℝ) - x) ≤ x

theorem real_gap_of_nat_gap {D Y : ℕ} (hgap : Gap D Y) : RealGap D Y := by
  intro x hx
  have hx0 : 0 ≤ x := (Nat.cast_nonneg Y).trans hx
  have hy : Y ≤ Nat.floor x := Nat.le_floor hx
  obtain ⟨p, hp, hyp, hshort⟩ := hgap (Nat.floor x) hy
  have hxp : x < (p : ℝ) := (Nat.floor_lt hx0).1 hyp
  have hfloor : (Nat.floor x : ℝ) ≤ x := Nat.floor_le hx0
  have hshortR : ((D * (p - Nat.floor x) : ℕ) : ℝ) ≤ (Nat.floor x : ℝ) := by
    exact_mod_cast hshort
  rw [Nat.cast_mul, Nat.cast_sub hyp.le] at hshortR
  refine ⟨p, hp, hxp, ?_⟩
  calc
    (D : ℝ) * ((p : ℝ) - x) ≤ (D : ℝ) * ((p : ℝ) - (Nat.floor x : ℝ)) :=
      mul_le_mul_of_nonneg_left (sub_le_sub_left hfloor _) (Nat.cast_nonneg D)
    _ ≤ (Nat.floor x : ℝ) := hshortR
    _ ≤ x := hfloor

theorem nat_gap_of_real_gap {D Y : ℕ} (hgap : RealGap D Y) : Gap D Y := by
  intro y hy
  have hyR : (Y : ℝ) ≤ (y : ℝ) := by exact_mod_cast hy
  obtain ⟨p, hp, hyp, hshort⟩ := hgap y hyR
  have hypN : y < p := by exact_mod_cast hyp
  refine ⟨p, hp, hypN, ?_⟩
  have hshortR : ((D * (p - y) : ℕ) : ℝ) ≤ (y : ℝ) := by
    simpa only [Nat.cast_mul, Nat.cast_sub hypN.le] using hshort
  exact_mod_cast hshortR

theorem nat_gap_iff_real_gap {D Y : ℕ} : Gap D Y ↔ RealGap D Y :=
  ⟨real_gap_of_nat_gap, nat_gap_of_real_gap⟩

end B699TailGap

#print B699TailGap.RealGap
#print axioms B699TailGap.real_gap_of_nat_gap
#print axioms B699TailGap.nat_gap_of_real_gap
#print axioms B699TailGap.nat_gap_iff_real_gap
