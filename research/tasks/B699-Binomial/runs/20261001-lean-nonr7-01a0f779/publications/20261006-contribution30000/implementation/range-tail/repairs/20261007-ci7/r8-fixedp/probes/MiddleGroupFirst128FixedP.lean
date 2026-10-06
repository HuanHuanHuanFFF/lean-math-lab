import Init.Data.List.Range
import Mathlib.Algebra.BigOperators.Group.List.Lemmas
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Data.List.Basic
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Data.Nat.Choose.Factorization
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Data.Nat.GCD.BigOperators
import Mathlib.Data.Nat.Prime.Defs
import Mathlib.Data.Nat.Prime.Factorial
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxHeartbeats 400000
set_option maxRecDepth 65536
set_option exponentiation.threshold 1000000

namespace Contribution.R8MiddleGroupFirst128FixedP

namespace N0

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

end N0

namespace N2

def Common (n i j : ℕ) : Prop :=
  ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j)

theorem common_of_mod_certificate {n i j p ei ej : ℕ}
    (hp : p.Prime) (hpi : i ≤ p) (hin : i ≤ n) (hjn : j ≤ n)
    (hei : 1 ≤ ei) (hej : 1 ≤ ej)
    (hmi : n % p ^ ei < i % p ^ ei)
    (hmj : n % p ^ ej < j % p ^ ej) : Common n i j := by
  exact ⟨p, hp, hpi, Nat.dvd_gcd
    (N0.prime_dvd_choose_of_mod_lt hp hin hei hmi)
    (N0.prime_dvd_choose_of_mod_lt hp hjn hej hmj)⟩

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

end N2

namespace N1

def primePart (threshold a : ℕ) : ℕ :=
  (a.primeFactors.filter (fun p ↦ threshold ≤ p)).prod (fun p ↦ p ^ a.factorization p)

end N1

namespace N2

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

theorem dvd_descFactorial_of_interval {N k t Q : ℕ}
    (hk : k ≤ N) (hlo : N - k < t) (hhi : t ≤ N) (hQt : Q ∣ t) :
    Q ∣ N.descFactorial k := by
  rw [Nat.descFactorial_eq_prod_range]
  have hmem : N - t ∈ Finset.range k := Finset.mem_range.mpr (by omega)
  have hd := Finset.dvd_prod_of_mem (fun r : ℕ ↦ N - r) hmem
  have heq : N - (N - t) = t := by omega
  rw [heq] at hd
  exact hQt.trans hd

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

def avoidingPart (n i j : ℕ) : ℕ :=
  ((n.choose i).primeFactors.filter (fun p ↦ i ≤ p ∧ ¬ p ∣ n.choose j)).prod
    (fun p ↦ p ^ (n.choose i).factorization p)

theorem avoidingPart_eq_primePart_of_noCommon {n i j : ℕ}
    (hno : ¬ Common n i j) :
    avoidingPart n i j = N1.primePart i (n.choose i) := by
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
  unfold avoidingPart N1.primePart
  rw [hsets]

end N2

namespace N2

def smallPrimeCount (i : ℕ) : ℕ := ((Finset.range i).filter Nat.Prime).card

def smallPrimePart (n i : ℕ) : ℕ :=
  ((n.choose i).primeFactors.filter (fun p ↦ p < i)).prod
    (fun p ↦ p ^ (n.choose i).factorization p)

theorem smallPrimePart_mul_primePart {n i : ℕ} (hin : i ≤ n) :
    smallPrimePart n i * N1.primePart i (n.choose i) = n.choose i := by
  classical
  unfold smallPrimePart N1.primePart
  calc
    _ = (n.choose i).primeFactors.prod (fun p ↦ p ^ (n.choose i).factorization p) := by
      simpa only [Nat.not_lt] using Finset.prod_filter_mul_prod_filter_not
        (n.choose i).primeFactors (fun p ↦ p < i)
        (fun p ↦ p ^ (n.choose i).factorization p)
    _ = n.choose i :=
      (Nat.prod_primeFactors_pow_factorization (Nat.ne_of_gt (Nat.choose_pos hin))).symm

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

end N2

namespace N3

open N2

def childWindows (N s : ℕ) : ℕ :=
  ∏ h ∈ Finset.Icc 1 s, N.choose h

def motherWindows (n i r : ℕ) : ℕ :=
  ∏ h ∈ Finset.Icc 1 (i - r - 1), (n - i + h).choose h

def threeWindowProduct (n i j r s : ℕ) : ℕ :=
  childWindows j s * childWindows (n - j) s * motherWindows n i r

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
    apply N0.prime_dvd_choose_of_mod_lt hp (by omega)
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

theorem prime_power_dvd_choose_of_position {N h b p e : ℕ}
    (hp : p.Prime) (hhp : h < p) (hhN : h ≤ N)
    (hbh : b < h) (hdiv : p ^ e ∣ N - b) :
    p ^ e ∣ N.choose h := by
  have hd : p ^ e ∣ N.descFactorial h :=
    dvd_descFactorial_of_interval hhN (by omega) (Nat.sub_le N b) hdiv
  rw [Nat.descFactorial_eq_factorial_mul_choose] at hd
  exact ((hp.coprime_factorial_of_lt hhp).pow_left e).dvd_of_dvd_mul_left hd

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

theorem three_window_weight_cover (a b c r s : ℕ) (hsplit : b + c = a) :
    2 * s - r ≤ (s - b) + (s - c) + (a - r) := by
  omega

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

theorem actual_prime_part_three_window_transfer {n i j r s : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hno : ¬ Common n i j) :
    N1.primePart i (n.choose i) ^ (2 * s - r) ∣
      threeWindowProduct n i j r s := by
  rw [← avoidingPart_eq_primePart_of_noCommon hno]
  exact actual_avoiding_part_three_window_transfer hi hij hjn hsi

theorem child_windows_pos {N i s : ℕ} (hsi : s < i) (hiN : i ≤ N) :
    0 < childWindows N s := by
  unfold childWindows
  apply Finset.prod_pos
  intro h hh
  have := (Finset.mem_Icc.mp hh).2
  exact Nat.choose_pos (by omega)

theorem mother_windows_pos {n i r : ℕ} (hin : i ≤ n) :
    0 < motherWindows n i r := by
  unfold motherWindows
  apply Finset.prod_pos
  intro h _
  exact Nat.choose_pos (by omega)

end N3

namespace N3

open N2

def windowSum (s : ℕ) : ℕ := ∑ h ∈ Finset.Icc 1 s, h

def windowFactorials (s : ℕ) : ℕ := ∏ h ∈ Finset.Icc 1 s, h.factorial

