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
set_option maxHeartbeats 1000000
set_option maxRecDepth 65536
set_option exponentiation.threshold 1000000

namespace Contribution.Middle323

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

namespace N5

def BasisComplete (B : Nat) (ps : List Nat) : Prop :=
  ∀ q : Nat, q.Prime → q < B → q ∈ ps

end N5

namespace N5

def primorialPrimeCheck (B P p : Nat) : Bool :=
  if p < B then N3.trialPrimeCheck p
  else decide (2 ≤ p ∧ p < B * B ∧ Nat.gcd p P = 1)

theorem primorialPrimeCheck_sound {B P p : Nat} {ps : List Nat}
    (hcomplete : BasisComplete B ps) (hprod : ps.prod = P)
    (hcheck : primorialPrimeCheck B P p = true) : p.Prime := by
  by_cases hsmall : p < B
  · exact N3.trialPrimeCheck_sound
      (by simpa only [primorialPrimeCheck, if_pos hsmall] using hcheck)
  · have hc : 2 ≤ p ∧ p < B * B ∧ Nat.gcd p P = 1 :=
      of_decide_eq_true (by simpa only [primorialPrimeCheck, if_neg hsmall] using hcheck)
    refine Nat.prime_def_le_sqrt.mpr ⟨hc.1, ?_⟩
    intro d hd hsqrt hdiv
    obtain ⟨q, hq, hqd⟩ := Nat.exists_prime_and_dvd (n := d) (by omega)
    have hqdle : q ≤ d := Nat.le_of_dvd (by omega) hqd
    have hsqrtB : Nat.sqrt p < B := Nat.sqrt_lt.mpr hc.2.1
    have hqB : q < B := by omega
    have hmem : q ∈ ps := hcomplete q hq hqB
    have hqP : q ∣ P := by
      rw [← hprod]
      exact List.dvd_prod hmem
    have hqgcd : q ∣ Nat.gcd p P := Nat.dvd_gcd (hqd.trans hdiv) hqP
    exact hq.not_dvd_one (by simpa only [hc.2.2] using hqgcd)

def primorialChainCheck (B P gap p : Nat) : List Nat → Bool
  | [] => primorialPrimeCheck B P p
  | q :: qs => primorialPrimeCheck B P p && decide (p < q ∧ q ≤ p + gap) &&
      primorialChainCheck B P gap q qs

theorem primorialChainCheck_sound {B P gap p : Nat} {ps qs : List Nat}
    (hcomplete : BasisComplete B ps) (hprod : ps.prod = P)
    (hcheck : primorialChainCheck B P gap p qs = true) :
    N6.PrimeChain gap p (N6.chainEnd p qs) := by
  induction qs generalizing p with
  | nil =>
      exact .singleton
        (primorialPrimeCheck_sound (B := B) (P := P) (p := p) (ps := ps) hcomplete hprod hcheck)
  | cons q qs ih =>
      simp only [primorialChainCheck, Bool.and_eq_true, decide_eq_true_eq] at hcheck
      exact .step
        (primorialPrimeCheck_sound (B := B) (P := P) (p := p) (ps := ps) hcomplete hprod hcheck.1.1)
        hcheck.1.2.1 hcheck.1.2.2 (ih hcheck.2)

end N5

namespace N5

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
def P : Nat := 1712206997547039466982080380802562617513640622660404539488732266867734052454912549211247312353510670872239109204835668619255337723406347697120578163621873004188676950202496281339613141723411755313851668223070201874897473765432878798797825303702315538257763183917479990736581855640357675819362115977545579162072041548861479842137949540240824044635600826131346583717289492135556898090908210310321583953545458293278373612303718136593713347898861174863307716186021231461352994801334844086370560863034312639820458008473225357563665749069971895913864646708678567318341055120382276955526692969603832181090329131437160325498703358342206988852834902205279045474841211815470529563730984412451072607041009386477982638899441242962956061280167336843818496872379760619421664276397568912114767324551934275021303521947691264955368056875918133507730726277661585927173243576194286843138980567823668819868297010390876136623551377521671698181784731418189823129810750377779267784511186426882600087182176517902536425298588948911945603727586511616832857611651189077032881319990509541384577233224043022983636859164543006737282909449089509941910034477021756197256306138778461273866586547626245709570305098305551070978626081565380687431353194121035701960864741842894158169783508406061505522573355999150397901038105721713910698581047286961635743226304064636262691668641269263871155270211131767040920771796814076191058091216279859206626354935145988591815472506221493598848403010368977985498273357704411623817469628683823807634962777935055117307137104627917130674478676202697456832490050411386675176334184218792989383445153088634013472791158113214998985325694669016457688316441160127453766404310719601084196494485508025226383190125498850912437235988221377088282846853321002821345148932702434206947782314406573635933913455786117433391418672835490673012301796655154950380144794559608208473257851290654036956224890277331837818736277225670
theorem prodP : basis.prod = P := by decide +kernel

theorem basisComplete : N5.BasisComplete 4473 basis :=
  N5.BasisCompleteOn.to_complete
    (N5.basisRangeCheck_sound (ps:=basis) (lo:=0) (len:=4473) (by decide +kernel))

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
  text : String
  checked : N5.primorialChainCheck 4473 P gap lo (D wide lo text) = true
def Segment.hi {gap : Nat} {wide : Bool} (s : Segment gap wide) : Nat :=
  N6.chainEnd s.lo (D wide s.lo s.text)
theorem Segment.chain {gap : Nat} {wide : Bool} (s : Segment gap wide) :
    N6.PrimeChain gap s.lo s.hi :=
  N5.primorialChainCheck_sound basisComplete prodP s.checked
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
      subst p
      exact s.chain.trans (ih (chain_last s.chain) hb.2)

