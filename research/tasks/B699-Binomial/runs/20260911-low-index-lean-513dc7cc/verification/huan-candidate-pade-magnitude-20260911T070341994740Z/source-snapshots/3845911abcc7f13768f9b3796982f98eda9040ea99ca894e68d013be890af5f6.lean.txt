import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Pade.Coefficients

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
