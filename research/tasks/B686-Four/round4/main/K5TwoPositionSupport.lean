import research.tasks.«B686-Four».round4.main.UniversalSquare
import research.tasks.«B686-Four».round4.worker.K5Combined

/-! Exclude arbitrary many displacement primes concentrated in two positions. -/
namespace B686Round4Support
open B686Round4Shift B686Round4Universal

theorem coprime_congruent_right (q a b : ℤ) (hc : IsCoprime q a) (h : q ∣ b - a) :
    IsCoprime q b := by
  obtain ⟨u, v, huv⟩ := hc
  obtain ⟨t, ht⟩ := h
  refine ⟨u - v * t, v, ?_⟩
  calc
    _ = u * q + v * a + v * (b - a - q * t) := by ring
    _ = 1 := by rw [huv, ht]; ring

theorem coprime_errors (s : Finset ℕ) (n d : ℤ)
    (hc : IsCoprime d (3 * ∏ i ∈ s, (n + i))) :
    IsCoprime d (∏ i ∈ s, (3 * (n + i) - d)) := by
  have hc3 : IsCoprime d (3 : ℤ) :=
    hc.of_isCoprime_of_dvd_right (dvd_mul_right _ _)
  have hcr : IsCoprime d (∏ i ∈ s, (n + i)) :=
    hc.of_isCoprime_of_dvd_right (dvd_mul_left _ _)
  apply IsCoprime.prod_right
  intro i hi
  have hci : IsCoprime d (n + i) :=
    hcr.of_isCoprime_of_dvd_right (Finset.dvd_prod_of_mem (fun i : ℕ => n + i) hi)
  apply coprime_congruent_right d (3 * (n + i)) (3 * (n + i) - d) (hc3.mul_right hci)
  have hid : (3 * (n + i) - d) - 3 * (n + i) = -d := by ring
  rw [hid]
  exact dvd_neg.mpr (dvd_refl d)

theorem two_position_square (n d : ℤ) (i j : ℕ)
    (hi : i ∈ Finset.Icc 1 5) (hj : j ∈ Finset.Icc 1 5) (hne : j ≠ i)
    (hc : IsCoprime d (3 * ∏ r ∈ ((Finset.Icc 1 5).erase i).erase j, (n + r)))
    (heq : product 5 (n + d) = 4 * product 5 n) :
    d ^ 2 ∣ (3 * (n + i) - d) * (3 * (n + j) - d) := by
  let e := fun r : ℕ => 3 * (n + r) - d
  let s := (Finset.Icc 1 5).erase i
  have hj' : j ∈ s := Finset.mem_erase.mpr ⟨hne, hj⟩
  have h1 : e i * (∏ r ∈ s, e r) = errors 5 n d :=
    Finset.mul_prod_erase (Finset.Icc 1 5) e hi
  have h2 : e j * (∏ r ∈ s.erase j, e r) = ∏ r ∈ s, e r :=
    Finset.mul_prod_erase s e hj'
  have hs := universal_square 5 (by decide) n d heq
  rw [← h1, ← h2, ← mul_assoc] at hs
  have hcop : IsCoprime d (∏ r ∈ s.erase j, e r) := coprime_errors _ n d hc
  exact (hcop.pow_left (m := 2)).dvd_of_dvd_mul_right hs

theorem not_four_two_position_support_shift (n d i j : ℕ) (hd : 5 ≤ d)
    (hi : i ∈ Finset.Icc 1 5) (hj : j ∈ Finset.Icc 1 5) (hne : j ≠ i)
    (hc : IsCoprime (d : ℤ)
      (3 * ∏ r ∈ ((Finset.Icc 1 5).erase i).erase j, ((n : ℤ) + r))) :
    natProduct 5 (n + d) ≠ 4 * natProduct 5 n := by
  intro heq
  have hs := two_position_square n d i j hi hj hne hc (nat_shift_equation 5 n d heq)
  obtain ⟨hi1, hi5⟩ := Finset.mem_Icc.mp hi
  obtain ⟨hj1, hj5⟩ := Finset.mem_Icc.mp hj
  exact B686Round4K5.not_four_of_two_position n d i j hd hi1 hi5 hj1 hj5 hs heq

theorem not_four_two_position_support (n m i j : ℕ) (hm : n + 5 ≤ m)
    (hi : i ∈ Finset.Icc 1 5) (hj : j ∈ Finset.Icc 1 5) (hne : j ≠ i)
    (hc : IsCoprime ((m - n : ℕ) : ℤ)
      (3 * ∏ r ∈ ((Finset.Icc 1 5).erase i).erase j, ((n : ℤ) + r))) :
    natProduct 5 m ≠ 4 * natProduct 5 n := by
  have hadd : n + (m - n) = m := by omega
  simpa only [hadd] using not_four_two_position_support_shift n (m - n) i j
    (by omega) hi hj hne hc

/-- info: 'B686Round4Support.two_position_square' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms two_position_square
/-- info: 'B686Round4Support.not_four_two_position_support' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_two_position_support

end B686Round4Support
