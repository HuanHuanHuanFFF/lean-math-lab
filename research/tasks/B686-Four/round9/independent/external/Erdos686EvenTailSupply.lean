/- leanprover/lean4:v4.29.1  mathlib v4.29.1 -/
import ErdosProblems.Erdos686EvenTailCoefficientCertificate
import Mathlib.RingTheory.Localization.Integral

/-!
# Erdős 686: universal supply of even-tail Runge certificates

This module constructs the rational polynomial part by an exact descending
coefficient recurrence, proves the centered polynomial is not a square, and
clears denominators to populate `EvenTailCoefficientCertificate`.
-/

namespace Erdos686
namespace Erdos686Variant

open Polynomial

noncomputable section

/-- The coefficient used to cancel degree `r+j` in the square deficit. -/
private def squareRootCorrection
    (S Q : Polynomial ℚ) (r j : ℕ) : ℚ :=
  -((Q ^ 2 - S).coeff (r + j)) / 2

/-- One exact descending step in the polynomial part of a square root. -/
private def squareRootRefine
    (S Q : Polynomial ℚ) (r j : ℕ) : Polynomial ℚ :=
  Q + Polynomial.C (squareRootCorrection S Q r j) * X ^ j

private theorem squareRootRefine_step
    {S Q : Polynomial ℚ} {r j : ℕ} (hr : 1 ≤ r) (hj : j < r)
    (hQ : Q.IsMonicOfDegree r)
    (hdef : (Q ^ 2 - S).natDegree < r + (j + 1)) :
    (squareRootRefine S Q r j).IsMonicOfDegree r ∧
      ((squareRootRefine S Q r j) ^ 2 - S).natDegree < r + j := by
  let a : ℚ := squareRootCorrection S Q r j
  let U : Polynomial ℚ := Polynomial.C a * X ^ j
  have hUdeg : U.natDegree < r := by
    dsimp [U]
    exact (Polynomial.natDegree_C_mul_X_pow_le a j).trans_lt hj
  have hQ' : (Q + U).IsMonicOfDegree r := hQ.add_right hUdeg
  have hQr : Q.coeff r = 1 := by
    have hm := hQ.monic
    rw [Monic, leadingCoeff, hQ.natDegree_eq] at hm
    exact hm
  have hpoly : (Q + U) ^ 2 - S =
      (Q ^ 2 - S) + Polynomial.C (2 * a) * (Q * X ^ j) +
        Polynomial.C (a ^ 2) * X ^ (2 * j) := by
    dsimp [U]
    rw [show Polynomial.C (2 * a) =
        (2 : Polynomial ℚ) * Polynomial.C a by
      rw [← Polynomial.C_ofNat 2, ← Polynomial.C_mul]]
    rw [show Polynomial.C (a ^ 2) = Polynomial.C a ^ 2 by
      exact map_pow Polynomial.C a 2]
    ring
  have hNpos : 0 < r + j := by omega
  have hdegree : ((Q + U) ^ 2 - S).natDegree < r + j := by
    rw [← Nat.le_sub_one_iff_lt hNpos]
    apply Polynomial.natDegree_le_iff_coeff_eq_zero.mpr
    intro i hi
    have hNi : r + j ≤ i := by omega
    by_cases hieq : i = r + j
    · subst i
      rw [hpoly, Polynomial.coeff_add, Polynomial.coeff_add,
        Polynomial.coeff_C_mul, Polynomial.coeff_mul_X_pow Q j r,
        hQr, Polynomial.coeff_C_mul_X_pow]
      have hne : r + j ≠ 2 * j := by omega
      rw [if_neg hne]
      dsimp [a, squareRootCorrection]
      ring
    · have hNlt : r + j < i := lt_of_le_of_ne hNi (Ne.symm hieq)
      have hRzero : (Q ^ 2 - S).coeff i = 0 :=
        Polynomial.coeff_eq_zero_of_natDegree_lt (lt_of_lt_of_le hdef (by omega))
      have hCrossDeg :
          (Polynomial.C (2 * a) * (Q * X ^ j)).natDegree ≤ r + j := by
        calc
          (Polynomial.C (2 * a) * (Q * X ^ j)).natDegree
              ≤ (Q * X ^ j).natDegree := Polynomial.natDegree_C_mul_le _ _
          _ ≤ Q.natDegree + (X ^ j : Polynomial ℚ).natDegree :=
            Polynomial.natDegree_mul_le
          _ = r + j := by rw [hQ.natDegree_eq, Polynomial.natDegree_X_pow]
      have hCrossZero :
          (Polynomial.C (2 * a) * (Q * X ^ j)).coeff i = 0 :=
        Polynomial.coeff_eq_zero_of_natDegree_lt (lt_of_le_of_lt hCrossDeg hNlt)
      have hSquareDeg :
          (Polynomial.C (a ^ 2) * X ^ (2 * j)).natDegree ≤ 2 * j :=
        Polynomial.natDegree_C_mul_X_pow_le _ _
      have hSquareZero :
          (Polynomial.C (a ^ 2) * X ^ (2 * j)).coeff i = 0 :=
        Polynomial.coeff_eq_zero_of_natDegree_lt
          (lt_of_le_of_lt hSquareDeg (by omega))
      rw [hpoly, Polynomial.coeff_add, Polynomial.coeff_add,
        hRzero, hCrossZero, hSquareZero]
      norm_num
  simpa [squareRootRefine, U, a] using And.intro hQ' hdegree