def windowDegree (i r s : ℕ) : ℕ :=
  2 * windowSum s + windowSum (i - r - 1)

def windowConstant (i r s : ℕ) : ℕ :=
  2 ^ (2 * windowSum s) * (windowFactorials s) ^ 2 *
    windowFactorials (i - r - 1)

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

theorem noCommon_scaled_prime_part {n i j r s : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hno : ¬ Common n i j) :
    windowConstant i r s * N1.primePart i (n.choose i) ^ (2 * s - r) ≤
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

end N3

namespace N7

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

end N7

namespace N3

open N2

def heightExponent (i r s : ℕ) : ℕ :=
  smallPrimeCount i * (2 * s - r) + windowDegree i r s

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
        (smallPrimePart n i * N1.primePart i (n.choose i)) ^
          (2 * s - r) := by
      rw [smallPrimePart_mul_primePart (by omega : i ≤ n)]
    _ = (smallPrimePart n i) ^ (2 * s - r) *
        (windowConstant i r s *
          N1.primePart i (n.choose i) ^ (2 * s - r)) := by
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
    (N7.choose_ratio_lower_bound (n := n) hiN hNn) (2 * s - r)
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

end N3

namespace N4

open N3

def HeightValid (i r s N : ℕ) : Prop :=
  2 ≤ i ∧ s < i ∧ i ≤ N ∧
  heightExponent i r s ≤ i * (2 * s - r) ∧
  i.factorial ^ (2 * s - r) * N ^ heightExponent i r s <
    windowConstant i r s * N.descFactorial i ^ (2 * s - r)

instance (i r s N : ℕ) : Decidable (HeightValid i r s N) := by
  unfold HeightValid
  infer_instance

theorem common_of_valid_height {i r s N n j : ℕ}
    (hv : HeightValid i r s N) (hij : i < j) (hjn : j ≤ n / 2)
    (hNn : N ≤ n) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  rcases hv with ⟨hi, hsi, hiN, hd, hc⟩
  exact common_of_height_certificate hi hij hjn hsi hiN hNn hd hc

end N4

namespace N3

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

end N3

namespace N4

open N3 N2

theorem trialPrimeCheck_complete {p : ℕ} (hp : p.Prime) :
    trialPrimeCheck p = true := by
  rw [trialPrimeCheck, Bool.and_eq_true]
  refine ⟨by simpa only [decide_eq_true_eq] using hp.two_le, ?_⟩
  apply List.all_eq_true.mpr
  intro d hd
  by_cases hsmall : d < 2
  · simp only [if_pos hsmall]
  · simp only [if_neg hsmall, decide_eq_true_eq]
    have hdle : d ≤ Nat.sqrt p := by
      have := List.mem_range.mp hd
      omega
    have hndvd := (Nat.prime_def_le_sqrt.mp hp).2 d (by omega) hdle
    intro hmod
    exact hndvd (Nat.dvd_of_mod_eq_zero hmod)

theorem trialPrimeCheck_false {p : ℕ} (hp : ¬ p.Prime) :
    trialPrimeCheck p = false := by
  cases hc : trialPrimeCheck p with
  | false => rfl
  | true => exact False.elim (hp (trialPrimeCheck_sound hc))

def fastSmallPrimeCount : ℕ → ℕ
  | 0 => 0
  | i + 1 => fastSmallPrimeCount i + if trialPrimeCheck i then 1 else 0

theorem fastSmallPrimeCount_eq (i : ℕ) :
    fastSmallPrimeCount i = smallPrimeCount i := by
  induction i with
  | zero => simp [fastSmallPrimeCount, smallPrimeCount]
  | succ i ih =>
    rw [fastSmallPrimeCount, ih]
    unfold smallPrimeCount
    rw [Finset.range_add_one, Finset.filter_insert]
    by_cases hp : i.Prime
    · have hc := trialPrimeCheck_complete hp
      simp [hp, hc]
    · have hc := trialPrimeCheck_false hp
      simp [hp, hc]

end N4

namespace N4

open N3 N2

def RawHeightValid (i r s N t : ℕ) : Prop :=
  2 ≤ i ∧ s < i ∧ i ≤ N ∧
  t * (2 * s - r) + windowDegree i r s ≤ i * (2 * s - r) ∧
  i.factorial ^ (2 * s - r) * N ^ (t * (2 * s - r) + windowDegree i r s) <
    windowConstant i r s * N.descFactorial i ^ (2 * s - r)

instance (i r s N t : ℕ) : Decidable (RawHeightValid i r s N t) := by
  unfold RawHeightValid
  infer_instance

theorem heightValid_of_raw {i r s N t : ℕ}
    (hcount : smallPrimeCount i = t) (hraw : RawHeightValid i r s N t) :
    HeightValid i r s N := by
  unfold HeightValid heightExponent
  rw [hcount]
  exact hraw

end N4

namespace N6

inductive PrimeChain (gap : ℕ) : ℕ → ℕ → Prop where
  | singleton {p : ℕ} (hp : p.Prime) : PrimeChain gap p p
  | step {p q r : ℕ} (hp : p.Prime) (hpq : p < q)
      (hgap : q ≤ p + gap) (htail : PrimeChain gap q r) : PrimeChain gap p r

theorem PrimeChain.trans {gap lo mid hi : ℕ}
    (hleft : PrimeChain gap lo mid) (hright : PrimeChain gap mid hi) :
    PrimeChain gap lo hi := by
  revert hright
  induction hleft with
  | singleton _ =>
      intro hright
      exact hright
  | step hp hpq hgap _ ih =>
      intro hright
      exact .step hp hpq hgap (ih hright)

theorem PrimeChain.near_top {gap lo hi : ℕ} (hchain : PrimeChain gap lo hi)
    {n : ℕ} (hlo : lo ≤ n) (hhi : n < hi) :
    ∃ p : ℕ, p.Prime ∧ p ≤ n ∧ n < p + gap := by
  induction hchain generalizing n with
  | singleton _ => omega
  | @step p q r hp _ hgap _ ih =>
      by_cases hnq : n < q
      · exact ⟨p, hp, hlo, by omega⟩
      · exact ih (by omega) hhi

def chainEnd : ℕ → List ℕ → ℕ
  | p, [] => p
  | _, q :: qs => chainEnd q qs

end N6

namespace N6

