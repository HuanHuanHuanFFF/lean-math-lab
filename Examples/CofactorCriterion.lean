import Math.B699.CofactorCriterion

namespace B699

/-- A concrete use with a whole legal range of second indices, checked without
assuming the original conjecture. The two prime factors come from86 and85. -/
example (j : ℕ) (hij : 8 < j) (hj : j ≤ 43) :
    ∃ r : ℕ, r.Prime ∧ 8 ≤ r ∧ r ∣ (Nat.choose 86 8).gcd (Nat.choose 86 j) := by
  exact common_large_prime_of_coprime_cofactors 86 8 j 0 1 43 17 1 1 2 5
    hij (by simpa using hj) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) (by decide)
end B699
