import Mathlib.RingTheory.Polynomial.Resultant.Basic
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Tactic.Ring

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699Height

open Polynomial

/-- The integral polynomial discriminant has the full content exponent.
This is proved from the fixed mathlib resultant normalization. -/
theorem discr_C_mul {R : Type*} [CommRing R] [IsDomain R]
    (f : R[X]) (c : R) (hc : c ≠ 0) (hd : 0 < f.natDegree) :
    (C c * f).discr = c ^ (2 * f.natDegree - 2) * f.discr := by
  have hf : f ≠ 0 := by
    intro h
    simp [h] at hd
  have hfdeg : 0 < f.degree := natDegree_pos_iff_degree_pos.mp hd
  have hcfdeg : 0 < (C c * f).degree := by
    rw [← natDegree_pos_iff_degree_pos, natDegree_C_mul hc]
    exact hd
  have h := resultant_deriv (f := C c * f) hcfdeg
  rw [natDegree_C_mul hc, derivative_C_mul, resultant_C_mul_left,
    resultant_C_mul_right, resultant_deriv hfdeg] at h
  simp only [leadingCoeff_mul, leadingCoeff_C] at h
  have hp : c ^ (f.natDegree - 1) * c ^ f.natDegree =
      c * c ^ (2 * f.natDegree - 2) := by
    rw [← pow_add, ← pow_succ']
    congr 1
    omega
  have hn : (-1 : R) ^ (f.natDegree * (f.natDegree - 1) / 2) *
      c * f.leadingCoeff ≠ 0 := by
    exact mul_ne_zero (mul_ne_zero (pow_ne_zero _ (by simp)) hc)
      (leadingCoeff_ne_zero.mpr hf)
  apply mul_left_cancel₀ hn
  calc
    _ = c ^ (f.natDegree - 1) * c ^ f.natDegree *
        ((-1 : R) ^ (f.natDegree * (f.natDegree - 1) / 2) *
          f.leadingCoeff * f.discr) := by
      simpa only [mul_assoc, mul_left_comm, mul_comm] using h.symm
    _ = _ := by rw [hp]; ring

/-- Exact content divisibility, retaining every prime exponent. -/
theorem content_pow_dvd_discr (f g : ℤ[X]) (d : ℤ) (hd : d ≠ 0)
    (hf : f = C d * g) (hdeg : 0 < f.natDegree) :
    d ^ (2 * f.natDegree - 2) ∣ f.discr := by
  have hnd : f.natDegree = g.natDegree := by rw [hf, natDegree_C_mul hd]
  refine ⟨g.discr, ?_⟩
  rw [hf, natDegree_C_mul hd, discr_C_mul g d hd (by omega)]

/-- A first-order lowering identity determines the discriminant recursively.
All hypotheses concern polynomial identities and degrees; no separability or
discriminant identity is assumed. -/
theorem discr_of_lowering (f g L : ℤ[X]) (d : ℕ) (hd : 1 ≤ d) (a : ℤ)
    (hf : f.natDegree = d + 1) (hg : g.natDegree = d)
    (hder : f.derivative = C a * g) (hL : L.natDegree ≤ 1)
    (hlower : C (d + 1 : ℤ) * f = X * (1 - X) * g.derivative + g * L) :
    (d + 1 : ℤ) ^ (d - 1) * f.discr =
      a ^ d * g.eval 0 * g.eval 1 * g.discr := by
  have hf0 : f ≠ 0 := by intro h; simp [h] at hf
  have hg0 : g ≠ 0 := by intro h; simp [h] at hg; omega
  have hgd : g.derivative.natDegree = d - 1 := by simp [hg]
  have hgd0 : g.derivative ≠ 0 := derivative_ne_zero.mpr (by omega)
  have hfp : 0 < f.degree := natDegree_pos_iff_degree_pos.mp (by omega)
  have hgp : 0 < g.degree := natDegree_pos_iff_degree_pos.mp (by omega)
  have hprod : ((X - C (1 : ℤ)) * g.derivative).natDegree = d := by
    rw [natDegree_mul (X_sub_C_ne_zero _) hgd0, natDegree_X_sub_C, hgd]
    omega
  have hmul1 : g.resultant ((X - C 1) * g.derivative) d d =
      g.resultant (X - C 1) d 1 * g.resultant g.derivative d (d - 1) := by
    have h := resultant_mul_right g (X - C 1) g.derivative d (by omega)
    simpa only [natDegree_X_sub_C, hgd, show 1 + (d - 1) = d by omega] using h
  have hmul2 : g.resultant ((X - C 0) * ((X - C 1) * g.derivative)) d (d + 1) =
      g.resultant (X - C 0) d 1 *
        g.resultant ((X - C 1) * g.derivative) d d := by
    have h := resultant_mul_right g (X - C 0)
      ((X - C 1) * g.derivative) d (by omega)
    simpa only [natDegree_X_sub_C, hprod, Nat.add_comm 1 d] using h
  have hq : X * (1 - X) * g.derivative =
      C (-1) * ((X - C 0) * ((X - C 1) * g.derivative)) := by
    simp only [map_zero, map_one, map_neg]
    ring
  have hsign2 : (-1 : ℤ) ^ d * (-1 : ℤ) ^ d = 1 := by
    rw [← mul_pow]
    norm_num
  have hqres : g.resultant (X * (1 - X) * g.derivative) d (d + 1) =
      (-1 : ℤ) ^ d * g.eval 0 * g.eval 1 *
        g.resultant g.derivative d (d - 1) := by
    rw [hq, resultant_C_mul_right, hmul2, hmul1,
      resultant_X_sub_C_right g d 0 (by omega),
      resultant_X_sub_C_right g d 1 (by omega)]
    calc
      _ = ((-1 : ℤ) ^ d * (-1 : ℤ) ^ d) *
          ((-1 : ℤ) ^ d * g.eval 0 * g.eval 1 *
            g.resultant g.derivative d (d - 1)) := by ring
      _ = _ := by rw [hsign2, one_mul]
  have hres : (d + 1 : ℤ) ^ d * g.resultant f d (d + 1) =
      (-1 : ℤ) ^ d * g.eval 0 * g.eval 1 *
        ((-1 : ℤ) ^ (d * (d - 1) / 2) * g.leadingCoeff * g.discr) := by
    calc
      _ = g.resultant (C (d + 1 : ℤ) * f) d (d + 1) :=
        by rw [resultant_C_mul_right]
      _ = g.resultant (X * (1 - X) * g.derivative) d (d + 1) := by
        rw [hlower, resultant_add_mul_right g _ L d (d + 1) (by omega) (by omega)]
      _ = _ := by
        rw [hqres]
        have h := resultant_deriv (f := g) hgp
        rw [hg] at h
        rw [h]
  have heven : (-1 : ℤ) ^ ((d + 1) * d) = 1 := by
    obtain ⟨r, hr⟩ := Nat.two_dvd_mul_add_one d
    rw [Nat.mul_comm (d + 1) d, hr, pow_mul]
    norm_num
  have hcomm : f.resultant g (d + 1) d = g.resultant f d (d + 1) := by
    rw [resultant_comm, heven, one_mul]
  have hresder : a ^ (d + 1) * g.resultant f d (d + 1) =
      (-1 : ℤ) ^ ((d + 1) * d / 2) * f.leadingCoeff * f.discr := by
    have h := resultant_deriv (f := f) hfp
    rw [hf, Nat.add_sub_cancel_right, hder, resultant_C_mul_right, hcomm] at h
    exact h
  have htri : (d + 1) * d / 2 = d * (d - 1) / 2 + d := by
    simpa only [Nat.add_sub_cancel_right] using Nat.triangle_succ d
  have hsign : (-1 : ℤ) ^ ((d + 1) * d / 2) =
      (-1 : ℤ) ^ d * (-1 : ℤ) ^ (d * (d - 1) / 2) := by
    rw [htri, pow_add, mul_comm]
  have hlc : f.leadingCoeff * (d + 1 : ℤ) = a * g.leadingCoeff := by
    have h := congr_arg Polynomial.leadingCoeff hder
    simpa only [leadingCoeff_derivative, hf, Nat.cast_add, Nat.cast_one,
      leadingCoeff_mul, leadingCoeff_C] using h
  have hraw : (-1 : ℤ) ^ ((d + 1) * d / 2) * f.leadingCoeff *
      (d + 1 : ℤ) ^ d * f.discr =
      (-1 : ℤ) ^ ((d + 1) * d / 2) * a ^ d *
        (a * g.leadingCoeff) * g.eval 0 * g.eval 1 * g.discr := by
    calc
      _ = (d + 1 : ℤ) ^ d *
          ((-1 : ℤ) ^ ((d + 1) * d / 2) * f.leadingCoeff * f.discr) := by ring
      _ = a ^ (d + 1) * ((d + 1 : ℤ) ^ d * g.resultant f d (d + 1)) := by
        rw [← hresder]
        ring
      _ = _ := by rw [hres, pow_succ, hsign]; ring
  rw [← hlc] at hraw
  have hp : (d + 1 : ℤ) ^ d = (d + 1 : ℤ) * (d + 1 : ℤ) ^ (d - 1) := by
    rw [← pow_succ']
    congr 1
    omega
  rw [hp] at hraw
  have hn : (-1 : ℤ) ^ ((d + 1) * d / 2) * f.leadingCoeff * (d + 1 : ℤ) ≠ 0 := by
    exact mul_ne_zero
      (mul_ne_zero (pow_ne_zero _ (by norm_num)) (leadingCoeff_ne_zero.mpr hf0))
      (by omega)
  apply mul_left_cancel₀ hn
  simpa only [mul_assoc, mul_left_comm, mul_comm] using hraw

end B699Height

#print axioms B699Height.discr_C_mul
#print axioms B699Height.content_pow_dvd_discr
#print axioms B699Height.discr_of_lowering
