import LinearPrimeCounting

example (N : ℕ) : 77 * Nat.primeCounting N ≤ 16 * N + 616 :=
  B686PrimeCounting.prime_counting_linear N

/-- info: 'B686PrimeCounting.prime_counting_linear' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms B686PrimeCounting.prime_counting_linear
