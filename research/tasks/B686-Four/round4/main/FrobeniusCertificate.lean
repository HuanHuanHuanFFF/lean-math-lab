import Mathlib.FieldTheory.Finite.Extension
import Mathlib.RingTheory.Polynomial.GaussLemma
import Mathlib.Algebra.Polynomial.Eval.Irreducible
import Mathlib.RingTheory.Coprime.Lemmas
import Mathlib.Tactic.ComputeDegree
import Mathlib.Tactic.IntervalCases
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
import Mathlib.Tactic.ReduceModChar

/-! Algebraic certificate only: this file does not assert point counts,
good reduction, or a Jacobian/Prym identification. -/
namespace B686Round4Frobenius
noncomputable section
open Polynomial
local instance : Fact (Nat.Prime 7) := ⟨by decide⟩
local notation "K" => ZMod 7
def f : K[X] := X ^ 8 + X ^ 7 + 5 * X ^ 6 + X ^ 5 + 5 * X ^ 4 + 4 * X ^ 3 + 3 * X ^ 2 + X + 4
def r0 : K[X] := X
def r1 : K[X] := X ^ 7
def r2 : K[X] := 6 * X ^ 7 + 6 * X ^ 6 + 5 * X ^ 5 + 6 * X ^ 4 + 2 * X ^ 3 + X ^ 2 + 5 * X
def r3 : K[X] := 6 * X ^ 7 + 5 * X ^ 4 + X ^ 3 + 6 * X ^ 2 + 4 * X + 5
def r4 : K[X] := 6 * X ^ 7 + 6 * X ^ 6 + 2 * X ^ 5 + 6 * X ^ 4 + 2 * X ^ 3 + 3 * X ^ 2 + 4 * X + 6
def r5 : K[X] := 5 * X ^ 7 + 2 * X ^ 6 + 6 * X ^ 5 + X ^ 4 + 6 * X ^ 3 + 2 * X ^ 2 + 3 * X + 1
def r6 : K[X] := X ^ 7 + 4 * X ^ 6 + 4 * X ^ 5 + X ^ 4 + 4 * X ^ 2 + 2 * X + 5
def r7 : K[X] := 3 * X ^ 7 + 3 * X ^ 6 + 4 * X ^ 5 + 2 * X ^ 4 + 3 * X ^ 3 + 5 * X ^ 2 + 2 * X + 3
def r8 : K[X] := X

set_option maxRecDepth 100000
set_option maxHeartbeats 3000000

@[irreducible] def frobPower (n : ℕ) : K[X] := X ^ (7 ^ n)

theorem step0 : f ∣ r0 ^ 7 - r1 := by
  refine ⟨0, ?_⟩
  simp only [f, r0, r1]
  ring_nf

theorem step1 : f ∣ r1 ^ 7 - r2 := by
  refine ⟨X ^ 41 + 6 * X ^ 40 + 3 * X ^ 39 + X ^ 38 + X ^ 37 + 6 * X ^ 36 + 2 * X ^ 35 + X ^ 34 + 4 * X ^ 33 + 2 * X ^ 32 + 4 * X ^ 31 + 2 * X ^ 30 + 6 * X ^ 29 + 2 * X ^ 28 + X ^ 27 + 6 * X ^ 26 + 3 * X ^ 25 + 5 * X ^ 24 + 2 * X ^ 23 + X ^ 21 + 3 * X ^ 20 + 6 * X ^ 19 + 5 * X ^ 18 + 4 * X ^ 17 + X ^ 16 + 5 * X ^ 15 + 4 * X ^ 14 + 3 * X ^ 13 + 2 * X ^ 12 + 4 * X ^ 10 + X ^ 9 + 6 * X ^ 8 + X ^ 6 + 4 * X ^ 4 + 6 * X ^ 3 + 4 * X ^ 2 + 4 * X, ?_⟩
  simp only [f, r1, r2]
  ring_nf; reduce_mod_char; ring_nf; reduce_mod_char

theorem step2 : f ∣ r2 ^ 7 - r3 := by
  refine ⟨6 * X ^ 41 + X ^ 40 + 4 * X ^ 39 + 6 * X ^ 38 + 6 * X ^ 37 + X ^ 36 + 5 * X ^ 35 + 5 * X ^ 34 + 4 * X ^ 33 + 2 * X ^ 32 + 2 * X ^ 31 + 4 * X ^ 30 + 2 * X ^ 29 + 3 * X ^ 28 + 3 * X ^ 27 + 6 * X ^ 26 + 3 * X ^ 25 + 3 * X ^ 24 + X ^ 23 + 3 * X ^ 22 + 2 * X ^ 19 + 6 * X ^ 18 + 3 * X ^ 17 + 6 * X ^ 16 + 5 * X ^ 15 + 3 * X ^ 14 + 2 * X ^ 12 + X ^ 10 + X ^ 9 + 2 * X ^ 8 + 3 * X ^ 7 + 6 * X ^ 6 + X ^ 5 + 4 * X ^ 4 + 3 * X ^ 2 + 5 * X + 4, ?_⟩
  simp only [f, r2, r3]
  ring_nf; reduce_mod_char; ring_nf; reduce_mod_char

