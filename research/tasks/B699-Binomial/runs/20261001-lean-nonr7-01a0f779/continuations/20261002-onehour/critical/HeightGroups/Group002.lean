import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.HeightGroups.Group001
import Mathlib.Algebra.GCDMonoid.Finset
import Mathlib.Algebra.Polynomial.BigOperators
import Mathlib.Algebra.Polynomial.Eval.Defs
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring
set_option Elab.async false
/- Frozen member 8 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\I11TwoFiveEdge\Parameters.lean e50b2f55c3ab593b8fce6d85eb0a6ea91c8ca577b502143b967cb770f60d01d2 -/
section HeightMember008


/-! UNCOMPILED. Fixed original two-five selector and shared extraction index. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TwoFiveScaled
open Math.B699.DiscretePadeSelector

def twoFiveZ : ℕ := 115572769905797
def twoFiveY0 : ℕ := 2 ^ 15359
def twoFiveM : ℕ := 329

theorem twoFiveZ_gt_one : 1 < twoFiveZ := by decide

def twoFiveIndex (Y : ℕ) : ℕ := leastExponent twoFiveZ Y twoFiveZ_gt_one

theorem index_ge_M (Y : ℕ) (hY : twoFiveY0 ≤ Y)
    (hprevious : twoFiveZ ^ (twoFiveM - 1) ≤ 4 * twoFiveY0) :
    twoFiveM ≤ twoFiveIndex Y := by
  exact leastExponent_lower_bound twoFiveZ twoFiveY0 Y twoFiveM
    twoFiveZ_gt_one hY (by decide) hprevious

theorem index_ge_m0 (Y : ℕ) (hY : twoFiveY0 ≤ Y)
    (hprevious : twoFiveZ ^ (twoFiveM - 1) ≤ 4 * twoFiveY0) :
    141 ≤ twoFiveIndex Y := by
  have h := index_ge_M Y hY hprevious
  dsimp only [twoFiveM] at h
  omega