def sg0 : List (Segment 322 true) := [
⟨2,"z y { y t { z | z x | z z u | w ",by decide +kernel⟩,
⟨2861,"z z u z t | x | z z w { z v z z ",by decide +kernel⟩,
⟨5711,"u v x t | { | { z z | z r w y w ",by decide +kernel⟩,
⟨8543,"x w w w z z z t | z w z z z u v ",by decide +kernel⟩,
⟨11369,"{ z y r z | { z | z x | w { y r ",by decide +kernel⟩,
⟨14221,"z q | { y { | x w | { z | x w w ",by decide +kernel⟩,
⟨17077,"z w y { z y z w x z y { | z z w ",by decide +kernel⟩,
⟨19937,"z z { | b!z | { | z z w q r y u ",by decide +kernel⟩,
⟨22921,"y z z w z z x t z z z z z w y { ",by decide +kernel⟩,
⟨25771,"z t y { t w c!n { v w w { t s z ",by decide +kernel⟩,
⟨28697,"{ | z z x q s { | x z z | z r | ",by decide +kernel⟩,
⟨31541,"{ | { v { y { | w { y { t t y r ",by decide +kernel⟩,
⟨34381,"t z | x y { t | { y { | { y w { ",by decide +kernel⟩,
⟨37243,"z | x | { | t x | { | { v z x w ",by decide +kernel⟩,
⟨40111,"y { t | u | z { z | z w z w { w ",by decide +kernel⟩,
⟨42967,"| z t u | x y { w y x s z x w s ",by decide +kernel⟩,
⟨45779,"z { t z w t s r y { z z t v x w ",by decide +kernel⟩,
⟨48571,"z n w z v z x t w z `!q { z y { ",by decide +kernel⟩,
⟨51511,"z z z v t z x v { z v z z z w z ",by decide +kernel⟩,
⟨54347,"w o v u z z s w { | { | z z z z ",by decide +kernel⟩,
⟨57173,"x z | t z { | x | z { | z z u y ",by decide +kernel⟩,
⟨60041,"{ `!z { n w y w w x s w k z u s ",by decide +kernel⟩,
⟨62939,"w t { | x | { | z r | u t | x y ",by decide +kernel⟩,
⟨65777,"z z r s x y { | { y x y u t p { ",by decide +kernel⟩,
⟨68581,"t y { m x | n z { z z s { w t v ",by decide +kernel⟩,
⟨71363,"w { z y x y { | z r t w t v x y ",by decide +kernel⟩,
⟨74177,"z w { | { w | { y { | z x y x w ",by decide +kernel⟩,
⟨77047,"s u z | { v { | { w s u y n x y ",by decide +kernel⟩,
⟨79847,"w u y t x | z q { j z { ]!z z z ",by decide +kernel⟩,
⟨82781,"{ w w s x z | { y { y { | n z { ",by decide +kernel⟩,
⟨85621,"^!| z z l | z o v t z { | w t t ",by decide +kernel⟩,
⟨88547,"{ w | { z | x z | z z x y ^!{ p ",by decide +kernel⟩,
⟨91541,"u q y { z z w | { w | b!v u y { ",by decide +kernel⟩,
⟨94513,"z z m x z y x z z | z { | z z { ",by decide +kernel⟩,
⟨97369,"| x m w u | q r w y u z | u y { ",by decide +kernel⟩,
⟨100153,"z | { m w { w y z z { n y w { w ",by decide +kernel⟩,
⟨102967,"w y r w | z q r z | z z { | { k ",by decide +kernel⟩,
⟨105769,"| x y z { | z x X!| z t { y u z ",by decide +kernel⟩,
⟨108751,"y { t w t v t t { z p u t p w w ",by decide +kernel⟩,
⟨111497,"u z | { | z { z | r z z v { s x ",by decide +kernel⟩,
⟨114343,"k y x w z q | z b!m z t { z p z ",by decide +kernel⟩,
⟨117251,"z i z z n | z x t v o z y { z s ",by decide +kernel⟩,
⟨120017,"{ | z x z q y { z t y { y { | x ",by decide +kernel⟩,
⟨122869,"z z y x w | { z w s z z z u w | ",by decide +kernel⟩,
⟨125711,"x z w z z z z y { v x z | z z u ",by decide +kernel⟩,
⟨128563,"| x w | z { p t x p { t | { z y ",by decide +kernel⟩,
⟨131381,"z { | { y { y u v z { t y z { | ",by decide +kernel⟩,
⟨134243,"w z z w z u y { z v z z w z u z ",by decide +kernel⟩,
⟨137077,"w q | z z { | w { | u t t y { y ",by decide +kernel⟩,
⟨139907,"r y w z x p { z z v z w { z | z ",by decide +kernel⟩,
⟨142733,"w n z x w `!r z w | z { s t z w ",by decide +kernel⟩,
⟨145661,"t { z y w x w z z s r y x ^!z z ",by decide +kernel⟩,
⟨148609,"| t { z [!w t z y w n w z x t z ",by decide +kernel⟩,
⟨151537,"z | { | x z t t y { z a!| { t v ",by decide +kernel⟩,
⟨154523,"x | r | { z | ^!z t { z z | r q ",by decide +kernel⟩,
⟨157489,"z v x | u z z y u m w { | r `!u ",by decide +kernel⟩,
⟨160423,"z y ^!a!z { | q w z x z w y { z ",by decide +kernel⟩,
⟨163543,"m w z { z w | { z | q w z z x w ",by decide +kernel⟩,
⟨166363,"y { j z u c!t z z { z | r q t v ",by decide +kernel⟩,
⟨169283,"w { | z x | x v x s z u z z | z ",by decide +kernel⟩,
⟨172127,"z { | z u | l | u | { | z w { p ",by decide +kernel⟩,
⟨174959,"{ t | z z u | { | z z z u | z x ",by decide +kernel⟩,
⟨177823,"y { y x p z z x y { n w w | { | ",by decide +kernel⟩,
⟨180647,"^!{ a!z w | { w | x z w z k | { ",by decide +kernel⟩,
⟨183763,"z w w v _!z z v { p { z y S!a!p ",by decide +kernel⟩,
⟨186959,"{ q w | { y x v r y z x | { | { ",by decide +kernel⟩,
⟨189799,"| x z | x v x | { s u z | a!{ y ",by decide +kernel⟩,
⟨192791,"z { | x s { s x w s z x y { | n ",by decide +kernel⟩,
⟨195599,"{ k z z t | w x t z z `!z z z x ",by decide +kernel⟩,
⟨198553,"z t z z t w z | r s u v t { y u ",by decide +kernel⟩,
⟨201337,"z | z { z s { s x | x t z z y w ",by decide +kernel⟩,
⟨204173,"z t o z | z x c!q t { z | { w w ",by decide +kernel⟩,
⟨207127,"z | { w q z y q u y q { z z q | ",by decide +kernel⟩,
⟨209927,"{ w | x | z z { w | r s { | u | ",by decide +kernel⟩,
⟨212777,"b!| z z z { w w z p x | i | { w ",by decide +kernel⟩,
⟨215737,"| { p t x | { | { z y q q u z z ",by decide +kernel⟩,
⟨218551,"v r | z { z | { | u z w w p [!{ ",by decide +kernel⟩,
⟨221509,"t v z u z y w { w v { z p { t y ",by decide +kernel⟩,
⟨224309,"{ y q q w { z t w n w z `!w { z ",by decide +kernel⟩,
⟨227233,"w w ^!| z u | { t y { y { t t v ",by decide +kernel⟩,
⟨230189,"z { y q x w y z z { t y z { | t ",by decide +kernel⟩,
⟨233021,"z u z q t q w s r z z | { w w v ",by decide +kernel⟩,
⟨235793,"w x z | [!z z u s { t z | w x w ",by decide +kernel⟩,
⟨238747,"w s x y { | u w t | w { y u | x ",by decide +kernel⟩,
⟨241567,"v { z y w z z x y x | { z m x | ",by decide +kernel⟩,
⟨244403,"z x | r | { z t t | x y { z | x ",by decide +kernel⟩,
⟨247249,"| z t x | { p w { y { | z w w z ",by decide +kernel⟩,
⟨250091,"x | t z z z r y x | x v { t y { ",by decide +kernel⟩,
⟨252919,"| u w s x z y { q v u w | z z { ",by decide +kernel⟩,
⟨255733,"| Y!w | z { | w x | z { y x y { ",by decide +kernel⟩,
⟨258733,"| { y { | z z x | z z u | w { t ",by decide +kernel⟩,
⟨261601,"`!q { v r | x v _!y { z | { z t ",by decide +kernel⟩,
⟨264697,"| n u w z y { y { t | t { | w { ",by decide +kernel⟩,
⟨267523,"n | z X!x w t z z v z x w w w z ",by decide +kernel⟩,
⟨270451,"z t w `!{ z y { z y z u | z u z ",by decide +kernel⟩,
⟨273433,"| z { | u | z w { w v { p { t s ",by decide +kernel⟩,
⟨276257,"{ | o a!z k w | w { y { | z z w ",by decide +kernel⟩,
⟨279221,"x z | z z { | l y z u v u w | X!",by decide +kernel⟩,
⟨282167,"{ h | w x | o | b!| z x z | z { ",by decide +kernel⟩,
⟨285139,"y z x t y z { v b!| { a!w n w z ",by decide +kernel⟩,
⟨288241,"v u | z { z z z | z x | r z p z ",by decide +kernel⟩,
⟨291077,"z { z v z x v w z x v z [!w { z ",by decide +kernel⟩,
⟨294043,"| x p t z u y { p x | x q z | z ",by decide +kernel⟩,
⟨296843,"z t z q w { w | z z u s u w | { ",by decide +kernel⟩,
⟨299653,"m x z | r z y { t | z x | z x | ",by decide +kernel⟩,
⟨302483,"z z x t | { y x | t z u z v { m ",by decide +kernel⟩,
⟨305297,"{ | x | u | r s x | x z s u z y ",by decide +kernel⟩,
⟨308117,"x w w v x | b!| z u p x | { ^!q ",by decide +kernel⟩,
⟨311203,"t z q | x z w w y r | z u | t w ",by decide +kernel⟩,
⟨314003,"u | u | t z r | { a!z | { | { | ",by decide +kernel⟩,
⟨317003,"x | x y [!z w { | x y { w ]!w { ",by decide +kernel⟩,
⟨320119,"| z x | w { | u z y { y q z u z ",by decide +kernel⟩,
⟨322963,"]!u z z | w z { | { w t z p { t ",by decide +kernel⟩,
⟨325921,"z n | x q v { | { w z | x | { w ",by decide +kernel⟩,
⟨328753,"y z { z | b!v { y z u | w { z w ",by decide +kernel⟩,
⟨331753,"| z u | u q | w z x | u y { v o ",by decide +kernel⟩,
⟨334561,"s u | z t z q { ]!w x z | x w | ",by decide +kernel⟩,
⟨337511,"z { p z x | z w z { y { y z x n ",by decide +kernel⟩,
⟨340339,"z w | { W!r z y { z z y q t o z ",by decide +kernel⟩,
⟨343267,"s t u z s x p x y z n t x v r w ",by decide +kernel⟩,
⟨345997,"v z z { z z z p z { | ^!{ y { z ",by decide +kernel⟩,
⟨348991,"z v x y w t z q { | l z z y q z ",by decide +kernel⟩,
⟨351779,"z w x | t z z { n v z z { | { z ",by decide +kernel⟩,
⟨354619,"z | n { z y w u w m { t t y { p ",by decide +kernel⟩,
⟨357389,"{ t w s r | z x t y { v z w u z ",by decide +kernel⟩,
⟨360187,"k `!w x z z y { z y n { z p { y ",by decide +kernel⟩,
⟨363119,"b!z z y r z y u | t z x c!l z z ",by decide +kernel⟩,
⟨366211,"v r z z q w | x y x | { | { | n ",by decide +kernel⟩]

