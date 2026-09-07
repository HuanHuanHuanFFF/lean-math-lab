import research.tasks.«B686-Four».round6.a.Positions
namespace B686Round6MainProbe
open B686Round4Shift B686Round4Cubic
theorem nat_product_five (n : ℕ) :
    B686Target.product 5 n = (n + 1) * (n + 2) * (n + 3) * (n + 4) * (n + 5) := by
  have h := product_five (n : ℤ)
  rw [← cast_product] at h
  exact_mod_cast h

theorem displacement_divides_product (n m : ℕ) (hm : n + 5 ≤ m)
    (h6 : Nat.Coprime (m - n) 6)
    (heq : B686Target.product 5 m = 4 * B686Target.product 5 n) :
    m - n ∣ B686Target.product 5 n := by
  have hadd : n + (m - n) = m := by omega
  have hn : natProduct 5 (n + (m - n)) = 4 * natProduct 5 n := by
    simpa only [hadd, natProduct, B686Target.product] using heq
  have hz := shift_divides 5 (n : ℤ) ((m - n : ℕ) : ℤ)
    (nat_shift_equation 5 n (m - n) hn)
  rw [← cast_product] at hz
  have hnat : m - n ∣ 3 * natProduct 5 n := by exact_mod_cast hz
  exact (h6.coprime_dvd_right (by decide : 3 ∣ 6)).dvd_of_dvd_mul_left hnat

theorem prime_ge_five_of_coprime_six (p : ℕ) (hp : p.Prime)
    (hc : Nat.Coprime p 6) : 5 ≤ p := by
  by_contra h
  have hp2 := hp.two_le
  interval_cases p
  · exact (by decide : ¬ Nat.Coprime 2 6) hc
  · exact (by decide : ¬ Nat.Coprime 3 6) hc
  · exact (by decide : ¬ Nat.Prime 4) hp

/-- Five distinct prime divisors, one in each original lower factor. -/
theorem solution_has_five_distinct_primes (n m : ℕ) (hm : n + 5 ≤ m)
    (h6 : Nat.Coprime (m - n) 6)
    (heq : B686Target.product 5 m = 4 * B686Target.product 5 n)
    (hpos : ∀ i ∈ Finset.Icc 1 5, ¬ Nat.Coprime (m - n) (n + i)) :
    ∃ p : Fin 5 → ℕ, Function.Injective p ∧
      ∀ i, (p i).Prime ∧ 5 ≤ p i ∧ p i ∣ m - n ∧ p i ∣ n + (i.val + 1) := by
  classical
  have hex : ∀ i : Fin 5, ∃ p : ℕ, p.Prime ∧ p ∣ m - n ∧ p ∣ n + (i.val + 1) := by
    intro i
    exact Nat.Prime.not_coprime_iff_dvd.mp (hpos (i.val + 1) (by
      apply Finset.mem_Icc.mpr
      have := i.isLt
      omega))
  choose p hp hpd hpn using hex
  have hge : ∀ i, 5 ≤ p i := fun i =>
    prime_ge_five_of_coprime_six (p i) (hp i) (h6.coprime_dvd_left (hpd i))
  refine ⟨p, ?_, fun i => ⟨hp i, hge i, hpd i, hpn i⟩⟩
  intro i j hij
  apply Fin.ext
  by_contra hne
  have hi : i.val + 1 ∈ Finset.Icc 1 5 := by
    apply Finset.mem_Icc.mpr
    have := i.isLt
    omega
  have hj : j.val + 1 ∈ Finset.Icc 1 5 := by
    apply Finset.mem_Icc.mpr
    have := j.isLt
    omega
  have hnot := distinct_positions_not_dvd 5 n (p i) (i.val + 1) (j.val + 1)
    (hge i) hi hj (by omega) (hpn i)
  exact hnot (by rw [hij]; exact hpn j)


end B686Round6MainProbe
