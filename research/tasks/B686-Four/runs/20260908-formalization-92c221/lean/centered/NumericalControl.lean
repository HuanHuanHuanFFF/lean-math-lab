import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.centered.CenteredRunge
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.centered.WeightedEstimates

namespace B686CenteredRunge

open Polynomial

theorem signed_dominance (a lead tail : ℤ) (hid : a = tail + lead)
    (htail : 8 * |tail| ≤ lead) : 7 * lead ≤ 8 * a ∧ 8 * a ≤ 9 * lead := by
  have h1 := neg_abs_le tail
  have h2 := le_abs_self tail
  constructor <;> omega

theorem absolute_dominance (a lead tail : ℤ) (hid : a = tail + lead)
    (htail : 8 * |tail| ≤ |lead|) :
    7 * |lead| ≤ 8 * |a| ∧ 8 * |a| ≤ 9 * |lead| := by
  have hupper : |a| ≤ |tail| + |lead| := by rw [hid]; exact abs_add_le _ _
  have hlower : |lead| ≤ |a| + |tail| := by
    calc
      |lead| = |a + (-tail)| := by congr 1; omega
      _ ≤ |a| + |-tail| := abs_add_le a (-tail)
      _ = |a| + |tail| := by rw [abs_neg]
  constructor <;> omega

theorem eval_eq_eraseLead_add (p : ℤ[X]) (t : ℤ) :
    p.eval t = p.eraseLead.eval t + p.leadingCoeff * t ^ p.natDegree := by
  have h := congrArg (fun q : ℤ[X] => q.eval t) (p.eraseLead_add_C_mul_X_pow)
  simpa using h.symm