def sg1 : List (Segment 322 true) := [
⟨369029,"{ k y u | w z z { | n { z z y { ",by decide +kernel⟩,
⟨371851,"v n w u | w { t q w m { z `!o | ",by decide +kernel⟩,
⟨374741,"t { t | z x | u m x w | z x w v ",by decide +kernel⟩,
⟨377543,"w u | { m x y z { | l w | { z | ",by decide +kernel⟩,
⟨380363,"u z t z y z k z t u | o v x | { ",by decide +kernel⟩,
⟨383143,"y t u z y x w z v u z z | w x | ",by decide +kernel⟩,
⟨385967,"{ | t x w z v t z x | u c!u | z ",by decide +kernel⟩,
⟨388937,"z { | z x c!{ | z { | x m x y { ",by decide +kernel⟩,
⟨391939,"w | z u | { y { | { z z v { | { ",by decide +kernel⟩,
⟨394819,"w z a!z z z v x | u m x `!u z y ",by decide +kernel⟩,
⟨397907,"z z w z b!s x n y x p u | w x z ",by decide +kernel⟩,
⟨400837,"z | z u p x | { s { t z | x w y ",by decide +kernel⟩,
⟨403661,"u z z s { ^!y { q z y u v z u `!",by decide +kernel⟩,
⟨406739,"t x z w | z x p w z t { z s { w ",by decide +kernel⟩,
⟨409543,"z y q z u w v u | w { v { | { Z!",by decide +kernel⟩,
⟨412493,"w { | b!| { t w z v r p x | x w ",by decide +kernel⟩,
⟨415447,"| u y z w z z z r z s x y q z z ",by decide +kernel⟩,
⟨418259,"t x | w z x w p z u q y z u t y ",by decide +kernel⟩,
⟨421037,"u w y { v x y _!z s { z z z w | ",by decide +kernel⟩,
⟨424007,"z r t w w v t z x `!{ v w x z y ",by decide +kernel⟩,
⟨426941,"x s w r t z z m u | x | z u | { ",by decide +kernel⟩,
⟨429733,"| x | x k z w | u t | u w p { ^!",by decide +kernel⟩,
⟨432661,"v u | { z z ]!{ t | u | { y r v ",by decide +kernel⟩,
⟨435623,"n u y { w t z z z v z x q t | x ",by decide +kernel⟩,
⟨438409,"z z | z u t t | t z x z | { z | ",by decide +kernel⟩,
⟨441257,"r s r v w w x v u | b!w q q q y ",by decide +kernel⟩,
⟨444131,"x z | u z y r y q z u y u t | z ",by decide +kernel⟩,
⟨446933,"w n z w x t z ]!{ w q | b!z z y ",by decide +kernel⟩,
⟨450011,"{ | z u v u z q t w | k { | z z ",by decide +kernel⟩,
⟨452813,"x v X!{ z t t v { s z w t z x z ",by decide +kernel⟩,
⟨455737,"| b!t y { z t q z | w [!P!s w { ",by decide +kernel⟩,
⟨458929,"| z x z z | x | u y { n z w Z!w ",by decide +kernel⟩,
⟨461891,"{ s { t | z k z x | z z u y u y ",by decide +kernel⟩,
⟨464699,"z { c!t u z y { z y { n | x z | ",by decide +kernel⟩,
⟨467681,"l y z z z t z u | x | z x | z z ",by decide +kernel⟩,
⟨470513,"x y w x w z y { z y z w w x z z ",by decide +kernel⟩,
⟨473353,"[!z y z { y z z x z | { | w u | ",by decide +kernel⟩,
⟨476351,"t { t y { z | x y { h z | x y q ",by decide +kernel⟩,
⟨479153,"w ^!{ c!w { q y { y z u v q t { ",by decide +kernel⟩,
⟨482233,"z | x | { | z t { | u s u | _!t ",by decide +kernel⟩,
⟨485209,"z y r y { `!{ z z | z x t w z p ",by decide +kernel⟩,
⟨488171,"{ p x v { w v { v u | z { | f | ",by decide +kernel⟩,
⟨490967,"{ | u w z B!z w z l z z c!x p x ",by decide +kernel⟩,
⟨493993,"w w z y w u y z u z z j z z u z ",by decide +kernel⟩,
⟨496789,"w y { | { | z w { w | z { z | z ",by decide +kernel⟩,
⟨499673,"z x z | w w { z | x w | z z o y ",by decide +kernel⟩,
⟨502517,"{ | u z z z | { | z n { p u t z ",by decide +kernel⟩,
⟨505339,"| u | u s z z u t [!| u v x | u ",by decide +kernel⟩,
⟨508273,"y u y w x z | z w { | u z | x z ",by decide +kernel⟩,
⟨511123,"w z n y z x s w x s { v t q r | ",by decide +kernel⟩,
⟨513881,"z { w m z { y { | x p z x z v z ",by decide +kernel⟩,
⟨516701,"{ | { t z k | { y { | w z { z z ",by decide +kernel⟩,
⟨519553,"| { | x v { z t z t w t p t t u ",by decide +kernel⟩,
⟨522337,"| { | q u | w { y { t s z u z | ",by decide +kernel⟩,
⟨525167,"i z | [!x j x | u p { w z t z v ",by decide +kernel⟩,
⟨528053,"u z `!r t y { t v { p w z q r w ",by decide +kernel⟩,
⟨530947,"w y { n | z { s { y o | x v { s ",by decide +kernel⟩,
⟨533747,"z w { n y { v z { y t { q z w | ",by decide +kernel⟩,
⟨536561,"{ z t c!w { v { z | r y z q z { ",by decide +kernel⟩,
⟨539533,"z | { v { z t z z t w y x | x w ",by decide +kernel⟩,
⟨542371,"z v t u z ^!p a!t w x y x | z { ",by decide +kernel⟩,
⟨545449,"v u t y z q { z z X!z z c!b!z | ",by decide +kernel⟩,
⟨548687,"{ t | { | z { z z z w z | z z { ",by decide +kernel⟩,
⟨551569,"| z z S!z w p { z | z t z z x | ",by decide +kernel⟩,
⟨554531,"z { | z { m w w { s u z | x p z ",by decide +kernel⟩,
⟨557339,"{ v u s _!y { y u z s z u s z a!",by decide +kernel⟩,
⟨560411,"k x p { v t z t z { | z z t z x ",by decide +kernel⟩,
⟨563197,"z | { a!v x | t x w y z { q | { ",by decide +kernel⟩,
⟨566179,"t w z y z k z z { a!c!o w | x | ",by decide +kernel⟩,
⟨569267,"z x w p V!t z z z v u w z | { | ",by decide +kernel⟩,
⟨572207,"z z { | x z | w { w z | z z z z ",by decide +kernel⟩,
⟨575087,"w z { t v t { z W!x | { | k { z ",by decide +kernel⟩,
⟨578029,"| o s { q a!z | w u w y a!{ z q ",by decide +kernel⟩,
⟨581101,"q | u z | z o z y { v { | z x | ",by decide +kernel⟩,
⟨583937,"q { s z { | u y x w v w x w | u ",by decide +kernel⟩,
⟨586741,"z z z y w z x | w { w y { z s { ",by decide +kernel⟩,
⟨589591,"v u s z o v b!| x z | b!| z z x ",by decide +kernel⟩,
⟨592693,"| { w w z z | t z u | x w z z | ",by decide +kernel⟩,
⟨595547,"u p { | z x z | w u s u | z { z ",by decide +kernel⟩,
⟨598369,"v z { | r y { v x k | x v { p r ",by decide +kernel⟩,
⟨601147,"v t { z | t { t y z { s w { z N!",by decide +kernel⟩,
⟨604073,"x | z w u Z!{ w v r y { | x | z ",by decide +kernel⟩,
⟨607037,"{ ^!v z k z _!w v w z z { t v _!",by decide +kernel⟩,
⟨610243,"w s z u z | u w q w v { z t w p ",by decide +kernel⟩,
⟨613013,"x y { | u `!t { | w z { | k x v ",by decide +kernel⟩,
⟨615971,"{ w z s x y r y t { t s x | [!r ",by decide +kernel⟩,
⟨618883,"| z k x z t y q z { m z { y n t ",by decide +kernel⟩,
⟨621641,"z x z w y z z { k z q z z w z w ",by decide +kernel⟩,
⟨624451,"n | { p w { w w w z v x | r | z ",by decide +kernel⟩,
⟨627251,"{ | { w s z z { z t w z | z { y ",by decide +kernel⟩,
⟨630107,"w u q | u | n z z z { z | t { z ",by decide +kernel⟩,
⟨632923,"t z y z w r w v z o s q u | w { ",by decide +kernel⟩,
⟨635689,"y x `!{ z O!t y { z v z \\!n v q ",by decide +kernel⟩,
⟨638861,"{ t z z t v o z v t { y { t z p ",by decide +kernel⟩,
⟨641639,"{ p X!x s x y l w s ^!z { | z z ",by decide +kernel⟩,
⟨644687,"{ z | x w z y q u z | b!w v w { ",by decide +kernel⟩,
⟨647659,"z z z | z t z { | z { w U!| o y ",by decide +kernel⟩,
⟨650627,"l w w s z x v x n y x p { | x m ",by decide +kernel⟩,
⟨653363,"x w z w s z z w x y z u z n z | ",by decide +kernel⟩,
⟨656171,"x z z | z q z x c!t { v z u z w ",by decide +kernel⟩,
⟨659137,"z | u y z u z | u | { t v { n | ",by decide +kernel⟩,
⟨661961,"{ | r z v r | z x s z w x | x w ",by decide +kernel⟩,
⟨664777,"v { z t z | z z k x y _!p { | z ",by decide +kernel⟩,
⟨667727,"x s w w { q y { z z z y q x v t ",by decide +kernel⟩,
⟨670517,"x | { w | w q z w { | z w n w { ",by decide +kernel⟩,
⟨673339,"w n t z v { z z v z z n { z y u ",by decide +kernel⟩,
⟨676129,"t v z z { s z { y w u t | z z x ",by decide +kernel⟩,
⟨678949,"y { y { w | { y { z z | z o z y ",by decide +kernel⟩,
⟨681809,"w u | { X!| n { v z z z t o z v ",by decide +kernel⟩,
⟨684731,"o | x z | z z x | z w x y { z y ",by decide +kernel⟩,
⟨687581,"t { z s x | x s q z b!s z x y u ",by decide +kernel⟩,
⟨690511,"y { z z y { v t t { y { z q | u ",by decide +kernel⟩,
⟨693337,"s z x z | t z x v z { s z ^!z q ",by decide +kernel⟩,
⟨696281,"x v { z s u | { | [!x | z z w x ",by decide +kernel⟩,
⟨699253,"| z x w q y r v t { | { v z [!{ ",by decide +kernel⟩,
⟨702199,"z y x z t t ^!v w z { | r | { | ",by decide +kernel⟩,
⟨705167,"k { h | { | z w { | o y { c!z x ",by decide +kernel⟩,
⟨708109,"| z w x w p z { | x w t y _!w q ",by decide +kernel⟩,
⟨711049,"w w z z z | { z t t q y u z v { ",by decide +kernel⟩,
⟨713863,"w q y z { z t v { z z v u y z u ",by decide +kernel⟩,
⟨716671,"n | z b!v t n z u | { y u t z z ",by decide +kernel⟩,
⟨719599,"z z w y z u t | t { | q { y w w ",by decide +kernel⟩,
⟨722417,"{ | z u p z k z w x y b!q z t z ",by decide +kernel⟩,
⟨725341,"y t z x y u `!_!z t v x w a!w y ",by decide +kernel⟩,
⟨728561,"{ | i | n w w { t v x y { z | z ",by decide +kernel⟩,
⟨731363,"x z w | z { y { v x | z x | x w ",by decide +kernel⟩,
⟨734221,"z s x t v z z w r v t o t p z w ",by decide +kernel⟩,
⟨736961,"u y w z z t q x w | { z | z u | ",by decide +kernel⟩]

