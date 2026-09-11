import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-pade-moment-identity-5e2d13bb».SourceMoments
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PadeInteger

/-!
# Adapter to the actual PadeInteger arrays

UNCOMPILED CANDIDATE. This final file states the result using the existing
pPolynomial/qPolynomial/ePolynomial, not replacement objects with a Padé
identity in their definition. The source candidate imports are not treated
as accepted merely because this file references them.
-/

namespace Math.B699.PadeMomentIdentity

open Math.B699.PadeConstruction
open scoped BigOperators

theorem pSource_eq_actual_eval (A B C : ℕ) (z : ℚ) :
    pSource A B C z = (pPolynomial A B C).eval₂ (Int.castRingHom ℚ) z := by
  classical
  unfold pSource pPolynomial coefficientPolynomial
  simp only [Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial]
  apply Finset.sum_congr rfl
  intro r hr
  simp [pCoefficient]

theorem qSource_eq_actual_eval (A B C : ℕ) (z : ℚ) :
    qSource A B C z = (qPolynomial A B C).eval₂ (Int.castRingHom ℚ) z := by
  classical
  unfold qSource qPolynomial coefficientPolynomial
  simp only [Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial]
  apply Finset.sum_congr rfl
  intro r hr
  simp [qCoefficient, qMagnitude, mul_assoc]

theorem eSource_eq_actual_eval (A B C : ℕ) (z : ℚ) :
    eSource A B C z = (ePolynomial A B C).eval₂ (Int.castRingHom ℚ) z := by
  classical
  unfold eSource ePolynomial coefficientPolynomial
  simp only [Polynomial.eval₂_finsetSum, Polynomial.eval₂_monomial]
  apply Finset.sum_congr rfl
  intro r hr
  simp [eCoefficient]

theorem actual_integer_pade_identity (A B C : ℕ) (z : ℚ) :
    (pPolynomial A B C).eval₂ (Int.castRingHom ℚ) z -
        (1 - z) ^ (B + C + 1) * (qPolynomial A B C).eval₂ (Int.castRingHom ℚ) z =
      z ^ (A + C + 1) * (ePolynomial A B C).eval₂ (Int.castRingHom ℚ) z := by
  rw [← pSource_eq_actual_eval, ← qSource_eq_actual_eval, ← eSource_eq_actual_eval]
  exact source_pade_identity A B C z

#print axioms Math.B699.PadeMomentIdentity.pSource_eq_actual_eval
#print axioms Math.B699.PadeMomentIdentity.qSource_eq_actual_eval
#print axioms Math.B699.PadeMomentIdentity.eSource_eq_actual_eval
#print axioms Math.B699.PadeMomentIdentity.actual_integer_pade_identity

end Math.B699.PadeMomentIdentity
