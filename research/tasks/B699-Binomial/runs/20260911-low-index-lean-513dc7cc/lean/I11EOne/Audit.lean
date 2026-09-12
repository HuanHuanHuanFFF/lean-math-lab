import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11EOne.Caps

#check @Math.B699.I11EOne.coefficient_0
#print axioms Math.B699.I11EOne.coefficient_0
#check @Math.B699.I11EOne.coefficientPolynomial_eval_eight
#print axioms Math.B699.I11EOne.coefficientPolynomial_eval_eight
#check @Math.B699.I11EOne.coefficientPolynomial_eval_eight_of_coeffs
#print axioms Math.B699.I11EOne.coefficientPolynomial_eval_eight_of_coeffs
#check @Math.B699.I11EOne.coefficient_1
#print axioms Math.B699.I11EOne.coefficient_1
#check @Math.B699.I11EOne.coefficient_2
#print axioms Math.B699.I11EOne.coefficient_2
#check @Math.B699.I11EOne.coefficient_3
#print axioms Math.B699.I11EOne.coefficient_3
#check @Math.B699.I11EOne.coefficient_4
#print axioms Math.B699.I11EOne.coefficient_4
#check @Math.B699.I11EOne.coefficient_5
#print axioms Math.B699.I11EOne.coefficient_5
#check @Math.B699.I11EOne.coefficient_6
#print axioms Math.B699.I11EOne.coefficient_6
#check @Math.B699.I11EOne.coefficient_7
#print axioms Math.B699.I11EOne.coefficient_7
#check @Math.B699.I11EOne.coefficient_8
#print axioms Math.B699.I11EOne.coefficient_8
#check @Math.B699.I11EOne.rationalDelta1Sum
#print axioms Math.B699.I11EOne.rationalDelta1Sum
#check @Math.B699.I11EOne.rational_delta1_sum_value
#print axioms Math.B699.I11EOne.rational_delta1_sum_value
#check @Math.B699.I11EOne.closed_e_delta1
#print axioms Math.B699.I11EOne.closed_e_delta1
#check @Math.B699.I11EOne.actual_e_delta1
#print axioms Math.B699.I11EOne.actual_e_delta1
#check @Math.B699.I11EOne.numeric_cap_delta0
#print axioms Math.B699.I11EOne.numeric_cap_delta0
#check @Math.B699.I11EOne.numeric_cap_delta1
#print axioms Math.B699.I11EOne.numeric_cap_delta1
#check @Math.B699.I11EOne.actual_e_delta0
#print axioms Math.B699.I11EOne.actual_e_delta0
#check @Math.B699.I11EOne.e_cap_delta0
#print axioms Math.B699.I11EOne.e_cap_delta0
#check @Math.B699.I11EOne.e_cap_delta1
#print axioms Math.B699.I11EOne.e_cap_delta1
#check @Math.B699.I11EOne.fixed_initial_e_cap
#print axioms Math.B699.I11EOne.fixed_initial_e_cap

open Math.B699.PadeGrowthNormalization
#check (Math.B699.I11EOne.actual_e_delta0 :
  actualE 23 15 0 1 (1 / 9) = (13515592997264 : ℚ) / 1594323)
#check (Math.B699.I11EOne.actual_e_delta1 :
  actualE 23 15 1 1 (1 / 9) = (117258057456010 : ℚ) / 4782969)
#check (Math.B699.I11EOne.e_cap_delta0 :
  2 * |actualE 23 15 0 1 (1 / 9)| ≤ Math.B699.I11ThreeTwoScaled.eBase)
#check (Math.B699.I11EOne.e_cap_delta1 :
  2 * |actualE 23 15 1 1 (1 / 9)| ≤ Math.B699.I11ThreeTwoScaled.eBase)
#check (Math.B699.I11EOne.fixed_initial_e_cap :
  ∀ row : Bool,
    2 * |actualE 23 15 (Math.B699.I11ThreeTwoScaled.rowDelta row) 1 (1 / 9)| ≤
      Math.B699.I11ThreeTwoScaled.eBase)