def sg2 : List (Segment 322 true) := [
⟨739787,"{ | x | z n { q z w w q w | t { ",by decide +kernel⟩,
⟨742591,"t | z w ^!{ n z w [!| t { s u v ",by decide +kernel⟩,
⟨745649,"t { | z _!^!v { y o | x z t z c!",by decide +kernel⟩,
⟨748889,"z z { n w z z s u | x | { | { y ",by decide +kernel⟩,
⟨751727,"{ | z x y { | t z o z z | z x | ",by decide +kernel⟩,
⟨754583,"t z x s x y { t v a!{ c!z z { `!",by decide +kernel⟩,
⟨757829,"w x | o y t z { v z { | { v x z ",by decide +kernel⟩,
⟨760657,"| { | { y r s r z t w y o w y x ",by decide +kernel⟩,
⟨763447,"z | n { y w { w | u y a!{ y z w ",by decide +kernel⟩,
⟨766421,"q z z t { y x | { | z U!{ z w z ",by decide +kernel⟩,
⟨769387,"s z u s u y z w z o | z z b!w s ",by decide +kernel⟩,
⟨772313,"z x | x z | x m w x Z!w { t y z ",by decide +kernel⟩,
⟨775259,"{ v w x z | z x y z z u z v x y ",by decide +kernel⟩,
⟨778097,"b!z z w `!i z y t z t { z | w r ",by decide +kernel⟩,
⟨781171,"z z k z k z z t | b!| z r y { y ",by decide +kernel⟩,
⟨784109,"w z r v { y { q t t y z w { s { ",by decide +kernel⟩,
⟨786901,"y { y { v z z t x z v { ^!| { w ",by decide +kernel⟩,
⟨789883,"z y z t r w | z { | u s u m u z ",by decide +kernel⟩,
⟨792667,"m u t | x z t w z y z u w z k w ",by decide +kernel⟩,
⟨795427,"w q | w { | u q | t { n z z w | ",by decide +kernel⟩,
⟨798227,"{ p { y w n { z z y { v x | z r ",by decide +kernel⟩,
⟨801037,"z q y x Z!b!w y r | z z w o y z ",by decide +kernel⟩,
⟨804107,"x s u | z x z | z w { w `!u | z ",by decide +kernel⟩,
⟨807083,"x t z z q a!w q w | { z [!w z t ",by decide +kernel⟩,
⟨810151,"t | t { | u z w t t | x w t q y ",by decide +kernel⟩,
⟨812939,"{ c!z w w t u | k z t { y { z | ",by decide +kernel⟩,
⟨815897,"z w x s x y z x z t v r | { n z ",by decide +kernel⟩,
⟨818689,"j z u z n y l | x m w { | { w y ",by decide +kernel⟩,
⟨821441,"q t u v b!y { z z | { | w _!c!u ",by decide +kernel⟩,
⟨824683,"y t w o v x z c!{ y { w p { y l ",by decide +kernel⟩,
⟨827599,"z q y o v \\!| { s z w x | w { m ",by decide +kernel⟩,
⟨830513,"z z u y l z y { t v w z z { j { ",by decide +kernel⟩,
⟨833299,"z z | z x t p { | i y { p z u q ",by decide +kernel⟩,
⟨836071,"v u p z t o y { z y { I!z | t { ",by decide +kernel⟩,
⟨838963,"t v z u | q { v u z a!v x z y q ",by decide +kernel⟩,
⟨841889,"{ y w x v z z x z q | z w { | z ",by decide +kernel⟩,
⟨844733,"z u y z { m w b!a!t w y w u t t ",by decide +kernel⟩,
⟨847789,"z z v t { z t | z n { q z | z h ",by decide +kernel⟩,
⟨850571,"{ z | z w x | { | u c!{ y t u | ",by decide +kernel⟩,
⟨853571,"t w z u z y z q z w { | z z u z ",by decide +kernel⟩,
⟨856393,"y q x w | _!t z | z w b!w p x z ",by decide +kernel⟩,
⟨859477,"z | Y!z | { v { y u z v r p { w ",by decide +kernel⟩,
⟨862423,"| { | z u w w z y { t v { | w a!",by decide +kernel⟩,
⟨865409,"{ z s { w | x s { v u t y { z y ",by decide +kernel⟩,
⟨868229,"z w o t v x z q z z y r y r z y ",by decide +kernel⟩,
⟨871001,"z t { n z w q | z { w t v w { t ",by decide +kernel⟩,
⟨873787,"v t x | w u z v z z w x | z x y ",by decide +kernel⟩,
⟨876611,"z z q z n { v w ^!z w w u w v z ",by decide +kernel⟩,
⟨879533,"z t x ]!x | { t v t z { | x w y ",by decide +kernel⟩,
⟨882491,"t b!| z w { y z _!s z { | z r | ",by decide +kernel⟩,
⟨885611,"{ | l | z w l z y n u y t q t { ",by decide +kernel⟩,
⟨888361,"z z s { y { t v { y w [!z z { y ",by decide +kernel⟩,
⟨891329,"z u z t q t w y t { y { | w q z ",by decide +kernel⟩,
⟨894119,"{ ^!z z | x w | a!{ y z w w z w ",by decide +kernel⟩,
⟨897251,"{ w w s { y x z p r w p u z z t ",by decide +kernel⟩,
⟨900019,"t q q y z h z w z u w q w w y { ",by decide +kernel⟩,
⟨902761,"v x p { q t t v { z | z r y a!z ",by decide +kernel⟩,
⟨905687,"n z z z w u | q r q | x t c!u | ",by decide +kernel⟩,
⟨908603,"t { z | b!v t r s r v w r z z s ",by decide +kernel⟩,
⟨911507,"{ | z w { v { y q x y { v u z y ",by decide +kernel⟩,
⟨914339,"{ z v z u t s z { | u | x m w z ",by decide +kernel⟩,
⟨917141,"x m u t | z z x m w x a!z v z u ",by decide +kernel⟩,
⟨920053,"z y k { y u a!z v u t | z z u z ",by decide +kernel⟩,
⟨922993,"| u s z x w a!t | t { y { | { v ",by decide +kernel⟩,
⟨925961,"u y z { z q y { | ^!{ z y U!z z ",by decide +kernel⟩,
⟨929063,"x z t ]!{ k z | z o s u m x | t ",by decide +kernel⟩,
⟨931949,"{ v z z x z z k w | x | x p x | ",by decide +kernel⟩,
⟨934763,"z a!{ y u z z y { `!{ y r p { | ",by decide +kernel⟩,
⟨937877,"{ | k z w w u n | { z z | u w t ",by decide +kernel⟩,
⟨940669,"| w { w y z u z y z o z n | z u ",by decide +kernel⟩,
⟨943477,"w t | x a!z z z w z n | x | { z ",by decide +kernel⟩,
⟨946453,"m x y x q | x w w z q | z w r q ",by decide +kernel⟩,
⟨949213,"y x s u z t a!| z x w s w z r | ",by decide +kernel⟩,
⟨952151,"q w { w z t n w y { q y u z v z ",by decide +kernel⟩,
⟨954923,"z w z n z w z r c!b!z | { p r | ",by decide +kernel⟩,
⟨958007,"x | { z v { | { y { p { z t y n ",by decide +kernel⟩,
⟨960833,"u | l v z z z { | u p w { z y { ",by decide +kernel⟩,
⟨963643,"w q w z | z { z w y n { y { | u ",by decide +kernel⟩,
⟨966463,"t v t t { z s z z u | x w z v x ",by decide +kernel⟩,
⟨969259,"| n t q { t y x | { y z r y r | ",by decide +kernel⟩,
⟨972047,"{ z ^!z z v t x | x z z z p z z ",by decide +kernel⟩,
⟨975017,"{ | u y x | z { | z w x | u v t ",by decide +kernel⟩,
⟨977861,"z { z s z { y { z z z n v t x | ",by decide +kernel⟩,
⟨980687,"r v x y k z { y r v w { z | x a!",by decide +kernel⟩,
⟨983617,"w p x z | x z z m u z y t x `!w ",by decide +kernel⟩,
⟨986543,"x | z t { [!w z y { m { w p u | ",by decide +kernel⟩,
⟨989477,"u | { t z t y { | n z u v z { t ",by decide +kernel⟩,
⟨992281,"z v x w m { w m z u | b!s u v r ",by decide +kernel⟩,
⟨995173,"w | { w z X!| l | { y z { | z w ",by decide +kernel⟩,
⟨998147,"{ | x v { y t w r z w v x z | z ",by decide +kernel⟩,
⟨1000973,"z w w { n y w u s { | \\!z t | z ",by decide +kernel⟩,
⟨1003913,"x | z i z | z w x | n w { y z w ",by decide +kernel⟩,
⟨1006721,"x | t z z z { T!w z x m w { | { ",by decide +kernel⟩,
⟨1009669,"w p x y q t w x | x q y z z { | ",by decide +kernel⟩,
⟨1012463,"w w { p x w | r y u v x | x X!q ",by decide +kernel⟩,
⟨1015369,"z y z { w y z t { t | o t y z u ",by decide +kernel⟩,
⟨1018177,"z n | { z y x k | z { | r w s { ",by decide +kernel⟩,
⟨1020979,"z w m x w z | { a!z s { | r U!p ",by decide +kernel⟩,
⟨1024031,"x | t u z | z u z | k { w t z v ",by decide +kernel⟩,
⟨1026833,"u y x q | z z z t u z z v x | z ",by decide +kernel⟩,
⟨1029653,"w q a!^!{ n | { | u p u | { t z ",by decide +kernel⟩,
⟨1032721,"z c!u w | x w z z y u | u z | z ",by decide +kernel⟩,
⟨1035707,"q u | t u t | x | w z w { w z s ",by decide +kernel⟩,
⟨1038503,"t q w z r s b!| { | x | { z z v ",by decide +kernel⟩,
⟨1041461,"{ z y { w v z _!y x z s x z y z ",by decide +kernel⟩,
⟨1044437,"{ c!{ | z x y n { v x | n x n z ",by decide +kernel⟩,
⟨1047379,"z y k x n v { j x z q w n y l | ",by decide +kernel⟩,
⟨1050083,"u | w u z y z z r | z [!n w n P!",by decide +kernel⟩,
⟨1053103,"t y b!| z x w | x w w z v u | x ",by decide +kernel⟩,
⟨1056073,"w m x q y x y k { y { | { y x y ",by decide +kernel⟩,
⟨1058861,"t b!t | u z y w u ]!w u z | { X!",by decide +kernel⟩,
⟨1062073,"z w w z t w z z y x z | { s { z ",by decide +kernel⟩,
⟨1064911,"z y r t v x | _!w t | w { z y r ",by decide +kernel⟩,
⟨1067851,"t | z x q z c!n { z z v r c!{ y ",by decide +kernel⟩,
⟨1070939,"{ q w | z u v x a!z q | u | z r ",by decide +kernel⟩,
⟨1073881,"z q s u p { y z { z s u z s w z ",by decide +kernel⟩,
⟨1076657,"u m z x q y { | x | n z z { t | ",by decide +kernel⟩,
⟨1079453,"z x y n t z u c!z w x w v t { y ",by decide +kernel⟩,
⟨1082387,"i | w { z y { z n | z z z n { t ",by decide +kernel⟩,
⟨1085179,"w t s z z n u | w { y z { y z x ",by decide +kernel⟩,
⟨1087987,"c!z { z y t q r z w m { w s t x ",by decide +kernel⟩,
⟨1090897,"w v u y o t v z { y w w { v q w ",by decide +kernel⟩,
⟨1093667,"z { z t z m x | z { z z t z s { ",by decide +kernel⟩,
⟨1096489,"| z x z v x v z t n \\![!| t u y ",by decide +kernel⟩,
⟨1099547,"b!| t t { y w { z | { a!| { k z ",by decide +kernel⟩,
⟨1102663,"| { | o y w z x t | { | q { c!x ",by decide +kernel⟩,
⟨1105639,"| x z | z \\!z v z u w s z z w { ",by decide +kernel⟩,
⟨1108609,"v x s t { z t s z { | z w z z z ",by decide +kernel⟩]

