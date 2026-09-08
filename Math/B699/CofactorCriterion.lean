import Mathlib.Data.Nat.Choose.Factorization
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith

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