/-- Every monic rational polynomial of even degree has a polynomial part of
its square root through degree `r`. -/
theorem exists_monic_rational_square_root_part
    {S : Polynomial ℚ} {r : ℕ} (hr : 1 ≤ r)
    (hS : S.IsMonicOfDegree (2 * r)) :
    ∃ Q : Polynomial ℚ,
      Q.IsMonicOfDegree r ∧ (Q ^ 2 - S).natDegree < r := by
  have hbase : ∃ Q : Polynomial ℚ,
      Q.IsMonicOfDegree r ∧ (Q ^ 2 - S).natDegree < r + r := by
    refine ⟨X ^ r, Polynomial.isMonicOfDegree_X_pow ℚ r, ?_⟩
    have hXsq : ((X : Polynomial ℚ) ^ r) ^ 2 |>.IsMonicOfDegree (2 * r) := by
      simpa [mul_comm] using (Polynomial.isMonicOfDegree_X_pow ℚ r).pow 2
    simpa [two_mul] using hXsq.natDegree_sub_lt (by omega) hS
  let motive : (j : ℕ) → j ≤ r → Prop := fun j _ =>
    ∃ Q : Polynomial ℚ,
      Q.IsMonicOfDegree r ∧ (Q ^ 2 - S).natDegree < r + j
  have hdesc : motive 0 (Nat.zero_le r) :=
    Nat.decreasingInduction (n := r) (motive := motive)
      (fun j hj ih => by
        obtain ⟨Q, hQ, hdef⟩ := ih
        obtain ⟨hQ', hdef'⟩ := squareRootRefine_step hr hj hQ hdef
        exact ⟨squareRootRefine S Q r j, hQ', hdef'⟩)
      hbase (Nat.zero_le r)
  simpa [motive] using hdesc

/-! ## The centered polynomial and its simple root -/

/-- The individual centered linear factor in the even row `k=2r`. -/
def evenCenteredLinearFactor (r i : ℕ) : Polynomial ℤ :=
  X + Polynomial.C (2 * (i : ℤ) - (2 * r : ℤ) - 1)

/-- The centered polynomial for the even row `k=2r`, expressed in the same
indexing as `centeredBlockProduct`. -/
def evenCenteredPolynomial (r : ℕ) : Polynomial ℤ :=
  ∏ i ∈ Finset.Icc 1 (2 * r), evenCenteredLinearFactor r i

theorem evenCenteredPolynomial_eval (r x : ℕ) :
    (evenCenteredPolynomial r).eval
        (2 * (x : ℤ) + (2 * r : ℤ) + 1) =
      centeredBlockProduct (2 * r)
        (2 * (x : ℤ) + (2 * r : ℤ) + 1) := by
  simp only [evenCenteredPolynomial, Polynomial.eval_prod,
    evenCenteredLinearFactor, Polynomial.eval_add, Polynomial.eval_X,
    Polynomial.eval_C, centeredBlockProduct]
  norm_num [Nat.cast_mul]