def sg3 : List (Segment 322 true) := [
⟨1111427,"k z x z y z { z y { z | q z r y ",by decide +kernel⟩,
⟨1114241,"{ y o | w { t c!a!{ | z t t z z ",by decide +kernel⟩,
⟨1117349,"r t z z y w x z v u y z w x c!{ ",by decide +kernel⟩,
⟨1120303,"y { w z w y w z x v u y z q z l ",by decide +kernel⟩,
⟨1123093,"w v { n | z \\!]!U!t z z { y a!{ ",by decide +kernel⟩,
⟨1126441,"n | { p z o z v z b!| u n w v w ",by decide +kernel⟩,
⟨1129343,"z x q y l y o | l | x w v { t v ",by decide +kernel⟩,
⟨1132091,"t u w | { z | z x v { I!w z w z ",by decide +kernel⟩,
⟨1135021,"z s r z z v w z x w | o z t v { ",by decide +kernel⟩,
⟨1137811,"z O!| { m w z { w | [!u y l | { ",by decide +kernel⟩,
⟨1140859,"z | t { | l w z t t | x | n { z ",by decide +kernel⟩,
⟨1143661,"t y x w z | { w k | { [!| z a!{ ",by decide +kernel⟩,
⟨1146763,"| z w q x z y z { t w y { v z z ",by decide +kernel⟩,
⟨1149593,"z u w | i | l w | x s x j z x z ",by decide +kernel⟩,
⟨1152343,"| z z x | { | \\!^!y u v w z n w ",by decide +kernel⟩,
⟨1155437,"V!w z | { | { y { | x w p r z | ",by decide +kernel⟩,
⟨1158401,"t w z t z x m a!o w y { p { | z ",by decide +kernel⟩,
⟨1161317,"{ | w z { m w { y x z y u z ]!l ",by decide +kernel⟩,
⟨1164253,"z | { z t n t v z u p x y z w l ",by decide +kernel⟩,
⟨1167013,"z s z u z W!w x | x | z o | r v ",by decide +kernel⟩,
⟨1169939,"z o | z z ^!t x | x | o v { z z ",by decide +kernel⟩,
⟨1172893,"s z t { p t { w y x w v x j { z ",by decide +kernel⟩,
⟨1175659,"w n | z z z t n { z v z { z | { ",by decide +kernel⟩,
⟨1178479,"z | x | z u z w z s w r z z j { ",by decide +kernel⟩,
⟨1181281,"z `!V!z | w z x | { N!t z { w v ",by decide +kernel⟩,
⟨1184489,"{ t y r z q | { y { q y z t z u ",by decide +kernel⟩,
⟨1187287,"| t { z y { t p t x z w z | { j ",by decide +kernel⟩,
⟨1190081,"{ | r y r y { t q y u z y t { | ",by decide +kernel⟩,
⟨1192883,"w { p w u `!{ z z c!t n { p { s ",by decide +kernel⟩,
⟨1195937,"{ t | { | z { t p { v { | z { | ",by decide +kernel⟩,
⟨1198793,"z r v { v x t | { m w { y b!y u ",by decide +kernel⟩,
⟨1201729,"z v z x v { v r p z w x m { | { ",by decide +kernel⟩,
⟨1204519,"z | r | z b!v t o y z { v { | { ",by decide +kernel⟩,
⟨1207489,"N!r | { T!O!z z i | x k y w \\!t ",by decide +kernel⟩,
⟨1210717,"z | z { y ^!u z p u z z z w n y ",by decide +kernel⟩,
⟨1213661,"z { w w q y z n { y z { c!{ y t ",by decide +kernel⟩,
⟨1216619,"z w w { z y w { y z { y z { | { ",by decide +kernel⟩,
⟨1219489,"w | { w Z!{ k z y { z Z!w { w w ",by decide +kernel⟩,
⟨1222567,"| z q u | n w x z s { n v { s w ",by decide +kernel⟩,
⟨1225331,"x | z { | z x [!O!`!q { z v z b!",by decide +kernel⟩,
⟨1228693,"t q z y { z t p u p u z q z | { ",by decide +kernel⟩,
⟨1231459,"v x z | { | { w z y { y u t | x ",by decide +kernel⟩,
⟨1234309,"a!v u z y x s r | b!z | { z t v ",by decide +kernel⟩,
⟨1237403,"t t z { v x v z i z | u z y { y ",by decide +kernel⟩,
⟨1240199,"r z a!y r y x | { | { t | { z y ",by decide +kernel⟩,
⟨1243181,"t w t t { q y q u s o z | b!q y ",by decide +kernel⟩,
⟨1246061,"{ m { y q { t | w w t { y w u | ",by decide +kernel⟩,
⟨1248857,"z z z q { z y { z t | u y Y!y b!",by decide +kernel⟩,
⟨1251961,"c!w { z y w x w z k z v w z { t ",by decide +kernel⟩,
⟨1254907,"w y t { k z t v u v x n y { z p ",by decide +kernel⟩,
⟨1257653,"x | u s { z y t w { z | x y q z ",by decide +kernel⟩,
⟨1260473,"u | r z a!p { `!w u z z n | { w ",by decide +kernel⟩,
⟨1263547,"`!w x w w z t | z x w y z { y { ",by decide +kernel⟩,
⟨1266523,"m w o | n { z z q z z z | u | z ",by decide +kernel⟩,
⟨1269311,"{ Z!w z { z s { v z z t u v x w ",by decide +kernel⟩,
⟨1272253,"t t p u z t X!v z u y u | b!z v ",by decide +kernel⟩,
⟨1275293,"w x z | x y { y { z | { z | z u ",by decide +kernel⟩,
⟨1278163,"y l y t { v t z q b!]!a!{ n y { ",by decide +kernel⟩,
⟨1281349,"w z z t z t y w { Z!z w z ^!z z ",by decide +kernel⟩,
⟨1284443,"z u | { c!t r z | { w y u z y q ",by decide +kernel⟩,
⟨1287401,"t { s { k z | u | { | z r w z y ",by decide +kernel⟩,
⟨1290209,"u | n { y u v { z | { z z | r w ",by decide +kernel⟩,
⟨1293031,"v u z `!u q O!t v z z r s t t w ",by decide +kernel⟩,
⟨1296023,"r | z x z | { y { s z { v b!y { ",by decide +kernel⟩,
⟨1299013,"w z w z y w z z z t { | x | q { ",by decide +kernel⟩,
⟨1301851,"y z { z t z y { w z w z z m { | ",by decide +kernel⟩,
⟨1304687,"z z { v z t u | u y { | z _!v t ",by decide +kernel⟩,
⟨1307651,"{ y { w | z z { n v z t z w u z ",by decide +kernel⟩,
⟨1310473,"| l | z z u y n u | { w v { a!| ",by decide +kernel⟩,
⟨1313423,"w w { z | z x z | x | n x y r z ",by decide +kernel⟩,
⟨1316251,"z v x | t x z | { z y t w x | u ",by decide +kernel⟩,
⟨1319083,"y { z z p r ]!z { | z n t { y w ",by decide +kernel⟩,
⟨1322021,"{ s w k z z z x | k z w r z z q ",by decide +kernel⟩,
⟨1324783,"w s u n | u w | { t z y w w u c!",by decide +kernel⟩,
⟨1327709,"z q z x s x y { y u z q v o | z ",by decide +kernel⟩,
⟨1330493,"n { c!z z u w p x y { z | w { | ",by decide +kernel⟩,
⟨1333457,"r y t w n z w { w p { | n z u v ",by decide +kernel⟩,
⟨1336211,"{ w z z s x y { | x y { v { y z ",by decide +kernel⟩,
⟨1339061,"t { s { v { y t z r y q z u | r ",by decide +kernel⟩,
⟨1341841,"s w z u t | x w z | u w v u z | ",by decide +kernel⟩,
⟨1344647,"{ | r | z u y w z x | u | u s z ",by decide +kernel⟩,
⟨1347473,"r z | x z `!x t v { q z | x | [!",by decide +kernel⟩,
⟨1350563,"z t { w v { y { t t v z z z t z ",by decide +kernel⟩,
⟨1353377,"w { | r ^!y u p u v z t z x c!{ ",by decide +kernel⟩,
⟨1356451,"y { a!6!x z | { z w w v _!w ]!o ",by decide +kernel⟩,
⟨1359739,"w | { v z z u v r z z v u | t z ",by decide +kernel⟩,
⟨1362551,"z b!v z w x | r q t y { z y a!U!",by decide +kernel⟩,
⟨1365761,"o c!n z x z | { z t | { w q z a!",by decide +kernel⟩,
⟨1368847,"w z v t { w z k z z q | z a!x v ",by decide +kernel⟩,
⟨1371779,"u y z r q s { z z z t | z o t z ",by decide +kernel⟩,
⟨1374559,"| b!z y z { t [!v w w z z z { z ",by decide +kernel⟩,
⟨1377679,"w z | z { | z t z { | r v u y x ",by decide +kernel⟩,
⟨1380517,"q w z | z q z { y z u z k z z | ",by decide +kernel⟩,
⟨1383323,"w u q | z _!v { y w z x | x t w ",by decide +kernel⟩,
⟨1386271,"v w u s x Z!t { y z { p x y u | ",by decide +kernel⟩,
⟨1389191,"z z x | x s t z { | b!w a!q q w ",by decide +kernel⟩,
⟨1392277,"w z v z x w p u w | n { z w z | ",by decide +kernel⟩,
⟨1395077,"S!| b!z v u t q z | z z q w x z ",by decide +kernel⟩,
⟨1398139,"| w u z v { z v z z z t q x m u ",by decide +kernel⟩,
⟨1400923,"p z z z u | z l | z w w t { c!R!",by decide +kernel⟩,
⟨1403981,"{ p z t q x v { t y u v z o a!v ",by decide +kernel⟩,
⟨1406879,"{ t z y [!w w x | R!z { n z s r ",by decide +kernel⟩,
⟨1409917,"p z r y { z z v t t { z y w x w ",by decide +kernel⟩,
⟨1412713,"z | x w s z x z y w { w q z y k ",by decide +kernel⟩,
⟨1415507,"w u z ]!u z z z v x | t z x p { ",by decide +kernel⟩,
⟨1418449,"v x q y z z { p u U!z | z z r p ",by decide +kernel⟩,
⟨1421351,"x | ^!x t w z y w u w v u | b!z ",by decide +kernel⟩,
⟨1424443,"p x | x v z x m { t v x | z r z ",by decide +kernel⟩,
⟨1427227,"| n { y { c!{ z p z u y z { | w ",by decide +kernel⟩,
⟨1430201,"z q w u | { t z y z z w z w w z ",by decide +kernel⟩,
⟨1433021,"{ t t | z w { z | b!y t u v [!w ",by decide +kernel⟩,
⟨1436111,"z z z [!x z z s { t U!z | { y { ",by decide +kernel⟩,
⟨1439209,"| t { | z q z w x | t b!s u w y ",by decide +kernel⟩,
⟨1442159,"{ v n z ^!z { w q | G!| t q x z ",by decide +kernel⟩,
⟨1445179,"v { z w v z u y w z { t z t w w ",by decide +kernel⟩,
⟨1447987,"c!t { w | x w | { y q x z | a!l ",by decide +kernel⟩,
⟨1451083,"| n z r q z v z x v { z v u t s ",by decide +kernel⟩,
⟨1453847,"{ z v t { t z | x w t y t q q { ",by decide +kernel⟩,
⟨1456633,"s r | w { z | { z z | a!z u y u ",by decide +kernel⟩,
⟨1459609,"| u z t v u t z z y o | { z | z ",by decide +kernel⟩,
⟨1462427,"z n x | z t x w y z r [!z y z z ",by decide +kernel⟩,
⟨1465367,"{ z v Y!z | z { y x p t x c!t { ",by decide +kernel⟩,
⟨1468459,"z t q y x m { | z x y { ^!q z | ",by decide +kernel⟩,
⟨1471397,"{ | w z z u n t z y { v w x | z ",by decide +kernel⟩,
⟨1474217,"z { c!k { t s x | { w z | x y t ",by decide +kernel⟩,
⟨1477169,"u z | t z z { z | z { q `!w \\!y ",by decide +kernel⟩,
⟨1480277,"{ | t z { | { z z p w z u z w s ",by decide +kernel⟩,
⟨1483103,"z u | { y z { y ^!{ t | z x y z ",by decide +kernel⟩]

