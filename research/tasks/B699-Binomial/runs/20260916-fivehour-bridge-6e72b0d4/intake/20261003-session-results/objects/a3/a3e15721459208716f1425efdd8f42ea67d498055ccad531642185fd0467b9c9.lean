import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-onehour».critical.HeightAudit

#check (Math.B699.CriticalPadeHeight.actual_i28_below_15360 :
  ∀ {n j : ℕ}, 28 < j → j ≤ n / 2 →
    ¬ (∃ p : ℕ, p.Prime ∧ 28 ≤ p ∧ p ∣ Nat.gcd (n.choose 28) (n.choose j)) →
    n < (2 : ℕ) ^ 15360)
#check (Math.B699.CriticalPadeHeight.actual_i31_below_15360 :
  ∀ {n j : ℕ}, 31 < j → j ≤ n / 2 →
    ¬ (∃ p : ℕ, p.Prime ∧ 31 ≤ p ∧ p ∣ Nat.gcd (n.choose 31) (n.choose j)) →
    n < (2 : ℕ) ^ 15360)
#check (Math.B699.CriticalPadeHeight.actual_i34_below_15360 :
  ∀ {n j : ℕ}, 34 < j → j ≤ n / 2 →
    ¬ (∃ p : ℕ, p.Prime ∧ 34 ≤ p ∧ p ∣ Nat.gcd (n.choose 34) (n.choose j)) →
    n < (2 : ℕ) ^ 15360)
#print axioms Math.B699.CriticalPadeHeight.actual_i28_below_15360
#print axioms Math.B699.CriticalPadeHeight.actual_i31_below_15360
#print axioms Math.B699.CriticalPadeHeight.actual_i34_below_15360
#print axioms Math.B699.CriticalWindowLog.actual_i28_log_pair
#print axioms Math.B699.CriticalWindowLog.actual_i31_log_pair
#print axioms Math.B699.CriticalWindowLog.actual_i34_log_pair