theorem evenCenteredPolynomial_isMonicOfDegree (r : ℕ) :
    (evenCenteredPolynomial r).IsMonicOfDegree (2 * r) := by
  have hmonic : ∀ i ∈ Finset.Icc 1 (2 * r),
      (evenCenteredLinearFactor r i).Monic := by
    intro i hi
    exact Polynomial.monic_X_add_C _
  refine ⟨?_, Polynomial.monic_prod_of_monic _ _ hmonic⟩
  rw [evenCenteredPolynomial, Polynomial.natDegree_prod_of_monic _ _ hmonic]
  calc
    ∑ i ∈ Finset.Icc 1 (2 * r), (evenCenteredLinearFactor r i).natDegree
        = ∑ _i ∈ Finset.Icc 1 (2 * r), 1 := by
      apply Finset.sum_congr rfl
      intro i hi
      exact Polynomial.natDegree_X_add_C _
    _ = 2 * r := by simp [Nat.card_Icc]

private def evenCenteredPolynomialRootOneCofactor (r : ℕ) : Polynomial ℤ :=
  ∏ i ∈ (Finset.Icc 1 (2 * r)).erase r, evenCenteredLinearFactor r i

private theorem evenCenteredPolynomial_factor_root_one
    {r : ℕ} (hr : 1 ≤ r) :
    evenCenteredPolynomial r =
      (X - Polynomial.C 1) * evenCenteredPolynomialRootOneCofactor r := by
  have hrmem : r ∈ Finset.Icc 1 (2 * r) := by simp; omega
  have hprod := Finset.mul_prod_erase (Finset.Icc 1 (2 * r))
    (evenCenteredLinearFactor r) hrmem
  simp only [evenCenteredPolynomial, evenCenteredPolynomialRootOneCofactor]
  rw [← hprod]
  congr 1
  simp [evenCenteredLinearFactor]
  ring

private theorem evenCenteredPolynomialRootOneCofactor_eval_ne_zero
    {r : ℕ} :
    (evenCenteredPolynomialRootOneCofactor r).eval 1 ≠ 0 := by
  rw [evenCenteredPolynomialRootOneCofactor, Polynomial.eval_prod]
  apply Finset.prod_ne_zero_iff.mpr
  intro i hi
  have hiErase := Finset.mem_erase.mp hi
  have hir : i ≠ r := hiErase.1
  simp only [evenCenteredLinearFactor, Polynomial.eval_add, Polynomial.eval_X,
    Polynomial.eval_C]
  intro hzero
  have hcast : (i : ℤ) = (r : ℤ) := by
    norm_num [Nat.cast_mul] at hzero
    omega
  exact hir (Int.ofNat_inj.mp hcast)

theorem evenCenteredPolynomial_eval_one (r : ℕ) (hr : 1 ≤ r) :
    (evenCenteredPolynomial r).eval 1 = 0 := by
  rw [evenCenteredPolynomial_factor_root_one hr]
  simp

theorem evenCenteredPolynomial_derivative_eval_one_ne_zero
    {r : ℕ} (hr : 1 ≤ r) :
    (evenCenteredPolynomial r).derivative.eval 1 ≠ 0 := by
  rw [evenCenteredPolynomial_factor_root_one hr, Polynomial.derivative_mul]
  simp only [Polynomial.derivative_sub, Polynomial.derivative_X,
    Polynomial.derivative_C, sub_zero, Polynomial.eval_add,
    Polynomial.eval_mul, one_mul, Polynomial.eval_sub,
    Polynomial.eval_X, Polynomial.eval_C, sub_self, zero_mul, add_zero]
  exact evenCenteredPolynomialRootOneCofactor_eval_ne_zero

/-- The centered polynomial has a simple root at `1`, so no nonzero scalar
multiple of it is a square in `ℤ[X]`. -/
theorem evenCenteredPolynomial_ne_scaled_square
    {r : ℕ} (hr : 1 ≤ r) {T : Polynomial ℤ} {C : ℤ} (hC : C ≠ 0) :
    T ^ 2 ≠ Polynomial.C (C ^ 2) * evenCenteredPolynomial r := by
  intro hsquare
  have heval := congrArg (Polynomial.eval (1 : ℤ)) hsquare
  simp only [Polynomial.eval_pow, Polynomial.eval_mul, Polynomial.eval_C,
    evenCenteredPolynomial_eval_one r hr, mul_zero] at heval
  have hTroot : T.eval 1 = 0 := by nlinarith [sq_nonneg (T.eval 1)]
  have hderiv := congrArg Polynomial.derivative hsquare
  have hderivEval := congrArg (Polynomial.eval (1 : ℤ)) hderiv
  simp only [Polynomial.derivative_pow, Polynomial.derivative_mul,
    Polynomial.derivative_C, zero_mul, Polynomial.eval_mul,
    Polynomial.eval_C, Polynomial.eval_pow, hTroot, zero_mul, zero_add] at hderivEval
  have hCpow : C ^ 2 ≠ 0 := pow_ne_zero _ hC
  exact evenCenteredPolynomial_derivative_eval_one_ne_zero hr
    (by apply mul_left_cancel₀ hCpow; simpa using hderivEval)

