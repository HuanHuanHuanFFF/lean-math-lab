import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PadeInteger
import Mathlib.Data.Nat.Choose.Sum

/-!
# Diagonal Padé P-content directly from positive binomial convolution

This file targets all u,B : Nat. It proves the actual coefficient identity

  p_k = (-1)^k * sum_{r=0}^k q_r * choose(u-r,k-r),  k <= u,

where p_k and q_r are the explicit signed coefficients already defined in
PadeInteger. This is the coefficient form of

  P(z) = sum_{r=0}^u q_r * (-z)^r * (1-z)^(u-r).

It implies divisibility of every P coefficient by the computed Q gcd,
without assuming the Padé remainder identity, analytic integrals, or a
content/height theorem. The positive convolution is proved from the elementary
Nat.multichoose recurrence. No new analysis import is required.

Candidate pending a serial run by the parent verifier. The original frozen
IntegerConstruction file is unchanged; this imports the accepted integration.
-/

namespace Math.B699.PadeContent

open scoped BigOperators
open Math.B699.PadeConstruction

private def multiConvolution (a b k : ℕ) : ℕ :=
  ∑ r ∈ Finset.range (k + 1), a.multichoose r * b.multichoose (k - r)

private theorem multiConvolution_zero (b k : ℕ) :
    multiConvolution 0 b k = b.multichoose k := by
  simp [multiConvolution, Finset.sum_range_succ']

private theorem multiConvolution_succ (a b k : ℕ) :
    multiConvolution a b (k + 1) = b.multichoose (k + 1) +
      ∑ r ∈ Finset.range (k + 1), a.multichoose (r + 1) * b.multichoose (k - r) := by
  unfold multiConvolution
  rw [Finset.sum_range_succ']
  simp only [Nat.multichoose_zero_right, Nat.sub_zero, one_mul, Nat.add_sub_add_right]
  omega

private theorem multiConvolution_recurrence (a b k : ℕ) :
    multiConvolution (a + 1) b (k + 1) =
      multiConvolution a b (k + 1) + multiConvolution (a + 1) b k := by
  rw [multiConvolution_succ (a + 1) b k, multiConvolution_succ a b k]
  simp_rw [Nat.multichoose_succ_succ, Nat.add_mul]
  rw [Finset.sum_add_distrib]
  unfold multiConvolution
  omega

/-- The positive Vandermonde convolution for multiset choices, proved from
Nat.multichoose's recurrence rather than assumed through a generating function. -/
theorem multichoose_convolution (a b k : ℕ) :
    (∑ r ∈ Finset.range (k + 1), a.multichoose r * b.multichoose (k - r)) =
      (a + b).multichoose k := by
  change multiConvolution a b k = (a + b).multichoose k
  induction a generalizing k with
  | zero => simpa only [Nat.zero_add] using multiConvolution_zero b k
  | succ a ha =>
    induction k with
    | zero => simp [multiConvolution]
    | succ k hk =>
      rw [multiConvolution_recurrence, ha, hk]
      simpa only [Nat.add_assoc, Nat.add_left_comm, Nat.add_comm] using
        (Nat.multichoose_succ_succ (a + b) k).symm

/-- The convolution used after extracting the common binomial factor. -/
theorem shifted_choose_convolution (u B k : ℕ) (hk : k ≤ u) :
    (∑ r ∈ Finset.range (k + 1), (B + r).choose r * (2 * u - r).choose (k - r)) =
      (2 * u + B + 1).choose k := by
  calc
    (∑ r ∈ Finset.range (k + 1), (B + r).choose r * (2 * u - r).choose (k - r)) =
        ∑ r ∈ Finset.range (k + 1),
          (B + 1).multichoose r * (2 * u - k + 1).multichoose (k - r) := by
      apply Finset.sum_congr rfl
      intro r hr
      have hle : r ≤ k := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
      rw [Nat.multichoose_eq, Nat.multichoose_eq]
      congr 2 <;> omega
    _ = (B + 1 + (2 * u - k + 1)).multichoose k := multichoose_convolution _ _ _
    _ = (2 * u + B + 1).choose k := by
      rw [Nat.multichoose_eq]
      congr 1
      omega

private theorem choose_product_rearrange (u k r : ℕ) (hk : k ≤ u) (hr : r ≤ k) :
    (2 * u - r).choose u * (u - r).choose (k - r) =
      (2 * u - k).choose u * (2 * u - r).choose (k - r) := by
  have hu : u ≤ 2 * u - r := by omega
  rw [← Nat.choose_symm hu]
  have hfirst : 2 * u - r - u = u - r := by omega
  rw [hfirst, Nat.choose_mul (show k - r ≤ u - r by omega)]
  have htop : 2 * u - r - (k - r) = 2 * u - k := by omega
  have hbottom : u - r - (k - r) = u - k := by omega
  rw [htop, hbottom]
  have hsym : (2 * u - k).choose (u - k) = (2 * u - k).choose u := by
    have hs := (Nat.choose_symm (show u ≤ 2 * u - k by omega))
    have hh : 2 * u - k - u = u - k := by omega
    simpa only [hh] using hs
  rw [hsym]
  exact Nat.mul_comm _ _

/-- The nonnegative weighted sum relating diagonal Q and P coefficients. -/
theorem weighted_choose_convolution (u B k : ℕ) (hk : k ≤ u) :
    (∑ r ∈ Finset.range (k + 1),
      (2 * u - r).choose u * (B + r).choose r * (u - r).choose (k - r)) =
      (2 * u - k).choose u * (2 * u + B + 1).choose k := by
  calc
    (∑ r ∈ Finset.range (k + 1),
        (2 * u - r).choose u * (B + r).choose r * (u - r).choose (k - r)) =
      ∑ r ∈ Finset.range (k + 1),
        (2 * u - k).choose u * ((B + r).choose r * (2 * u - r).choose (k - r)) := by
      apply Finset.sum_congr rfl
      intro r hr
      have hle : r ≤ k := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
      calc
        (2 * u - r).choose u * (B + r).choose r * (u - r).choose (k - r) =
          ((2 * u - r).choose u * (u - r).choose (k - r)) * (B + r).choose r := by ring
        _ = ((2 * u - k).choose u * (2 * u - r).choose (k - r)) * (B + r).choose r := by
          rw [choose_product_rearrange u k r hk hle]
        _ = (2 * u - k).choose u * ((B + r).choose r * (2 * u - r).choose (k - r)) := by ring
    _ = (2 * u - k).choose u *
      (∑ r ∈ Finset.range (k + 1), (B + r).choose r * (2 * u - r).choose (k - r)) := by
      rw [Finset.mul_sum]
    _ = (2 * u - k).choose u * (2 * u + B + 1).choose k := by
      rw [shifted_choose_convolution u B k hk]

/-- An explicit integer triangular transform of the actual Q coefficients.
This is the useful full-parameter bridge; it assumes no remainder identity. -/
theorem pCoefficient_eq_q_triangular (u B k : ℕ) (hk : k ≤ u) :
    pCoefficient u B u k = (-1 : ℤ) ^ k *
      ∑ r ∈ Finset.range (k + 1), qCoefficient u B u r * ((u - r).choose (k - r) : ℤ) := by
  have hz :
      (∑ r ∈ Finset.range (k + 1),
        ((2 * u - r).choose u : ℤ) * ((B + r).choose r : ℤ) *
          ((u - r).choose (k - r) : ℤ)) =
        ((2 * u - k).choose u : ℤ) * ((2 * u + B + 1).choose k : ℤ) := by
    exact_mod_cast weighted_choose_convolution u B k hk
  have hN : u + B + u + 1 = 2 * u + B + 1 := by omega
  have hU : u + u = 2 * u := by omega
  calc
    pCoefficient u B u k = (-1 : ℤ) ^ (u + k) *
        (((2 * u - k).choose u : ℤ) * ((2 * u + B + 1).choose k : ℤ)) := by
      simp only [pCoefficient, hN, hU]
      ring
    _ = (-1 : ℤ) ^ k * ((-1 : ℤ) ^ u *
        ∑ r ∈ Finset.range (k + 1),
          ((2 * u - r).choose u : ℤ) * ((B + r).choose r : ℤ) *
            ((u - r).choose (k - r) : ℤ)) := by
      rw [hz, pow_add]
      ring
    _ = (-1 : ℤ) ^ k *
        ∑ r ∈ Finset.range (k + 1), qCoefficient u B u r * ((u - r).choose (k - r) : ℤ) := by
      rw [Finset.mul_sum]
      congr 1
      apply Finset.sum_congr rfl
      intro r hr
      simp only [qCoefficient, qMagnitude, hU, Nat.cast_mul]
      ring

/-- The source Q-content divides each actual P coefficient in the diagonal
case, for all u and B. There is no hypothetical polynomial identity input. -/
theorem qContent_dvd_pCoefficient (u B k : ℕ) (hk : k ≤ u) :
    (qContent u B u : ℤ) ∣ pCoefficient u B u k := by
  rw [pCoefficient_eq_q_triangular u B k hk]
  apply dvd_mul_of_dvd_right
  apply Finset.dvd_sum
  intro r hr
  have hrk : r ≤ k := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
  exact dvd_mul_of_dvd_left (qContent_dvd_qCoefficient u B u r (hrk.trans hk)) _

theorem qContent_dvd_pPolynomial_coeff (u B k : ℕ) :
    (qContent u B u : ℤ) ∣ (pPolynomial u B u).coeff k := by
  rw [pPolynomial, coefficientPolynomial_coeff]
  by_cases hk : k ≤ u
  · rw [if_pos hk]
    exact qContent_dvd_pCoefficient u B k hk
  · rw [if_neg hk]
    exact dvd_zero _

def pNormalizedCoefficient (u B r : ℕ) : ℤ :=
  pCoefficient u B u r / (qContent u B u : ℤ)

def pNormalizedValue (u B : ℕ) (x y : ℤ) : ℤ :=
  homogeneousValue u (pNormalizedCoefficient u B) x y

theorem qContent_mul_pNormalizedCoefficient (u B r : ℕ) (hr : r ≤ u) :
    (qContent u B u : ℤ) * pNormalizedCoefficient u B r = pCoefficient u B u r := by
  rw [pNormalizedCoefficient, mul_comm]
  exact Int.ediv_mul_cancel (qContent_dvd_pCoefficient u B r hr)

theorem qContent_mul_pNormalizedValue (u B : ℕ) (x y : ℤ) :
    (qContent u B u : ℤ) * pNormalizedValue u B x y =
      homogeneousValue u (pCoefficient u B u) x y := by
  classical
  simp only [pNormalizedValue, homogeneousValue, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  rw [← mul_assoc, ← mul_assoc, qContent_mul_pNormalizedCoefficient u B r
    (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))]

/-- The normalized P needed alongside the already constructed normalized Q
is an explicit integer, with the exact real Padé polynomial value. -/
theorem pNormalizedValue_cast_eq (u B : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (pNormalizedValue u B x y : ℝ) =
      (y : ℝ) ^ u / (qContent u B u : ℝ) *
        (pPolynomial u B u).eval₂ (Int.castRingHom ℝ) ((x : ℝ) / (y : ℝ)) := by
  have hg : (qContent u B u : ℝ) ≠ 0 :=
    Nat.cast_ne_zero.mpr (Nat.ne_of_gt (qContent_pos u B u))
  have hmul := congrArg (fun k : ℤ => (k : ℝ)) (qContent_mul_pNormalizedValue u B x y)
  simp only [Int.cast_mul, Int.cast_natCast] at hmul
  rw [homogeneousValue_cast_eq u (pCoefficient u B u) x y hy] at hmul
  dsimp [pPolynomial]
  apply (mul_left_cancel₀ hg)
  calc
    (qContent u B u : ℝ) * (pNormalizedValue u B x y : ℝ) =
      (y : ℝ) ^ u * (coefficientPolynomial u (pCoefficient u B u)).eval₂
        (Int.castRingHom ℝ) ((x : ℝ) / (y : ℝ)) := hmul
    _ = (qContent u B u : ℝ) * ((y : ℝ) ^ u / (qContent u B u : ℝ) *
        (coefficientPolynomial u (pCoefficient u B u)).eval₂
          (Int.castRingHom ℝ) ((x : ℝ) / (y : ℝ))) := by
      field_simp <;> ring

#print axioms Math.B699.PadeContent.multichoose_convolution
#print axioms Math.B699.PadeContent.shifted_choose_convolution
#print axioms Math.B699.PadeContent.weighted_choose_convolution
#print axioms Math.B699.PadeContent.pCoefficient_eq_q_triangular
#print axioms Math.B699.PadeContent.qContent_dvd_pCoefficient
#print axioms Math.B699.PadeContent.qContent_dvd_pPolynomial_coeff
#print axioms Math.B699.PadeContent.qContent_mul_pNormalizedValue
#print axioms Math.B699.PadeContent.pNormalizedValue_cast_eq

end Math.B699.PadeContent
