import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PadeInteger

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
