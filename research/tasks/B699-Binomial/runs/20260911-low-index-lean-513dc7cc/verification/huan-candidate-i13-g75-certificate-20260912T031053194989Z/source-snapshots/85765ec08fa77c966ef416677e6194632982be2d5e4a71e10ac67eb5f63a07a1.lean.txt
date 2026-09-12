import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13G75.Certificate

#check @Math.B699.I13G75Uniform.certificatePolynomial
#print axioms Math.B699.I13G75Uniform.certificatePolynomial
#check @Math.B699.I13G75Uniform.certificate_identity
#print axioms Math.B699.I13G75Uniform.certificate_identity
#check @Math.B699.I13G75Uniform.certificate_nonneg
#print axioms Math.B699.I13G75Uniform.certificate_nonneg
#check @Math.B699.I13G75Uniform.linear_denominator_pos
#print axioms Math.B699.I13G75Uniform.linear_denominator_pos
#check @Math.B699.I13G75Uniform.ratio_zero_lower
#print axioms Math.B699.I13G75Uniform.ratio_zero_lower
#check @Math.B699.I13G75Uniform.divisor_zero_step_lower
#print axioms Math.B699.I13G75Uniform.divisor_zero_step_lower

#check (Math.B699.I13G75Uniform.ratio_zero_lower :
  ∀ x : ℚ, 1 ≤ x →
    Math.B699.I13G75Uniform.infiniteRate * (24 * x - 1) / (24 * x + 23) ≤
      Math.B699.I13G75Uniform.ratioZero x)
