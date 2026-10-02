import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».tail.NormalizationConstants

set_option Elab.async false

#check (B699TailNormalization.normalization_log_constant :
  (5 : ℝ) / 96 ≤ Real.log (2 / 3 : ℝ) + (2 / 3 : ℝ) * Real.log 2)
#check (B699TailNormalization.scaled_log_ratio_lower :
  ∀ {x q c : ℝ}, 0 < x → c < x → q = (2 / 3) * (x - c) →
    q * Real.log x + q * Real.log (2 / 3 : ℝ) - 2 * c / 3 ≤ q * Real.log q)
#check @B699TailNormalization.factorial_normalization
#print axioms B699TailNormalization.normalization_log_constant
#print axioms B699TailNormalization.scaled_log_ratio_lower
#print axioms B699TailNormalization.factorial_normalization