/-! ## Positive integral denominator clearing -/

/-- Clear all rational coefficients of a monic degree-`r` polynomial with a
single positive integral multiplier, preserving its exact leading degree. -/
theorem exists_positive_integral_multiple_of_monic_rational
    {Q : Polynomial ℚ} {r : ℕ} (hQ : Q.IsMonicOfDegree r) :
    ∃ (C : ℤ) (T : Polynomial ℤ),
      1 ≤ C ∧ T.natDegree = r ∧ T.coeff r = C ∧
        T.map (Int.castRingHom ℚ) = Polynomial.C (C : ℚ) * Q := by
  let T₀ : Polynomial ℤ :=
    IsLocalization.integerNormalization (nonZeroDivisors ℤ) Q
  obtain ⟨b, hb, hbmap⟩ :=
    IsLocalization.integerNormalization_spec (nonZeroDivisors ℤ) Q
  have hbnz : b ≠ 0 := nonZeroDivisors.ne_zero hb
  let C : ℤ := |b|
  let T : Polynomial ℤ := Polynomial.C b.sign * T₀
  have hCpos : 1 ≤ C := by
    dsimp [C]
    have hbabs : 0 < |b| := abs_pos.mpr hbnz
    omega
  have hmapT : T.map (Int.castRingHom ℚ) = Polynomial.C (C : ℚ) * Q := by
    dsimp [T, T₀]
    have hbmap' :
        (IsLocalization.integerNormalization (nonZeroDivisors ℤ) Q).map
            (Int.castRingHom ℚ) = (b : ℚ) • Q := by
      simpa using hbmap
    rw [Polynomial.map_mul, Polynomial.map_C, hbmap',
      Polynomial.smul_eq_C_mul]
    have hsign : ((b.sign : ℤ) : ℚ) * (b : ℚ) = (C : ℚ) := by
      exact_mod_cast Int.sign_mul_self_eq_abs b
    change Polynomial.C ((b.sign : ℤ) : ℚ) *
      (Polynomial.C (b : ℚ) * Q) = Polynomial.C (C : ℚ) * Q
    rw [← mul_assoc, ← Polynomial.C_mul, hsign]
  have hmapTdeg : (T.map (Int.castRingHom ℚ)).natDegree = r := by
    rw [hmapT]
    have hCq : (C : ℚ) ≠ 0 := by exact_mod_cast (ne_of_gt hCpos)
    rw [Polynomial.natDegree_C_mul hCq, hQ.natDegree_eq]
  have hTdeg : T.natDegree = r := by
    rw [← hmapTdeg]
    exact (Polynomial.natDegree_map_eq_of_injective
      (f := Int.castRingHom ℚ) Int.cast_injective T).symm
  have hTcoeff : T.coeff r = C := by
    have hcoeff : ((T.coeff r : ℤ) : ℚ) =
        (Polynomial.C (C : ℚ) * Q).coeff r := by
      simpa only [Polynomial.coeff_map] using
        congrArg (fun P : Polynomial ℚ => P.coeff r) hmapT
    have hQlead : Q.coeff r = 1 := by
      have hm := hQ.monic
      rw [Monic, leadingCoeff, hQ.natDegree_eq] at hm
      exact hm
    have hrhs : (Polynomial.C (C : ℚ) * Q).coeff r = (C : ℚ) := by
      rw [Polynomial.coeff_C_mul, hQlead, mul_one]
    rw [hrhs] at hcoeff
    exact Int.cast_injective hcoeff
  exact ⟨C, T, hCpos, hTdeg, hTcoeff, hmapT⟩

