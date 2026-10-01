import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ActualUniformConsumers
#check (B699ActualUniform.common_of_ratio_4096 : ∀ {n i j : Nat}, 1000 ≤ i → i < j → j ≤ n / 2 → 4096 * i ≤ n → ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j)
#print axioms B699ActualUniform.common_of_ratio_4096

