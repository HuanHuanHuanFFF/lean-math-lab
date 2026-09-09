import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.distance.HarmonicSum
import Mathlib.Data.Rat.Lemmas

/-! The exact center-distance exponent in the paper's denominator bound. -/
namespace B686Harmonic
open Finset
set_option maxHeartbeats 2400000

def positionOffset (k i : ℕ) : ℕ := ((k+1 : ℤ)-2*i).natAbs

lemma harmonic_difference_den_bound (a l k : ℕ) (halk : a+l≤k) :
    (harmonic (a+l)-harmonic a).den≤k^l := by
  induction l with
  | zero => simp
  | succ l ih =>
    have ih := ih (by omega)
    rw [show a+(l+1)=(a+l)+1 by omega,harmonic_succ]
    have hid : harmonic (a+l)+(((a+l+1 : ℕ) : ℚ))⁻¹-harmonic a=
        (harmonic (a+l)-harmonic a)+(((a+l+1 : ℕ) : ℚ))⁻¹ := by ring
    rw [hid]
    have hdiv := Rat.add_den_dvd (harmonic (a+l)-harmonic a) (((a+l+1 : ℕ) : ℚ))⁻¹
    rw [Rat.inv_natCast_den_of_pos (by omega)] at hdiv
    have hle := Nat.le_of_dvd (Nat.mul_pos (harmonic (a+l)-harmonic a).den_pos (by omega)) hdiv
    calc
      _ ≤ (harmonic (a+l)-harmonic a).den*(a+l+1) := hle
      _ ≤ k^l*k := Nat.mul_le_mul ih (by omega)
      _ = k^(l+1) := (pow_succ _ _).symm

/-- Reduced denominator bound with the full signed distance from the center. -/
theorem harmonic_denominator_bound (k i : ℕ) (hi : i∈Icc 1 k) :
    (harmonicRatio k i).den≤k^positionOffset k i := by
  have hi' := mem_Icc.mp hi
  rw [harmonic_sum_split k i hi]
  by_cases h : i-1≤k-i
  · have hh := harmonic_difference_den_bound (i-1) ((k-i)-(i-1)) k (by omega)
    rw [show i-1+((k-i)-(i-1))=k-i by omega] at hh
    have hid : (k+1 : ℤ)-2*i=(((k-i)-(i-1) : ℕ) : ℤ) := by omega
    simpa only [positionOffset,hid,Int.natAbs_natCast] using hh
  · have hh := harmonic_difference_den_bound (k-i) ((i-1)-(k-i)) k (by omega)
    rw [show k-i+((i-1)-(k-i))=i-1 by omega] at hh
    have hid : (k+1 : ℤ)-2*i= -(((i-1)-(k-i) : ℕ) : ℤ) := by omega
    have hneg : harmonic (k-i)-harmonic (i-1)= -(harmonic (i-1)-harmonic (k-i)) := by ring
    rw [hneg,Rat.neg_den]
    simpa only [positionOffset,hid,Int.natAbs_neg,Int.natAbs_natCast] using hh

lemma harmonic_ratio_reflection (k i j : ℕ) (hi : i∈Icc 1 k) (hj : j∈Icc 1 k)
    (hsym : i+j=k+1) : harmonicRatio k j= -harmonicRatio k i := by
  have hi' := mem_Icc.mp hi
  have hj' := mem_Icc.mp hj
  rw [harmonic_sum_split k i hi,harmonic_sum_split k j hj,
    show k-i=j-1 by omega,show k-j=i-1 by omega]
  ring

lemma harmonic_ratio_pos_of_reflection (k i j : ℕ) (hi : i∈Icc 1 k) (hj : j∈Icc 1 k)
    (hsym : i+j=k+1) (hij : i<j) : 0<harmonicRatio k i := by
  have hi' := mem_Icc.mp hi
  have hj' := mem_Icc.mp hj
  rw [harmonic_sum_split k i hi]
  have hm := harmonic_monotone (show i≤k-i by omega)
  have hs : harmonic i=harmonic (i-1)+(i : ℚ)⁻¹ := by
    have h := harmonic_succ (i-1)
    rw [show i-1+1=i by omega] at h
    exact h
  have hp : (0 : ℚ)<(i : ℚ)⁻¹ := inv_pos.mpr (by exact_mod_cast hi'.1)
  linarith

lemma position_offset_of_reflection (k i j : ℕ) (hi : i∈Icc 1 k) (hj : j∈Icc 1 k)
    (hsym : i+j=k+1) (hij : i<j) : positionOffset k i=j-i := by
  have h : (k+1 : ℤ)-2*i=((j-i : ℕ) : ℤ) := by omega
  simp only [positionOffset,h,Int.natAbs_natCast]

/-- info: 'B686Harmonic.harmonic_denominator_bound' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms harmonic_denominator_bound
end B686Harmonic
