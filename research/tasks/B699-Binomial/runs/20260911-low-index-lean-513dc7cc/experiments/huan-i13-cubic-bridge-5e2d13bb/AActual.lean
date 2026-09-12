import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13Cubic.Actual

#check @B699LowIndex.I13CubicBridge.actual_i13_cubic_bridge
#print axioms B699LowIndex.I13CubicBridge.actual_i13_cubic_bridge

open B699LargePrimeStructure
#check (@B699LowIndex.I13CubicBridge.actual_i13_cubic_bridge :
  ∀ {n j : ℕ}, (2 : ℕ) ^ 67 ≤ n → 13 < j → j ≤ n / 2 →
    ¬ Common n 13 j →
    ∃ p q h k a b A C : ℕ,
      p.Prime ∧ q.Prime ∧ p ∈ ({2, 3, 5, 7, 11} : Finset ℕ) ∧
      q ∈ ({2, 3, 5, 7, 11} : Finset ℕ) ∧ p ≠ q ∧
      h = (n.choose 13).factorization p ∧ k = (n.choose 13).factorization q ∧
      0 < h ∧ 0 < k ∧ a < 13 ∧ b < 13 ∧ 1 ≤ A ∧ 1 ≤ C ∧
      n - a = p ^ h * A ∧ n - b = q ^ k * C ∧
      A ^ 3 ≤ min (n - a) (n - b) ∧ C ^ 3 ≤ min (n - a) (n - b) ∧
      Nat.dist (n - a) (n - b) ≤ 12)
