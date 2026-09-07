import research.tasks.«B686-Four».round6.main.HighContact1235
import research.tasks.«B686-Four».round6.main.HighContact1345
import research.tasks.«B686-Four».round6.main.HighContact1234
import research.tasks.«B686-Four».round6.main.HighContact2345
import research.tasks.«B686-Four».round6.a.FourHeight

namespace B686Round6A
open B686Round6High

theorem auxiliary1235_eq_height (z d : ℤ) :
    auxiliary1235 z d = B686Round6AHeight.auxiliary1235 z d := by
  unfold auxiliary1235 B686Round6AHeight.auxiliary1235
  ring

theorem auxiliary1235_bounds (z d : ℤ) (hd : 50000 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -50000 * d ^ 15 < auxiliary1235 z d ∧ auxiliary1235 z d < 0 := by
  rw [auxiliary1235_eq_height]
  exact B686Round6AHeight.auxiliary1235_bounds z d hd hl hu

/-- info: 'B686Round6A.auxiliary1235_eq_height' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms auxiliary1235_eq_height
/-- info: 'B686Round6A.auxiliary1235_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms auxiliary1235_bounds

theorem auxiliary1345_eq_height (z d : ℤ) :
    auxiliary1345 z d = B686Round6AHeight.auxiliary1345 z d := by
  unfold auxiliary1345 B686Round6AHeight.auxiliary1345
  ring

theorem auxiliary1345_bounds (z d : ℤ) (hd : 50000 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -50000 * d ^ 15 < auxiliary1345 z d ∧ auxiliary1345 z d < 0 := by
  rw [auxiliary1345_eq_height]
  exact B686Round6AHeight.auxiliary1345_bounds z d hd hl hu

/-- info: 'B686Round6A.auxiliary1345_eq_height' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms auxiliary1345_eq_height
/-- info: 'B686Round6A.auxiliary1345_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms auxiliary1345_bounds

theorem auxiliary1234_eq_height (z d : ℤ) :
    auxiliary1234 z d = B686Round6AHeight.auxiliary1234 z d := by
  unfold auxiliary1234 B686Round6AHeight.auxiliary1234
  ring

theorem auxiliary1234_bounds (z d : ℤ) (hd : 50000 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -50000 * d ^ 17 < auxiliary1234 z d ∧ auxiliary1234 z d < 0 := by
  rw [auxiliary1234_eq_height]
  exact B686Round6AHeight.auxiliary1234_bounds z d hd hl hu

/-- info: 'B686Round6A.auxiliary1234_eq_height' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms auxiliary1234_eq_height
/-- info: 'B686Round6A.auxiliary1234_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms auxiliary1234_bounds

theorem auxiliary2345_eq_height (z d : ℤ) :
    auxiliary2345 z d = B686Round6AHeight.auxiliary2345 z d := by
  unfold auxiliary2345 B686Round6AHeight.auxiliary2345
  ring

theorem auxiliary2345_bounds (z d : ℤ) (hd : 50000 ≤ d)
    (hl : 83894387 * d ≤ 10000000 * z)
    (hu : 10000000 * z ≤ 83894390 * d) :
    -50000 * d ^ 17 < auxiliary2345 z d ∧ auxiliary2345 z d < 0 := by
  rw [auxiliary2345_eq_height]
  exact B686Round6AHeight.auxiliary2345_bounds z d hd hl hu

/-- info: 'B686Round6A.auxiliary2345_eq_height' depends on axioms: [propext, Quot.sound] -/
#guard_msgs in
#print axioms auxiliary2345_eq_height
/-- info: 'B686Round6A.auxiliary2345_bounds' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms auxiliary2345_bounds
end B686Round6A
