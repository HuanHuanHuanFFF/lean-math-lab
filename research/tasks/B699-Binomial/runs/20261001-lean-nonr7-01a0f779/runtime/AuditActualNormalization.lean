import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».tail.NormalizationFromWindows

set_option Elab.async false

#check (B699TailWindows.noCommon_normalized_1000 :
  ∀ {n i j : ℕ}, 1000 ≤ i → i < j → j ≤ n / 2 →
    ¬ (∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j)) →
    (1 / 3 - 5 / (3 * (i : ℝ)) - (Nat.primeCounting (i - 1) : ℝ) / i) *
        Real.log ((n : ℝ) / i) ≤
      (Nat.primeCounting (i - 1) : ℝ) / i * Real.log (i : ℝ) +
        3 * Real.log (i : ℝ) / i - Real.log (1 - ((i : ℝ) - 1) / n))
#print axioms B699TailWindows.noCommon_normalized_1000
#print B699LargePrimeStructure.Common
#print B699TailWindows.Normalized
