import Mathlib.Data.Nat.Choose.Factorization
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.GCD.BigOperators
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Data.Nat.Prime.Factorial
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.BigOperators.Intervals
import Lean.Elab.Tactic.Omega
import Mathlib.Data.Nat.Basic
import Mathlib.Algebra.BigOperators.Associated
import Mathlib.Algebra.BigOperators.Ring.Nat
import Mathlib.Algebra.Order.Ring.Abs
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic.NormNum
import Mathlib.Data.Finset.Max
import Mathlib.Data.Nat.Dist
import Mathlib.Data.List.Range
import Mathlib.Data.Nat.Log
import Mathlib.Data.List.Basic
import Mathlib.Data.Nat.Prime.Defs

set_option autoImplicit false
set_option relaxedAutoImplicit false

/-!
# Two-cofactor obstruction for the B699 search

The arithmetic core is independent of primality. The final theorem combines it
with mathlib's Kummer theorem to prove the common-prime conclusion under the
explicit cofactor hypotheses. It does not assert that every legal B699 triple
has such cofactors. See research/tasks/B699-Binomial/explorer/constraints.md.
-/

namespace B699

/-- Two decompositions with coprime small cofactors force the first residue to
be the entire integer. This is the integer core of the common-prime criterion. -/
theorem cofactor_core
    (n j a b P Q u v r s c d : ℕ)
    (hnP : n = u * P + a) (hnQ : n = v * Q + b)
    (hjP : j = r * P + c) (hjQ : j = s * Q + d)
    (hc : c ≤ a) (hd : d ≤ b)
    (hr : r < u) (hs : s < v)
    (hcop : Nat.Coprime u v) (hsize : u * v * (a + b) < n) :
    j ≤ a := by
  have hid : n * (v * r) + u * v * c + u * s * b =
      n * (u * s) + u * v * d + v * r * a := by
    calc
      _ = (u * P + a) * (v * r) + u * v * c + u * s * b := by rw [hnP]
      _ = u * v * (r * P + c) + v * r * a + u * s * b := by ring
      _ = u * v * j + v * r * a + u * s * b := by rw [← hjP]
      _ = u * v * (s * Q + d) + v * r * a + u * s * b := by rw [hjQ]
      _ = (v * Q + b) * (u * s) + u * v * d + v * r * a := by ring
      _ = _ := by rw [← hnQ]
  have hca : u * v * c ≤ u * v * a := Nat.mul_le_mul_left (u * v) hc
  have hdb : u * v * d ≤ u * v * b := Nat.mul_le_mul_left (u * v) hd
  have hra : v * r * a ≤ u * v * a := by
    simpa only [Nat.mul_comm v u] using
      Nat.mul_le_mul_right a (Nat.mul_le_mul_left v (Nat.le_of_lt hr))
  have hsb : u * s * b ≤ u * v * b :=
    Nat.mul_le_mul_right b (Nat.mul_le_mul_left u (Nat.le_of_lt hs))
  have hleft : u * v * c + u * s * b ≤ u * v * (a + b) := by
    calc
      _ ≤ u * v * a + u * v * b := Nat.add_le_add hca hsb
      _ = _ := by ring
  have hright : u * v * d + v * r * a ≤ u * v * (a + b) := by
    calc
      _ ≤ u * v * b + u * v * a := Nat.add_le_add hdb hra
      _ = _ := by ring
  have heq : v * r = u * s := by
    rcases lt_trichotomy (v * r) (u * s) with hlt | heq | hgt
    · have hgap := Nat.mul_le_mul_left n (Nat.succ_le_of_lt hlt)
      simp only [Nat.succ_eq_add_one, Nat.mul_add, Nat.mul_one] at hgap
      omega
    · exact heq
    · have hgap := Nat.mul_le_mul_left n (Nat.succ_le_of_lt hgt)
      simp only [Nat.succ_eq_add_one, Nat.mul_add, Nat.mul_one] at hgap
      omega
  have hur : u ∣ r := hcop.dvd_of_dvd_mul_left (by
    rw [heq]
    exact Nat.dvd_mul_right u s)
  have hrzero : r = 0 := by
    by_contra hne
    have hle : u ≤ r := Nat.le_of_dvd (Nat.pos_of_ne_zero hne) hur
    omega
  have hjc : j = c := by simpa only [hrzero, Nat.zero_mul, Nat.zero_add] using hjP
  omega

/-- In a legal B699 index range, two such factorizations cannot both give a
small remainder for the second index. No prime assumptions are needed here. -/
theorem cofactor_remainder_obstruction
    (n i j a b P Q u v : ℕ)
    (hij : i < j) (hj : j ≤ n / 2)
    (ha : a < i) (hb : b < i)
    (hnP : n = u * P + a) (hnQ : n = v * Q + b)
    (hcop : Nat.Coprime u v) (hsize : u * v * (a + b) < n) :
    ¬ (j % P ≤ a ∧ j % Q ≤ b) := by
  rintro ⟨hc, hd⟩
  have hjP : j = j / P * P + j % P := by
    simpa only [Nat.mul_comm] using (Nat.div_add_mod j P).symm
  have hjQ : j = j / Q * Q + j % Q := by
    simpa only [Nat.mul_comm] using (Nat.div_add_mod j Q).symm
  have hju : j < u * P := by omega
  have hjv : j < v * Q := by omega
  have hr : j / P < u := by
    by_contra h
    have hmul := Nat.mul_le_mul_right P (Nat.le_of_not_gt h)
    omega
  have hs : j / Q < v := by
    by_contra h
    have hmul := Nat.mul_le_mul_right Q (Nat.le_of_not_gt h)
    omega
  have hbound := cofactor_core n j a b P Q u v (j / P) (j / Q) (j % P) (j % Q)
    hnP hnQ hjP hjQ hc hd hr hs hcop hsize
  omega



/-- A carry at any positive power of a prime forces divisibility of a binomial
coefficient. This is the single-carry consequence of mathlib's Kummer theorem. -/
theorem prime_dvd_choose_of_mod_lt {n k p e : ℕ}
    (hp : p.Prime) (hk : k ≤ n) (he : 1 ≤ e)
    (hm : n % p ^ e < k % p ^ e) : p ∣ n.choose k := by
  have hmod : (k % p ^ e + (n - k) % p ^ e) % p ^ e = n % p ^ e := by
    rw [← Nat.add_mod, Nat.add_sub_of_le hk]
  have hcarry : p ^ e ≤ k % p ^ e + (n - k) % p ^ e := by
    by_contra h
    have hsmall : k % p ^ e + (n - k) % p ^ e < p ^ e := Nat.lt_of_not_ge h
    rw [Nat.mod_eq_of_lt hsmall] at hmod
    have hle : k % p ^ e ≤ n % p ^ e := by
      rw [← hmod]
      exact Nat.le_add_right _ _
    exact (Nat.not_lt_of_ge hle) hm
  have hbound : Nat.log p n < Nat.log p n + e + 1 := by omega
  have he_mem : e ∈ Finset.Ico 1 (Nat.log p n + e + 1) := by
    simp only [Finset.mem_Ico]
    omega
  have hfactor : 0 < (n.choose k).factorization p := by
    rw [Nat.factorization_choose hp hk hbound]
    exact Finset.card_pos.mpr ⟨e, Finset.mem_filter.mpr ⟨he_mem, hcarry⟩⟩
  exact Nat.dvd_of_factorization_pos (Nat.ne_of_gt hfactor)

/-- Two terminal prime-power factors with small coprime cofactors give a
specific common prime for the two binomial coefficients. The exponents need
not be exact valuations, and the offsets and primes need not be distinct. -/
theorem cofactor_prime_pair
    (n i j a b p q e f u v : ℕ)
    (hij : i < j) (hj : j ≤ n / 2)
    (ha : a < i) (hb : b < i)
    (hp : p.Prime) (hq : q.Prime) (hip : i < p) (hiq : i < q)
    (he : 1 ≤ e) (hf : 1 ≤ f)
    (hnP : n = u * p ^ e + a) (hnQ : n = v * q ^ f + b)
    (hcop : Nat.Coprime u v) (hsize : u * v * (a + b) < n) :
    (p ∣ n.choose i ∧ p ∣ n.choose j) ∨
      (q ∣ n.choose i ∧ q ∣ n.choose j) := by
  have hleP : p ≤ p ^ e := le_self_pow hp.one_lt.le (by omega)
  have hleQ : q ≤ q ^ f := le_self_pow hq.one_lt.le (by omega)
  have hiP : i < p ^ e := hip.trans_le hleP
  have hiQ : i < q ^ f := hiq.trans_le hleQ
  have hmodP : n % p ^ e = a := by
    simp [hnP, Nat.add_mod, Nat.mod_eq_of_lt (ha.trans hiP)]
  have hmodQ : n % q ^ f = b := by
    simp [hnQ, Nat.add_mod, Nat.mod_eq_of_lt (hb.trans hiQ)]
  have hin : i ≤ n := by omega
  have hjn : j ≤ n := by omega
  have hpi : p ∣ n.choose i :=
    prime_dvd_choose_of_mod_lt hp hin he (by
      simpa only [hmodP, Nat.mod_eq_of_lt hiP] using ha)
  have hqi : q ∣ n.choose i :=
    prime_dvd_choose_of_mod_lt hq hin hf (by
      simpa only [hmodQ, Nat.mod_eq_of_lt hiQ] using hb)
  by_cases hpj : p ∣ n.choose j
  · exact Or.inl ⟨hpi, hpj⟩
  by_cases hqj : q ∣ n.choose j
  · exact Or.inr ⟨hqi, hqj⟩
  have hremP : j % p ^ e ≤ a := by
    by_contra h
    apply hpj
    apply prime_dvd_choose_of_mod_lt hp hjn he
    rw [hmodP]
    omega
  have hremQ : j % q ^ f ≤ b := by
    by_contra h
    apply hqj
    apply prime_dvd_choose_of_mod_lt hq hjn hf
    rw [hmodQ]
    omega
  exact False.elim (cofactor_remainder_obstruction n i j a b (p ^ e) (q ^ f) u v
    hij hj ha hb hnP hnQ hcop hsize ⟨hremP, hremQ⟩)

/-- Source-aligned B699 conclusion for the uniform family picked out by the
cofactor hypotheses. This does not assert that every legal triple has them. -/
theorem common_large_prime_of_coprime_cofactors
    (n i j a b p q e f u v : ℕ)
    (hij : i < j) (hj : j ≤ n / 2)
    (ha : a < i) (hb : b < i)
    (hp : p.Prime) (hq : q.Prime) (hip : i < p) (hiq : i < q)
    (he : 1 ≤ e) (hf : 1 ≤ f)
    (hnP : n = u * p ^ e + a) (hnQ : n = v * q ^ f + b)
    (hcop : Nat.Coprime u v) (hsize : u * v * (a + b) < n) :
    ∃ r : ℕ, r.Prime ∧ i ≤ r ∧ r ∣ (n.choose i).gcd (n.choose j) := by
  rcases cofactor_prime_pair n i j a b p q e f u v hij hj ha hb hp hq hip hiq
      he hf hnP hnQ hcop hsize with ⟨hpi, hpj⟩ | ⟨hqi, hqj⟩
  · exact ⟨p, hp, hip.le, Nat.dvd_gcd hpi hpj⟩
  · exact ⟨q, hq, hiq.le, Nat.dvd_gcd hqi hqj⟩


end B699

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

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699BridgeAudit

/-- The binomial identity transfers any coprime divisor to the small binomial. -/
theorem divisor_transfer {n i j D : ℕ} (hij : i ≤ j) (_hjn : j ≤ n)
    (hD : D ∣ n.choose i) (hcop : D.Coprime (n.choose j)) :
    D ∣ j.choose i := by
  apply hcop.dvd_of_dvd_mul_left
  rw [Nat.choose_mul hij]
  exact dvd_mul_of_dvd_left hD _

/-- Includes each full prime power with p >= threshold; the endpoint is intentional. -/
def primePart (threshold a : ℕ) : ℕ :=
  (a.primeFactors.filter (fun p ↦ threshold ≤ p)).prod (fun p ↦ p ^ a.factorization p)

theorem prime_part_dvd {threshold a : ℕ} (ha : a ≠ 0) : primePart threshold a ∣ a := by
  unfold primePart
  calc
    _ ∣ a.primeFactors.prod (fun p ↦ p ^ a.factorization p) :=
      Finset.prod_dvd_prod_of_subset _ _ _ (Finset.filter_subset _ _)
    _ = a := (Nat.prod_primeFactors_pow_factorization ha).symm

theorem prime_part_coprime_of_no_common {threshold a b : ℕ}
    (h : ¬ ∃ p, p.Prime ∧ threshold ≤ p ∧ p ∣ a ∧ p ∣ b) :
    (primePart threshold a).Coprime b := by
  unfold primePart
  apply Nat.coprime_prod_left_iff.mpr
  intro p hp
  obtain ⟨hpa, hpt⟩ := Finset.mem_filter.mp hp
  have hprime := Nat.prime_of_mem_primeFactors hpa
  apply Nat.Coprime.pow_left
  apply hprime.coprime_iff_not_dvd.mpr
  intro hpb
  exact h ⟨p, hprime, hpt, Nat.dvd_of_mem_primeFactors hpa, hpb⟩

/-- Actual B699 transfer T, with the full prime >= i part, not an abstract surrogate. -/
theorem actual_prime_part_transfer {n i j : ℕ} (hij : i ≤ j) (hjn : j ≤ n)
    (h : ¬ ∃ p, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j) :
    primePart i (n.choose i) ∣ j.choose i := by
  apply divisor_transfer hij hjn
  · exact prime_part_dvd (Nat.ne_of_gt (Nat.choose_pos (hij.trans hjn)))
  · exact prime_part_coprime_of_no_common h

#print axioms divisor_transfer
#print axioms prime_part_dvd
#print axioms prime_part_coprime_of_no_common
#print axioms actual_prime_part_transfer

end B699BridgeAudit

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LargePrimeStructure

/-- A complete binomial prime power localizes in the numerator window.
At the endpoint p=i, the numerator contains one additional p. The exponent e
may be any positive exponent below the actual binomial valuation. -/
theorem prime_power_numerator_mod_lt {n i p e : ℕ}
    (hp : p.Prime) (hpi : i ≤ p) (hin : i ≤ n) (he : 0 < e)
    (heval : e ≤ (n.choose i).factorization p) :
    n % p ^ (e + if p = i then 1 else 0) < i := by
  classical
  let δ : ℕ := if p = i then 1 else 0
  let S := (Finset.Ico 1 (Nat.log p n + 1)).filter
    (fun t ↦ p ^ t ≤ i % p ^ t + (n - i) % p ^ t)
  have hcard : S.card = (n.choose i).factorization p := by
    simpa only [S] using
      (Nat.factorization_choose hp hin (Nat.lt_add_one (Nat.log p n))).symm
  have hlow : ∀ t ∈ S, δ + 1 ≤ t := by
    intro t ht
    obtain ⟨htI, hcarry⟩ := Finset.mem_filter.mp ht
    have ht1 : 1 ≤ t := (Finset.mem_Ico.mp htI).1
    by_cases h : p = i
    · have hne : t ≠ 1 := by
        intro htEq
        have hc := hcarry
        rw [htEq, pow_one, h, Nat.mod_self, Nat.zero_add] at hc
        have hmod := Nat.mod_lt (n - i) (by simpa only [h] using hp.pos : 0 < i)
        omega
      simpa only [δ, h, ↓reduceIte] using (show 2 ≤ t by omega)
    · simpa only [δ, h, ↓reduceIte, Nat.zero_add] using ht1
  have hex : ∃ t ∈ S, e + δ ≤ t := by
    by_contra h
    have hsub : S ⊆ Finset.Ico (δ + 1) (e + δ) := by
      intro t ht
      refine Finset.mem_Ico.mpr ⟨hlow t ht, ?_⟩
      by_contra hlt
      exact h ⟨t, ht, by omega⟩
    have hle := Finset.card_le_card hsub
    rw [hcard, Nat.card_Ico] at hle
    omega
  obtain ⟨t, ht, het⟩ := hex
  have ht1 : 1 ≤ t := (Finset.mem_Ico.mp (Finset.mem_filter.mp ht).1).1
  have hipow : i < p ^ t := by
    by_cases h : p = i
    · have ht2 : 2 ≤ t := by
        have hh := hlow t ht
        simpa only [δ, h, ↓reduceIte] using hh
      have hh := Nat.pow_lt_pow_right hp.one_lt (show 1 < t by omega)
      simpa only [pow_one, h] using hh
    · have hip : i < p := by omega
      exact hip.trans_le (le_self_pow hp.one_lt.le (by omega))
  have hcarry : p ^ t ≤ i + (n - i) % p ^ t := by
    simpa only [Nat.mod_eq_of_lt hipow] using (Finset.mem_filter.mp ht).2
  have hmod : (i + (n - i) % p ^ t) % p ^ t = n % p ^ t := by
    have hh : (i % p ^ t + (n - i) % p ^ t) % p ^ t = n % p ^ t := by
      rw [← Nat.add_mod, Nat.add_sub_of_le hin]
    simpa only [Nat.mod_eq_of_lt hipow] using hh
  have hrem : (n - i) % p ^ t < p ^ t := Nat.mod_lt _ (pow_pos hp.pos _)
  have hsmall : n % p ^ t < i := by
    rw [← hmod, Nat.mod_eq_sub_mod hcarry]
    exact (Nat.mod_le _ _).trans_lt (by omega)
  change n % p ^ (e + δ) < i
  rw [← Nat.mod_mod_of_dvd n (Nat.pow_dvd_pow p het)]
  exact (Nat.mod_le _ _).trans_lt hsmall

/-- A divisor of a positive term in a descending factorial divides that factorial. -/
theorem dvd_descFactorial_of_interval {N k t Q : ℕ}
    (hk : k ≤ N) (hlo : N - k < t) (hhi : t ≤ N) (hQt : Q ∣ t) :
    Q ∣ N.descFactorial k := by
  rw [Nat.descFactorial_eq_prod_range]
  have hmem : N - t ∈ Finset.range k := Finset.mem_range.mpr (by omega)
  have hd := Finset.dvd_prod_of_mem (fun r : ℕ ↦ N - r) hmem
  have heq : N - (N - t) = t := by omega
  rw [heq] at hd
  exact hQt.trans hd

/-- A selected actual binomial prime power transfers to two gap binomials.
The prime=i denominator factor is canceled using the extra numerator exponent. -/
theorem prime_power_gap_dvd {n i j d p e : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hnj : n = 2 * j + d) (hdi : i ≤ d)
    (hp : p.Prime) (hpi : i ≤ p) (he : 0 < e)
    (heval : e ≤ (n.choose i).factorization p) (havoid : ¬ p ∣ n.choose j) :
    p ^ e ∣ d.choose i * (d + i - 1).choose (i - 1) := by
  let Q := p ^ (e + if p = i then 1 else 0)
  let a := n % Q
  let b := j % Q
  have hin : i ≤ n := by omega
  have hjn : j ≤ n := by omega
  have ha : a < i := prime_power_numerator_mod_lt hp hpi hin he heval
  have hb : b ≤ a := by
    by_contra h
    apply havoid
    apply B699.prime_dvd_choose_of_mod_lt hp hjn (by omega : 1 ≤ e + if p = i then 1 else 0)
    change a < b
    omega
  have hmod : (d + 2 * b) % Q = a := by
    have hnmod : (2 * j + d) % Q = a := by
      rw [← hnj]
    simpa [b, Nat.add_mod, Nat.mul_mod, Nat.add_comm] using hnmod
  let t := d + 2 * b - a
  have hQt : Q ∣ t := by
    refine ⟨(d + 2 * b) / Q, ?_⟩
    have hh := Nat.mod_add_div (d + 2 * b) Q
    rw [hmod] at hh
    dsimp only [t]
    omega
  have htlo : d - i < t := by dsimp only [t]; omega
  have hthi : t ≤ d + i - 1 := by dsimp only [t]; omega
  have hprod : Q ∣ d.descFactorial i * (d + i - 1).descFactorial (i - 1) := by
    by_cases ht : t ≤ d
    · exact dvd_mul_of_dvd_left (dvd_descFactorial_of_interval hdi htlo ht hQt) _
    · apply dvd_mul_of_dvd_right
      apply dvd_descFactorial_of_interval (by omega : i - 1 ≤ d + i - 1) ?_ hthi hQt
      omega
  have hnum : Q ∣ (i.factorial * (i - 1).factorial) *
      (d.choose i * (d + i - 1).choose (i - 1)) := by
    rw [Nat.descFactorial_eq_factorial_mul_choose,
      Nat.descFactorial_eq_factorial_mul_choose] at hprod
    convert hprod using 1 <;> ring
  by_cases h : p = i
  · subst p
    have hf : i.factorial = i * (i - 1).factorial := by
      simpa only [show i - 1 + 1 = i by omega] using Nat.factorial_succ (i - 1)
    have hc : i ^ e ∣ ((i - 1).factorial * (i - 1).factorial) *
        (d.choose i * (d + i - 1).choose (i - 1)) := by
      apply Nat.dvd_of_mul_dvd_mul_left hp.pos
      simp only [Q, ↓reduceIte, pow_succ, hf] at hnum
      convert hnum using 1 <;> ring
    have hcop : (i ^ e).Coprime ((i - 1).factorial * (i - 1).factorial) := by
      apply Nat.coprime_mul_iff_right.mpr
      constructor <;> exact (hp.coprime_factorial_of_lt (by omega)).pow_left e
    exact hcop.dvd_of_dvd_mul_left hc
  · have hip : i < p := by omega
    have hcop : (p ^ e).Coprime (i.factorial * (i - 1).factorial) := by
      apply Nat.coprime_mul_iff_right.mpr
      constructor
      · exact (hp.coprime_factorial_of_lt hip).pow_left e
      · exact (hp.coprime_factorial_of_lt (by omega)).pow_left e
    apply hcop.dvd_of_dvd_mul_left
    simpa only [Q, h, ↓reduceIte, Nat.add_zero] using hnum

/-- Pairwise distinct prime powers can be assembled without losing exponents. -/
theorem prime_power_finset_prod_dvd (s : Finset ℕ) (f : ℕ → ℕ) (B : ℕ) :
    (∀ p ∈ s, p.Prime) → (∀ p ∈ s, p ^ f p ∣ B) →
      s.prod (fun p ↦ p ^ f p) ∣ B := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | @insert p s hps ih =>
      intro hprime hdvd
      rw [Finset.prod_insert hps]
      have hcop : (p ^ f p).Coprime (s.prod (fun q ↦ q ^ f q)) := by
        apply Nat.coprime_prod_right_iff.mpr
        intro q hq
        apply Nat.coprime_pow_primes _ _
          (hprime p (Finset.mem_insert_self p s))
          (hprime q (Finset.mem_insert_of_mem hq))
        intro heq
        subst q
        exact hps hq
      apply hcop.mul_dvd_of_dvd_of_dvd (hdvd p (Finset.mem_insert_self p s))
      exact ih (fun q hq ↦ hprime q (Finset.mem_insert_of_mem hq))
        (fun q hq ↦ hdvd q (Finset.mem_insert_of_mem hq))

/-- The complete p>=i part of the first binomial whose primes avoid the second. -/
def avoidingPart (n i j : ℕ) : ℕ :=
  ((n.choose i).primeFactors.filter (fun p ↦ i ≤ p ∧ ¬ p ∣ n.choose j)).prod
    (fun p ↦ p ^ (n.choose i).factorization p)

/-- Nonvacuous actual-factor transfer, valid for every legal triple in d>=i. -/
theorem actual_avoiding_part_gap_transfer {n i j d : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hnj : n = 2 * j + d) (hdi : i ≤ d) :
    avoidingPart n i j ∣ d.choose i * (d + i - 1).choose (i - 1) := by
  classical
  unfold avoidingPart
  apply prime_power_finset_prod_dvd
  · intro p hp
    exact Nat.prime_of_mem_primeFactors (Finset.mem_filter.mp hp).1
  · intro p hp
    obtain ⟨hmem, hpi, havoid⟩ := Finset.mem_filter.mp hp
    have hprime := Nat.prime_of_mem_primeFactors hmem
    have hchoose : n.choose i ≠ 0 := Nat.ne_of_gt (Nat.choose_pos (by omega))
    have he : 0 < (n.choose i).factorization p := by
      have hh := (hprime.dvd_iff_one_le_factorization hchoose).mp
        (Nat.dvd_of_mem_primeFactors hmem)
      omega
    exact prime_power_gap_dvd hi hij hnj hdi hprime hpi he le_rfl havoid

/-- Under noCommon the avoiding part is exactly the accepted full primePart. -/
theorem avoidingPart_eq_primePart_of_noCommon {n i j : ℕ}
    (hno : ¬ Common n i j) :
    avoidingPart n i j = B699BridgeAudit.primePart i (n.choose i) := by
  classical
  have hsets : (n.choose i).primeFactors.filter (fun p ↦ i ≤ p ∧ ¬ p ∣ n.choose j) =
      (n.choose i).primeFactors.filter (fun p ↦ i ≤ p) := by
    ext p
    simp only [Finset.mem_filter]
    constructor
    · exact fun h ↦ ⟨h.1, h.2.1⟩
    · rintro ⟨hmem, hpi⟩
      refine ⟨hmem, hpi, ?_⟩
      intro hpj
      exact hno ⟨p, Nat.prime_of_mem_primeFactors hmem, hpi,
        Nat.dvd_gcd (Nat.dvd_of_mem_primeFactors hmem) hpj⟩
  unfold avoidingPart B699BridgeAudit.primePart
  rw [hsets]