theorem common_of_prime_chain {gap lo upper n i j : ℕ}
    (hchain : PrimeChain gap lo upper) (hgap : gap ≤ i)
    (hlo : lo ≤ n) (hhi : n < upper) (hi : 1 ≤ i)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j) := by
  obtain ⟨p, hp, hpn, hnpg⟩ := hchain.near_top hlo hhi
  have hin : i ≤ n := by omega
  exact N2.common_of_top_prime hi hij hjn hp (by omega) hpn

end N6

def fueledCoprime : Nat → Nat → Nat → Bool
  | 0, _, _ => false
  | fuel+1, a, b => if a=0 then decide (b=1) else fueledCoprime fuel (b % a) a
theorem fueledCoprime_sound {fuel a b : Nat} (hc : fueledCoprime fuel a b=true) : Nat.gcd a b=1 := by
  induction fuel generalizing a b with
  | zero => simp [fueledCoprime] at hc
  | succ fuel ih =>
      by_cases ha : a=0
      · have hb : b=1 := of_decide_eq_true (by simpa only [fueledCoprime,if_pos ha] using hc)
        rw [ha,Nat.gcd_zero_left,hb]
      · have ht : fueledCoprime fuel (b % a) a=true := by
          simpa only [fueledCoprime,if_neg ha] using hc
        exact (Nat.gcd_rec a b).trans (ih ht)

namespace N5

def BasisComplete (B : Nat) (ps : List Nat) : Prop :=
  ∀ q : Nat, q.Prime → q < B → q ∈ ps

end N5

namespace N5

def primorialPrimeCheck (B P p : Nat) : Bool :=
  if p<B then N3.trialPrimeCheck p
  else decide (2≤p ∧ p<B*B) && fueledCoprime 64 p P
theorem primorialPrimeCheck_sound {B P p : Nat}
    (hfactorial : P=Nat.factorial (B-1))
    (hcheck : primorialPrimeCheck B P p=true) : p.Prime := by
  by_cases hsmall : p<B
  · exact N3.trialPrimeCheck_sound (by simpa only [primorialPrimeCheck,if_pos hsmall] using hcheck)
  · have hc : (2≤p ∧ p<B*B) ∧ fueledCoprime 64 p P=true := by
      simpa only [primorialPrimeCheck,if_neg hsmall,Bool.and_eq_true,decide_eq_true_eq] using hcheck
    have hg : Nat.gcd p P=1 := fueledCoprime_sound hc.2
    refine Nat.prime_def_le_sqrt.mpr ⟨hc.1.1,?_⟩
    intro d hd hs hdiv
    have hsqrt : Nat.sqrt p<B := Nat.sqrt_lt.mpr hc.1.2
    have hdP : d ∣ P := by
      rw [hfactorial]
      exact Nat.dvd_factorial (by omega) (by omega)
    have hd1 : d ∣ 1 := by simpa only [hg] using Nat.dvd_gcd hdiv hdP
    have hle := Nat.le_of_dvd (by decide : 0<1) hd1
    omega

def primorialChainCheck (B P gap p : Nat) : List Nat → Bool
  | [] => primorialPrimeCheck B P p
  | q :: qs => primorialPrimeCheck B P p && decide (p < q ∧ q ≤ p + gap) &&
      primorialChainCheck B P gap q qs

theorem primorialChainCheck_sound {B P gap p : Nat} {qs : List Nat}
    (hfactorial : P=Nat.factorial (B-1)) (hcheck : primorialChainCheck B P gap p qs=true) :
    N6.PrimeChain gap p (N6.chainEnd p qs) := by
  induction qs generalizing p with
  | nil => exact .singleton (primorialPrimeCheck_sound hfactorial hcheck)
  | cons q qs ih =>
      simp only [primorialChainCheck,Bool.and_eq_true,decide_eq_true_eq] at hcheck
      exact .step (primorialPrimeCheck_sound hfactorial hcheck.1.1)
        hcheck.1.2.1 hcheck.1.2.2 (ih hcheck.2)

def BasisCompleteOn (ps : List Nat) (lo hi : Nat) : Prop :=
  ∀ q : Nat, q.Prime → lo ≤ q → q < hi → q ∈ ps

