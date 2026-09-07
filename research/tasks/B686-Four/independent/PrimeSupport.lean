import Mathlib.Algebra.BigOperators.Associated
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic.NormNum

/-!
A necessary condition for any B686 Four solution, for arbitrary k.
This formalizes the prime-support observation in coordinator.md; it is not
a contradiction and gives no upper bound on k, n, or m.
-/

namespace B686PrimeSupport

def product (k t : ℕ) : ℕ := ∏ i ∈ Finset.Icc 1 k, (t + i)

theorem shared_prime_bound (k n m p : ℕ) (hm : n + k ≤ m)
    (hp : p.Prime) (hnp : p ∣ product k n) (hmp : p ∣ product k m) :
    p ≤ m - n + k - 1 := by
  obtain ⟨i, hi, hpi⟩ := hp.prime.exists_mem_finset_dvd hmp
  obtain ⟨j, hj, hpj⟩ := hp.prime.exists_mem_finset_dvd hnp
  obtain ⟨hi1, hik⟩ := Finset.mem_Icc.mp hi
  obtain ⟨hj1, hjk⟩ := Finset.mem_Icc.mp hj
  have hd : p ∣ (m + i) - (n + j) := Nat.dvd_sub hpi hpj
  have hpos : 0 < (m + i) - (n + j) := by omega
  have hle := Nat.le_of_dvd hpos hd
  omega

theorem solution_prime_bound (k n m p : ℕ) (hk : 2 ≤ k) (hm : n + k ≤ m)
    (h : product k m = 4 * product k n) (hp : p.Prime)
    (hdiv : p ∣ product k n ∨ p ∣ product k m) :
    p ≤ m - n + k - 1 := by
  have bound_two : 2 ≤ m - n + k - 1 := by omega
  by_cases htwo : p = 2
  · omega
  have hn4 : ¬ p ∣ 4 := by
    intro hd
    have hd2 : p ∣ 2 := hp.dvd_of_dvd_pow (show p ∣ 2 ^ 2 by norm_num; exact hd)
    have hp2 := Nat.le_of_dvd (by decide : 0 < 2) hd2
    have hpmin := hp.two_le
    omega
  have both : p ∣ product k n ∧ p ∣ product k m := by
    rcases hdiv with hn | hm'
    · exact ⟨hn, h ▸ dvd_mul_of_dvd_right hn 4⟩
    · have hm4 : p ∣ 4 * product k n := h ▸ hm'
      exact ⟨(hp.dvd_mul.mp hm4).resolve_left hn4, hm'⟩
  exact shared_prime_bound k n m p hm hp both.1 both.2

/-- info: 'B686PrimeSupport.shared_prime_bound' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms shared_prime_bound
/-- info: 'B686PrimeSupport.solution_prime_bound' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms solution_prime_bound

end B686PrimeSupport