theorem step3 : f ∣ r3 ^ 7 - r4 := by
  refine ⟨6 * X ^ 41 + X ^ 40 + 4 * X ^ 39 + 6 * X ^ 38 + 6 * X ^ 37 + X ^ 36 + 5 * X ^ 35 + 6 * X ^ 34 + 3 * X ^ 33 + 5 * X ^ 32 + 3 * X ^ 31 + 5 * X ^ 30 + X ^ 29 + 5 * X ^ 28 + 6 * X ^ 27 + X ^ 26 + 4 * X ^ 25 + 2 * X ^ 24 + 5 * X ^ 23 + 6 * X ^ 21 + 2 * X ^ 20 + 3 * X ^ 19 + 3 * X ^ 18 + X ^ 17 + 4 * X ^ 16 + 4 * X ^ 15 + 6 * X ^ 14 + 3 * X ^ 13 + 3 * X ^ 12 + 6 * X ^ 11 + 3 * X ^ 10 + 3 * X ^ 9 + 2 * X ^ 8 + 5 * X ^ 7 + 4 * X ^ 6 + 3 * X ^ 4 + X ^ 3 + 3 * X + 5, ?_⟩
  simp only [f, r3, r4]
  ring_nf; reduce_mod_char

theorem frob_step (n : ℕ) (a b : K[X])
    (h : f ∣ frobPower n - a) (hs : f ∣ a ^ 7 - b) :
    f ∣ frobPower (n + 1) - b := by
  unfold frobPower at *
  have hp := dvd_trans h (sub_dvd_pow_sub_pow (X ^ (7 ^ n)) a 7)
  have hh := dvd_add hp hs
  rw [sub_add_sub_cancel, ← pow_mul, ← pow_succ] at hh
  exact hh

theorem power0 : f ∣ frobPower 0 - r0 := by simp [frobPower, r0]
theorem power1 : f ∣ frobPower 1 - r1 := frob_step 0 r0 r1 power0 step0
theorem power2 : f ∣ frobPower 2 - r2 := frob_step 1 r1 r2 power1 step1
theorem power3 : f ∣ frobPower 3 - r3 := frob_step 2 r2 r3 power2 step2
theorem power4 : f ∣ frobPower 4 - r4 := frob_step 3 r3 r4 power3 step3

theorem coprime1 : IsCoprime f (frobPower 1 - X) := by
  let u : K[X] := 2 * X ^ 5 + X ^ 4 + X ^ 3 + 6 * X ^ 2 + 4 * X + 2
  let v : K[X] := 5 * X ^ 6 + 4 * X ^ 5 + 2 * X ^ 4 + 2 * X ^ 2 + 6 * X + 4
  have hb : u * f + v * (r1 - X) = 1 := by
    simp only [u, v, f, r1]
    ring_nf; reduce_mod_char
  obtain ⟨q, hq⟩ := power1
  refine ⟨u - v * q, v, ?_⟩
  calc
    _ = u * f + v * (r1 - X) + v * (frobPower 1 - r1 - f * q) := by ring
    _ = 1 := by rw [hb, hq]; ring


theorem coprime2 : IsCoprime f (frobPower 2 - X) := by
  let u : K[X] := 5 * X ^ 6 + 3 * X ^ 5 + 6 * X ^ 4 + 2 * X ^ 3 + 2
  let v : K[X] := 5 * X ^ 7 + 3 * X ^ 6 + 3 * X ^ 4 + X ^ 3 + 6 * X ^ 2 + 3 * X + 3
  have hb : u * f + v * (r2 - X) = 1 := by
    simp only [u, v, f, r2]
    ring_nf; reduce_mod_char
  obtain ⟨q, hq⟩ := power2
  refine ⟨u - v * q, v, ?_⟩
  calc
    _ = u * f + v * (r2 - X) + v * (frobPower 2 - r2 - f * q) := by ring
    _ = 1 := by rw [hb, hq]; ring