def basisRangeCheck (ps : List Nat) (lo len : Nat) : Bool :=
  (List.range' lo len).all
    (fun q => !N3.trialPrimeCheck q || ps.contains q)

theorem basisRangeCheck_sound {ps : List Nat} {lo len : Nat}
    (hcheck : basisRangeCheck ps lo len = true) :
    BasisCompleteOn ps lo (lo + len) := by
  intro q hq hlo hhi
  have hmem : q ∈ List.range' lo len :=
    List.mem_range'.mpr ⟨q - lo, by omega, by omega⟩
  have hrow : (!N3.trialPrimeCheck q || ps.contains q) = true :=
    List.all_eq_true.mp hcheck q hmem
  have hprime := N4.trialPrimeCheck_complete (p := q) hq
  have hcontains : ps.contains q = true := by
    simpa only [hprime, Bool.not_true, Bool.false_or] using hrow
  exact List.contains_iff_mem.mp hcontains

theorem BasisCompleteOn.trans {ps : List Nat} {lo mid hi : Nat}
    (hleft : BasisCompleteOn ps lo mid) (hright : BasisCompleteOn ps mid hi) :
    BasisCompleteOn ps lo hi := by
  intro q hq hlo hhi
  by_cases hmid : q < mid
  · exact hleft q hq hlo hmid
  · exact hright q hq (by omega) hhi

theorem BasisCompleteOn.to_complete {ps : List Nat} {B : Nat}
    (h : BasisCompleteOn ps 0 B) : BasisComplete B ps := by
  intro q hq hqB
  exact h q hq (Nat.zero_le q) hqB

end N5

def basis : List Nat := [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113,127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199,211,223,227,229,233,239,241,251,257,263,269,271,277,281,283,293,307,311,313,317,331,337,347,349,353,359,367,373,379,383,389,397,401,409,419,421,431,433,439,443,449,457,461,463,467,479,487,491,499,503,509,521,523,541,547,557,563,569,571,577,587,593,599,601,607,613,617,619,631,641,643,647,653,659,661,673,677,683,691,701,709,719,727,733,739,743,751,757,761,769,773,787,797,809,811,821,823,827,829,839,853,857,859,863,877,881,883,887,907,911,919,929,937,941,947,953,967,971,977,983,991,997,1009,1013,1019,1021,1031,1033,1039,1049,1051,1061,1063,1069,1087,1091,1093,1097,1103,1109,1117,1123,1129,1151,1153,1163,1171,1181,1187,1193,1201,1213,1217,1223,1229,1231,1237,1249,1259,1277,1279,1283,1289,1291,1297,1301,1303,1307,1319,1321,1327,1361,1367,1373,1381,1399,1409,1423,1427,1429,1433,1439,1447,1451,1453,1459,1471,1481,1483,1487,1489,1493,1499,1511,1523,1531,1543,1549,1553,1559,1567,1571,1579,1583,1597,1601,1607,1609,1613,1619,1621,1627,1637,1657,1663,1667,1669,1693,1697,1699,1709,1721,1723,1733,1741,1747,1753,1759,1777,1783,1787,1789,1801,1811,1823,1831,1847,1861,1867,1871,1873,1877,1879,1889,1901,1907,1913,1931,1933,1949,1951,1973,1979,1987,1993,1997,1999,2003,2011,2017,2027,2029,2039,2053,2063,2069,2081,2083,2087,2089,2099,2111,2113,2129,2131,2137,2141,2143,2153,2161,2179,2203,2207,2213,2221,2237,2239,2243,2251,2267,2269,2273,2281,2287,2293,2297,2309,2311,2333,2339,2341,2347,2351,2357,2371,2377,2381,2383,2389,2393,2399,2411,2417,2423,2437,2441,2447,2459,2467,2473,2477,2503,2521,2531,2539,2543,2549,2551,2557,2579,2591,2593,2609,2617,2621,2633,2647,2657,2659,2663,2671,2677,2683,2687,2689,2693,2699,2707,2711,2713,2719,2729,2731,2741,2749,2753,2767,2777,2789,2791,2797,2801,2803,2819,2833,2837,2843,2851,2857,2861,2879,2887,2897,2903,2909,2917,2927,2939,2953,2957,2963,2969,2971,2999,3001,3011,3019,3023,3037,3041,3049,3061,3067,3079,3083,3089,3109,3119,3121,3137,3163,3167,3169,3181,3187,3191,3203,3209,3217,3221,3229,3251,3253,3257,3259,3271,3299,3301,3307,3313,3319,3323,3329,3331,3343,3347,3359,3361,3371,3373,3389,3391,3407,3413,3433,3449,3457,3461,3463,3467,3469,3491,3499,3511,3517,3527,3529,3533,3539,3541,3547,3557,3559,3571,3581,3583,3593,3607,3613,3617,3623,3631,3637,3643,3659,3671,3673,3677,3691,3697,3701,3709,3719,3727,3733,3739,3761,3767,3769,3779,3793,3797,3803,3821,3823,3833,3847,3851,3853,3863,3877,3881,3889,3907,3911,3917,3919,3923,3929,3931,3943,3947,3967,3989,4001,4003,4007,4013,4019,4021,4027,4049,4051,4057,4073,4079,4091,4093,4099,4111,4127,4129,4133,4139,4153,4157,4159,4177,4201,4211,4217,4219,4229,4231,4241,4243,4253,4259,4261,4271,4273,4283,4289,4297,4327,4337,4339,4349,4357,4363,4373,4391,4397,4409,4421,4423,4441,4447,4451,4457,4463]
def P : Nat := 1268973489393249546900575543376941257315932133586644162811423818110540297673760277405416956010200520196587842923242144222327016826168160932492460029128623440887986977104501144451322993096416787917679856661099673643442076936103710519175425621822051445333411594344297522889280949730994777228661848532825992012746001531106508382340759022851807190174616875374349684353959119064785325749084541426826656181312082665541797296389257430246902720834467182342836127464808623945763433547462708288644134976236670516778481360451901736331883193407331730840812258995935567230079911201454984567425118976668206840190582137403691763518174864155078212565790521094174264264287124806309539093451132217115768490994572971682990092107347460658262884280128706009414703072426429559578540040229652881885755478074481830967230525612297641734465464154326606001962145944812772146029089645673332858031635327061747064699165348561097433050454262070778540001355319397160985627787619606356551528619981918807783661919222388177497586348536394321115272045137533998760917386295646378122837450094643429028115642266573596891514850603985642458799839149696561183183160500851620178122855937760973508557278551627893165027479942149676452736013734479908735812254651944873666807537339608511360776558983138475589281392136720004708137114202829013283472674581622564293631909639831775334015419419051117448587095109401182916746526834592425006234164191138410755411619295054793308704741707819759917822441508008067817417152029166459458023644255197328319928926855881603745381265668673139862601181492763005495825021876836666868743005845054830648598994145158772609236369513038697621780118224625017475509423895873621608771693766585279838954826108371495352762532910926783140836273335032767743304384777025709550039589865632322775241351834044776806490032051476201882095682656044522527561772896794351077417588400972363940605214987365877915679310308261829401169017420574146695767817313404700443828621120413303415015498758964011721618048378882897179185282030624716564312093676916600779658053098914976522290831560373996155291704164566123247307487122964608578587611595841561302205112577718250155845163058581720270110339792717905701563247480576729967391255736724494701598586485382207425321252923843742031345835680213233484877648022963002262390579775947205538174254042403680870044445082391184539067670236885647218333725277572949148349691644980436135619103330305749653382818816926996630773411577941660002513271309348117678033026126253808090236536121996619124004009874204207004486901215756650548226546555724374494778560986796986843850873723249034851558850890370090495860376963192386259969787414806828548168303742392691738851477283563925384683091114873305016726599883262905121325779340609942469055037208807415110371862097609446643301701131052877336704014417005646225871966098737274482942387320692274630152470879463975613363426323354822016244624901108236731529655174380722138417917109685631070485552297918468508828159666773622024516023609000440851530839094533777264554152689806348441339938494964242422966225723707146505464691350004989102067498890593114043104596912214872264629453306361178482891266691372867600160137060780672767972251488905668347968912620631772633259915557145957016205650215312022054689864853637007610706510497779371032293250561165184949200055904840827535504132997977647982840246697339637264658339879191167815305695446734948516140209903819885810287554629361416434121312646451232125250698764215167739908583059157309803491515900356444265714399075881440900083028839922413729418783451402480647153620222876776296461509166641112174235152424841684155825967442906970394274878989401557436086119289425557276216651773954140153939088817749168019329825289856903857929392101507871904723532512655218049209565945859401742356743474253682954493068337526458394038231499992385391327616669911112032397304050058292054034437503697114336067065791032267769374879489838446248024394833859378225099408369680276353781003115076104519549523032140324706619021481534978948363850575600057201333279237578706479929540881587657039840177558091099699002687432976001398195574206504780440839306021394544312172051497745295952408981193846191946300350661204286302840786097663475819192682275341941857307370287820451079726527845908065613128017393319949236507498256137747067728870746652353980504598050225248679462906383081830629067088675244390948743634595449269094257701211594551211696498332756097205757955617960626103180468740203191135241115523621349061558984169766686688091937178850121949957046043820895349826518951973077747150058920053342122611198967650902005155639505090067872420521180109014104890696577679037566580882586870171732329454346025835823773187548827021829088211349522107324779763924356388173957625051217014045746599332799188456743760766769835652608055352333431255989417516708422295717934956032644849133722951226219714951152304625726831184031857014012580205598569915393687109372272213754199102622987179671387867562971671492770346036553996181260034778217497350811995985285277465468531662757789120605668893912532397978229024258909646125474343160773883522477447274534448713362608319009413753176017907032282097870315425451702231080058463027531333076561987263187679975571462961145712550978874977620839130980193094356615257006121938790503797263615812717985615452111216820965583381711190661873113376061264338142868452903054074014512779809361482859649971435698343202531839580659662701929937289675031993387406083944092961835183621833211138096240600652629835970095743656602569747621854880312505495944618258767199658151921703136954017080226372574105175224239700633970137890003475367713851666958708966192184921758401887981786147275492919694244855141719511041545061994104375231023600001937651225187148768952266883459069079326815176766990344280572713940116517191237173829949285894970141794184874188852184255183030603174559793217351271493518849806830973832329329655297485357972509005645328107800151799627641892144565720715745821611061178728237180974107136698163103758831856405612791072279612618598529569597854624931427853135743553892905014811246207926038724804895714186828055097058448293013182631042569754648641574119392919822939641927315828173483099431631337521243138790212830418655979615280436507549001450733444076910378642771506349076344531071667350444140873852743272717740706149163428249659434753206230585894570028484970146429487697211329472632187982400855249849837761150672434047601650456415377055668474436459606880366884957569451109480815344578593447146944647605663304484319723427773307129764972383660823001109149196676596730467236550275476171795128757562296189796005268350413795548077758833881845847608473914963384496729052364660647865317535668422131993585748518904755703339863755075296787445723876468580799414257714885452981805427310021777062475048493918592238811863025082119409579571535678359294093660320024166421527253863062964087334583188170890348867097086916585570598485928763785074799764059910928852158774103588268903460467441468079583627555589096754258122700053663644709051666931022149960511960015079905880051249321395663155891146689584556161561529720608608378347871252177129006714465882436470532679815955816904613967819434221385318311775659858093077676676709075362078775575798307354996749944697432363866580212654621337076863795739481335480545105488603667562112926971267063898972225172142841803852411565971688117749741592240467667176345326791980869708004901586408382064880959265352390046466843475283663632475758994068428564018681878029789096510333203089712919472110102944018796677924722656704207128100985820162528469013348918758734000702802393133385718612063308400128266761442715440123119170408519350687870348408909128498232071305511120685644850245056311458044252581613458258852726806936485995358117493365473168078459389105236530509010504007174427552273136817846855467132583554268656020509918940339820152342057280309510583271834774280533058657859072123782573587279280438736032418376030403777877952128205385564405323465959988187787708270219193850921599001358921415617903945809322289261814224871477198024900763893955119229193393123249750976568962727128026243608624783411003831769145568761740067029651859638420039557762625457789635911472013616123363555105751468060397110806692875106680066192062585308460311337915585213181321125721517087495864996735630863883095149068435475191990284903476175149813485991154058095386291134044778449221859454660491647424031007263029441946116579600689844107640546031565178764474248872921236609612335327385082113687141426825426536964724605096382101043015196325789680314075235820205622526245561901446268080630076199752106663140930748000577984456009797353258749887684597503289342199757120674050155196295712653188498120095710596524986336743975097273129389083436884043715471835133207452039370273754183340817474166524028369566708279032408804031217642019573668277660085908740183735407522458297108283262569378785139507467538023180906671213105282961371590133688150297841801992831486699432371858129190872615548881701947180525763014526534543511453230560220781571571445339968902965184532032121338081948847554456471063354993939418604343815195867661695626631347927362384721775471800010074876141030859209449378914627347000764913861114652338126811417279832319057741606436064124259999732860553647450579781181894907939850382699210337596514512360839541849366979361161080446830886395087149525789331906615870889951044016344257645492106203060778131104619002280679109649975361571074505186810327688621516832298547851899667513357495053291094610249341710940534187520186858387930053144488284073874935589791116105801621563266679537226969683834021347256686780089726567177592640851263199562998559283708935500606599495131185819493727754388584121049316081190618727709609947349234324820346412076884311171558421106415504760764014062611754383935525736782749481372134993461903410037920639268987949207999821293753933850249508993802541961310724939713186554845875067881853588886377225481815560408137200924286273946847289146080953471780948057425840237536115553302124890342176222078311112563270397685273510273086813359454315787548760611499432462665230459548704373600002226906784080730525574254724312305081854802785565205800447554310225257960937115900121513175238804754566777510753197039927446858136522261229608687861296051872885725414362521307690220033881475853831777926138342223332718265121514873431636673980115082658743680127589050217480744423191800244632338437207710274320865254181872166094268199322525403262246058188652300855514119867388388450597051735399137901358847503709309724321442756167708192812285327934953844703697235697324721124132172181596082777500636527979279719530116764654842067181279053617310762382519909996459239345541964967060716181646826154780082612708883164772629696931572342169124428236874432001650606525861998564374515720686277200744064881800711288278604206568470960738177760556081494073757845480619745534658522713671062059122602198729088479628132342845652628858714020989329678245138763872490448690323184948341430354971749452800584895138060661186520169928576995061361450183159348914561982674980139408474107203873344424969219442366849893803015789741431283674373755636664349562376299851728965335648716294554049997615389937969098198512628803403312168208619028078133360041941375393165868780376771029808341599191279035999650583444565149502573203043197996005644726006452319270590802361178380647457242107209875773790313034464626288516957657271686456562738033705404104968073138547612000682220619380223311665477280284780312428760399363996833605587246578508368923914564661925073710308628149029506075576126555795981248176859971050103910797774708548253600174650750153333875255304739272553074493381444780644591587579904820076310941150605128366355090805746526771636416049890257519654560982880699998768238272587705429213797997424624833494285623333645835020888262580412577747062987847128771721491187529716071803078761472386288216095971861886770750144891709154423682332809568663166367128869690196581115169240545471906193243088936510221613529473883707976808486444481418271140802333642698496399614040412134377120784698335481305625921291087475750632115185312994215086099141080545982122536869544058966345163361038545006224572800756002672749475359184645248550871038141781060883459105289041161050142733956042127818591488375071156941127876608636680043963082916806772668068185628821013246021709867357329521200495167525079240214549302299441175042129511036283040966191524073628051368720239576973313908802173253843866715157610152900987574862773752174076370076591048368758636690723891825067135729868082867114504933902024972734689053477686993127650962949498442618238873328012551130395931595056535657747009526355918025635054985487905900729677469247320889881634531590967690180094844011316418121329706212424166091995762772876613264172578278981497522649672262714755137097784416199310199394363186488948074193102584662788990749859549855497874475075500774296984891426845577612645633386978919407713201070811321566204536986878886867374359196544755648378822905215158173558995014699591763495479306044988913643061706421278102805360079234541716004359922214085903134150759862253906301756374969636268049593134496850124483838354776253439018811827255988486670296612152621901723431455404173417374448697447251204670264582331117831069477662974815821497811322222627739035422413361338833331506995750813617356800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
theorem factorialP : P=Nat.factorial 4472 := by decide +kernel

def gapsOne : Nat → List Char → List Nat
  | _, [] => []
  | p, c::cs =>
      let v := c.toNat - 32
      let q := p + if p=2 then 2*v-1 else 2*v
      q :: gapsOne q cs
termination_by structural p cs => cs
def gapsWide : Nat → List Char → List Nat
  | _, [] => []
  | _, [_] => []
  | p, c::d::cs =>
      let v := c.toNat - 32 + 94*(d.toNat-32)
      let q := p + if p=2 then 2*v-1 else 2*v
      q :: gapsWide q cs
termination_by structural p cs => cs
def D (wide : Bool) (p : Nat) (s : String) : List Nat :=
  if wide then gapsWide p s.toList else gapsOne p s.toList
structure Segment (gap : Nat) (wide : Bool) where
  lo : Nat
  hi : Nat
  text : String
  checked : N5.primorialChainCheck 4473 P gap lo (D wide lo text) = true
  endpoint : N6.chainEnd lo (D wide lo text)=hi
theorem Segment.chain {gap : Nat} {wide : Bool} (s : Segment gap wide) :
    N6.PrimeChain gap s.lo s.hi := by
  have hc := N5.primorialChainCheck_sound factorialP s.checked
  rw [s.endpoint] at hc
  exact hc
theorem chain_last {gap lo hi : Nat} (hc : N6.PrimeChain gap lo hi) : hi.Prime := by
  induction hc with
  | singleton hp => exact hp
  | step _ _ _ _ ih => exact ih
def joinCheck {gap : Nat} {wide : Bool} (p : Nat) : List (Segment gap wide) → Bool
  | [] => true
  | s::ss => decide (p=s.lo) && joinCheck s.hi ss
def joinEnd {gap : Nat} {wide : Bool} (p : Nat) : List (Segment gap wide) → Nat
  | [] => p
  | s::ss => joinEnd s.hi ss
theorem join_sound {gap : Nat} {wide : Bool} {p : Nat} {ss : List (Segment gap wide)}
    (hp : p.Prime) (hc : joinCheck p ss=true) :
    N6.PrimeChain gap p (joinEnd p ss) := by
  induction ss generalizing p with
  | nil => exact .singleton hp
  | cons s ss ih =>
      have hb : p=s.lo ∧ joinCheck s.hi ss=true := by
        simpa only [joinCheck,Bool.and_eq_true,decide_eq_true_eq] using hc
      rcases hb with ⟨hp_eq, htail⟩
      subst p
      exact s.chain.trans (ih (chain_last s.chain) htail)

structure Group (gap : Nat) where
  lo : Nat
  hi : Nat
  chain : N6.PrimeChain gap lo hi
def groupCheck {gap : Nat} (p : Nat) : List (Group gap) → Bool
  | [] => true
  | g::gs => decide (p=g.lo) && groupCheck g.hi gs
def groupEnd {gap : Nat} (p : Nat) : List (Group gap) → Nat
  | [] => p
  | g::gs => groupEnd g.hi gs
theorem group_sound {gap p : Nat} {gs : List (Group gap)} (hp : p.Prime)
    (hc : groupCheck p gs=true) : N6.PrimeChain gap p (groupEnd p gs) := by
  induction gs generalizing p with
  | nil => exact .singleton hp
  | cons g gs ih =>
      have hb : p=g.lo ∧ groupCheck g.hi gs=true := by
        simpa only [groupCheck,Bool.and_eq_true,decide_eq_true_eq] using hc
      rcases hb with ⟨hpeq,htail⟩
      subst p
      exact g.chain.trans (ih (chain_last g.chain) htail)


set_option profiler true
set_option profiler.threshold 100
def sg0 : Group 184 := ⟨2,359311,by
  let ss : List (Segment 184 false) := [
⟨2,2861,"zy{yt{z|zx|zzu|w",by decide +kernel,by decide +kernel⟩,
⟨2861,5711,"zzuzt|x|zzw{zvzz",by decide +kernel,by decide +kernel⟩,
⟨5711,8543,"uvxt|{|{zz|zrwyw",by decide +kernel,by decide +kernel⟩,
⟨8543,11369,"xwwwzzzt|zwzzzuv",by decide +kernel,by decide +kernel⟩,
⟨11369,14221,"{zyrz|{z|zx|w{yr",by decide +kernel,by decide +kernel⟩,
⟨14221,17077,"zq|{y{|xw|{z|xww",by decide +kernel,by decide +kernel⟩,
⟨17077,19937,"zwy{zyzwxzy{|zzw",by decide +kernel,by decide +kernel⟩,
⟨19937,22751,"zz{|iwz|{|zzwqry",by decide +kernel,by decide +kernel⟩,
⟨22751,25589,"uyzzwzzxtzzzzzwy",by decide +kernel,by decide +kernel⟩,
⟨25589,28351,"{zty{twvkn{vww{t",by decide +kernel,by decide +kernel⟩,
⟨28351,31193,"sz{|zzxqs{|xzz|z",by decide +kernel,by decide +kernel⟩,
⟨31193,34039,"r|{|{v{y{|w{y{tt",by decide +kernel,by decide +kernel⟩,
⟨34039,36887,"yrtz|xy{t|{y{|{y",by decide +kernel,by decide +kernel⟩,
⟨36887,39761,"w{z|x|{|tx|{|{vz",by decide +kernel,by decide +kernel⟩,
⟨39761,42611,"xwy{t|u|z{z|zwzw",by decide +kernel,by decide +kernel⟩,
⟨42611,45439,"{w|ztu|xy{wyxszx",by decide +kernel,by decide +kernel⟩,
⟨45439,48221,"wsz{tzwtsry{zztv",by decide +kernel,by decide +kernel⟩,
⟨48221,50971,"xwznwzvzxtwzksq{",by decide +kernel,by decide +kernel⟩,
⟨50971,53813,"zy{zzzvtzxv{zvzz",by decide +kernel,by decide +kernel⟩,
⟨53813,56633,"zwzwovuzzsw{|{|z",by decide +kernel,by decide +kernel⟩,
⟨56633,59513,"zzzxz|tz{|x|z{|z",by decide +kernel,by decide +kernel⟩,
⟨59513,62273,"zuy{wgz{nwywwxsw",by decide +kernel,by decide +kernel⟩,
⟨62273,65071,"kzuswt{|x|{|zr|u",by decide +kernel,by decide +kernel⟩,
⟨65071,67901,"t|xyzzrsxy{|{yxy",by decide +kernel,by decide +kernel⟩,
⟨67901,70667,"utp{ty{mx|nz{zzs",by decide +kernel,by decide +kernel⟩,
⟨70667,73483,"{wtvw{zyxy{|zrtw",by decide +kernel,by decide +kernel⟩,
⟨73483,76343,"tvxyzw{|{w|{y{|z",by decide +kernel,by decide +kernel⟩,
⟨76343,79159,"xyxwsuz|{v{|{wsu",by decide +kernel,by decide +kernel⟩,
⟨79159,81931,"ynxywuytx|zq{jz{",by decide +kernel,by decide +kernel⟩,
⟨81931,84737,"gtzzz{wwsxz|{y{y",by decide +kernel,by decide +kernel⟩,
⟨84737,87491,"{|nz{vf|zzl|zovt",by decide +kernel,by decide +kernel⟩,
⟨87491,90353,"z{|wtt{w|{z|xz|z",by decide +kernel,by decide +kernel⟩,
⟨90353,93133,"zxyis{puqy{zzw|{",by decide +kernel,by decide +kernel⟩,
⟨93133,95917,"w|iwvuy{zzmxzyxz",by decide +kernel,by decide +kernel⟩,
⟨95917,98737,"z|z{|zz{|xmwu|qr",by decide +kernel,by decide +kernel⟩,
⟨98737,101561,"wyuz|uy{z|{mw{wy",by decide +kernel,by decide +kernel⟩,
⟨101561,104347,"zz{nyw{wwyrw|zqr",by decide +kernel,by decide +kernel⟩,
⟨104347,107209,"z|zz{|{k|xyz{|zx",by decide +kernel,by decide +kernel⟩,
⟨107209,109961,"tb|zt{yuzy{twtvt",by decide +kernel,by decide +kernel⟩,
⟨109961,112759,"t{zputpwwuz|{|z{",by decide +kernel,by decide +kernel⟩,
⟨112759,115547,"z|rzzv{sxkyxwzq|",by decide +kernel,by decide +kernel⟩,
⟨115547,118277,"zxhmzt{zpzzizzn|",by decide +kernel,by decide +kernel⟩,
⟨118277,121081,"zxtvozy{zs{|zxzq",by decide +kernel,by decide +kernel⟩,
⟨121081,123941,"y{zty{y{|xzzyxw|",by decide +kernel,by decide +kernel⟩,
⟨123941,126781,"{zwszzzuw|xzwzzz",by decide +kernel,by decide +kernel⟩,
⟨126781,129643,"zy{vxz|zzu|xw|z{",by decide +kernel,by decide +kernel⟩,
⟨129643,132469,"ptxp{t|{zyz{|{y{",by decide +kernel,by decide +kernel⟩,
⟨132469,135301,"yuvz{tyz{|wzzwzu",by decide +kernel,by decide +kernel⟩,
⟨135301,138139,"y{zvzzwzuzwq|zz{",by decide +kernel,by decide +kernel⟩,
⟨138139,140939,"|w{|utty{yrywzxp",by decide +kernel,by decide +kernel⟩,
⟨140939,143743,"{zzvzw{z|zwnzxwk",by decide +kernel,by decide +kernel⟩,
⟨143743,146543,"srzw|z{stzwt{zyw",by decide +kernel,by decide +kernel⟩,
⟨146543,149323,"xwzzsryxmozz|t{z",by decide +kernel,by decide +kernel⟩,
⟨149323,152083,"z_wtzywnwzxtzz|{",by decide +kernel,by decide +kernel⟩,
⟨152083,154883,"|xztty{zkt|{tvx|",by decide +kernel,by decide +kernel⟩,
⟨154883,157669,"r|{z|htzt{zz|rqz",by decide +kernel,by decide +kernel⟩,
⟨157669,160423,"vx|uzzyumw{|rzdu",by decide +kernel,by decide +kernel⟩,
⟨160423,163181,"zylpwhz{|qwzxzwy",by decide +kernel,by decide +kernel⟩,
⟨163181,166013,"{zmwz{zw|{z|qwzz",by decide +kernel,by decide +kernel⟩,
⟨166013,168781,"xwy{jzuvktzz{z|r",by decide +kernel,by decide +kernel⟩,
⟨168781,171583,"qtvw{|zx|xvxszuz",by decide +kernel,by decide +kernel⟩,
⟨171583,174443,"z|zz{|zu|l|u|{|z",by decide +kernel,by decide +kernel⟩,
⟨174443,177283,"w{p{t|zzu|{|zzzu",by decide +kernel,by decide +kernel⟩,
⟨177283,180097,"|zxy{yxpzzxy{nww",by decide +kernel,by decide +kernel⟩,
⟨180097,182893,"|{|rj{qnzw|{w|xz",by decide +kernel,by decide +kernel⟩,
⟨182893,185651,"wzk|{zwwvuhzzv{p",by decide +kernel,by decide +kernel⟩,
⟨185651,188369,"{zylevip{qw|{yxv",by decide +kernel,by decide +kernel⟩,
⟨188369,191231,"ryzx|{|{|xz|xvx|",by decide +kernel,by decide +kernel⟩,
⟨191231,194027,"{suz|op{yz{|xs{s",by decide +kernel,by decide +kernel⟩,
⟨194027,196817,"xwszxy{|n{kzzt|w",by decide +kernel,by decide +kernel⟩,
⟨196817,199603,"xtzzyezzzxztzztw",by decide +kernel,by decide +kernel⟩,
⟨199603,202409,"z|rsuvt{yuz|z{zs",by decide +kernel,by decide +kernel⟩,
⟨202409,205223,"{sx|xtzzywztoz|z",by decide +kernel,by decide +kernel⟩,
⟨205223,208009,"xpqqt{z|{wwz|{wq",by decide +kernel,by decide +kernel⟩,
⟨208009,210827,"zyquyq{zzq|{w|x|",by decide +kernel,by decide +kernel⟩,
⟨210827,213641,"zz{w|rs{|u|iw|zz",by decide +kernel,by decide +kernel⟩,
⟨213641,216431,"z{wwzpx|i|{w|{pt",by decide +kernel,by decide +kernel⟩,
⟨216431,219251,"x|{|{zyqquzzvr|z",by decide +kernel,by decide +kernel⟩,
⟨219251,222029,"{z|{|uzwwp{^{tvz",by decide +kernel,by decide +kernel⟩,
⟨222029,224831,"uzyw{wv{zp{ty{yq",by decide +kernel,by decide +kernel⟩,
⟨224831,227581,"qw{ztwnwzvhw{zww",by decide +kernel,by decide +kernel⟩,
⟨227581,230369,"qk|zu|{ty{y{ttvz",by decide +kernel,by decide +kernel⟩,
⟨230369,233201,"{yqxwyzz{tyz{|tz",by decide +kernel,by decide +kernel⟩,
⟨233201,235967,"uzqtqwsrzz|{wwvw",by decide +kernel,by decide +kernel⟩,
⟨235967,238747,"xz|wbzzus{tz|wxw",by decide +kernel,by decide +kernel⟩,
⟨238747,241567,"wsxy{|uwt|w{yu|x",by decide +kernel,by decide +kernel⟩,
⟨241567,244403,"v{zywzzxyx|{zmx|",by decide +kernel,by decide +kernel⟩,
⟨244403,247249,"zx|r|{ztt|xy{z|x",by decide +kernel,by decide +kernel⟩,
⟨247249,250091,"|ztx|{pw{y{|zwwz",by decide +kernel,by decide +kernel⟩,
⟨250091,252919,"x|tzzzryx|xv{ty{",by decide +kernel,by decide +kernel⟩,
⟨252919,255733,"|uwsxzy{qvuw|zz{",by decide +kernel,by decide +kernel⟩,
⟨255733,258551,"|x_w|z{|wx|z{yxy",by decide +kernel,by decide +kernel⟩,
⟨258551,261433,"{|{y{|zzx|zzu|w{",by decide +kernel,by decide +kernel⟩,
⟨261433,264167,"tvhq{vr|xvwfy{z|",by decide +kernel,by decide +kernel⟩,
⟨264167,266983,"{zt|nuwzy{y{t|t{",by decide +kernel,by decide +kernel⟩,
⟨266983,269749,"|w{n|ztbxwtzzvzx",by decide +kernel,by decide +kernel⟩,
⟨269749,272549,"wwwzztwnp{zy{zyz",by decide +kernel,by decide +kernel⟩,
⟨272549,275399,"u|zuz|z{|u|zw{wv",by decide +kernel,by decide +kernel⟩,
⟨275399,278143,"{p{ts{|ozezkw|w{",by decide +kernel,by decide +kernel⟩,
⟨278143,280997,"y{|zzwxz|zz{|lyz",by decide +kernel,by decide +kernel⟩,
⟨280997,283721,"uvuw|lj{h|wx|o|t",by decide +kernel,by decide +kernel⟩,
⟨283721,286553,"l|zxz|z{yzxtyz{v",by decide +kernel,by decide +kernel⟩,
⟨286553,289309,"zf|{mrwnwzvu|z{z",by decide +kernel,by decide +kernel⟩,
⟨289309,292147,"zz|zx|rzpzz{zvzx",by decide +kernel,by decide +kernel⟩,
⟨292147,294911,"vwzxvznkw{z|xptz",by decide +kernel,by decide +kernel⟩,
⟨294911,297707,"uy{px|xqz|zztzqw",by decide +kernel,by decide +kernel⟩,
⟨297707,300511,"{w|zzusuw|{mxz|r",by decide +kernel,by decide +kernel⟩,
⟨300511,303371,"zy{t|zx|zx|zzxt|",by decide +kernel,by decide +kernel⟩,
⟨303371,306193,"{yx|tzuzv{m{|x|u",by decide +kernel,by decide +kernel⟩,
⟨306193,308989,"|rsx|xzsuzyxwwvx",by decide +kernel,by decide +kernel⟩,
⟨308989,311713,"|hx|zupx|{vfqtzq",by decide +kernel,by decide +kernel⟩,
⟨311713,314527,"|xzwwyr|zu|twu|u",by decide +kernel,by decide +kernel⟩,
⟨314527,317363,"|tzr|{qnz|{|{|x|",by decide +kernel,by decide +kernel⟩,
⟨317363,320119,"xyudzw{|xy{wmnw{",by decide +kernel,by decide +kernel⟩,
⟨320119,322963,"|zx|w{|uzy{yqzuz",by decide +kernel,by decide +kernel⟩,
⟨322963,325753,"wduzz|wz{|{wtzp{",by decide +kernel,by decide +kernel⟩,
⟨325753,328579,"tzn|xqv{|{wz|x|{",by decide +kernel,by decide +kernel⟩,
⟨328579,331399,"wyz{z|iwv{yzu|w{",by decide +kernel,by decide +kernel⟩,
⟨331399,334231,"zw|zu|uq|wzx|uy{",by decide +kernel,by decide +kernel⟩,
⟨334231,336977,"vosu|ztzq{tgwxz|",by decide +kernel,by decide +kernel⟩,
⟨336977,339827,"xw|z{pzx|zwz{y{y",by decide +kernel,by decide +kernel⟩,
⟨339827,342599,"zxnzw|{w^rzy{zzy",by decide +kernel,by decide +kernel⟩,
⟨342599,345311,"qtozstuzsxpxyznt",by decide +kernel,by decide +kernel⟩,
⟨345311,348097,"xvrwvzz{zzzpz{|f",by decide +kernel,by decide +kernel⟩,
⟨348097,350899,"v{y{zzvxywtzq{|l",by decide +kernel,by decide +kernel⟩,
⟨350899,353711,"zzyqzzwx|tzz{nvz",by decide +kernel,by decide +kernel⟩,
⟨353711,356533,"z{|{zz|n{zywuwm{",by decide +kernel,by decide +kernel⟩,
⟨356533,359311,"tty{p{twsr|zxty{",by decide +kernel,by decide +kernel⟩]
  exact join_sound (p:=2) (ss:=ss) (by decide) (by decide +kernel)⟩

theorem checked : N6.PrimeChain 184 sg0.lo sg0.hi := sg0.chain
end Contribution.R8MiddleGroupFirst128FixedP