def sg4 : List (Segment 322 true) := [
⟨1486097,"w z o y x t v t u z t | u n v x ",by decide +kernel⟩,
⟨1488847,"| b!c!t u v u w | { [!y u z | x ",by decide +kernel⟩,
⟨1492087,"w n z c!{ z z z v t z { t t z c!",by decide +kernel⟩,
⟨1495181,"{ m w x v r | { | w z { k z | z ",by decide +kernel⟩,
⟨1497983,"u z z | _!y z { q y { t y w x ^!",by decide +kernel⟩,
⟨1501081,"z z v u y { | x | { | z t { | w ",by decide +kernel⟩,
⟨1503941,"z x w z z z z y a!r z v t { z | ",by decide +kernel⟩,
⟨1506917,"^!k z u y w { m u s z r v u | n ",by decide +kernel⟩,
⟨1509779,"{ z z v x | t z u t | a!{ p x a!",by decide +kernel⟩,
⟨1512877,"v z u | t x w v z z t u y t u | ",by decide +kernel⟩,
⟨1515671,"x z v u y q w x z | z z o t v { ",by decide +kernel⟩,
⟨1518463,"p x y { w | w b!q | { | z r w n ",by decide +kernel⟩,
⟨1521397,"w t w | n w z { | z x y r y w o ",by decide +kernel⟩,
⟨1524181,"z v w r y z z q x w v x z | z r ",by decide +kernel⟩,
⟨1526977,"z n | { z p _!]!z x m w x z | u ",by decide +kernel⟩,
⟨1530037,"^!w z t z s q { t z | b!z w s x ",by decide +kernel⟩,
⟨1533109,"| u z w p x y { m x t t | z x p ",by decide +kernel⟩,
⟨1535879,"u v z { m u m z b!t t | z z x p ",by decide +kernel⟩,
⟨1538777,"w x w y { p { w c!{ y k { v x t ",by decide +kernel⟩,
⟨1541707,"s u y q t x | u y { X!t a!z c!w ",by decide +kernel⟩,
⟨1544903,"u z z | { | w u v z { s z { | b!",by decide +kernel⟩,
⟨1547893,"z y { p x z z m z t n u | z { s ",by decide +kernel⟩,
⟨1550669,"{ t | z t { | u m x z | { | { z ",by decide +kernel⟩,
⟨1553509,"h | { w w q t | z { z | z { y { ",by decide +kernel⟩,
⟨1556329,"z q t ^!q t v z x z t | x | o t ",by decide +kernel⟩,
⟨1559227,"z w y a!z r v b!n y { y ^!{ y t ",by decide +kernel⟩,
⟨1562447,"[!z x | x z z y x z z y n { w z ",by decide +kernel⟩,
⟨1565413,"y n { y { q q z p z u | z z l z ",by decide +kernel⟩,
⟨1568179,"w z m z z q { q y u z p z { y { ",by decide +kernel⟩,
⟨1570963,"w v t z { | z x z v z x ^!y x | ",by decide +kernel⟩,
⟨1573937,"u q t w z s { t w y u | r z z | ",by decide +kernel⟩,
⟨1576721,"u z ^!| q z { s { v { t z z j { ",by decide +kernel⟩,
⟨1579651,"t | w z x | z { y { a!v z w z o ",by decide +kernel⟩,
⟨1582621,"y { z y { t y z z { t s S!t v w ",by decide +kernel⟩,
⟨1585547,"x y x z z | u z k z v z x t s u ",by decide +kernel⟩,
⟨1588333,"z w w c!z w { z z | V!z y { y r ",by decide +kernel⟩,
⟨1591441,"z s { ^!k y u | u s { y R!{ v x ",by decide +kernel⟩,
⟨1594477,"| x s u | u w q | { p w \\!`!{ | ",by decide +kernel⟩,
⟨1597553,"u m x | h { z z p u w O!z z | z ",by decide +kernel⟩,
⟨1600433,"w { z y u v { y q { t t w z | { ",by decide +kernel⟩,
⟨1603249,"v z t z { z t v { | { k | r ^!c!",by decide +kernel⟩,
⟨1606331,"t { y u v x k w v t t a!z x z | ",by decide +kernel⟩,
⟨1609247,"x s { c!o z p { | { z z t | { z ",by decide +kernel⟩,
⟨1612213,"z t v z R!u v u p a!x s w r y { ",by decide +kernel⟩,
⟨1615231,"]!{ t v t u t z k z v { n | x z ",by decide +kernel⟩,
⟨1618129,"y { w `!z { s { v z x w z v z w ",by decide +kernel⟩,
⟨1621097,"q z { ^!j { w z w q | { t z z v ",by decide +kernel⟩,
⟨1624019,"{ v n b!y { w t t | z z w { | z ",by decide +kernel⟩,
⟨1626983,"r q z z ^!z t y { | o z s { v b!",by decide +kernel⟩,
⟨1630051,"j { t v x q | r v { y b!y { y { ",by decide +kernel⟩,
⟨1632979,"y Y!w | x | b!| t { t y { t v z ",by decide +kernel⟩,
⟨1636079,"u w m { y n t x z ]!z q q ^!u | ",by decide +kernel⟩,
⟨1639097,"w n { | n { z n w y a!r v t z k ",by decide +kernel⟩,
⟨1641971,"{ w n y { | u s x y x z p z z r ",by decide +kernel⟩,
⟨1644757,"w c!z z o t v z { w v { y { q | ",by decide +kernel⟩,
⟨1647707,"z { | x | z u | z z { w y z z x ",by decide +kernel⟩,
⟨1650577,"z z n a!z s r t y l y x w q | z ",by decide +kernel⟩,
⟨1653473,"a!{ | z { | x v z q _!| { | u z ",by decide +kernel⟩,
⟨1656607,"| q x w p x v x w c!h z { z z | ",by decide +kernel⟩,
⟨1659533,"a!n { y k { w X!z s o | z { z y ",by decide +kernel⟩,
⟨1662581,"z { w | a!w z a!u v w z w { | { ",by decide +kernel⟩,
⟨1665709,"z v x | x | V!w v x z z y { | z ",by decide +kernel⟩,
⟨1668683,"r z w p { | u `!b!| { y Y!]!J!t ",by decide +kernel⟩,
⟨1672129,"v u z `!u z v z z q u v u z | u ",by decide +kernel⟩,
⟨1675057,"p x | { | t u v x | z w { y z z ",by decide +kernel⟩,
⟨1677887,"{ z z | r | { z y { z p t { | l ",by decide +kernel⟩,
⟨1680709,"| z w x X!| w x s o v o y { q t ",by decide +kernel⟩,
⟨1683601,"y u y z { y x t ^!z y { s w r | ",by decide +kernel⟩,
⟨1686551,"b!c!z x z z v { z z z | z x y { ",by decide +kernel⟩,
⟨1689703,"y x w q z | x z | { z | z z w r ",by decide +kernel⟩,
⟨1692541,"z q | { z | r z | u n z | o w | ",by decide +kernel⟩,
⟨1695347,"z { y { z w [!m z z x t | { z z ",by decide +kernel⟩,
⟨1698313,"| { z | z u y u z y u v x | { t ",by decide +kernel⟩,
⟨1701151,"q z p x | x | z t { t s x z z | ",by decide +kernel⟩,
⟨1703957,"z q _!z y { y q w { p { v x q R!",by decide +kernel⟩,
⟨1706989,"w | { z z y z r t q t | x | z n ",by decide +kernel⟩,
⟨1709789,"{ t v { | z q u q t t v o z w z ",by decide +kernel⟩,
⟨1712551,"n | z z \\!y { v u z z v u z s a!",by decide +kernel⟩,
⟨1715627,"z x z z y { Z!w { m u w y z { v ",by decide +kernel⟩,
⟨1718573,"x ]!{ v u z | x | r v n w x y { ",by decide +kernel⟩,
⟨1721509,"| r z w s z { | f | u s b!z z | ",by decide +kernel⟩,
⟨1724447,"z r z z n w p z { t y r z s u ]!",by decide +kernel⟩,
⟨1727339,"{ z z z t z | z z x z | b![!| u ",by decide +kernel⟩,
⟨1730473,"| w { t z y { v r w t z | o z y ",by decide +kernel⟩,
⟨1733279,"u w y z u ^!| z { w y z q z t { ",by decide +kernel⟩,
⟨1736233,"| { t | a!r z z s { v z x w y z ",by decide +kernel⟩,
⟨1739201,"{ y z z x q z | u y { t n z | z ",by decide +kernel⟩,
⟨1742021,"x v u | z r w y { p z u y z w x ",by decide +kernel⟩,
⟨1744819,"w z z | z b!w y t z w x | u y z ",by decide +kernel⟩,
⟨1747799,"z ^!{ z z t y z w u | { | u | q ",by decide +kernel⟩,
⟨1750769,"t z x w z w z z v x w t z y w x ",by decide +kernel⟩,
⟨1753579,"w y { z t y r t `!r y u p { y z ",by decide +kernel⟩,
⟨1756499,"r w `!u t v r z z | { | ^!{ t z ",by decide +kernel⟩,
⟨1759579,"| z w u z w v t z x z w s { y { ",by decide +kernel⟩,
⟨1762399,"| t { p z z w x y u t t | t w w ",by decide +kernel⟩,
⟨1765187,"{ | k w z w t { z y { p z z t u ",by decide +kernel⟩,
⟨1767979,"y { | k z u w w v o z z y u z | ",by decide +kernel⟩,
⟨1770773,"x m z z u s b!y x w v w z x w z ",by decide +kernel⟩,
⟨1773703,"| z z n z w ^!w x y z x z | { | ",by decide +kernel⟩,
⟨1776683,"r | { s w z w r v z w q u z z v ",by decide +kernel⟩,
⟨1779461,"a!{ v x z w w v r | z u w z z v ",by decide +kernel⟩,
⟨1782413,"x z y { a!v { z `!q { s { q z v ",by decide +kernel⟩,
⟨1785503,"z w { | t q w { z y z n z b!t v ",by decide +kernel⟩,
⟨1788443,"z i z ^!v u | r p { k z t y b!| ",by decide +kernel⟩,
⟨1791473,"b!z s z { v x w z | { a!s a!x | ",by decide +kernel⟩,
⟨1794731,"{ y { s { v w z w { w s w x | V!",by decide +kernel⟩,
⟨1797673,"| z w x | x | x v w w x z | x n ",by decide +kernel⟩,
⟨1800499,"y { z | z w { v { [!z m u z a!q ",by decide +kernel⟩,
⟨1803583,"[!| x | z z z w z w x z | { | { ",by decide +kernel⟩,
⟨1806589,"z | x | z a!x z p z z { p { z T!",by decide +kernel⟩,
⟨1809683,"x | x y { v { w | { | z b!| u y ",by decide +kernel⟩,
⟨1812689,"{ t | t u z v u y u z s w z u s ",by decide +kernel⟩,
⟨1815467,"z x | { c!t { z v z _!| x w y o ",by decide +kernel⟩,
⟨1818577,"s z U!z z { w y { y x w y { v n ",by decide +kernel⟩,
⟨1821509,"{ z n z | ^!t { y { t n w s { q ",by decide +kernel⟩,
⟨1824421,"z v w { z | z n w z a!a!z { z v ",by decide +kernel⟩,
⟨1827533,"u s { v x | z u n t | { z `!t { ",by decide +kernel⟩,
⟨1830469,"t z | u v z z w z { c!b!W!t { v ",by decide +kernel⟩,
⟨1833701,"{ | x y { z | r t t | t w r c!t ",by decide +kernel⟩,
⟨1836647,"z { z v z t u | w u | { | x | x ",by decide +kernel⟩,
⟨1839493,"y { y b!t | w z z r y z { c!t z ",by decide +kernel⟩,
⟨1842611,"{ | { q v n w x z y z u p { z k ",by decide +kernel⟩,
⟨1845379,"| t { z t z y o w y z t x y { z ",by decide +kernel⟩,
⟨1848193,"w | q r w z t z z w n z y q z z ",by decide +kernel⟩,
⟨1850969,"u z | w { m x | k z \\!z c!V!y x ",by decide +kernel⟩,
⟨1854163,"y n { | x z w | { w n z w n w w ",by decide +kernel⟩,
⟨1856947,"s z z h z { | V!| z a!{ w z s w ",by decide +kernel⟩,
⟨1860017,"z z { | z z _!w t t | t t w x | ",by decide +kernel⟩]

