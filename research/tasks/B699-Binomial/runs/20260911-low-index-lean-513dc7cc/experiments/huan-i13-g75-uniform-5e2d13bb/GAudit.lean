import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i13-g75-uniform-5e2d13bb».Geometric

#check @Math.B699.I13G75Uniform.rho
#print axioms Math.B699.I13G75Uniform.rho
#check @Math.B699.I13G75Uniform.geometricRate
#print axioms Math.B699.I13G75Uniform.geometricRate
#check @Math.B699.I13G75Uniform.geometricConstant
#print axioms Math.B699.I13G75Uniform.geometricConstant
#check @Math.B699.I13G75Uniform.rho_pos
#print axioms Math.B699.I13G75Uniform.rho_pos
#check @Math.B699.I13G75Uniform.rho_le_one
#print axioms Math.B699.I13G75Uniform.rho_le_one
#check @Math.B699.I13G75Uniform.geometric_constant_pos
#print axioms Math.B699.I13G75Uniform.geometric_constant_pos
#check @Math.B699.I13G75Uniform.geometric_rate_pos
#print axioms Math.B699.I13G75Uniform.geometric_rate_pos
#check @Math.B699.I13G75Uniform.finite_geometric_sum_le
#print axioms Math.B699.I13G75Uniform.finite_geometric_sum_le
#check @Math.B699.I13G75Uniform.mul_rho_power_le
#print axioms Math.B699.I13G75Uniform.mul_rho_power_le
#check @Math.B699.I13G75Uniform.rho_power_div_le
#print axioms Math.B699.I13G75Uniform.rho_power_div_le
#check @Math.B699.I13G75Uniform.divisor_zero_geometric
#print axioms Math.B699.I13G75Uniform.divisor_zero_geometric
#check @Math.B699.I13G75Uniform.divisor_one_geometric
#print axioms Math.B699.I13G75Uniform.divisor_one_geometric
#check @Math.B699.I13G75Uniform.q_content_zero_geometric
#print axioms Math.B699.I13G75Uniform.q_content_zero_geometric
#check @Math.B699.I13G75Uniform.q_content_one_geometric
#print axioms Math.B699.I13G75Uniform.q_content_one_geometric

#check (Math.B699.I13G75Uniform.q_content_one_geometric :
  ∀ m : ℕ, 1 ≤ m →
    Math.B699.I13G75Uniform.geometricConstant *
      Math.B699.I13G75Uniform.geometricRate ^ m ≤
        (Math.B699.PadeConstruction.qContent (5 * m - 1) (2 * m) (5 * m - 1) : ℚ))
