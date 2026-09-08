import research.tasks.«B699-Binomial».runs.«20260909-large-prime-structure-cb4764f0».lean.GapBridge
import research.tasks.«B699-Binomial».runs.«20260909-large-prime-structure-cb4764f0».lean.SourceStatements
import Mathlib.Tactic.NormNum

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LargePrimeStructure

/-- A nonexceptional odd progression supplies an actual original-target witness. -/
private theorem common_of_odd_progression_layout
    (hsource : OddProgressionBound) {n i j d m k amax : ℕ}
    (hi : 1 ≤ i) (hij : i < j) (hnj : n = 2 * j + d)
    (hk : 2 ≤ k) (hm : Odd m) (hkm : 2 * k < m)
    (hnm : n = m + amax) (hai : amax < i)
    (hcover : 2 * k ≤ amax + 2) (hik : i ≤ 2 * k + 1)
    (hband : d + amax ≤ 4 * k)
    (hex : ¬ OddProgressionException m k) : Common n i j := by
  obtain ⟨p, r, hp, hr, hpdvd, hlo, hhi⟩ := hsource m k hk hm hkm hex
  have hrmax : 2 * r ≤ amax := by omega
  let a := amax - 2 * r
  have ha : a < i := by dsimp [a]; omega
  have hterm : n - a = m + 2 * r := by dsimp [a]; omega
  have hmsep : d + amax < m := by omega
  have hpi : i < p := by
    by_cases hlow : 2 * m ≤ 5 * k
    · have h := hlo hlow
      omega
    · have h := hhi (by omega)
      omega
  have hsize : d + a < p := by
    have hamax : a ≤ amax := Nat.sub_le _ _
    by_cases hlow : 2 * m ≤ 5 * k
    · have h := hlo hlow
      omega
    · have h := hhi (by omega)
      omega
  have hodd : Odd (n - a) := by
    rw [hterm]
    obtain ⟨t, ht⟩ := hm
    refine ⟨t + r, ?_⟩
    omega
  exact common_of_gap_prime hi hij hnj ha hp hpi
    (by simpa [hterm] using hpdvd) hsize (Or.inr hodd)

/--
Every legal consumer of the exact ten source exceptions has a checked residue
certificate. The variables retain both parities and every legal `j` in the band;
this is not a list of sample triples. The `(25,2)` branch uses `5^2`, preserving
`p=i` when `n=28` and `i=5`.
-/
private theorem common_of_odd_progression_exception
    {n i j d m k amax ε : ℕ}
    (hi : 1 ≤ i) (hij : i < j) (hnj : n = 2 * j + d)
    (he : ε ≤ 1) (hlayout : i + ε = 2 * k ∨ i + ε = 2 * k + 1)
    (hamax : amax + 1 + ε = 2 * k) (hnm : n = m + amax)
    (hband : d ≤ i) (hex : OddProgressionException m k) : Common n i j := by
  rcases hex with h5 | h7 | h25 | h243 | h9 | h13 | h17 | h15 | h21 | h19
  · rcases h5 with ⟨rfl, rfl⟩
    omega
  · rcases h7 with ⟨rfl, rfl⟩
    apply common_of_mod_certificate (p := 7) (ei := 1) (ej := 1) (by decide) <;>
      norm_num at * <;> omega
  · rcases h25 with ⟨rfl, rfl⟩
    apply common_of_mod_certificate (p := 5) (ei := 2) (ej := 2) (by decide) <;>
      norm_num at * <;> omega
  · rcases h243 with ⟨rfl, rfl⟩
    have hn245 : 245 ≤ n := by omega
    have ha : n - 245 < i := by omega
    have hterm : n - (n - 245) = 245 := by omega
    apply common_of_gap_prime hi hij hnj ha (p := 7) (by decide)
      (by omega) (by rw [hterm]; norm_num) (by omega)
    right
    rw [hterm]
    norm_num [Nat.odd_iff]
  · rcases h9 with ⟨rfl, rfl⟩
    omega
  · rcases h13 with ⟨rfl, rfl⟩
    apply common_of_mod_certificate (p := 13) (ei := 1) (ej := 1) (by decide) <;>
      norm_num at * <;> omega
  · rcases h17 with ⟨rfl, rfl⟩
    apply common_of_mod_certificate (p := 17) (ei := 1) (ej := 1) (by decide) <;>
      norm_num at * <;> omega
  · rcases h15 with ⟨rfl, rfl⟩
    omega
  · rcases h21 with ⟨rfl, rfl⟩
    apply common_of_mod_certificate (p := 23) (ei := 1) (ej := 1) (by decide) <;>
      norm_num at * <;> omega
  · rcases h19 with ⟨rfl, rfl⟩
    omega

