import research.tasks.«B686-Four».round4.worker.K5SmallPrimeData

set_option maxRecDepth 200000
set_option maxHeartbeats 5000000

namespace B686Round4SmallPrime
open B686Round4K5

theorem coprime_two_of_emod (u : ℤ) (hu : u % 2 ≠ 0) : IsCoprime 2 u := by
  refine ⟨-(u / 2), 1, ?_⟩
  omega

theorem normalized_two_square (a : ℕ) (x d u v : ℤ)
    (hu : u % 2 ≠ 0) (hv : v % 2 ≠ 0) (hqd : (2 : ℤ) ^ a ∣ d)
    (hshift : d ∣ 4 * (v - u)) (heq : (x + d) * v = 4 * x * u) :
    ((2 : ℤ) ^ a) ^ 2 ∣ 3 * x - d := by
  let q : ℤ := 2 ^ a
  have hcu : IsCoprime q u := (coprime_two_of_emod u hu).pow_left
  have hcv : IsCoprime q v := (coprime_two_of_emod v hv).pow_left
  have hcc : IsCoprime q (4 * u - v) :=
    (coprime_two_of_emod (4 * u - v) (by omega)).pow_left
  have hlin : d * v = x * (4 * u - v) := by nlinarith only [heq]
  have hx : q ∣ x := by
    apply hcc.dvd_of_dvd_mul_right
    rw [← hlin]
    exact dvd_mul_of_dvd_left hqd v
  have hc4 : IsCoprime (4 : ℤ) v := by
    simpa using (coprime_two_of_emod v hv).pow_left (m := 2)
  have hbig : 4 * q ∣ x + d := by
    apply (hc4.mul_left hcv).dvd_of_dvd_mul_right
    rw [heq]
    exact dvd_mul_of_dvd_left (mul_dvd_mul (dvd_refl (4 : ℤ)) hx) u
  have hdelta : q ∣ 4 * (v - u) := dvd_trans hqd hshift
  obtain ⟨s, hs⟩ := hbig
  obtain ⟨t, ht⟩ := hdelta
  have he : (3 * x - d) * u = (x + d) * (v - u) := by nlinarith only [heq]
  have hmul : q ^ 2 ∣ (3 * x - d) * u := by
    refine ⟨s * t, ?_⟩
    calc
      (3 * x - d) * u = (x + d) * (v - u) := he
      _ = (q * s) * (4 * (v - u)) := by rw [hs]; ring
      _ = q ^ 2 * (s * t) := by rw [ht]; ring
  exact (hcu.pow_left (m := 2)).dvd_of_dvd_mul_right hmul

