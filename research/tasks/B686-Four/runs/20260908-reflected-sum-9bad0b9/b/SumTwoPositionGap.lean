import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum
import research.tasks.«B686-Four».runs.«20260908-reflected-sum-9bad0b9».main.ReflectedGeometry

/-!
# An integer terminator for two-position reflected-sum contact certificates

This file proves a conditional, explicitly parameterized interface. It does not
prove that an original B686 solution supplies prime-power contact or that `A`
is the smooth part of the reflected sum. Those source obligations are separate.

All quantities below are integers. `Wi` and `Wj` are the positive, sign-adjusted
reflected errors; `di` and `dj` denote the geometric gaps (the paper's Delta),
not factor groups or the original displacement `d`.
-/

namespace B686Round9.SumTwoPositionGap

/-- The fraction-free norm identity, with every source identity exposed. -/
theorem norm_gap_identity (S A C Wi Wj di dj c ell : ℤ)
    (hnorm : C * S ^ 2 = A ^ 2 * Wi * Wj)
    (hi : 2 * Wi = ell * S - c * di)
    (hj : 2 * Wj = ell * S - c * dj)
    (hcl : ell * c = 15) :
    (ell ^ 2 * A ^ 2 - 4 * C) * S ^ 2 =
      A ^ 2 * (15 * S * (di + dj) - c ^ 2 * di * dj) := by
  have hprod : (2 * Wi) * (2 * Wj) =
      (ell * S - c * di) * (ell * S - c * dj) := by rw [hi, hj]
  have hcore : ell ^ 2 * S ^ 2 - 4 * Wi * Wj =
      ell * c * S * (di + dj) - c ^ 2 * di * dj := by
    nlinarith only [hprod]
  calc
    _ = A ^ 2 * (ell ^ 2 * S ^ 2 - 4 * Wi * Wj) := by
      nlinarith only [hnorm]
    _ = A ^ 2 * (ell * c * S * (di + dj) - c ^ 2 * di * dj) := by rw [hcore]
    _ = _ := by rw [hcl]

/-- The gap is positive because both positive errors lie below `ell * S / 2`.
No integrality approximation or asymptotic hypothesis is used. -/
theorem norm_gap_pos (S A C Wi Wj di dj c ell : ℤ)
    (hS : 0 < S) (hA : 0 < A) (hWi : 0 < Wi) (hWj : 0 < Wj)
    (hdi : 0 < di) (hdj : 0 < dj) (hc : 0 < c)
    (hnorm : C * S ^ 2 = A ^ 2 * Wi * Wj)
    (hi : 2 * Wi = ell * S - c * di)
    (hj : 2 * Wj = ell * S - c * dj) :
    0 < ell ^ 2 * A ^ 2 - 4 * C := by
  have hi_lt : 2 * Wi < ell * S := by nlinarith [mul_pos hc hdi]
  have hj_lt : 2 * Wj < ell * S := by nlinarith [mul_pos hc hdj]
  have hprod : (2 * Wi) * (2 * Wj) < (ell * S) * (ell * S) :=
    mul_lt_mul hi_lt hj_lt.le (by omega : 0 < 2 * Wj) (by omega : 0 ≤ ell * S)
  have hA2 : 0 < A ^ 2 := sq_pos_of_pos hA
  have hS2 : 0 < S ^ 2 := sq_pos_of_pos hS
  have hscaled := mul_lt_mul_of_pos_left hprod hA2
  have hgap : 0 < (ell ^ 2 * A ^ 2 - 4 * C) * S ^ 2 := by
    nlinarith only [hscaled, hnorm]
  exact (mul_pos_iff_of_pos_right hS2).mp hgap

/-- The useful stronger intermediate bound is `N*S < 60*A^2*d`. -/
theorem norm_gap_scaled_lt (d S A C Wi Wj di dj c ell : ℤ)
    (hS : 0 < S) (hA : 0 < A)
    (hdi : 0 < di ∧ di < 2 * d) (hdj : 0 < dj ∧ dj < 2 * d)
    (hc : 0 < c)
    (hnorm : C * S ^ 2 = A ^ 2 * Wi * Wj)
    (hi : 2 * Wi = ell * S - c * di)
    (hj : 2 * Wj = ell * S - c * dj)
    (hcl : ell * c = 15) :
    (ell ^ 2 * A ^ 2 - 4 * C) * S < 60 * A ^ 2 * d := by
  have hid := norm_gap_identity S A C Wi Wj di dj c ell hnorm hi hj hcl
  have hsum : di + dj < 4 * d := by omega
  have hsub : 0 < c ^ 2 * di * dj :=
    mul_pos (mul_pos (sq_pos_of_pos hc) hdi.1) hdj.1
  have hsum_scaled := mul_lt_mul_of_pos_left hsum (by positivity : 0 < 15 * S)
  have hinner : 15 * S * (di + dj) - c ^ 2 * di * dj < 60 * S * d := by
    nlinarith only [hsum_scaled, hsub]
  have hscaled := mul_lt_mul_of_pos_left hinner (sq_pos_of_pos hA)
  apply (mul_lt_mul_iff_right₀ hS).mp
  nlinarith only [hid, hscaled]

/-- Conditional M9-9 interface: a supplied contact certificate forces the
general bound and, for even `A`, the sharper bound. The theorem deliberately
does not construct this certificate from the original product equation. -/
theorem contact_certificate_bounds (k d S A C Wi Wj di dj c ell : ℤ)
    (hk : 5 ≤ k) (hS : 0 < S) (hA : 0 < A)
    (hWi : 0 < Wi) (hWj : 0 < Wj)
    (hdi : 0 < di ∧ di < 2 * d) (hdj : 0 < dj ∧ dj < 2 * d)
    (hc : 0 < c) (hgrowth : (k - 1) * d < S)
    (hnorm : C * S ^ 2 = A ^ 2 * Wi * Wj)
    (hi : 2 * Wi = ell * S - c * di)
    (hj : 2 * Wj = ell * S - c * dj)
    (hcl : ell * c = 15) :
    k ≤ 60 * A ^ 2 ∧ (Even A → k ≤ 15 * A ^ 2) := by
  let N : ℤ := ell ^ 2 * A ^ 2 - 4 * C
  have hN : 0 < N := norm_gap_pos S A C Wi Wj di dj c ell
    hS hA hWi hWj hdi.1 hdj.1 hc hnorm hi hj
  have hNS : N * S < 60 * A ^ 2 * d := norm_gap_scaled_lt d S A C Wi Wj di dj c ell
    hS hA hdi hdj hc hnorm hi hj hcl
  have hd : 0 < d := by omega
  have hgrow := mul_lt_mul_of_pos_right hgrowth hN
  have hNd : ((k - 1) * N) * d < (60 * A ^ 2) * d := by
    nlinarith only [hgrow, hNS]
  have hgap : (k - 1) * N < 60 * A ^ 2 := (mul_lt_mul_iff_left₀ hd).mp hNd
  have hk0 : 0 ≤ k - 1 := by omega
  constructor
  · have hN1 : 1 ≤ N := by omega
    have hmul := mul_le_mul_of_nonneg_left hN1 hk0
    nlinarith only [hmul, hgap]
  · intro hEven
    rcases hEven with ⟨a, ha⟩
    have h4 : (4 : ℤ) ∣ N := by
      refine ⟨ell ^ 2 * a ^ 2 - C, ?_⟩
      dsimp [N]
      rw [ha]
      ring
    obtain ⟨q, hq⟩ := h4
    have hq0 : 0 < q := by nlinarith only [hN, hq]
    have hq1 : 1 ≤ q := by omega
    have hN4 : 4 ≤ N := by nlinarith only [hq, hq1]
    have hmul := mul_le_mul_of_nonneg_left hN4 hk0
    nlinarith only [hmul, hgap]

/-- An algebraic bridge from complete factor groups and square contacts.
There is no coprimality assumption: the two *integer quotients* are multiplied.
Empty groups equal to one are allowed. This does not construct prime groups. -/
theorem exists_norm_of_square_contacts (S A Di Dj Wi Wj : ℤ)
    (hfactor : A * Di * Dj = S)
    (hi : Di ^ 2 ∣ Wi) (hj : Dj ^ 2 ∣ Wj) :
    ∃ C : ℤ, C * S ^ 2 = A ^ 2 * Wi * Wj := by
  obtain ⟨ui, hui⟩ := hi
  obtain ⟨uj, huj⟩ := hj
  refine ⟨ui * uj, ?_⟩
  rw [← hfactor, hui, huj]
  ring

/-- Complete factor groups and their square contacts can replace the norm
identity in the conditional interface. Actual smooth-part/support extraction
and the original prime-power contact theorem remain external obligations. -/
theorem square_contact_certificate_bounds
    (k d S A Di Dj Wi Wj di dj c ell : ℤ)
    (hk : 5 ≤ k) (hS : 0 < S) (hA : 0 < A)
    (hWi : 0 < Wi) (hWj : 0 < Wj)
    (hdi : 0 < di ∧ di < 2 * d) (hdj : 0 < dj ∧ dj < 2 * d)
    (hc : 0 < c) (hgrowth : (k - 1) * d < S)
    (hfactor : A * Di * Dj = S)
    (hcontact_i : Di ^ 2 ∣ Wi) (hcontact_j : Dj ^ 2 ∣ Wj)
    (hi : 2 * Wi = ell * S - c * di)
    (hj : 2 * Wj = ell * S - c * dj)
    (hcl : ell * c = 15) :
    k ≤ 60 * A ^ 2 ∧ (Even A → k ≤ 15 * A ^ 2) := by
  obtain ⟨C, hnorm⟩ := exists_norm_of_square_contacts S A Di Dj Wi Wj
    hfactor hcontact_i hcontact_j
  exact contact_certificate_bounds k d S A C Wi Wj di dj c ell hk hS hA hWi hWj
    hdi hdj hc hgrowth hnorm hi hj hcl

/-- Non-vacuity of the abstract certificate, not a solution of B686.
These integers even have geometric data k=5,n=44,m=50, but the original
product equation is deliberately *not* asserted. A=S and both groups are one. -/
theorem abstract_certificate_example :
    (5 : ℤ) ≤ 60 * 100 ^ 2 ∧ (Even (100 : ℤ) → (5 : ℤ) ≤ 15 * 100 ^ 2) := by
  exact square_contact_certificate_bounds 5 6 100 100 1 1 125 130 10 8 5 3
    (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)

/-- info: 'B686Round9.SumTwoPositionGap.norm_gap_identity' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms norm_gap_identity
/-- info: 'B686Round9.SumTwoPositionGap.norm_gap_pos' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms norm_gap_pos
/-- info: 'B686Round9.SumTwoPositionGap.norm_gap_scaled_lt' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms norm_gap_scaled_lt
/-- info: 'B686Round9.SumTwoPositionGap.contact_certificate_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms contact_certificate_bounds
/-- info: 'B686Round9.SumTwoPositionGap.exists_norm_of_square_contacts' depends on axioms: [propext] -/
#guard_msgs in
#print axioms exists_norm_of_square_contacts
/-- info: 'B686Round9.SumTwoPositionGap.square_contact_certificate_bounds' depends on axioms: [propext,
 Classical.choice,
 Quot.sound] -/
#guard_msgs in
#print axioms square_contact_certificate_bounds
/-- info: 'B686Round9.SumTwoPositionGap.abstract_certificate_example' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms abstract_certificate_example

open Finset B686Target B686Reflected

/-- Cast the source-facing natural geometry without replacing natural
subtraction by integer subtraction unless its order condition is proved. -/
theorem original_geometry_int (k n m i : ℕ) (hk : 2 ≤ k)
    (hsep : n + k ≤ m) (heq : product k m = 4 * product k n)
    (hi : i ∈ Icc 1 k) :
    0 < (reflectedSum k n m : ℤ) ∧
      (0 < (reflectedSum k n m : ℤ) - 2 * (n + i : ℕ) ∧
       (reflectedSum k n m : ℤ) - 2 * (n + i : ℕ) <
         2 * ((m : ℤ) - n)) ∧
      ((k : ℤ) - 1) * ((m : ℤ) - n) < (reflectedSum k n m : ℤ) := by
  have hsize := (reflected_sum_size k n m hk hsep heq).1
  have hwindow := reflected_delta_window k n m i hk hsep hi
  have hposition := (reflected_position_window k n m i hk hsep heq hi).1
  have hnm : n ≤ m := by omega
  have hk1 : 1 ≤ k := by omega
  have hgrowth_nat : (k - 1) * (m - n) < reflectedSum k n m := by omega
  have hgrowth_cast : (((k - 1) * (m - n) : ℕ) : ℤ) <
      (reflectedSum k n m : ℤ) := by exact_mod_cast hgrowth_nat
  have hdelta_lo : (0 : ℤ) < ((reflectedSum k n m - 2 * (n + i) : ℕ) : ℤ) := by
    exact_mod_cast hwindow.1
  have hdelta_hi : ((reflectedSum k n m - 2 * (n + i) : ℕ) : ℤ) <
      ((2 * (m - n) : ℕ) : ℤ) := by exact_mod_cast hwindow.2
  have hsub : 2 * (n + i) ≤ reflectedSum k n m := hposition.le
  simp only [Nat.cast_sub hsub, Nat.cast_mul, Nat.cast_ofNat, Nat.cast_sub hnm]
    at hdelta_lo hdelta_hi
  have hS : (0 : ℤ) < (reflectedSum k n m : ℤ) := by
    exact_mod_cast (show 0 < reflectedSum k n m by omega)
  refine ⟨hS, ⟨hdelta_lo, hdelta_hi⟩, ?_⟩
  simpa only [Nat.cast_mul, Nat.cast_sub hk1, Nat.cast_one, Nat.cast_sub hnm]
    using hgrowth_cast

/-- Original product geometry plus explicitly supplied complete factor-group
and signed-error certificates implies both bounds. This is still conditional
on the factor/contact data, not a source-facing exclusion without them. -/
theorem original_equation_certificate_bounds (k n m i j : ℕ)
    (A Di Dj Wi Wj c ell : ℤ)
    (hk : 5 ≤ k) (hsep : n + k ≤ m)
    (heq : product k m = 4 * product k n)
    (hi : i ∈ Icc 1 k) (hj : j ∈ Icc 1 k)
    (hA : 0 < A) (hWi : 0 < Wi) (hWj : 0 < Wj) (hc : 0 < c)
    (hfactor : A * Di * Dj = (reflectedSum k n m : ℤ))
    (hcontact_i : Di ^ 2 ∣ Wi) (hcontact_j : Dj ^ 2 ∣ Wj)
    (herror_i : 2 * Wi = ell * (reflectedSum k n m : ℤ) -
      c * ((reflectedSum k n m : ℤ) - 2 * (n + i : ℕ)))
    (herror_j : 2 * Wj = ell * (reflectedSum k n m : ℤ) -
      c * ((reflectedSum k n m : ℤ) - 2 * (n + j : ℕ)))
    (hcl : ell * c = 15) :
    (k : ℤ) ≤ 60 * A ^ 2 ∧ (Even A → (k : ℤ) ≤ 15 * A ^ 2) := by
  have hk2 : 2 ≤ k := by omega
  obtain ⟨hS, hdi, hgrowth⟩ := original_geometry_int k n m i hk2 hsep heq hi
  have hdj := (original_geometry_int k n m j hk2 hsep heq hj).2.1
  exact square_contact_certificate_bounds (k : ℤ) ((m : ℤ) - n)
    (reflectedSum k n m : ℤ) A Di Dj Wi Wj
    ((reflectedSum k n m : ℤ) - 2 * (n + i : ℕ))
    ((reflectedSum k n m : ℤ) - 2 * (n + j : ℕ)) c ell
    (by exact_mod_cast hk) hS hA hWi hWj hdi hdj hc hgrowth hfactor
    hcontact_i hcontact_j herror_i herror_j hcl

/-- info: 'B686Round9.SumTwoPositionGap.original_geometry_int' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms original_geometry_int
/-- info: 'B686Round9.SumTwoPositionGap.original_equation_certificate_bounds' depends on axioms: [propext,
 Classical.choice,
 Quot.sound] -/
#guard_msgs in
#print axioms original_equation_certificate_bounds

/-- The actual reflected error, before multiplication by its parity sign. -/
def reflectedError (k n m i : ℕ) : ℤ :=
  (4 * (-1 : ℤ) ^ k - 1) * (n + i : ℕ) + (reflectedSum k n m : ℤ)

/-- Positive sign-adjusted error on the original separated product equation. -/
def signedReflectedError (k n m i : ℕ) : ℤ :=
  (-1 : ℤ) ^ k * reflectedError k n m i

/-- Positivity, the error identity and the constant 15 come from the actual
parity and the source position window, not from extra contact assumptions. -/
theorem signed_error_geometry (k n m i : ℕ) (hk : 2 ≤ k)
    (hsep : n + k ≤ m) (heq : product k m = 4 * product k n)
    (hi : i ∈ Icc 1 k) :
    0 < signedReflectedError k n m i ∧
      0 < 4 - (-1 : ℤ) ^ k ∧
      2 * signedReflectedError k n m i =
        (4 + (-1 : ℤ) ^ k) * (reflectedSum k n m : ℤ) -
          (4 - (-1 : ℤ) ^ k) *
            ((reflectedSum k n m : ℤ) - 2 * (n + i : ℕ)) ∧
      (4 + (-1 : ℤ) ^ k) * (4 - (-1 : ℤ) ^ k) = 15 := by
  have hwindow := reflected_position_window k n m i hk hsep heq hi
  have h2 : 2 * ((n + i : ℕ) : ℤ) < (reflectedSum k n m : ℤ) := by
    exact_mod_cast hwindow.1
  have h5 : (reflectedSum k n m : ℤ) < 5 * ((n + i : ℕ) : ℤ) := by
    exact_mod_cast hwindow.2
  have hz : (0 : ℤ) < ((n + i : ℕ) : ℤ) := by
    exact_mod_cast (show 0 < n + i from by have := (mem_Icc.mp hi).1; omega)
  rcases neg_one_pow_eq_or ℤ k with hs | hs
  all_goals
    simp only [signedReflectedError, reflectedError, hs]
    refine ⟨?_, ?_, ?_, ?_⟩ <;> nlinarith

/-- Source equation plus a complete factorization and square contacts on the
actual reflected errors. Only factor/support extraction and the prime-power
contact implication remain to be supplied; neither is silently assumed proved.
No hypothesis identifying `A` with the actual smooth part is inferred here. -/
theorem reflected_factor_contact_bounds (k n m i j : ℕ) (A Di Dj : ℤ)
    (hk : 5 ≤ k) (hsep : n + k ≤ m)
    (heq : product k m = 4 * product k n)
    (hi : i ∈ Icc 1 k) (hj : j ∈ Icc 1 k) (hA : 0 < A)
    (hfactor : A * Di * Dj = (reflectedSum k n m : ℤ))
    (hcontact_i : Di ^ 2 ∣ reflectedError k n m i)
    (hcontact_j : Dj ^ 2 ∣ reflectedError k n m j) :
    (k : ℤ) ≤ 60 * A ^ 2 ∧ (Even A → (k : ℤ) ≤ 15 * A ^ 2) := by
  have hk2 : 2 ≤ k := by omega
  obtain ⟨hWi, hc, herror_i, hcl⟩ := signed_error_geometry k n m i hk2 hsep heq hi
  obtain ⟨hWj, _, herror_j, _⟩ := signed_error_geometry k n m j hk2 hsep heq hj
  have hci : Di ^ 2 ∣ signedReflectedError k n m i :=
    dvd_mul_of_dvd_right hcontact_i _
  have hcj : Dj ^ 2 ∣ signedReflectedError k n m j :=
    dvd_mul_of_dvd_right hcontact_j _
  exact original_equation_certificate_bounds k n m i j A Di Dj
    (signedReflectedError k n m i) (signedReflectedError k n m j)
    (4 - (-1 : ℤ) ^ k) (4 + (-1 : ℤ) ^ k) hk hsep heq hi hj
    hA hWi hWj hc hfactor hci hcj herror_i herror_j hcl

/-- info: 'B686Round9.SumTwoPositionGap.signed_error_geometry' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms signed_error_geometry
/-- info: 'B686Round9.SumTwoPositionGap.reflected_factor_contact_bounds' depends on axioms: [propext,
 Classical.choice,
 Quot.sound] -/
#guard_msgs in
#print axioms reflected_factor_contact_bounds

end B686Round9.SumTwoPositionGap
