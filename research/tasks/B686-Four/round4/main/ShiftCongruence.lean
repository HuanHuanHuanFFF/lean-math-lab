import Mathlib.Algebra.BigOperators.Associated
import Mathlib.Algebra.BigOperators.Ring.Nat
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.RingTheory.Coprime.Lemmas
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
Second-order displacement congruences for the original consecutive products.
All assertions in this module are necessary conditions, not the full B686 result.
The finite-product congruence proof follows the round-3 gap-divisibility module.
-/

namespace B686Round4Shift

def product (k : ℕ) (t : ℤ) : ℤ := ∏ i ∈ Finset.Icc 1 k, (t + i)

def natProduct (k t : ℕ) : ℕ := ∏ i ∈ Finset.Icc 1 k, (t + i)

theorem cast_product (k t : ℕ) : (natProduct k t : ℤ) = product k t := by
  simp only [natProduct, product, Nat.cast_prod, Nat.cast_add]

theorem dvd_prod_sub_prod {α : Type*} (s : Finset α) (q : ℤ) (f g : α → ℤ)
    (h : ∀ i ∈ s, q ∣ f i - g i) :
    q ∣ (∏ i ∈ s, f i) - ∏ i ∈ s, g i := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | @insert a s ha ih =>
    rw [Finset.prod_insert ha, Finset.prod_insert ha]
    have ha' := h a (Finset.mem_insert_self a s)
    have hs := ih (fun i hi => h i (Finset.mem_insert_of_mem hi))
    have hfirst : q ∣ (f a - g a) * ∏ i ∈ s, f i := dvd_mul_of_dvd_left ha' _
    have hsecond : q ∣ g a * ((∏ i ∈ s, f i) - ∏ i ∈ s, g i) :=
      dvd_mul_of_dvd_right hs _
    have hsum := dvd_add hfirst hsecond
    have hid : (f a - g a) * (∏ i ∈ s, f i) +
        g a * ((∏ i ∈ s, f i) - ∏ i ∈ s, g i) =
        f a * (∏ i ∈ s, f i) - g a * ∏ i ∈ s, g i := by ring
    rwa [hid] at hsum

theorem shift_divides (k : ℕ) (n d : ℤ)
    (heq : product k (n + d) = 4 * product k n) :
    d ∣ 3 * product k n := by
  have h : d ∣ product k (n + d) - product k n := by
    apply dvd_prod_sub_prod
    intro i hi
    have hid : (n + d + (i : ℤ)) - (n + i) = d := by ring
    rw [hid]
  rw [heq] at h
  have hid : 4 * product k n - product k n = 3 * product k n := by ring
  rwa [hid] at h

