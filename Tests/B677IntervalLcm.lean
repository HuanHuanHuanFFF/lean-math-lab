import Math.B677.IntervalLcm

namespace B677

-- These overlapping examples detect an accidental stronger injectivity claim.
example : intervalLcm 13 6 = 1627920 := by decide
example : intervalLcm 15 6 = 1627920 := by decide
example : intervalLcm 14 6 = 232560 := by decide
example : intervalLcm 0 1 = 1 := by decide

/-- info: 'B677.equal_interval_lcm_dvd_gap' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms equal_interval_lcm_dvd_gap
/-- info: 'B677.equal_interval_lcm_dvd_prefix' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms equal_interval_lcm_dvd_prefix
/-- info: 'B677.interval_lcm_ne_of_later_prime' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms interval_lcm_ne_of_later_prime

/-- info: 'B677.interval_lcm_eq_range' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms interval_lcm_eq_range

end B677