def sg5 : List (Segment 322 true) := [
⟨1862981,"x w y w w { y { v t { p { | q { ",by decide +kernel⟩,
⟨1865791,"t | r p { | z z z z x | k x | x ",by decide +kernel⟩,
⟨1868599,"y u s z n { q y x z | o | x | u ",by decide +kernel⟩,
⟨1871383,"y { | { z | o t v x w y { t v t ",by decide +kernel⟩,
⟨1874189,"q x v { z z q z a!z z n z | u p ",by decide +kernel⟩,
⟨1877111,"t { p z { n | u | _!]!x s w ^!z ",by decide +kernel⟩,
⟨1880309,"o z | q u z y x | { | { y z x s ",by decide +kernel⟩,
⟨1883129,"r | V!t z v a!{ z z t z v w { c!",by decide +kernel⟩,
⟨1886351,"x w t z z z t z s w { | u w w q ",by decide +kernel⟩,
⟨1889143,"w | x c!w r | z x v w t x v u z ",by decide +kernel⟩,
⟨1892089,"t | z [!V!z | u z | a!u | x v z ",by decide +kernel⟩,
⟨1895321,"z n x | { m x p { s { | z R!{ w ",by decide +kernel⟩,
⟨1898227,"q | x v z z \\!z z v { | z _!s { ",by decide +kernel⟩,
⟨1901329,"y w x z | { s w w w z u y { z q ",by decide +kernel⟩,
⟨1904143,"t y o | t { z n z s z t { s z u ",by decide +kernel⟩,
⟨1906909,"q y { z v z u | { z y u v { z z ",by decide +kernel⟩,
⟨1909741,"t y { p { n w z t y b!w y t { v ",by decide +kernel⟩,
⟨1912661,"{ w | x w t | r z z s x z t v { ",by decide +kernel⟩,
⟨1915471,"y t z { | z i y { m u | { p z t ",by decide +kernel⟩,
⟨1918247,"{ y r T!t a!u v o y z z { m z w ",by decide +kernel⟩,
⟨1921277,"z w { t v x y { | x v { [!| w x ",by decide +kernel⟩,
⟨1924243,"s u w t s u w z c!r v u | z u | ",by decide +kernel⟩,
⟨1927157,"z u | x w y { t | x | x y { y b!",by decide +kernel⟩,
⟨1930147,"q | w Y!w z w | u s z { | x | z ",by decide +kernel⟩,
⟨1933103,"w X!{ v { | q w r v z t r p { t ",by decide +kernel⟩,
⟨1935991,"z y w n z { s { t w p { | u | z ",by decide +kernel⟩,
⟨1938791,"{ y z t { a!w s u w s { q | { z ",by decide +kernel⟩,
⟨1941739,"k a!z | { n | z u X!z X!y { z w ",by decide +kernel⟩,
⟨1944937,"| { | w { w O!w | { ^!p { w | u ",by decide +kernel⟩,
⟨1948021,"s { | x z v x p r p u y { y z w ",by decide +kernel⟩,
⟨1950803,"x w t z t w z | w { | w z x w y ",by decide +kernel⟩,
⟨1953629,"{ v x | z x y u n y q t { n t w ",by decide +kernel⟩,
⟨1956391,"q | u v ^!{ n | n z { v w _!v r ",by decide +kernel⟩,
⟨1959427,"v w x v { y t r z z w z n z y u ",by decide +kernel⟩,
⟨1962211,"t y w z u y \\!| u c!x | u y { n ",by decide +kernel⟩,
⟨1965289,"w a!y t x `!w z x w y { t v z z ",by decide +kernel⟩,
⟨1968383,"z x z m x w s t r q z t t | x | ",by decide +kernel⟩,
⟨1971143,"u t y w z r | z z u q z | z { y ",by decide +kernel⟩,
⟨1973957,"r y o | i z z w y u m w x | z z ",by decide +kernel⟩,
⟨1976717,"[!z o z c!w { w w w v r | z x q ",by decide +kernel⟩,
⟨1979779,"t s x z t | u y z w x | x p { y ",by decide +kernel⟩,
⟨1982579,"q z { m { q s r y q X!{ t n z | ",by decide +kernel⟩,
⟨1985441,"{ z | { t q | b!m { | z z w z w ",by decide +kernel⟩,
⟨1988411,"x v { s ^!Y!y { v z w z { | f | ",by decide +kernel⟩,
⟨1991477,"x | q { q | _!c!x w | z { t p { ",by decide +kernel⟩,
⟨1994569,"w t v z t z x | o w | q z w z t ",by decide +kernel⟩,
⟨1997351,"z { w z | z z { | h { t z t | ",by decide +kernel⟩]

def segments : List (Segment 322 true) := List.flatten [sg0,sg1,sg2,sg3,sg4,sg5]

theorem complete_chain : N6.PrimeChain 322 2 2000003 :=
  join_sound (ss:=segments) (by decide) (by decide +kernel)

structure HeightRow where
  i : Nat
  r : Nat
  s : Nat
  t : Nat
  count : N2.smallPrimeCount i = t
  checked : N4.RawHeightValid i r s 2000000 t
theorem HeightRow.valid (row : HeightRow) : N4.HeightValid row.i row.r row.s 2000000 :=
  N4.heightValid_of_raw row.count row.checked
def heightCheck (start stop : Nat) : List HeightRow → Bool
  | [] => decide (start=stop)
  | row::rs => decide (start=row.i) && heightCheck (row.i+1) stop rs
theorem heightCovers {rs : List HeightRow} {start stop : Nat}
    (hc : heightCheck start stop rs=true) :
    ∀ i : Nat, start ≤ i → i < stop → ∃ row ∈ rs, row.i=i := by
  induction rs generalizing start with
  | nil =>
      have hs : start=stop := of_decide_eq_true hc
      intro i hi hu
      omega
  | cons row rs ih =>
      have hb : start=row.i ∧ heightCheck (row.i+1) stop rs=true := by
        simpa only [heightCheck,Bool.and_eq_true,decide_eq_true_eq] using hc
      intro i hi hu
      by_cases he : row.i=i
      · exact ⟨row,by simp,he⟩
      · obtain ⟨s,hs,hsi⟩ := ih hb.2 i (by omega) hu
        exact ⟨s,List.mem_cons_of_mem row hs,hsi⟩

def hr0 : List HeightRow := [
⟨323,107,226,66,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨324,108,226,66,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨325,108,227,66,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨326,108,228,66,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨327,109,228,66,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨328,109,229,66,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨329,109,230,66,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨330,110,231,66,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨331,110,231,66,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨332,110,232,67,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨333,111,233,67,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨334,111,233,67,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨335,111,234,67,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨336,112,235,67,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨337,112,235,67,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨338,112,236,68,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨339,113,237,68,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨340,113,238,68,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨341,113,238,68,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨342,114,239,68,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨343,114,240,68,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨344,114,240,68,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨345,115,241,68,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨346,115,242,68,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨347,115,242,68,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨348,116,243,69,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨349,116,244,69,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨350,116,245,70,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨351,117,245,70,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨352,117,246,70,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨353,117,247,70,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨354,118,247,71,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨355,118,248,71,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨356,118,249,71,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨357,119,249,71,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨358,119,250,71,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨359,119,251,71,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨360,120,252,72,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨361,120,252,72,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨362,120,253,72,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨363,121,254,72,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨364,121,254,72,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨365,121,255,72,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨366,122,256,72,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨367,122,256,72,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨368,122,257,73,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨369,123,258,73,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨370,123,259,73,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨371,123,259,73,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨372,124,260,73,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨373,124,261,73,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨374,124,261,74,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨375,125,262,74,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨376,125,263,74,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨377,125,263,74,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨378,126,264,74,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨379,126,265,74,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨380,126,266,75,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨381,127,266,75,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨382,127,267,75,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨383,127,268,75,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨384,128,268,76,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨385,128,269,76,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨386,128,270,76,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨387,129,270,76,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨388,129,271,76,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨389,129,272,76,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨390,130,273,77,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨391,130,273,77,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨392,130,274,77,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨393,131,275,77,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨394,131,275,77,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨395,131,276,77,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨396,132,277,77,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨397,132,277,77,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨398,132,278,78,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨399,133,279,78,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨400,133,280,78,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨401,133,280,78,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨402,134,281,79,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨403,134,282,79,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨404,134,282,79,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨405,135,283,79,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨406,135,284,79,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨407,135,284,79,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨408,136,285,79,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨409,136,286,79,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨410,136,287,80,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨411,137,287,80,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨412,137,288,80,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨413,137,289,80,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨414,138,289,80,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨415,138,290,80,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨416,138,291,80,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨417,139,291,80,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨418,139,292,80,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨419,139,293,80,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨420,140,294,81,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨421,140,294,81,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨422,140,295,82,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨423,141,296,82,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨424,141,296,82,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨425,141,297,82,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨426,142,298,82,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨427,142,298,82,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨428,142,299,82,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨429,143,300,82,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨430,143,301,82,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨431,143,301,82,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨432,144,302,83,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨433,144,303,83,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨434,144,303,84,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨435,145,304,84,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨436,145,305,84,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨437,145,305,84,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨438,146,306,84,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨439,146,307,84,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨440,146,308,85,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨441,147,308,85,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨442,147,309,85,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨443,147,310,85,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨444,148,310,86,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨445,148,311,86,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨446,148,312,86,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨447,149,312,86,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨448,149,313,86,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨449,149,314,86,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨450,150,315,87,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩]

def hr1 : List HeightRow := [
⟨451,150,315,87,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨452,150,316,87,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨453,151,317,87,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨454,151,317,87,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨455,151,318,87,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨456,152,319,87,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨457,152,319,87,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨458,152,320,88,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨459,153,321,88,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨460,153,322,88,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨461,153,322,88,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨462,154,323,89,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨463,154,324,89,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨464,154,324,90,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨465,155,325,90,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨466,155,326,90,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨467,155,326,90,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨468,156,327,91,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨469,156,328,91,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨470,156,329,91,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨471,157,329,91,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨472,157,330,91,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨473,157,331,91,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨474,158,331,91,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨475,158,332,91,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨476,158,333,91,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨477,159,333,91,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨478,159,334,91,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨479,159,335,91,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨480,160,336,92,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨481,160,336,92,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨482,160,337,92,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨483,161,338,92,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨484,161,338,92,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨485,161,339,92,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨486,162,340,92,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨487,162,340,92,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨488,162,341,93,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨489,163,342,93,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨490,163,343,93,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨491,163,343,93,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨492,164,344,94,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨493,164,345,94,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨494,164,345,94,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨495,165,346,94,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨496,165,347,94,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨497,165,347,94,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨498,166,348,94,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨499,166,349,94,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨500,166,350,95,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨501,167,350,95,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨502,167,351,95,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨503,167,352,95,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨504,168,352,96,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨505,168,353,96,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨506,168,354,96,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨507,169,354,96,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨508,169,355,96,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨509,169,356,96,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨510,170,357,97,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨511,170,357,97,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨512,170,358,97,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨513,171,359,97,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨514,171,359,97,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨515,171,360,97,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨516,172,361,97,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨517,172,361,97,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨518,172,362,97,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨519,173,363,97,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨520,173,364,97,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨521,173,364,97,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨522,174,365,98,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨523,174,366,98,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨524,174,366,99,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨525,175,367,99,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨526,175,368,99,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨527,175,368,99,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨528,176,369,99,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨529,176,370,99,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨530,176,371,99,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨531,177,371,99,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨532,177,372,99,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨533,177,373,99,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨534,178,373,99,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨535,178,374,99,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨536,178,375,99,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨537,179,375,99,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨538,179,376,99,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨539,179,377,99,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨540,180,378,99,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨541,180,378,99,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨542,180,379,100,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨543,181,380,100,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨544,181,380,100,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨545,181,381,100,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨546,182,382,100,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨547,182,382,100,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨548,182,383,101,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨549,183,384,101,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨550,183,385,101,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨551,183,385,101,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨552,184,386,101,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨553,184,387,101,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨554,184,387,101,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨555,185,388,101,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨556,185,389,101,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨557,185,389,101,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨558,186,390,102,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨559,186,391,102,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨560,186,392,102,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨561,187,392,102,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨562,187,393,102,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨563,187,394,102,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨564,188,394,103,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨565,188,395,103,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨566,188,396,103,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨567,189,396,103,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨568,189,397,103,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨569,189,398,103,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨570,190,399,104,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨571,190,399,104,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨572,190,400,105,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨573,191,401,105,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨574,191,401,105,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨575,191,402,105,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨576,192,403,105,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨577,192,403,105,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨578,192,404,106,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩]