theorem slot_square (s : Finset ℕ) (n d q : ℤ) (i : ℕ) (hi : i ∈ s)
    (hqd : q ∣ d) (hqi : q ∣ n + i)
    (hcop : IsCoprime q (∏ j ∈ s.erase i, (n + j)))
    (heq : (∏ j ∈ s, (n + d + j)) = 4 * ∏ j ∈ s, (n + j)) :
    q ^ 2 ∣ 3 * (n + i) - d := by
  classical
  let r : ℤ := ∏ j ∈ s.erase i, (n + j)
  let r' : ℤ := ∏ j ∈ s.erase i, (n + d + j)
  have hr : q ∣ r' - r := by
    apply dvd_prod_sub_prod
    intro j hj
    have hid : (n + d + (j : ℤ)) - (n + j) = d := by ring
    rwa [hid]
  have hqplus : q ∣ n + d + i := by
    simpa only [add_assoc, add_comm, add_left_comm] using dvd_add hqi hqd
  have hmul : q ^ 2 ∣ (n + d + i) * (r' - r) := by
    simpa only [pow_two] using mul_dvd_mul hqplus hr
  have hsplit : (n + i) * r = ∏ j ∈ s, (n + j) :=
    Finset.mul_prod_erase s (fun j => n + j) hi
  have hsplit' : (n + d + i) * r' = ∏ j ∈ s, (n + d + j) :=
    Finset.mul_prod_erase s (fun j => n + d + j) hi
  have heq' : (n + d + i) * r' = 4 * ((n + i) * r) := by
    rw [hsplit, hsplit', heq]
  have hid : (n + d + i) * (r' - r) = (3 * (n + i) - d) * r := by
    calc
      _ = (n + d + i) * r' - (n + d + i) * r := by ring
      _ = 4 * ((n + i) * r) - (n + d + i) * r := by rw [heq']
      _ = _ := by ring
  rw [hid] at hmul
  exact (hcop.pow_left (m := 2)).dvd_of_dvd_mul_right hmul

theorem distinct_positions_not_dvd (k n p i j : ℕ) (hpk : k ≤ p)
    (hi : i ∈ Finset.Icc 1 k) (hj : j ∈ Finset.Icc 1 k)
    (hne : j ≠ i) (hip : p ∣ n + i) : ¬ p ∣ n + j := by
  intro hjp
  obtain ⟨hi1, hik⟩ := Finset.mem_Icc.mp hi
  obtain ⟨hj1, hjk⟩ := Finset.mem_Icc.mp hj
  rcases lt_or_gt_of_ne hne with hlt | hgt
  · have hd : p ∣ i - j := by
      simpa only [Nat.add_sub_add_left] using Nat.dvd_sub hip hjp
    have hb := Nat.le_of_dvd (by omega : 0 < i - j) hd
    omega
  · have hd : p ∣ j - i := by
      simpa only [Nat.add_sub_add_left] using Nat.dvd_sub hjp hip
    have hb := Nat.le_of_dvd (by omega : 0 < j - i) hd
    omega

theorem nat_shift_equation (k n d : ℕ)
    (heq : natProduct k (n + d) = 4 * natProduct k n) :
    product k ((n : ℤ) + d) = 4 * product k n := by
  have h : (natProduct k (n + d) : ℤ) = 4 * (natProduct k n : ℤ) := by
    exact_mod_cast heq
  simpa only [cast_product, Nat.cast_add] using h

theorem prime_power_position (k n d p a : ℕ) (hp : p.Prime)
    (hpk : k ≤ p) (hp3 : p ≠ 3) (ha : 0 < a) (hpd : p ^ a ∣ d)
    (heq : natProduct k (n + d) = 4 * natProduct k n) :
    ∃ i ∈ Finset.Icc 1 k,
      (p : ℤ) ^ a ∣ (n : ℤ) + i ∧
      IsCoprime ((p : ℤ) ^ a)
        (∏ j ∈ (Finset.Icc 1 k).erase i, ((n : ℤ) + j)) := by
  have hn3 : ¬ p ∣ 3 := by
    intro h
    rcases (Nat.dvd_prime (by decide : Nat.Prime 3)).mp h with h1 | h3
    · exact hp.ne_one h1
    · exact hp3 h3
  have hc3 : IsCoprime ((p : ℤ) ^ a) (3 : ℤ) := by
    exact ((hp.coprime_iff_not_dvd.mpr hn3).isCoprime).pow_left
  have hd : (p : ℤ) ^ a ∣ (d : ℤ) := by exact_mod_cast hpd
  have hthree := dvd_trans hd (shift_divides k n d (nat_shift_equation k n d heq))
  have hprod : (p : ℤ) ^ a ∣ product k n := hc3.dvd_of_dvd_mul_left hthree
  have hprodN : p ^ a ∣ natProduct k n := by
    rw [← cast_product] at hprod
    exact_mod_cast hprod
  have hpP : p ∣ natProduct k n :=
    dvd_trans (dvd_pow_self p (by omega : a ≠ 0)) hprodN
  obtain ⟨i, hi, hip⟩ := hp.prime.exists_mem_finset_dvd hpP
  have hc : IsCoprime ((p : ℤ) ^ a)
      (∏ j ∈ (Finset.Icc 1 k).erase i, ((n : ℤ) + j)) := by
    apply IsCoprime.prod_right
    intro j hj
    obtain ⟨hne, hj'⟩ := Finset.mem_erase.mp hj
    have hnp := distinct_positions_not_dvd k n p i j hpk hi hj' hne hip
    have hcp := (hp.coprime_iff_not_dvd.mpr hnp).isCoprime
    simpa only [Nat.cast_add] using hcp.pow_left (m := a)
  have hsplit : ((n : ℤ) + i) *
      (∏ j ∈ (Finset.Icc 1 k).erase i, ((n : ℤ) + j)) = product k n :=
    Finset.mul_prod_erase (Finset.Icc 1 k) (fun j => (n : ℤ) + j) hi
  rw [← hsplit] at hprod
  exact ⟨i, hi, hc.dvd_of_dvd_mul_right hprod, hc⟩

theorem large_prime_power_square (k n d p a : ℕ) (hp : p.Prime)
    (hpk : k ≤ p) (hp3 : p ≠ 3) (ha : 0 < a) (hpd : p ^ a ∣ d)
    (heq : natProduct k (n + d) = 4 * natProduct k n) :
    ∃ i ∈ Finset.Icc 1 k,
      (p : ℤ) ^ (2 * a) ∣ 3 * ((n : ℤ) + i) - d := by
  obtain ⟨i, hi, hqi, hc⟩ := prime_power_position k n d p a hp hpk hp3 ha hpd heq
  have hd : (p : ℤ) ^ a ∣ (d : ℤ) := by exact_mod_cast hpd
  have hs := slot_square (Finset.Icc 1 k) n d ((p : ℤ) ^ a) i hi hd hqi hc
    (nat_shift_equation k n d heq)
  refine ⟨i, hi, ?_⟩
  simpa only [← pow_mul, Nat.mul_comm a 2] using hs

theorem two_prime_power_positions (k n d p q a b : ℕ)
    (hp : p.Prime) (hq : q.Prime) (hpq : p ≠ q)
    (hpk : k ≤ p) (hqk : k ≤ q) (hp3 : p ≠ 3) (hq3 : q ≠ 3)
    (ha : 0 < a) (hb : 0 < b) (hd : d = p ^ a * q ^ b)
    (heq : natProduct k (n + d) = 4 * natProduct k n) :
    ∃ i ∈ Finset.Icc 1 k, ∃ j ∈ Finset.Icc 1 k,
      (d : ℤ) ^ 2 ∣ (3 * ((n : ℤ) + i) - d) * (3 * ((n : ℤ) + j) - d) := by
  have hpd : p ^ a ∣ d := by rw [hd]; exact dvd_mul_right _ _
  have hqd : q ^ b ∣ d := by rw [hd]; exact dvd_mul_left _ _
  obtain ⟨i, hi, hpi⟩ := large_prime_power_square k n d p a hp hpk hp3 ha hpd heq
  obtain ⟨j, hj, hqj⟩ := large_prime_power_square k n d q b hq hqk hq3 hb hqd heq
  have hc : IsCoprime ((p : ℤ) ^ (2 * a)) ((q : ℤ) ^ (2 * b)) :=
    ((Nat.coprime_primes hp hq).mpr hpq).isCoprime.pow
  have hmul := hc.mul_dvd (dvd_mul_of_dvd_left hpi (3 * ((n : ℤ) + j) - d))
    (dvd_mul_of_dvd_right hqj (3 * ((n : ℤ) + i) - d))
  refine ⟨i, hi, j, hj, ?_⟩
  have hid : (d : ℤ) ^ 2 = (p : ℤ) ^ (2 * a) * (q : ℤ) ^ (2 * b) := by
    rw [hd, Nat.cast_mul, Nat.cast_pow, Nat.cast_pow, mul_pow, ← pow_mul, ← pow_mul]
    simp only [Nat.mul_comm a 2, Nat.mul_comm b 2]
  rw [hid]
  exact hmul

/-- info: 'B686Round4Shift.shift_divides' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms shift_divides
/-- info: 'B686Round4Shift.slot_square' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms slot_square
/-- info: 'B686Round4Shift.prime_power_position' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms prime_power_position
/-- info: 'B686Round4Shift.large_prime_power_square' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms large_prime_power_square
/-- info: 'B686Round4Shift.two_prime_power_positions' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms two_prime_power_positions

end B686Round4Shift