/-! ## Assembly of the universal certificate -/

/-- The exact finite certificate for the even row `k=2r`. -/
noncomputable def universalEvenTailCoefficientCertificate
    (r : ℕ) (hr : 2 ≤ r) : EvenTailCoefficientCertificate r := by
  let S : Polynomial ℤ := evenCenteredPolynomial r
  let Sℚ : Polynomial ℚ := S.map (Int.castRingHom ℚ)
  have hSℤ : S.IsMonicOfDegree (2 * r) := by
    dsimp [S]
    exact evenCenteredPolynomial_isMonicOfDegree r
  have hSℚ : Sℚ.IsMonicOfDegree (2 * r) := by
    refine ⟨?_, hSℤ.monic.map (Int.castRingHom ℚ)⟩
    dsimp [Sℚ]
    rw [Polynomial.natDegree_map_eq_of_injective
      (f := Int.castRingHom ℚ) Int.cast_injective, hSℤ.natDegree_eq]
  let hQexists := exists_monic_rational_square_root_part (by omega) hSℚ
  let Q : Polynomial ℚ := hQexists.choose
  have hQ : Q.IsMonicOfDegree r := hQexists.choose_spec.1
  have hQdef : (Q ^ 2 - Sℚ).natDegree < r := hQexists.choose_spec.2
  let hTexists := exists_positive_integral_multiple_of_monic_rational hQ
  let C : ℤ := hTexists.choose
  let T : Polynomial ℤ := hTexists.choose_spec.choose
  have hCpos : 1 ≤ C := hTexists.choose_spec.choose_spec.1
  have hTdeg : T.natDegree = r := hTexists.choose_spec.choose_spec.2.1
  have hTcoeff : T.coeff r = C := hTexists.choose_spec.choose_spec.2.2.1
  have hmapT : T.map (Int.castRingHom ℚ) = Polynomial.C (C : ℚ) * Q :=
    hTexists.choose_spec.choose_spec.2.2.2
  let D : Polynomial ℤ := T ^ 2 - Polynomial.C (C ^ 2) * S
  have hmapD : D.map (Int.castRingHom ℚ) =
      Polynomial.C ((C : ℚ) ^ 2) * (Q ^ 2 - Sℚ) := by
    dsimp [D, Sℚ]
    rw [Polynomial.map_sub, Polynomial.map_pow, Polynomial.map_mul,
      Polynomial.map_C, hmapT]
    have hcastC : (Int.castRingHom ℚ) (C ^ 2) = (C : ℚ) ^ 2 := by
      norm_num
    rw [hcastC]
    rw [show Polynomial.C ((C : ℚ) ^ 2) =
        Polynomial.C (C : ℚ) ^ 2 by exact map_pow Polynomial.C (C : ℚ) 2]
    ring
  have hCq : ((C : ℚ) ^ 2) ≠ 0 := pow_ne_zero _ (by exact_mod_cast (ne_of_gt hCpos))
  have hmapDdeg : (D.map (Int.castRingHom ℚ)).natDegree < r := by
    rw [hmapD, Polynomial.natDegree_C_mul hCq]
    exact hQdef
  have hDdeg : D.natDegree < r := by
    rw [← Polynomial.natDegree_map_eq_of_injective
      (f := Int.castRingHom ℚ) Int.cast_injective D]
    exact hmapDdeg
  have hDne : D ≠ 0 := by
    intro hzero
    have hsquare : T ^ 2 = Polynomial.C (C ^ 2) * evenCenteredPolynomial r := by
      apply sub_eq_zero.mp
      simpa [D, S] using hzero
    exact evenCenteredPolynomial_ne_scaled_square (by omega)
      (ne_of_gt hCpos) hsquare
  let q : ℕ := D.natDegree
  let L : ℤ := D.coeff q
  have hq_lt : q < r := by simpa [q] using hDdeg
  have hLne : L ≠ 0 := by
    dsimp [L, q]
    exact Polynomial.leadingCoeff_ne_zero.mpr hDne
  let A : ℤ := coefficientAbsSumBelow T r
  let E : ℤ := coefficientAbsSumBelow D (q + 1)
  let F : ℤ := coefficientAbsSumBelow D q
  have hA0 : 0 ≤ A := by
    dsimp [A]
    exact coefficientAbsSumBelow_nonneg T r
  have hE0 : 0 ≤ E := by
    dsimp [E]
    exact coefficientAbsSumBelow_nonneg D (q + 1)
  have hF0 : 0 ≤ F := by
    dsimp [F]
    exact coefficientAbsSumBelow_nonneg D q
  let M : ℕ := max (2 * r)
    (max (2 * A.natAbs + 1)
      (max (7 * F.natAbs + 1) (10 * E.natAbs + 1)))
  have hMA : 2 * A < (M : ℤ) := by
    have hle : 2 * A.natAbs + 1 ≤ M := by dsimp [M]; omega
    have hcast : ((2 * A.natAbs + 1 : ℕ) : ℤ) = 2 * A + 1 := by
      push_cast
      rw [abs_of_nonneg hA0]
    have hleZ : (2 * A + 1 : ℤ) ≤ M := by
      rw [← hcast]
      exact_mod_cast hle
    omega
  have hMF : 7 * F < (M : ℤ) := by
    have hle : 7 * F.natAbs + 1 ≤ M := by dsimp [M]; omega
    have hcast : ((7 * F.natAbs + 1 : ℕ) : ℤ) = 7 * F + 1 := by
      push_cast
      rw [abs_of_nonneg hF0]
    have hleZ : (7 * F + 1 : ℤ) ≤ M := by
      rw [← hcast]
      exact_mod_cast hle
    omega
  have hME : 10 * E < (M : ℤ) := by
    have hle : 10 * E.natAbs + 1 ≤ M := by dsimp [M]; omega
    have hcast : ((10 * E.natAbs + 1 : ℕ) : ℤ) = 10 * E + 1 := by
      push_cast
      rw [abs_of_nonneg hE0]
    have hleZ : (10 * E + 1 : ℤ) ≤ M := by
      rw [← hcast]
      exact_mod_cast hle
    omega
  refine
    { S := S
      T := T
      D := D
      C := C
      q := q
      L := L
      A := A
      E := E
      F := F
      threshold := M
      square_identity := ?_
      centered_bridge := ?_
      q_lt := hq_lt
      T_natDegree_le := hTdeg.le
      T_coeff_r := hTcoeff
      C_pos := hCpos
      D_natDegree_le := le_rfl
      D_coeff_q := rfl
      L_ne_zero := hLne
      A_eq := rfl
      E_eq := rfl
      F_eq := rfl
      twice_A_lt := hMA
      seven_F_lt := hMF
      ten_E_lt := hME }
  · dsimp [D]
    ring
  · intro x
    dsimp [S]
    exact evenCenteredPolynomial_eval r x

