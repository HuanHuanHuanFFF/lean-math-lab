import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13G75.Uniform

#check @Math.B699.I13G75Uniform.scaledZero
#print axioms Math.B699.I13G75Uniform.scaledZero
#check @Math.B699.I13G75Uniform.scaled_zero_one
#print axioms Math.B699.I13G75Uniform.scaled_zero_one
#check @Math.B699.I13G75Uniform.scaled_zero_step
#print axioms Math.B699.I13G75Uniform.scaled_zero_step
#check @Math.B699.I13G75Uniform.scaled_zero_lower
#print axioms Math.B699.I13G75Uniform.scaled_zero_lower
#check @Math.B699.I13G75Uniform.divisor_zero_lower
#print axioms Math.B699.I13G75Uniform.divisor_zero_lower
#check @Math.B699.I13G75Uniform.divisor_one_lower
#print axioms Math.B699.I13G75Uniform.divisor_one_lower
#check @Math.B699.I13G75Uniform.rational_divisor_zero_lower
#print axioms Math.B699.I13G75Uniform.rational_divisor_zero_lower
#check @Math.B699.I13G75Uniform.rational_divisor_one_eq
#print axioms Math.B699.I13G75Uniform.rational_divisor_one_eq
#check @Math.B699.I13G75Uniform.q_content_zero_lower
#print axioms Math.B699.I13G75Uniform.q_content_zero_lower
#check @Math.B699.I13G75Uniform.q_content_one_lower
#print axioms Math.B699.I13G75Uniform.q_content_one_lower

#check (Math.B699.I13G75Uniform.rational_divisor_zero_lower :
  ∀ m : ℕ, 1 ≤ m →
    (23 : ℚ) * ((11664 : ℚ) / 3125) ^ (m - 1) / (24 * (m : ℚ) - 1) ≤
      Math.B699.RationalFactorialDivisor.rationalDivisor (5 * m) (2 * m - 1))