/-- Original-target noCommon consumer using actual complete p>=i exponents. -/
theorem actual_prime_part_gap_transfer {n i j : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (_hjn : j ≤ n / 2) (hdi : i ≤ n - 2 * j)
    (hno : ¬ Common n i j) :
    B699BridgeAudit.primePart i (n.choose i) ∣
      (n - 2 * j).choose i * (n - 2 * j + i - 1).choose (i - 1) := by
  rw [← avoidingPart_eq_primePart_of_noCommon hno]
  exact actual_avoiding_part_gap_transfer hi hij (by omega) hdi

/-- A computable failure of the necessary gap divisibility gives the original witness. -/
theorem common_of_gap_product_not_dvd {n i j : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hdi : i ≤ n - 2 * j)
    (hnot : ¬ B699BridgeAudit.primePart i (n.choose i) ∣
      (n - 2 * j).choose i * (n - 2 * j + i - 1).choose (i - 1)) :
    Common n i j := by
  by_contra hno
  exact hnot (actual_prime_part_gap_transfer hi hij hjn hdi hno)

/-- Parameterized use of the nonvacuous actual avoiding-part interface. -/
example (i j d : ℕ) (hi : 2 ≤ i) (hij : i < j) (hdi : i ≤ d) :
    avoidingPart (2 * j + d) i j ∣ d.choose i * (d + i - 1).choose (i - 1) := by
  exact actual_avoiding_part_gap_transfer hi hij rfl hdi
end B699LargePrimeStructure

#print axioms B699LargePrimeStructure.prime_power_numerator_mod_lt
#print axioms B699LargePrimeStructure.prime_power_gap_dvd
#print axioms B699LargePrimeStructure.actual_avoiding_part_gap_transfer
#print axioms B699LargePrimeStructure.avoidingPart_eq_primePart_of_noCommon
#print axioms B699LargePrimeStructure.actual_prime_part_gap_transfer
#print axioms B699LargePrimeStructure.common_of_gap_product_not_dvd

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LargePrimeStructure

/-- The number of primes strictly below i; this is pi(i-1), with no endpoint shift. -/
def smallPrimeCount (i : ℕ) : ℕ := ((Finset.range i).filter Nat.Prime).card

/-- The complete complementary prime-power part of the first binomial. -/
def smallPrimePart (n i : ℕ) : ℕ :=
  ((n.choose i).primeFactors.filter (fun p ↦ p < i)).prod
    (fun p ↦ p ^ (n.choose i).factorization p)

/-- The small and large parts reconstruct the actual nonzero binomial. -/
theorem smallPrimePart_mul_primePart {n i : ℕ} (hin : i ≤ n) :
    smallPrimePart n i * B699BridgeAudit.primePart i (n.choose i) = n.choose i := by
  classical
  unfold smallPrimePart B699BridgeAudit.primePart
  calc
    _ = (n.choose i).primeFactors.prod (fun p ↦ p ^ (n.choose i).factorization p) := by
      simpa only [Nat.not_lt] using Finset.prod_filter_mul_prod_filter_not
        (n.choose i).primeFactors (fun p ↦ p < i)
        (fun p ↦ p ^ (n.choose i).factorization p)
    _ = n.choose i :=
      (Nat.prod_primeFactors_pow_factorization (Nat.ne_of_gt (Nat.choose_pos hin))).symm

/-- Each small-prime power is at most n by the existing Kummer logarithmic bound. -/
theorem smallPrimePart_le_pow_smallPrimeCount {n i : ℕ} (hn : 0 < n) :
    smallPrimePart n i ≤ n ^ smallPrimeCount i := by
  classical
  let S := (n.choose i).primeFactors.filter (fun p ↦ p < i)
  have hsub : S ⊆ (Finset.range i).filter Nat.Prime := by
    intro p hp
    obtain ⟨hmem, hpi⟩ := Finset.mem_filter.mp hp
    exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr hpi,
      Nat.prime_of_mem_primeFactors hmem⟩
  have hprod : S.prod (fun p ↦ p ^ (n.choose i).factorization p) ≤ n ^ S.card :=
    Finset.prod_le_pow_card S _ n (fun _ _ ↦ Nat.pow_factorization_choose_le hn)
  exact hprod.trans (pow_le_pow_right' (by omega : 1 ≤ n) (Finset.card_le_card hsub))

/-- A source-independent size obstruction using the elementary small-prime bound.
This does not use EEES or any analytic prime-distribution assumption. -/
theorem noCommon_choose_le_smallPrime_gap_bound {n i j : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hdi : i ≤ n - 2 * j)
    (hno : ¬ Common n i j) :
    n.choose i ≤ n ^ smallPrimeCount i *
      ((n - 2 * j).choose i * (n - 2 * j + i - 1).choose (i - 1)) := by
  have hin : i ≤ n := by omega
  have hn : 0 < n := by omega
  have hB : 0 < (n - 2 * j).choose i * (n - 2 * j + i - 1).choose (i - 1) :=
    Nat.mul_pos (Nat.choose_pos hdi) (Nat.choose_pos (by omega))
  have hlarge := actual_prime_part_gap_transfer hi hij hjn hdi hno
  calc
    n.choose i = smallPrimePart n i * B699BridgeAudit.primePart i (n.choose i) :=
      (smallPrimePart_mul_primePart hin).symm
    _ ≤ _ := Nat.mul_le_mul (smallPrimePart_le_pow_smallPrimeCount hn)
      (Nat.le_of_dvd hB hlarge)

/-- The elementary size comparison produces an original B699 common prime. -/
theorem common_of_elementary_gap_comparison {n i j : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hdi : i ≤ n - 2 * j)
    (hcompare : n ^ smallPrimeCount i *
      ((n - 2 * j).choose i * (n - 2 * j + i - 1).choose (i - 1)) < n.choose i) :
    Common n i j := by
  by_contra hno
  exact (Nat.not_le_of_gt hcompare)
    (noCommon_choose_le_smallPrime_gap_bound hi hij hjn hdi hno)
end B699LargePrimeStructure

#print axioms B699LargePrimeStructure.smallPrimePart_mul_primePart
#print axioms B699LargePrimeStructure.smallPrimePart_le_pow_smallPrimeCount
#print axioms B699LargePrimeStructure.noCommon_choose_le_smallPrime_gap_bound
#print axioms B699LargePrimeStructure.common_of_elementary_gap_comparison

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex
open B699LargePrimeStructure

/-- The child windows with all lower indices from 1 through s. -/
def childWindows (N s : ℕ) : ℕ :=
  ∏ h ∈ Finset.Icc 1 s, N.choose h

/-- The mother windows ending before the last r numerator positions. -/
def motherWindows (n i r : ℕ) : ℕ :=
  ∏ h ∈ Finset.Icc 1 (i - r - 1), (n - i + h).choose h

/-- An integer attached to the original input and two independent cutoffs. -/
def threeWindowProduct (n i j r s : ℕ) : ℕ :=
  childWindows j s * childWindows (n - j) s * motherWindows n i r

/-- No carry at a modulus means the two child residues add without wrapping. -/
theorem split_remainders {j k Q : ℕ} (hQ : 0 < Q)
    (hno : j % Q ≤ (j + k) % Q) :
    j % Q + k % Q = (j + k) % Q := by
  have hj := Nat.mod_lt j hQ
  have hk := Nat.mod_lt k hQ
  have hmod := Nat.add_mod j k Q
  by_cases hlt : j % Q + k % Q < Q
  · simpa only [Nat.mod_eq_of_lt hlt] using hmod.symm
  · have hle : Q ≤ j % Q + k % Q := by omega
    have hsub : j % Q + k % Q - Q < Q := by omega
    rw [Nat.mod_eq_sub_mod hle, Nat.mod_eq_of_lt hsub] at hmod
    omega

/-- Actual complete binomial prime powers localize simultaneously in three
numerator positions. The old numerator lemma supplies the extra p at p=i. -/
theorem prime_power_three_positions {n i j p e : ℕ}
    (_hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hp : p.Prime) (hpi : i ≤ p) (he : 0 < e)
    (heval : e ≤ (n.choose i).factorization p)
    (havoid : ¬ p ∣ n.choose j) :
    ∃ a b c : ℕ, a < i ∧ b + c = a ∧
      p ^ e ∣ n - a ∧ p ^ e ∣ j - b ∧ p ^ e ∣ (n - j) - c := by
  let Q := p ^ (e + if p = i then 1 else 0)
  let a := n % Q
  let b := j % Q
  let c := (n - j) % Q
  have hQ : 0 < Q := pow_pos hp.pos _
  have ha : a < i := prime_power_numerator_mod_lt hp hpi (by omega) he heval
  have hb : b ≤ a := by
    by_contra h
    apply havoid
    apply B699.prime_dvd_choose_of_mod_lt hp (by omega)
      (by omega : 1 ≤ e + if p = i then 1 else 0)
    change a < b
    omega
  have hsum : b + c = a := by
    have hn : j + (n - j) = n := by omega
    simpa only [hn] using split_remainders (j := j) (k := n - j) hQ
      (by simpa only [hn] using hb)
  have hpow : p ^ e ∣ Q := Nat.pow_dvd_pow p (by omega)
  have hd : ∀ N : ℕ, Q ∣ N - N % Q := by
    intro N
    refine ⟨N / Q, ?_⟩
    have hm := Nat.mod_add_div N Q
    omega
  exact ⟨a, b, c, ha, hsum, hpow.trans (hd n), hpow.trans (hd j),
    hpow.trans (hd (n - j))⟩

/-- A complete prime power in one numerator term survives a smaller factorial. -/
theorem prime_power_dvd_choose_of_position {N h b p e : ℕ}
    (hp : p.Prime) (hhp : h < p) (hhN : h ≤ N)
    (hbh : b < h) (hdiv : p ^ e ∣ N - b) :
    p ^ e ∣ N.choose h := by
  have hd : p ^ e ∣ N.descFactorial h :=
    dvd_descFactorial_of_interval hhN (by omega) (Nat.sub_le N b) hdiv
  rw [Nat.descFactorial_eq_factorial_mul_choose] at hd
  exact ((hp.coprime_factorial_of_lt hhp).pow_left e).dvd_of_dvd_mul_left hd

/-- Repeated child windows collect one full power for each index above b. -/
theorem prime_power_child_windows {N i s b p e : ℕ}
    (hp : p.Prime) (hpi : i ≤ p) (hsi : s < i) (hiN : i ≤ N)
    (hdiv : p ^ e ∣ N - b) :
    p ^ (e * (s - b)) ∣ childWindows N s := by
  have hlocal : ∀ h ∈ Finset.Icc (b + 1) s, p ^ e ∣ N.choose h := by
    intro h hh
    obtain ⟨hlo, hhi⟩ := Finset.mem_Icc.mp hh
    exact prime_power_dvd_choose_of_position hp (by omega) (by omega) (by omega) hdiv
  have hd := Finset.prod_dvd_prod_of_dvd (s := Finset.Icc (b + 1) s)
    (fun _ ↦ p ^ e) (fun h ↦ N.choose h) hlocal
  have hsub : Finset.Icc (b + 1) s ⊆ Finset.Icc 1 s := by
    intro h hh
    simp only [Finset.mem_Icc] at hh ⊢
    omega
  have hd2 := hd.trans (Finset.prod_dvd_prod_of_subset _ _ _ hsub)
  simpa only [Finset.prod_const, Nat.card_Icc, Nat.add_sub_add_right, ← pow_mul,
    childWindows] using hd2

/-- Repeated mother windows collect the full powers beyond cutoff r. -/
theorem prime_power_mother_windows {n i r a p e : ℕ}
    (hp : p.Prime) (hpi : i ≤ p) (hin : i ≤ n) (ha : a < i)
    (hdiv : p ^ e ∣ n - a) :
    p ^ (e * (a - r)) ∣ motherWindows n i r := by
  have hlocal : ∀ h ∈ Finset.Icc (i - a) (i - r - 1),
      p ^ e ∣ (n - i + h).choose h := by
    intro h hh
    obtain ⟨hlo, hhi⟩ := Finset.mem_Icc.mp hh
    have hhN : h ≤ n - i + h := by omega
    have hd : p ^ e ∣ (n - i + h).descFactorial h :=
      dvd_descFactorial_of_interval hhN (by omega) (by omega) hdiv
    rw [Nat.descFactorial_eq_factorial_mul_choose] at hd
    exact ((hp.coprime_factorial_of_lt (by omega : h < p)).pow_left e).dvd_of_dvd_mul_left hd
  have hd := Finset.prod_dvd_prod_of_dvd (s := Finset.Icc (i - a) (i - r - 1))
    (fun _ ↦ p ^ e) (fun h ↦ (n - i + h).choose h) hlocal
  have hsub : Finset.Icc (i - a) (i - r - 1) ⊆ Finset.Icc 1 (i - r - 1) := by
    intro h hh
    simp only [Finset.mem_Icc] at hh ⊢
    omega
  have hd2 := hd.trans (Finset.prod_dvd_prod_of_subset _ _ _ hsub)
  have hcard : (Finset.Icc (i - a) (i - r - 1)).card = a - r := by
    rw [Nat.card_Icc]
    omega
  simpa only [Finset.prod_const, hcard, ← pow_mul, motherWindows] using hd2

/-- The two cutoffs give a uniform covering weight for every split a=b+c. -/
theorem three_window_weight_cover (a b c r s : ℕ) (hsplit : b + c = a) :
    2 * s - r ≤ (s - b) + (s - c) + (a - r) := by
  omega

/-- Every actual avoiding prime supplies the full weighted exponent. -/
theorem prime_power_three_window_dvd {n i j r s p e : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hsi : s < i) (hp : p.Prime) (hpi : i ≤ p) (he : 0 < e)
    (heval : e ≤ (n.choose i).factorization p)
    (havoid : ¬ p ∣ n.choose j) :
    p ^ (e * (2 * s - r)) ∣ threeWindowProduct n i j r s := by
  obtain ⟨a, b, c, ha, hsum, hn, hj, hk⟩ :=
    prime_power_three_positions hi hij hjn hp hpi he heval havoid
  have hleft := prime_power_child_windows hp hpi hsi (by omega : i ≤ j) hj
  have hright := prime_power_child_windows hp hpi hsi (by omega : i ≤ n - j) hk
  have hmother := prime_power_mother_windows (r := r) hp hpi (by omega : i ≤ n) ha hn
  have hmul := Nat.mul_dvd_mul (Nat.mul_dvd_mul hleft hright) hmother
  have hcover := three_window_weight_cover a b c r s hsum
  have hexp : e * (2 * s - r) ≤ e * (s - b) + e * (s - c) + e * (a - r) := by
    simpa only [Nat.mul_add] using Nat.mul_le_mul_left e hcover
  have hpow := Nat.pow_dvd_pow p hexp
  apply hpow.trans
  simpa only [pow_add, threeWindowProduct] using hmul

/-- Unconditional actual-D statement: no counterexample premise is needed. -/
theorem actual_avoiding_part_three_window_transfer {n i j r s : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i) :
    avoidingPart n i j ^ (2 * s - r) ∣ threeWindowProduct n i j r s := by
  classical
  unfold avoidingPart
  rw [← Finset.prod_pow]
  simp_rw [← pow_mul]
  apply prime_power_finset_prod_dvd
  · intro p hp
    exact Nat.prime_of_mem_primeFactors (Finset.mem_filter.mp hp).1
  · intro p hp
    obtain ⟨hmem, hpi, havoid⟩ := Finset.mem_filter.mp hp
    have hprime := Nat.prime_of_mem_primeFactors hmem
    have hchoose : n.choose i ≠ 0 := Nat.ne_of_gt (Nat.choose_pos (by omega))
    have he : 0 < (n.choose i).factorization p := by
      have hh := (hprime.dvd_iff_one_le_factorization hchoose).mp
        (Nat.dvd_of_mem_primeFactors hmem)
      omega
    exact prime_power_three_window_dvd hi hij hjn hsi hprime hpi he le_rfl havoid

/-- The same weighted integer condition for a genuine original counterexample. -/
theorem actual_prime_part_three_window_transfer {n i j r s : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hno : ¬ Common n i j) :
    B699BridgeAudit.primePart i (n.choose i) ^ (2 * s - r) ∣
      threeWindowProduct n i j r s := by
  rw [← avoidingPart_eq_primePart_of_noCommon hno]
  exact actual_avoiding_part_three_window_transfer hi hij hjn hsi

/-- A computable failure of the new necessary condition returns the raw target. -/
theorem common_of_three_window_not_dvd {n i j r s : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hnot : ¬ B699BridgeAudit.primePart i (n.choose i) ^ (2 * s - r) ∣
      threeWindowProduct n i j r s) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  by_contra hno
  exact hnot (actual_prime_part_three_window_transfer hi hij hjn hsi hno)


/-- Positivity of every child product in the original range. -/
theorem child_windows_pos {N i s : ℕ} (hsi : s < i) (hiN : i ≤ N) :
    0 < childWindows N s := by
  unfold childWindows
  apply Finset.prod_pos
  intro h hh
  have := (Finset.mem_Icc.mp hh).2
  exact Nat.choose_pos (by omega)

/-- Positivity of the mother product, including an empty product. -/
theorem mother_windows_pos {n i r : ℕ} (hin : i ≤ n) :
    0 < motherWindows n i r := by
  unfold motherWindows
  apply Finset.prod_pos
  intro h _
  exact Nat.choose_pos (by omega)

/-- The integer upper bound used in the elementary original-target consumer. -/
theorem noCommon_three_window_size {n i j r s : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hno : ¬ Common n i j) :
    (n.choose i) ^ (2 * s - r) ≤
      n ^ (smallPrimeCount i * (2 * s - r)) * threeWindowProduct n i j r s := by
  have hn : 0 < n := by omega
  have hZ : 0 < threeWindowProduct n i j r s := by
    unfold threeWindowProduct
    exact Nat.mul_pos (Nat.mul_pos
      (child_windows_pos hsi (by omega : i ≤ j))
      (child_windows_pos hsi (by omega : i ≤ n - j)))
      (mother_windows_pos (by omega : i ≤ n))
  have hlarge := Nat.le_of_dvd hZ
    (actual_prime_part_three_window_transfer hi hij hjn hsi hno)
  have hsmall := smallPrimePart_le_pow_smallPrimeCount (i := i) hn
  calc
    (n.choose i) ^ (2 * s - r) =
        (smallPrimePart n i * B699BridgeAudit.primePart i (n.choose i)) ^
          (2 * s - r) := by
      rw [smallPrimePart_mul_primePart (by omega : i ≤ n)]
    _ = (smallPrimePart n i) ^ (2 * s - r) *
        B699BridgeAudit.primePart i (n.choose i) ^ (2 * s - r) := mul_pow _ _ _
    _ ≤ (n ^ smallPrimeCount i) ^ (2 * s - r) *
        threeWindowProduct n i j r s :=
      Nat.mul_le_mul (Nat.pow_le_pow_left hsmall _) hlarge
    _ = _ := by rw [← pow_mul]

/-- A purely numerical strict comparison gives the complete original conclusion.
There is no EEES, discriminant, or unproved structural premise. -/
theorem common_of_three_window_comparison {n i j r s : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hcompare : n ^ (smallPrimeCount i * (2 * s - r)) *
      threeWindowProduct n i j r s < (n.choose i) ^ (2 * s - r)) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  by_contra hno
  exact (Nat.not_le_of_gt hcompare) (noCommon_three_window_size hi hij hjn hsi hno)

end B699LowIndex

#print axioms B699LowIndex.prime_power_three_positions
#print axioms B699LowIndex.prime_power_three_window_dvd
#print axioms B699LowIndex.actual_avoiding_part_three_window_transfer
#print axioms B699LowIndex.actual_prime_part_three_window_transfer
#print axioms B699LowIndex.common_of_three_window_not_dvd

#print axioms B699LowIndex.noCommon_three_window_size
#print axioms B699LowIndex.common_of_three_window_comparison

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex
open B699LargePrimeStructure

/-- The exact sum of the window lengths. -/
def windowSum (s : ℕ) : ℕ := ∑ h ∈ Finset.Icc 1 s, h

/-- The exact factorial denominator from a family of binomial windows. -/
def windowFactorials (s : ℕ) : ℕ := ∏ h ∈ Finset.Icc 1 s, h.factorial

def windowDegree (i r s : ℕ) : ℕ :=
  2 * windowSum s + windowSum (i - r - 1)

def windowConstant (i r s : ℕ) : ℕ :=
  2 ^ (2 * windowSum s) * (windowFactorials s) ^ 2 *
    windowFactorials (i - r - 1)

theorem two_window_sum (s : ℕ) : 2 * windowSum s = s * (s + 1) := by
  have hset : Finset.range (s + 1) = insert 0 (Finset.Icc 1 s) := by
    ext h
    simp only [Finset.mem_range, Finset.mem_insert, Finset.mem_Icc]
    omega
  have hzero : 0 ∉ Finset.Icc 1 s := by simp
  have hs : (∑ h ∈ Finset.range (s + 1), h) = windowSum s := by
    rw [hset, Finset.sum_insert hzero]
    simp only [Nat.zero_add, windowSum]
  have h := Finset.sum_range_id_mul_two (s + 1)
  rw [hs] at h
  simpa only [Nat.add_sub_cancel, Nat.mul_comm] using h

theorem window_sum_eq (s : ℕ) : windowSum s = s * (s + 1) / 2 := by
  have h := two_window_sum s
  omega

theorem window_degree_formula (i r s : ℕ) :
    windowDegree i r s =
      s * (s + 1) + (i - r - 1) * (i - r) / 2 := by
  unfold windowDegree
  rw [two_window_sum, window_sum_eq]
  by_cases h : r < i
  · have he : i - r - 1 + 1 = i - r := by omega
    rw [he]
  · have he : i - r = 0 := by omega
    simp [he]

theorem window_constant_formula (i r s : ℕ) :
    windowConstant i r s =
      2 ^ (s * (s + 1)) * (windowFactorials s) ^ 2 *
        windowFactorials (i - r - 1) := by
  unfold windowConstant
  rw [two_window_sum]

/-- No factorial normalization is lost in the child bound. -/
theorem child_windows_scaled_upper (N s : ℕ) :
    windowFactorials s * childWindows N s ≤ N ^ windowSum s := by
  unfold windowFactorials childWindows
  calc
    _ = ∏ h ∈ Finset.Icc 1 s, h.factorial * N.choose h :=
      (Finset.prod_mul_distrib).symm
    _ ≤ ∏ h ∈ Finset.Icc 1 s, N ^ h := by
      apply Finset.prod_le_prod (fun _ _ ↦ Nat.zero_le _)
      intro h _
      rw [← Nat.descFactorial_eq_factorial_mul_choose]
      exact Nat.descFactorial_le_pow N h
    _ = _ := by rw [Finset.prod_pow_eq_pow_sum]; rfl

theorem mother_windows_scaled_upper {n i r : ℕ} (hin : i ≤ n) :
    windowFactorials (i - r - 1) * motherWindows n i r ≤
      n ^ windowSum (i - r - 1) := by
  unfold windowFactorials motherWindows
  calc
    _ = ∏ h ∈ Finset.Icc 1 (i - r - 1),
        h.factorial * (n - i + h).choose h := (Finset.prod_mul_distrib).symm
    _ ≤ ∏ h ∈ Finset.Icc 1 (i - r - 1), n ^ h := by
      apply Finset.prod_le_prod (fun _ _ ↦ Nat.zero_le _)
      intro h hh
      have hh' := (Finset.mem_Icc.mp hh).2
      rw [← Nat.descFactorial_eq_factorial_mul_choose]
      exact (Nat.descFactorial_le_pow (n - i + h) h).trans
        (Nat.pow_le_pow_left (by omega : n - i + h ≤ n) h)
    _ = _ := by rw [Finset.prod_pow_eq_pow_sum]; rfl

theorem four_mul_product_le_square (j k : ℕ) :
    4 * (j * k) ≤ (j + k) ^ 2 := by
  rcases le_total j k with h | h
  · have he : k = j + (k - j) := by omega
    rw [he]
    nlinarith
  · have he : j = k + (j - k) := by omega
    rw [he]
    nlinarith

/-- A uniform bound for all j, retaining the complete exact factorial constant. -/
theorem three_window_scaled_upper {n i j r s : ℕ}
    (hin : i ≤ n) (hjn : j ≤ n) :
    windowConstant i r s * threeWindowProduct n i j r s ≤
      n ^ windowDegree i r s := by
  let T := windowSum s
  let L := i - r - 1
  let B := windowFactorials s
  have hx := child_windows_scaled_upper j s
  have hy := child_windows_scaled_upper (n - j) s
  have hc : B ^ 2 * (childWindows j s * childWindows (n - j) s) ≤
      (j * (n - j)) ^ T := by
    calc
      _ = (B * childWindows j s) * (B * childWindows (n - j) s) := by ring
      _ ≤ j ^ T * (n - j) ^ T := Nat.mul_le_mul hx hy
      _ = _ := (mul_pow _ _ _).symm
  have hjk : 4 * (j * (n - j)) ≤ n ^ 2 := by
    have hn : j + (n - j) = n := by omega
    simpa only [hn] using four_mul_product_le_square j (n - j)
  have hchildren :
      2 ^ (2 * T) * (B ^ 2 * (childWindows j s * childWindows (n - j) s)) ≤
        n ^ (2 * T) := by
    calc
      _ ≤ 2 ^ (2 * T) * (j * (n - j)) ^ T := Nat.mul_le_mul_left _ hc
      _ = (4 * (j * (n - j))) ^ T := by
        rw [show (4 : ℕ) = 2 ^ 2 by decide]
        simp only [mul_pow, pow_mul]
      _ ≤ (n ^ 2) ^ T := Nat.pow_le_pow_left hjk T
      _ = _ := by rw [← pow_mul]
  have hm := mother_windows_scaled_upper (r := r) hin
  calc
    windowConstant i r s * threeWindowProduct n i j r s =
        (2 ^ (2 * T) * (B ^ 2 * (childWindows j s * childWindows (n - j) s))) *
          (windowFactorials L * motherWindows n i r) := by
      unfold windowConstant threeWindowProduct
      dsimp only [T, B, L]
      ring
    _ ≤ n ^ (2 * T) * n ^ windowSum L := Nat.mul_le_mul hchildren hm
    _ = n ^ windowDegree i r s := by
      rw [← pow_add]
      rfl

/-- Every actual original counterexample obeys a j-independent size inequality. -/
theorem noCommon_scaled_prime_part {n i j r s : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hno : ¬ Common n i j) :
    windowConstant i r s * B699BridgeAudit.primePart i (n.choose i) ^ (2 * s - r) ≤
      n ^ windowDegree i r s := by
  have hZ : 0 < threeWindowProduct n i j r s := by
    unfold threeWindowProduct
    exact Nat.mul_pos (Nat.mul_pos
      (child_windows_pos hsi (by omega : i ≤ j))
      (child_windows_pos hsi (by omega : i ≤ n - j)))
      (mother_windows_pos (by omega : i ≤ n))
  have hv := Nat.le_of_dvd hZ
    (actual_prime_part_three_window_transfer hi hij hjn hsi hno)
  exact (Nat.mul_le_mul_left (windowConstant i r s) hv).trans
    (three_window_scaled_upper (by omega) (by omega))

/-- One exact comparison at (n,i) supplies the original conclusion for every
legal j. The complete prime part includes p=i and all its exponents. -/
theorem common_of_scaled_prime_part {n i j r s : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hcompare : n ^ windowDegree i r s <
      windowConstant i r s * B699BridgeAudit.primePart i (n.choose i) ^ (2 * s - r)) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  by_contra hno
  exact (Nat.not_le_of_gt hcompare) (noCommon_scaled_prime_part hi hij hjn hsi hno)

end B699LowIndex

#print axioms B699LowIndex.two_window_sum
#print axioms B699LowIndex.three_window_scaled_upper
#print axioms B699LowIndex.noCommon_scaled_prime_part
#print axioms B699LowIndex.common_of_scaled_prime_part

/-
Vendored from williamjblair/lean-proofs at aff1d30b3b1c6bd705810fa4d588b03940fb31df.
Original formalization provenance is preserved below.
Distribution license from that fixed upstream commit:

MIT License

Copyright (c) 2026 Will Blair

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

---

NOTICE — third-party files

ErdosProblems/Erdos154.lean is a third-party formalization included as a build
dependency for the 154 sumset proof. It is the Lean formalization of Lindström's
residue-distribution theorem for Sidon sets (formal authors Aristotle and Wouter
van Doorn), hosted via plby/lean-proofs, and is used under its original license
as stated in its file header. Mathlib is licensed under Apache-2.0.

-/

/-
Minimal unchanged proof-body slice from the accepted vendored SylvesterSchurSource.
Source baseline: 37e42aca251c33c62cbc2c40f286daa0526d79ee.
Path: research/tasks/B686-Four/runs/20260908-formalization-92c221/lean/shortgap/sylvester/SylvesterSchurSource.lean.
Original source: AllenGrahamHart/FormalConjectures-Bench@482dacc4d9335240f26218cdc62032da3100392b,
formalizations/erdos699/Erdos699Formalization.lean, through Will Blair's MIT vendored slice.
The three sliced proof bodies are unchanged; focused imports and namespace are changed.
The final choose_ratio_lower_bound is a new extension in this run, separately attributed.
No large upstream acceptance is rerun.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699Power

lemma succ_pow_mul_sub_le_pow_mul_succ {N r : ℕ} (hr : r ≤ N + 1) :
    (N + 1) ^ r * (N + 1 - r) ≤ N ^ r * (N + 1) := by
  induction r with
  | zero => simp
  | succ r ih =>
      have hr' : r ≤ N + 1 := by omega
      have ih' := ih hr'
      have hsub : N + 1 - (r + 1) = N - r := by omega
      have hsub2 : N + 1 - r = N - r + 1 := by omega
      have hmul_step : (N + 1) * (N - r) ≤ N * (N + 1 - r) := by
        rw [hsub2, Nat.mul_add, Nat.mul_one, Nat.succ_mul]
        exact Nat.add_le_add_left (Nat.sub_le N r) (N * (N - r))
      calc
        (N + 1) ^ (r + 1) * (N + 1 - (r + 1))
            = (N + 1) ^ r * ((N + 1) * (N - r)) := by
              rw [pow_succ, hsub]
              ring
        _ ≤ (N + 1) ^ r * (N * (N + 1 - r)) :=
              Nat.mul_le_mul_left _ hmul_step
        _ = ((N + 1) ^ r * (N + 1 - r)) * N := by ring
        _ ≤ (N ^ r * (N + 1)) * N := Nat.mul_le_mul_right _ ih'
        _ = N ^ (r + 1) * (N + 1) := by
              rw [pow_succ]
              ring


lemma pow_le_pow_mul_choose (n k : ℕ) (hk : k ≤ n) :
    n ^ k ≤ k ^ k * Nat.choose n k := by
  refine Nat.le_induction (m := k)
    (P := fun N _ => N ^ k ≤ k ^ k * Nat.choose N k) ?_ ?_ n hk
  · simp
  · intro N hkN ih
    have hsub_pos : 0 < N + 1 - k := by omega
    refine Nat.le_of_mul_le_mul_right ?_ hsub_pos
    calc
      (N + 1) ^ k * (N + 1 - k) ≤ N ^ k * (N + 1) :=
        succ_pow_mul_sub_le_pow_mul_succ (N := N) (r := k) (by omega)
      _ ≤ (k ^ k * Nat.choose N k) * (N + 1) :=
        Nat.mul_le_mul_right _ ih
      _ = k ^ k * (Nat.choose N k * (N + 1)) := by ring
      _ = k ^ k * (Nat.choose (N + 1) k * (N + 1 - k)) := by
        rw [Nat.choose_mul_succ_eq]
      _ = (k ^ k * Nat.choose (N + 1) k) * (N + 1 - k) := by ring


lemma pow_mul_pow_half_lt_pow_of_sq_lt {n i : ℕ} (hi : 0 < i) (hlarge : i ^ 2 < n) :
    i ^ i * n ^ (i / 2) < n ^ i := by
  let r := i / 2
  let d := i - r
  have hd_pos : 0 < d := by
    dsimp [d, r]
    omega
  have hi_exp_le : i ≤ 2 * d := by
    dsimp [d, r]
    omega
  have hi_pow_lt : i ^ i < n ^ d := by
    calc
      i ^ i ≤ i ^ (2 * d) := Nat.pow_le_pow_right hi hi_exp_le
      _ = (i ^ 2) ^ d := by rw [pow_mul]
      _ < n ^ d := Nat.pow_lt_pow_left hlarge hd_pos.ne'
  calc
    i ^ i * n ^ (i / 2) = i ^ i * n ^ r := by rfl
    _ < n ^ d * n ^ r :=
      Nat.mul_lt_mul_of_pos_right hi_pow_lt (Nat.pow_pos (a := n) (n := r) (by omega))
    _ = n ^ (d + r) := by rw [← pow_add]
    _ = n ^ i := by
      congr 1
      dsimp [d, r]
      omega

/-- Relative version of `pow_le_pow_mul_choose`, retaining a second binomial
coefficient. The top-index induction starts at `j` instead of `i`. -/
theorem choose_ratio_lower_bound {n i j : ℕ} (hij : i ≤ j) (hjn : j ≤ n) :
    n ^ i * j.choose i ≤ j ^ i * n.choose i := by
  refine Nat.le_induction (m := j)
    (P := fun N _ ↦ N ^ i * j.choose i ≤ j ^ i * N.choose i) ?_ ?_ n hjn
  · exact le_rfl
  · intro N hjN ih
    have hsub_pos : 0 < N + 1 - i := by omega
    refine Nat.le_of_mul_le_mul_right ?_ hsub_pos
    calc
      (N + 1) ^ i * j.choose i * (N + 1 - i) =
          ((N + 1) ^ i * (N + 1 - i)) * j.choose i := by ring
      _ ≤ (N ^ i * (N + 1)) * j.choose i :=
        Nat.mul_le_mul_right _ (succ_pow_mul_sub_le_pow_mul_succ (by omega))
      _ = (N ^ i * j.choose i) * (N + 1) := by ring
      _ ≤ (j ^ i * N.choose i) * (N + 1) := Nat.mul_le_mul_right _ ih
      _ = j ^ i * (N.choose i * (N + 1)) := by ring
      _ = j ^ i * ((N + 1).choose i * (N + 1 - i)) := by
        rw [Nat.choose_mul_succ_eq]
      _ = (j ^ i * (N + 1).choose i) * (N + 1 - i) := by ring

end B699Power

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex
open B699LargePrimeStructure

/-- The power exponent appearing after the elementary U bound. -/
def heightExponent (i r s : ℕ) : ℕ :=
  smallPrimeCount i * (2 * s - r) + windowDegree i r s

/-- All exponents and constants here are integers; no asymptotic premise is used. -/
theorem noCommon_scaled_choose {n i j r s : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hno : ¬ Common n i j) :
    windowConstant i r s * (n.choose i) ^ (2 * s - r) ≤
      n ^ heightExponent i r s := by
  have hn : 0 < n := by omega
  have hu := smallPrimePart_le_pow_smallPrimeCount (i := i) hn
  have hv := noCommon_scaled_prime_part (r := r) hi hij hjn hsi hno
  calc
    _ = windowConstant i r s *
        (smallPrimePart n i * B699BridgeAudit.primePart i (n.choose i)) ^
          (2 * s - r) := by
      rw [smallPrimePart_mul_primePart (by omega : i ≤ n)]
    _ = (smallPrimePart n i) ^ (2 * s - r) *
        (windowConstant i r s *
          B699BridgeAudit.primePart i (n.choose i) ^ (2 * s - r)) := by
      rw [mul_pow]
      ring
    _ ≤ (n ^ smallPrimeCount i) ^ (2 * s - r) * n ^ windowDegree i r s :=
      Nat.mul_le_mul (Nat.pow_le_pow_left hu _) hv
    _ = _ := by rw [← pow_mul, ← pow_add]; rfl

theorem power_cross_mono {N n a b : ℕ} (hNn : N ≤ n) (hab : a ≤ b) :
    N ^ b * n ^ a ≤ n ^ b * N ^ a := by
  have hN : N ^ b = N ^ a * N ^ (b - a) := by
    rw [← pow_add, Nat.add_sub_of_le hab]
  have hn : n ^ b = n ^ a * n ^ (b - a) := by
    rw [← pow_add, Nat.add_sub_of_le hab]
  calc
    _ = N ^ (b - a) * (N ^ a * n ^ a) := by rw [hN]; ring
    _ ≤ n ^ (b - a) * (N ^ a * n ^ a) :=
      Nat.mul_le_mul_right _ (Nat.pow_le_pow_left hNn _)
    _ = _ := by rw [hn]; ring

/-- A finite certificate at N excludes the entire unbounded tail n>=N.
The degree comparison may be an equality; finding such an N in general uses a
positive deficit. This implication needs only the displayed integer premises. -/
theorem common_of_height_certificate {N n i j r s : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hiN : i ≤ N) (hNn : N ≤ n)
    (hdegree : heightExponent i r s ≤ i * (2 * s - r))
    (hcertificate : i.factorial ^ (2 * s - r) * N ^ heightExponent i r s <
      windowConstant i r s * (N.descFactorial i) ^ (2 * s - r)) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  have hpoint : N ^ heightExponent i r s <
      windowConstant i r s * (N.choose i) ^ (2 * s - r) := by
    by_contra h
    have hle : windowConstant i r s * (N.choose i) ^ (2 * s - r) ≤
        N ^ heightExponent i r s := by omega
    have hm := Nat.mul_le_mul_left (i.factorial ^ (2 * s - r)) hle
    apply (Nat.not_le_of_gt hcertificate)
    simpa only [Nat.descFactorial_eq_factorial_mul_choose, mul_pow,
      Nat.mul_assoc, Nat.mul_left_comm, Nat.mul_comm] using hm
  by_contra hno
  have hn : 0 < n := by omega
  have hsize := noCommon_scaled_choose (r := r) hi hij hjn hsi hno
  have hr := Nat.pow_le_pow_left
    (B699Power.choose_ratio_lower_bound (n := n) hiN hNn) (2 * s - r)
  have hratio : n ^ (i * (2 * s - r)) * (N.choose i) ^ (2 * s - r) ≤
      N ^ (i * (2 * s - r)) * (n.choose i) ^ (2 * s - r) := by
    simpa only [mul_pow, ← pow_mul] using hr
  have hbound :
      n ^ (i * (2 * s - r)) *
          (windowConstant i r s * (N.choose i) ^ (2 * s - r)) ≤
        n ^ (i * (2 * s - r)) * N ^ heightExponent i r s := by
    calc
      _ = windowConstant i r s *
          (n ^ (i * (2 * s - r)) * (N.choose i) ^ (2 * s - r)) := by ring
      _ ≤ windowConstant i r s *
          (N ^ (i * (2 * s - r)) * (n.choose i) ^ (2 * s - r)) :=
        Nat.mul_le_mul_left _ hratio
      _ = N ^ (i * (2 * s - r)) *
          (windowConstant i r s * (n.choose i) ^ (2 * s - r)) := by ring
      _ ≤ N ^ (i * (2 * s - r)) * n ^ heightExponent i r s :=
        Nat.mul_le_mul_left _ hsize
      _ ≤ _ := power_cross_mono hNn hdegree
  have hstrict := Nat.mul_lt_mul_of_pos_left hpoint
    (Nat.pow_pos hn : 0 < n ^ (i * (2 * s - r)))
  exact (Nat.not_le_of_gt hstrict) hbound

end B699LowIndex

#print axioms B699LowIndex.noCommon_scaled_choose
#print axioms B699LowIndex.power_cross_mono
#print axioms B699LowIndex.common_of_height_certificate

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex

/-- Fixed height parameters copied from the exact two-colour cover JSON. -/
-- Input SHA-256: 69d16096c414177438342f1dca93eeb256ad20850ac5b9f36387e9c1bb0607a0
structure HeightCertificateDatum where
  i : ℕ
  r : ℕ
  s : ℕ
  n0Power10 : ℕ
deriving Repr, DecidableEq

def HeightCertificateDatum.n0 (datum : HeightCertificateDatum) : ℕ :=
  10 ^ datum.n0Power10

def heightCertificateData : List HeightCertificateDatum := [
  { i := 29, r := 9, s := 19, n0Power10 := 37 },
  { i := 35, r := 11, s := 23, n0Power10 := 49 },
  { i := 36, r := 11, s := 24, n0Power10 := 26 },
  { i := 37, r := 12, s := 25, n0Power10 := 18 },
  { i := 38, r := 12, s := 25, n0Power10 := 54 },
  { i := 39, r := 12, s := 26, n0Power10 := 29 },
  { i := 40, r := 13, s := 27, n0Power10 := 20 },
  { i := 41, r := 13, s := 28, n0Power10 := 16 },
  { i := 42, r := 13, s := 28, n0Power10 := 31 },
  { i := 43, r := 14, s := 29, n0Power10 := 22 },
  { i := 44, r := 14, s := 29, n0Power10 := 66 },
  { i := 45, r := 14, s := 30, n0Power10 := 34 },
  { i := 46, r := 15, s := 31, n0Power10 := 24 },
  { i := 47, r := 15, s := 32, n0Power10 := 19 },
  { i := 48, r := 15, s := 32, n0Power10 := 37 },
  { i := 49, r := 16, s := 33, n0Power10 := 26 },
  { i := 50, r := 16, s := 34, n0Power10 := 20 },
  { i := 51, r := 16, s := 35, n0Power10 := 17 },
  { i := 52, r := 17, s := 35, n0Power10 := 14 },
  { i := 53, r := 17, s := 36, n0Power10 := 13 },
  { i := 54, r := 17, s := 37, n0Power10 := 18 },
  { i := 55, r := 18, s := 37, n0Power10 := 15 },
  { i := 56, r := 18, s := 38, n0Power10 := 13 },
  { i := 57, r := 18, s := 39, n0Power10 := 12 },
  { i := 58, r := 19, s := 40, n0Power10 := 11 },
  { i := 59, r := 19, s := 41, n0Power10 := 10 },
  { i := 60, r := 19, s := 41, n0Power10 := 13 },
  { i := 61, r := 20, s := 42, n0Power10 := 12 },
  { i := 62, r := 20, s := 42, n0Power10 := 15 },
  { i := 63, r := 20, s := 43, n0Power10 := 14 },
  { i := 64, r := 21, s := 44, n0Power10 := 12 },
  { i := 65, r := 21, s := 45, n0Power10 := 11 },
  { i := 66, r := 21, s := 45, n0Power10 := 11 },
  { i := 67, r := 22, s := 46, n0Power10 := 10 },
  { i := 68, r := 22, s := 47, n0Power10 := 12 },
  { i := 69, r := 22, s := 47, n0Power10 := 11 },
  { i := 70, r := 23, s := 48, n0Power10 := 11 },
  { i := 71, r := 23, s := 49, n0Power10 := 10 },
  { i := 72, r := 23, s := 49, n0Power10 := 12 },
  { i := 73, r := 24, s := 50, n0Power10 := 11 },
  { i := 74, r := 24, s := 51, n0Power10 := 13 },
  { i := 75, r := 24, s := 51, n0Power10 := 13 },
  { i := 76, r := 25, s := 52, n0Power10 := 12 },
  { i := 77, r := 25, s := 53, n0Power10 := 11 },
  { i := 78, r := 25, s := 54, n0Power10 := 10 },
  { i := 79, r := 26, s := 55, n0Power10 := 10 },
  { i := 80, r := 26, s := 55, n0Power10 := 12 },
  { i := 81, r := 26, s := 56, n0Power10 := 11 },
  { i := 82, r := 27, s := 57, n0Power10 := 10 },
  { i := 83, r := 27, s := 57, n0Power10 := 10 },
  { i := 84, r := 27, s := 58, n0Power10 := 11 },
  { i := 85, r := 28, s := 59, n0Power10 := 11 },
  { i := 86, r := 28, s := 59, n0Power10 := 10 },
  { i := 87, r := 28, s := 60, n0Power10 := 10 },
  { i := 88, r := 29, s := 61, n0Power10 := 9 },
  { i := 89, r := 29, s := 62, n0Power10 := 9 },
  { i := 90, r := 29, s := 62, n0Power10 := 10 },
  { i := 91, r := 30, s := 63, n0Power10 := 10 },
  { i := 92, r := 30, s := 64, n0Power10 := 9 },
  { i := 93, r := 30, s := 65, n0Power10 := 9 },
  { i := 94, r := 31, s := 65, n0Power10 := 9 },
  { i := 95, r := 31, s := 66, n0Power10 := 9 },
  { i := 96, r := 31, s := 67, n0Power10 := 8 },
  { i := 97, r := 32, s := 68, n0Power10 := 8 },
  { i := 98, r := 32, s := 68, n0Power10 := 9 },
  { i := 99, r := 32, s := 69, n0Power10 := 9 },
  { i := 100, r := 33, s := 70, n0Power10 := 8 },
  { i := 101, r := 33, s := 71, n0Power10 := 8 },
  { i := 102, r := 33, s := 71, n0Power10 := 9 },
  { i := 103, r := 34, s := 72, n0Power10 := 9 },
  { i := 104, r := 34, s := 72, n0Power10 := 10 },
  { i := 105, r := 34, s := 73, n0Power10 := 9 },
  { i := 106, r := 35, s := 74, n0Power10 := 9 },
  { i := 107, r := 35, s := 75, n0Power10 := 9 },
  { i := 108, r := 35, s := 75, n0Power10 := 10 },
  { i := 109, r := 36, s := 76, n0Power10 := 9 },
  { i := 110, r := 36, s := 76, n0Power10 := 10 },
  { i := 111, r := 36, s := 77, n0Power10 := 10 },
  { i := 112, r := 37, s := 78, n0Power10 := 10 },
  { i := 113, r := 37, s := 79, n0Power10 := 9 },
  { i := 114, r := 37, s := 79, n0Power10 := 10 },
  { i := 115, r := 38, s := 80, n0Power10 := 10 },
  { i := 116, r := 38, s := 81, n0Power10 := 10 },
  { i := 117, r := 38, s := 81, n0Power10 := 9 },
  { i := 118, r := 39, s := 82, n0Power10 := 9 },
  { i := 119, r := 39, s := 83, n0Power10 := 9 },
  { i := 120, r := 39, s := 84, n0Power10 := 9 },
  { i := 121, r := 40, s := 85, n0Power10 := 8 },
  { i := 122, r := 40, s := 86, n0Power10 := 8 },
  { i := 123, r := 40, s := 86, n0Power10 := 8 },
  { i := 124, r := 41, s := 87, n0Power10 := 8 },
  { i := 125, r := 41, s := 88, n0Power10 := 8 },
  { i := 126, r := 41, s := 89, n0Power10 := 8 },
  { i := 127, r := 42, s := 90, n0Power10 := 8 },
  { i := 128, r := 42, s := 90, n0Power10 := 8 },
  { i := 129, r := 42, s := 91, n0Power10 := 8 },
  { i := 130, r := 43, s := 92, n0Power10 := 8 },
  { i := 131, r := 43, s := 92, n0Power10 := 8 },
  { i := 132, r := 43, s := 93, n0Power10 := 8 },
  { i := 133, r := 44, s := 94, n0Power10 := 8 },
  { i := 134, r := 44, s := 94, n0Power10 := 8 },
  { i := 135, r := 44, s := 95, n0Power10 := 8 },
  { i := 136, r := 45, s := 96, n0Power10 := 8 },
  { i := 137, r := 45, s := 97, n0Power10 := 7 },
  { i := 138, r := 45, s := 97, n0Power10 := 8 },
  { i := 139, r := 46, s := 98, n0Power10 := 8 },
  { i := 140, r := 46, s := 98, n0Power10 := 8 },
  { i := 141, r := 46, s := 99, n0Power10 := 8 },
  { i := 142, r := 47, s := 100, n0Power10 := 8 },
  { i := 143, r := 47, s := 101, n0Power10 := 8 },
  { i := 144, r := 47, s := 102, n0Power10 := 8 },
  { i := 145, r := 48, s := 102, n0Power10 := 8 },
  { i := 146, r := 48, s := 103, n0Power10 := 7 },
  { i := 147, r := 48, s := 104, n0Power10 := 7 },
  { i := 148, r := 49, s := 105, n0Power10 := 7 },
  { i := 149, r := 49, s := 106, n0Power10 := 7 },
  { i := 150, r := 49, s := 106, n0Power10 := 8 },
  { i := 151, r := 50, s := 107, n0Power10 := 7 },
  { i := 152, r := 50, s := 107, n0Power10 := 8 },
  { i := 153, r := 50, s := 108, n0Power10 := 8 },
  { i := 154, r := 51, s := 109, n0Power10 := 8 },
  { i := 155, r := 51, s := 110, n0Power10 := 8 },
  { i := 156, r := 51, s := 111, n0Power10 := 7 },
  { i := 157, r := 52, s := 111, n0Power10 := 7 },
  { i := 158, r := 52, s := 112, n0Power10 := 8 },
  { i := 159, r := 52, s := 112, n0Power10 := 8 },
  { i := 160, r := 53, s := 113, n0Power10 := 8 },
  { i := 161, r := 53, s := 114, n0Power10 := 7 },
  { i := 162, r := 53, s := 115, n0Power10 := 7 },
  { i := 163, r := 54, s := 116, n0Power10 := 7 },
  { i := 164, r := 54, s := 116, n0Power10 := 8 },
  { i := 165, r := 54, s := 117, n0Power10 := 7 },
  { i := 166, r := 55, s := 118, n0Power10 := 7 },
  { i := 167, r := 55, s := 119, n0Power10 := 7 },
  { i := 168, r := 55, s := 119, n0Power10 := 8 },
  { i := 169, r := 56, s := 120, n0Power10 := 8 },
  { i := 170, r := 56, s := 121, n0Power10 := 7 },
  { i := 171, r := 56, s := 121, n0Power10 := 7 },
  { i := 172, r := 57, s := 122, n0Power10 := 7 },
  { i := 173, r := 57, s := 123, n0Power10 := 7 },
  { i := 174, r := 57, s := 123, n0Power10 := 8 },
  { i := 175, r := 58, s := 124, n0Power10 := 7 },
  { i := 176, r := 58, s := 125, n0Power10 := 7 },
  { i := 177, r := 58, s := 126, n0Power10 := 7 },
  { i := 178, r := 59, s := 127, n0Power10 := 7 },
  { i := 179, r := 59, s := 128, n0Power10 := 7 },
  { i := 180, r := 59, s := 128, n0Power10 := 7 },
  { i := 181, r := 60, s := 129, n0Power10 := 7 },
  { i := 182, r := 60, s := 129, n0Power10 := 8 },
  { i := 183, r := 60, s := 130, n0Power10 := 8 },
  { i := 184, r := 61, s := 130, n0Power10 := 7 }
]

end B699LowIndex

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex
open B699LargePrimeStructure

/-- Exact finite height-row proposition used by the registered table. -/
/- Input SHA-256: 69d16096c414177438342f1dca93eeb256ad20850ac5b9f36387e9c1bb0607a0 -/
def HeightRowValid (row : HeightCertificateDatum) : Prop :=
  2 ≤ row.i ∧
  row.r < row.i ∧
  0 < row.s ∧
  row.s < row.i ∧
  0 < 2 * row.s - row.r ∧
  row.i ≤ row.n0 ∧
  heightExponent row.i row.r row.s ≤ row.i * (2 * row.s - row.r) ∧
  row.i.factorial ^ (2 * row.s - row.r) *
      row.n0 ^ heightExponent row.i row.r row.s <
    windowConstant row.i row.r row.s *
      row.n0.descFactorial row.i ^ (2 * row.s - row.r)

instance (row : HeightCertificateDatum) : Decidable (HeightRowValid row) := by
  unfold HeightRowValid
  infer_instance

def heightRowValidBool (row : HeightCertificateDatum) : Bool :=
  decide (HeightRowValid row)

theorem height_row_valid_bool_029 :
    heightRowValidBool { i := 29, r := 9, s := 19, n0Power10 := 37 } = true := by
  decide

theorem height_row_valid_bool_035 :
    heightRowValidBool { i := 35, r := 11, s := 23, n0Power10 := 49 } = true := by
  decide

theorem height_row_valid_bool_036 :
    heightRowValidBool { i := 36, r := 11, s := 24, n0Power10 := 26 } = true := by
  decide

theorem height_row_valid_bool_037 :
    heightRowValidBool { i := 37, r := 12, s := 25, n0Power10 := 18 } = true := by
  decide

theorem height_row_valid_bool_038 :
    heightRowValidBool { i := 38, r := 12, s := 25, n0Power10 := 54 } = true := by
  decide

theorem height_row_valid_bool_039 :
    heightRowValidBool { i := 39, r := 12, s := 26, n0Power10 := 29 } = true := by
  decide

theorem height_row_valid_bool_040 :
    heightRowValidBool { i := 40, r := 13, s := 27, n0Power10 := 20 } = true := by
  decide

theorem height_row_valid_bool_041 :
    heightRowValidBool { i := 41, r := 13, s := 28, n0Power10 := 16 } = true := by
  decide

theorem height_row_valid_bool_042 :
    heightRowValidBool { i := 42, r := 13, s := 28, n0Power10 := 31 } = true := by
  decide

theorem height_row_valid_bool_043 :
    heightRowValidBool { i := 43, r := 14, s := 29, n0Power10 := 22 } = true := by
  decide

theorem height_row_valid_bool_044 :
    heightRowValidBool { i := 44, r := 14, s := 29, n0Power10 := 66 } = true := by
  decide

theorem height_row_valid_bool_045 :
    heightRowValidBool { i := 45, r := 14, s := 30, n0Power10 := 34 } = true := by
  decide

theorem height_row_valid_bool_046 :
    heightRowValidBool { i := 46, r := 15, s := 31, n0Power10 := 24 } = true := by
  decide

theorem height_row_valid_bool_047 :
    heightRowValidBool { i := 47, r := 15, s := 32, n0Power10 := 19 } = true := by
  decide

theorem height_row_valid_bool_048 :
    heightRowValidBool { i := 48, r := 15, s := 32, n0Power10 := 37 } = true := by
  decide

theorem height_row_valid_bool_049 :
    heightRowValidBool { i := 49, r := 16, s := 33, n0Power10 := 26 } = true := by
  decide

theorem height_row_valid_bool_050 :
    heightRowValidBool { i := 50, r := 16, s := 34, n0Power10 := 20 } = true := by
  decide

theorem height_row_valid_bool_051 :
    heightRowValidBool { i := 51, r := 16, s := 35, n0Power10 := 17 } = true := by
  decide

theorem height_row_valid_bool_052 :
    heightRowValidBool { i := 52, r := 17, s := 35, n0Power10 := 14 } = true := by
  decide

theorem height_row_valid_bool_053 :
    heightRowValidBool { i := 53, r := 17, s := 36, n0Power10 := 13 } = true := by
  decide

theorem height_row_valid_bool_054 :
    heightRowValidBool { i := 54, r := 17, s := 37, n0Power10 := 18 } = true := by
  decide

theorem height_row_valid_bool_055 :
    heightRowValidBool { i := 55, r := 18, s := 37, n0Power10 := 15 } = true := by
  decide

theorem height_row_valid_bool_056 :
    heightRowValidBool { i := 56, r := 18, s := 38, n0Power10 := 13 } = true := by
  decide

theorem height_row_valid_bool_057 :
    heightRowValidBool { i := 57, r := 18, s := 39, n0Power10 := 12 } = true := by
  decide

theorem height_row_valid_bool_058 :
    heightRowValidBool { i := 58, r := 19, s := 40, n0Power10 := 11 } = true := by
  decide

theorem height_row_valid_bool_059 :
    heightRowValidBool { i := 59, r := 19, s := 41, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_060 :
    heightRowValidBool { i := 60, r := 19, s := 41, n0Power10 := 13 } = true := by
  decide

theorem height_row_valid_bool_061 :
    heightRowValidBool { i := 61, r := 20, s := 42, n0Power10 := 12 } = true := by
  decide

theorem height_row_valid_bool_062 :
    heightRowValidBool { i := 62, r := 20, s := 42, n0Power10 := 15 } = true := by
  decide

theorem height_row_valid_bool_063 :
    heightRowValidBool { i := 63, r := 20, s := 43, n0Power10 := 14 } = true := by
  decide

theorem height_row_valid_bool_064 :
    heightRowValidBool { i := 64, r := 21, s := 44, n0Power10 := 12 } = true := by
  decide

theorem height_row_valid_bool_065 :
    heightRowValidBool { i := 65, r := 21, s := 45, n0Power10 := 11 } = true := by
  decide

theorem height_row_valid_bool_066 :
    heightRowValidBool { i := 66, r := 21, s := 45, n0Power10 := 11 } = true := by
  decide

theorem height_row_valid_bool_067 :
    heightRowValidBool { i := 67, r := 22, s := 46, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_068 :
    heightRowValidBool { i := 68, r := 22, s := 47, n0Power10 := 12 } = true := by
  decide

theorem height_row_valid_bool_069 :
    heightRowValidBool { i := 69, r := 22, s := 47, n0Power10 := 11 } = true := by
  decide

theorem height_row_valid_bool_070 :
    heightRowValidBool { i := 70, r := 23, s := 48, n0Power10 := 11 } = true := by
  decide

theorem height_row_valid_bool_071 :
    heightRowValidBool { i := 71, r := 23, s := 49, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_072 :
    heightRowValidBool { i := 72, r := 23, s := 49, n0Power10 := 12 } = true := by
  decide

theorem height_row_valid_bool_073 :
    heightRowValidBool { i := 73, r := 24, s := 50, n0Power10 := 11 } = true := by
  decide

theorem height_row_valid_bool_074 :
    heightRowValidBool { i := 74, r := 24, s := 51, n0Power10 := 13 } = true := by
  decide

theorem height_row_valid_bool_075 :
    heightRowValidBool { i := 75, r := 24, s := 51, n0Power10 := 13 } = true := by
  decide

theorem height_row_valid_bool_076 :
    heightRowValidBool { i := 76, r := 25, s := 52, n0Power10 := 12 } = true := by
  decide

theorem height_row_valid_bool_077 :
    heightRowValidBool { i := 77, r := 25, s := 53, n0Power10 := 11 } = true := by
  decide

theorem height_row_valid_bool_078 :
    heightRowValidBool { i := 78, r := 25, s := 54, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_079 :
    heightRowValidBool { i := 79, r := 26, s := 55, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_080 :
    heightRowValidBool { i := 80, r := 26, s := 55, n0Power10 := 12 } = true := by
  decide

theorem height_row_valid_bool_081 :
    heightRowValidBool { i := 81, r := 26, s := 56, n0Power10 := 11 } = true := by
  decide

theorem height_row_valid_bool_082 :
    heightRowValidBool { i := 82, r := 27, s := 57, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_083 :
    heightRowValidBool { i := 83, r := 27, s := 57, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_084 :
    heightRowValidBool { i := 84, r := 27, s := 58, n0Power10 := 11 } = true := by
  decide

theorem height_row_valid_bool_085 :
    heightRowValidBool { i := 85, r := 28, s := 59, n0Power10 := 11 } = true := by
  decide

theorem height_row_valid_bool_086 :
    heightRowValidBool { i := 86, r := 28, s := 59, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_087 :
    heightRowValidBool { i := 87, r := 28, s := 60, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_088 :
    heightRowValidBool { i := 88, r := 29, s := 61, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_089 :
    heightRowValidBool { i := 89, r := 29, s := 62, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_090 :
    heightRowValidBool { i := 90, r := 29, s := 62, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_091 :
    heightRowValidBool { i := 91, r := 30, s := 63, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_092 :
    heightRowValidBool { i := 92, r := 30, s := 64, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_093 :
    heightRowValidBool { i := 93, r := 30, s := 65, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_094 :
    heightRowValidBool { i := 94, r := 31, s := 65, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_095 :
    heightRowValidBool { i := 95, r := 31, s := 66, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_096 :
    heightRowValidBool { i := 96, r := 31, s := 67, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_097 :
    heightRowValidBool { i := 97, r := 32, s := 68, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_098 :
    heightRowValidBool { i := 98, r := 32, s := 68, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_099 :
    heightRowValidBool { i := 99, r := 32, s := 69, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_100 :
    heightRowValidBool { i := 100, r := 33, s := 70, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_101 :
    heightRowValidBool { i := 101, r := 33, s := 71, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_102 :
    heightRowValidBool { i := 102, r := 33, s := 71, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_103 :
    heightRowValidBool { i := 103, r := 34, s := 72, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_104 :
    heightRowValidBool { i := 104, r := 34, s := 72, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_105 :
    heightRowValidBool { i := 105, r := 34, s := 73, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_106 :
    heightRowValidBool { i := 106, r := 35, s := 74, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_107 :
    heightRowValidBool { i := 107, r := 35, s := 75, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_108 :
    heightRowValidBool { i := 108, r := 35, s := 75, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_109 :
    heightRowValidBool { i := 109, r := 36, s := 76, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_110 :
    heightRowValidBool { i := 110, r := 36, s := 76, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_111 :
    heightRowValidBool { i := 111, r := 36, s := 77, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_112 :
    heightRowValidBool { i := 112, r := 37, s := 78, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_113 :
    heightRowValidBool { i := 113, r := 37, s := 79, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_114 :
    heightRowValidBool { i := 114, r := 37, s := 79, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_115 :
    heightRowValidBool { i := 115, r := 38, s := 80, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_116 :
    heightRowValidBool { i := 116, r := 38, s := 81, n0Power10 := 10 } = true := by
  decide

theorem height_row_valid_bool_117 :
    heightRowValidBool { i := 117, r := 38, s := 81, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_118 :
    heightRowValidBool { i := 118, r := 39, s := 82, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_119 :
    heightRowValidBool { i := 119, r := 39, s := 83, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_120 :
    heightRowValidBool { i := 120, r := 39, s := 84, n0Power10 := 9 } = true := by
  decide

theorem height_row_valid_bool_121 :
    heightRowValidBool { i := 121, r := 40, s := 85, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_122 :
    heightRowValidBool { i := 122, r := 40, s := 86, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_123 :
    heightRowValidBool { i := 123, r := 40, s := 86, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_124 :
    heightRowValidBool { i := 124, r := 41, s := 87, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_125 :
    heightRowValidBool { i := 125, r := 41, s := 88, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_126 :
    heightRowValidBool { i := 126, r := 41, s := 89, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_127 :
    heightRowValidBool { i := 127, r := 42, s := 90, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_128 :
    heightRowValidBool { i := 128, r := 42, s := 90, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_129 :
    heightRowValidBool { i := 129, r := 42, s := 91, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_130 :
    heightRowValidBool { i := 130, r := 43, s := 92, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_131 :
    heightRowValidBool { i := 131, r := 43, s := 92, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_132 :
    heightRowValidBool { i := 132, r := 43, s := 93, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_133 :
    heightRowValidBool { i := 133, r := 44, s := 94, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_134 :
    heightRowValidBool { i := 134, r := 44, s := 94, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_135 :
    heightRowValidBool { i := 135, r := 44, s := 95, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_136 :
    heightRowValidBool { i := 136, r := 45, s := 96, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_137 :
    heightRowValidBool { i := 137, r := 45, s := 97, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_138 :
    heightRowValidBool { i := 138, r := 45, s := 97, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_139 :
    heightRowValidBool { i := 139, r := 46, s := 98, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_140 :
    heightRowValidBool { i := 140, r := 46, s := 98, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_141 :
    heightRowValidBool { i := 141, r := 46, s := 99, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_142 :
    heightRowValidBool { i := 142, r := 47, s := 100, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_143 :
    heightRowValidBool { i := 143, r := 47, s := 101, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_144 :
    heightRowValidBool { i := 144, r := 47, s := 102, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_145 :
    heightRowValidBool { i := 145, r := 48, s := 102, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_146 :
    heightRowValidBool { i := 146, r := 48, s := 103, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_147 :
    heightRowValidBool { i := 147, r := 48, s := 104, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_148 :
    heightRowValidBool { i := 148, r := 49, s := 105, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_149 :
    heightRowValidBool { i := 149, r := 49, s := 106, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_150 :
    heightRowValidBool { i := 150, r := 49, s := 106, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_151 :
    heightRowValidBool { i := 151, r := 50, s := 107, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_152 :
    heightRowValidBool { i := 152, r := 50, s := 107, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_153 :
    heightRowValidBool { i := 153, r := 50, s := 108, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_154 :
    heightRowValidBool { i := 154, r := 51, s := 109, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_155 :
    heightRowValidBool { i := 155, r := 51, s := 110, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_156 :
    heightRowValidBool { i := 156, r := 51, s := 111, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_157 :
    heightRowValidBool { i := 157, r := 52, s := 111, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_158 :
    heightRowValidBool { i := 158, r := 52, s := 112, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_159 :
    heightRowValidBool { i := 159, r := 52, s := 112, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_160 :
    heightRowValidBool { i := 160, r := 53, s := 113, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_161 :
    heightRowValidBool { i := 161, r := 53, s := 114, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_162 :
    heightRowValidBool { i := 162, r := 53, s := 115, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_163 :
    heightRowValidBool { i := 163, r := 54, s := 116, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_164 :
    heightRowValidBool { i := 164, r := 54, s := 116, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_165 :
    heightRowValidBool { i := 165, r := 54, s := 117, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_166 :
    heightRowValidBool { i := 166, r := 55, s := 118, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_167 :
    heightRowValidBool { i := 167, r := 55, s := 119, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_168 :
    heightRowValidBool { i := 168, r := 55, s := 119, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_169 :
    heightRowValidBool { i := 169, r := 56, s := 120, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_170 :
    heightRowValidBool { i := 170, r := 56, s := 121, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_171 :
    heightRowValidBool { i := 171, r := 56, s := 121, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_172 :
    heightRowValidBool { i := 172, r := 57, s := 122, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_173 :
    heightRowValidBool { i := 173, r := 57, s := 123, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_174 :
    heightRowValidBool { i := 174, r := 57, s := 123, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_175 :
    heightRowValidBool { i := 175, r := 58, s := 124, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_176 :
    heightRowValidBool { i := 176, r := 58, s := 125, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_177 :
    heightRowValidBool { i := 177, r := 58, s := 126, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_178 :
    heightRowValidBool { i := 178, r := 59, s := 127, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_179 :
    heightRowValidBool { i := 179, r := 59, s := 128, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_180 :
    heightRowValidBool { i := 180, r := 59, s := 128, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_181 :
    heightRowValidBool { i := 181, r := 60, s := 129, n0Power10 := 7 } = true := by
  decide

theorem height_row_valid_bool_182 :
    heightRowValidBool { i := 182, r := 60, s := 129, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_183 :
    heightRowValidBool { i := 183, r := 60, s := 130, n0Power10 := 8 } = true := by
  decide

theorem height_row_valid_bool_184 :
    heightRowValidBool { i := 184, r := 61, s := 130, n0Power10 := 7 } = true := by
  decide

theorem heightCertificateDataValidBool :
    List.all heightCertificateData heightRowValidBool = true := by
  simp only [heightCertificateData, List.all_cons, List.all_nil,
    height_row_valid_bool_029,
    height_row_valid_bool_035,
    height_row_valid_bool_036,
    height_row_valid_bool_037,
    height_row_valid_bool_038,
    height_row_valid_bool_039,
    height_row_valid_bool_040,
    height_row_valid_bool_041,
    height_row_valid_bool_042,
    height_row_valid_bool_043,
    height_row_valid_bool_044,
    height_row_valid_bool_045,
    height_row_valid_bool_046,
    height_row_valid_bool_047,
    height_row_valid_bool_048,
    height_row_valid_bool_049,
    height_row_valid_bool_050,
    height_row_valid_bool_051,
    height_row_valid_bool_052,
    height_row_valid_bool_053,
    height_row_valid_bool_054,
    height_row_valid_bool_055,
    height_row_valid_bool_056,
    height_row_valid_bool_057,
    height_row_valid_bool_058,
    height_row_valid_bool_059,
    height_row_valid_bool_060,
    height_row_valid_bool_061,
    height_row_valid_bool_062,
    height_row_valid_bool_063,
    height_row_valid_bool_064,
    height_row_valid_bool_065,
    height_row_valid_bool_066,
    height_row_valid_bool_067,
    height_row_valid_bool_068,
    height_row_valid_bool_069,
    height_row_valid_bool_070,
    height_row_valid_bool_071,
    height_row_valid_bool_072,
    height_row_valid_bool_073,
    height_row_valid_bool_074,
    height_row_valid_bool_075,
    height_row_valid_bool_076,
    height_row_valid_bool_077,
    height_row_valid_bool_078,
    height_row_valid_bool_079,
    height_row_valid_bool_080,
    height_row_valid_bool_081,
    height_row_valid_bool_082,
    height_row_valid_bool_083,
    height_row_valid_bool_084,
    height_row_valid_bool_085,
    height_row_valid_bool_086,
    height_row_valid_bool_087,
    height_row_valid_bool_088,
    height_row_valid_bool_089,
    height_row_valid_bool_090,
    height_row_valid_bool_091,
    height_row_valid_bool_092,
    height_row_valid_bool_093,
    height_row_valid_bool_094,
    height_row_valid_bool_095,
    height_row_valid_bool_096,
    height_row_valid_bool_097,
    height_row_valid_bool_098,
    height_row_valid_bool_099,
    height_row_valid_bool_100,
    height_row_valid_bool_101,
    height_row_valid_bool_102,
    height_row_valid_bool_103,
    height_row_valid_bool_104,
    height_row_valid_bool_105,
    height_row_valid_bool_106,
    height_row_valid_bool_107,
    height_row_valid_bool_108,
    height_row_valid_bool_109,
    height_row_valid_bool_110,
    height_row_valid_bool_111,
    height_row_valid_bool_112,
    height_row_valid_bool_113,
    height_row_valid_bool_114,
    height_row_valid_bool_115,
    height_row_valid_bool_116,
    height_row_valid_bool_117,
    height_row_valid_bool_118,
    height_row_valid_bool_119,
    height_row_valid_bool_120,
    height_row_valid_bool_121,
    height_row_valid_bool_122,
    height_row_valid_bool_123,
    height_row_valid_bool_124,
    height_row_valid_bool_125,
    height_row_valid_bool_126,
    height_row_valid_bool_127,
    height_row_valid_bool_128,
    height_row_valid_bool_129,
    height_row_valid_bool_130,
    height_row_valid_bool_131,
    height_row_valid_bool_132,
    height_row_valid_bool_133,
    height_row_valid_bool_134,
    height_row_valid_bool_135,
    height_row_valid_bool_136,
    height_row_valid_bool_137,
    height_row_valid_bool_138,
    height_row_valid_bool_139,
    height_row_valid_bool_140,
    height_row_valid_bool_141,
    height_row_valid_bool_142,
    height_row_valid_bool_143,
    height_row_valid_bool_144,
    height_row_valid_bool_145,
    height_row_valid_bool_146,
    height_row_valid_bool_147,
    height_row_valid_bool_148,
    height_row_valid_bool_149,
    height_row_valid_bool_150,
    height_row_valid_bool_151,
    height_row_valid_bool_152,
    height_row_valid_bool_153,
    height_row_valid_bool_154,
    height_row_valid_bool_155,
    height_row_valid_bool_156,
    height_row_valid_bool_157,
    height_row_valid_bool_158,
    height_row_valid_bool_159,
    height_row_valid_bool_160,
    height_row_valid_bool_161,
    height_row_valid_bool_162,
    height_row_valid_bool_163,
    height_row_valid_bool_164,
    height_row_valid_bool_165,
    height_row_valid_bool_166,
    height_row_valid_bool_167,
    height_row_valid_bool_168,
    height_row_valid_bool_169,
    height_row_valid_bool_170,
    height_row_valid_bool_171,
    height_row_valid_bool_172,
    height_row_valid_bool_173,
    height_row_valid_bool_174,
    height_row_valid_bool_175,
    height_row_valid_bool_176,
    height_row_valid_bool_177,
    height_row_valid_bool_178,
    height_row_valid_bool_179,
    height_row_valid_bool_180,
    height_row_valid_bool_181,
    height_row_valid_bool_182,
    height_row_valid_bool_183,
    height_row_valid_bool_184,
    Bool.true_and]

theorem heightCertificateData_valid {row : HeightCertificateDatum}
    (hrow : row ∈ heightCertificateData) : HeightRowValid row := by
  have hall := List.all_eq_true.mp heightCertificateDataValidBool
  have hcheck := hall row hrow
  exact of_decide_eq_true (by simpa [heightRowValidBool] using hcheck)

theorem heightCertificateData_length :
    heightCertificateData.length = 151 := by
  decide

theorem heightCertificateData_indices :
    heightCertificateData.map HeightCertificateDatum.i = [29, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184] := by
  decide

theorem common_of_registered_height
    {row : HeightCertificateDatum} (hrow : row ∈ heightCertificateData)
    {n j : ℕ} (hij : row.i < j) (hjn : j ≤ n / 2)
    (hNn : row.n0 ≤ n) :
    ∃ p : ℕ, p.Prime ∧ row.i ≤ p ∧
      p ∣ Nat.gcd (n.choose row.i) (n.choose j) := by
  have hvalid := heightCertificateData_valid hrow
  rcases hvalid with ⟨hi, _, _, hsi, _, hiN, hdegree, hcertificate⟩
  exact common_of_height_certificate
    (N := row.n0) (n := n) (i := row.i) (j := j)
    (r := row.r) (s := row.s) hi hij hjn hsi hiN hNn hdegree hcertificate

end B699LowIndex

#print axioms B699LowIndex.heightCertificateData_valid
#print axioms B699LowIndex.heightCertificateData_indices
#print axioms B699LowIndex.common_of_registered_height

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex
open B699LargePrimeStructure

/-- A nonempty product of natural numbers strictly below n is below n to its
cardinality. Zero factors are allowed. -/
theorem nat_prod_lt_pow_of_pointwise_lt {S : Finset ℕ} {g : ℕ → ℕ} {n : ℕ}
    (hn : 0 < n) (hS : S.Nonempty) (hg : ∀ p ∈ S, g p < n) :
    S.prod g < n ^ S.card := by
  have hle : S.prod g ≤ (n - 1) ^ S.card :=
    Finset.prod_le_pow_card S g (n - 1) (by
      intro p hp
      have := hg p hp
      omega)
  have hcard : S.card ≠ 0 := Nat.ne_of_gt (Finset.card_pos.mpr hS)
  exact hle.trans_lt (Nat.pow_lt_pow_left (by omega : n - 1 < n) hcard)

/-- If all but one factor are small after scaling by M, the scaled whole
product is strictly below the threshold. The distinguished factor may be zero. -/
theorem scaled_prod_lt_of_all_but_one_small {S : Finset ℕ} {f : ℕ → ℕ}
    {n M p : ℕ} (hn : 0 < n) (ht : 2 ≤ S.card) (hp : p ∈ S)
    (hfp : f p ≤ n) (hsmall : ∀ q ∈ S.erase p, M * f q < n) :
    M ^ (S.card - 1) * S.prod f < n ^ S.card := by
  have hcard : (S.erase p).card = S.card - 1 := Finset.card_erase_of_mem hp
  have hnonempty : (S.erase p).Nonempty :=
    Finset.card_pos.mp (by omega)
  have hrest : (S.erase p).prod (fun q ↦ M * f q) < n ^ (S.card - 1) := by
    simpa only [hcard] using nat_prod_lt_pow_of_pointwise_lt hn hnonempty hsmall
  have hsplit : M ^ (S.card - 1) * S.prod f =
      f p * (S.erase p).prod (fun q ↦ M * f q) := by
    rw [← Finset.mul_prod_erase S f hp]
    simp only [Finset.prod_mul_distrib, Finset.prod_const, hcard]
    ring
  calc
    M ^ (S.card - 1) * S.prod f =
        f p * (S.erase p).prod (fun q ↦ M * f q) := hsplit
    _ ≤ n * (S.erase p).prod (fun q ↦ M * f q) :=
      Nat.mul_le_mul_right _ hfp
    _ < n * n ^ (S.card - 1) := Nat.mul_lt_mul_of_pos_left hrest hn
    _ = n ^ S.card := by
      rw [← pow_succ', Nat.sub_add_cancel (by omega : 1 ≤ S.card)]

/-- An explicit integer lower bound on a finite product forces two distinct
factors to meet the scaled threshold. No positivity of the factors is assumed. -/
theorem exists_two_large_factors_of_scaled_prod {S : Finset ℕ} {f : ℕ → ℕ}
    {n M : ℕ} (hn : 0 < n) (_hM : 0 < M) (ht : 2 ≤ S.card)
    (hf : ∀ p ∈ S, f p ≤ n)
    (hprod : n ^ S.card ≤ M ^ (S.card - 1) * S.prod f) :
    ∃ p ∈ S, ∃ q ∈ S, p ≠ q ∧ n ≤ M * f p ∧ n ≤ M * f q := by
  classical
  by_contra htwo
  have hS : S.Nonempty := Finset.card_pos.mp (by omega)
  have hdistinguished : ∃ p ∈ S, ∀ q ∈ S.erase p, M * f q < n := by
    by_cases hlarge : ∃ p ∈ S, n ≤ M * f p
    · obtain ⟨p, hp, hpbig⟩ := hlarge
      refine ⟨p, hp, ?_⟩
      intro q hq
      by_contra hqsmall
      have hqS : q ∈ S := Finset.mem_of_mem_erase hq
      have hpq : p ≠ q := Ne.symm (Finset.mem_erase.mp hq).1
      exact htwo ⟨p, hp, q, hqS, hpq, hpbig, by omega⟩
    · obtain ⟨p, hp⟩ := hS
      refine ⟨p, hp, ?_⟩
      intro q hq
      by_contra hqsmall
      exact hlarge ⟨q, Finset.mem_of_mem_erase hq, by omega⟩
  obtain ⟨p, hp, hsmall⟩ := hdistinguished
  exact (Nat.not_le_of_gt
    (scaled_prod_lt_of_all_but_one_small hn ht hp (hf p hp) hsmall)) hprod

/-- Expanding the actual small part over every prime below i adds only factors
p^0=1. The inclusive endpoint p=i remains outside this product. -/
theorem small_prime_part_eq_prod_small_primes (n i : ℕ) :
    smallPrimePart n i = ((Finset.range i).filter Nat.Prime).prod
      (fun p ↦ p ^ (n.choose i).factorization p) := by
  classical
  unfold smallPrimePart
  apply Finset.prod_subset
  · intro p hp
    obtain ⟨hmem, hpi⟩ := Finset.mem_filter.mp hp
    exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr hpi,
      Nat.prime_of_mem_primeFactors hmem⟩
  · intro p hp hnot
    have hpi : p < i := Finset.mem_range.mp (Finset.mem_filter.mp hp).1
    have hpnot : p ∉ (n.choose i).primeFactors := by
      intro hmem
      exact hnot (Finset.mem_filter.mpr ⟨hmem, hpi⟩)
    have he : (n.choose i).factorization p = 0 := by
      apply Finsupp.notMem_support_iff.mp
      simpa only [Nat.support_factorization] using hpnot
    simp only [he, pow_zero]

/-- The complete binomial small part yields two distinct small primes with
large full powers. The only product premise is an explicit integer inequality. -/
theorem exists_two_large_small_prime_powers {n i M : ℕ}
    (_hi : 2 ≤ i) (_hin : i ≤ n) (hcount : 2 ≤ smallPrimeCount i)
    (hn : 0 < n) (hM : 0 < M)
    (hU : n ^ smallPrimeCount i ≤
      M ^ (smallPrimeCount i - 1) * smallPrimePart n i) :
    ∃ p q : ℕ, p.Prime ∧ p < i ∧ q.Prime ∧ q < i ∧ p ≠ q ∧
      n ≤ M * p ^ (n.choose i).factorization p ∧
      n ≤ M * q ^ (n.choose i).factorization q := by
  classical
  let S := (Finset.range i).filter Nat.Prime
  let f : ℕ → ℕ := fun p ↦ p ^ (n.choose i).factorization p
  have hcard : S.card = smallPrimeCount i := rfl
  have hfull : S.prod f = smallPrimePart n i :=
    (small_prime_part_eq_prod_small_primes n i).symm
  have hprod : n ^ S.card ≤ M ^ (S.card - 1) * S.prod f := by
    simpa only [hcard, hfull] using hU
  obtain ⟨p, hp, q, hq, hpq, hpbig, hqbig⟩ :=
    exists_two_large_factors_of_scaled_prod (S := S) (f := f) hn hM
      (by simpa only [hcard] using hcount)
      (fun _ _ ↦ Nat.pow_factorization_choose_le hn) hprod
  obtain ⟨hpRange, hpPrime⟩ := Finset.mem_filter.mp hp
  obtain ⟨hqRange, hqPrime⟩ := Finset.mem_filter.mp hq
  exact ⟨p, q, hpPrime, Finset.mem_range.mp hpRange, hqPrime,
    Finset.mem_range.mp hqRange, hpq, hpbig, hqbig⟩

end B699LowIndex

#print axioms B699LowIndex.nat_prod_lt_pow_of_pointwise_lt
#print axioms B699LowIndex.scaled_prod_lt_of_all_but_one_small
#print axioms B699LowIndex.exists_two_large_factors_of_scaled_prod
#print axioms B699LowIndex.small_prime_part_eq_prod_small_primes
#print axioms B699LowIndex.exists_two_large_small_prime_powers

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex
open B699LargePrimeStructure

theorem window_factorials_pos (s : ℕ) : 0 < windowFactorials s := by
  unfold windowFactorials
  apply Finset.prod_pos
  intro h _
  exact Nat.factorial_pos h

theorem window_constant_pos (i r s : ℕ) : 0 < windowConstant i r s := by
  unfold windowConstant
  exact Nat.mul_pos
    (Nat.mul_pos (Nat.pow_pos (by decide : 0 < 2))
      (Nat.pow_pos (window_factorials_pos s)))
    (window_factorials_pos _)

/-- A discrete product Bernoulli inequality with no real-number division. -/
theorem descFactorial_scaled_error_bound (n : ℕ) :
    ∀ k : ℕ, k ≤ n →
      n ^ (k + 1) ≤ n * n.descFactorial k +
        (∑ a ∈ Finset.range k, a) * n ^ k := by
  intro k
  induction k with
  | zero => intro _; simp
  | succ k ih =>
      intro hkn
      have hk : k ≤ n := by omega
      have hh := ih hk
      have hdecomp : n * n.descFactorial k =
          n.descFactorial (k + 1) + k * n.descFactorial k := by
        rw [Nat.descFactorial_succ, ← Nat.add_mul, Nat.sub_add_cancel hk]
      have hD : n * n.descFactorial k ≤ n ^ (k + 1) := by
        simpa only [pow_succ'] using
          Nat.mul_le_mul_left n (Nat.descFactorial_le_pow n k)
      calc
        n ^ (k + 1 + 1) = n * n ^ (k + 1) := by rw [pow_succ']
        _ ≤ n * (n * n.descFactorial k +
            (∑ a ∈ Finset.range k, a) * n ^ k) := Nat.mul_le_mul_left n hh
        _ = n * (n.descFactorial (k + 1) + k * n.descFactorial k +
            (∑ a ∈ Finset.range k, a) * n ^ k) := by rw [hdecomp]
        _ = n * n.descFactorial (k + 1) + k * (n * n.descFactorial k) +
            (∑ a ∈ Finset.range k, a) * n ^ (k + 1) := by rw [pow_succ']; ring
        _ ≤ n * n.descFactorial (k + 1) + k * n ^ (k + 1) +
            (∑ a ∈ Finset.range k, a) * n ^ (k + 1) :=
          Nat.add_le_add_right (Nat.add_le_add_left (Nat.mul_le_mul_left k hD) _) _
        _ = n * n.descFactorial (k + 1) +
            (∑ a ∈ Finset.range (k + 1), a) * n ^ (k + 1) := by
          rw [Finset.sum_range_succ]
          ring

/-- For n>=i(i-1), the complete descending product is at least n^i/2. -/
theorem pow_le_two_descFactorial {n i : ℕ} (hn : 0 < n) (hin : i ≤ n)
    (hlarge : i * (i - 1) ≤ n) :
    n ^ i ≤ 2 * n.descFactorial i := by
  have he := descFactorial_scaled_error_bound n i hin
  have hs : 2 * (∑ a ∈ Finset.range i, a) ≤ n := by
    have hsum := Finset.sum_range_id_mul_two i
    nlinarith
  have hm := Nat.mul_le_mul_right (n ^ i) hs
  rw [pow_succ'] at he
  have hmul : n * n ^ i ≤ n * (2 * n.descFactorial i) := by
    nlinarith
  exact Nat.le_of_mul_le_mul_left hmul hn

/-- The original noCommon condition supplies an exact lower bound for U. -/
theorem noCommon_bernoulli_size {n i j r s : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hlarge : i * (i - 1) ≤ n) (hno : ¬ Common n i j) :
    windowConstant i r s * n ^ (i * (2 * s - r)) ≤
      (2 * i.factorial) ^ (2 * s - r) *
        (smallPrimePart n i) ^ (2 * s - r) * n ^ windowDegree i r s := by
  have hn : 0 < n := by omega
  have hin : i ≤ n := by omega
  have hhalf := pow_le_two_descFactorial hn hin hlarge
  have hv := noCommon_scaled_prime_part (r := r) hi hij hjn hsi hno
  have hdesc : n.descFactorial i =
      i.factorial * (smallPrimePart n i * B699BridgeAudit.primePart i (n.choose i)) := by
    rw [smallPrimePart_mul_primePart hin, Nat.descFactorial_eq_factorial_mul_choose]
  calc
    _ = windowConstant i r s * (n ^ i) ^ (2 * s - r) := by rw [← pow_mul]
    _ ≤ windowConstant i r s * (2 * n.descFactorial i) ^ (2 * s - r) :=
      Nat.mul_le_mul_left _ (Nat.pow_le_pow_left hhalf _)
    _ = (2 * i.factorial) ^ (2 * s - r) * (smallPrimePart n i) ^ (2 * s - r) *
        (windowConstant i r s *
          B699BridgeAudit.primePart i (n.choose i) ^ (2 * s - r)) := by
      rw [hdesc]
      simp only [mul_pow]
      ring
    _ ≤ _ := Nat.mul_le_mul_left _ hv

/-- A single integer M-certificate works throughout n>=H. It yields the
precise product premise needed by the two-small-primes consumer. -/
theorem noCommon_small_part_lower_of_certificate {n i j r s H M d : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hlambda : 0 < 2 * s - r)
    (hH : i * (i - 1) ≤ H) (hHn : H ≤ n)
    (hexponent : i * (2 * s - r) = heightExponent i r s + d)
    (hcertificate : (2 * i.factorial) ^ (2 * s - r) ≤
      windowConstant i r s * M ^ ((2 * s - r) * (smallPrimeCount i - 1)) * H ^ d)
    (hno : ¬ Common n i j) :
    n ^ smallPrimeCount i ≤ M ^ (smallPrimeCount i - 1) * smallPrimePart n i := by
  have hn : 0 < n := by omega
  have hbase := noCommon_bernoulli_size (r := r) hi hij hjn hsi
    (hH.trans hHn) hno
  have hcert : (2 * i.factorial) ^ (2 * s - r) ≤
      windowConstant i r s * M ^ ((2 * s - r) * (smallPrimeCount i - 1)) * n ^ d :=
    hcertificate.trans (Nat.mul_le_mul_left _ (Nat.pow_le_pow_left hHn d))
  have hMpow : M ^ ((2 * s - r) * (smallPrimeCount i - 1)) =
      (M ^ (smallPrimeCount i - 1)) ^ (2 * s - r) := by
    rw [← pow_mul, Nat.mul_comm]
  have hbound :
      windowConstant i r s * n ^ (i * (2 * s - r)) ≤
        windowConstant i r s * n ^ (windowDegree i r s + d) *
          (M ^ (smallPrimeCount i - 1) * smallPrimePart n i) ^ (2 * s - r) := by
    calc
      _ ≤ (2 * i.factorial) ^ (2 * s - r) *
          (smallPrimePart n i) ^ (2 * s - r) * n ^ windowDegree i r s := hbase
      _ ≤ (windowConstant i r s * M ^ ((2 * s - r) * (smallPrimeCount i - 1)) *
            n ^ d) * (smallPrimePart n i) ^ (2 * s - r) * n ^ windowDegree i r s :=
        Nat.mul_le_mul_right _ (Nat.mul_le_mul_right _ hcert)
      _ = _ := by
        rw [hMpow]
        simp only [mul_pow, pow_add]
        ring
  have hnpow : n ^ (i * (2 * s - r)) =
      n ^ (windowDegree i r s + d) * (n ^ smallPrimeCount i) ^ (2 * s - r) := by
    rw [← pow_mul, ← pow_add]
    congr 1
    unfold heightExponent at hexponent
    omega
  have hmul :
      (windowConstant i r s * n ^ (windowDegree i r s + d)) *
          (n ^ smallPrimeCount i) ^ (2 * s - r) ≤
        (windowConstant i r s * n ^ (windowDegree i r s + d)) *
          (M ^ (smallPrimeCount i - 1) * smallPrimePart n i) ^ (2 * s - r) := by
    simpa only [hnpow, Nat.mul_assoc] using hbound
  have hpowers := Nat.le_of_mul_le_mul_left hmul
    (Nat.mul_pos (window_constant_pos i r s) (Nat.pow_pos hn))
  by_contra h
  have hlt : M ^ (smallPrimeCount i - 1) * smallPrimePart n i <
      n ^ smallPrimeCount i := by omega
  exact (Nat.not_le_of_gt (Nat.pow_lt_pow_left hlt hlambda.ne')) hpowers

/-- The complete original counterexample condition, with one explicit
M-certificate, forces two distinct small primes with large full powers. -/
theorem noCommon_two_large_small_prime_powers {n i j r s H M d : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hcount : 2 ≤ smallPrimeCount i) (hM : 0 < M) (hlambda : 0 < 2 * s - r)
    (hH : i * (i - 1) ≤ H) (hHn : H ≤ n)
    (hexponent : i * (2 * s - r) = heightExponent i r s + d)
    (hcertificate : (2 * i.factorial) ^ (2 * s - r) ≤
      windowConstant i r s * M ^ ((2 * s - r) * (smallPrimeCount i - 1)) * H ^ d)
    (hno : ¬ Common n i j) :
    ∃ p q : ℕ, p.Prime ∧ p < i ∧ q.Prime ∧ q < i ∧ p ≠ q ∧
      n ≤ M * p ^ (n.choose i).factorization p ∧
      n ≤ M * q ^ (n.choose i).factorization q := by
  apply exists_two_large_small_prime_powers hi (by omega) hcount (by omega) hM
  exact noCommon_small_part_lower_of_certificate hi hij hjn hsi hlambda hH hHn
    hexponent hcertificate hno

end B699LowIndex

#print axioms B699LowIndex.pow_le_two_descFactorial
#print axioms B699LowIndex.noCommon_bernoulli_size
#print axioms B699LowIndex.noCommon_small_part_lower_of_certificate
#print axioms B699LowIndex.noCommon_two_large_small_prime_powers

/-!
Reusable prime-support lemmas for two disjoint blocks of consecutive integers.

These lemmas are independent of the ratio `4` and of any prime-counting estimate.
They formalize the first, support-level layer of the large-prime part of the
round-7 gcd argument.  They do not yet show that the complete `p`-primary part
of the gcd divides the binomial coefficient.
-/

namespace B686Round8

def product (k t : ℕ) : ℕ := ∏ i ∈ Finset.Icc 1 k, (t + i)

/-- A prime divisor common to two disjoint blocks divides a positive cross-block
difference in the interval from `m - n - k + 1` to `m - n + k - 1`. -/
theorem common_prime_divides_cross_difference
    (k n m p : ℕ) (hsep : n + k ≤ m) (hp : p.Prime)
    (hcommon : p ∣ Nat.gcd (product k m) (product k n)) :
    ∃ i ∈ Finset.Icc 1 k, ∃ j ∈ Finset.Icc 1 k,
      (p : ℤ) ∣ ((m + i : ℕ) : ℤ) - ((n + j : ℕ) : ℤ) ∧
      0 < ((m + i : ℕ) : ℤ) - ((n + j : ℕ) : ℤ) ∧
      (m : ℤ) - n - k + 1 ≤ ((m + i : ℕ) : ℤ) - ((n + j : ℕ) : ℤ) ∧
      ((m + i : ℕ) : ℤ) - ((n + j : ℕ) : ℤ) ≤ (m : ℤ) - n + k - 1 := by
  have hm : p ∣ product k m := hcommon.trans (Nat.gcd_dvd_left _ _)
  have hn : p ∣ product k n := hcommon.trans (Nat.gcd_dvd_right _ _)
  obtain ⟨i, hi, hpi⟩ := (hp.prime.dvd_finsetProd_iff (fun i : ℕ ↦ m + i)).mp hm
  obtain ⟨j, hj, hpj⟩ := (hp.prime.dvd_finsetProd_iff (fun j : ℕ ↦ n + j)).mp hn
  refine ⟨i, hi, j, hj, ?_, ?_, ?_, ?_⟩
  · have hpi' : (p : ℤ) ∣ ((m + i : ℕ) : ℤ) := by exact_mod_cast hpi
    have hpj' : (p : ℤ) ∣ ((n + j : ℕ) : ℤ) := by exact_mod_cast hpj
    exact dvd_sub hpi' hpj'
  · have hi' := (Finset.mem_Icc.mp hi).1
    have hj' := (Finset.mem_Icc.mp hj).2
    omega
  · have hi' := (Finset.mem_Icc.mp hi).1
    have hj' := (Finset.mem_Icc.mp hj).2
    omega
  · have hi' := (Finset.mem_Icc.mp hi).2
    have hj' := (Finset.mem_Icc.mp hj).1
    omega

/-- A prime larger than the block length can divide at most one member of a
block of `k` consecutive positive integers. -/
theorem large_prime_hits_block_unique
    (k t p i j : ℕ) (hp : p.Prime) (hpk : k < p)
    (hi : i ∈ Finset.Icc 1 k) (hj : j ∈ Finset.Icc 1 k)
    (hpi : p ∣ t + i) (hpj : p ∣ t + j) : i = j := by
  have hpdiff : (p : ℤ) ∣ (i : ℤ) - j := by
    have hpi' : (p : ℤ) ∣ ((t + i : ℕ) : ℤ) := by exact_mod_cast hpi
    have hpj' : (p : ℤ) ∣ ((t + j : ℕ) : ℤ) := by exact_mod_cast hpj
    have hraw := dvd_sub hpi' hpj'
    have heq : ((t + i : ℕ) : ℤ) - ((t + j : ℕ) : ℤ) = (i : ℤ) - j := by
      push_cast
      ring
    rwa [heq] at hraw
  by_contra hij
  have hijz : (i : ℤ) ≠ (j : ℤ) := by exact_mod_cast hij
  have habspos : 0 < |(i : ℤ) - j| := abs_pos.mpr (sub_ne_zero.mpr hijz)
  have hpabs : (p : ℤ) ∣ |(i : ℤ) - j| := (dvd_abs _ _).mpr hpdiff
  have hple : (p : ℤ) ≤ |(i : ℤ) - j| := Int.le_of_dvd habspos hpabs
  have hi' := Finset.mem_Icc.mp hi
  have hj' := Finset.mem_Icc.mp hj
  have habslt : |(i : ℤ) - j| < p := by
    rw [abs_lt]
    constructor <;> omega
  omega

/-- If `p > k`, every positive power of `p` dividing a block product is
already carried by one factor of that block. -/
theorem large_prime_power_dvd_one_factor
    (k t p a : ℕ) (hp : p.Prime) (hpk : k < p) (ha : 0 < a)
    (hpow : p ^ a ∣ product k t) :
    ∃ i ∈ Finset.Icc 1 k, p ^ a ∣ t + i := by
  have hpProd : p ∣ product k t := (dvd_pow_self p ha.ne').trans hpow
  obtain ⟨i, hi, hpi⟩ := (hp.prime.dvd_finsetProd_iff (fun i : ℕ ↦ t + i)).mp hpProd
  let rest := ∏ j ∈ (Finset.Icc 1 k).erase i, (t + j)
  have hcopP : Nat.Coprime p rest := by
    apply Nat.Coprime.prod_right
    intro j hj
    apply hp.coprime_iff_not_dvd.mpr
    intro hpj
    have hj' := (Finset.mem_erase.mp hj).2
    have hji := large_prime_hits_block_unique k t p j i hp hpk hj' hi hpj hpi
    exact (Finset.mem_erase.mp hj).1 hji
  have hcopPow : Nat.Coprime (p ^ a) rest := hcopP.pow_left a
  have hsplit : (t + i) * rest = product k t := by
    exact Finset.mul_prod_erase (Finset.Icc 1 k) (fun j : ℕ ↦ t + j) hi
  rw [← hsplit] at hpow
  exact ⟨i, hi, hcopPow.dvd_of_dvd_mul_right hpow⟩
/-- The complete supplied `p`-power common to two disjoint blocks divides one
positive cross-block difference.  In particular this applies to the complete
`p`-primary part of their gcd once its exponent is supplied. -/
theorem large_prime_power_divides_cross_difference
    (k n m p a : ℕ) (hsep : n + k ≤ m) (hp : p.Prime) (hpk : k < p)
    (ha : 0 < a) (hcommon : p ^ a ∣ Nat.gcd (product k m) (product k n)) :
    ∃ i ∈ Finset.Icc 1 k, ∃ j ∈ Finset.Icc 1 k,
      ((p ^ a : ℕ) : ℤ) ∣ ((m + i : ℕ) : ℤ) - ((n + j : ℕ) : ℤ) ∧
      0 < ((m + i : ℕ) : ℤ) - ((n + j : ℕ) : ℤ) := by
  have hm : p ^ a ∣ product k m := hcommon.trans (Nat.gcd_dvd_left _ _)
  have hn : p ^ a ∣ product k n := hcommon.trans (Nat.gcd_dvd_right _ _)
  obtain ⟨i, hi, hpi⟩ := large_prime_power_dvd_one_factor k m p a hp hpk ha hm
  obtain ⟨j, hj, hpj⟩ := large_prime_power_dvd_one_factor k n p a hp hpk ha hn
  refine ⟨i, hi, j, hj, ?_, ?_⟩
  · have hpi' : ((p ^ a : ℕ) : ℤ) ∣ ((m + i : ℕ) : ℤ) := by exact_mod_cast hpi
    have hpj' : ((p ^ a : ℕ) : ℤ) ∣ ((n + j : ℕ) : ℤ) := by exact_mod_cast hpj
    exact dvd_sub hpi' hpj'
  · have hi' := (Finset.mem_Icc.mp hi).1
    have hj' := (Finset.mem_Icc.mp hj).2
    omega

/-- info: 'B686Round8.large_prime_power_dvd_one_factor' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms large_prime_power_dvd_one_factor

/-- info: 'B686Round8.large_prime_power_divides_cross_difference' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms large_prime_power_divides_cross_difference
/-- info: 'B686Round8.common_prime_divides_cross_difference' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms common_prime_divides_cross_difference

/-- info: 'B686Round8.large_prime_hits_block_unique' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms large_prime_hits_block_unique

end B686Round8

namespace B686UniformDistance
open B686Round8

/-- The distances from one position in an interval multiply to two factorials. -/
theorem distance_product_eq_factorials (k j : ℕ) (hj : j ∈ Finset.Icc 1 k) :
    (∏ i ∈ (Finset.Icc 1 k).erase j, Nat.dist i j) =
      (j - 1).factorial * (k - j).factorial := by
  have hj' := Finset.mem_Icc.mp hj
  have hsplit : (Finset.Icc 1 k).erase j =
      Finset.Icc 1 (j - 1) ∪ Finset.Icc (j + 1) k := by
    ext i
    simp only [Finset.mem_erase, Finset.mem_Icc, Finset.mem_union]
    omega
  have hdisj : Disjoint (Finset.Icc 1 (j - 1)) (Finset.Icc (j + 1) k) := by
    apply Finset.disjoint_left.mpr
    intro i hi hi'
    simp only [Finset.mem_Icc] at hi hi'
    omega
  rw [hsplit, Finset.prod_union hdisj]
  congr 1
  · rw [← Finset.prod_Ico_id_eq_factorial]
    refine Finset.prod_bij (fun i _ ↦ j - i) ?_ ?_ ?_ ?_
    · intro i hi
      simp only [Finset.mem_Icc] at hi
      simp only [Finset.mem_Ico]
      omega
    · intro i hi i' hi' heq
      simp only [Finset.mem_Icc] at hi hi'
      omega
    · intro b hb
      simp only [Finset.mem_Ico] at hb
      refine ⟨j - b, ?_, ?_⟩
      · simp only [Finset.mem_Icc]
        omega
      · omega
    · intro i hi
      apply Nat.dist_eq_sub_of_le
      have hi' := Finset.mem_Icc.mp hi
      omega
  · rw [← Finset.prod_Ico_id_eq_factorial]
    refine Finset.prod_bij (fun i _ ↦ i - j) ?_ ?_ ?_ ?_
    · intro i hi
      simp only [Finset.mem_Icc] at hi
      simp only [Finset.mem_Ico]
      omega
    · intro i hi i' hi' heq
      simp only [Finset.mem_Icc] at hi hi'
      omega
    · intro b hb
      simp only [Finset.mem_Ico] at hb
      refine ⟨b + j, ?_, ?_⟩
      · simp only [Finset.mem_Icc]
        omega
      · omega
    · intro i hi
      apply Nat.dist_eq_sub_of_le_right
      have hi' := Finset.mem_Icc.mp hi
      omega

/-- Deleting a maximum-valuation factor leaves at most the valuation of `(k-1)!`. -/
theorem small_prime_factorization_bound (k n p : ℕ) (hk : 1 ≤ k) (hp : p.Prime) :
    ∃ j ∈ Finset.Icc 1 k,
      (product k n).factorization p ≤
        (k - 1).factorial.factorization p + (n + j).factorization p := by
  have hnon : (Finset.Icc 1 k).Nonempty := ⟨1, Finset.mem_Icc.mpr ⟨le_rfl, hk⟩⟩
  obtain ⟨j, hj, hmax⟩ := (Finset.Icc 1 k).exists_max_image
    (fun i ↦ (n + i).factorization p) hnon
  have hterm : ∀ i ∈ (Finset.Icc 1 k).erase j,
      p ^ (n + i).factorization p ∣ Nat.dist i j := by
    intro i hi
    have hi' := (Finset.mem_erase.mp hi).2
    have hpi : p ^ (n + i).factorization p ∣ n + i := Nat.ordProj_dvd _ _
    have hpj : p ^ (n + i).factorization p ∣ n + j :=
      (pow_dvd_pow p (hmax i hi')).trans (Nat.ordProj_dvd _ _)
    have hsub1 : n + i - (n + j) = i - j := by omega
    have hsub2 : n + j - (n + i) = j - i := by omega
    have h1 := Nat.dvd_sub hpi hpj
    have h2 := Nat.dvd_sub hpj hpi
    rw [hsub1] at h1
    rw [hsub2] at h2
    exact dvd_add h1 h2
  have hprod := Finset.prod_dvd_prod_of_dvd (s := (Finset.Icc 1 k).erase j) (fun i ↦ p ^ (n + i).factorization p) (fun i ↦ Nat.dist i j) hterm
  rw [distance_product_eq_factorials k j hj] at hprod
  have hfact : (j - 1).factorial * (k - j).factorial ∣ (k - 1).factorial := by
    have hs : j - 1 + (k - j) = k - 1 := by
      have hj' := Finset.mem_Icc.mp hj
      omega
    rw [← hs]
    exact Nat.factorial_mul_factorial_dvd_factorial_add _ _
  have hpfull := hprod.trans hfact
  rw [Finset.prod_pow_eq_pow_sum] at hpfull
  have hsum := (hp.pow_dvd_iff_le_factorization (Nat.factorial_ne_zero (k - 1))).mp hpfull
  refine ⟨j, hj, ?_⟩
  have hne : ∀ i ∈ Finset.Icc 1 k, n + i ≠ 0 := by
    intro i hi
    have hi' := Finset.mem_Icc.mp hi
    omega
  rw [product, Nat.factorization_prod_apply hne]
  have hsplit := Finset.sum_erase_add (s := Finset.Icc 1 k)
    (f := fun i ↦ (n + i).factorization p) hj
  omega

/-- info: 'B686UniformDistance.distance_product_eq_factorials' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms distance_product_eq_factorials
/-- info: 'B686UniformDistance.small_prime_factorization_bound' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms small_prime_factorization_bound
end B686UniformDistance

set_option autoImplicit false
set_option relaxedAutoImplicit false

/-!
# Full binomial prime powers in a numerator interval

This file reuses `B686UniformDistance.small_prime_factorization_bound` from
`research/tasks/B686-Four/formalization/UniformDistance/SmallPrime.lean`,
source baseline `7fd3928656489afe2c80698f0a09d1d933444186`.
The maximum-valuation deletion argument is not reimplemented here.

The exponent is the actual binomial valuation plus the valuation of the index.
In particular the prime equal to the index is retained with its extra power.
-/

namespace B699LowIndex

private theorem shifted_product_eq_descFactorial {n i : ℕ} (hin : i ≤ n) :
    B686Round8.product i (n - i) = n.descFactorial i := by
  rw [B686Round8.product, Nat.descFactorial_eq_prod_range]
  refine Finset.prod_bij (fun j _ ↦ i - j) ?_ ?_ ?_ ?_
  · intro j hj
    simp only [Finset.mem_Icc] at hj
    simp only [Finset.mem_range]
    omega
  · intro j hj j' hj' hsame
    simp only [Finset.mem_Icc] at hj hj'
    omega
  · intro a ha
    simp only [Finset.mem_range] at ha
    refine ⟨i - a, ?_, ?_⟩
    · simp only [Finset.mem_Icc]
      omega
    · omega
  · intro j hj
    simp only [Finset.mem_Icc] at hj
    omega

/-- One numerator position carries the full binomial valuation together with
all powers removed by the index i. This holds for every prime, including p=i. -/
theorem binomial_factorization_add_index_le {n i p : ℕ}
    (hi : 1 ≤ i) (hin : i ≤ n) (hp : p.Prime) :
    ∃ a < i, (n.choose i).factorization p + i.factorization p ≤
      (n - a).factorization p := by
  obtain ⟨j, hj, hbound⟩ :=
    B686UniformDistance.small_prime_factorization_bound i (n - i) p hi hp
  have hjBounds := Finset.mem_Icc.mp hj
  have hchoose : n.choose i ≠ 0 := (Nat.choose_pos hin).ne'
  have hfactorial : i.factorial = i * (i - 1).factorial := by
    simpa only [show i - 1 + 1 = i by omega] using Nat.factorial_succ (i - 1)
  have hfactorization : i.factorial.factorization p =
      i.factorization p + (i - 1).factorial.factorization p := by
    rw [hfactorial, Nat.factorization_mul (by omega : i ≠ 0)
      (Nat.factorial_ne_zero (i - 1)), Finsupp.add_apply]
  rw [shifted_product_eq_descFactorial hin,
    Nat.descFactorial_eq_factorial_mul_choose,
    Nat.factorization_mul (Nat.factorial_ne_zero i) hchoose,
    Finsupp.add_apply, hfactorization] at hbound
  have hposition : n - i + j = n - (i - j) := by omega
  rw [hposition] at hbound
  exact ⟨i - j, by omega, by omega⟩

/-- The actual binomial p-power, including the complete p-part of the index,
divides one positive numerator term n-a with a<i. -/
theorem binomial_prime_power_localization {n i p : ℕ}
    (hi : 1 ≤ i) (hin : i ≤ n) (hp : p.Prime) :
    ∃ a < i, p ^ ((n.choose i).factorization p + i.factorization p) ∣ n - a := by
  obtain ⟨a, ha, hval⟩ := binomial_factorization_add_index_le hi hin hp
  exact ⟨a, ha, (hp.pow_dvd_iff_le_factorization (by omega : n - a ≠ 0)).2 hval⟩

/-- A supplied exponent below the actual binomial valuation uses the same
localization and still retains the full index contribution. -/
theorem binomial_prime_power_localization_of_le {n i p e : ℕ}
    (hi : 1 ≤ i) (hin : i ≤ n) (hp : p.Prime)
    (he : e ≤ (n.choose i).factorization p) :
    ∃ a < i, p ^ (e + i.factorization p) ∣ n - a := by
  obtain ⟨a, ha, hdiv⟩ := binomial_prime_power_localization hi hin hp
  exact ⟨a, ha, (Nat.pow_dvd_pow p (Nat.add_le_add_right he _)).trans hdiv⟩

end B699LowIndex

#print axioms B699LowIndex.binomial_factorization_add_index_le
#print axioms B699LowIndex.binomial_prime_power_localization
#print axioms B699LowIndex.binomial_prime_power_localization_of_le

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex
open B699LargePrimeStructure

/-- A localized full prime power with a large binomial component has a small
positive cofactor. This statement does not exclude the endpoint p=i. -/
theorem exists_small_cofactor_of_localized_power {n i a p e M : ℕ}
    (_hi : 1 ≤ i) (hin : i ≤ n) (ha : a < i) (hp : 0 < p)
    (hlarge : n ≤ M * p ^ e)
    (hdiv : p ^ (e + i.factorization p) ∣ n - a) :
    ∃ A : ℕ, 1 ≤ A ∧ A * p ^ i.factorization p ≤ M ∧
      n = A * p ^ (e + i.factorization p) + a := by
  obtain ⟨A, hAeq⟩ := hdiv
  have hA : 1 ≤ A := by
    by_contra h
    have hzero : A = 0 := by omega
    rw [hzero, Nat.mul_zero] at hAeq
    omega
  have hrepr : n = A * p ^ (e + i.factorization p) + a := by
    calc
      n = (n - a) + a := (Nat.sub_add_cancel (by omega : a ≤ n)).symm
      _ = p ^ (e + i.factorization p) * A + a := by rw [hAeq]
      _ = A * p ^ (e + i.factorization p) + a := by ac_rfl
  have hmul : (A * p ^ i.factorization p) * p ^ e ≤ M * p ^ e := by
    calc
      (A * p ^ i.factorization p) * p ^ e =
          A * p ^ (e + i.factorization p) := by rw [pow_add]; ring
      _ ≤ n := by omega
      _ ≤ M * p ^ e := hlarge
  have hbound : A * p ^ i.factorization p ≤ M :=
    Nat.le_of_mul_le_mul_right hmul (pow_pos hp e)
  exact ⟨A, hA, hbound, hrepr⟩

/-- The same cofactor certificate with the exact natural-number quotient bound. -/
theorem exists_small_cofactor_div_of_localized_power {n i a p e M : ℕ}
    (hi : 1 ≤ i) (hin : i ≤ n) (ha : a < i) (hp : 0 < p)
    (hlarge : n ≤ M * p ^ e)
    (hdiv : p ^ (e + i.factorization p) ∣ n - a) :
    ∃ A : ℕ, 1 ≤ A ∧ A ≤ M / p ^ i.factorization p ∧
      n = A * p ^ (e + i.factorization p) + a := by
  obtain ⟨A, hA, hbound, hrepr⟩ :=
    exists_small_cofactor_of_localized_power hi hin ha hp hlarge hdiv
  exact ⟨A, hA, (Nat.le_div_iff_mul_le (pow_pos hp _)).mpr hbound, hrepr⟩

/-- A positive cofactor in an interval representation bounds the full raw power. -/
theorem interval_power_le_of_representation {n a A Q : ℕ}
    (hA : 1 ≤ A) (hrepr : n = A * Q + a) : Q ≤ n := by
  have hQ : Q ≤ A * Q := by
    simpa only [one_mul] using Nat.mul_le_mul_right Q hA
  omega

/-- The raw power is strictly below any strict upper endpoint for n. -/
theorem interval_power_lt_upper_of_representation {n a A Q upper : ℕ}
    (hA : 1 ≤ A) (hrepr : n = A * Q + a) (hupper : n < upper) :
    Q < upper :=
  (interval_power_le_of_representation hA hrepr).trans_lt hupper

/-- A large actual binomial p-power yields a short interval with a positive
actual exponent. Every prime is allowed here, including p=i. -/
theorem binomial_power_interval_of_large_power {n i p M : ℕ}
    (hi : 1 ≤ i) (hin : i ≤ n) (hp : p.Prime) (hMn : M < n)
    (hlarge : n ≤ M * p ^ (n.choose i).factorization p) :
    0 < (n.choose i).factorization p ∧
      ∃ a < i, ∃ A : ℕ, 1 ≤ A ∧ A * p ^ i.factorization p ≤ M ∧
        n = A * p ^ ((n.choose i).factorization p + i.factorization p) + a := by
  have he : 0 < (n.choose i).factorization p := by
    by_contra h
    have hzero : (n.choose i).factorization p = 0 := by omega
    rw [hzero, pow_zero, mul_one] at hlarge
    omega
  obtain ⟨a, ha, hdiv⟩ := binomial_prime_power_localization hi hin hp
  obtain ⟨A, hA, hbound, hrepr⟩ :=
    exists_small_cofactor_of_localized_power hi hin ha hp.pos hlarge hdiv
  exact ⟨he, a, ha, A, hA, hbound, hrepr⟩

/-- An explicit actual-small-part lower bound places the original n in two
prime-distinct short intervals with full binomial and index exponents. -/
theorem exists_two_small_prime_power_intervals {n i M : ℕ}
    (hi : 2 ≤ i) (hin : i ≤ n) (hcount : 2 ≤ smallPrimeCount i)
    (hn : 0 < n) (hM : 0 < M) (hMn : M < n)
    (hU : n ^ smallPrimeCount i ≤
      M ^ (smallPrimeCount i - 1) * smallPrimePart n i) :
    ∃ p q : ℕ, p.Prime ∧ p < i ∧ q.Prime ∧ q < i ∧ p ≠ q ∧
      (0 < (n.choose i).factorization p ∧
        ∃ a < i, ∃ A : ℕ, 1 ≤ A ∧ A * p ^ i.factorization p ≤ M ∧
          n = A * p ^ ((n.choose i).factorization p + i.factorization p) + a) ∧
      (0 < (n.choose i).factorization q ∧
        ∃ b < i, ∃ B : ℕ, 1 ≤ B ∧ B * q ^ i.factorization q ≤ M ∧
          n = B * q ^ ((n.choose i).factorization q + i.factorization q) + b) := by
  obtain ⟨p, q, hp, hpi, hq, hqi, hpq, hpbig, hqbig⟩ :=
    exists_two_large_small_prime_powers hi hin hcount hn hM hU
  have hi1 : 1 ≤ i := by omega
  exact ⟨p, q, hp, hpi, hq, hqi, hpq,
    binomial_power_interval_of_large_power hi1 hin hp hMn hpbig,
    binomial_power_interval_of_large_power hi1 hin hq hMn hqbig⟩

end B699LowIndex

#print axioms B699LowIndex.exists_small_cofactor_of_localized_power
#print axioms B699LowIndex.exists_small_cofactor_div_of_localized_power
#print axioms B699LowIndex.interval_power_le_of_representation
#print axioms B699LowIndex.interval_power_lt_upper_of_representation
#print axioms B699LowIndex.binomial_power_interval_of_large_power
#print axioms B699LowIndex.exists_two_small_prime_power_intervals

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex
open B699LargePrimeStructure

/-- A computable list of prime-coloured intervals for one layer. Each triple is
(p, lower, upper), with products associated to the right. Empty clipped intervals
may remain. No loop ranges over the ambient upper endpoint. -/
def powerIntervalList (i M lo upper : ℕ) : List (ℕ × ℕ × ℕ) :=
  (List.range i).flatMap fun p ↦
    if p.Prime then
      (List.range (Nat.log p upper + 1)).flatMap fun h ↦
        if i.factorization p < h then
          let Q := p ^ h
          let amin := max 1 ((lo - i) / Q)
          let amax := min (M / p ^ i.factorization p) ((upper - 1) / Q)
          (List.range' amin (amax + 1 - amin)).map fun A ↦
            (p, max lo (A * Q), min (upper - 1) (A * Q + i - 1))
        else []
    else []

/-- Every allowed prime, exponent and cofactor contributes its explicit tuple
to the computable list, independently of whether the clipped interval is empty. -/
theorem power_interval_mem_of_bounds {i M lo upper p h A : ℕ}
    (hp : p.Prime) (hpi : p < i) (hh : h < Nat.log p upper + 1)
    (hindex : i.factorization p < h)
    (hAlo : max 1 ((lo - i) / p ^ h) ≤ A)
    (hAhi : A ≤ min (M / p ^ i.factorization p) ((upper - 1) / p ^ h)) :
    (p, max lo (A * p ^ h), min (upper - 1) (A * p ^ h + i - 1)) ∈
      powerIntervalList i M lo upper := by
  unfold powerIntervalList
  apply List.mem_flatMap.mpr
  refine ⟨p, List.mem_range.mpr hpi, ?_⟩
  rw [if_pos hp]
  apply List.mem_flatMap.mpr
  refine ⟨h, List.mem_range.mpr hh, ?_⟩
  rw [if_pos hindex]
  dsimp only
  apply List.mem_map.mpr
  refine ⟨A, ?_, rfl⟩
  apply List.mem_range'_1.mpr
  exact ⟨hAlo, by omega⟩

/-- The actual full-power interval representation lies in the finite list.
The logarithmic exponent cutoff and both cofactor bounds are proved here. -/
theorem power_interval_list_complete {n i M lo upper p e a A : ℕ}
    (hp : p.Prime) (hpi : p < i) (_hilo : i ≤ lo)
    (hlon : lo ≤ n) (hnupper : n < upper) (he : 0 < e)
    (ha : a < i) (hA : 1 ≤ A)
    (hbound : A * p ^ i.factorization p ≤ M)
    (hrepr : n = A * p ^ (e + i.factorization p) + a) :
    ∃ I ∈ powerIntervalList i M lo upper,
      I.1 = p ∧ I.2.1 ≤ n ∧ n ≤ I.2.2 := by
  let h := e + i.factorization p
  let Q := p ^ h
  have hrepr' : n = A * Q + a := hrepr
  have hQpos : 0 < Q := pow_pos hp.pos h
  have hQle : Q ≤ n := interval_power_le_of_representation hA hrepr'
  have hhlog : h ≤ Nat.log p upper :=
    Nat.le_log_of_pow_le hp.one_lt (hQle.trans hnupper.le)
  have hh : h < Nat.log p upper + 1 := by omega
  have hindex : i.factorization p < h := by dsimp only [h]; omega
  have hloProd : lo - i ≤ Q * A := by
    calc
      lo - i ≤ A * Q := by omega
      _ = Q * A := Nat.mul_comm A Q
  have hAlo : max 1 ((lo - i) / Q) ≤ A :=
    max_le hA (Nat.div_le_of_le_mul hloProd)
  have hMdiv : A ≤ M / p ^ i.factorization p :=
    (Nat.le_div_iff_mul_le (pow_pos hp.pos _)).mpr hbound
  have hUpperDiv : A ≤ (upper - 1) / Q :=
    (Nat.le_div_iff_mul_le hQpos).mpr (by omega)
  have hAhi : A ≤ min (M / p ^ i.factorization p) ((upper - 1) / Q) :=
    le_min hMdiv hUpperDiv
  have hmem : (p, max lo (A * Q), min (upper - 1) (A * Q + i - 1)) ∈
      powerIntervalList i M lo upper :=
    power_interval_mem_of_bounds hp hpi hh hindex hAlo hAhi
  refine ⟨(p, max lo (A * Q), min (upper - 1) (A * Q + i - 1)),
    hmem, rfl, ?_, ?_⟩
  · change max lo (A * Q) ≤ n
    exact max_le hlon (by omega)
  · change n ≤ min (upper - 1) (A * Q + i - 1)
    exact le_min (by omega) (by omega)

/-- The actual small-part inequality supplies two list members of different
prime colours that both contain n. No list-completeness premise is assumed. -/
theorem exists_two_colours_in_power_interval_list {n i M lo upper : ℕ}
    (hi : 2 ≤ i) (hin : i ≤ n) (hcount : 2 ≤ smallPrimeCount i)
    (hn : 0 < n) (hM : 0 < M) (hMn : M < n)
    (hU : n ^ smallPrimeCount i ≤
      M ^ (smallPrimeCount i - 1) * smallPrimePart n i)
    (hilo : i ≤ lo) (hlon : lo ≤ n) (hnupper : n < upper) :
    ∃ I ∈ powerIntervalList i M lo upper,
      ∃ J ∈ powerIntervalList i M lo upper,
        I.1 ≠ J.1 ∧ I.2.1 ≤ n ∧ n ≤ I.2.2 ∧ J.2.1 ≤ n ∧ n ≤ J.2.2 := by
  obtain ⟨p, q, hp, hpi, hq, hqi, hpq, hpInterval, hqInterval⟩ :=
    exists_two_small_prime_power_intervals hi hin hcount hn hM hMn hU
  obtain ⟨hep, a, ha, A, hA, hAbound, hreprp⟩ := hpInterval
  obtain ⟨heq, b, hb, B, hB, hBbound, hreprq⟩ := hqInterval
  obtain ⟨I, hI, hIp, hIlo, hIhi⟩ :=
    power_interval_list_complete hp hpi hilo hlon hnupper hep ha hA hAbound hreprp
  obtain ⟨J, hJ, hJq, hJlo, hJhi⟩ :=
    power_interval_list_complete hq hqi hilo hlon hnupper heq hb hB hBbound hreprq
  have hcolours : I.1 ≠ J.1 := by
    simpa only [hIp, hJq] using hpq
  exact ⟨I, hI, J, hJ, hcolours, hIlo, hIhi, hJlo, hJhi⟩

end B699LowIndex

#print axioms B699LowIndex.power_interval_mem_of_bounds
#print axioms B699LowIndex.power_interval_list_complete
#print axioms B699LowIndex.exists_two_colours_in_power_interval_list

set_option autoImplicit false
set_option relaxedAutoImplicit false

/-!
# Explicit large-divisor witnesses for finite row certificates

The executable checks use only the supplied divisor, factorials, descending
factorials, coprimality, prime witnesses, and exact integer comparisons.
The abstract correctness proof uses the accepted small/large prime-part split;
it does not require factoring the binomial coefficient when a row is checked.
-/

namespace B699LowIndex
open B699LargePrimeStructure

/-- A divisor coprime to (i-1)! belongs entirely to the inclusive p>=i part.
The endpoint p=i is deliberately not excluded by the factorial hypothesis. -/
theorem large_divisor_dvd_prime_part {n i D : ℕ}
    (hin : i ≤ n) (hD : D ∣ n.choose i)
    (hcop : D.Coprime (i - 1).factorial) :
    D ∣ B699BridgeAudit.primePart i (n.choose i) := by
  classical
  have hcopSmall : D.Coprime (smallPrimePart n i) := by
    unfold smallPrimePart
    apply Nat.Coprime.prod_right
    intro p hp
    obtain ⟨hmem, hpi⟩ := Finset.mem_filter.mp hp
    have hprime := Nat.prime_of_mem_primeFactors hmem
    have hpfact : p ∣ (i - 1).factorial :=
      hprime.dvd_factorial.mpr (by omega)
    exact (hcop.of_dvd_right hpfact).pow_right _
  apply hcopSmall.dvd_of_dvd_mul_left
  rw [smallPrimePart_mul_primePart hin]
  exact hD

/-- A supplied positive divisor yields the raw original B699 conclusion.
No complete factorization of C(n,i) appears among the checkable premises. -/
theorem common_of_large_divisor {n i j r s D : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (_hDpos : 0 < D) (hcop : D.Coprime (i - 1).factorial)
    (hnum : i.factorial * D ∣ n.descFactorial i)
    (hcompare : n ^ windowDegree i r s <
      windowConstant i r s * D ^ (2 * s - r)) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  have hin : i ≤ n := by omega
  have hDchoose : D ∣ n.choose i := by
    apply Nat.dvd_of_mul_dvd_mul_left (Nat.factorial_pos i)
    simpa only [Nat.descFactorial_eq_factorial_mul_choose] using hnum
  have hDprime := large_divisor_dvd_prime_part hin hDchoose hcop
  have hprimePos : 0 < B699BridgeAudit.primePart i (n.choose i) := by
    by_contra h
    have hzero : B699BridgeAudit.primePart i (n.choose i) = 0 := by omega
    have hsplit := smallPrimePart_mul_primePart hin
    rw [hzero, Nat.mul_zero] at hsplit
    have hchoose := Nat.choose_pos hin
    omega
  have hDle := Nat.le_of_dvd hprimePos hDprime
  apply common_of_scaled_prime_part hi hij hjn hsi
  exact hcompare.trans_le (Nat.mul_le_mul_left _ (Nat.pow_le_pow_left hDle _))

/-- A row range is witnessed either by a terminal prime or by an explicit divisor. -/
inductive RowWitness where
  | topPrime (p : ℕ)
  | largeDivisor (D : ℕ)
  deriving DecidableEq, Repr

/-- Closed integer interval together with its executable witness. -/
structure GoodSegment where
  lower : ℕ
  upper : ℕ
  witness : RowWitness
  deriving DecidableEq, Repr

def goodSegmentBounds (g : GoodSegment) : ℕ × ℕ := (g.lower, g.upper)

/-- Exact finite checks; the large-divisor case is intentionally a singleton. -/
def goodSegmentCheck (i r s : ℕ) (g : GoodSegment) : Bool :=
  match g.witness with
  | .topPrime p =>
      decide (g.lower ≤ g.upper ∧ p.Prime ∧ p ≤ g.lower ∧ g.upper < p + i)
  | .largeDivisor D =>
      decide (g.lower = g.upper ∧ 0 < D ∧ D.Coprime (i - 1).factorial ∧
        i.factorial * D ∣ g.lower.descFactorial i ∧
        g.lower ^ windowDegree i r s < windowConstant i r s * D ^ (2 * s - r))

/-- A checked segment covers every original legal j in each of its rows. -/
theorem goodSegmentCheck_sound {i r s : ℕ} {g : GoodSegment}
    (hi : 2 ≤ i) (hsi : s < i) (hcheck : goodSegmentCheck i r s g = true)
    {n j : ℕ} (hlo : g.lower ≤ n) (hup : n ≤ g.upper)
    (hij : i < j) (hjn : j ≤ n / 2) : Common n i j := by
  cases hw : g.witness with
  | topPrime p =>
      have hc : g.lower ≤ g.upper ∧ p.Prime ∧ p ≤ g.lower ∧ g.upper < p + i :=
        of_decide_eq_true (by simpa only [goodSegmentCheck, hw] using hcheck)
      obtain ⟨_, hp, hplower, hupper⟩ := hc
      exact common_of_top_prime (by omega) hij hjn hp (by omega) (by omega)
  | largeDivisor D =>
      have hc : g.lower = g.upper ∧ 0 < D ∧ D.Coprime (i - 1).factorial ∧
          i.factorial * D ∣ g.lower.descFactorial i ∧
          g.lower ^ windowDegree i r s < windowConstant i r s * D ^ (2 * s - r) :=
        of_decide_eq_true (by simpa only [goodSegmentCheck, hw] using hcheck)
      obtain ⟨heq, hDpos, hcop, hnum, hcompare⟩ := hc
      have hn : n = g.lower := by omega
      subst n
      exact common_of_large_divisor hi hij hjn hsi hDpos hcop hnum hcompare

end B699LowIndex

#print axioms B699LowIndex.large_divisor_dvd_prime_part
#print axioms B699LowIndex.common_of_large_divisor
#print axioms B699LowIndex.goodSegmentCheck_sound

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex

abbrev NatInterval := ℕ × ℕ
abbrev ColouredInterval := ℕ × ℕ × ℕ

def intervalMem (n : ℕ) (I : NatInterval) : Prop :=
  I.1 ≤ n ∧ n ≤ I.2

/-- A linear certificate checker for a closed interval covered by a supplied
ordered list. Only a true result is used; arbitrary gaps make the check fail. -/
def coverCheck (lo hi : ℕ) : List NatInterval → Bool
  | [] => decide (hi < lo)
  | (a, b) :: rest =>
      if hi < lo then true
      else if b < lo then coverCheck lo hi rest
      else if lo < a then false
      else if hi ≤ b then true
      else coverCheck (b + 1) hi rest

theorem coverCheck_sound (cover : List NatInterval) :
    ∀ lo hi n : ℕ, coverCheck lo hi cover = true → lo ≤ n → n ≤ hi →
      ∃ I ∈ cover, intervalMem n I := by
  induction cover with
  | nil =>
      intro lo hi n hcheck hlo hhi
      simp only [coverCheck, decide_eq_true_eq] at hcheck
      omega
  | cons I rest ih =>
      obtain ⟨a, b⟩ := I
      intro lo hi n hcheck hlo hhi
      by_cases hempty : hi < lo
      · omega
      by_cases hbefore : b < lo
      · have hr : coverCheck lo hi rest = true := by
          simpa only [coverCheck, if_neg hempty, if_pos hbefore] using hcheck
        obtain ⟨J, hJ, hnJ⟩ := ih lo hi n hr hlo hhi
        exact ⟨J, List.mem_cons_of_mem _ hJ, hnJ⟩
      by_cases hgap : lo < a
      · simp only [coverCheck, if_neg hempty, if_neg hbefore, if_pos hgap,
          Bool.false_eq_true] at hcheck
      by_cases hdone : hi ≤ b
      · refine ⟨(a, b), List.mem_cons_self, ?_⟩
        unfold intervalMem
        dsimp only
        omega
      by_cases hnhead : n ≤ b
      · refine ⟨(a, b), List.mem_cons_self, ?_⟩
        unfold intervalMem
        dsimp only
        omega
      · have hr : coverCheck (b + 1) hi rest = true := by
          simpa only [coverCheck, if_neg hempty, if_neg hbefore, if_neg hgap,
            if_neg hdone] using hcheck
        obtain ⟨J, hJ, hnJ⟩ := ih (b + 1) hi n hr (by omega) hhi
        exact ⟨J, List.mem_cons_of_mem _ hJ, hnJ⟩

/-- Check every intersection between intervals of different prime colours. -/
def pairCoverCheck (intervals : List ColouredInterval) (cover : List NatInterval) : Bool :=
  intervals.all fun I =>
    intervals.all fun J =>
      if I.1 = J.1 then true
      else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) cover

theorem pairCoverCheck_sound {intervals : List ColouredInterval}
    {cover : List NatInterval} {I J : ColouredInterval} {n : ℕ}
    (hcheck : pairCoverCheck intervals cover = true)
    (hI : I ∈ intervals) (hJ : J ∈ intervals) (hcolours : I.1 ≠ J.1)
    (hIlow : I.2.1 ≤ n) (hIhigh : n ≤ I.2.2)
    (hJlow : J.2.1 ≤ n) (hJhigh : n ≤ J.2.2) :
    ∃ K ∈ cover, intervalMem n K := by
  unfold pairCoverCheck at hcheck
  have hrow := List.all_eq_true.mp hcheck I hI
  have hpair := List.all_eq_true.mp hrow J hJ
  have hc : coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) cover = true := by
    simpa only [if_neg hcolours] using hpair
  exact coverCheck_sound cover _ _ n hc (by omega) (by omega)

end B699LowIndex

#print axioms B699LowIndex.coverCheck_sound
#print axioms B699LowIndex.pairCoverCheck_sound

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex
open B699LargePrimeStructure

structure CoverLayer where
  lower : ℕ
  upper : ℕ
  M : ℕ
  deriving DecidableEq, Repr

def CoverLayer.bounds (layer : CoverLayer) : NatInterval :=
  (layer.lower, layer.upper - 1)

structure FiniteCoverRow where
  height : HeightCertificateDatum
  goods : List GoodSegment
  layers : List CoverLayer
  deriving DecidableEq, Repr

def LayerArithmeticValid (height : HeightCertificateDatum) (layer : CoverLayer) : Prop :=
  2 ≤ smallPrimeCount height.i ∧
  0 < layer.M ∧
  layer.M < layer.lower ∧
  height.i * (height.i - 1) ≤ layer.lower ∧
  height.i ≤ layer.lower ∧
  layer.lower < layer.upper ∧
  layer.upper ≤ height.n0 ∧
  (2 * height.i.factorial) ^ (2 * height.s - height.r) ≤
    windowConstant height.i height.r height.s *
      layer.M ^ ((2 * height.s - height.r) * (smallPrimeCount height.i - 1)) *
      layer.lower ^ (height.i * (2 * height.s - height.r) -
        heightExponent height.i height.r height.s)

instance (height : HeightCertificateDatum) (layer : CoverLayer) :
    Decidable (LayerArithmeticValid height layer) := by
  unfold LayerArithmeticValid
  infer_instance

/-- Empty clipped intervals are removed before the quadratic pair check. -/
def activePowerIntervalList (i M lo upper : ℕ) : List ColouredInterval :=
  (powerIntervalList i M lo upper).filter (fun I => decide (I.2.1 ≤ I.2.2))

def coverLayerCheck (height : HeightCertificateDatum) (goods : List GoodSegment)
    (layer : CoverLayer) : Bool :=
  decide (LayerArithmeticValid height layer) &&
    pairCoverCheck (activePowerIntervalList height.i layer.M layer.lower layer.upper)
      (goods.map goodSegmentBounds)

/-- All supplied certificates are executable finite checks. -/
def finiteCoverRowCheck (row : FiniteCoverRow) : Bool :=
  decide (row.height ∈ heightCertificateData) &&
  row.goods.all (goodSegmentCheck row.height.i row.height.r row.height.s) &&
  coverCheck (2 * row.height.i + 2) (row.height.i * (row.height.i - 1) - 1)
    (row.goods.map goodSegmentBounds) &&
  coverCheck (row.height.i * (row.height.i - 1)) (row.height.n0 - 1)
    (row.layers.map CoverLayer.bounds) &&
  row.layers.all (coverLayerCheck row.height row.goods)

theorem checked_goods_cover {i r s : ℕ} {goods : List GoodSegment}
    (hi : 2 ≤ i) (hsi : s < i)
    (hgoods : goods.all (goodSegmentCheck i r s) = true)
    {n j : ℕ} (hij : i < j) (hjn : j ≤ n / 2)
    {I : NatInterval} (hI : I ∈ goods.map goodSegmentBounds) (hIn : intervalMem n I) :
    Common n i j := by
  obtain ⟨g, hg, heq⟩ := List.mem_map.mp hI
  rw [← heq] at hIn
  have hcheck := List.all_eq_true.mp hgoods g hg
  exact goodSegmentCheck_sound hi hsi hcheck hIn.1 hIn.2 hij hjn

/-- One checked layer excludes every genuine counterexample in that layer.
The prime-power list is complete by a theorem, not by a supplied assumption. -/
theorem coverLayerCheck_sound {height : HeightCertificateDatum}
    {goods : List GoodSegment} {layer : CoverLayer}
    (hregistered : height ∈ heightCertificateData)
    (hgoods : goods.all (goodSegmentCheck height.i height.r height.s) = true)
    (hcheck : coverLayerCheck height goods layer = true)
    {n j : ℕ} (hlo : layer.lower ≤ n) (hup : n ≤ layer.upper - 1)
    (hij : height.i < j) (hjn : j ≤ n / 2) : Common n height.i j := by
  have hv := heightCertificateData_valid hregistered
  obtain ⟨hi, _, _, hsi, hlambda, _, hdegree, _⟩ := hv
  have hc := hcheck
  simp only [coverLayerCheck, Bool.and_eq_true] at hc
  have hmeta : LayerArithmeticValid height layer := of_decide_eq_true hc.1
  obtain ⟨hcount, hM, hMH, hH, hilo, hinterval, _, hcertificate⟩ := hmeta
  have hupper : n < layer.upper := by omega
  have hexponent : height.i * (2 * height.s - height.r) =
      heightExponent height.i height.r height.s +
        (height.i * (2 * height.s - height.r) -
          heightExponent height.i height.r height.s) :=
    (Nat.add_sub_of_le hdegree).symm
  by_contra hno
  have hU := noCommon_small_part_lower_of_certificate
    (r := height.r) (s := height.s) (H := layer.lower) (M := layer.M)
    hi hij hjn hsi hlambda hH hlo hexponent hcertificate hno
  obtain ⟨I, hI, J, hJ, hcolours, hIlo, hIhi, hJlo, hJhi⟩ :=
    exists_two_colours_in_power_interval_list hi (by omega) hcount (by omega)
      hM (by omega) hU hilo hlo hupper
  have hIactive : I ∈ activePowerIntervalList height.i layer.M layer.lower layer.upper := by
    simp only [activePowerIntervalList, List.mem_filter, decide_eq_true_eq]
    exact ⟨hI, hIlo.trans hIhi⟩
  have hJactive : J ∈ activePowerIntervalList height.i layer.M layer.lower layer.upper := by
    simp only [activePowerIntervalList, List.mem_filter, decide_eq_true_eq]
    exact ⟨hJ, hJlo.trans hJhi⟩
  obtain ⟨K, hK, hnK⟩ :=
    pairCoverCheck_sound hc.2 hIactive hJactive hcolours hIlo hIhi hJlo hJhi
  exact hno (checked_goods_cover hi hsi hgoods hij hjn hK hnK)

/-- The complete row proof handles the tail, all small legal n, and every
intermediate layer. Its only certificate premise is a computed Boolean. -/
theorem common_of_finite_cover_row_checked {row : FiniteCoverRow}
    (hcheck : finiteCoverRowCheck row = true) {n j : ℕ}
    (hij : row.height.i < j) (hjn : j ≤ n / 2) :
    ∃ p : ℕ, p.Prime ∧ row.height.i ≤ p ∧
      p ∣ Nat.gcd (n.choose row.height.i) (n.choose j) := by
  have hc := hcheck
  simp only [finiteCoverRowCheck, Bool.and_eq_true, decide_eq_true_eq, and_assoc] at hc
  obtain ⟨hregistered, hgoods, hsmall, hlayercover, hlayers⟩ := hc
  have hv := heightCertificateData_valid hregistered
  obtain ⟨hi, _, _, hsi, _, _, _, _⟩ := hv
  by_cases htail : row.height.n0 ≤ n
  · exact common_of_registered_height hregistered hij hjn htail
  by_cases hlow : n < row.height.i * (row.height.i - 1)
  · obtain ⟨I, hI, hIn⟩ :=
      coverCheck_sound (row.goods.map goodSegmentBounds)
        (2 * row.height.i + 2) (row.height.i * (row.height.i - 1) - 1) n
        hsmall (by omega) (by omega)
    exact checked_goods_cover hi hsi hgoods hij hjn hI hIn
  · obtain ⟨I, hI, hIn⟩ :=
      coverCheck_sound (row.layers.map CoverLayer.bounds)
        (row.height.i * (row.height.i - 1)) (row.height.n0 - 1) n
        hlayercover (by omega) (by omega)
    obtain ⟨layer, hLayer, heq⟩ := List.mem_map.mp hI
    rw [← heq] at hIn
    have hLayerCheck := List.all_eq_true.mp hlayers layer hLayer
    exact coverLayerCheck_sound hregistered hgoods hLayerCheck hIn.1 hIn.2 hij hjn

end B699LowIndex

#print axioms B699LowIndex.coverLayerCheck_sound
#print axioms B699LowIndex.common_of_finite_cover_row_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row029_height : HeightCertificateDatum := { i := 29, r := 9, s := 19, n0Power10 := 37 }

def row029_goods : List GoodSegment := [
  { lower := 60, upper := 87, witness := RowWitness.topPrime 59 },
  { lower := 88, upper := 111, witness := RowWitness.topPrime 83 },
  { lower := 112, upper := 137, witness := RowWitness.topPrime 109 },
  { lower := 138, upper := 165, witness := RowWitness.topPrime 137 },
  { lower := 166, upper := 191, witness := RowWitness.topPrime 163 },
  { lower := 192, upper := 219, witness := RowWitness.topPrime 191 },
  { lower := 220, upper := 239, witness := RowWitness.topPrime 211 },
  { lower := 240, upper := 267, witness := RowWitness.topPrime 239 },
  { lower := 268, upper := 291, witness := RowWitness.topPrime 263 },
  { lower := 292, upper := 311, witness := RowWitness.topPrime 283 },
  { lower := 312, upper := 339, witness := RowWitness.topPrime 311 },
  { lower := 340, upper := 365, witness := RowWitness.topPrime 337 },
  { lower := 366, upper := 387, witness := RowWitness.topPrime 359 },
  { lower := 388, upper := 411, witness := RowWitness.topPrime 383 },
  { lower := 412, upper := 437, witness := RowWitness.topPrime 409 },
  { lower := 438, upper := 461, witness := RowWitness.topPrime 433 },
  { lower := 462, upper := 489, witness := RowWitness.topPrime 461 },
  { lower := 490, upper := 515, witness := RowWitness.topPrime 487 },
  { lower := 516, upper := 537, witness := RowWitness.topPrime 509 },
  { lower := 538, upper := 551, witness := RowWitness.topPrime 523 },
  { lower := 552, upper := 575, witness := RowWitness.topPrime 547 },
  { lower := 576, upper := 599, witness := RowWitness.topPrime 571 },
  { lower := 600, upper := 627, witness := RowWitness.topPrime 599 },
  { lower := 628, upper := 647, witness := RowWitness.topPrime 619 },
  { lower := 648, upper := 675, witness := RowWitness.topPrime 647 },
  { lower := 676, upper := 701, witness := RowWitness.topPrime 673 },
  { lower := 702, upper := 729, witness := RowWitness.topPrime 701 },
  { lower := 730, upper := 755, witness := RowWitness.topPrime 727 },
  { lower := 756, upper := 779, witness := RowWitness.topPrime 751 },
  { lower := 780, upper := 801, witness := RowWitness.topPrime 773 },
  { lower := 802, upper := 825, witness := RowWitness.topPrime 797 },
  { lower := 826, upper := 851, witness := RowWitness.topPrime 823 },
  { lower := 852, upper := 867, witness := RowWitness.topPrime 839 },
  { lower := 868, upper := 891, witness := RowWitness.topPrime 863 },
  { lower := 892, upper := 915, witness := RowWitness.topPrime 887 },
  { lower := 916, upper := 919, witness := RowWitness.topPrime 911 },
  { lower := 931, upper := 956, witness := RowWitness.topPrime 929 },
  { lower := 968, upper := 995, witness := RowWitness.topPrime 967 },
  { lower := 996, upper := 1019, witness := RowWitness.topPrime 991 },
  { lower := 1020, upper := 1047, witness := RowWitness.topPrime 1019 },
  { lower := 1048, upper := 1067, witness := RowWitness.topPrime 1039 },
  { lower := 1068, upper := 1091, witness := RowWitness.topPrime 1063 },
  { lower := 1092, upper := 1116, witness := RowWitness.topPrime 1091 },
  { lower := 1127, upper := 1151, witness := RowWitness.topPrime 1123 },
  { lower := 1152, upper := 1179, witness := RowWitness.topPrime 1151 },
  { lower := 1180, upper := 1199, witness := RowWitness.topPrime 1171 },
  { lower := 1200, upper := 1204, witness := RowWitness.topPrime 1193 },
  { lower := 1210, upper := 1211, witness := RowWitness.topPrime 1201 },
  { lower := 1215, upper := 1241, witness := RowWitness.topPrime 1213 },
  { lower := 1242, upper := 1244, witness := RowWitness.topPrime 1237 },
  { lower := 1250, upper := 1253, witness := RowWitness.topPrime 1249 },
  { lower := 1274, upper := 1278, witness := RowWitness.topPrime 1259 },
  { lower := 1280, upper := 1307, witness := RowWitness.topPrime 1279 },
  { lower := 1308, upper := 1308, witness := RowWitness.topPrime 1307 },
  { lower := 1323, upper := 1324, witness := RowWitness.topPrime 1321 },
  { lower := 1331, upper := 1355, witness := RowWitness.topPrime 1327 },
  { lower := 1356, upper := 1356, witness := RowWitness.largeDivisor 1815068943375751502988867192965646653087223540945133 },
  { lower := 1357, upper := 1357, witness := RowWitness.largeDivisor 1290229730833365526221001980541845211230676974888709 },
  { lower := 1358, upper := 1358, witness := RowWitness.largeDivisor 282510798850646627637555738403067687334933784569311 },
  { lower := 1359, upper := 1359, witness := RowWitness.largeDivisor 42659130626447640773270916498863220787575001469965961 },
  { lower := 1360, upper := 1360, witness := RowWitness.largeDivisor 42659130626447640773270916498863220787575001469965961 },
  { lower := 1361, upper := 1389, witness := RowWitness.topPrime 1361 },
  { lower := 1390, upper := 1403, witness := RowWitness.topPrime 1381 },
  { lower := 1421, upper := 1436, witness := RowWitness.topPrime 1409 },
  { lower := 1444, upper := 1467, witness := RowWitness.topPrime 1439 },
  { lower := 1468, upper := 1487, witness := RowWitness.topPrime 1459 },
  { lower := 1488, upper := 1498, witness := RowWitness.topPrime 1487 },
  { lower := 1500, upper := 1500, witness := RowWitness.topPrime 1499 },
  { lower := 1519, upper := 1539, witness := RowWitness.topPrime 1511 },
  { lower := 1540, upper := 1559, witness := RowWitness.topPrime 1531 },
  { lower := 1560, upper := 1564, witness := RowWitness.topPrime 1559 },
  { lower := 1573, upper := 1599, witness := RowWitness.topPrime 1571 },
  { lower := 1600, upper := 1615, witness := RowWitness.topPrime 1597 },
  { lower := 1617, upper := 1641, witness := RowWitness.topPrime 1613 },
  { lower := 1642, upper := 1648, witness := RowWitness.topPrime 1637 },
  { lower := 1690, upper := 1692, witness := RowWitness.topPrime 1669 },
  { lower := 1694, upper := 1721, witness := RowWitness.topPrime 1693 },
  { lower := 1722, upper := 1749, witness := RowWitness.topPrime 1721 },
  { lower := 1750, upper := 1762, witness := RowWitness.topPrime 1747 },
  { lower := 1792, upper := 1817, witness := RowWitness.topPrime 1789 },
  { lower := 1818, upper := 1833, witness := RowWitness.topPrime 1811 },
  { lower := 1859, upper := 1875, witness := RowWitness.topPrime 1847 },
  { lower := 1876, upper := 1891, witness := RowWitness.topPrime 1873 },
  { lower := 1936, upper := 1961, witness := RowWitness.topPrime 1933 },
  { lower := 1962, upper := 1964, witness := RowWitness.topPrime 1951 },
  { lower := 2000, upper := 2012, witness := RowWitness.topPrime 1999 },
  { lower := 2023, upper := 2045, witness := RowWitness.topPrime 2017 },
  { lower := 2046, upper := 2067, witness := RowWitness.topPrime 2039 },
  { lower := 2068, upper := 2085, witness := RowWitness.topPrime 2063 },
  { lower := 2116, upper := 2141, witness := RowWitness.topPrime 2113 },
  { lower := 2142, upper := 2144, witness := RowWitness.topPrime 2141 },
  { lower := 2176, upper := 2189, witness := RowWitness.topPrime 2161 },
  { lower := 2190, upper := 2207, witness := RowWitness.topPrime 2179 },
  { lower := 2208, upper := 2215, witness := RowWitness.topPrime 2207 },
  { lower := 2268, upper := 2278, witness := RowWitness.topPrime 2267 },
  { lower := 2304, upper := 2325, witness := RowWitness.topPrime 2297 },
  { lower := 2326, upper := 2332, witness := RowWitness.topPrime 2311 },
  { lower := 2366, upper := 2385, witness := RowWitness.topPrime 2357 },
  { lower := 2386, upper := 2394, witness := RowWitness.topPrime 2383 },
  { lower := 2401, upper := 2403, witness := RowWitness.topPrime 2399 },
  { lower := 2420, upper := 2445, witness := RowWitness.topPrime 2417 },
  { lower := 2446, upper := 2458, witness := RowWitness.topPrime 2441 },
  { lower := 2511, upper := 2531, witness := RowWitness.topPrime 2503 },
  { lower := 2532, upper := 2559, witness := RowWitness.topPrime 2531 },
  { lower := 2560, upper := 2569, witness := RowWitness.topPrime 2557 },
  { lower := 2601, upper := 2620, witness := RowWitness.topPrime 2593 },
  { lower := 2625, upper := 2629, witness := RowWitness.topPrime 2621 },
  { lower := 2645, upper := 2653, witness := RowWitness.topPrime 2633 },
  { lower := 2662, upper := 2687, witness := RowWitness.topPrime 2659 },
  { lower := 2688, upper := 2701, witness := RowWitness.topPrime 2687 },
  { lower := 2704, upper := 2716, witness := RowWitness.topPrime 2699 },
  { lower := 2750, upper := 2772, witness := RowWitness.topPrime 2749 },
  { lower := 2875, upper := 2889, witness := RowWitness.topPrime 2861 },
  { lower := 2890, upper := 2915, witness := RowWitness.topPrime 2887 },
  { lower := 2916, upper := 2932, witness := RowWitness.topPrime 2909 },
  { lower := 2944, upper := 2944, witness := RowWitness.topPrime 2939 },
  { lower := 3025, upper := 3028, witness := RowWitness.topPrime 3023 },
  { lower := 3042, upper := 3053, witness := RowWitness.topPrime 3041 },
  { lower := 3087, upper := 3100, witness := RowWitness.topPrime 3083 },
  { lower := 3146, upper := 3153, witness := RowWitness.topPrime 3137 },
  { lower := 3159, upper := 3165, witness := RowWitness.topPrime 3137 },
  { lower := 3166, upper := 3191, witness := RowWitness.topPrime 3163 },
  { lower := 3192, upper := 3207, witness := RowWitness.topPrime 3191 },
  { lower := 3211, upper := 3228, witness := RowWitness.topPrime 3209 },
  { lower := 3250, upper := 3257, witness := RowWitness.topPrime 3229 },
  { lower := 3258, upper := 3278, witness := RowWitness.topPrime 3257 },
  { lower := 3380, upper := 3401, witness := RowWitness.topPrime 3373 },
  { lower := 3402, upper := 3416, witness := RowWitness.topPrime 3391 },
  { lower := 3430, upper := 3430, witness := RowWitness.topPrime 3413 },
  { lower := 3456, upper := 3458, witness := RowWitness.topPrime 3449 },
  { lower := 3468, upper := 3484, witness := RowWitness.topPrime 3467 },
  { lower := 3509, upper := 3527, witness := RowWitness.topPrime 3499 },
  { lower := 3528, upper := 3528, witness := RowWitness.topPrime 3527 },
  { lower := 3610, upper := 3612, witness := RowWitness.topPrime 3607 },
  { lower := 3625, upper := 3651, witness := RowWitness.topPrime 3623 },
  { lower := 3652, upper := 3658, witness := RowWitness.topPrime 3643 },
  { lower := 3712, upper := 3737, witness := RowWitness.topPrime 3709 },
  { lower := 3738, upper := 3740, witness := RowWitness.topPrime 3733 },
  { lower := 3751, upper := 3767, witness := RowWitness.topPrime 3739 },
  { lower := 3768, upper := 3785, witness := RowWitness.topPrime 3767 },
  { lower := 3887, upper := 3909, witness := RowWitness.topPrime 3881 },
  { lower := 3910, upper := 3915, witness := RowWitness.topPrime 3907 },
  { lower := 3971, upper := 3995, witness := RowWitness.topPrime 3967 },
  { lower := 3996, upper := 3999, witness := RowWitness.topPrime 3989 },
  { lower := 4056, upper := 4074, witness := RowWitness.topPrime 4051 },
  { lower := 4116, upper := 4124, witness := RowWitness.topPrime 4111 },
  { lower := 4131, upper := 4144, witness := RowWitness.topPrime 4129 },
  { lower := 4232, upper := 4253, witness := RowWitness.topPrime 4231 },
  { lower := 4335, upper := 4355, witness := RowWitness.topPrime 4327 },
  { lower := 4356, upper := 4363, witness := RowWitness.topPrime 4349 },
  { lower := 4374, upper := 4401, witness := RowWitness.topPrime 4373 },
  { lower := 4402, upper := 4403, witness := RowWitness.topPrime 4397 },
  { lower := 4617, upper := 4631, witness := RowWitness.topPrime 4603 },
  { lower := 4632, upper := 4645, witness := RowWitness.topPrime 4621 },
  { lower := 4864, upper := 4888, witness := RowWitness.topPrime 4861 },
  { lower := 4913, upper := 4929, witness := RowWitness.topPrime 4909 },
  { lower := 5070, upper := 5082, witness := RowWitness.topPrime 5059 },
  { lower := 5120, upper := 5131, witness := RowWitness.topPrime 5119 },
  { lower := 5145, upper := 5147, witness := RowWitness.topPrime 5119 },
  { lower := 5148, upper := 5148, witness := RowWitness.topPrime 5147 },
  { lower := 5346, upper := 5352, witness := RowWitness.topPrime 5333 },
  { lower := 5491, upper := 5511, witness := RowWitness.topPrime 5483 },
  { lower := 5512, upper := 5516, witness := RowWitness.topPrime 5507 },
  { lower := 5632, upper := 5651, witness := RowWitness.topPrime 5623 },
  { lower := 5652, upper := 5653, witness := RowWitness.topPrime 5651 },
  { lower := 5780, upper := 5804, witness := RowWitness.topPrime 5779 },
  { lower := 5831, upper := 5855, witness := RowWitness.topPrime 5827 },
  { lower := 5856, upper := 5859, witness := RowWitness.topPrime 5851 },
  { lower := 6075, upper := 6097, witness := RowWitness.topPrime 6073 },
  { lower := 6144, upper := 6165, witness := RowWitness.topPrime 6143 },
  { lower := 6358, upper := 6376, witness := RowWitness.topPrime 6353 },
  { lower := 6517, upper := 6519, witness := RowWitness.topPrime 6491 },
  { lower := 6520, upper := 6520, witness := RowWitness.largeDivisor 60421990750951813132935796085831089696994808504804701818967609664746561 },
  { lower := 6521, upper := 6526, witness := RowWitness.topPrime 6521 },
  { lower := 6655, upper := 6681, witness := RowWitness.topPrime 6653 },
  { lower := 6682, upper := 6683, witness := RowWitness.topPrime 6679 },
  { lower := 6860, upper := 6885, witness := RowWitness.topPrime 6857 },
  { lower := 6886, upper := 6903, witness := RowWitness.topPrime 6883 },
  { lower := 6936, upper := 6940, witness := RowWitness.topPrime 6917 },
  { lower := 7220, upper := 7247, witness := RowWitness.topPrime 7219 },
  { lower := 7248, upper := 7248, witness := RowWitness.topPrime 7247 },
  { lower := 7424, upper := 7434, witness := RowWitness.topPrime 7417 },
  { lower := 7514, upper := 7528, witness := RowWitness.topPrime 7507 },
  { lower := 7942, upper := 7963, witness := RowWitness.topPrime 7937 },
  { lower := 8670, upper := 8692, witness := RowWitness.topPrime 8669 },
  { lower := 8750, upper := 8775, witness := RowWitness.topPrime 8747 },
  { lower := 8776, upper := 8776, witness := RowWitness.topPrime 8761 },
  { lower := 9386, upper := 9403, witness := RowWitness.topPrime 9377 },
  { lower := 9747, upper := 9756, witness := RowWitness.topPrime 9743 },
  { lower := 10648, upper := 10653, witness := RowWitness.topPrime 10639 },
  { lower := 11264, upper := 11278, witness := RowWitness.topPrime 11261 },
  { lower := 11664, upper := 11666, witness := RowWitness.topPrime 11657 },
  { lower := 12005, upper := 12007, witness := RowWitness.topPrime 11987 },
  { lower := 13125, upper := 13149, witness := RowWitness.topPrime 13121 },
  { lower := 13150, upper := 13150, witness := RowWitness.topPrime 13147 },
  { lower := 13312, upper := 13337, witness := RowWitness.topPrime 13309 },
  { lower := 13338, upper := 13338, witness := RowWitness.topPrime 13337 },
  { lower := 13754, upper := 13778, witness := RowWitness.topPrime 13751 },
  { lower := 13851, upper := 13852, witness := RowWitness.topPrime 13841 },
  { lower := 15360, upper := 15369, witness := RowWitness.topPrime 15359 },
  { lower := 15379, upper := 15388, witness := RowWitness.topPrime 15377 },
  { lower := 17500, upper := 17524, witness := RowWitness.topPrime 17497 },
  { lower := 21875, upper := 21898, witness := RowWitness.topPrime 21871 },
  { lower := 24576, upper := 24593, witness := RowWitness.topPrime 24571 },
  { lower := 26624, upper := 26625, witness := RowWitness.topPrime 26597 },
  { lower := 26626, upper := 26626, witness := RowWitness.largeDivisor 1599393369684335078023765979521119447092836559551135567799388628574914560984441069761 },
  { lower := 26627, upper := 26648, witness := RowWitness.topPrime 26627 },
  { lower := 30618, upper := 30621, witness := RowWitness.topPrime 30593 },
  { lower := 30622, upper := 30622, witness := RowWitness.largeDivisor 277864952332438311946331093736932694502651256920421324580787985003384871304054691249560169441 },
  { lower := 30623, upper := 30623, witness := RowWitness.largeDivisor 1668770040258140503379583660228689920328434877559141443937530979556512044311446717029864888957 },
  { lower := 30624, upper := 30624, witness := RowWitness.largeDivisor 7908862750038580584737363318619383508665568140090717743779767675623279830859937047534904687 },
  { lower := 30625, upper := 30625, witness := RowWitness.largeDivisor 1033973427904115647109081359474360505774031656437536637963102062442578092673543868157263 },
  { lower := 30626, upper := 30626, witness := RowWitness.largeDivisor 10867011051129528417420290224866768994452811774212764953417283378300067490123525911525167 },
  { lower := 30627, upper := 30627, witness := RowWitness.largeDivisor 2417180116804613713607506872032264519780568564458202440452252783603838791351745779261399 },
  { lower := 30628, upper := 30628, witness := RowWitness.largeDivisor 2448857270529854737796421877610385964024890535579733836204445775735122145557178965231 },
  { lower := 30629, upper := 30629, witness := RowWitness.largeDivisor 75006049339058920763966605689328511692118372214271667669105969664991056196270834526060299 },
  { lower := 30630, upper := 30630, witness := RowWitness.largeDivisor 2502571039350974089082379804869266051359526094924066948470873338386192228240662790467879 },
  { lower := 30631, upper := 30641, witness := RowWitness.topPrime 30631 },
  { lower := 34391, upper := 34403, witness := RowWitness.topPrime 34381 },
  { lower := 43750, upper := 43750, witness := RowWitness.largeDivisor 79151417224128815605412941307060434965575198636617814853139977938763458226043835282876365259 },
  { lower := 43751, upper := 43751, witness := RowWitness.largeDivisor 9979693530181152194675566556556775476019828575073965468702383789045648590339031231876437626647 },
  { lower := 43752, upper := 43752, witness := RowWitness.largeDivisor 9570216362714487349233854725198843604831219091194023697761412755092171162644952096639003573581 },
  { lower := 43753, upper := 43768, witness := RowWitness.topPrime 43753 },
  { lower := 43940, upper := 43951, witness := RowWitness.topPrime 43933 },
  { lower := 48020, upper := 48041, witness := RowWitness.topPrime 48017 },
  { lower := 49152, upper := 49158, witness := RowWitness.topPrime 49139 },
  { lower := 65625, upper := 65638, witness := RowWitness.topPrime 65617 },
  { lower := 150903, upper := 150926, witness := RowWitness.topPrime 150901 }
]

def row029_layers : List CoverLayer := [
  { lower := 812, upper := 1624, M := 33 },
  { lower := 1624, upper := 3248, M := 32 },
  { lower := 3248, upper := 6496, M := 31 },
  { lower := 6496, upper := 12992, M := 30 },
  { lower := 12992, upper := 25984, M := 29 },
  { lower := 25984, upper := 51968, M := 28 },
  { lower := 51968, upper := 103936, M := 27 },
  { lower := 103936, upper := 207872, M := 27 },
  { lower := 207872, upper := 415744, M := 26 },
  { lower := 415744, upper := 831488, M := 25 },
  { lower := 831488, upper := 1662976, M := 24 },
  { lower := 1662976, upper := 3325952, M := 24 },
  { lower := 3325952, upper := 6651904, M := 23 },
  { lower := 6651904, upper := 13303808, M := 22 },
  { lower := 13303808, upper := 26607616, M := 22 },
  { lower := 26607616, upper := 53215232, M := 21 },
  { lower := 53215232, upper := 106430464, M := 20 },
  { lower := 106430464, upper := 212860928, M := 20 },
  { lower := 212860928, upper := 425721856, M := 19 },
  { lower := 425721856, upper := 851443712, M := 19 },
  { lower := 851443712, upper := 1702887424, M := 18 },
  { lower := 1702887424, upper := 3405774848, M := 18 },
  { lower := 3405774848, upper := 6811549696, M := 17 },
  { lower := 6811549696, upper := 13623099392, M := 17 },
  { lower := 13623099392, upper := 27246198784, M := 16 },
  { lower := 27246198784, upper := 54492397568, M := 16 },
  { lower := 54492397568, upper := 108984795136, M := 15 },
  { lower := 108984795136, upper := 217969590272, M := 15 },
  { lower := 217969590272, upper := 435939180544, M := 14 },
  { lower := 435939180544, upper := 871878361088, M := 14 },
  { lower := 871878361088, upper := 1743756722176, M := 14 },
  { lower := 1743756722176, upper := 3487513444352, M := 13 },
  { lower := 3487513444352, upper := 6975026888704, M := 13 },
  { lower := 6975026888704, upper := 13950053777408, M := 12 },
  { lower := 13950053777408, upper := 27900107554816, M := 12 },
  { lower := 27900107554816, upper := 55800215109632, M := 12 },
  { lower := 55800215109632, upper := 111600430219264, M := 11 },
  { lower := 111600430219264, upper := 223200860438528, M := 11 },
  { lower := 223200860438528, upper := 446401720877056, M := 11 },
  { lower := 446401720877056, upper := 892803441754112, M := 11 },
  { lower := 892803441754112, upper := 1785606883508224, M := 10 },
  { lower := 1785606883508224, upper := 3571213767016448, M := 10 },
  { lower := 3571213767016448, upper := 7142427534032896, M := 10 },
  { lower := 7142427534032896, upper := 14284855068065792, M := 9 },
  { lower := 14284855068065792, upper := 28569710136131584, M := 9 },
  { lower := 28569710136131584, upper := 57139420272263168, M := 9 },
  { lower := 57139420272263168, upper := 114278840544526336, M := 9 },
  { lower := 114278840544526336, upper := 228557681089052672, M := 8 },
  { lower := 228557681089052672, upper := 457115362178105344, M := 8 },
  { lower := 457115362178105344, upper := 914230724356210688, M := 8 },
  { lower := 914230724356210688, upper := 1828461448712421376, M := 8 },
  { lower := 1828461448712421376, upper := 3656922897424842752, M := 7 },
  { lower := 3656922897424842752, upper := 7313845794849685504, M := 7 },
  { lower := 7313845794849685504, upper := 14627691589699371008, M := 7 },
  { lower := 14627691589699371008, upper := 29255383179398742016, M := 7 },
  { lower := 29255383179398742016, upper := 58510766358797484032, M := 7 },
  { lower := 58510766358797484032, upper := 117021532717594968064, M := 7 },
  { lower := 117021532717594968064, upper := 234043065435189936128, M := 6 },
  { lower := 234043065435189936128, upper := 468086130870379872256, M := 6 },
  { lower := 468086130870379872256, upper := 936172261740759744512, M := 6 },
  { lower := 936172261740759744512, upper := 1872344523481519489024, M := 6 },
  { lower := 1872344523481519489024, upper := 3744689046963038978048, M := 6 },
  { lower := 3744689046963038978048, upper := 7489378093926077956096, M := 6 },
  { lower := 7489378093926077956096, upper := 14978756187852155912192, M := 5 },
  { lower := 14978756187852155912192, upper := 29957512375704311824384, M := 5 },
  { lower := 29957512375704311824384, upper := 59915024751408623648768, M := 5 },
  { lower := 59915024751408623648768, upper := 119830049502817247297536, M := 5 },
  { lower := 119830049502817247297536, upper := 239660099005634494595072, M := 5 },
  { lower := 239660099005634494595072, upper := 479320198011268989190144, M := 5 },
  { lower := 479320198011268989190144, upper := 958640396022537978380288, M := 5 },
  { lower := 958640396022537978380288, upper := 1917280792045075956760576, M := 4 },
  { lower := 1917280792045075956760576, upper := 3834561584090151913521152, M := 4 },
  { lower := 3834561584090151913521152, upper := 7669123168180303827042304, M := 4 },
  { lower := 7669123168180303827042304, upper := 15338246336360607654084608, M := 4 },
  { lower := 15338246336360607654084608, upper := 30676492672721215308169216, M := 4 },
  { lower := 30676492672721215308169216, upper := 61352985345442430616338432, M := 4 },
  { lower := 61352985345442430616338432, upper := 122705970690884861232676864, M := 4 },
  { lower := 122705970690884861232676864, upper := 245411941381769722465353728, M := 4 },
  { lower := 245411941381769722465353728, upper := 490823882763539444930707456, M := 4 },
  { lower := 490823882763539444930707456, upper := 981647765527078889861414912, M := 4 },
  { lower := 981647765527078889861414912, upper := 1963295531054157779722829824, M := 3 },
  { lower := 1963295531054157779722829824, upper := 3926591062108315559445659648, M := 3 },
  { lower := 3926591062108315559445659648, upper := 7853182124216631118891319296, M := 3 },
  { lower := 7853182124216631118891319296, upper := 15706364248433262237782638592, M := 3 },
  { lower := 15706364248433262237782638592, upper := 31412728496866524475565277184, M := 3 },
  { lower := 31412728496866524475565277184, upper := 62825456993733048951130554368, M := 3 },
  { lower := 62825456993733048951130554368, upper := 125650913987466097902261108736, M := 3 },
  { lower := 125650913987466097902261108736, upper := 251301827974932195804522217472, M := 3 },
  { lower := 251301827974932195804522217472, upper := 502603655949864391609044434944, M := 3 },
  { lower := 502603655949864391609044434944, upper := 1005207311899728783218088869888, M := 3 },
  { lower := 1005207311899728783218088869888, upper := 2010414623799457566436177739776, M := 3 },
  { lower := 2010414623799457566436177739776, upper := 4020829247598915132872355479552, M := 3 },
  { lower := 4020829247598915132872355479552, upper := 8041658495197830265744710959104, M := 3 },
  { lower := 8041658495197830265744710959104, upper := 16083316990395660531489421918208, M := 2 },
  { lower := 16083316990395660531489421918208, upper := 32166633980791321062978843836416, M := 2 },
  { lower := 32166633980791321062978843836416, upper := 64333267961582642125957687672832, M := 2 },
  { lower := 64333267961582642125957687672832, upper := 128666535923165284251915375345664, M := 2 },
  { lower := 128666535923165284251915375345664, upper := 257333071846330568503830750691328, M := 2 },
  { lower := 257333071846330568503830750691328, upper := 514666143692661137007661501382656, M := 2 },
  { lower := 514666143692661137007661501382656, upper := 1029332287385322274015323002765312, M := 2 },
  { lower := 1029332287385322274015323002765312, upper := 2058664574770644548030646005530624, M := 2 },
  { lower := 2058664574770644548030646005530624, upper := 4117329149541289096061292011061248, M := 2 },
  { lower := 4117329149541289096061292011061248, upper := 8234658299082578192122584022122496, M := 2 },
  { lower := 8234658299082578192122584022122496, upper := 16469316598165156384245168044244992, M := 2 },
  { lower := 16469316598165156384245168044244992, upper := 32938633196330312768490336088489984, M := 2 },
  { lower := 32938633196330312768490336088489984, upper := 65877266392660625536980672176979968, M := 2 },
  { lower := 65877266392660625536980672176979968, upper := 131754532785321251073961344353959936, M := 2 },
  { lower := 131754532785321251073961344353959936, upper := 263509065570642502147922688707919872, M := 2 },
  { lower := 263509065570642502147922688707919872, upper := 527018131141285004295845377415839744, M := 2 },
  { lower := 527018131141285004295845377415839744, upper := 1054036262282570008591690754831679488, M := 2 },
  { lower := 1054036262282570008591690754831679488, upper := 2108072524565140017183381509663358976, M := 2 },
  { lower := 2108072524565140017183381509663358976, upper := 4216145049130280034366763019326717952, M := 2 },
  { lower := 4216145049130280034366763019326717952, upper := 8432290098260560068733526038653435904, M := 2 },
  { lower := 8432290098260560068733526038653435904, upper := 10000000000000000000000000000000000000, M := 2 }
]

def row029 : FiniteCoverRow := {
  height := row029_height,
  goods := row029_goods,
  layers := row029_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex

/-- Complete trial division through the exact integer square root. -/
def trialPrimeCheck (p : ℕ) : Bool :=
  decide (2 ≤ p) &&
    (List.range (Nat.sqrt p + 1)).all
      (fun d => if d < 2 then true else decide (p % d ≠ 0))

theorem trialPrimeCheck_sound {p : ℕ} (hcheck : trialPrimeCheck p = true) :
    p.Prime := by
  have hc := hcheck
  simp only [trialPrimeCheck, Bool.and_eq_true, decide_eq_true_eq] at hc
  refine Nat.prime_def_le_sqrt.mpr ⟨hc.1, ?_⟩
  intro d hd hsqrt
  have hmem : d ∈ List.range (Nat.sqrt p + 1) := List.mem_range.mpr (by omega)
  have htest := List.all_eq_true.mp hc.2 d hmem
  have hnot : ¬ d < 2 := by omega
  simp only [if_neg hnot, decide_eq_true_eq] at htest
  exact fun hdiv => htest (Nat.mod_eq_zero_of_dvd hdiv)

end B699LowIndex

#print axioms B699LowIndex.trialPrimeCheck_sound

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex.LowIndexLean513dc7cc

/-- The existing square-root primality check proves the original witness check. -/
theorem good_top_prime_checked {i r s lo hi p : ℕ}
    (hlo : lo ≤ hi) (hprime : trialPrimeCheck p = true)
    (hplower : p ≤ lo) (hupper : hi < p + i) :
    goodSegmentCheck i r s
      { lower := lo, upper := hi, witness := RowWitness.topPrime p } = true := by
  simp only [goodSegmentCheck, decide_eq_true_eq]
  exact ⟨hlo, trialPrimeCheck_sound hprime, hplower, hupper⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_witness000_checked :
    goodSegmentCheck 29 9 19
      { lower := 60, upper := 87, witness := RowWitness.topPrime 59 } = true := by
  exact good_top_prime_checked (by decide) (by decide +kernel) (by decide) (by decide)

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_witness000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_good000_checked :
    goodSegmentCheck 29 9 19
      { lower := 60, upper := 87, witness := RowWitness.topPrime 59 } = true := by
  exact row029_witness000_checked

theorem row029_good001_checked :
    goodSegmentCheck 29 9 19
      { lower := 88, upper := 111, witness := RowWitness.topPrime 83 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good002_checked :
    goodSegmentCheck 29 9 19
      { lower := 112, upper := 137, witness := RowWitness.topPrime 109 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good003_checked :
    goodSegmentCheck 29 9 19
      { lower := 138, upper := 165, witness := RowWitness.topPrime 137 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good004_checked :
    goodSegmentCheck 29 9 19
      { lower := 166, upper := 191, witness := RowWitness.topPrime 163 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good005_checked :
    goodSegmentCheck 29 9 19
      { lower := 192, upper := 219, witness := RowWitness.topPrime 191 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good006_checked :
    goodSegmentCheck 29 9 19
      { lower := 220, upper := 239, witness := RowWitness.topPrime 211 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good007_checked :
    goodSegmentCheck 29 9 19
      { lower := 240, upper := 267, witness := RowWitness.topPrime 239 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good008_checked :
    goodSegmentCheck 29 9 19
      { lower := 268, upper := 291, witness := RowWitness.topPrime 263 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good009_checked :
    goodSegmentCheck 29 9 19
      { lower := 292, upper := 311, witness := RowWitness.topPrime 283 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good010_checked :
    goodSegmentCheck 29 9 19
      { lower := 312, upper := 339, witness := RowWitness.topPrime 311 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good011_checked :
    goodSegmentCheck 29 9 19
      { lower := 340, upper := 365, witness := RowWitness.topPrime 337 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good012_checked :
    goodSegmentCheck 29 9 19
      { lower := 366, upper := 387, witness := RowWitness.topPrime 359 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good013_checked :
    goodSegmentCheck 29 9 19
      { lower := 388, upper := 411, witness := RowWitness.topPrime 383 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good014_checked :
    goodSegmentCheck 29 9 19
      { lower := 412, upper := 437, witness := RowWitness.topPrime 409 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good015_checked :
    goodSegmentCheck 29 9 19
      { lower := 438, upper := 461, witness := RowWitness.topPrime 433 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_good016_checked :
    goodSegmentCheck 29 9 19
      { lower := 462, upper := 489, witness := RowWitness.topPrime 461 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good017_checked :
    goodSegmentCheck 29 9 19
      { lower := 490, upper := 515, witness := RowWitness.topPrime 487 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good018_checked :
    goodSegmentCheck 29 9 19
      { lower := 516, upper := 537, witness := RowWitness.topPrime 509 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good019_checked :
    goodSegmentCheck 29 9 19
      { lower := 538, upper := 551, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good020_checked :
    goodSegmentCheck 29 9 19
      { lower := 552, upper := 575, witness := RowWitness.topPrime 547 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good021_checked :
    goodSegmentCheck 29 9 19
      { lower := 576, upper := 599, witness := RowWitness.topPrime 571 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good022_checked :
    goodSegmentCheck 29 9 19
      { lower := 600, upper := 627, witness := RowWitness.topPrime 599 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good023_checked :
    goodSegmentCheck 29 9 19
      { lower := 628, upper := 647, witness := RowWitness.topPrime 619 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good024_checked :
    goodSegmentCheck 29 9 19
      { lower := 648, upper := 675, witness := RowWitness.topPrime 647 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good025_checked :
    goodSegmentCheck 29 9 19
      { lower := 676, upper := 701, witness := RowWitness.topPrime 673 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good026_checked :
    goodSegmentCheck 29 9 19
      { lower := 702, upper := 729, witness := RowWitness.topPrime 701 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good027_checked :
    goodSegmentCheck 29 9 19
      { lower := 730, upper := 755, witness := RowWitness.topPrime 727 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good028_checked :
    goodSegmentCheck 29 9 19
      { lower := 756, upper := 779, witness := RowWitness.topPrime 751 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good029_checked :
    goodSegmentCheck 29 9 19
      { lower := 780, upper := 801, witness := RowWitness.topPrime 773 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good030_checked :
    goodSegmentCheck 29 9 19
      { lower := 802, upper := 825, witness := RowWitness.topPrime 797 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good031_checked :
    goodSegmentCheck 29 9 19
      { lower := 826, upper := 851, witness := RowWitness.topPrime 823 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_good032_checked :
    goodSegmentCheck 29 9 19
      { lower := 852, upper := 867, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good033_checked :
    goodSegmentCheck 29 9 19
      { lower := 868, upper := 891, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good034_checked :
    goodSegmentCheck 29 9 19
      { lower := 892, upper := 915, witness := RowWitness.topPrime 887 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good035_checked :
    goodSegmentCheck 29 9 19
      { lower := 916, upper := 919, witness := RowWitness.topPrime 911 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good036_checked :
    goodSegmentCheck 29 9 19
      { lower := 931, upper := 956, witness := RowWitness.topPrime 929 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good037_checked :
    goodSegmentCheck 29 9 19
      { lower := 968, upper := 995, witness := RowWitness.topPrime 967 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good038_checked :
    goodSegmentCheck 29 9 19
      { lower := 996, upper := 1019, witness := RowWitness.topPrime 991 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good039_checked :
    goodSegmentCheck 29 9 19
      { lower := 1020, upper := 1047, witness := RowWitness.topPrime 1019 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good040_checked :
    goodSegmentCheck 29 9 19
      { lower := 1048, upper := 1067, witness := RowWitness.topPrime 1039 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good041_checked :
    goodSegmentCheck 29 9 19
      { lower := 1068, upper := 1091, witness := RowWitness.topPrime 1063 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good042_checked :
    goodSegmentCheck 29 9 19
      { lower := 1092, upper := 1116, witness := RowWitness.topPrime 1091 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good043_checked :
    goodSegmentCheck 29 9 19
      { lower := 1127, upper := 1151, witness := RowWitness.topPrime 1123 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good044_checked :
    goodSegmentCheck 29 9 19
      { lower := 1152, upper := 1179, witness := RowWitness.topPrime 1151 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good045_checked :
    goodSegmentCheck 29 9 19
      { lower := 1180, upper := 1199, witness := RowWitness.topPrime 1171 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good046_checked :
    goodSegmentCheck 29 9 19
      { lower := 1200, upper := 1204, witness := RowWitness.topPrime 1193 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good047_checked :
    goodSegmentCheck 29 9 19
      { lower := 1210, upper := 1211, witness := RowWitness.topPrime 1201 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_witness056_checked :
    goodSegmentCheck 29 9 19
      { lower := 1356, upper := 1356, witness := RowWitness.largeDivisor 1815068943375751502988867192965646653087223540945133 } = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_witness056_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_good048_checked :
    goodSegmentCheck 29 9 19
      { lower := 1215, upper := 1241, witness := RowWitness.topPrime 1213 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good049_checked :
    goodSegmentCheck 29 9 19
      { lower := 1242, upper := 1244, witness := RowWitness.topPrime 1237 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good050_checked :
    goodSegmentCheck 29 9 19
      { lower := 1250, upper := 1253, witness := RowWitness.topPrime 1249 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good051_checked :
    goodSegmentCheck 29 9 19
      { lower := 1274, upper := 1278, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good052_checked :
    goodSegmentCheck 29 9 19
      { lower := 1280, upper := 1307, witness := RowWitness.topPrime 1279 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good053_checked :
    goodSegmentCheck 29 9 19
      { lower := 1308, upper := 1308, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good054_checked :
    goodSegmentCheck 29 9 19
      { lower := 1323, upper := 1324, witness := RowWitness.topPrime 1321 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good055_checked :
    goodSegmentCheck 29 9 19
      { lower := 1331, upper := 1355, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good056_checked :
    goodSegmentCheck 29 9 19
      { lower := 1356, upper := 1356, witness := RowWitness.largeDivisor 1815068943375751502988867192965646653087223540945133 } = true := by
  exact row029_witness056_checked

theorem row029_good057_checked :
    goodSegmentCheck 29 9 19
      { lower := 1357, upper := 1357, witness := RowWitness.largeDivisor 1290229730833365526221001980541845211230676974888709 } = true := by
  decide +kernel

theorem row029_good058_checked :
    goodSegmentCheck 29 9 19
      { lower := 1358, upper := 1358, witness := RowWitness.largeDivisor 282510798850646627637555738403067687334933784569311 } = true := by
  decide +kernel

theorem row029_good059_checked :
    goodSegmentCheck 29 9 19
      { lower := 1359, upper := 1359, witness := RowWitness.largeDivisor 42659130626447640773270916498863220787575001469965961 } = true := by
  decide +kernel

theorem row029_good060_checked :
    goodSegmentCheck 29 9 19
      { lower := 1360, upper := 1360, witness := RowWitness.largeDivisor 42659130626447640773270916498863220787575001469965961 } = true := by
  decide +kernel

theorem row029_good061_checked :
    goodSegmentCheck 29 9 19
      { lower := 1361, upper := 1389, witness := RowWitness.topPrime 1361 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good062_checked :
    goodSegmentCheck 29 9 19
      { lower := 1390, upper := 1403, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good063_checked :
    goodSegmentCheck 29 9 19
      { lower := 1421, upper := 1436, witness := RowWitness.topPrime 1409 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_good064_checked :
    goodSegmentCheck 29 9 19
      { lower := 1444, upper := 1467, witness := RowWitness.topPrime 1439 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good065_checked :
    goodSegmentCheck 29 9 19
      { lower := 1468, upper := 1487, witness := RowWitness.topPrime 1459 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good066_checked :
    goodSegmentCheck 29 9 19
      { lower := 1488, upper := 1498, witness := RowWitness.topPrime 1487 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good067_checked :
    goodSegmentCheck 29 9 19
      { lower := 1500, upper := 1500, witness := RowWitness.topPrime 1499 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good068_checked :
    goodSegmentCheck 29 9 19
      { lower := 1519, upper := 1539, witness := RowWitness.topPrime 1511 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good069_checked :
    goodSegmentCheck 29 9 19
      { lower := 1540, upper := 1559, witness := RowWitness.topPrime 1531 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good070_checked :
    goodSegmentCheck 29 9 19
      { lower := 1560, upper := 1564, witness := RowWitness.topPrime 1559 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good071_checked :
    goodSegmentCheck 29 9 19
      { lower := 1573, upper := 1599, witness := RowWitness.topPrime 1571 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good072_checked :
    goodSegmentCheck 29 9 19
      { lower := 1600, upper := 1615, witness := RowWitness.topPrime 1597 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good073_checked :
    goodSegmentCheck 29 9 19
      { lower := 1617, upper := 1641, witness := RowWitness.topPrime 1613 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good074_checked :
    goodSegmentCheck 29 9 19
      { lower := 1642, upper := 1648, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good075_checked :
    goodSegmentCheck 29 9 19
      { lower := 1690, upper := 1692, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good076_checked :
    goodSegmentCheck 29 9 19
      { lower := 1694, upper := 1721, witness := RowWitness.topPrime 1693 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good077_checked :
    goodSegmentCheck 29 9 19
      { lower := 1722, upper := 1749, witness := RowWitness.topPrime 1721 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good078_checked :
    goodSegmentCheck 29 9 19
      { lower := 1750, upper := 1762, witness := RowWitness.topPrime 1747 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good079_checked :
    goodSegmentCheck 29 9 19
      { lower := 1792, upper := 1817, witness := RowWitness.topPrime 1789 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_good080_checked :
    goodSegmentCheck 29 9 19
      { lower := 1818, upper := 1833, witness := RowWitness.topPrime 1811 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good081_checked :
    goodSegmentCheck 29 9 19
      { lower := 1859, upper := 1875, witness := RowWitness.topPrime 1847 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good082_checked :
    goodSegmentCheck 29 9 19
      { lower := 1876, upper := 1891, witness := RowWitness.topPrime 1873 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good083_checked :
    goodSegmentCheck 29 9 19
      { lower := 1936, upper := 1961, witness := RowWitness.topPrime 1933 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good084_checked :
    goodSegmentCheck 29 9 19
      { lower := 1962, upper := 1964, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good085_checked :
    goodSegmentCheck 29 9 19
      { lower := 2000, upper := 2012, witness := RowWitness.topPrime 1999 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good086_checked :
    goodSegmentCheck 29 9 19
      { lower := 2023, upper := 2045, witness := RowWitness.topPrime 2017 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good087_checked :
    goodSegmentCheck 29 9 19
      { lower := 2046, upper := 2067, witness := RowWitness.topPrime 2039 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good088_checked :
    goodSegmentCheck 29 9 19
      { lower := 2068, upper := 2085, witness := RowWitness.topPrime 2063 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good089_checked :
    goodSegmentCheck 29 9 19
      { lower := 2116, upper := 2141, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good090_checked :
    goodSegmentCheck 29 9 19
      { lower := 2142, upper := 2144, witness := RowWitness.topPrime 2141 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good091_checked :
    goodSegmentCheck 29 9 19
      { lower := 2176, upper := 2189, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good092_checked :
    goodSegmentCheck 29 9 19
      { lower := 2190, upper := 2207, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good093_checked :
    goodSegmentCheck 29 9 19
      { lower := 2208, upper := 2215, witness := RowWitness.topPrime 2207 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good094_checked :
    goodSegmentCheck 29 9 19
      { lower := 2268, upper := 2278, witness := RowWitness.topPrime 2267 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row029_good095_checked :
    goodSegmentCheck 29 9 19
      { lower := 2304, upper := 2325, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 29) (r := 9) (s := 19) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_good095_checked
