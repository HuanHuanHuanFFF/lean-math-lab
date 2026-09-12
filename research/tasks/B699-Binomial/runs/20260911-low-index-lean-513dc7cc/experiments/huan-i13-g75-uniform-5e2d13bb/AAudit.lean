import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i13-g75-uniform-5e2d13bb».Actual

#check @Math.B699.I13G75Uniform.divisorZero
#print axioms Math.B699.I13G75Uniform.divisorZero
#check @Math.B699.I13G75Uniform.divisorOne
#print axioms Math.B699.I13G75Uniform.divisorOne
#check @Math.B699.I13G75Uniform.infiniteRate
#print axioms Math.B699.I13G75Uniform.infiniteRate
#check @Math.B699.I13G75Uniform.numeratorZero
#print axioms Math.B699.I13G75Uniform.numeratorZero
#check @Math.B699.I13G75Uniform.denominator
#print axioms Math.B699.I13G75Uniform.denominator
#check @Math.B699.I13G75Uniform.ratioZero
#print axioms Math.B699.I13G75Uniform.ratioZero
#check @Math.B699.I13G75Uniform.infinite_rate_pos
#print axioms Math.B699.I13G75Uniform.infinite_rate_pos
#check @Math.B699.I13G75Uniform.divisor_zero_pos
#print axioms Math.B699.I13G75Uniform.divisor_zero_pos
#check @Math.B699.I13G75Uniform.divisor_one_pos
#print axioms Math.B699.I13G75Uniform.divisor_one_pos
#check @Math.B699.I13G75Uniform.denominator_pos
#print axioms Math.B699.I13G75Uniform.denominator_pos
#check @Math.B699.I13G75Uniform.divisor_zero_formula
#print axioms Math.B699.I13G75Uniform.divisor_zero_formula
#check @Math.B699.I13G75Uniform.divisor_one_formula
#print axioms Math.B699.I13G75Uniform.divisor_one_formula
#check @Math.B699.I13G75Uniform.divisor_zero_one
#print axioms Math.B699.I13G75Uniform.divisor_zero_one
#check @Math.B699.I13G75Uniform.divisor_one_eq
#print axioms Math.B699.I13G75Uniform.divisor_one_eq
#check @Math.B699.I13G75Uniform.divisor_zero_le_one
#print axioms Math.B699.I13G75Uniform.divisor_zero_le_one
#check @Math.B699.I13G75Uniform.divisor_zero_step_succ
#print axioms Math.B699.I13G75Uniform.divisor_zero_step_succ
#check @Math.B699.I13G75Uniform.divisor_zero_step
#print axioms Math.B699.I13G75Uniform.divisor_zero_step

#check (Math.B699.I13G75Uniform.divisor_one_eq :
  ∀ m : ℕ, 1 ≤ m →
    Math.B699.I13G75Uniform.divisorOne m =
      ((5 : ℚ) * (m : ℚ) / 2) * Math.B699.I13G75Uniform.divisorZero m)