theorem main_tail_bound (A : ℤ[X]) (C k L t : ℤ) (r : ℕ)
    (hr : 1 ≤ r) (hC : 0 ≤ C) (hk : 0 ≤ k) (ht : 2 * k ≤ t)
    (hdeg : A.natDegree = r) (hL : A.leadingCoeff = L)
    (hc : ∀ i ≤ r, |A.coeff i| ≤ C * k ^ (r - i))
    (hsize : 16 * C * k ≤ L * t) :
    8 * |A.eraseLead.eval t| ≤ L * t ^ r := by
  have ht0 : 0 ≤ t := by omega
  have hd : A.eraseLead.natDegree ≤ r - 1 := by simpa [hdeg] using A.eraseLead_natDegree_le
  have hc' := eraseLead_weighted_coeff A C k r (r - 1) hC hk
    (fun i hi => hc i (by omega))
  have he := eval_bound_of_weighted_coeff A.eraseLead C k t r (r - 1) hC hk ht hd
    (by omega) hc'
  rw [show r - (r - 1) = 1 by omega, pow_one] at he
  have hmul := mul_le_mul_of_nonneg_right hsize (pow_nonneg ht0 (r - 1))
  have hp : t ^ r = t * t ^ (r - 1) := by
    rw [← pow_succ', Nat.sub_add_cancel hr]
  rw [hp]
  nlinarith

theorem error_tail_bound (E : ℤ[X]) (B k t : ℤ) (r : ℕ)
    (hB : 0 ≤ B) (hk : 1 ≤ k) (ht : 2 * k ≤ t)
    (hEnz : E ≠ 0) (hdeg : E.natDegree < r)
    (heven : ∀ i, ¬Even i → E.coeff i = 0)
    (hc : ∀ i ≤ 2 * r, |E.coeff i| ≤ B * k ^ (2 * r - i))
    (hsize : 16 * B * k ^ (2 * r) ≤ t ^ 2) :
    8 * |E.eraseLead.eval t| ≤ |E.leadingCoeff * t ^ E.natDegree| := by
  have ht0 : 0 ≤ t := by omega
  have hlead : 1 ≤ |E.leadingCoeff| := by
    have h := abs_pos.mpr (leadingCoeff_ne_zero.mpr hEnz)
    omega
  by_cases hz : E.natDegree = 0
  · have heq : E = C E.leadingCoeff := by
      simpa [leadingCoeff, hz] using (E.eq_C_of_natDegree_eq_zero hz)
    rw [heq]
    simp only [eraseLead_C, eval_zero, abs_zero, mul_zero]
    exact abs_nonneg _
  · have hdeven : Even E.natDegree := by
      by_contra h
      have hh := heven E.natDegree h
      exact (leadingCoeff_ne_zero.mpr hEnz) hh
    have hd2 : 2 ≤ E.natDegree := by
      have hh := hdeven.two_dvd
      omega
    have hd := eraseLead_degree_le_sub_two_of_even E heven hdeven
    have hc' := eraseLead_weighted_coeff E B k (2 * r) (E.natDegree - 2)
      hB (by omega) (fun i hi => hc i (by omega))
    have he := eval_bound_of_weighted_coeff E.eraseLead B k t (2 * r)
      (E.natDegree - 2) hB (by omega) ht hd (by omega) hc'
    have hkp : k ^ (2 * r - (E.natDegree - 2)) ≤ k ^ (2 * r) :=
      pow_le_pow_right₀ hk (by omega)
    have he' : 8 * |E.eraseLead.eval t| ≤
        16 * B * k ^ (2 * r) * t ^ (E.natDegree - 2) := by
      have hh := mul_le_mul_of_nonneg_left hkp
        (mul_nonneg (show 0 ≤ 16 * B by positivity) (pow_nonneg ht0 (E.natDegree - 2)))
      nlinarith
    have hmul := mul_le_mul_of_nonneg_right hsize
      (pow_nonneg ht0 (E.natDegree - 2))
    have hp : t ^ 2 * t ^ (E.natDegree - 2) = t ^ E.natDegree := by
      rw [← pow_add, Nat.add_sub_of_le hd2]
    rw [hp] at hmul
    have hlast := mul_le_mul_of_nonneg_right hlead (pow_nonneg ht0 E.natDegree)
    rw [abs_mul, abs_of_nonneg (pow_nonneg ht0 E.natDegree)]
    nlinarith

/-- The coefficient estimates imply exactly the integer controls required by Runge. -/
theorem valueControl_of_coeff_bounds (A E : ℤ[X]) (C B k L t : ℤ) (r : ℕ)
    (hr : 1 ≤ r) (hC : 0 ≤ C) (hB : 0 ≤ B) (hk : 1 ≤ k)
    (hL : 1 ≤ L) (ht : 2 * k ≤ t)
    (hAdeg : A.natDegree = r) (hAL : A.leadingCoeff = L)
    (hEcoef : ∀ i ≤ 2 * r, |E.coeff i| ≤ B * k ^ (2 * r - i))
    (hAcoef : ∀ i ≤ r, |A.coeff i| ≤ C * k ^ (r - i))
    (hEnz : E ≠ 0) (hEdeg : E.natDegree < r)
    (hEeven : ∀ i, ¬Even i → E.coeff i = 0)
    (hsizeA : 16 * C * k ≤ L * t)
    (hsizeE : 16 * B * k ^ (2 * r) ≤ t ^ 2)
    (hgap : 48 * B * k ^ (r + 1) < 7 * L * t) :
    ValueControl r E.natDegree L E.leadingCoeff t (A.eval t) (E.eval t) := by
  have htpos : 0 < t := by omega
  have hAtail := main_tail_bound A C k L t r hr hC (by omega) ht hAdeg hAL hAcoef hsizeA
  have hAid : A.eval t = A.eraseLead.eval t + L * t ^ r := by
    simpa [hAdeg, hAL] using eval_eq_eraseLead_add A t
  obtain ⟨hAlo, hAhi⟩ := signed_dominance _ _ _ hAid hAtail
  have hEtail := error_tail_bound E B k t r hB hk ht hEnz hEdeg hEeven hEcoef hsizeE
  obtain ⟨hElo, hEhi⟩ := absolute_dominance _ _ _ (eval_eq_eraseLead_add E t) hEtail
  rw [abs_mul, abs_of_nonneg (pow_nonneg htpos.le E.natDegree)] at hElo hEhi
  have hApos : 1 ≤ A.eval t := by
    have hp : 0 < L * t ^ r := mul_pos (by omega) (pow_pos htpos r)
    omega
  have hEbound := eval_bound_of_weighted_coeff E B k t (2 * r) E.natDegree
    hB (by omega) ht le_rfl (by omega) (fun i hi => hEcoef i (by omega))
  have hkt : k ≤ t := by omega
  have hgrow : k ^ (r - E.natDegree - 1) ≤ t ^ (r - E.natDegree - 1) :=
    pow_le_pow_left₀ (by omega) hkt _
  have hpow : k ^ (2 * r - E.natDegree) =
      k ^ (r + 1) * k ^ (r - E.natDegree - 1) := by
    rw [← pow_add]
    congr 1
    omega
  have ht_pow : t * (t ^ (r - E.natDegree - 1) * t ^ E.natDegree) = t ^ r := by
    rw [← pow_add, ← pow_succ']
    congr 1
    omega
  have hgap' : 48 * B * k ^ (2 * r - E.natDegree) * t ^ E.natDegree <
      7 * L * t ^ r := by
    have hmul := mul_lt_mul_of_pos_right hgap
      (mul_pos (pow_pos htpos (r - E.natDegree - 1)) (pow_pos htpos E.natDegree))
    have hle := mul_le_mul_of_nonneg_left hgrow
      (show 0 ≤ 48 * B * k ^ (r + 1) * t ^ E.natDegree by positivity)
    rw [hpow]
    calc
      _ ≤ (48 * B * k ^ (r + 1)) *
          (t ^ (r - E.natDegree - 1) * t ^ E.natDegree) := by nlinarith only [hle]
      _ < (7 * L * t) *
          (t ^ (r - E.natDegree - 1) * t ^ E.natDegree) := hmul
      _ = 7 * L * t ^ r := by rw [mul_assoc, mul_assoc, ht_pow]; ring
  have hsmall : 3 * |E.eval t| < A.eval t := by nlinarith only [hEbound, hgap', hAlo]
  exact ⟨hApos, hsmall, hAlo, hAhi, hElo, hEhi⟩

end B686CenteredRunge