/-- An odd integer above three has a larger prime factor or a surviving square of three. -/
private theorem odd_large_prime_or_nine_dvd {m : ℕ}
    (hm : Odd m) (hbig : 3 < m) :
    (∃ p : ℕ, p.Prime ∧ 3 < p ∧ p ∣ m) ∨ 9 ∣ m := by
  obtain ⟨p, hp, hpm⟩ := Nat.exists_prime_and_dvd (show m ≠ 1 by omega)
  by_cases hp3 : 3 < p
  · exact Or.inl ⟨p, hp, hp3, hpm⟩
  · have hp2 : p ≠ 2 := by
      rintro rfl
      exact hm.not_two_dvd_nat hpm
    have hpEq : p = 3 := by have := hp.two_le; omega
    subst p
    obtain ⟨u, hu⟩ := hpm
    have hu1 : u ≠ 1 := by omega
    obtain ⟨q, hq, hqu⟩ := Nat.exists_prime_and_dvd hu1
    have hum : u ∣ m := ⟨3, by omega⟩
    have hqm : q ∣ m := dvd_trans hqu hum
    by_cases hq3 : q = 3
    · right
      subst q
      obtain ⟨v, hv⟩ := hqu
      exact ⟨v, by omega⟩
    · left
      refine ⟨q, hq, ?_, hqm⟩
      have hq2 : q ≠ 2 := by
        rintro rfl
        exact hm.not_two_dvd_nat hqm
      have := hq.two_le
      omega

/-- The single-term even-row boundary, uniformly in the row and second index. -/
private theorem common_even_three_small_gap {n j d : ℕ}
    (hij : 3 < j) (hnj : n = 2 * j + d)
    (heven : n % 2 = 0) (hband : d ≤ 3) : Common n 3 j := by
  have hd : d = 0 ∨ d = 2 := by omega
  have hm : Odd (n - 1) := by apply Nat.odd_iff.mpr; omega
  have hlarge : 3 < n - 1 := by omega
  rcases odd_large_prime_or_nine_dvd hm hlarge with hprime | h9
  · obtain ⟨p, hp, hp3, hpdvd⟩ := hprime
    exact common_of_gap_prime (by decide) hij hnj (a := 1) (by decide)
      hp hp3 hpdvd (by omega) (Or.inr hm)
  · have hmod : (n - 1) % 9 = 0 := Nat.mod_eq_zero_of_dvd h9
    have hnmod : n % 3 ^ 2 = 1 := by norm_num; omega
    have hsep : 1 < d ∨ Odd (d + 1) := by
      right
      rcases hd with rfl | rfl <;> decide
    exact common_of_gap_power hij hnj (a := 1) (p := 3) (e := 2)
      (by decide) (by decide) (by decide) (by decide) (by decide)
      hnmod (by norm_num; omega) hsep

/--
Conditional original B699 theorem for the entire near-middle band `n-2*j ≤ i`.
The published odd-progression theorem is an explicit input, with its actual
terms and all ten exceptions; the conclusion retains the inclusive `p ≥ i`.
-/
theorem assuming_odd_progression_bound
    (hsource : OddProgressionBound) {n i j : ℕ}
    (hi : 1 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hband : n - 2 * j ≤ i) : Common n i j := by
  by_cases hi2 : i ≤ 2
  · exact common_small_index hi hij hjn hi2
  · let d := n - 2 * j
    have hnj : n = 2 * j + d := by dsimp [d]; omega
    have hd : d ≤ i := hband
    let ε := n % 2
    have he : ε ≤ 1 := by dsimp [ε]; omega
    have hpar : n % 2 = ε := rfl
    let k := (i + ε) / 2
    have hlayout : i + ε = 2 * k ∨ i + ε = 2 * k + 1 := by
      dsimp [k]
      omega
    by_cases hk : 2 ≤ k
    · let amax := 2 * k - 1 - ε
      have hamax : amax + 1 + ε = 2 * k := by dsimp [amax]; omega
      have hai : amax < i := by omega
      let m := n - amax
      have hnm : n = m + amax := by dsimp [m]; omega
      have hm : Odd m := by apply Nat.odd_iff.mpr; omega
      have hkm : 2 * k < m := by omega
      by_cases hex : OddProgressionException m k
      · exact common_of_odd_progression_exception hi hij hnj he hlayout hamax hnm hd hex
      · exact common_of_odd_progression_layout hsource hi hij hnj hk hm hkm hnm hai
          (by omega) (by omega) (by omega) hex
    · have hi3 : i = 3 := by omega
      have he0 : ε = 0 := by omega
      subst i
      exact common_even_three_small_gap hij hnj (by omega) hd

/-- A parameterized consumer: every index between `(n-i)/2` and the middle is covered. -/
theorem entire_near_middle_index_range_assuming_odd_progression_bound
    (hsource : OddProgressionBound) (n i : ℕ) (hi : 1 ≤ i) :
    ∀ j : ℕ, i < j → j ≤ n / 2 → n ≤ 2 * j + i → Common n i j := by
  intro j hij hjn hnear
  exact assuming_odd_progression_bound hsource hi hij hjn (by omega)

/-- An infinite family of original inputs, with all positive shifts up to the first index. -/
example (hsource : OddProgressionBound) (i j d : ℕ)
    (hi : 1 ≤ i) (hij : i < j) (hd : d ≤ i) : Common (2 * j + d) i j := by
  apply assuming_odd_progression_bound hsource hi hij
  · omega
  · omega

end B699LargePrimeStructure

#print axioms B699LargePrimeStructure.assuming_odd_progression_bound
#print axioms B699LargePrimeStructure.entire_near_middle_index_range_assuming_odd_progression_bound

