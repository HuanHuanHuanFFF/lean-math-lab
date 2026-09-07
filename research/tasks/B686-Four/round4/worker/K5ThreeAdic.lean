import research.tasks.«B686-Four».round4.worker.K5SmallPrimeData

set_option maxRecDepth 100000
set_option maxHeartbeats 5000000

namespace B686Round4SmallPrime
open B686Round4K5

theorem coprime_three_of_emod (u : ℤ) (hu : u % 3 ≠ 0) : IsCoprime 3 u := by
  have h : u % 3 = 1 ∨ u % 3 = 2 := by omega
  rcases h with h | h
  · exact ⟨-(u / 3), 1, by omega⟩
  · exact ⟨u / 3 + 1, -1, by omega⟩

theorem normalized_three_square (b : ℕ) (x d u v : ℤ)
    (hu : u % 3 ≠ 0) (hrd : 3 * (3 : ℤ) ^ b ∣ d)
    (h9 : 9 ∣ v - u) (hshift : d ∣ 3 * (v - u))
    (heq : (x + d) * v = 4 * x * u) :
    ((3 : ℤ) ^ b) ^ 2 ∣ 3 * x - d := by
  let r : ℤ := 3 ^ b
  obtain ⟨t, ht⟩ := h9
  obtain ⟨D, hD⟩ := hrd
  have hcu : IsCoprime r u := (coprime_three_of_emod u hu).pow_left
  have hcw : IsCoprime r (u - 3 * t) :=
    (coprime_three_of_emod (u - 3 * t) (by omega)).pow_left
  have hlin : d * v = x * (4 * u - v) := by nlinarith only [heq]
  have hw : 4 * u - v = 3 * (u - 3 * t) := by omega
  have hxmul : r ∣ x * (u - 3 * t) := by
    refine ⟨D * v, ?_⟩
    rw [hw, hD] at hlin
    nlinarith only [hlin]
  have hx : r ∣ x := hcw.dvd_of_dvd_mul_right hxmul
  have hd : r ∣ d := by
    refine ⟨3 * D, ?_⟩
    rw [hD]
    dsimp [r]
    ring
  have hdelta : r ∣ v - u := by
    have h : 3 * r ∣ 3 * (v - u) := by
      apply dvd_trans _ hshift
      exact ⟨D, hD⟩
    obtain ⟨s, hs⟩ := h
    exact ⟨s, by nlinarith only [hs]⟩
  have he : (3 * x - d) * u = (x + d) * (v - u) := by nlinarith only [heq]
  have hmul : r ^ 2 ∣ (3 * x - d) * u := by
    rw [he, pow_two]
    exact mul_dvd_mul (dvd_add hx hd) hdelta
  exact (hcu.pow_left (m := 2)).dvd_of_dvd_mul_right hmul

theorem three_square_high (n d : ℤ) (b : ℕ) (h27 : 27 ∣ d)
    (hrd : 3 * (3 : ℤ) ^ b ∣ d) (heq : p5 (n + d) = 4 * p5 n) :
    ∃ i : ℕ, i ∈ Finset.Icc 1 5 ∧ ((3 : ℤ) ^ b) ^ 2 ∣ error n d i := by
  have h9 : (9 : ℤ) ∣ d := dvd_trans (by decide : (9 : ℤ) ∣ 27) h27
  obtain ⟨i, hi, c, u, v, hc, hn, hm, hu, hv, hs⟩ := three_cofactor_data n d h9
  have heq' : (n + d + i) * v = 4 * (n + i) * u := by
    apply mul_left_cancel₀ hc
    calc
      c * ((n + d + i) * v) = p5 (n + d) := hm.symm
      _ = 4 * p5 n := heq
      _ = c * (4 * (n + i) * u) := by rw [hn]; ring
  have hdelta : (9 : ℤ) ∣ v - u := by
    obtain ⟨t, ht⟩ := dvd_trans h27 hs
    exact ⟨t, by nlinarith only [ht]⟩
  refine ⟨i, hi, ?_⟩
  simpa only [error, add_assoc] using normalized_three_square b (n + i) d u v hu hrd hdelta hs
    (by simpa only [add_assoc, add_comm, add_left_comm] using heq')

theorem three_power_square_loss (n d a : ℕ) (ha : 0 < a) (hqd : 3 ^ a ∣ d)
    (heq : (∏ i ∈ Finset.Icc 1 (5 : ℕ), (n + d + i)) =
      4 * (∏ i ∈ Finset.Icc 1 (5 : ℕ), (n + i))) :
    ∃ i : ℕ, i ∈ Finset.Icc 1 5 ∧ (3 : ℤ) ^ (2 * a) ∣ 9 * error n d i := by
  have hp : p5 ((n : ℤ) + d) = 4 * p5 n := by
    have hm := p5_nat_product (n + d)
    have hn := p5_nat_product n
    push_cast at hm
    rw [hm, hn]
    exact_mod_cast heq
  by_cases hlarge : 3 ≤ a
  · let b := a - 1
    have hab : a = b + 1 := by dsimp [b]; omega
    have h27N : 27 ∣ d := dvd_trans (by simpa using pow_dvd_pow (3 : ℕ) hlarge) hqd
    have h27 : (27 : ℤ) ∣ d := by exact_mod_cast h27N
    have hq : (3 : ℤ) ^ a ∣ d := by exact_mod_cast hqd
    have hrd : 3 * (3 : ℤ) ^ b ∣ d := by
      simpa only [hab, pow_succ, mul_comm] using hq
    obtain ⟨i, hi, h⟩ := three_square_high n d b h27 hrd hp
    refine ⟨i, hi, ?_⟩
    have hpow : (3 : ℤ) ^ (2 * a) = 9 * ((3 : ℤ) ^ b) ^ 2 := by
      rw [show 2 * a = (b + 1) * 2 by omega, pow_mul, pow_succ]
      ring
    rw [hpow]
    exact mul_dvd_mul (dvd_refl (9 : ℤ)) h
  · have hcases : a = 1 ∨ a = 2 := by omega
    rcases hcases with rfl | rfl
    · refine ⟨1, by decide, ?_⟩
      simpa using dvd_mul_right (9 : ℤ) (error n d 1)
    · let i : ℕ := 3 - n % 3
      have hi : i ∈ Finset.Icc 1 5 := by
        apply Finset.mem_Icc.mpr
        have hnmod : n % 3 < 3 := Nat.mod_lt n (by decide)
        dsimp [i]
        constructor <;> omega
      have hni : (3 : ℕ) ∣ n + i := by
        apply Nat.dvd_iff_mod_eq_zero.mpr
        dsimp [i]
        omega
      have hniZ : (3 : ℤ) ∣ (n : ℤ) + i := by exact_mod_cast hni
      have hd9 : (9 : ℤ) ∣ d := by exact_mod_cast hqd
      obtain ⟨s, hs⟩ := hniZ
      obtain ⟨D, hD⟩ := hd9
      have he : error n d i = 9 * (s - D) := by
        unfold error
        rw [hs, hD]
        ring
      refine ⟨i, hi, s - D, ?_⟩
      rw [he]
      norm_num <;> ring

/-- info: 'B686Round4SmallPrime.three_power_square_loss' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms three_power_square_loss

end B686Round4SmallPrime