theorem two_square_high (n d : ℤ) (a : ℕ) (h8 : 8 ∣ d)
    (hqd : (2 : ℤ) ^ a ∣ d) (heq : p5 (n + d) = 4 * p5 n) :
    ∃ i : ℕ, i ∈ Finset.Icc 1 5 ∧ ((2 : ℤ) ^ a) ^ 2 ∣ error n d i := by
  obtain ⟨i, hi, c, u, v, hc, hn, hm, hu, hv, hs⟩ := two_cofactor_data n d h8
  have heq' : (n + d + i) * v = 4 * (n + i) * u := by
    apply mul_left_cancel₀ hc
    calc
      c * ((n + d + i) * v) = p5 (n + d) := hm.symm
      _ = 4 * p5 n := heq
      _ = c * (4 * (n + i) * u) := by rw [hn]; ring
  refine ⟨i, hi, ?_⟩
  simpa only [error, add_assoc] using normalized_two_square a (n + i) d u v hu hv hqd hs
    (by simpa only [add_assoc, add_comm, add_left_comm] using heq')

theorem four_divides_some_error (n d : ℤ) :
    ∃ i : ℕ, i ∈ Finset.Icc 1 5 ∧ (4 : ℤ) ∣ error n d i := by
  let t : ℤ := (3 * d - n) % 4
  have ht0 : 0 ≤ t := by dsimp [t]; omega
  have ht4 : t < 4 := by dsimp [t]; omega
  by_cases hz : t = 0
  · refine ⟨4, by decide, ?_⟩
    apply Int.dvd_iff_emod_eq_zero.mpr
    dsimp [error, t] at *
    omega
  · refine ⟨t.toNat, Finset.mem_Icc.mpr ⟨by omega, by omega⟩, ?_⟩
    have ht : (t.toNat : ℤ) = t := by omega
    apply Int.dvd_iff_emod_eq_zero.mpr
    simp only [error, ht]
    dsimp [t] at *
    omega

theorem binary_base_table : ∀ n d : Fin 128, d.val % 4 = 0 →
    p5 ((n.val : ℤ) + d.val) % 128 = (4 * p5 n.val) % 128 →
    ∃ i : Fin 5, error n.val d.val (i.val + 1) % 16 = 0 := by
  decide

theorem sixteen_divides_some_error (n d : ℤ) (hd : 4 ∣ d)
    (heq : p5 (n + d) = 4 * p5 n) :
    ∃ i : ℕ, i ∈ Finset.Icc 1 5 ∧ (16 : ℤ) ∣ error n d i := by
  let rn : Fin 128 := ⟨(n % 128).toNat, by omega⟩
  let rd : Fin 128 := ⟨(d % 128).toNat, by omega⟩
  have hn : (rn.val : ℤ) = n % 128 := by dsimp [rn]; omega
  have hd' : (rd.val : ℤ) = d % 128 := by dsimp [rd]; omega
  have hdm : rd.val % 4 = 0 := by
    have := Int.dvd_iff_emod_eq_zero.mp hd
    omega
  have hp : p5 ((rn.val : ℤ) + rd.val) % 128 = (4 * p5 rn.val) % 128 := by
    rw [hn, hd']
    have h := congrArg (fun x : ℤ => x % 128) heq
    simpa only [p5, Int.add_emod, Int.mul_emod, Int.emod_emod] using h
  obtain ⟨i, hi⟩ := binary_base_table rn rd hdm hp
  refine ⟨i.val + 1, Finset.mem_Icc.mpr ⟨by omega, by omega⟩, ?_⟩
  apply Int.dvd_iff_emod_eq_zero.mpr
  simp only [error, Nat.cast_add, Nat.cast_one] at hi ⊢
  omega

theorem two_power_square (n d a : ℕ) (ha : 0 < a) (hqd : 2 ^ a ∣ d)
    (heq : (∏ i ∈ Finset.Icc 1 (5 : ℕ), (n + d + i)) =
      4 * (∏ i ∈ Finset.Icc 1 (5 : ℕ), (n + i))) :
    ∃ i : ℕ, i ∈ Finset.Icc 1 5 ∧ (2 : ℤ) ^ (2 * a) ∣ error n d i := by
  have hp : p5 ((n : ℤ) + d) = 4 * p5 n := by
    have hm := p5_nat_product (n + d)
    have hn := p5_nat_product n
    push_cast at hm
    rw [hm, hn]
    exact_mod_cast heq
  by_cases hlarge : 3 ≤ a
  · have h8N : 8 ∣ d := dvd_trans (by simpa using pow_dvd_pow (2 : ℕ) hlarge) hqd
    have h8 : (8 : ℤ) ∣ d := by exact_mod_cast h8N
    have hq : (2 : ℤ) ^ a ∣ d := by exact_mod_cast hqd
    obtain ⟨i, hi, h⟩ := two_square_high n d a h8 hq hp
    refine ⟨i, hi, ?_⟩
    simpa only [← pow_mul, Nat.mul_comm a 2] using h
  · have hcases : a = 1 ∨ a = 2 := by omega
    rcases hcases with rfl | rfl
    · simpa using four_divides_some_error n d
    · have h4 : (4 : ℤ) ∣ d := by exact_mod_cast hqd
      simpa using sixteen_divides_some_error n d h4 hp

/-- info: 'B686Round4SmallPrime.two_power_square' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms two_power_square

end B686Round4SmallPrime
