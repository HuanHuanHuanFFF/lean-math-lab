import research.tasks.«B686-Four».round4.worker.K5CubicClasses

/-!
Original k=5 position classes with no bound on the number of prime factors.
Bezout identities connect divisibility by the selected triple to the
coprimality conditions of K5CubicClasses, avoiding prime-power grouping.
-/

namespace B686Round4K5

theorem coprime_outer_complement (n d : ℤ) (hc : IsCoprime d 3)
    (hs : d ∣ (n + 1) * (n + 3) * (n + 5)) :
    IsCoprime d (3 * ((n + 2) * (n + 4))) := by
  obtain ⟨t, ht⟩ := hs
  have hid : (n + 3) * ((n + 1) * (n + 3) * (n + 5)) -
      ((n + 3) ^ 2 - 3) * ((n + 2) * (n + 4)) = -3 := by ring
  rw [ht] at hid
  have hc' : IsCoprime d
      (((n + 3) ^ 2 - 3) * ((n + 2) * (n + 4)) + (-(n + 3) * t) * d) := by
    convert hc using 1
    nlinarith only [hid]
  have hR : IsCoprime d ((n + 2) * (n + 4)) :=
    hc'.of_add_mul_right_right.of_mul_right_right
  exact hc.mul_right hR

theorem coprime_inner_complement (n d : ℤ) (hc : IsCoprime d 6)
    (hs : d ∣ (n + 2) * (n + 3) * (n + 4)) :
    IsCoprime d (3 * ((n + 1) * (n + 5))) := by
  obtain ⟨t, ht⟩ := hs
  have hc2 : IsCoprime d 2 := hc.of_isCoprime_of_dvd_right (by norm_num)
  have hc3 : IsCoprime d 3 := hc.of_isCoprime_of_dvd_right (by norm_num)
  have hc12 : IsCoprime d 12 := by
    simpa using (hc2.pow_right (n := 2)).mul_right hc3
  have hid : (n + 3) * ((n + 2) * (n + 3) * (n + 4)) -
      ((n + 3) ^ 2 + 3) * ((n + 1) * (n + 5)) = 12 := by ring
  rw [ht] at hid
  have hc' : IsCoprime d
      (-((n + 3) ^ 2 + 3) * ((n + 1) * (n + 5)) + ((n + 3) * t) * d) := by
    convert hc12 using 1
    nlinarith only [hid]
  have hR : IsCoprime d ((n + 1) * (n + 5)) :=
    hc'.of_add_mul_right_right.of_mul_right_right
  exact hc3.mul_right hR

theorem not_four_outer_selected_shift (n d : ℕ) (hd : 5 ≤ d)
    (hc : Nat.Coprime d 3) (hs : d ∣ (n + 1) * (n + 3) * (n + 5)) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  have hsZ : (d : ℤ) ∣ ((n : ℤ) + 1) * (n + 3) * (n + 5) := by exact_mod_cast hs
  have hcop := coprime_outer_complement n d hc.isCoprime hsZ
  apply not_four_coprime_symmetric_shift n d hd
  left
  apply Nat.isCoprime_iff_coprime.mp
  simpa only [Nat.cast_mul, Nat.cast_add, Nat.cast_ofNat, Nat.cast_one, mul_assoc] using hcop

theorem not_four_inner_selected_shift (n d : ℕ) (hd : 5 ≤ d)
    (hc : Nat.Coprime d 6) (hs : d ∣ (n + 2) * (n + 3) * (n + 4)) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  have hsZ : (d : ℤ) ∣ ((n : ℤ) + 2) * (n + 3) * (n + 4) := by exact_mod_cast hs
  have hcop := coprime_inner_complement n d hc.isCoprime hsZ
  apply not_four_coprime_symmetric_shift n d hd
  right
  apply Nat.isCoprime_iff_coprime.mp
  simpa only [Nat.cast_mul, Nat.cast_add, Nat.cast_ofNat, Nat.cast_one, mul_assoc] using hcop

theorem not_four_symmetric_selected (n m : ℕ) (hm : n + 5 ≤ m)
    (hc : Nat.Coprime (m - n) 6)
    (hs : (m - n) ∣ (n + 1) * (n + 3) * (n + 5) ∨
      (m - n) ∣ (n + 2) * (n + 3) * (n + 4)) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (m + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  have heq : n + (m - n) = m := by omega
  rcases hs with hs | hs
  · have hc3 : Nat.Coprime (m - n) 3 := hc.of_dvd_right (by decide : 3 ∣ 6)
    simpa only [heq] using not_four_outer_selected_shift n (m - n) (by omega) hc3 hs
  · simpa only [heq] using not_four_inner_selected_shift n (m - n) (by omega) hc hs

/-- info: 'B686Round4K5.not_four_symmetric_selected' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_symmetric_selected

end B686Round4K5
