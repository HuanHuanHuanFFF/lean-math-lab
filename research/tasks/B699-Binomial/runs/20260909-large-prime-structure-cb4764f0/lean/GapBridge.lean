import Math.B699.CofactorCriterion

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LargePrimeStructure

/-- The original B699 conclusion, with the inclusive prime threshold. -/
def Common (n i j : ℕ) : Prop :=
  ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j)

/-- A reusable exact certificate. The two carries may occur at different powers. -/
theorem common_of_mod_certificate {n i j p ei ej : ℕ}
    (hp : p.Prime) (hpi : i ≤ p) (hin : i ≤ n) (hjn : j ≤ n)
    (hei : 1 ≤ ei) (hej : 1 ≤ ej)
    (hmi : n % p ^ ei < i % p ^ ei)
    (hmj : n % p ^ ej < j % p ^ ej) : Common n i j := by
  exact ⟨p, hp, hpi, Nat.dvd_gcd
    (B699.prime_dvd_choose_of_mod_lt hp hin hei hmi)
    (B699.prime_dvd_choose_of_mod_lt hp hjn hej hmj)⟩

/-- A small symmetric residue interval has only its zero difference. -/
theorem gap_remainder_eq {j d a Q : ℕ}
    (haQ : a < Q) (hsize : d + a < Q)
    (hnmod : (2 * j + d) % Q = a) (hb : j % Q ≤ a) :
    d + 2 * (j % Q) = a := by
  have hmod : (d + 2 * (j % Q)) % Q = a := by
    simpa [Nat.add_mod, Nat.mul_mod, Nat.add_comm] using hnmod
  have hbound : d + 2 * (j % Q) < Q + a := by omega
  by_cases hlt : d + 2 * (j % Q) < Q
  · simpa [Nat.mod_eq_of_lt hlt] using hmod
  · have hle : Q ≤ d + 2 * (j % Q) := by omega
    have hsub : d + 2 * (j % Q) - Q < Q := by omega
    rw [Nat.mod_eq_sub_mod hle, Nat.mod_eq_of_lt hsub] at hmod
    omega

/-- Full prime powers work at p=i as soon as the first index is below the power. -/
theorem common_of_gap_power {n i j d a p e : ℕ}
    (hij : i < j) (hnj : n = 2 * j + d) (ha : a < i)
    (hp : p.Prime) (hpi : i ≤ p) (he : 1 ≤ e) (hiQ : i < p ^ e)
    (hnmod : n % p ^ e = a) (hsize : d + a < p ^ e)
    (hsep : a < d ∨ Odd (d + a)) : Common n i j := by
  have hin : i ≤ n := by omega
  have hjn : j ≤ n := by omega
  have hfirst : n % p ^ e < i % p ^ e := by
    rw [hnmod, Nat.mod_eq_of_lt hiQ]
    exact ha
  have hsecond : n % p ^ e < j % p ^ e := by
    rw [hnmod]
    by_contra h
    have hb : j % p ^ e ≤ a := by omega
    have heq := gap_remainder_eq (ha.trans hiQ) hsize
      (by simpa [hnj] using hnmod) hb
    rcases hsep with hlt | hodd
    · omega
    · obtain ⟨t, ht⟩ := hodd
      omega
  exact common_of_mod_certificate hp hpi hin hjn he he hfirst hsecond

/-- A terminal prime beyond the gap forces a common divisor by parity or positivity. -/
theorem common_of_gap_prime {n i j d a p : ℕ}
    (_hi : 1 ≤ i) (hij : i < j) (hnj : n = 2 * j + d) (ha : a < i)
    (hp : p.Prime) (hip : i < p) (hpdvd : p ∣ n - a)
    (hsize : d + a < p) (hpar : a < d ∨ Odd (n - a)) : Common n i j := by
  have han : a ≤ n := by omega
  have hmod : n % p = a := by
    have hn : n = n - a + a := by omega
    rw [hn]
    simp [Nat.add_mod, Nat.mod_eq_zero_of_dvd hpdvd, Nat.mod_eq_of_lt (ha.trans hip)]
  have hsep : a < d ∨ Odd (d + a) := by
    rcases hpar with hlt | hodd
    · exact Or.inl hlt
    · right
      obtain ⟨t, ht⟩ := hodd
      rw [Nat.odd_iff]
      omega
  exact common_of_gap_power (e := 1) hij hnj ha hp hip.le (by decide)
    (by simpa using hip) (by simpa using hmod) (by simpa using hsize) hsep

/-- Every prime in the top numerator interval is an original-target witness. -/
theorem common_of_top_prime {n i j p : ℕ}
    (_hi : 1 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hp : p.Prime) (hlo : n - i < p) (hpn : p ≤ n) : Common n i j := by
  have hi : i ≤ n := by omega
  have hj : j ≤ n := by omega
  have hip : i < p := by omega
  have hjp : j < p := by omega
  have hn2 : n < 2 * p := by omega
  have hnmod : n % p = n - p := by
    rw [Nat.mod_eq_sub_mod hpn, Nat.mod_eq_of_lt (by omega)]
  apply common_of_mod_certificate hp hip.le hi hj (ei := 1) (ej := 1) (by decide) (by decide)
  · simpa [hnmod, Nat.mod_eq_of_lt hip] using (show n - p < i by omega)
  · simpa [hnmod, Nat.mod_eq_of_lt hjp] using (show n - p < j by omega)

/-- The elementary gcd argument covers i=1 and i=2 for all legal j. -/
theorem common_small_index {n i j : ℕ}
    (hi : 1 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hi2 : i ≤ 2) :
    Common n i j := by
  have hjn' : j < n := by omega
  have hstrict : j.choose i < n.choose i := by
    obtain ⟨r, rfl⟩ := Nat.exists_eq_succ_of_ne_zero (show i ≠ 0 by omega)
    have hpos : 0 < j.choose r := Nat.choose_pos (by omega)
    have hstep : j.choose (r + 1) < (j + 1).choose (r + 1) := by
      rw [Nat.choose_succ_succ]
      change j.choose (r + 1) < j.choose r + j.choose (r + 1)
      omega
    exact hstep.trans_le (Nat.choose_le_choose _ (by omega))
  have hg : Nat.gcd (n.choose i) (n.choose j) ≠ 1 := by
    intro h
    have hcop : (n.choose i).Coprime (n.choose j) := h
    have hdvd : n.choose i ∣ j.choose i := by
      apply hcop.dvd_of_dvd_mul_left
      rw [Nat.choose_mul hij.le]
      exact dvd_mul_right _ _
    exact (Nat.not_le_of_gt hstrict)
      (Nat.le_of_dvd (Nat.choose_pos hij.le) hdvd)
  obtain ⟨p, hp, hpdvd⟩ := Nat.exists_prime_and_dvd hg
  exact ⟨p, hp, by have := hp.two_le; omega, hpdvd⟩

end B699LargePrimeStructure

#print axioms B699LargePrimeStructure.common_of_mod_certificate
#print axioms B699LargePrimeStructure.gap_remainder_eq
#print axioms B699LargePrimeStructure.common_of_gap_power
#print axioms B699LargePrimeStructure.common_of_gap_prime
#print axioms B699LargePrimeStructure.common_of_top_prime
#print axioms B699LargePrimeStructure.common_small_index