/-- The exact universal supply requested by the even-tail reduction. -/
noncomputable def universalEvenTailCertificateSupply :
    ∀ r : ℕ, 2 ≤ r → EvenTailCoefficientCertificate r :=
  fun r hr => universalEvenTailCoefficientCertificate r hr

theorem universal_even_tail_certificate_supply_nonempty :
    Nonempty (∀ r : ℕ, 2 ≤ r → EvenTailCoefficientCertificate r) :=
  ⟨universalEvenTailCertificateSupply⟩

/-- Unconditional effective tail exclusion for every even row. -/
theorem no_even_tail_solution_universal
    {r n d : ℕ} (hr : 2 ≤ r)
    (hd : max (2 * r)
      (universalEvenTailCoefficientCertificate r hr).threshold ≤ d) :
    blockProduct (2 * r) (n + d) ≠ 4 * blockProduct (2 * r) n :=
  no_even_tail_solution_of_coefficient_certificate hr
    (universalEvenTailCoefficientCertificate r hr) hd

#print axioms exists_monic_rational_square_root_part
#print axioms evenCenteredPolynomial_eval
#print axioms evenCenteredPolynomial_isMonicOfDegree
#print axioms evenCenteredPolynomial_eval_one
#print axioms evenCenteredPolynomial_derivative_eval_one_ne_zero
#print axioms evenCenteredPolynomial_ne_scaled_square
#print axioms exists_positive_integral_multiple_of_monic_rational
#print axioms universalEvenTailCoefficientCertificate
#print axioms universalEvenTailCertificateSupply
#print axioms universal_even_tail_certificate_supply_nonempty
#print axioms no_even_tail_solution_universal

end

end Erdos686Variant
end Erdos686