def hr2 : List HeightRow := [
⟨579,193,405,106,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨580,193,406,106,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨581,193,406,106,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨582,194,407,106,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨583,194,408,106,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨584,194,408,106,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨585,195,409,106,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨586,195,410,106,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨587,195,410,106,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨588,196,411,107,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨589,196,412,107,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨590,196,413,107,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨591,197,413,107,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨592,197,414,107,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨593,197,415,107,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨594,198,415,108,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨595,198,416,108,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨596,198,417,108,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨597,199,417,108,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨598,199,418,108,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨599,199,419,108,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨600,200,420,109,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨601,200,420,109,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨602,200,421,110,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨603,201,422,110,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨604,201,422,110,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨605,201,423,110,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨606,202,424,110,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨607,202,424,110,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨608,202,425,111,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨609,203,426,111,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨610,203,427,111,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨611,203,427,111,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨612,204,428,111,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨613,204,429,111,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨614,204,429,112,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨615,205,430,112,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨616,205,431,112,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨617,205,431,112,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨618,206,432,113,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨619,206,433,113,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨620,206,434,114,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨621,207,434,114,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨622,207,435,114,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨623,207,436,114,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨624,208,436,114,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨625,208,437,114,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨626,208,438,114,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨627,209,438,114,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨628,209,439,114,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨629,209,440,114,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨630,210,441,114,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨631,210,441,114,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨632,210,442,115,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨633,211,443,115,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨634,211,443,115,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨635,211,444,115,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨636,212,445,115,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨637,212,445,115,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨638,212,446,115,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨639,213,447,115,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨640,213,448,115,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨641,213,448,115,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨642,214,449,116,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨643,214,450,116,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨644,214,450,117,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨645,215,451,117,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨646,215,452,117,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨647,215,452,117,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨648,216,453,118,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨649,216,454,118,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨650,216,455,118,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨651,217,455,118,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨652,217,456,118,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨653,217,457,118,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨654,218,457,119,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨655,218,458,119,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨656,218,459,119,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨657,219,459,119,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨658,219,460,119,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨659,219,461,119,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨660,220,462,120,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨661,220,462,120,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨662,220,463,121,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨663,221,464,121,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨664,221,464,121,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨665,221,465,121,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨666,222,466,121,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨667,222,466,121,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨668,222,467,121,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨669,223,468,121,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨670,223,469,121,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨671,223,469,121,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨672,224,470,121,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨673,224,471,121,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨674,224,471,122,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨675,225,472,122,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨676,225,473,122,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨677,225,473,122,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨678,226,474,123,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨679,226,475,123,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨680,226,476,123,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨681,227,476,123,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨682,227,477,123,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨683,227,478,123,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨684,228,478,124,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨685,228,479,124,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨686,228,480,124,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨687,229,480,124,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨688,229,481,124,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨689,229,482,124,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨690,230,483,124,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨691,230,483,124,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨692,230,484,125,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨693,231,485,125,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨694,231,485,125,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨695,231,486,125,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨696,232,487,125,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨697,232,487,125,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨698,232,488,125,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨699,233,489,125,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨700,233,490,125,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨701,233,490,125,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨702,234,491,126,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨703,234,492,126,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨704,234,492,126,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨705,235,493,126,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨706,235,494,126,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩]

def hr3 : List HeightRow := [
⟨707,235,494,126,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨708,236,495,126,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨709,236,496,126,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨710,236,497,127,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨711,237,497,127,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨712,237,498,127,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨713,237,499,127,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨714,238,499,127,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨715,238,500,127,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨716,238,501,127,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨717,239,501,127,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨718,239,502,127,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨719,239,503,127,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨720,240,504,128,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨721,240,504,128,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨722,240,505,128,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨723,241,506,128,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨724,241,506,128,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨725,241,507,128,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨726,242,508,128,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨727,242,508,128,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨728,242,509,129,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨729,243,510,129,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨730,243,511,129,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨731,243,511,129,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨732,244,512,129,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨733,244,513,129,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨734,244,513,130,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨735,245,514,130,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨736,245,515,130,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨737,245,515,130,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨738,246,516,130,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨739,246,517,130,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨740,246,518,131,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨741,247,518,131,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨742,247,519,131,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨743,247,520,131,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨744,248,520,132,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨745,248,521,132,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨746,248,522,132,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨747,249,522,132,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨748,249,523,132,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨749,249,524,132,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨750,250,525,132,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨751,250,525,132,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨752,250,526,133,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨753,251,527,133,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨754,251,527,133,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨755,251,528,133,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨756,252,529,133,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨757,252,529,133,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨758,252,530,134,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨759,253,531,134,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨760,253,532,134,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨761,253,532,134,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨762,254,533,135,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨763,254,534,135,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨764,254,534,135,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨765,255,535,135,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨766,255,536,135,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨767,255,536,135,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨768,256,537,135,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨769,256,538,135,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨770,256,539,136,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨771,257,539,136,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨772,257,540,136,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨773,257,541,136,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨774,258,541,137,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨775,258,542,137,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨776,258,543,137,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨777,259,543,137,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨778,259,544,137,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨779,259,545,137,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨780,260,546,137,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨781,260,546,137,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨782,260,547,137,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨783,261,548,137,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨784,261,548,137,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨785,261,549,137,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨786,262,550,137,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨787,262,550,137,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨788,262,551,138,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨789,263,552,138,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨790,263,553,138,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨791,263,553,138,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨792,264,554,138,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨793,264,555,138,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨794,264,555,138,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨795,265,556,138,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨796,265,557,138,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨797,265,557,138,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨798,266,558,139,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨799,266,559,139,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨800,266,560,139,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨801,267,560,139,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨802,267,561,139,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨803,267,562,139,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨804,268,562,139,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨805,268,563,139,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨806,268,564,139,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨807,269,564,139,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨808,269,565,139,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨809,269,566,139,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨810,270,567,140,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨811,270,567,140,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨812,270,568,141,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨813,271,569,141,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨814,271,569,141,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨815,271,570,141,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨816,272,571,141,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨817,272,571,141,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨818,272,572,141,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨819,273,573,141,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨820,273,574,141,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨821,273,574,141,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨822,274,575,142,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨823,274,576,142,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨824,274,576,143,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨825,275,577,143,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨826,275,578,143,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨827,275,578,143,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨828,276,579,144,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨829,276,580,144,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨830,276,581,145,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨831,277,581,145,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨832,277,582,145,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨833,277,583,145,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨834,278,583,145,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩]

def hr4 : List HeightRow := [
⟨835,278,584,145,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨836,278,585,145,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨837,279,585,145,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨838,279,586,145,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨839,279,587,145,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨840,280,588,146,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨841,280,588,146,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨842,280,589,146,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨843,281,590,146,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨844,281,590,146,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨845,281,591,146,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨846,282,592,146,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨847,282,592,146,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨848,282,593,146,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨849,283,594,146,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨850,283,595,146,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨851,283,595,146,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨852,284,596,146,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨853,284,597,146,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨854,284,597,147,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨855,285,598,147,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨856,285,599,147,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨857,285,599,147,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨858,286,600,148,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨859,286,601,148,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨860,286,602,149,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨861,287,602,149,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨862,287,603,149,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨863,287,604,149,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨864,288,604,150,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨865,288,605,150,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨866,288,606,150,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨867,289,606,150,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨868,289,607,150,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨869,289,608,150,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨870,290,609,150,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨871,290,609,150,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨872,290,610,150,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨873,291,611,150,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨874,291,611,150,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨875,291,612,150,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨876,292,613,150,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨877,292,613,150,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨878,292,614,151,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨879,293,615,151,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨880,293,616,151,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨881,293,616,151,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨882,294,617,152,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨883,294,618,152,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨884,294,618,153,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨885,295,619,153,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨886,295,620,153,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨887,295,620,153,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨888,296,621,154,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨889,296,622,154,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨890,296,623,154,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨891,297,623,154,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨892,297,624,154,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨893,297,625,154,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨894,298,625,154,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨895,298,626,154,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨896,298,627,154,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨897,299,627,154,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨898,299,628,154,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨899,299,629,154,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨900,300,630,154,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨901,300,630,154,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨902,300,631,154,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨903,301,632,154,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨904,301,632,154,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨905,301,633,154,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨906,302,634,154,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨907,302,634,154,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨908,302,635,155,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨909,303,636,155,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨910,303,637,155,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨911,303,637,155,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨912,304,638,156,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨913,304,639,156,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨914,304,639,156,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨915,305,640,156,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨916,305,641,156,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨917,305,641,156,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨918,306,642,156,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨919,306,643,156,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨920,306,644,157,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨921,307,644,157,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨922,307,645,157,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨923,307,646,157,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨924,308,646,157,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨925,308,647,157,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨926,308,648,157,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨927,309,648,157,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨928,309,649,157,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨929,309,650,157,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨930,310,651,158,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨931,310,651,158,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨932,310,652,158,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨933,311,653,158,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨934,311,653,158,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨935,311,654,158,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨936,312,655,158,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨937,312,655,158,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨938,312,656,159,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨939,313,657,159,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨940,313,658,159,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨941,313,658,159,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨942,314,659,160,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨943,314,660,160,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨944,314,660,160,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨945,315,661,160,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨946,315,662,160,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨947,315,662,160,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨948,316,663,161,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨949,316,664,161,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨950,316,665,161,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨951,317,665,161,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨952,317,666,161,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨953,317,667,161,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨954,318,667,162,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨955,318,668,162,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨956,318,669,162,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨957,319,669,162,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨958,319,670,162,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨959,319,671,162,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨960,320,672,162,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨961,320,672,162,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨962,320,673,162,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩]

def hr5 : List HeightRow := [
⟨963,321,674,162,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨964,321,674,162,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨965,321,675,162,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨966,322,676,162,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨967,322,676,162,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨968,322,677,163,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨969,323,678,163,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨970,323,679,163,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨971,323,679,163,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨972,324,680,164,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨973,324,681,164,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨974,324,681,164,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨975,325,682,164,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨976,325,683,164,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨977,325,683,164,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨978,326,684,165,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨979,326,685,165,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨980,326,686,165,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨981,327,686,165,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨982,327,687,165,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨983,327,688,165,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨984,328,688,166,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨985,328,689,166,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨986,328,690,166,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨987,329,690,166,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨988,329,691,166,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨989,329,692,166,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨990,330,693,166,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨991,330,693,166,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨992,330,694,167,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨993,331,695,167,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨994,331,695,167,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨995,331,696,167,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨996,332,697,167,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨997,332,697,167,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨998,332,698,168,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩,
⟨999,333,699,168,by rw [← N4.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩]

def heightRows : List HeightRow := List.flatten [hr0,hr1,hr2,hr3,hr4,hr5]

theorem heightChecked : heightCheck 323 1000 heightRows=true := by decide +kernel

theorem common_323_999 {n i j : Nat} (hi : 323 ≤ i) (hu : i ≤ 999)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ (n.choose i).gcd (n.choose j) := by
  by_cases hn : n ≤ 2000000
  · exact N6.common_of_prime_chain complete_chain (by omega) (by omega)
      (by omega) (by omega) hij hjn
  · obtain ⟨row,hr,hri⟩ := heightCovers heightChecked i hi (by omega)
    have hc := row.valid
    rw [hri] at hc
    exact N4.common_of_valid_height hc hij hjn (by omega)

end Contribution.Middle323
#print axioms Contribution.Middle323.common_323_999
