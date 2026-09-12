import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13Cubic.Actual

#check @B699LowIndex.I13CubicBridge.primeComponent
#print axioms B699LowIndex.I13CubicBridge.primeComponent
#check @B699LowIndex.I13CubicBridge.i13_small_primes
#print axioms B699LowIndex.I13CubicBridge.i13_small_primes
#check @B699LowIndex.I13CubicBridge.PrimeWindow
#print axioms B699LowIndex.I13CubicBridge.PrimeWindow
#check @B699LowIndex.I13CubicBridge.primeWindow_nonempty
#print axioms B699LowIndex.I13CubicBridge.primeWindow_nonempty
#check @B699LowIndex.I13CubicBridge.i13K
#print axioms B699LowIndex.I13CubicBridge.i13K
#check @B699LowIndex.I13CubicBridge.cubic_start_large
#print axioms B699LowIndex.I13CubicBridge.cubic_start_large
#check @B699LowIndex.I13CubicBridge.i13_smallPrimeCount
#print axioms B699LowIndex.I13CubicBridge.i13_smallPrimeCount
#check @B699LowIndex.I13CubicBridge.i13_windowDegree
#print axioms B699LowIndex.I13CubicBridge.i13_windowDegree
#check @B699LowIndex.I13CubicBridge.i13_windowConstant
#print axioms B699LowIndex.I13CubicBridge.i13_windowConstant
#check @B699LowIndex.I13CubicBridge.i13_cubic_constant
#print axioms B699LowIndex.I13CubicBridge.i13_cubic_constant
#check @B699LowIndex.I13CubicBridge.actual_U_140_gt
#print axioms B699LowIndex.I13CubicBridge.actual_U_140_gt
#check @B699LowIndex.I13CubicBridge.actual_U_ten_gt
#print axioms B699LowIndex.I13CubicBridge.actual_U_ten_gt
#check @B699LowIndex.I13CubicBridge.two_actual_large_components
#print axioms B699LowIndex.I13CubicBridge.two_actual_large_components
#check @B699LowIndex.I13CubicBridge.cofactor_ten_le
#print axioms B699LowIndex.I13CubicBridge.cofactor_ten_le
#check @B699LowIndex.I13CubicBridge.cofactor_cube_le_n_sub_twelve
#print axioms B699LowIndex.I13CubicBridge.cofactor_cube_le_n_sub_twelve
#check @B699LowIndex.I13CubicBridge.cofactor_cube_le_both_windows
#print axioms B699LowIndex.I13CubicBridge.cofactor_cube_le_both_windows
#check @B699LowIndex.I13CubicBridge.window_distance_le_twelve
#print axioms B699LowIndex.I13CubicBridge.window_distance_le_twelve
#check @B699LowIndex.I13CubicBridge.exponent_pos_of_large_tenth
#print axioms B699LowIndex.I13CubicBridge.exponent_pos_of_large_tenth
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
