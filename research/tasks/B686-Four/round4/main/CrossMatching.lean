import research.tasks.«B686-Four».round4.main.ShiftCongruence
import Mathlib.Data.Int.GCD

/-! A second-order necessary condition for every cross-block common divisor. -/
namespace B686Round4Cross
open B686Round4Shift

def rootCoefficient (k i : ℕ) : ℤ :=
  ∏ r ∈ (Finset.Icc 1 k).erase i, ((r : ℤ) - i)

theorem product_linearization (k i : ℕ) (n q : ℤ) (hi : i ∈ Finset.Icc 1 k)
    (hq : q ∣ n + i) :
    q ^ 2 ∣ product k n - rootCoefficient k i * (n + i) := by
  let r : ℤ := ∏ j ∈ (Finset.Icc 1 k).erase i, (n + j)
  have hc : q ∣ r - rootCoefficient k i := by
    apply dvd_prod_sub_prod
    intro j hj
    have hid : n + (j : ℤ) - ((j : ℤ) - i) = n + i := by ring
    rwa [hid]
  have hm : q ^ 2 ∣ (n + i) * (r - rootCoefficient k i) := by
    simpa only [pow_two] using mul_dvd_mul hq hc
  have hs : (n + i) * r = product k n :=
    Finset.mul_prod_erase (Finset.Icc 1 k) (fun j => n + j) hi
  have hid : (n + i) * (r - rootCoefficient k i) =
      product k n - rootCoefficient k i * (n + i) := by
    calc
      _ = (n + i) * r - rootCoefficient k i * (n + i) := by ring
      _ = _ := by rw [hs]
  rwa [hid] at hm

theorem cross_square (k i j : ℕ) (n m q : ℤ)
    (hi : i ∈ Finset.Icc 1 k) (hj : j ∈ Finset.Icc 1 k)
    (hqn : q ∣ n + i) (hqm : q ∣ m + j)
    (heq : product k m = 4 * product k n) :
    q ^ 2 ∣ 4 * rootCoefficient k i * (n + i) - rootCoefficient k j * (m + j) := by
  have hn := product_linearization k i n q hi hqn
  have hm := product_linearization k j m q hj hqm
  have h := dvd_sub hm (dvd_mul_of_dvd_right hn 4)
  have hid : (product k m - rootCoefficient k j * (m + j)) -
      4 * (product k n - rootCoefficient k i * (n + i)) =
      4 * rootCoefficient k i * (n + i) - rootCoefficient k j * (m + j) := by
    rw [heq]
    ring
  rwa [hid] at h

theorem cross_gcd_square_original (k n m i j : ℕ)
    (hi : i ∈ Finset.Icc 1 k) (hj : j ∈ Finset.Icc 1 k)
    (heq : natProduct k m = 4 * natProduct k n) :
    (Nat.gcd (n + i) (m + j) : ℤ) ^ 2 ∣
      4 * rootCoefficient k i * ((n : ℤ) + i) -
      rootCoefficient k j * ((m : ℤ) + j) := by
  have heq' : product k m = 4 * product k n := by
    have h : (natProduct k m : ℤ) = 4 * (natProduct k n : ℤ) := by exact_mod_cast heq
    simpa only [cast_product] using h
  apply cross_square k i j n m (Nat.gcd (n + i) (m + j)) hi hj
  · exact_mod_cast Nat.gcd_dvd_left (n + i) (m + j)
  · exact_mod_cast Nat.gcd_dvd_right (n + i) (m + j)
  · exact heq'

/-- info: 'B686Round4Cross.product_linearization' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms product_linearization
/-- info: 'B686Round4Cross.cross_gcd_square_original' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms cross_gcd_square_original

end B686Round4Cross