theorem coprime3 : IsCoprime f (frobPower 3 - X) := by
  let u : K[X] := 5 * X ^ 6 + X ^ 5 + 2 * X ^ 4 + 6 * X ^ 3 + 4 * X ^ 2 + 6 * X + 1
  let v : K[X] := 5 * X ^ 7 + 6 * X ^ 6 + X ^ 4 + 4 * X ^ 3 + 5 * X ^ 2 + 6 * X + 5
  have hb : u * f + v * (r3 - X) = 1 := by
    simp only [u, v, f, r3]
    ring_nf; reduce_mod_char
  obtain ⟨q, hq⟩ := power3
  refine ⟨u - v * q, v, ?_⟩
  calc
    _ = u * f + v * (r3 - X) + v * (frobPower 3 - r3 - f * q) := by ring
    _ = 1 := by rw [hb, hq]; ring


theorem coprime4 : IsCoprime f (frobPower 4 - X) := by
  let u : K[X] := 6 * X ^ 5 + 6 * X ^ 4 + 5 * X ^ 3 + 2 * X ^ 2 + X + 4
  let v : K[X] := 6 * X ^ 6 + 6 * X ^ 5 + 5 * X ^ 4 + 2 * X ^ 3 + X ^ 2 + 4 * X + 1
  have hb : u * f + v * (r4 - X) = 1 := by
    simp only [u, v, f, r4]
    ring_nf; reduce_mod_char
  obtain ⟨q, hq⟩ := power4
  refine ⟨u - v * q, v, ?_⟩
  calc
    _ = u * f + v * (r4 - X) + v * (frobPower 4 - r4 - f * q) := by ring
    _ = 1 := by rw [hb, hq]; ring

theorem f_monic : f.Monic := by unfold f; monicity <;> norm_num
theorem f_degree : f.natDegree = 8 := by unfold f; compute_degree <;> norm_num

theorem f_irreducible : Irreducible f := by
  have hf1 : f ≠ 1 := by
    intro h
    have := f_degree
    rw [h, natDegree_one] at this
    omega
  apply (f_monic.irreducible_iff_lt_natDegree_lt hf1).mpr
  intro q hq hdegree hqf
  obtain ⟨hl, hu⟩ := Finset.mem_Ioc.mp hdegree
  rw [f_degree] at hu
  obtain ⟨g, hg, hgq⟩ := exists_irreducible_of_natDegree_pos hl
  have hgf := dvd_trans hgq hqf
  have hgl := Irreducible.natDegree_pos hg
  have hgu := natDegree_le_of_dvd hgq hq.ne_zero
  have hbound : g.natDegree ≤ 4 := by omega
  have hgd : g ∣ frobPower g.natDegree - X := by
    simpa only [frobPower, Nat.card_eq_fintype_card, ZMod.card] using hg.natDegree_dvd_iff_dvd_X_pow_card_pow_sub_X.mp (dvd_refl g.natDegree)
  have hc : IsCoprime f (frobPower g.natDegree - X) := by
    interval_cases he : g.natDegree
    · exact coprime1
    · exact coprime2
    · exact coprime3
    · exact coprime4
  exact hg.not_isUnit (hc.isUnit_of_dvd' hgf hgd)

def integralPolynomial : ℤ[X] := X ^ 8 + 8 * X ^ 7 + 33 * X ^ 6 +
  134 * X ^ 5 + 523 * X ^ 4 + 1474 * X ^ 3 + 3993 * X ^ 2 + 10648 * X + 14641
theorem integral_monic : integralPolynomial.Monic := by
  unfold integralPolynomial
  monicity <;> norm_num
theorem integral_mod_seven : integralPolynomial.map (Int.castRingHom K) = f := by
  simp only [integralPolynomial, f, Polynomial.map_add, Polynomial.map_mul, Polynomial.map_pow,
    Polynomial.map_X, Polynomial.map_ofNat]
  reduce_mod_char
theorem integral_irreducible : Irreducible integralPolynomial := by
  apply Polynomial.Monic.irreducible_of_irreducible_map (Int.castRingHom K) integralPolynomial integral_monic
  rw [integral_mod_seven]
  exact f_irreducible
theorem rational_irreducible : Irreducible (integralPolynomial.map (Int.castRingHom ℚ)) := by
  exact (Polynomial.IsPrimitive.Int.irreducible_iff_irreducible_map_cast integral_monic.isPrimitive).mp integral_irreducible

/-- info: 'B686Round4Frobenius.f_irreducible' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms f_irreducible

/-- info: 'B686Round4Frobenius.rational_irreducible' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms rational_irreducible

end
end B686Round4Frobenius
