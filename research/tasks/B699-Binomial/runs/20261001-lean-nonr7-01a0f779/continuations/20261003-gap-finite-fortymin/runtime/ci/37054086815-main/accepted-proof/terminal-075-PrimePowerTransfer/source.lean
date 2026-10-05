import research.tasks.«B699-Binomial».runs.«20260909-large-prime-structure-cb4764f0».lean.GapBridge
import research.tasks.«B699-Binomial».runs.«20260908-external-reductions-b3c1b7».lean.DivisorTransfer
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Data.Nat.Prime.Factorial

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