theorem extract_same_index (Y e f A C : ℕ)
    (hY : twoFiveY0 ≤ Y)
    (hprevious : twoFiveZ ^ (twoFiveM - 1) ≤ 4 * twoFiveY0)
    (hrateP : 2 ^ 35000 ≤ twoFiveZ ^ 752)
    (hbaseP : (2 ^ 35000) ^ twoFiveM ≤ twoFiveY0 ^ 752)
    (hlookP : 4 ^ 752 * (2 ^ 35000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (752 * twoFiveM))
    (hrateQ : 5 ^ 15000 ≤ twoFiveZ ^ 748)
    (hbaseQ : (5 ^ 15000) ^ twoFiveM ≤ twoFiveY0 ^ 748)
    (hlookQ : 4 ^ 748 * (5 ^ 15000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (748 * twoFiveM))
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hsmallP : A ^ 1000 < Y ^ 248) (hsmallQ : C ^ 1000 < Y ^ 252) :
    35 * twoFiveIndex Y < e ∧ 15 * twoFiveIndex Y < f := by
  have hY0 : 0 < twoFiveY0 := Nat.pow_pos (by decide : 0 < (2 : ℕ))
  have hM : 0 < twoFiveM := by decide
  constructor
  · have hP := Math.B699.I11ActualPadeEdge.least_capacity_forces_exponent
      2 35 1000 248 twoFiveZ twoFiveM twoFiveY0 Y e A
      (by decide) (by decide) twoFiveZ_gt_one hY0 hY hM
    simp only [show 35 * 1000 = 35000 by decide,
      show 1000 - 248 = 752 by decide] at hP
    exact hP hprevious hrateP hbaseP hlookP hwindowP hsmallP
  · have hQ := Math.B699.I11ActualPadeEdge.least_capacity_forces_exponent
      5 15 1000 252 twoFiveZ twoFiveM twoFiveY0 Y f C
      (by decide) (by decide) twoFiveZ_gt_one hY0 hY hM
    simp only [show 15 * 1000 = 15000 by decide,
      show 1000 - 252 = 748 by decide] at hQ
    exact hQ hprevious hrateQ hbaseQ hlookQ hwindowQ hsmallQ

end Math.B699.I11TwoFiveScaled

end HeightMember008
/- Frozen member 9 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\PadeInteger.lean 8aa4bdbd7b3751fe96bd4d953ee68ab5b7fd2fa374cb5ce623d7d460d444044b -/
section HeightMember009









/-!
# Actual integer Padé coefficient arrays and homogeneous values

Source: BFT, February 26, 2007 author manuscript, Lemma 3.1, printed page 9;
source integrals are (3.1)--(3.3). The signed P coefficient below agrees with
the source integral and the previously adopted asymmetric Padé report 4.1.
The fixed PDF's extracted P sum is missing this parity factor; no visual
confirmation of its typesetting is claimed by this file.

All arrays and the content are computed from natural binomial coefficients.
No Padé identity, height validity, or content lower bound is an axiom/input.
This file alone does not identify these polynomials with the integrals.
Candidate only until exact-source compilation and axiom auditing.
-/

namespace Math.B699.PadeConstruction

open scoped BigOperators
open Polynomial

/-- A bounded list of explicit integer coefficients made into a polynomial. -/
noncomputable def coefficientPolynomial (n : ℕ) (a : ℕ → ℤ) : ℤ[X] :=
  ∑ r ∈ Finset.range (n + 1), Polynomial.monomial r (a r)

theorem coefficientPolynomial_coeff (n r : ℕ) (a : ℕ → ℤ) :
    (coefficientPolynomial n a).coeff r = if r ≤ n then a r else 0 := by
  classical
  simp [coefficientPolynomial, Polynomial.finsetSum_coeff, Polynomial.coeff_monomial,
    Finset.sum_ite_eq', Nat.lt_succ_iff]

theorem coefficientPolynomial_natDegree_le (n : ℕ) (a : ℕ → ℤ) :
    (coefficientPolynomial n a).natDegree ≤ n := by
  classical
  apply Polynomial.natDegree_sum_le_of_forall_le
  intro r hr
  exact (Polynomial.natDegree_monomial_le (a r)).trans
    (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))

def pCoefficient (A B C r : ℕ) : ℤ :=
  (-1 : ℤ) ^ (C + r) * ((A + B + C + 1).choose r : ℤ) *
    ((A + C - r).choose A : ℤ)

def qMagnitude (A B C r : ℕ) : ℕ :=
  (A + C - r).choose C * (B + r).choose r

def qCoefficient (A B C r : ℕ) : ℤ :=
  (-1 : ℤ) ^ C * (qMagnitude A B C r : ℤ)

def eCoefficient (A B C r : ℕ) : ℤ :=
  (-1 : ℤ) ^ r * ((A + r).choose r : ℤ) *
    ((A + B + C + 1).choose (A + C + r + 1) : ℤ)

noncomputable def pPolynomial (A B C : ℕ) : ℤ[X] :=
  coefficientPolynomial C (pCoefficient A B C)

noncomputable def qPolynomial (A B C : ℕ) : ℤ[X] :=
  coefficientPolynomial A (qCoefficient A B C)

noncomputable def ePolynomial (A B C : ℕ) : ℤ[X] :=
  coefficientPolynomial B (eCoefficient A B C)

/-- The exact source gcd, before the diagonal specialization. -/
def qContent (A B C : ℕ) : ℕ :=
  (Finset.range (A + 1)).gcd (qMagnitude A B C)

@[simp] theorem pPolynomial_coeff_zero (A B C : ℕ) :
    (pPolynomial A B C).coeff 0 = (-1 : ℤ) ^ C * ((A + C).choose A : ℤ) := by
  simp [pPolynomial, coefficientPolynomial_coeff, pCoefficient]

@[simp] theorem qPolynomial_coeff_zero (A B C : ℕ) :
    (qPolynomial A B C).coeff 0 = (-1 : ℤ) ^ C * ((A + C).choose C : ℤ) := by
  simp [qPolynomial, coefficientPolynomial_coeff, qCoefficient, qMagnitude]

@[simp] theorem ePolynomial_coeff_zero (A B C : ℕ) :
    (ePolynomial A B C).coeff 0 =
      ((A + B + C + 1).choose (A + C + 1) : ℤ) := by
  simp [ePolynomial, coefficientPolynomial_coeff, eCoefficient]

theorem qContent_dvd_qMagnitude (A B C r : ℕ) (hr : r ≤ A) :
    qContent A B C ∣ qMagnitude A B C r := by
  exact Finset.gcd_dvd (Finset.mem_range.mpr (Nat.lt_succ_iff.mpr hr))

theorem qContent_dvd_qCoefficient (A B C r : ℕ) (hr : r ≤ A) :
    (qContent A B C : ℤ) ∣ qCoefficient A B C r := by
  obtain ⟨k, hk⟩ := qContent_dvd_qMagnitude A B C r hr
  refine ⟨(-1 : ℤ) ^ C * (k : ℤ), ?_⟩
  simp only [qCoefficient, hk, Nat.cast_mul]
  ring

theorem qContent_pos (A B C : ℕ) : 0 < qContent A B C := by
  have hd := qContent_dvd_qMagnitude A B C 0 (Nat.zero_le A)
  have hp : 0 < qMagnitude A B C 0 := by
    simpa [qMagnitude] using (Nat.choose_pos (show C ≤ A + C by omega))
  apply Nat.pos_of_ne_zero
  intro hz
  rw [hz] at hd
  have hzero : qMagnitude A B C 0 = 0 := Nat.zero_dvd.mp hd
  omega

/-- Natural BFT parameters: u = d*m-delta and B = c*m-u-1.
No integer division occurs in the constructed values. -/
def bftContent (c d m delta : ℕ) : ℕ :=
  qContent (d * m - delta) (c * m - (d * m - delta) - 1) (d * m - delta)

/-- Integer homogeneous evaluation, valid even when the second input is zero. -/
def homogeneousValue (n : ℕ) (a : ℕ → ℤ) (x y : ℤ) : ℤ :=
  ∑ r ∈ Finset.range (n + 1), a r * x ^ r * y ^ (n - r)

/-- Identifies the constructed integer with the denominator-cleared real
polynomial value, for every nonzero denominator. -/
theorem homogeneousValue_cast_eq (n : ℕ) (a : ℕ → ℤ) (x y : ℤ) (hy : y ≠ 0) :
    (homogeneousValue n a x y : ℝ) =
      (y : ℝ) ^ n * (coefficientPolynomial n a).eval₂ (Int.castRingHom ℝ)
        ((x : ℝ) / (y : ℝ)) := by
  classical
  have hyr : (y : ℝ) ≠ 0 := Int.cast_ne_zero.mpr hy
  simp only [homogeneousValue, coefficientPolynomial, Int.cast_sum, Int.cast_mul,
    Int.cast_pow, Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial,
    Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  have hle : r ≤ n := Nat.lt_succ_iff.mp (Finset.mem_range.mp hr)
  have hpow : (y : ℝ) ^ n = (y : ℝ) ^ (n - r) * (y : ℝ) ^ r := by
    rw [← pow_add, Nat.sub_add_cancel hle]
  change (a r : ℝ) * (x : ℝ) ^ r * (y : ℝ) ^ (n - r) =
    (y : ℝ) ^ n * ((a r : ℝ) * ((x : ℝ) / (y : ℝ)) ^ r)
  rw [hpow, div_pow]
  field_simp
  <;> ring

/-- Explicit gcd-normalized Q coefficients, not an existential integrality input. -/
def qNormalizedCoefficient (A B C r : ℕ) : ℤ :=
  qCoefficient A B C r / (qContent A B C : ℤ)

def qNormalizedValue (A B C : ℕ) (x y : ℤ) : ℤ :=
  homogeneousValue A (qNormalizedCoefficient A B C) x y

theorem qContent_mul_normalizedCoefficient (A B C r : ℕ) (hr : r ≤ A) :
    (qContent A B C : ℤ) * qNormalizedCoefficient A B C r = qCoefficient A B C r := by
  rw [qNormalizedCoefficient, mul_comm]
  exact Int.ediv_mul_cancel (qContent_dvd_qCoefficient A B C r hr)

theorem qContent_mul_normalizedValue (A B C : ℕ) (x y : ℤ) :
    (qContent A B C : ℤ) * qNormalizedValue A B C x y =
      homogeneousValue A (qCoefficient A B C) x y := by
  classical
  simp only [qNormalizedValue, homogeneousValue, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro r hr
  rw [← mul_assoc, ← mul_assoc, qContent_mul_normalizedCoefficient A B C r
    (Nat.lt_succ_iff.mp (Finset.mem_range.mp hr))]

/-- The Q value required by BFT Section 7 is now an actual integer; its
relation to the binomial coefficient polynomial is unconditional. -/
theorem qNormalizedValue_cast_eq (A B C : ℕ) (x y : ℤ) (hy : y ≠ 0) :
    (qNormalizedValue A B C x y : ℝ) =
      (y : ℝ) ^ A / (qContent A B C : ℝ) *
        (qPolynomial A B C).eval₂ (Int.castRingHom ℝ) ((x : ℝ) / (y : ℝ)) := by
  have hg : (qContent A B C : ℝ) ≠ 0 :=
    Nat.cast_ne_zero.mpr (Nat.ne_of_gt (qContent_pos A B C))
  have hmul := congrArg (fun k : ℤ => (k : ℝ)) (qContent_mul_normalizedValue A B C x y)
  simp only [Int.cast_mul, Int.cast_natCast] at hmul
  rw [homogeneousValue_cast_eq A (qCoefficient A B C) x y hy] at hmul
  dsimp [qPolynomial]
  apply (mul_left_cancel₀ hg)
  calc
    (qContent A B C : ℝ) * (qNormalizedValue A B C x y : ℝ) =
      (y : ℝ) ^ A * (coefficientPolynomial A (qCoefficient A B C)).eval₂
        (Int.castRingHom ℝ) ((x : ℝ) / (y : ℝ)) := hmul
    _ = (qContent A B C : ℝ) * ((y : ℝ) ^ A / (qContent A B C : ℝ) *
        (coefficientPolynomial A (qCoefficient A B C)).eval₂
          (Int.castRingHom ℝ) ((x : ℝ) / (y : ℝ))) := by
      field_simp
      <;> ring

-- Positive source parameters and odd parity: the original integral has P(0)=-2.
example : pCoefficient 1 1 1 0 = -2 := by decide
example : qCoefficient 1 1 1 0 = -2 := by decide
example : eCoefficient 1 1 1 0 = 4 := by decide
example : qContent 1 1 1 = 2 := by decide

#print axioms Math.B699.PadeConstruction.coefficientPolynomial_coeff
#print axioms Math.B699.PadeConstruction.coefficientPolynomial_natDegree_le
#print axioms Math.B699.PadeConstruction.qContent_pos
#print axioms Math.B699.PadeConstruction.qContent_dvd_qCoefficient
#print axioms Math.B699.PadeConstruction.homogeneousValue_cast_eq
#print axioms Math.B699.PadeConstruction.qContent_mul_normalizedValue
#print axioms Math.B699.PadeConstruction.qNormalizedValue_cast_eq

end Math.B699.PadeConstruction

end HeightMember009
/- Frozen member 10 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Pade\Coefficients.lean 68b0f3161ba63b2649c193b3f4d526c73a47a9dae2d69e7af8fb933bd8a66899 -/
section HeightMember010


/-!
# Six actual adjacent-coefficient identities without division

All six source identities below are proved from elementary weighted Nat.choose
identities. They are not assumptions. The shifted identities explicitly require
1 <= r or 2 <= r; no negative coefficient is modeled by truncated subtraction.
The same-index identities separately handle r=u by choose(u-2,u-1)=0.

P's unsigned factor is linked to the actual source pCoefficient and polynomial
coefficient by proved equalities. Q uses the accepted qMagnitude definition.
No analysis, factorial-division theorem, Padé identity, or height hypothesis is used.
Candidate pending the parent verifier; this worker does not run Lean.
-/

namespace Math.B699.PadeCoefficientMultiplication

open Math.B699.PadeConstruction

private theorem lower_top_one (n k : ℕ) (hn : 1 ≤ n) :
    (n - 1).choose k * n = n.choose k * (n - k) := by
  have h := Nat.choose_mul_succ_eq (n - 1) k
  rwa [Nat.sub_add_cancel hn] at h

private theorem lower_both_one (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) :
    (n - 1).choose (k - 1) * n = n.choose k * k := by
  have hn : 1 ≤ n := hk.trans hkn
  have h := Nat.add_one_mul_choose_eq (n - 1) (k - 1)
  rw [Nat.sub_add_cancel hn, Nat.sub_add_cancel hk] at h
  calc
    (n - 1).choose (k - 1) * n = n * (n - 1).choose (k - 1) := by ring
    _ = n.choose k * k := h

private theorem lower_bottom_one (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) :
    n.choose (k - 1) * (n - k + 1) = n.choose k * k := by
  have h := Nat.choose_succ_right_eq n (k - 1)
  rw [Nat.sub_add_cancel hk] at h
  have hsub : n - (k - 1) = n - k + 1 := by omega
  rw [hsub] at h
  exact h.symm

private theorem lower_both_two (n k : ℕ) (hk : 2 ≤ k) (hkn : k ≤ n) :
    (n - 2).choose (k - 2) * n * (n - 1) = n.choose k * k * (k - 1) := by
  have h0 := lower_both_one n k (by omega) hkn
  have h1 := lower_both_one (n - 1) (k - 1) (by omega) (by omega)
  have hnsub : n - 1 - 1 = n - 2 := by omega
  have hksub : k - 1 - 1 = k - 2 := by omega
  rw [hnsub, hksub] at h1
  calc
    (n - 2).choose (k - 2) * n * (n - 1) =
        n * ((n - 2).choose (k - 2) * (n - 1)) := by ring
    _ = n * ((n - 1).choose (k - 1) * (k - 1)) := by rw [h1]
    _ = ((n - 1).choose (k - 1) * n) * (k - 1) := by ring
    _ = n.choose k * k * (k - 1) := by rw [h0]

private theorem lower_top_two_bottom_one (n k : ℕ)
    (hn : 2 ≤ n) (hk : 1 ≤ k) (hkn : k ≤ n) :
    (n - 2).choose (k - 1) * n * (n - 1) = n.choose k * k * (n - k) := by
  have h0 := lower_both_one n k hk hkn
  have h1 := lower_top_one (n - 1) (k - 1) (by omega)
  have hnsub : n - 1 - 1 = n - 2 := by omega
  have hdiff : n - 1 - (k - 1) = n - k := by omega
  rw [hnsub, hdiff] at h1
  calc
    (n - 2).choose (k - 1) * n * (n - 1) =
        n * ((n - 2).choose (k - 1) * (n - 1)) := by ring
    _ = n * ((n - 1).choose (k - 1) * (n - k)) := by rw [h1]
    _ = ((n - 1).choose (k - 1) * n) * (n - k) := by ring
    _ = n.choose k * k * (n - k) := by rw [h0]

private theorem lower_bottom_two (n k : ℕ) (hk : 2 ≤ k) (hkn : k ≤ n) :
    n.choose (k - 2) * (n - k + 1) * (n - k + 2) = n.choose k * k * (k - 1) := by
  have h0 := lower_bottom_one n k (by omega) hkn
  have h1 := lower_bottom_one n (k - 1) (by omega) (by omega)
  have hksub : k - 1 - 1 = k - 2 := by omega
  have hdiff : n - (k - 1) + 1 = n - k + 2 := by omega
  rw [hksub, hdiff] at h1
  calc
    n.choose (k - 2) * (n - k + 1) * (n - k + 2) =
        (n.choose (k - 2) * (n - k + 2)) * (n - k + 1) := by ring
    _ = (n.choose (k - 1) * (k - 1)) * (n - k + 1) := by rw [h1]
    _ = (n.choose (k - 1) * (n - k + 1)) * (k - 1) := by ring
    _ = n.choose k * k * (k - 1) := by rw [h0]

private theorem qMagnitude_diagonal (u v r : ℕ) :
    qMagnitude u v u r = (2 * u - r).choose u * (v + r).choose r := by
  simp only [qMagnitude, two_mul]

/-- The actual unsigned factor of the source P coefficient. -/
def sourcePMagnitude (u v r : ℕ) : ℕ :=
  (2 * u + v + 1).choose r * (2 * u - r).choose u

theorem pCoefficient_eq_signed_magnitude (u v r : ℕ) :
    pCoefficient u v u r = (-1 : ℤ) ^ (u + r) * (sourcePMagnitude u v r : ℤ) := by
  have htop : u + v + u + 1 = 2 * u + v + 1 := by omega
  have hdouble : u + u = 2 * u := by omega
  simp only [pCoefficient, sourcePMagnitude, htop, hdouble, Nat.cast_mul]
  ring

theorem pPolynomial_coeff_eq_signed_magnitude (u v r : ℕ) (hr : r ≤ u) :
    (pPolynomial u v u).coeff r = (-1 : ℤ) ^ (u + r) * (sourcePMagnitude u v r : ℤ) := by
  rw [pPolynomial, coefficientPolynomial_coeff, if_pos hr]
  exact pCoefficient_eq_signed_magnitude u v r

theorem qPolynomial_coeff_eq_signed_magnitude (u v r : ℕ) (hr : r ≤ u) :
    (qPolynomial u v u).coeff r = (-1 : ℤ) ^ u * (qMagnitude u v u r : ℤ) := by
  rw [qPolynomial, coefficientPolynomial_coeff, if_pos hr]
  rfl
/-- Q ratio 1, with r=u explicitly handled by an out-of-range choose value. -/
theorem q_same_index (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) :
    qMagnitude (u - 1) (v + 1) (u - 1) r * (2 * u - r) * (2 * u - r - 1) * (v + 1) =
      qMagnitude u v u r * u * (u - r) * (v + r + 1) := by
  by_cases heq : r = u
  · subst r
    have hz : (u - 1 + (u - 1) - u).choose (u - 1) = 0 :=
      Nat.choose_eq_zero_of_lt (by omega)
    simp [qMagnitude, hz]
  · have hcentral := lower_top_two_bottom_one (2 * u - r) u (by omega) (by omega) (by omega)
    have hdiff : 2 * u - r - u = u - r := by omega
    rw [hdiff] at hcentral
    have houter := lower_top_one (v + r + 1) r (by omega)
    have hone : v + r + 1 - 1 = v + r := by omega
    have hv : v + r + 1 - r = v + 1 := by omega
    rw [hone, hv] at houter
    have houter' : (v + 1 + r).choose r * (v + 1) = (v + r).choose r * (v + r + 1) := by
      have ht : v + 1 + r = v + r + 1 := by omega
      simpa only [ht] using houter.symm
    rw [qMagnitude_diagonal, qMagnitude_diagonal]
    have hprev : 2 * (u - 1) - r = 2 * u - r - 2 := by omega
    rw [hprev]
    calc
      (2 * u - r - 2).choose (u - 1) * (v + 1 + r).choose r *
          (2 * u - r) * (2 * u - r - 1) * (v + 1) =
        ((2 * u - r - 2).choose (u - 1) * (2 * u - r) * (2 * u - r - 1)) *
          ((v + 1 + r).choose r * (v + 1)) := by ring
      _ = ((2 * u - r).choose u * u * (u - r)) *
          ((v + r).choose r * (v + r + 1)) := by rw [hcentral, houter']
      _ = (2 * u - r).choose u * (v + r).choose r * u * (u - r) * (v + r + 1) := by ring

/-- Q ratio 2: r>=1 is an explicit necessary domain condition. -/
theorem q_shift_one (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) (hr1 : 1 ≤ r) :
    qMagnitude (u - 1) (v + 1) (u - 1) (r - 1) * (2 * u - r) * (v + 1) =
      qMagnitude u v u r * u * r := by
  have hcentral := lower_both_one (2 * u - r) u (by omega) (by omega)
  have houter := lower_bottom_one (v + r) r hr1 (by omega)
  have hv : v + r - r + 1 = v + 1 := by omega
  rw [hv] at houter
  rw [qMagnitude_diagonal, qMagnitude_diagonal]
  have hprev : 2 * (u - 1) - (r - 1) = 2 * u - r - 1 := by omega
  have hsum : v + 1 + (r - 1) = v + r := by omega
  rw [hprev, hsum]
  calc
    (2 * u - r - 1).choose (u - 1) * (v + r).choose (r - 1) * (2 * u - r) * (v + 1) =
      ((2 * u - r - 1).choose (u - 1) * (2 * u - r)) *
        ((v + r).choose (r - 1) * (v + 1)) := by ring
    _ = ((2 * u - r).choose u * u) * ((v + r).choose r * r) := by rw [hcentral, houter]
    _ = (2 * u - r).choose u * (v + r).choose r * u * r := by ring

/-- Q ratio 3: r>=2 is explicit, including the lower-row u=0 boundary. -/
theorem q_shift_two (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) (hr2 : 2 ≤ r) :
    qMagnitude (u - 2) (v + 2) (u - 2) (r - 2) *
        (2 * u - r) * (2 * u - r - 1) * (v + 1) * (v + 2) =
      qMagnitude u v u r * u * (u - 1) * r * (r - 1) := by
  have hcentral := lower_both_two (2 * u - r) u hu (by omega)
  have houter := lower_bottom_two (v + r) r hr2 (by omega)
  have hv1 : v + r - r + 1 = v + 1 := by omega
  have hv2 : v + r - r + 2 = v + 2 := by omega
  rw [hv1, hv2] at houter
  rw [qMagnitude_diagonal, qMagnitude_diagonal]
  have hprev : 2 * (u - 2) - (r - 2) = 2 * u - r - 2 := by omega
  have hsum : v + 2 + (r - 2) = v + r := by omega
  rw [hprev, hsum]
  calc
    (2 * u - r - 2).choose (u - 2) * (v + r).choose (r - 2) *
        (2 * u - r) * (2 * u - r - 1) * (v + 1) * (v + 2) =
      ((2 * u - r - 2).choose (u - 2) * (2 * u - r) * (2 * u - r - 1)) *
        ((v + r).choose (r - 2) * (v + 1) * (v + 2)) := by ring
    _ = ((2 * u - r).choose u * u * (u - 1)) *
        ((v + r).choose r * r * (r - 1)) := by rw [hcentral, houter]
    _ = (2 * u - r).choose u * (v + r).choose r * u * (u - 1) * r * (r - 1) := by ring

/-- P ratio 1, using the actual unsigned source coefficient. -/
theorem p_same_index (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) :
    sourcePMagnitude (u - 1) (v + 1) r *
        (2 * u + v + 1) * (2 * u - r) * (2 * u - r - 1) =
      sourcePMagnitude u v r * u * (u - r) * (2 * u + v + 1 - r) := by
  by_cases heq : r = u
  · subst r
    have hz : (2 * (u - 1) - u).choose (u - 1) = 0 :=
      Nat.choose_eq_zero_of_lt (by omega)
    simp [sourcePMagnitude, hz]
  · have hcentral := lower_top_two_bottom_one (2 * u - r) u (by omega) (by omega) (by omega)
    have hdiff : 2 * u - r - u = u - r := by omega
    rw [hdiff] at hcentral
    have houter := lower_top_one (2 * u + v + 1) r (by omega)
    unfold sourcePMagnitude
    have hN : 2 * (u - 1) + (v + 1) + 1 = 2 * u + v + 1 - 1 := by omega
    have hL : 2 * (u - 1) - r = 2 * u - r - 2 := by omega
    rw [hN, hL]
    calc
      (2 * u + v + 1 - 1).choose r * (2 * u - r - 2).choose (u - 1) *
          (2 * u + v + 1) * (2 * u - r) * (2 * u - r - 1) =
        ((2 * u + v + 1 - 1).choose r * (2 * u + v + 1)) *
          ((2 * u - r - 2).choose (u - 1) * (2 * u - r) * (2 * u - r - 1)) := by ring
      _ = ((2 * u + v + 1).choose r * (2 * u + v + 1 - r)) *
          ((2 * u - r).choose u * u * (u - r)) := by rw [houter, hcentral]
      _ = (2 * u + v + 1).choose r * (2 * u - r).choose u *
          u * (u - r) * (2 * u + v + 1 - r) := by ring

/-- P ratio 2, explicitly guarded at r>=1. -/
theorem p_shift_one (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) (hr1 : 1 ≤ r) :
    sourcePMagnitude (u - 1) (v + 1) (r - 1) * (2 * u + v + 1) * (2 * u - r) =
      sourcePMagnitude u v r * u * r := by
  have hcentral := lower_both_one (2 * u - r) u (by omega) (by omega)
  have houter := lower_both_one (2 * u + v + 1) r hr1 (by omega)
  unfold sourcePMagnitude
  have hN : 2 * (u - 1) + (v + 1) + 1 = 2 * u + v + 1 - 1 := by omega
  have hL : 2 * (u - 1) - (r - 1) = 2 * u - r - 1 := by omega
  rw [hN, hL]
  calc
    (2 * u + v + 1 - 1).choose (r - 1) * (2 * u - r - 1).choose (u - 1) *
        (2 * u + v + 1) * (2 * u - r) =
      ((2 * u + v + 1 - 1).choose (r - 1) * (2 * u + v + 1)) *
        ((2 * u - r - 1).choose (u - 1) * (2 * u - r)) := by ring
    _ = ((2 * u + v + 1).choose r * r) * ((2 * u - r).choose u * u) := by rw [houter, hcentral]
    _ = (2 * u + v + 1).choose r * (2 * u - r).choose u * u * r := by ring

/-- P ratio 3, explicitly guarded at r>=2. -/
theorem p_shift_two (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) (hr2 : 2 ≤ r) :
    sourcePMagnitude (u - 2) (v + 2) (r - 2) *
        (2 * u + v + 1) * (2 * u + v + 1 - 1) * (2 * u - r) * (2 * u - r - 1) =
      sourcePMagnitude u v r * u * (u - 1) * r * (r - 1) := by
  have hcentral := lower_both_two (2 * u - r) u hu (by omega)
  have houter := lower_both_two (2 * u + v + 1) r hr2 (by omega)
  unfold sourcePMagnitude
  have hN : 2 * (u - 2) + (v + 2) + 1 = 2 * u + v + 1 - 2 := by omega
  have hL : 2 * (u - 2) - (r - 2) = 2 * u - r - 2 := by omega
  rw [hN, hL]
  calc
    (2 * u + v + 1 - 2).choose (r - 2) * (2 * u - r - 2).choose (u - 2) *
        (2 * u + v + 1) * (2 * u + v + 1 - 1) * (2 * u - r) * (2 * u - r - 1) =
      ((2 * u + v + 1 - 2).choose (r - 2) * (2 * u + v + 1) * (2 * u + v + 1 - 1)) *
        ((2 * u - r - 2).choose (u - 2) * (2 * u - r) * (2 * u - r - 1)) := by ring
    _ = ((2 * u + v + 1).choose r * r * (r - 1)) *
        ((2 * u - r).choose u * u * (u - 1)) := by rw [houter, hcentral]
    _ = (2 * u + v + 1).choose r * (2 * u - r).choose u * u * (u - 1) * r * (r - 1) := by ring

#print axioms Math.B699.PadeCoefficientMultiplication.pCoefficient_eq_signed_magnitude
#print axioms Math.B699.PadeCoefficientMultiplication.pPolynomial_coeff_eq_signed_magnitude
#print axioms Math.B699.PadeCoefficientMultiplication.qPolynomial_coeff_eq_signed_magnitude
#print axioms Math.B699.PadeCoefficientMultiplication.q_same_index
#print axioms Math.B699.PadeCoefficientMultiplication.q_shift_one
#print axioms Math.B699.PadeCoefficientMultiplication.q_shift_two
#print axioms Math.B699.PadeCoefficientMultiplication.p_same_index
#print axioms Math.B699.PadeCoefficientMultiplication.p_shift_one
#print axioms Math.B699.PadeCoefficientMultiplication.p_shift_two

end Math.B699.PadeCoefficientMultiplication

end HeightMember010
/- Frozen member 11 research\tasks\B699-Binomial\runs\20260911-low-index-lean-513dc7cc\lean\Pade\Magnitude.lean 3845911abcc7f13768f9b3796982f98eda9040ea99ca894e68d013be890af5f6 -/
section HeightMember011


/-!
# Actual guarded magnitude recurrences

The six source multiplication identities are called directly. They are a pending
candidate import, not assumptions of the final theorems. All cancellation below
is by an explicitly nonzero integer product; no division is used.
-/

namespace Math.B699.PadeActualRecurrence

open Math.B699.PadeConstruction
open Math.B699.PadeCoefficientMultiplication

def recurrenceN (u : ℕ) : ℤ := (u : ℤ) * ((u : ℤ) - 1)
def recurrenceA (u : ℕ) : ℤ := ((u : ℤ) - 1) * (2 * (u : ℤ) - 1)
def recurrenceB (u v : ℕ) : ℤ := ((v : ℤ) + 2) * (2 * (u : ℤ) + (v : ℤ))

def qCurrent (u v r : ℕ) : ℤ := qMagnitude u v u r
def qPreviousSame (u v r : ℕ) : ℤ := qMagnitude (u - 1) (v + 1) (u - 1) r
def qPreviousOne (u v r : ℕ) : ℤ :=
  if 1 ≤ r then (qMagnitude (u - 1) (v + 1) (u - 1) (r - 1) : ℤ) else 0
def qPreviousTwo (u v r : ℕ) : ℤ :=
  if 2 ≤ r then (qMagnitude (u - 2) (v + 2) (u - 2) (r - 2) : ℤ) else 0

def pCurrent (u v r : ℕ) : ℤ := sourcePMagnitude u v r
def pPreviousSame (u v r : ℕ) : ℤ := sourcePMagnitude (u - 1) (v + 1) r
def pPreviousOne (u v r : ℕ) : ℤ :=
  if 1 ≤ r then (sourcePMagnitude (u - 1) (v + 1) (r - 1) : ℤ) else 0
def pPreviousTwo (u v r : ℕ) : ℤ :=
  if 2 ≤ r then (sourcePMagnitude (u - 2) (v + 2) (r - 2) : ℤ) else 0

theorem recurrenceN_ne_zero (u : ℕ) (hu : 2 ≤ u) : recurrenceN u ≠ 0 := by
  have hui : (2 : ℤ) ≤ (u : ℤ) := by exact_mod_cast hu
  unfold recurrenceN
  exact mul_ne_zero (by omega) (by omega)

private theorem q_clear_integer_product (U V R cur a b c : ℤ)
    (hU : 2 ≤ U) (hV : 0 ≤ V) (hR : R ≤ U)
    (ha : a * (2 * U - R) * (2 * U - R - 1) * (V + 1) =
      cur * U * (U - R) * (V + R + 1))
    (hb : b * (2 * U - R) * (V + 1) = cur * U * R)
    (hc : c * (2 * U - R) * (2 * U - R - 1) * (V + 1) * (V + 2) =
      cur * U * (U - 1) * R * (R - 1)) :
    U * (U - 1) * cur + ((U - 1) * (2 * U - 1)) * b =
      2 * ((U - 1) * (2 * U - 1)) * a + ((V + 2) * (2 * U + V)) * c := by
  let L : ℤ := 2 * U - R
  let D : ℤ := L * (L - 1) * (V + 1) * (V + 2)
  have hL : 0 < L := by dsimp [L]; omega
  have hL1 : 0 < L - 1 := by dsimp [L]; omega
  have hV1 : 0 < V + 1 := by omega
  have hV2 : 0 < V + 2 := by omega
  have hD : D ≠ 0 := ne_of_gt (mul_pos (mul_pos (mul_pos hL hL1) hV1) hV2)
  have hda : D * a = cur * U * (U - R) * (V + R + 1) * (V + 2) := by
    calc
      D * a = (a * (2 * U - R) * (2 * U - R - 1) * (V + 1)) * (V + 2) := by dsimp [D, L]; ring
      _ = cur * U * (U - R) * (V + R + 1) * (V + 2) := by rw [ha]
  have hdb : D * b = cur * U * R * (L - 1) * (V + 2) := by
    calc
      D * b = (b * (2 * U - R) * (V + 1)) * (L - 1) * (V + 2) := by dsimp [D, L]; ring
      _ = cur * U * R * (L - 1) * (V + 2) := by rw [hb]
  have hdc : D * c = cur * U * (U - 1) * R * (R - 1) := by
    calc
      D * c = c * (2 * U - R) * (2 * U - R - 1) * (V + 1) * (V + 2) := by dsimp [D, L]; ring
      _ = cur * U * (U - 1) * R * (R - 1) := hc
  apply mul_left_cancel₀ hD
  calc
    D * (U * (U - 1) * cur + ((U - 1) * (2 * U - 1)) * b) =
      D * U * (U - 1) * cur + ((U - 1) * (2 * U - 1)) * (D * b) := by ring
    _ = D * U * (U - 1) * cur +
      ((U - 1) * (2 * U - 1)) * (cur * U * R * (L - 1) * (V + 2)) := by rw [hdb]
    _ = 2 * ((U - 1) * (2 * U - 1)) * (cur * U * (U - R) * (V + R + 1) * (V + 2)) +
      ((V + 2) * (2 * U + V)) * (cur * U * (U - 1) * R * (R - 1)) := by dsimp [D, L]; ring
    _ = 2 * ((U - 1) * (2 * U - 1)) * (D * a) + ((V + 2) * (2 * U + V)) * (D * c) := by
      rw [hda, hdc]
    _ = D * (2 * ((U - 1) * (2 * U - 1)) * a + ((V + 2) * (2 * U + V)) * c) := by ring

private theorem p_clear_integer_product (U V R cur a b c : ℤ)
    (hU : 2 ≤ U) (hV : 0 ≤ V) (hR : R ≤ U)
    (ha : a * (2 * U + V + 1) * (2 * U - R) * (2 * U - R - 1) =
      cur * U * (U - R) * (2 * U + V + 1 - R))
    (hb : b * (2 * U + V + 1) * (2 * U - R) = cur * U * R)
    (hc : c * (2 * U + V + 1) * (2 * U + V) * (2 * U - R) * (2 * U - R - 1) =
      cur * U * (U - 1) * R * (R - 1)) :
    U * (U - 1) * cur = 2 * ((U - 1) * (2 * U - 1)) * a +
      ((U - 1) * (2 * U - 1)) * b + ((V + 2) * (2 * U + V)) * c := by
  let N : ℤ := 2 * U + V + 1
  let L : ℤ := 2 * U - R
  let D : ℤ := N * (N - 1) * L * (L - 1)
  have hN : 0 < N := by dsimp [N]; omega
  have hN1 : 0 < N - 1 := by dsimp [N]; omega
  have hL : 0 < L := by dsimp [L]; omega
  have hL1 : 0 < L - 1 := by dsimp [L]; omega
  have hD : D ≠ 0 := ne_of_gt (mul_pos (mul_pos (mul_pos hN hN1) hL) hL1)
  have hda : D * a = cur * U * (U - R) * (N - R) * (N - 1) := by
    calc
      D * a = (a * (2 * U + V + 1) * (2 * U - R) * (2 * U - R - 1)) * (N - 1) := by dsimp [D, N, L]; ring
      _ = cur * U * (U - R) * (N - R) * (N - 1) := by rw [ha]
  have hdb : D * b = cur * U * R * (N - 1) * (L - 1) := by
    calc
      D * b = (b * (2 * U + V + 1) * (2 * U - R)) * (N - 1) * (L - 1) := by dsimp [D, N, L]; ring
      _ = cur * U * R * (N - 1) * (L - 1) := by rw [hb]
  have hdc : D * c = cur * U * (U - 1) * R * (R - 1) := by
    calc
      D * c = c * (2 * U + V + 1) * (2 * U + V) * (2 * U - R) * (2 * U - R - 1) := by dsimp [D, N, L]; ring
      _ = cur * U * (U - 1) * R * (R - 1) := hc
  apply mul_left_cancel₀ hD
  calc
    D * (U * (U - 1) * cur) =
      2 * ((U - 1) * (2 * U - 1)) * (cur * U * (U - R) * (N - R) * (N - 1)) +
        ((U - 1) * (2 * U - 1)) * (cur * U * R * (N - 1) * (L - 1)) +
          ((V + 2) * (2 * U + V)) * (cur * U * (U - 1) * R * (R - 1)) := by dsimp [D, N, L]; ring
    _ = 2 * ((U - 1) * (2 * U - 1)) * (D * a) +
        ((U - 1) * (2 * U - 1)) * (D * b) + ((V + 2) * (2 * U + V)) * (D * c) := by
      rw [hda, hdb, hdc]
    _ = D * (2 * ((U - 1) * (2 * U - 1)) * a +
        ((U - 1) * (2 * U - 1)) * b + ((V + 2) * (2 * U + V)) * c) := by ring

/-- Actual Q magnitude recurrence, with the negative shifted contribution
moved to the left. All shifts are explicitly guarded. -/
theorem q_magnitude_recurrence (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) :
    recurrenceN u * qCurrent u v r + recurrenceA u * qPreviousOne u v r =
      2 * recurrenceA u * qPreviousSame u v r + recurrenceB u v * qPreviousTwo u v r := by
  have hL : r ≤ 2 * u := by omega
  have hL1 : 1 ≤ 2 * u - r := by omega
  have hU1 : 1 ≤ u := by omega
  unfold recurrenceN recurrenceA recurrenceB
  apply q_clear_integer_product (u : ℤ) (v : ℤ) (r : ℤ)
  · exact_mod_cast hu
  · exact_mod_cast Nat.zero_le v
  · exact_mod_cast hr
  · have hc := congrArg (fun n : ℕ => (n : ℤ)) (q_same_index u v r hu hr)
    simpa only [qCurrent, qPreviousSame, Nat.cast_mul, Nat.cast_add, Nat.cast_sub hL,
      Nat.cast_sub hL1, Nat.cast_sub hr, Nat.cast_one, Nat.cast_ofNat] using hc
  · by_cases hr1 : 1 ≤ r
    · have hc := congrArg (fun n : ℕ => (n : ℤ)) (q_shift_one u v r hu hr hr1)
      simpa only [qCurrent, qPreviousOne, if_pos hr1, Nat.cast_mul, Nat.cast_add,
        Nat.cast_sub hL, Nat.cast_one, Nat.cast_ofNat] using hc
    · have hz : r = 0 := by omega
      subst r
      simp [qCurrent, qPreviousOne]
  · by_cases hr2 : 2 ≤ r
    · have hr1 : 1 ≤ r := by omega
      have hc := congrArg (fun n : ℕ => (n : ℤ)) (q_shift_two u v r hu hr hr2)
      simpa only [qCurrent, qPreviousTwo, if_pos hr2, Nat.cast_mul, Nat.cast_add,
        Nat.cast_sub hL, Nat.cast_sub hL1, Nat.cast_sub hU1, Nat.cast_sub hr1,
        Nat.cast_one, Nat.cast_ofNat] using hc
    · have hz : r = 0 ∨ r = 1 := by omega
      rcases hz with hz | hz <;> subst r <;> simp [qCurrent, qPreviousTwo]

/-- Actual P magnitude recurrence; every contribution is nonnegative before
the integer cast. Its source coefficient signs are restored in the next module. -/
theorem p_magnitude_recurrence (u v r : ℕ) (hu : 2 ≤ u) (hr : r ≤ u) :
    recurrenceN u * pCurrent u v r = 2 * recurrenceA u * pPreviousSame u v r +
      recurrenceA u * pPreviousOne u v r + recurrenceB u v * pPreviousTwo u v r := by
  have hL : r ≤ 2 * u := by omega
  have hL1 : 1 ≤ 2 * u - r := by omega
  have hU1 : 1 ≤ u := by omega
  have hN : 1 ≤ 2 * u + v + 1 := by omega
  have hNr : r ≤ 2 * u + v + 1 := by omega
  unfold recurrenceN recurrenceA recurrenceB
  apply p_clear_integer_product (u : ℤ) (v : ℤ) (r : ℤ)
  · exact_mod_cast hu
  · exact_mod_cast Nat.zero_le v
  · exact_mod_cast hr
  · have hc := congrArg (fun n : ℕ => (n : ℤ)) (p_same_index u v r hu hr)
    simpa only [pCurrent, pPreviousSame, Nat.cast_mul, Nat.cast_add,
      Nat.cast_sub hL, Nat.cast_sub hL1, Nat.cast_sub hr, Nat.cast_sub hNr,
      Nat.cast_one, Nat.cast_ofNat] using hc
  · by_cases hr1 : 1 ≤ r
    · have hc := congrArg (fun n : ℕ => (n : ℤ)) (p_shift_one u v r hu hr hr1)
      simpa only [pCurrent, pPreviousOne, if_pos hr1, Nat.cast_mul, Nat.cast_add,
        Nat.cast_sub hL, Nat.cast_one, Nat.cast_ofNat] using hc
    · have hz : r = 0 := by omega
      subst r
      simp [pCurrent, pPreviousOne]
  · by_cases hr2 : 2 ≤ r
    · have hr1 : 1 ≤ r := by omega
      have hc := congrArg (fun n : ℕ => (n : ℤ)) (p_shift_two u v r hu hr hr2)
      simpa only [pCurrent, pPreviousTwo, if_pos hr2, Nat.cast_mul, Nat.cast_add,
        Nat.cast_sub hN, Nat.cast_sub hL, Nat.cast_sub hL1, Nat.cast_sub hU1,
        Nat.cast_sub hr1, Nat.cast_one, Nat.cast_ofNat, add_sub_cancel_right] using hc
    · have hz : r = 0 ∨ r = 1 := by omega
      rcases hz with hz | hz <;> subst r <;> simp [pCurrent, pPreviousTwo]

#print axioms Math.B699.PadeActualRecurrence.recurrenceN_ne_zero
#print axioms Math.B699.PadeActualRecurrence.q_magnitude_recurrence
#print axioms Math.B699.PadeActualRecurrence.p_magnitude_recurrence

end Math.B699.PadeActualRecurrence

end HeightMember011
