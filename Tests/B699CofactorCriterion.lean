import Math.B699.CofactorCriterion

namespace B699

/-- info: 'B699.cofactor_core' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms cofactor_core

/-- info: 'B699.cofactor_remainder_obstruction' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms cofactor_remainder_obstruction

/-- info: 'B699.prime_dvd_choose_of_mod_lt' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms prime_dvd_choose_of_mod_lt

/-- info: 'B699.cofactor_prime_pair' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms cofactor_prime_pair

/-- info: 'B699.common_large_prime_of_coprime_cofactors' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms common_large_prime_of_coprime_cofactors

-- The strict p>i boundary cannot be relaxed using the same argument.
example : ¬ 3 ∣ Nat.choose 39 3 := by decide

end B699
