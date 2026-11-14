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

set_option profiler true
set_option profiler.threshold 100
namespace Contribution.ProfilingMiddleJoin016

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
      rcases hb with ⟨hp_eq, htail⟩
      subst p
      exact s.chain.trans (ih (chain_last s.chain) htail)

def profilingSegments : List (Segment 322 true) := [
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
theorem profilingChain : N6.PrimeChain 322 1953629 2000003 :=
  join_sound (ss:=profilingSegments) (by decide +kernel) (by decide +kernel)
end Contribution.ProfilingMiddleJoin016
#print axioms Contribution.ProfilingMiddleJoin016.profilingChain
