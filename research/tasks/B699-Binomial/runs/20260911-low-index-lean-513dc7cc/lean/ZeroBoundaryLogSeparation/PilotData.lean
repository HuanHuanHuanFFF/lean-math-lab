import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.ZeroBoundaryLogSeparation.Basic

/-! Two actual old (2,3) certificate positions, rounded outward to 50 decimals.
The pair record uses candidate index 1. A/C = 1 is marked -1 (resonant);
A/C = 5 uses candidate index 1. No all-pair or assignment-coverage claim. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 10000

namespace Math.B699.ZeroBoundaryLogSeparation

def M0 : ℕ := 2 ^ 53

def alpha23Lower : ℚ :=
  15773243839286435927488177858569021357489641003297 /
    25000000000000000000000000000000000000000000000000

def alpha23Upper : ℚ :=
  63092975357145743709952711434276085429958564013189 /
    100000000000000000000000000000000000000000000000000

def betaFiveLower : ℚ :=
  36624338017948179179926010191966009907698309166651 /
    25000000000000000000000000000000000000000000000000

def betaFiveUpper : ℚ :=
  29299470414358543343940808153572807926158647333321 /
    20000000000000000000000000000000000000000000000000

def approximation23 : Approximation where
  alphaLower := alpha23Lower
  alphaUpper := alpha23Upper
  u := 6234549927241963
  v := 9881527843552324
  error := 1 / 200000000000000000

def nonresonantFive : NonresonantData where
  approx := approximation23
  betaLower := betaFiveLower
  betaUpper := betaFiveUpper
  lowerInteger := 14476176635041074
  gap := 31 / 100

theorem pilot_nonresonant_check : nonresonantCheck M0 (1 / 100) nonresonantFive = true := by
  decide +kernel

theorem pilot_resonant_check : resonantCheck M0 approximation23 = true := by
  decide +kernel

theorem pilot_nonresonant_abstract {alpha beta : ℝ}
    (ha : (alpha23Lower : ℝ) ≤ alpha ∧ alpha ≤ (alpha23Upper : ℝ))
    (hb : (betaFiveLower : ℝ) ≤ beta ∧ beta ≤ (betaFiveUpper : ℝ))
    (x y : ℤ) (hx : |x| ≤ (M0 : ℤ)) :
    (1 : ℝ) / 100 ≤ 9881527843552324 * |(x : ℝ) * alpha - y + beta| := by
  exact nonresonantCheck_sound pilot_nonresonant_check ha hb x y hx

theorem pilot_resonant_abstract {alpha : ℝ}
    (ha : (alpha23Lower : ℝ) ≤ alpha ∧ alpha ≤ (alpha23Upper : ℝ))
    (x y : ℤ) (hx : |x| ≤ (M0 : ℤ)) (hxy : ¬ (x = 0 ∧ y = 0)) :
    (1 : ℝ) / 2 < 9881527843552324 * |(x : ℝ) * alpha - y| := by
  exact resonantCheck_sound pilot_resonant_check ha x y hx hxy

end Math.B699.ZeroBoundaryLogSeparation

#check (Math.B699.ZeroBoundaryLogSeparation.pilot_nonresonant_check :
  Math.B699.ZeroBoundaryLogSeparation.nonresonantCheck
    Math.B699.ZeroBoundaryLogSeparation.M0 (1 / 100)
    Math.B699.ZeroBoundaryLogSeparation.nonresonantFive = true)
#check (Math.B699.ZeroBoundaryLogSeparation.pilot_resonant_check :
  Math.B699.ZeroBoundaryLogSeparation.resonantCheck
    Math.B699.ZeroBoundaryLogSeparation.M0
    Math.B699.ZeroBoundaryLogSeparation.approximation23 = true)
#check (Math.B699.ZeroBoundaryLogSeparation.pilot_nonresonant_abstract :
  ∀ {alpha beta : ℝ},
    ((Math.B699.ZeroBoundaryLogSeparation.alpha23Lower : ℝ) ≤ alpha ∧
      alpha ≤ (Math.B699.ZeroBoundaryLogSeparation.alpha23Upper : ℝ)) →
    ((Math.B699.ZeroBoundaryLogSeparation.betaFiveLower : ℝ) ≤ beta ∧
      beta ≤ (Math.B699.ZeroBoundaryLogSeparation.betaFiveUpper : ℝ)) →
    ∀ x y : ℤ, |x| ≤ (Math.B699.ZeroBoundaryLogSeparation.M0 : ℤ) →
      (1 : ℝ) / 100 ≤ 9881527843552324 * |(x : ℝ) * alpha - y + beta|)
#check (Math.B699.ZeroBoundaryLogSeparation.pilot_resonant_abstract :
  ∀ {alpha : ℝ},
    ((Math.B699.ZeroBoundaryLogSeparation.alpha23Lower : ℝ) ≤ alpha ∧
      alpha ≤ (Math.B699.ZeroBoundaryLogSeparation.alpha23Upper : ℝ)) →
    ∀ x y : ℤ, |x| ≤ (Math.B699.ZeroBoundaryLogSeparation.M0 : ℤ) →
      ¬ (x = 0 ∧ y = 0) →
      (1 : ℝ) / 2 < 9881527843552324 * |(x : ℝ) * alpha - y|)
#print axioms Math.B699.ZeroBoundaryLogSeparation.pilot_nonresonant_check
#print axioms Math.B699.ZeroBoundaryLogSeparation.pilot_resonant_check
#print axioms Math.B699.ZeroBoundaryLogSeparation.pilot_nonresonant_abstract
#print axioms Math.B699.ZeroBoundaryLogSeparation.pilot_resonant_abstract
