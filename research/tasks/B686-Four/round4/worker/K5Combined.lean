import research.tasks.«B686-Four».round4.worker.K5TwoPosition
import research.tasks.«B686-Four».round4.worker.K5Finite

/-!
All displacements for the k=5 two-position square-divisibility obstruction.
The finite certificate and tail are both kernel-checked. The main module
supplies the arithmetic bridge that forces this premise for displacement
classes. This module states both the shift form and the original n,m form.
-/

namespace B686Round4K5

theorem not_four_of_two_position (n d i j : ℕ) (hd : 5 ≤ d)
    (hi : 1 ≤ i) (hi' : i ≤ 5) (hj : 1 ≤ j) (hj' : j ≤ 5)
    (hdiv : (d : ℤ) ^ 2 ∣ error n d i * error n d j) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  by_cases hlarge : 600 ≤ d
  · exact not_four_tail_product n d i j hlarge hi hi' hj hj' hdiv
  · exact B686Round4K5Finite.not_four_small_displacement n d hd (by omega)

theorem not_four_of_two_position_original (n m i j : ℕ) (hm : n + 5 ≤ m)
    (hi : 1 ≤ i) (hi' : i ≤ 5) (hj : 1 ≤ j) (hj' : j ≤ 5)
    (hdiv : ((m - n : ℕ) : ℤ) ^ 2 ∣
      error n (m - n : ℕ) i * error n (m - n : ℕ) j) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (m + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  have heq : n + (m - n) = m := by omega
  simpa only [heq] using not_four_of_two_position n (m - n) i j
    (by omega) hi hi' hj hj' hdiv

/-- info: 'B686Round4K5.not_four_of_two_position' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_of_two_position
/-- info: 'B686Round4K5.not_four_of_two_position_original' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_of_two_position_original

end B686Round4K5
