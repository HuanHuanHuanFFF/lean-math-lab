import Init
import Mathlib.Algebra.BigOperators.Group.Finset.Powerset
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Ring.Int.Defs
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Combinatorics.Enumerative.InclusionExclusion
import Mathlib.Data.Int.Basic
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Data.Nat.Choose.Dvd
import Mathlib.Data.Nat.Choose.Factorization
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Data.Nat.Factorial.SuperFactorial
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Data.Nat.GCD.BigOperators
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Nat.Prime.Factorial
import Mathlib.Data.Real.Basic
import Mathlib.NumberTheory.PrimeCounting
import Mathlib.Tactic.Convert
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Linarith.Frontend
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Tactic.NormNum.Ineq
import Mathlib.Tactic.NormNum.Inv
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Positivity.Basic
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Ring.Basic

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxHeartbeats 1000000
set_option maxRecDepth 65536

namespace Contribution.Range

namespace N9

def Common (n i j : ℕ) : Prop :=
  ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j

theorem common_of_top_prime {n i j p : ℕ}
    (hij : i < j) (hjn : j ≤ n / 2)
    (hp : p.Prime) (hlo : n - i < p) (hpn : p ≤ n) : Common n i j := by
  have hin : i ≤ n := by omega
  have hjn' : j ≤ n := by omega
  have hip : i < p := by omega
  have hjp : j < p := by omega
  refine ⟨p, hp, hip.le, ?_, ?_⟩
  · exact hp.dvd_choose hip hlo hpn
  · exact hp.dvd_choose hjp (by omega) hpn

end N9

namespace N6

noncomputable def survivors (P : Finset Nat) (b : Nat) : Finset Nat := by
  classical
  exact (Finset.Icc 1 b).filter (fun m => ∀ q ∈ P, ¬ q ∣ m)

theorem primeCounting_sieve_upper {P : Finset Nat} {b : Nat}
    (hP : P.Nonempty) (hprime : ∀ q ∈ P, q.Prime) (hbound : ∀ q ∈ P, q ≤ b) :
    Nat.primeCounting b ≤ P.card - 1 + (survivors P b).card := by
  classical
  obtain ⟨q, hq⟩ := hP
  have hb1 : 1 ≤ b := by
    have hq2 := (hprime q hq).two_le
    have hqb := hbound q hq
    omega
  have hone : 1 ∈ survivors P b := by
    apply Finset.mem_filter.mpr
    refine ⟨Finset.mem_Icc.mpr ⟨by decide, hb1⟩, ?_⟩
    intro p hp hpd
    have hp2 := (hprime p hp).two_le
    have hple := Nat.le_of_dvd (by decide : 0 < 1) hpd
    omega
  have hsub : Nat.primesLE b ⊆ P ∪ (survivors P b).erase 1 := by
    intro p hp
    obtain ⟨hpb, hpp⟩ := Nat.mem_primesLE.mp hp
    by_cases hpP : p ∈ P
    · exact Finset.mem_union.mpr (Or.inl hpP)
    · apply Finset.mem_union.mpr
      apply Or.inr
      apply Finset.mem_erase.mpr
      refine ⟨hpp.ne_one, ?_⟩
      apply Finset.mem_filter.mpr
      refine ⟨Finset.mem_Icc.mpr ⟨hpp.one_lt.le, hpb⟩, ?_⟩
      intro r hr hrd
      rcases (Nat.dvd_prime hpp).mp hrd with hr1 | hrp
      · exact (hprime r hr).ne_one hr1
      · exact hpP (hrp ▸ hr)
  have hc : Nat.primeCounting b ≤ P.card + ((survivors P b).erase 1).card := by
    rw [← Nat.primesLE_card_eq_primeCounting]
    exact (Finset.card_le_card hsub).trans (Finset.card_union_le _ _)
  have he := Finset.card_erase_add_one hone
  have hpCard : 0 < P.card := Finset.card_pos.mpr ⟨q, hq⟩
  omega

end N6

open scoped BigOperators

namespace N6

noncomputable def intersections (P : Finset Nat) (b : Nat) : Finset Nat := by
  classical
  exact (Finset.Icc 1 b).filter (fun m => ∀ q ∈ P, q ∣ m)

theorem survivors_card_inclusion_exclusion (P : Finset Nat) (b : Nat) :
    ((survivors P b).card : Int) =
      ∑ t ∈ P.powerset, (-1 : Int) ^ t.card * (intersections t b).card := by
  classical
  let S : Nat → Finset ↥(Finset.Icc 1 b) := fun q =>
    Finset.univ.filter (fun m => q ∣ m.val)
  have hm (t : Finset Nat) (V : Nat → Finset ↥(Finset.Icc 1 b))
      (x : ↥(Finset.Icc 1 b)) : x ∈ t.inf V ↔ ∀ q ∈ t, x ∈ V q := by
    induction t using Finset.induction_on with
    | empty => simp
    | @insert q t hqt ih =>
      rw [Finset.inf_insert]
      simp only [Finset.inf_eq_inter, Finset.mem_inter]
      rw [ih]
      simp
  have hcard (s : Finset ↥(Finset.Icc 1 b)) (F : Finset Nat)
      (hbound : F ⊆ Finset.Icc 1 b) (hmem : ∀ x, x ∈ s ↔ x.val ∈ F) :
      s.card = F.card := by
    apply Finset.card_bij (fun x _ => x.val)
    · intro x hx
      exact (hmem x).mp hx
    · intro x hx y hy hxy
      exact Subtype.ext hxy
    · intro m hmemF
      exact ⟨⟨m, hbound hmemF⟩, (hmem ⟨m, hbound hmemF⟩).mpr hmemF, rfl⟩
  have hcompl : (P.inf (fun q => (S q)ᶜ)).card = (survivors P b).card := by
    apply hcard
    · exact Finset.filter_subset _ _
    · intro x
      rw [hm]
      simp [S, survivors, x.property]
  have hinter (t : Finset Nat) : (t.inf S).card = (intersections t b).card :=
    by
      apply hcard
      · exact Finset.filter_subset _ _
      · intro x
        rw [hm]
        simp [S, intersections, x.property]
  have h := Finset.inclusion_exclusion_card_inf_compl P S
  rw [hcompl] at h
  convert h using 1
  apply Finset.sum_congr rfl
  intro t ht
  rw [hinter]

end N6

open scoped BigOperators

namespace N6

theorem prime_prod_dvd_iff (P : Finset Nat) (hprime : ∀ q ∈ P, q.Prime) (m : Nat) :
    P.prod id ∣ m ↔ ∀ q ∈ P, q ∣ m := by
  classical
  constructor
  · intro h q hq
    exact dvd_trans (Finset.dvd_prod_of_mem id hq) h
  · intro h
    induction P using Finset.induction_on with
    | empty => simp
    | @insert q P hq ih =>
      have hprP : ∀ r ∈ P, r.Prime := fun r hr => hprime r (Finset.mem_insert_of_mem hr)
      have hcop : q.Coprime (P.prod id) := Nat.Coprime.prod_right (fun r hr =>
        (Nat.coprime_primes (hprime q (Finset.mem_insert_self q P)) (hprP r hr)).mpr
          (by intro heq; exact hq (heq ▸ hr)))
      rw [Finset.prod_insert hq]
      exact hcop.mul_dvd_of_dvd_of_dvd (h q (Finset.mem_insert_self q P))
        (ih hprP (fun r hr => h r (Finset.mem_insert_of_mem hr)))

theorem intersections_card_floor (P : Finset Nat) (hprime : ∀ q ∈ P, q.Prime) (b : Nat) :
    (intersections P b).card = b / P.prod id := by
  classical
  have hinterval : Finset.Icc 1 b = Finset.Ioc 0 b := by
    ext m
    simp only [Finset.mem_Icc, Finset.mem_Ioc]
    omega
  have hsets : intersections P b = (Finset.Ioc 0 b).filter (fun m => P.prod id ∣ m) := by
    ext m
    simp only [intersections, Finset.mem_filter]
    rw [hinterval, prime_prod_dvd_iff P hprime]
  rw [hsets]
  exact Nat.Ioc_filter_dvd_card_eq_div b (P.prod id)

theorem survivors_card_floor_formula (P : Finset Nat) (hprime : ∀ q ∈ P, q.Prime) (b : Nat) :
    ((survivors P b).card : Int) =
      ∑ t ∈ P.powerset, (-1 : Int) ^ t.card * (b / t.prod id : Nat) := by
  classical
  rw [survivors_card_inclusion_exclusion]
  apply Finset.sum_congr rfl
  intro t ht
  rw [intersections_card_floor t (fun q hq => hprime q ((Finset.mem_powerset.mp ht) hq))]

end N6

namespace N5

def count : List Nat → Nat → Int
  | [], b => b
  | p :: ps, b => if b = 0 then 0 else count ps b - count ps (b / p)

theorem count_zero (ps : List Nat) : count ps 0 = 0 := by
  cases ps <;> rfl

end N5

open scoped BigOperators

namespace N5

def floorSum (P : Finset Nat) (b : Nat) : Int :=
  ∑ t ∈ P.powerset, (-1 : Int) ^ t.card * (b / t.prod id : Nat)

theorem floorSum_zero (P : Finset Nat) : floorSum P 0 = 0 := by
  simp [floorSum]

theorem floorSum_insert (P : Finset Nat) (p b : Nat) (hp : p ∉ P) :
    floorSum (insert p P) b = floorSum P b - floorSum P (b / p) := by
  classical
  unfold floorSum
  rw [Finset.sum_powerset_insert hp]
  rw [sub_eq_add_neg, ← Finset.sum_neg_distrib]
  congr 1
  apply Finset.sum_congr rfl
  intro t ht
  have hpt : p ∉ t := fun h => hp ((Finset.mem_powerset.mp ht) h)
  rw [Finset.card_insert_of_notMem hpt, Finset.prod_insert hpt, Nat.div_div_eq_div_mul]
  simp [id_eq, pow_succ, mul_neg_one, neg_mul]

theorem count_eq_floorSum (ps : List Nat) (hps : ps.Nodup) (b : Nat) :
    count ps b = floorSum ps.toFinset b := by
  induction ps generalizing b with
  | nil => simp [count, floorSum]
  | cons p ps ih =>
    obtain ⟨hp, htail⟩ := List.nodup_cons.mp hps
    have hpF : p ∉ ps.toFinset := by simpa using hp
    by_cases hb : b = 0
    · subst b
      rw [count_zero, floorSum_zero]
    · rw [count, if_neg hb, List.toFinset_cons, floorSum_insert ps.toFinset p b hpF]
      rw [ih htail b, ih htail (b / p)]

end N5

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

namespace N3

def Common (n i j : ℕ) : Prop :=
  ∃ p : ℕ, p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j)

end N3

namespace N1

def primePart (threshold a : ℕ) : ℕ :=
  (a.primeFactors.filter (fun p ↦ threshold ≤ p)).prod (fun p ↦ p ^ a.factorization p)

end N1

namespace N3

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

end N3

namespace N3

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

end N3

namespace N4

open N3

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
        (smallPrimePart n i * N1.primePart i (n.choose i)) ^
          (2 * s - r) := by
      rw [smallPrimePart_mul_primePart (by omega : i ≤ n)]
    _ = (smallPrimePart n i) ^ (2 * s - r) *
        N1.primePart i (n.choose i) ^ (2 * s - r) := mul_pow _ _ _
    _ ≤ (n ^ smallPrimeCount i) ^ (2 * s - r) *
        threeWindowProduct n i j r s :=
      Nat.mul_le_mul (Nat.pow_le_pow_left hsmall _) hlarge
    _ = _ := by rw [← pow_mul]

end N4

namespace N4

open N3

def windowSum (s : ℕ) : ℕ := ∑ h ∈ Finset.Icc 1 s, h

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

theorem window_constant_formula (i r s : ℕ) :
    windowConstant i r s =
      2 ^ (s * (s + 1)) * (windowFactorials s) ^ 2 *
        windowFactorials (i - r - 1) := by
  unfold windowConstant
  rw [two_window_sum]

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

end N4

open Real

namespace N8

theorem log_step_upper {x : ℝ} (hx : 0 < x) :
    x * (log (x + 1) - log x) ≤ 1 := by
  have hx1 : 0 < x + 1 := by linarith
  have h := Real.log_le_sub_one_of_pos (div_pos hx1 hx)
  rw [Real.log_div hx1.ne' hx.ne'] at h
  have hm := mul_le_mul_of_nonneg_left h hx.le
  have heq : x * ((x + 1) / x - 1) = 1 := by
    field_simp [hx.ne']
    ring
  rwa [heq] at hm

theorem log_step_lower {x : ℝ} (hx : 0 < x) :
    1 ≤ (x + 1) * (log (x + 1) - log x) := by
  have hx1 : 0 < x + 1 := by linarith
  have h := Real.one_sub_inv_le_log_of_pos (div_pos hx1 hx)
  rw [Real.log_div hx1.ne' hx.ne'] at h
  have hm := mul_le_mul_of_nonneg_left h hx1.le
  have heq : (x + 1) * (1 - ((x + 1) / x)⁻¹) = 1 := by
    field_simp [hx.ne', hx1.ne']
    ring
  rwa [heq] at hm

theorem log_factorial_bounds (n : ℕ) : 1 ≤ n →
    (n : ℝ) * log n - n + 1 ≤ log (n.factorial : ℝ) ∧
      log (n.factorial : ℝ) ≤ (n : ℝ) * log n - n + 1 + log n := by
  induction n with
  | zero => intro hn; omega
  | succ n ih =>
    intro hn
    by_cases hn0 : n = 0
    · subst n
      norm_num
    have hnp : (0 : ℝ) < n := by exact_mod_cast Nat.pos_of_ne_zero hn0
    obtain ⟨hlow, hupp⟩ := ih (by omega)
    have heq : log ((n + 1).factorial : ℝ) =
        log ((n : ℝ) + 1) + log (n.factorial : ℝ) := by
      rw [Nat.factorial_succ, Nat.cast_mul,
        Real.log_mul (by positivity) (by positivity)]
      simp only [Nat.cast_add, Nat.cast_one]
    simp only [Nat.cast_succ, Nat.cast_add, Nat.cast_one] at *
    rw [heq]
    constructor
    · have hs := log_step_upper hnp
      nlinarith [hlow, hs]
    · have hs := log_step_lower hnp
      nlinarith [hupp, hs]

theorem superFactorial_pos : ∀ n : ℕ, 0 < Nat.superFactorial n
  | 0 => by decide
  | n + 1 => by
    rw [Nat.superFactorial_succ]
    exact Nat.mul_pos (Nat.factorial_pos _) (superFactorial_pos n)

theorem log_superFactorial_lower (q : ℕ) : 1 ≤ q →
    (1 / 2 : ℝ) * q ^ 2 * log q - 3 / 4 * q ^ 2 + 1 / 2 * q + 1 / 4 ≤
      log (Nat.superFactorial q : ℝ) := by
  induction q with
  | zero => intro hq; omega
  | succ q ih =>
    intro hq
    by_cases hq0 : q = 0
    · subst q
      norm_num
    have hqp : (0 : ℝ) < q := by exact_mod_cast Nat.pos_of_ne_zero hq0
    have hrec := ih (by omega)
    have hfact := (log_factorial_bounds (q + 1) (by omega)).1
    have hstep := mul_le_mul_of_nonneg_left (log_step_upper hqp) hqp.le
    have hlog : 0 ≤ log ((q : ℝ) + 1) := Real.log_nonneg (by linarith)
    have heq : log (Nat.superFactorial (q + 1) : ℝ) =
        log ((q + 1).factorial : ℝ) + log (Nat.superFactorial q : ℝ) := by
      rw [Nat.superFactorial_succ, Nat.cast_mul,
        Real.log_mul (by positivity)
          (ne_of_gt (by exact_mod_cast superFactorial_pos q :
            (0 : ℝ) < Nat.superFactorial q))]
    simp only [Nat.cast_succ, Nat.cast_add, Nat.cast_one] at *
    rw [heq]
    nlinarith [hrec, hfact, hstep, hlog]

end N8

namespace N10

theorem ic_real_obstruction {i t q k l L Z E : ℝ}
    (hi : 0 < i) (ht : 0 ≤ t) (hq : 12 ≤ q) (hk : 0 ≤ k)
    (hl : 56 / 81 < l)
    (hic : 100 * (3 * (q + k) * t + 5 * q + 9 * k) ≤ (100 * q - 1) * i)
    (hZ : q * l ≤ Z) (hL : L ≤ k * l) (hE : E ≤ 1 / 4095)
    (hA : (i - 5 - 3 * t) * Z ≤ (3 * t + 9) * L + 3 * i * E) : False := by
  have hlp : 0 < l := by linarith
  have htp : 0 ≤ 3 * t + 9 := by linarith
  have hkt : 0 ≤ k * (3 * t + 9) := mul_nonneg hk htp
  have hd : i / 100 ≤ q * (i - 5 - 3 * t) - k * (3 * t + 9) := by
    nlinarith [hic]
  have hm : 0 < i - 5 - 3 * t := by
    by_contra h
    have hm' : i - 5 - 3 * t ≤ 0 := by linarith
    have hqm : q * (i - 5 - 3 * t) ≤ 0 :=
      mul_nonpos_of_nonneg_of_nonpos (by linarith) hm'
    linarith
  have hz := mul_le_mul_of_nonneg_left hZ hm.le
  have hl' := mul_le_mul_of_nonneg_left hL htp
  have he' := mul_le_mul_of_nonneg_left hE (by linarith : 0 ≤ 3 * i)
  have ha' : (q * (i - 5 - 3 * t) - k * (3 * t + 9)) * l ≤ 3 * i / 4095 := by
    nlinarith [hA, hz, hl', he']
  have hd' := mul_le_mul_of_nonneg_right hd hlp.le
  have hi' := mul_lt_mul_of_pos_right hl hi
  nlinarith [ha', hd', hi']

end N10

namespace N10

theorem neg_log_one_sub_le {h : ℝ} (hh : h < 1) :
    -Real.log (1 - h) ≤ h / (1 - h) := by
  have hp : 0 < 1 - h := by linarith
  have hb := Real.log_le_sub_one_of_pos (inv_pos.mpr hp)
  rw [Real.log_inv] at hb
  have heq : (1 - h)⁻¹ - 1 = h / (1 - h) := by
    field_simp [ne_of_gt hp]
    ring
  rwa [heq] at hb

theorem neg_log_one_sub_le_4095 {h : ℝ} (hh : h ≤ 1 / 4096) :
    -Real.log (1 - h) ≤ 1 / 4095 := by
  have hlt : h < 1 := by linarith
  have hp : 0 < 1 - h := by linarith
  apply (neg_log_one_sub_le hlt).trans
  apply (div_le_iff₀ hp).mpr
  nlinarith

end N10

open Real

namespace N11

theorem normalization_log_constant :
    (5 : ℝ) / 96 ≤ log (2 / 3 : ℝ) + (2 / 3 : ℝ) * log 2 := by
  have h32 : log (32 : ℝ) = 5 * log 2 := by
    have h := Real.log_pow (2 : ℝ) 5
    norm_num at h
    exact h
  have h27 : log (27 : ℝ) = 3 * log 3 := by
    have h := Real.log_pow (3 : ℝ) 3
    norm_num at h
    exact h
  have heq : 3 * (log (2 / 3 : ℝ) + (2 / 3 : ℝ) * log 2) =
      log (32 / 27 : ℝ) := by
    rw [Real.log_div (by norm_num : (2 : ℝ) ≠ 0) (by norm_num : (3 : ℝ) ≠ 0),
      Real.log_div (by norm_num : (32 : ℝ) ≠ 0) (by norm_num : (27 : ℝ) ≠ 0), h32, h27]
    ring
  have h := Real.one_sub_inv_le_log_of_pos (by norm_num : (0 : ℝ) < 32 / 27)
  norm_num at h
  linarith

theorem scaled_log_ratio_lower {x q c : ℝ} (hx : 0 < x) (hc : c < x)
    (hq : q = (2 / 3) * (x - c)) :
    q * log x + q * log (2 / 3 : ℝ) - 2 * c / 3 ≤ q * log q := by
  have hp : 0 < 1 - c / x := by
    have hd := (div_lt_one hx).mpr hc
    linarith
  have hqp : 0 < q := by rw [hq]; positivity
  have hmul : q / x = (2 / 3 : ℝ) * (1 - c / x) := by
    rw [hq]
    field_simp [hx.ne'] <;> ring
  have hlog : log (q / x) = log (2 / 3 : ℝ) + log (1 - c / x) := by
    rw [hmul, Real.log_mul (by norm_num) hp.ne']
  rw [Real.log_div hqp.ne' hx.ne'] at hlog
  have he := N10.neg_log_one_sub_le (by linarith : c / x < 1)
  have hw := mul_le_mul_of_nonneg_left he hqp.le
  have heq : q * ((c / x) / (1 - c / x)) = 2 * c / 3 := by
    have hden : 1 - c / x = (x - c) / x := by rw [sub_div, div_self hx.ne']
    rw [hq, hden, div_div_div_cancel_right₀ hx.ne', mul_assoc,
      mul_div_cancel₀ c (sub_pos.mpr hc).ne']
    ring
  rw [heq] at hw
  have hlog' := congrArg (fun z : ℝ => q * z) hlog
  nlinarith [hlog', hw]

theorem factorial_normalization (m c : ℕ) (hm : 333 ≤ m) (hc1 : 1 ≤ c) (hc3 : c ≤ 3) :
    let i := 3 * m + c
    let q := 2 * m
    let lam := 3 * m - c + 1
    (lam : ℝ) * log (i.factorial : ℝ) ≤
      (q : ℝ) * (q + 1) * log 2 + 3 * log (Nat.superFactorial q : ℝ) +
        ((lam : ℝ) * (i + 3) - 3 * m * (q + 1)) * log (i : ℝ) := by
  let i := 3 * m + c
  let q := 2 * m
  let lam := 3 * m - c + 1
  change (lam : ℝ) * log (i.factorial : ℝ) ≤
    (q : ℝ) * (q + 1) * log 2 + 3 * log (Nat.superFactorial q : ℝ) +
      ((lam : ℝ) * (i + 3) - 3 * m * (q + 1)) * log (i : ℝ)
  have him : (i : ℝ) = 3 * (m : ℝ) + c := by simp [i, Nat.cast_add, Nat.cast_mul]
  have hqm : (q : ℝ) = 2 * (m : ℝ) := by simp [q, Nat.cast_mul]
  have hlm : (lam : ℝ) = 3 * (m : ℝ) - c + 1 := by
    dsimp [lam]
    rw [Nat.cast_add, Nat.cast_sub (by omega : c ≤ 3 * m), Nat.cast_mul]
    norm_num
  have hmr : (333 : ℝ) ≤ m := by exact_mod_cast hm
  have hc1r : (1 : ℝ) ≤ c := by exact_mod_cast hc1
  have hc3r : (c : ℝ) ≤ 3 := by exact_mod_cast hc3
  have hip : (0 : ℝ) < i := by linarith
  have hqp : (0 : ℝ) < q := by linarith
  have hlp : (0 : ℝ) < lam := by linarith
  have hi1 : 1 ≤ i := by dsimp [i]; omega
  have hq1 : 1 ≤ q := by dsimp [q]; omega
  have hfact := mul_le_mul_of_nonneg_left
    (N8.log_factorial_bounds i hi1).2 hlp.le
  have hsf := mul_le_mul_of_nonneg_left
    (N8.log_superFactorial_lower q hq1) (by norm_num : (0 : ℝ) ≤ 3)
  have hratio := scaled_log_ratio_lower hip (by linarith : (c : ℝ) < i)
    (by linarith : (q : ℝ) = (2 / 3) * ((i : ℝ) - c))
  have hratio' := mul_le_mul_of_nonneg_left hratio (by positivity : (0 : ℝ) ≤ 3 * q / 2)
  have hl0 := normalization_log_constant
  have hq0 : 0 ≤ (q : ℝ) * (log (2 / 3 : ℝ) + (2 / 3 : ℝ) * log 2 - 5 / 96) :=
    mul_nonneg hqp.le (by linarith)
  have hinside : 0 ≤ (q : ℝ) * (log (2 / 3 : ℝ) + (2 / 3 : ℝ) * log 2) - 2 * c / 3 := by
    nlinarith [hq0]
  have hterm1 := mul_nonneg (by positivity : (0 : ℝ) ≤ 3 * m) hinside
  have hc2 : (c : ℝ) ^ 2 ≤ 9 := by nlinarith
  have hterm2 : 0 ≤ (lam : ℝ) * i - 9 * (m : ℝ) ^ 2 := by
    rw [hlm, him]
    nlinarith [hc2]
  have hterm3 : 0 ≤ 3 * (m : ℝ) - lam := by linarith
  have hcoeff : 0 ≤ 2 * (lam : ℝ) - 3 * m := by linarith
  have hlogi : 0 ≤ log (i : ℝ) := Real.log_nonneg (by exact_mod_cast hi1)
  have hterm4 := mul_nonneg hcoeff hlogi
  have hterm5 : 0 ≤ (q : ℝ) * log 2 := mul_nonneg hqp.le (Real.log_pos (by norm_num)).le
  rw [him, hqm, hlm] at *
  nlinarith [hfact, hsf, hratio', hterm1, hterm2, hterm3, hterm4, hterm5]

end N11

namespace N12

theorem normalization_parameters (i : Nat) (hi : 1000 ≤ i) :
    ∃ m c q r lam : Nat,
      i = 3 * m + c ∧ 333 ≤ m ∧ 1 ≤ c ∧ c ≤ 3 ∧
      q = 2 * m ∧ r = m + c - 1 ∧ i - r - 1 = q ∧
      2 * q - r = lam ∧ lam = 3 * m - c + 1 ∧
      i - 5 ≤ lam ∧ q < i ∧ 666 ≤ q ∧ 995 ≤ lam := by
  let m := (i - 1) / 3
  let c := i - 3 * m
  let q := 2 * m
  let r := m + c - 1
  let lam := 3 * m - c + 1
  refine ⟨m, c, q, r, lam, ?_⟩
  dsimp [m, c, q, r, lam]
  omega

end N12

open Real

open N3 N4

namespace N13

theorem smallPrimeCount_eq (i : ℕ) : smallPrimeCount i = Nat.primeCounting (i - 1) := by
  change (Nat.primesBelow i).card = _
  rw [Nat.primesBelow_eq_primesLE_sub_one, Nat.primesLE_card_eq_primeCounting]

theorem windowFactorials_pos (s : ℕ) : 0 < windowFactorials s := by
  exact Finset.prod_pos (fun h _ => Nat.factorial_pos h)

theorem windowConstant_pos (i r s : ℕ) : 0 < windowConstant i r s := by
  unfold windowConstant
  exact Nat.mul_pos (Nat.mul_pos (by positivity) (Nat.pow_pos (windowFactorials_pos s)))
    (windowFactorials_pos _)

theorem noCommon_scaled_choose {n i j r s : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hno : ¬ Common n i j) :
    windowConstant i r s * (n.choose i) ^ (2 * s - r) ≤
      n ^ (smallPrimeCount i * (2 * s - r) + windowDegree i r s) := by
  have hsize := noCommon_three_window_size hi hij hjn hsi hno (r := r)
  have hupper := three_window_scaled_upper (i := i) (r := r) (s := s)
    (by omega : i ≤ n) (by omega : j ≤ n)
  calc
    _ ≤ windowConstant i r s *
        (n ^ (smallPrimeCount i * (2 * s - r)) * threeWindowProduct n i j r s) :=
      Nat.mul_le_mul_left _ hsize
    _ = n ^ (smallPrimeCount i * (2 * s - r)) *
        (windowConstant i r s * threeWindowProduct n i j r s) := by ring
    _ ≤ n ^ (smallPrimeCount i * (2 * s - r)) * n ^ windowDegree i r s :=
      Nat.mul_le_mul_left _ hupper
    _ = _ := by rw [pow_add]

def Normalized (n i : ℕ) : Prop :=
  (1 / 3 - 5 / (3 * (i : ℝ)) - (Nat.primeCounting (i - 1) : ℝ) / i) *
      log ((n : ℝ) / i) ≤
    (Nat.primeCounting (i - 1) : ℝ) / i * log (i : ℝ) +
      3 * log (i : ℝ) / i - log (1 - ((i : ℝ) - 1) / n)

theorem normalized_of_window_data {n i j r s : ℕ}
    (hi : 2 ≤ i) (hij : i < j) (hjn : j ≤ n / 2) (hsi : s < i)
    (hno : ¬ Common n i j) (hlam : 0 < 2 * s - r)
    (hdegree : 3 * windowDegree i r s ≤ (2 * s - r) * (2 * i + 5))
    (hfactorial : ((2 * s - r : ℕ) : ℝ) * log (i.factorial : ℝ) ≤
      log (windowConstant i r s : ℝ) +
        (((2 * s - r : ℕ) : ℝ) * (i + 3) - windowDegree i r s) * log (i : ℝ)) :
    Normalized n i := by
  let lam := 2 * s - r
  let t := smallPrimeCount i
  let E := windowDegree i r s
  have hip : (0 : ℝ) < i := by exact_mod_cast (show 0 < i by omega)
  have hnp : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have hlp : (0 : ℝ) < lam := by exact_mod_cast hlam
  have hcp : (0 : ℝ) < n.choose i := by exact_mod_cast Nat.choose_pos (show i ≤ n by omega)
  have hCp : (0 : ℝ) < windowConstant i r s := by exact_mod_cast windowConstant_pos i r s
  have hH := noCommon_scaled_choose hi hij hjn hsi hno (r := r)
  have hHr : (windowConstant i r s : ℝ) * (n.choose i : ℝ) ^ lam ≤
      (n : ℝ) ^ (t * lam + E) := by exact_mod_cast hH
  have hlogH := Real.log_le_log (mul_pos hCp (pow_pos hcp _)) hHr
  rw [Real.log_mul hCp.ne' (pow_ne_zero _ hcp.ne'), Real.log_pow, Real.log_pow] at hlogH
  simp only [Nat.cast_add, Nat.cast_mul] at hlogH
  have hD := Nat.pow_sub_le_descFactorial n i
  rw [Nat.descFactorial_eq_factorial_mul_choose] at hD
  have hDr : ((n + 1 - i : ℕ) : ℝ) ^ i ≤ (i.factorial : ℝ) * (n.choose i : ℝ) := by
    exact_mod_cast hD
  have hbp : (0 : ℝ) < (n + 1 - i : ℕ) := by
    exact_mod_cast (show 0 < n + 1 - i by omega)
  have hlogD := Real.log_le_log (pow_pos hbp _) hDr
  rw [Real.log_pow, Real.log_mul (by positivity) hcp.ne'] at hlogD
  have hfrac : 0 < 1 - ((i : ℝ) - 1) / n := by
    apply sub_pos.mpr
    apply (div_lt_one hnp).mpr
    have hni : (i : ℝ) ≤ n := by exact_mod_cast (show i ≤ n by omega)
    linarith
  have hbase : ((n + 1 - i : ℕ) : ℝ) = (n : ℝ) * (1 - ((i : ℝ) - 1) / n) := by
    rw [Nat.cast_sub (by omega : i ≤ n + 1)]
    push_cast
    field_simp [hnp.ne']
    ring
  rw [hbase, Real.log_mul hnp.ne' hfrac.ne'] at hlogD
  have hlogD' := mul_le_mul_of_nonneg_left hlogD hlp.le
  have hlogX : log ((n : ℝ) / i) = log (n : ℝ) - log (i : ℝ) :=
    Real.log_div hnp.ne' hip.ne'
  have hXp : 0 ≤ log ((n : ℝ) / i) := by
    apply Real.log_nonneg
    apply (le_div_iff₀ hip).mpr
    simpa only [one_mul] using
      (show (i : ℝ) ≤ n from by exact_mod_cast (show i ≤ n by omega))
  have hdegree' : 3 * (E : ℝ) ≤ (lam : ℝ) * (2 * i + 5) := by exact_mod_cast hdegree
  have hcoeff : (lam : ℝ) * ((i : ℝ) - 5 - 3 * t) ≤
      3 * ((lam : ℝ) * ((i : ℝ) - t) - E) := by nlinarith [hdegree']
  have hcoeff' := mul_le_mul_of_nonneg_right hcoeff hXp
  have hmain : (lam : ℝ) * (((i : ℝ) - 5 - 3 * t) * log ((n : ℝ) / i)) ≤
      (lam : ℝ) * ((3 * t + 9) * log (i : ℝ) -
        3 * i * log (1 - ((i : ℝ) - 1) / n)) := by
    change (lam : ℝ) * log (i.factorial : ℝ) ≤ _ at hfactorial
    rw [hlogX] at hcoeff' ⊢
    nlinarith [hlogH, hlogD', hfactorial, hcoeff']
  have hmain' := (mul_le_mul_iff_right₀ hlp).mp hmain
  unfold Normalized
  rw [← smallPrimeCount_eq]
  change (1 / 3 - 5 / (3 * (i : ℝ)) - (t : ℝ) / i) * log ((n : ℝ) / i) ≤
    (t : ℝ) / i * log (i : ℝ) + 3 * log (i : ℝ) / i -
      log (1 - ((i : ℝ) - 1) / n)
  have heqL : (1 / 3 - 5 / (3 * (i : ℝ)) - (t : ℝ) / i) * log ((n : ℝ) / i) =
      (((i : ℝ) - 5 - 3 * t) * log ((n : ℝ) / i)) / (3 * i) := by
    field_simp [hip.ne'] <;> ring
  have heqR : (t : ℝ) / i * log (i : ℝ) + 3 * log (i : ℝ) / i -
      log (1 - ((i : ℝ) - 1) / n) =
      ((3 * t + 9) * log (i : ℝ) - 3 * i * log (1 - ((i : ℝ) - 1) / n)) / (3 * i) := by
    field_simp [hip.ne'] <;> ring
  rw [heqL, heqR]
  exact div_le_div_of_nonneg_right hmain' (by positivity)

theorem noCommon_normalized_1000 {n i j : ℕ} (hi : 1000 ≤ i)
    (hij : i < j) (hjn : j ≤ n / 2) (hno : ¬ Common n i j) : Normalized n i := by
  obtain ⟨m, c, s, r, lam, hic, hm, hc1, hc3, hs, hr, hL, hsl, hformula,
    _hlow, hsi, _hs666, _hl995⟩ := N12.normalization_parameters i hi
  have hlam : 2 * s - r = 3 * m - c + 1 := hsl.trans hformula
  have hlpos : 0 < 2 * s - r := by rw [hlam]; omega
  have hsum : windowSum s = m * (s + 1) := by
    have h := two_window_sum s
    rw [hs] at *
    nlinarith
  have hE : windowDegree i r s = 3 * m * (s + 1) := by
    unfold windowDegree
    rw [hL, hsum]
    ring
  have hC : windowConstant i r s =
      2 ^ (s * (s + 1)) * (Nat.superFactorial s) ^ 3 := by
    rw [window_constant_formula, hL]
    unfold windowFactorials
    rw [Nat.prod_Icc_factorial]
    ring
  have hlogC : log (windowConstant i r s : ℝ) =
      (s : ℝ) * (s + 1) * log 2 + 3 * log (Nat.superFactorial s : ℝ) := by
    rw [hC, Nat.cast_mul, Nat.cast_pow, Nat.cast_pow,
      Real.log_mul (by positivity)
        (pow_ne_zero _ (ne_of_gt (by exact_mod_cast N8.superFactorial_pos s :
          (0 : ℝ) < Nat.superFactorial s))), Real.log_pow, Real.log_pow]
    push_cast
    ring
  have hfact := N11.factorial_normalization m c hm hc1 hc3
  dsimp only at hfact
  rw [← hic, ← hlam] at hfact
  have hfactorial : ((2 * s - r : ℕ) : ℝ) * log (i.factorial : ℝ) ≤
      log (windowConstant i r s : ℝ) +
        (((2 * s - r : ℕ) : ℝ) * (i + 3) - windowDegree i r s) * log (i : ℝ) := by
    rw [hlogC, hE]
    simpa only [hs, Nat.cast_mul, Nat.cast_add, Nat.cast_ofNat, Nat.cast_one] using hfact
  have hlR : ((2 * s - r : ℕ) : ℝ) = 3 * (m : ℝ) - c + 1 := by
    rw [hlam, Nat.cast_add, Nat.cast_sub (by omega : c ≤ 3 * m), Nat.cast_mul]
    norm_num
  have hiR : (i : ℝ) = 3 * (m : ℝ) + c := by exact_mod_cast hic
  have hsR : (s : ℝ) = 2 * (m : ℝ) := by rw [hs, Nat.cast_mul]; norm_num
  have hmR : (333 : ℝ) ≤ m := by exact_mod_cast hm
  have hc1R : (1 : ℝ) ≤ c := by exact_mod_cast hc1
  have hc3R : (c : ℝ) ≤ 3 := by exact_mod_cast hc3
  have hcSq : (c : ℝ) ^ 2 ≤ 9 := by nlinarith
  have hdegreeR : 3 * (3 * (m : ℝ) * ((s : ℝ) + 1)) ≤
      ((2 * s - r : ℕ) : ℝ) * (2 * i + 5) := by
    rw [hlR, hiR, hsR]
    nlinarith [hcSq]
  have hdegree : 3 * windowDegree i r s ≤ (2 * s - r) * (2 * i + 5) := by
    rw [hE]
    exact_mod_cast hdegreeR
  exact normalized_of_window_data (by omega) hij hjn hsi hno hlpos hdegree hfactorial

end N13

open Real Set

namespace N7

theorem log_two_lower : (56 : ℝ) / 81 < log 2 := by
  linarith [Real.log_two_gt_d9]

end N7

example : ∀ x : ℝ, 128 ≤ x →
    (Nat.primeCounting (Nat.floor x) : ℝ) ≤
      Real.log 4 * x / (Real.log x - (3 : ℝ) / 2) := by
  intro x hx
  exact N7.elementary_primeCounting_bound hx

open Real

namespace N2

theorem row_height {n i j a b T q k : Nat}
    (hi : 1000 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (ha : a ≤ i) (hb : i ≤ b) (hbk : b < 2 ^ k) (hq : 12 ≤ q)
    (hcount : Nat.primeCounting b ≤ T)
    (hcert : 100 * (3 * (q + k) * T + 5 * q + 9 * k) ≤ (100 * q - 1) * a)
    (hno : ¬ N3.Common n i j) : n < 2 ^ q * i := by
  by_contra h
  have hn : 2 ^ q * i ≤ n := by omega
  have hip : (0 : ℝ) < i := by exact_mod_cast (show 0 < i by omega)
  have hpq : (4096 : Nat) ≤ 2 ^ q := by
    change 2 ^ 12 ≤ 2 ^ q
    exact pow_le_pow_right' (by decide : (1 : Nat) ≤ 2) hq
  have hn4096 : 4096 * i ≤ n := (Nat.mul_le_mul_right i hpq).trans hn
  have hnr : (4096 : ℝ) * i ≤ n := by exact_mod_cast hn4096
  have hnp : (0 : ℝ) < n := by nlinarith
  have hX : (2 : ℝ) ^ q ≤ (n : ℝ) / i := by
    apply (le_div_iff₀ hip).mpr
    exact_mod_cast hn
  have hZ := Real.log_le_log (by positivity : (0 : ℝ) < 2 ^ q) hX
  rw [Real.log_pow] at hZ
  have hik : (i : ℝ) ≤ (2 : ℝ) ^ k := by
    exact_mod_cast (hb.trans hbk.le)
  have hL := Real.log_le_log hip hik
  rw [Real.log_pow] at hL
  have hsmall : ((i : ℝ) - 1) / n ≤ 1 / 4096 := by
    apply (div_le_iff₀ hnp).mpr
    nlinarith [hnr]
  have hE := N10.neg_log_one_sub_le_4095 hsmall
  let t := Nat.primeCounting (i - 1)
  have ht : t ≤ T :=
    (Nat.monotone_primeCounting (show i - 1 ≤ b by omega)).trans hcount
  have hleft : 3 * (q + k) * t + 5 * q + 9 * k ≤
      3 * (q + k) * T + 5 * q + 9 * k :=
    Nat.add_le_add_right (Nat.add_le_add_right
      (Nat.mul_le_mul_left (3 * (q + k)) ht) (5 * q)) (9 * k)
  have hNat := (Nat.mul_le_mul_left 100 hleft).trans
    (hcert.trans (Nat.mul_le_mul_left (100 * q - 1) ha))
  have hsub : ((100 * q - 1 : Nat) : ℝ) = 100 * (q : ℝ) - 1 := by
    rw [Nat.cast_sub (by omega : 1 ≤ 100 * q), Nat.cast_mul]
    norm_num
  have hIC : (100 : ℝ) * (3 * ((q : ℝ) + k) * t + 5 * q + 9 * k) ≤
      (100 * (q : ℝ) - 1) * i := by
    have hc : (100 : ℝ) * (3 * ((q : ℝ) + k) * t + 5 * q + 9 * k) ≤
        ((100 * q - 1 : Nat) : ℝ) * i := by exact_mod_cast hNat
    rwa [hsub] at hc
  have hA := N13.noCommon_normalized_1000 hi hij hjn hno
  unfold N13.Normalized at hA
  change (1 / 3 - 5 / (3 * (i : ℝ)) - (t : ℝ) / i) * log ((n : ℝ) / i) ≤
    (t : ℝ) / i * log (i : ℝ) + 3 * log (i : ℝ) / i -
      log (1 - ((i : ℝ) - 1) / n) at hA
  have hA' := mul_le_mul_of_nonneg_right hA (by positivity : (0 : ℝ) ≤ 3 * i)
  have hAm : ((i : ℝ) - 5 - 3 * t) * log ((n : ℝ) / i) ≤
      (3 * t + 9) * log (i : ℝ) + 3 * i * (-log (1 - ((i : ℝ) - 1) / n)) := by
    have heqL : (1 / 3 - 5 / (3 * (i : ℝ)) - (t : ℝ) / i) *
        log ((n : ℝ) / i) * (3 * i) =
        ((i : ℝ) - 5 - 3 * t) * log ((n : ℝ) / i) := by
      field_simp [hip.ne'] <;> ring
    have heqR : ((t : ℝ) / i * log (i : ℝ) + 3 * log (i : ℝ) / i -
        log (1 - ((i : ℝ) - 1) / n)) * (3 * i) =
        (3 * t + 9) * log (i : ℝ) + 3 * i * (-log (1 - ((i : ℝ) - 1) / n)) := by
      field_simp [hip.ne'] <;> ring
    rw [heqL, heqR] at hA'
    exact hA'
  exact N10.ic_real_obstruction hip (by positivity)
    (by exact_mod_cast hq) (by positivity) N7.log_two_lower hIC hZ hL hE hAm

theorem row_common {n i j a b T q k : Nat}
    (hi : 1000 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (ha : a ≤ i) (hb : i ≤ b) (hbk : b < 2 ^ k) (hq : 12 ≤ q)
    (hcount : Nat.primeCounting b ≤ T)
    (hcert : 100 * (3 * (q + k) * T + 5 * q + 9 * k) ≤ (100 * q - 1) * a)
    (hn : 2 ^ q * i ≤ n) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  by_contra hno
  have hnoG : ¬ N3.Common n i j := by
    rintro ⟨p, hp, hip, hpg⟩
    exact hno ⟨p, hp, hip, Nat.dvd_trans hpg (Nat.gcd_dvd_left _ _),
      Nat.dvd_trans hpg (Nat.gcd_dvd_right _ _)⟩
  have hheight := row_height hi hij hjn ha hb hbk hq hcount hcert hnoG
  omega

end N2

namespace B699ContinuationRows
structure Row where
  a : Nat
  b : Nat
  k : Nat
  bound : Nat
def valid (r : Row) : Prop :=
  1000 ≤ r.a ∧ r.a ≤ r.b ∧ r.b < 2 ^ r.k ∧
    100 * (3 * (12 + r.k) * r.bound + 5 * 12 + 9 * r.k) ≤ (100 * 12 - 1) * r.a
instance (r : Row) : Decidable (valid r) := by unfold valid; infer_instance
def rows : List Row := [
  ⟨1000, 1023, 10, 172⟩,
  ⟨1024, 1048, 11, 175⟩,
  ⟨1049, 1068, 11, 179⟩,
  ⟨1069, 1096, 11, 183⟩,
  ⟨1097, 1128, 11, 188⟩,
  ⟨1129, 1180, 11, 193⟩,
  ⟨1181, 1236, 11, 202⟩,
  ⟨1237, 1302, 11, 212⟩,
  ⟨1303, 1426, 11, 224⟩,
  ⟨1427, 1558, 11, 245⟩,
  ⟨1559, 1722, 11, 268⟩,
  ⟨1723, 1972, 11, 297⟩,
  ⟨1973, 2047, 11, 309⟩,
  ⟨2048, 2280, 12, 338⟩,
  ⟨2281, 2592, 12, 377⟩,
  ⟨2593, 2998, 12, 429⟩,
  ⟨2999, 3546, 12, 497⟩,
  ⟨3547, 4095, 12, 569⟩,
  ⟨4096, 4758, 13, 652⟩,
  ⟨4759, 5572, 13, 758⟩,
  ⟨5573, 6556, 13, 888⟩,
  ⟨6557, 7740, 13, 1045⟩,
  ⟨7741, 8191, 13, 1102⟩,
  ⟨8192, 9342, 14, 1256⟩,
  ⟨9343, 10666, 14, 1433⟩,
  ⟨10667, 12210, 14, 1637⟩,
  ⟨12211, 13968, 14, 1874⟩,
  ⟨13969, 15942, 14, 2144⟩,
  ⟨15943, 16383, 14, 2203⟩,
  ⟨16384, 18040, 15, 2422⟩,
  ⟨18041, 19860, 15, 2668⟩,
  ⟨19861, 21828, 15, 2937⟩,
  ⟨21829, 23970, 15, 3228⟩,
  ⟨23971, 26290, 15, 3545⟩,
  ⟨26291, 28816, 15, 3889⟩,
  ⟨28817, 31572, 15, 4263⟩]
def numericCheck : Bool := rows.all (fun r => decide (valid r))
theorem numericCheck_true : numericCheck = true := by decide
theorem all_rows_valid : ∀ r ∈ rows, valid r := by
  intro r hr
  exact of_decide_eq_true ((List.all_eq_true.mp numericCheck_true) r hr)
def chainCheck (start stop : Nat) : List Row → Bool
  | [] => decide (start = stop)
  | r :: rs => decide (start = r.a) && chainCheck (r.b + 1) stop rs
theorem chainCheck_true : chainCheck 1000 31573 rows = true := by decide
theorem chain_covers {rs : List Row} {start stop : Nat}
    (hc : chainCheck start stop rs = true) :
    ∀ i : Nat, start ≤ i → i < stop → ∃ r ∈ rs, r.a ≤ i ∧ i ≤ r.b := by
  induction rs generalizing start with
  | nil =>
    have hs : start = stop := of_decide_eq_true hc
    intro i hi hlo
    omega
  | cons r rs ih =>
    have hh : decide (start = r.a) = true ∧ chainCheck (r.b + 1) stop rs = true := by
      cases h1 : decide (start = r.a) <;> cases h2 : chainCheck (r.b + 1) stop rs <;>
        simp_all [chainCheck]
    have hs : start = r.a := of_decide_eq_true hh.1
    intro i hi hlo
    by_cases hb : i ≤ r.b
    · exact ⟨r, by simp, by omega, hb⟩
    · obtain ⟨s, hsm, hsa, hsb⟩ := ih hh.2 i (by omega) hlo
      exact ⟨s, by simp [hsm], hsa, hsb⟩
theorem covers_1000_31572 {i : Nat} (hi : 1000 ≤ i) (hup : i ≤ 31572) :
    ∃ r ∈ rows, r.a ≤ i ∧ i ≤ r.b :=
  chain_covers chainCheck_true i hi (by omega)
theorem row_count : rows.length = 36 := by decide
end B699ContinuationRows

def poolList : List Nat := [53,47,43,41,37,31,29,23,19,17,13,11,7,5,3,2]
def pool : Finset Nat := poolList.toFinset
theorem poolPrime : ∀ p ∈ pool, p.Prime := by decide
theorem poolCard : pool.card = 16 := by decide
theorem poolMax : ∀ p ∈ pool, p ≤ 53 := by decide
theorem poolNodup : poolList.Nodup := by decide
theorem piBound {b t : Nat} (hb : 53 ≤ b)
    (hc : N5.count poolList b + 15 ≤ (t : Int)) :
    Nat.primeCounting b ≤ t := by
  have hrec := N5.count_eq_floorSum poolList poolNodup b
  unfold N5.floorSum at hrec
  have hfloor := N6.survivors_card_floor_formula pool poolPrime b
  change N5.count poolList b =
    ∑ s ∈ pool.powerset, (-1 : Int) ^ s.card * (b / s.prod id : Nat) at hrec
  have heq : ((N6.survivors pool b).card : Int) =
      N5.count poolList b := hfloor.trans hrec.symm
  rw [← heq] at hc
  have hu := N6.primeCounting_sieve_upper
    (by decide : pool.Nonempty) poolPrime (fun p hp => (poolMax p hp).trans hb)
  rw [poolCard] at hu
  omega

theorem s1023 : N5.count poolList 1023 + 15 ≤ (172 : Int) := by decide +kernel

theorem s1048 : N5.count poolList 1048 + 15 ≤ (175 : Int) := by decide +kernel

theorem s1068 : N5.count poolList 1068 + 15 ≤ (179 : Int) := by decide +kernel

theorem s1096 : N5.count poolList 1096 + 15 ≤ (183 : Int) := by decide +kernel

theorem s1128 : N5.count poolList 1128 + 15 ≤ (188 : Int) := by decide +kernel

theorem s1180 : N5.count poolList 1180 + 15 ≤ (193 : Int) := by decide +kernel

theorem s1236 : N5.count poolList 1236 + 15 ≤ (202 : Int) := by decide +kernel

theorem s1302 : N5.count poolList 1302 + 15 ≤ (212 : Int) := by decide +kernel

theorem s1426 : N5.count poolList 1426 + 15 ≤ (224 : Int) := by decide +kernel

theorem s1558 : N5.count poolList 1558 + 15 ≤ (245 : Int) := by decide +kernel

theorem s1722 : N5.count poolList 1722 + 15 ≤ (268 : Int) := by decide +kernel

theorem s1972 : N5.count poolList 1972 + 15 ≤ (297 : Int) := by decide +kernel

theorem s2047 : N5.count poolList 2047 + 15 ≤ (309 : Int) := by decide +kernel

theorem s2280 : N5.count poolList 2280 + 15 ≤ (338 : Int) := by decide +kernel

theorem s2592 : N5.count poolList 2592 + 15 ≤ (377 : Int) := by decide +kernel

theorem s2998 : N5.count poolList 2998 + 15 ≤ (429 : Int) := by decide +kernel

theorem s3546 : N5.count poolList 3546 + 15 ≤ (497 : Int) := by decide +kernel

theorem s4095 : N5.count poolList 4095 + 15 ≤ (569 : Int) := by decide +kernel

theorem s4758 : N5.count poolList 4758 + 15 ≤ (652 : Int) := by decide +kernel

theorem s5572 : N5.count poolList 5572 + 15 ≤ (758 : Int) := by decide +kernel

theorem s6556 : N5.count poolList 6556 + 15 ≤ (888 : Int) := by decide +kernel

theorem s7740 : N5.count poolList 7740 + 15 ≤ (1045 : Int) := by decide +kernel

theorem s8191 : N5.count poolList 8191 + 15 ≤ (1102 : Int) := by decide +kernel

theorem s9342 : N5.count poolList 9342 + 15 ≤ (1256 : Int) := by decide +kernel

theorem s10666 : N5.count poolList 10666 + 15 ≤ (1433 : Int) := by decide +kernel

theorem s12210 : N5.count poolList 12210 + 15 ≤ (1637 : Int) := by decide +kernel

theorem s13968 : N5.count poolList 13968 + 15 ≤ (1874 : Int) := by decide +kernel

theorem s15942 : N5.count poolList 15942 + 15 ≤ (2144 : Int) := by decide +kernel

theorem s16383 : N5.count poolList 16383 + 15 ≤ (2203 : Int) := by decide +kernel

theorem s18040 : N5.count poolList 18040 + 15 ≤ (2422 : Int) := by decide +kernel

theorem s19860 : N5.count poolList 19860 + 15 ≤ (2668 : Int) := by decide +kernel

theorem s21828 : N5.count poolList 21828 + 15 ≤ (2937 : Int) := by decide +kernel

theorem s23970 : N5.count poolList 23970 + 15 ≤ (3228 : Int) := by decide +kernel

theorem s26290 : N5.count poolList 26290 + 15 ≤ (3545 : Int) := by decide +kernel

theorem s28816 : N5.count poolList 28816 + 15 ≤ (3889 : Int) := by decide +kernel

theorem s31572 : N5.count poolList 31572 + 15 ≤ (4263 : Int) := by decide +kernel

theorem rowPi : ∀ r ∈ B699ContinuationRows.rows, Nat.primeCounting r.b ≤ r.bound := by
  simp only [B699ContinuationRows.rows, List.forall_mem_cons, List.forall_mem_nil]

  exact ⟨piBound (by decide) s1023,⟨piBound (by decide) s1048,⟨piBound (by decide) s1068,⟨piBound (by decide) s1096,⟨piBound (by decide) s1128,⟨piBound (by decide) s1180,⟨piBound (by decide) s1236,⟨piBound (by decide) s1302,⟨piBound (by decide) s1426,⟨piBound (by decide) s1558,⟨piBound (by decide) s1722,⟨piBound (by decide) s1972,⟨piBound (by decide) s2047,⟨piBound (by decide) s2280,⟨piBound (by decide) s2592,⟨piBound (by decide) s2998,⟨piBound (by decide) s3546,⟨piBound (by decide) s4095,⟨piBound (by decide) s4758,⟨piBound (by decide) s5572,⟨piBound (by decide) s6556,⟨piBound (by decide) s7740,⟨piBound (by decide) s8191,⟨piBound (by decide) s9342,⟨piBound (by decide) s10666,⟨piBound (by decide) s12210,⟨piBound (by decide) s13968,⟨piBound (by decide) s15942,⟨piBound (by decide) s16383,⟨piBound (by decide) s18040,⟨piBound (by decide) s19860,⟨piBound (by decide) s21828,⟨piBound (by decide) s23970,⟨piBound (by decide) s26290,⟨piBound (by decide) s28816,⟨piBound (by decide) s31572,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

theorem largeN {n i j : Nat} (hi : 1000 ≤ i) (hu : i ≤ 30000)
    (hij : i < j) (hjn : j ≤ n / 2) (hn : 4096 * i ≤ n) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  obtain ⟨r,hr,ha,hb⟩ := B699ContinuationRows.covers_1000_31572 hi (by omega)
  obtain ⟨_,_,hbk,hcert⟩ := B699ContinuationRows.all_rows_valid r hr
  exact N2.row_common hi hij hjn ha hb hbk (by decide) (rowPi r hr) hcert hn

def F : Nat := 14532334612776502079454136118739960547599983758322965112531973480628406313220431579048413227697010333827015195452424152402310887704589664913243137427436813927375533206119300793384854070356245108450142195205451713280329959395814474503327536141839404862732301173892471070776253262601807779831868027769638951755189876974676084366228357766024360941749166059413744103118165464763617149871280874101573901576082678874607713289571344243189259974349744921558037444375164435170046406521103078796758087806471411625165461009581734108049428954546178785951714963536871071215773744415354961811605727355751378372180846013421004576478603317634340380904976377343023204900296549739580387520952573938699361628516517169645163077822192748826048462780282811343822075421684165953491375985253344931847526797283780452090863466939308142843472181724357821832799472347615759154098815514416566943535897687739966999889221499466280959510301064791759455963434924702465645835416932291370803492274464141164646766139339833081388411332468864888340287947769759800433407662250882916369987059082424187776738440282045088721941788654259819649642596042465761329248043281004516492371168822800701898392877680285917174880202990788667958222227457229728639161488508417566406460911546374374666192011761331710701293008180436839305195102431879937695990700902145409067133305420748418866292126627889107387753974319642958370930829975593625000374702383415954035647056763477416163426535980027026853097725025460839777181261043210139884549373791998224162492198314932374000933189300709794584704485236565565586191265700290914740290107147988631967470640110236676835924968563726519596862178814099561307625708937417997518002376677139552608384322299458054580774803151877930050341629141672887002835725039216015741910073051446190750352171250351740793007483535968687516634894749963468899401999344932120342188934312513594342401026319547698099689871505896780179180331805048104154595724377733726188372857315560157084219270989969477890103690570793726619817491940282064208589255364090497110490592824133983051071146381681062832490761143701833097890826830475356629827182675002668306729999477488377347512402752869806059740746155989220794636876121064894982660271677823644036872079175051063518993863754437490721404086601219336929611088786424025112873039837744556587851845059688011740047083476506516331892524234326235571505348329711787288544531884602247043190947600117468001565790736313274699584490760824766327454944175504726674933464419750199716342817810269311480093842914549423107165023478900228008602770461811283317305262458219715275142168962492793754967855583583272262521758878804183113657440869868334505611641708356118542664241534364830838500609987970410465008296682720445083902421870036279190519343394175120859679608719637548786614708316746334559274135260792253407853766897697340170030720969088883370354691963488447386428399851554209905076373198286205353027529332206703308385039606574500510987185800571499391511419524495064846844775064495205802911439268969675688143470280043355138282971626892275526766664494565895342996622011666335720209703342584995136122527901249206217121688955797326785830752224762682305238724196741256491185243444746876618820782621601869754753524228341856910093902345998136965073716950585508284489821724225051415442494995744165290592556682048306098922767340091682605838145303215534211481902652212840853224122678192095039685511710287438340389211855345050202558973719908601407871428596491956051914639224206478320804159965266476360496254486144920607313156375884842673558175200990283235274182114969256539456653351689655584321320366416243152617220801705622795478350287053672469703964755848367627634542649860480475207966944643963930112361577252711083608597808538416225471938292771175333215395167844411957454382740963405519888053922564484884426017238548567075660121362356110969785024344504906536728868029825005908286554004259251078427280864510414594088291107136421491620414487542359958471890572359622161662798713705616490493751427158470794303911812408261155543669389783451328522308839373944199048999327641045152800710988719365228630897898298368860388879160223292198027996297521399803939709105182321973454836276245154827847722488023710544617401676445001183892353825586069295842022624004179496739792394204159959304014053900461036515344542066014482094204642742938930129642120019181021693515947348611590864869627123288835941618731240008816704132214538598266413865788474485404507651675323967598867631419696487369629070503489371544677361296592053940604289686287184331055915292233383962337232661015436645953132091544198654182953056635581765734142336164892948627002684845078513974715268265625736201961451603139473553851501461449997385295470646384165172311826966934675112639450844357671977448827933641125275266765174658681931006577963014832927004889765070021503838922284579323572365238387769128454069634406746547352091724541218389804533841806398063236738701430061645545686605899184544042825035920160205753974440250553679718137678355669279056590745680847963511455078626346564180895185720622706030795132693932169088230332984755431885641275436595198980785977513176645144452964030945459591939960703842389107279892644575776137413193149953025361742990351197819773419446558235538983217547221640423415660248154408427499909449084718936228710878761079012766444804560091625693892325830648705364125584672568795388091647457564040906090603092459059353453561215215580016434361260784291191878703660834707803169076955441873084729936930974164347550836960959644545088201780005049481283785658613747845076080833716376020144428862185578386592578809752653089301902252318430913026838895639927553360905863375482071779711762493561930362463809774943732359268334272797006824348764078395088733924752650245602421322178109518070763653662472889244062739218135921536370666805668381061887013282040426237457803240078003355939879880480136802750931733584690138559823279539822290914474006733286732294169722138277803472896284307751088831296225841322523175160675532059851385687381457933614312488477830948274223547510860671870285546654639093809388803311386145494688137600850058521782805076231329525427122484434791832635650765362828517006546691581584043484935404053433188566710483800627585558742608681473911933314978371073426680322952352514150527075448458847550425414823591807942701284500683705405519756729383111892602998226011799104242010455471634010182659551559364289267449586882449496710982469994749058867841211152318023843148666905725979976579393556959943566584348238988687930305841750582287184502875020056129944001014043356174378037542965917373135617763733228172443321583906420704556266546126678799662100347624966713653403064817514015302010133324222423318309995036099453291435494715520881618324678632186305659911159247570526643132088924289321193805487231249568429923388182404307110186784758724630307984385989653629765892464352497620709040251825735992033969590120422995553937771769775925334041177901619145247082286131007685337283740472992652563652750863215335909787903286144673222233299089200061869940191547568800710346663875825731413895163124503148869512703700212824860437501130829002253339386865886617782469075652656838883233685445870486920353438687527576775709703076470755127634622420995855527300120543304535264669841930352571205252633115043474729913019695705768049560249227984481573994499073425342650519838445310964243197108239863707090449739050756283699443486629123720992626427690228936137001054065344822863949579167384308328503926063877307229761496714974487426502434978185714953736535593117793027357806481678610409195655071288845805302174511996844536085026574461669941774525344798613315140546694958114519201348081393448938239501724101657105262057381224261987152520971260727466900349501019345904387989027460184248588495902113814190213958893889090127807310716465704919900427493729909168546593348997144792795400398171804374439034295426734924051358198851138138303310732333512065010845691862694932223773404796211839776853879075668762896495893380851162395585743546251386585157198791601559616182161885243748237211937605296841845552445825318844168799363538448418363035137028698001643440993750077098886017436687120506292234957097981771945525741918456022130081126069456613175479233632556302424786981136204532479146499799496554729239969506988172550432989913327773291036502814636037803289949403703640947220274558617292756699287655010860496760771533991505805547961680150647465530762874932945743807053703355108083261755790348411899715923954461503847827234967199436537491393514445829852122298260009551982587289798451767664607290977620940771694188704841781676229755142132869365829073955264342342515430290124056389933838312104650103449029206118094671244057716721530704047444735952987217626059706024606323599740853667130916871588942899719727094624323631262236427384183379606406898130551087989640926899166217140938915409680546705099877533567360583149020599848741348085552704251634017764882081319363368406273160508887773278090982522046484509297102038339999525895945016154625244843870457406186338584463664943384108838102997500913219497643819371220943184167469224450511300692613255108152171731776746379806663876017217630914065217892555908868007510016554941399093311847164307634617683237053795558173153686009817723698921708069053163099883165906571702086891257938101041383351158630750126768299314268408100646391528748822491877031499061506641208794174344283546911025640984507720398600016617135070363909627187319429103809171170487151594795117714563980417518994691340262183509551468746657198715339791740445528832259537337166813912958860906169612053227152475468966978678375262653794956820589427904278282771698771065078326295959374546289821741537980354025186321833751357370700483354738129176211715411099270624971319113077721591411408233369692855160871348467451502088148687937656963194396565713473889657218774840982051262900179691637116323364018181500389338453388050853841676899553455853333243692232365471095458361019903937236665893074435996020892430470977508799589213292789080872539722465584285061227125448856151779887196660164389142999483119891394666883102055738554833695620755937305424147920680674660923108681966215304337945219312364181126301329353815957610334945180817201959694305517260647577648395690819546105523512795834725993129150550085047436904664746852201431921550989541746664224387409097133848766911579783226308257686196018451347487111469449672380915943057670882117117383622026378359570371475969743646267607399937237748443230633477862549210040018404423722215774248044054624891645090551703879264661217027679251158544801424376665909816061992442206891278368380053468617023680112416739400984475402469890850501854271443982341382832885942025002603545251295967481394242739555386894376519150205526667117931582851654665613115774354295717839227707521764882373750640617288738048191644119973190281593407810086781292878658374820913487132215577383990504309001970292383264886329657553117191405703775372561379508823459547877027337824149329748047542057337397861794413977219665751498378417008809260645187317405553654849948682158935678426391923628053424719529551496076396547357612722474837415347937519414742099907970352365514608118261343038441650565229436604276817200332065831322464977201401075603138868731158643747281646361730503368932110680772521707232841299420497776662109675498955096933350950137167564530400559727840282702889245961007126569789230982434717188169570843643224918850361036774464663254759864393024240074471218000803545802299281299200301286116527138379134101260357543313163848930064251482273364340325212520131024348111437115072700938744239145176012489263097595896613472470788808647512528787345202802595758696119026723552649390522106600726795861056622677848164552069159827581145762645850787967539352693943341822465090764470508141606016119722836121976234162907159544402292125315655852682375222386082856741995200128677048641662332158789959032148808414079238225547725179076023377675100356641731233330633313722216789694399307338676620492463788407598448346025743111493090522325983596542793740724469670547251063912476474683422061143529986570959952886224097176104494769840868101124733546930025265722341537748351036462988928701496166289224403699227029866691195213757901412989124086518517320925672263818504445730203941273660490422414737547835671978644692645707747208534616040642147423947147329113467726540512779958461689786912392914172081808080356709878980059344299562534562331444249886096711729917315034219612410403161534681699714014445187138708341016765065773205284604822438766415393953283967986065637329486994642683545026287187276667135559212565274924332612938448741260156057229452094518039982984219145673575039943898415534893339188704572291093484390601610207136381496028062959127477626931147949755473951475775112143902178342663546336708856305123416804098932442980250955673827746984391884931949917984883403285278782658085492427394570833550912155651060825192119093477832844681865643620235414588074805569070616843804930891201970380029586185867736671029006700674380276483913683205351803094281175381229249036501223625327590028617052874031646454427151614937707576582941870848287679664741592255497246119415775761102851310776977793320260268362395133962726052969223687091950185482901390490086713459680442569897679839307402212417675397195022094881976775430890854575576260717847009293302265347562215415009508841282222868458889013151063677831167136158309514280313784976231279063050559772498191147070586149021907444885903469617878212091245302483114824199487906632339939590093851507595899936148443103528022288124323188004098875759217099259835958687044945490958935580312755140603172706292337223374173275413559175043307623149443854211326593169038954500893584418919654783040042080325319958604019706997482226810743312575821764088397979251196154447668825247400062581182691919622314150825604034735590748963678415298131479778210938999826260068799344686554925929269582096748576168702618532618187125755587827825345301716384625980615514075416357265100550037133572115340200619875207607709865350530013994868357297072703890879249725923078354591666738531354412923658889171179407545460906018934551231869620071974664485234947971087917301394927495140366616480629526290643182321776036886749150066922408856221792833622305048159678341408128420658644331435587804894375644744018269990165507634607937575571678529322457288767089346799502651439966864406417484786595158271608351251792453273855214231649170044710552309124802781090019769035957280013317846504089841266860422570212325436024863958898163013285614081586189966226659758636586981541516181925364323548530839920566788560462580647049167877870612783359172929267357808186350442917013748505618270256317018048051544605824151054334429934539474038862122760617632697180194480723631497965557470424350470892810242951694554453196475031624607303437927884719880670817822226541094768097826077947869459416040277989096426894398750626941120442908745128353296953518829452985023241199957628648844962223976959128573211749276157524419073632446509236818121033878788614238263447598585280544302452728164466047966464683171534650432703232858928469537404473919181375625712013420548116542118356416149325795113256200042755304966184427568953721350995829394257938819477469943326225421278452858780841812615506017979426822442624237403220686667833527931724381803611246114592648232233431364454149796210431904396307805795507763762610536096061259015819978592428644739826916425207215669517773608853159119946963656935467663323702843440093124366240612893398415327101688245529875107610027131760431487509882455487229939986941648293301969904352354678691996366997181878941015072966893073959635674522302418955825270245775305648581828370326517820507026349543949637338297202427504550294966252292130547517567282875853918693663806774224062444472195990055354608018459398724882482223500374470858617602394965882955101376476114611291509585332725053037202105850839891784417699855875396611972600049834054076930366381388672680926726410664560261607336548838231236977319811532975942567156061293376622099596856604794772390273199665679068946346614015615440774040638508915130825431596421554697130753279163184067325027963104882284799227357331142554357635141606478249012213352850847391901192841530408644535612096431510683927626428436936240301078029613235506313723197979635243091344103076213275207955077239636589272868379505316870619530218627371432573796514475460038778172657282311299794598556008859810395056311238990157387338334214384509968020931454868163471428547711920821114468271689268377457633026360966879626929590430634265338397488498174767116378615211531940538035729265819891156523644100261961449838455068833453538866135330171799510214819265351891660027082038070091729378682066851590886539935751885834439422829360728081826827778724776239464134138607873454106636764620278865149445785568908834555114240359970482852092904124023875297421035165537584413025374223053612890032470025579382494678154058028510655493351040527020096171587785097631535044661061922897256206316904442940211100186397651568182291564040489293297733233167760157026917631914678568394592078256688637070980379206852643354869688478461330924228656150659469770663432636621376343229565167618044539306461614966841928895915487732356408003974003173660478240495362761272994265919079134137198522222457424925659503479185849682883342391954393605656815255430279217532734768858521983994863516827327861360709477493498217235308203842245422804983501800452369652325678298724654313067507357853284165492570199326361378932948361601758655674871398050294940734802209551698940663876560059751009316701895330399598916537033514286829136864999181371219929220339541828259646326688625060573395986850957365443720378728977350365514762086823743151909638926238457075019788245031168862999163939429640512871016724216793619772479646891821786915041320400132793947519375480142244123199820246004269919130797806355604055772394991900237511400727036416561613206138475884202932794047955748122382403831277883567967889479147969870292814132136990017432573193757083849973454856046534698263595028452081233054928641420385044357641626256779403390191150321219012785981920657184428139275656583959851761824436358597998836316413803553937746211345241146025354688579626594023636603926503838115116086117191241060431099023302802500678955271471751721456864917847473476730442244600746846655171216743134134880572551753740532039428626991554484991622024546190356018883074292423467808670259933169717665029872256142273536326643905777753377426745228460704436479377258346532264316672718161682844495343765030412888050281795143386841464220902780247493135252530680008824277611832973164002720283518401704670980812675871599132200356529338587079032868387452425943871189419344805491261299732783160745716724097775235088680602931951687810580849338012286905681846223142585801224428536469586568977645796050164242703173946359015489939406926414585772403080255216295169074938803892157008509910572262717666079508921713442054404984476881278023145307629717624880158496739653424575982751633770473235070039549069915916788180874340106652309654954131652527942374830976206146161514336359055816352267029842490392201407298563380842715467895058239823103225975810029779957163589556364947732426502079273686800849179066871352863298745282528605492436949339872676854973444322307521992066519756151337957708723215360306816211626835834554957167363672440449591021567122706139996468934166611017683659081054796686346518976313440316041190882911684806626976069766923824576123605283508615336882029530748598759573821492876918241649683487324412297639301944566992268530404340021623402099506050758436165120059373432651008308354257903167494582739516760280633019995659496912699213364046840241921365604993542384282151764396395184861150300224425795216437345470424493681597569977868138663088440046128586786882546992759186888705511636953393804463194977352938834875028437083931396529297765467919997546341748268046518131389343455159518842434886618543540789589707269272155904392082320225871629673811626852673212815980809477047169099501264542316768561777321718726258408663480839463555756862543492165843644859998057392663327766603291833220108998339958261689630614175594031738252207746801828860850352961389779835701201229505006189446487574626802966019016787977239801031831128579313022937014503584681979923247333802127260959529101835024411182216563779872344169397572354397800273291224139972043012673094873356575917523605644691882055415345286006306371045481797702153136144972890105108978150080141717084126529435527573045061992319222490834005208971436065733107618289808724912773220284982986024604303219621347279556136741650908202154602485066866744576771594250970074320726125884963847089463693201399026088934082599579410517088584577109686447046077484699091463313489867123085121998025152304304159185956934492422235915621330954788157552644872363324675342064953259386816221078492099042666516392662771308673869997742386578002368363972440612991586633258199518406018841309193426979176643154801964790796216281631634780543683570591912374729297373453706334512768815568819870578180223121578677394627335972210905600912245377922160264613971345072838948767119933409880109732797439359606836137022827999433741768949006209447052317079606341922964293430066373690262343898353342723709443659868392746480541744177089929149462397343133218563663682589711372519229436960722835305727590860008835021418087882345520572390561973614094536582073026947780947143586363373800230045785246787497060073909512126005905500583579426999124805068003184049187088133962489710194581901362444847584713051578952634642939843561321661566414757060367459825587229027811718017737590505466356688285212648536344250181922729519752627947045257803405629324243716129275154554844604158471979400843764100732883661658325419747152127867603966603109234504462863346359086362448093022719452664587681163069834470313495973333057486189721640839300493672705279646405649523891849088133718925575834761337791823662919817867501593634750292610070442713569918853059257223338520446984556982588544634313017659198185635931659192827442072123601618900380466996235966336579169568359931728032618048104411587655913405562826840823763847051372444201482834634422187178727957067497521188952207993504637139171215294224355817082987594797390087027261950969636423267355310824772049999232184478675490836667948047684626686449336384175738427339324155996227808612851949023867522195304101919487956186203372976702704500743799673011451423900493583601151781240630483329601835473682230012692564919210994034727300678420257190590330689461015429164916139905944330931434037142156290606613503495931153168221345732300421632961013566409900860289446310736031970061133337511642285367812363377409574199283908722996514575290272854341833149729461916704811282982162896478640759168160762702707850217171773877298636984569238950990015985160548464307891809645865319259534322230746302051617653047305958815160221069557667243620696031774804187408138388223786772508162714504813142110003492988161461747653840315516680175848790819263902396638411209671569176873901682176177779424853976184384144919287907981643192447425205934088580325473402245448530665260319620930045800626972055811053415365637588758553815242460143437956877462443589252391649173518706212758710874053902656252611050587403074298331560537790564305554830940119835355717066761961706581757427430634864588348447889584518394627445532921695094033476571177655162464641017522873446146507462960654117825931052235934359108992020028888786875812872373807324740900353241489883983495666665188809088082855601631389442720867970536528696890607869472713320923854060423369007635430403199688375336272533378613777400271856145223346789862314363011932230041905539278991752864209809019431399286885841936907988578680516345886232581681771789628277077203985799512534589154941989341481273576015190593994141944690882754303600447210806657115421735777059999685464624889338128837101455939573015582658216642015876903086974476897021600987582363327591132760084927439116539060646188278708924306099851573611358161490231978929908138763389034956088505562633721838305090509043971413449397426128698915712839674182536684873089491710036641857287806165496153978008659442679593477662182164972480511281590230771565447896322009578714907986820767675998927058410286086328130452026185985953205836132316514688159245168136299746405127106515998406807115270232935391143834425229787739287050868151469229856408288503033996530581034514090551071339955213439357279620344150864106460025489285359621518197307617342677950249834024362796611564713806740029684814581075548555902093396477092904332143618613830729710440805695451702848723241711810488825908866039153864782257539727693383442102340453087469481000572023677280978385831046823388808151880713333056643851267461434023897424850929245357539924968566605365349421487199642334947496267702698612336857759841608410695404720359894530852028421399255936764273140628127707512005308949529481484882236175899269186641721750321633709726188791440528196988917547834021188940313612143757076152244907119754396980068093538829840963470102427350178922403900521863261000929662343433889122937358635634351782220061884848669562513727621689325689770636552131652867335045118887000278316451552888229627722876247295834120070798792297191750673130006802739337360285036724754410660370565911893637567231663544138598259061819440796178656955816926290413684929493791033853713592982186286699640239428101153969362758531292222619382711186477153502771212591898982870700410621783614278665495144733987771854477409709517559241368725609699230916548832142674585989294657187458738618666712491434624820216904188358630398341160233020197033815139009180620042074804398945625929202995522784886843344465007731921438911434984002112686000253129048627630801395812670663045931777512753937131590501225920530156422823120735845032330209802058568023463568956314951796005452966300543171305686274825073499098207275340042440427296282768665630642720890670137839252969415293473567902452280497055816221215215204407984194171306928173170403817437803360774808530880591935527809914955936262734501240945542889166218865447530082159997283638965753505900356241199634893260954706002146535921713726175250596079744480585361253100553513569156217600898378817030163871478659596835291419363958669761253720066599308987239877005549521573824223342086344192392805229550036655458537437648793994522372514241007177865376869427402060672895226769267306916953436224390304815536689754740656601273070988834318437134646597221482829343969595397729748841368290546457674230385393807615854314777278910713768728537885331780174651284844772570938091339202716251867644142601141405087170862157437567052377464602904487900829743821399308437455514020212255284432591025000565922834058552395915428323850203625254820083920247685788089921526892779937153091136262082011025501564296320215760256831328978216236140610228365028549396267205225712252645609007524479246362809001047058366768500307111011417138631162239492772030165651695126699784072284629484280988980848825956824429597560123161790435233606089419994263882055132587011629936152534413072387923732629517801149454045909097468096480064600688256971120506442955011398639645838268358505821855605040793719212255895770135647071599539316307044170082189979382796813386027797123835958539340908837681348856381381598386829738314622387489409540217773067430448599187030920220487007293246268053541838428931688265176960241510539236293922041110065978457918109627494529602713792841003831724012936931312359896686151975122774651896898072995518825231168302196611510772627262909374853308599780625933992042113926226472568350316066690805746040290031097163704077621944760609513423260962840430521466653039380698213906962711734975780234248729229269290602795028245303237128752249672757114891893665956315581802135899139428086109071617610203138433795536650819269486408335689833815030167492237173622758748823622934447280064718896374131729907543997592220670901280304125347257536596460620245433238850070299482684740777070769044254194738031732116862124659863573101948165623250467787053923510259699886208165828914250115520106927235423697863383684420937492517602760710709847458251014429045038051871288451343952594439549254686844838251097607612354210745572900822646892174350966745226359424495608965145470537477400445788610340317239802392458767980955537859144918141076986876031873172953820844330860286471990629644607915756395213245956607437396776642169641361419659938988174530944205318274217056839052668561389659841626434067566154254773069730739896809292057751372925719825771777650736630593987194472092022790021540283410459702795482914832741049821990653950652557896562148234812240743362108083915271646869727073656101775246015271687246910379843978071686645399953382329151977691251203496308524659436278716488838489648173742254946323741970079230917700521727505086209403643559018481142816993539969012976934164291726194804612192267943809716585225909963901590355561919923124486875328647891309986959855129803069717854141968111390485611182078236568574338789166283996522606727494531391535887807002043522814219736574659777601584434732507362555067270851438707212221768691083658369405290391999923436034137795275592392696799721183844374712287470678555975075290293799306965334043532626144110764961752625358500503663491339863167542546156149299907164876058640248134079378516326452055210919845070138213797654047859633232514213655778327950965007756695254136406491509791391488999345675761015235866816582205854046763801529668520457718551393273801131356915972038825639937255342317395042545759475724444620383935872733433137285648331087485983540504113110165067040825308894365872658198729012537337727786393167674346718764179216483678328317479526985896667674481343187440875944803349790467363576914763624552153283622054545979498962129972667778973330697495624917799989307183562609059768941894069179974262293768992503506355502732207840460075375841645801424578580947592063705103917655365994743004882026901250573464368615078922973961424779168108192887501479961475902193100345614150746924169641269539191135036795392691136859904085161948722312143189181556012750879101478076457160101508936398342599157909332282598918713483467828417170652940224295790003810107502386856954028156693360366864349749587207992065927393602266139497322003858754148712917371458863888395305461880870934139223627755656593948225680118500697475666078336682704059437768479926884920140977011015896468756334303857985706640303686348889252626066859973642199307981731047064689144503612922139650107728784533266437656664793390922052172032122229304766346556328548529914371808304138920739535495529542454431318924990578855773205817439237026640289789773746444462082843295166013254213269363002770189998515975303707199264472050168558295732314663244095923223037327136613202662312937160979238097918189627876071708394172013560206089354120255851556493102936463652278385621523188709296102514309972826226771618909579180608607541689600596892008539167344590208623262306987574608362959134825973902859318787987645474082437448432330272309108777354928044179248990086618495467797627562901648170746016566685791945889582860039280076761201135756578977684696671454264432009098804375940288949222690049835183063645791894829592135919446808562595816840192279856951374552349923641711289410007442665851376274945283938338862020691536434330942301785609715730046206253874252959420964975496129549296830794361715671948572844832544643357501740216238695694510129595774537964221920001886538078126249794554782434267382266366912728210018704273420212308506011898253754017250427489648608652658533722193299159516203526087315061248934498637650759362891467939120415892256306616840454811154595240625035277115496248104541737158475000873551667330539252168967052533374645744022843157694141939568432083153260633313989301783748119375446243590024021794393064216943517599841373405880067029667576808350048742900029477746812311304774272356958834153779586508926108754633487272176910096071566991948436144569386992721807809631762323555040993530582215755986975634620537729573479247556245187608261115706474374112198436529570184559237312541504924915403229947116511935570963818012143956985642643676868570322378974797657197877208252805037835746818580621191795658489071854397560674585676218335225886728345367969195220409665901648333584106738666220662108989431920365309639973859397696079617905647538335552578406185518143552127152419628853619649852809446948851700314694629627392691311377948010821131967839596369923600440968272283776232609061467610134129764686574620243708908704220002656165172067421763808356471383068017623031857776582076447740944550977512082405953652652573578782926062607475350720915501661463229245002862946803478338203878789655241087637143981909982954465956939565214733358634019022366287443252008377714559026585182343719404905979790792956109023882451127197430657303262203142440341665751877707098880073776131418058444054425980096264252793180739847396449055817946962192091336542421380607755085803799888461868984590086674408361211848720635475744819101807318994564739173092646274642268192107520493781529605796522454227249939850174953241292527287433582300708004110890250406871157707490363773195237789274958183560662694329713330328923819654612293978976800923537393760423565416881421568408988542764395328915751463484820852676738554416375350922405175174020525478721485688771484243424391568036797489968371380698836762599796402343121874684564376067330997451913197113639630677838032408579745421752538447948964059871310538490510583831567846910267750573476150826713811497393103877131390401047673594488841871135956355485922776927339561416082272588349051700537831853929492406466915558191472761934633647421859466981467750955693701549926580795888327488071789617576927037865579142498786518103033142668170557011859427219637856019773207119358269438658586893035474748936873963150491482660022712521009973392239655033667391618898053364177238317311430339885313296846439722247132699044798393534332050378312263059730359149471966363550295377416342728175292908810134646205551240321553330859051467538326075452407492337153144458091707866486498738973466585397440529377415578910530142924236360150892659545680118231582061533916957710282832184461908959020332211686466459196768173034890276501139644626095972727744117231254232539307260079880076749018952065272110265015543095850525394922284484856580990810788408336376190060141982547170586405628710966050240851931906913494976283560840438431506072219131653332626672380275408010922108512106968749037739879835641602222980945122244955336013158858954175548875421745369990883243449145634308037992423984934702437985736460407795937199867535264054931074368383627209800138328415393751452790002011589594007170519299708916254234864236028257381275718180571154618288523956383266304547357667702677396831200895192483952496466493254818051027748259207639651409067470333033191513765184047836865651906279319479989352371065028073889427376593049457837284622989242296824458432110486564192121608197695163954982917344911463037768145046644465709069843194838669060755691544948130611346653884277975464262511680143637662884200155572961589686513711337497732417681180404437652704786820293845394448503836799120190387179083497543927703740727608450227340532074423318722962039949909698247063204644039229489833896331023476941462821984611972919941646085623503068129806783368129769329959209759532866915710789226918106385279177469876078263495339200864400285483110072964276923996372319235732906486063389009811110608310437482138723729427067692091139283942499531376837675689678357317743155501847253821628031747414288631381043395382712083065573583806267000043708603764879796531078164098876204410179876879850064895184492163276488005724820122605781422787572041379781385073584513680268295077656665729731016706017506929539434495367072806676423396203356208078066488873468532416648516003970864880901205583696723221095489799852662604676391827086410347259143391263971184364147727852719855291452611626419458283196421817045145949228386911744004076406638212956782892930788312941322465154628516621828384065802851234271332210559918465737063654116227529568025685250685637315722934950989887082433524182981273510253177685252466280998085507475780090001032127653725384256715340421792898243715853056700351156775982847710504436629267941860904229306740494270703709598963645629516191342621170750324862809432723293724245532230391239382015063511884233573003666243882748454123647621314205653377931321577167473235734138793901802392633929708967175071588213646714305087058350328022692170821485684638835606650612552278551549289452895409268910441062308325698757426183787510679755145276726192854787897819318982112209266896619964645699680176053063821160339135278982609016630418412353315391907779415630883018088382580597371973028267429424686014745227823623653934387719087704279967597544516424017303519001370689461079052877283519865304299190251895091643370193768999385918242418325073231591487659146018147565878910889648758549758925768083867298356447903478894934512382528343325840908564640860152548298891454780656832350132460143921143182934725723750253765333040235680688449767618554774310986928312737629224109726275205886654655889125104135284924233771190412053037462047532218612614303046911727959853217005951620834750547731478002523777435811566489474574134004847619910055733298219742071726793403339246535171923738466274847292959407512090693842885283648330182421563595460820126018400214234083889341799445491217355887647835594852802822039142400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

theorem F_eq : F = Nat.factorial 11085 := by decide +kernel

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

def primeCheck (p : Nat) : Bool :=
  if p < 11086 then trialPrimeCheck p
  else decide (2 ≤ p ∧ p < 11086*11086 ∧ Nat.gcd p F=1)
theorem primeCheck_sound {p : Nat} (hc : primeCheck p=true) : p.Prime := by
  by_cases hs : p < 11086
  · exact trialPrimeCheck_sound (by simpa only [primeCheck,if_pos hs] using hc)
  · have he : 2 ≤ p ∧ p < 11086*11086 ∧ Nat.gcd p F=1 :=
      of_decide_eq_true (by simpa only [primeCheck,if_neg hs] using hc)
    refine Nat.prime_def_le_sqrt.mpr ⟨he.1,?_⟩
    intro d hd hdle hdiv
    obtain ⟨q,hq,hqd⟩ := Nat.exists_prime_and_dvd (n:=d) (by omega)
    have hqle := Nat.le_of_dvd (show 0<d by omega) hqd
    have hB : Nat.sqrt p < 11086 := Nat.sqrt_lt.mpr he.2.1
    have hqF : q ∣ F := by
      rw [F_eq]
      exact hq.dvd_factorial.mpr (by omega)
    have hqg := Nat.dvd_gcd (hqd.trans hdiv) hqF
    exact hq.not_dvd_one (by simpa only [he.2.2] using hqg)

inductive Chain (R : Nat → Nat → Prop) : Nat → Nat → Prop where
  | one {p : Nat} (hp : p.Prime) : Chain R p p
  | cons {p q r : Nat} (hp : p.Prime) (hpq : p < q)
      (hr : R p q) (ht : Chain R q r) : Chain R p r
theorem Chain.trans {R : Nat → Nat → Prop} {lo mid hi : Nat}
    (hl : Chain R lo mid) (hr : Chain R mid hi) : Chain R lo hi := by
  revert hr
  induction hl with
  | one _ => intro hr; exact hr
  | cons hp hlt he _ ih => intro hr; exact .cons hp hlt he (ih hr)
def chainEnd (p : Nat) : List Nat → Nat
  | [] => p
  | q::qs => chainEnd q qs
def stepCheck (R : Nat → Nat → Prop) [DecidableRel R] (p : Nat) : List Nat → Bool
  | [] => true
  | q::qs => decide (p < q ∧ R p q) && stepCheck R q qs
theorem stepCheck_sound {R : Nat → Nat → Prop} [DecidableRel R] {p : Nat} {qs : List Nat}
    (hp : ∀ x ∈ p::qs, x.Prime) (hc : stepCheck R p qs = true) :
    Chain R p (chainEnd p qs) := by
  induction qs generalizing p with
  | nil => exact .one (hp p (by simp))
  | cons q qs ih =>
      have hboth : (p < q ∧ R p q) ∧ stepCheck R q qs = true := by
        simpa only [stepCheck, Bool.and_eq_true, decide_eq_true_eq] using hc
      have hs := hboth.1
      have ht := hboth.2
      exact .cons (hp p (by simp)) hs.1 hs.2
        (ih (fun x hx => hp x (List.mem_cons_of_mem p hx)) ht)
def addEdge (p q : Nat) : Prop := q ≤ p + 999
instance : DecidableRel addEdge := fun p q => inferInstanceAs (Decidable (q ≤ p + 999))
def ratioEdge (p q : Nat) : Prop := 4095 * q ≤ 4096 * p
instance : DecidableRel ratioEdge := fun p q => inferInstanceAs (Decidable (4095 * q ≤ 4096 * p))
theorem Chain.nearAdd {lo hi : Nat} (hc : Chain addEdge lo hi)
    {n : Nat} (hn : lo ≤ n) (hu : n < hi) :
    ∃ p : Nat, p.Prime ∧ p ≤ n ∧ n < p + 999 := by
  induction hc generalizing n with
  | one _ => omega
  | @cons p q r hp hpq he ht ih =>
      by_cases hnq : n < q
      · exact ⟨p,hp,hn,by change q ≤ p+999 at he; omega⟩
      · exact ih (by omega) hu
theorem Chain.nearRatio {lo hi : Nat} (hc : Chain ratioEdge lo hi)
    {n : Nat} (hn : lo ≤ n) (hu : n < hi) :
    ∃ p : Nat, p.Prime ∧ p ≤ n ∧ 4095 * n < 4096 * p := by
  induction hc generalizing n with
  | one _ => omega
  | @cons p q r hp hpq he ht ih =>
      by_cases hnq : n < q
      · exact ⟨p,hp,hn,by change 4095*q ≤ 4096*p at he; omega⟩
      · exact ih (by omega) hu
theorem Chain.lastPrime {R : Nat → Nat → Prop} {lo hi : Nat} (hc : Chain R lo hi) : hi.Prime := by
  induction hc with
  | one hp => exact hp
  | cons _ _ _ _ ih => exact ih
structure Part (R : Nat → Nat → Prop) [DecidableRel R] where
  lo : Nat
  qs : List Nat
  primesChecked : (lo::qs).all primeCheck=true
  checked : stepCheck R lo qs=true
def Part.hi {R : Nat → Nat → Prop} [DecidableRel R] (s : Part R) := chainEnd s.lo s.qs
theorem Part.chain {R : Nat → Nat → Prop} [DecidableRel R] (s : Part R) :
    Chain R s.lo s.hi := stepCheck_sound
  (fun p hp => primeCheck_sound (List.all_eq_true.mp s.primesChecked p hp)) s.checked
def joinCheck {R : Nat → Nat → Prop} [DecidableRel R] (p : Nat) : List (Part R) → Bool
  | [] => true
  | s::ss => decide (p=s.lo) && joinCheck s.hi ss
def joinEnd {R : Nat → Nat → Prop} [DecidableRel R] (p : Nat) : List (Part R) → Nat
  | [] => p
  | s::ss => joinEnd s.hi ss
theorem join_sound {R : Nat → Nat → Prop} [DecidableRel R] {p : Nat} {ss : List (Part R)}
    (hp : p.Prime) (hc : joinCheck p ss=true) : Chain R p (joinEnd p ss) := by
  induction ss generalizing p with
  | nil => exact .one hp
  | cons s ss ih =>
      have hb : p=s.lo ∧ joinCheck s.hi ss=true := by
        simpa only [joinCheck,Bool.and_eq_true,decide_eq_true_eq] using hc
      rcases hb with ⟨hp_eq, htail⟩
      subst p
      exact s.chain.trans (ih s.chain.lastPrime htail)

def ad0 : List (Part addEdge) := [
⟨2,[887,1789,2687,3571,4463,5351,6229,7129,8017,8893,9781,10667,11551,12437,13339,14221,15107,16007,16903,17791,18679,19583,20479,21347,22247,23099,23993,24877,25771,26647,27481,28351],by decide +kernel,by decide +kernel⟩,
⟨28351,[29243,30109,31013,31907,32803,33703,34549,35449,36343,37243,38149,39043,39937,40823,41719,42611,43499,44389,45263,46141,46997,47881,48751,49613,50461,51329,52223,53101,53993,54851,55721,56633],by decide +kernel,by decide +kernel⟩,
⟨56633,[57529,58427,59333,60223,61057,61933,62773,63647,64553,65423,66301,67187,68071,68927,69779,70667,71537,72431,73309,74177,75079,75979,76873,77747,78649,79493,80369,81239,82073,82963,83833,84737],by decide +kernel,by decide +kernel⟩,
⟨84737,[85621,86477,87323,88211,89087,89989,90887,91873,92767,93637,94513,95383,96281,97187,98057,98911,99793,100699,101561,102437,103319,104183,105071,105953,106853,107693,108571,109453,110311,111149,112031,112939],by decide +kernel,by decide +kernel⟩,
⟨112939,[113819,114671,115547,116381,117251,118093,118973,119851,120739,121621,122509,123407,124303,125183,126067,126961,127849,128747,129643,130489,131381,132287,133169,134059,134951,135841,136727,137597,138497,139369,140249,141121],by decide +kernel,by decide +kernel⟩,
⟨141121,[142007,142907,143743,144611,145487,146369,147253,148249,149143,149971,150833,151717,152623,153499,154351,155231,156089,156979,157841,158731,159589,160423,161411,162293,163181,164051,164953,165833,166723,167711,168617,169457],by decide +kernel,by decide +kernel⟩,
⟨169457,[170363,171233,172127,173023,173897,174799,175673,176573,177467,178361,179233,180097,180959,181813,182713,183581,184463,185309,186191,187141,188021,188891,189799,190699,191579,192431,193337,194203,195077,195931,196817,197699],by decide +kernel,by decide +kernel⟩,
⟨197699,[198553,199429,200297,201167,202063,202933,203821,204679,205559,206413,207307,208189,209039,209927,210827,211727,212593,213461,214351,215197,216103,216973,217859,218723,219613,220513,221509,222379,223259,224131,224993,225871],by decide +kernel,by decide +kernel⟩,
⟨225871,[226697,227581,228427,229321,230189,231067,231961,232853,233713,234547,235447,236323,237173,238039,238921,239807,240677,241567,242453,243343,244219,245107,245989,246889,247781,248657,249563,250451,251323,252209,253103,253969],by decide +kernel,by decide +kernel⟩,
⟨253969,[254833,255733,256577,257473,258373,259277,260179,261077,261917,262781,263621,264529,265381,266281,267167,268043,269041,269923,270799,271651,272549,273433,274333,275227,276091,276961,277787,278687,279577,280487,281339,282167],by decide +kernel,by decide +kernel⟩,
⟨282167,[283027,283873,284777,285673,286553,287393,288241,289129,290033,290897,291791,292673,293507,294403,295259,296137,297023,297889,298777,299653,300511,301403,302299,303187,304091,304961,305839,306707,307589,308467,309317,310187],by decide +kernel,by decide +kernel⟩,
⟨310187,[311041,311897,312779,313661,314527,315407,316271,317179,318023,318919,319763,320659,321553,322433,323273,324161,325063,325921,326779,327673,328579,329473,330331,331217,332117,332987,333871,334727,335609,336437,337327,338213],by decide +kernel,by decide +kernel⟩,
⟨338213,[339107,340007,340877,341701,342599,343433,344293,345143,345997,346891,347773,348629,349519,350381,351259,352133,353021,353891,354799,355679,356533,357389,358243,359129,360007,361003,361903,362759,363619,364499,365377,366211],by decide +kernel,by decide +kernel⟩,
⟨366211,[367069,367957,368873,369709,370609,371491,372353,373231,374083,374909,375799,376657,377543,378407,379307,380179,381061,381917,382777,383659,384547,385433,386333,387203,388081,388937,389839,390707,391579,392477,393373,394271],by decide +kernel,by decide +kernel⟩,
⟨394271,[395173,396031,396887,397729,398621,399617,400481,401381,402253,403133,404011,404851,405731,406591,407437,408311,409187,410063,410929,411823,412667,413537,414413,415273,416159,417037,417899,418787,419651,420521,421381,422267],by decide +kernel,by decide +kernel⟩,
⟨422267,[423109,424007,424867,425713,426583,427457,428303,429197,430093,430957,431833,432661,433549,434389,435287,436127,437011,437881,438769,439639,440527,441421,442271,443153,444131,445021,445883,446753,447617,448451,449333,450193],by decide +kernel,by decide +kernel⟩,
⟨450193,[451069,451937,452813,453643,454513,455381,456241,457117,457987,458929,459829,460721,461717,462589,463459,464351,465211,466079,466957,467833,468719,469613,470513,471391,472289,473173,474017,474917,475823,476701,477593,478453],by decide +kernel,by decide +kernel⟩,
⟨478453,[479327,480317,481199,482051,482957,483853,484727,485567,486407,487313,488171,489043,489913,490783,491677,492647,493481,494341,495221,496079,496963,497873,498767,499673,500567,501463,502339,503233,504143,504991,505877,506743],by decide +kernel,by decide +kernel⟩,
⟨506743,[507571,508451,509329,510233,511123,511991,512849,513697,514571,515477,516349,517249,518113,519011,519919,520813,521671,522521,523403,524287,525167,526159,526997,527881,528719,529579,530447,531299,532183,533051,533927,534799],by decide +kernel,by decide +kernel⟩,
⟨534799,[535679,536561,537413,538303,539171,540079,540961,541837,542723,543713,544549,545449,546317,547171,548153,549037,549949,550843,551753,552583,553463,554347,555257,556123,556999,557863,558703,559577,560561,561419,562313,563197],by decide +kernel,by decide +kernel⟩,
⟨563197,[564061,564937,565813,566701,567569,568549,569447,570421,571303,572207,573109,574003,574907,575791,576677,577667,578537,579379,580259,581101,581981,582859,583753,584627,585517,586387,587281,588173,589063,589933,590929,591827],by decide +kernel,by decide +kernel⟩,
⟨591827,[592693,593587,594469,595363,596243,597137,598007,598903,599783,600641,601487,602383,603257,604249,605123,605953,606857,607703,608701,609589,610583,611467,612331,613189,614071,614927,615799,616673,617537,618413,619397,620261],by decide +kernel,by decide +kernel⟩,
⟨620261,[621139,621997,622889,623743,624607,625489,626363,627251,628139,629029,629929,630797,631667,632561,633449,634313,635149,636043,637003,637883,638861,639739,640589,641479,642457,643303,644143,645049,645941,646781,647659,648563],by decide +kernel,by decide +kernel⟩,
⟨648563,[649457,650449,651293,652153,653033,653893,654767,655651,656527,657413,658261,659137,660029,660917,661777,662671,663547,664427,665311,666203,667181,668069,668939,669839,670693,671591,672473,673339,674189,675083,675959,676829],by decide +kernel,by decide +kernel⟩,
⟨676829,[677717,678593,679487,680387,681293,682153,683003,683873,684731,685613,686513,687403,688277,689141,689987,690871,691763,692641,693503,694391,695281,696119,696991,697877,698723,699617,700471,701359,702199,703081,703907,704801],by decide +kernel,by decide +kernel⟩,
⟨704801,[705643,706547,707431,708293,709157,710053,711049,711937,712819,713681,714557,715441,716321,717191,718187,719071,719959,720829,721709,722599,723473,724331,725161,726043,727021,727891,728743,729587,730459,731363,732257,733147],by decide +kernel,by decide +kernel⟩,
⟨733147,[734047,734911,735781,736607,737483,738349,739253,740153,741031,741883,742759,743609,744607,745477,746363,747343,748219,749069,749941,750817,751727,752627,753499,754399,755273,756149,756971,757829,758699,759581,760477,761389],by decide +kernel,by decide +kernel⟩,
⟨761389,[762241,763093,763967,764857,765707,766583,767471,768377,769207,770069,770951,771809,772669,773569,774551,775441,776327,777221,778097,778951,779939,780833,781681,782539,783407,784283,785159,786017,786901,787793,788677,789527],by decide +kernel,by decide +kernel⟩,
⟨789527,[790421,791291,792163,793159,794041,794923,795763,796657,797509,798409,799259,800161,801037,801883,802873,803749,804619,805523,806389,807259,808111,808961,809803,810671,811561,812431,813301,814139,814991,815897,816769,817651],by decide +kernel,by decide +kernel⟩,
⟨817651,[818509,819367,820213,821089,821941,822793,823703,824683,825533,826393,827269,828119,828941,829819,830693,831553,832427,833299,834199,835039,835909,836753,837619,838613,839483,840353,841193,842071,842951,843833,844733,845623],by decide +kernel,by decide +kernel⟩,
⟨845623,[846589,847453,848321,849203,850063,850933,851831,852689,853571,854443,855317,856213,857083,857929,858787,859657,860507,861391,862249,863153,864029,864917,865771,866653,867511,868409,869257,870137,871001,871867,872749,873619],by decide +kernel,by decide +kernel⟩,
⟨873619,[874487,875363,876257,877133,877997,878837,879713,880543,881417,882313,883163,884057,884899,885793,886667,887503,888361,889247,890129,890969,891859,892709,893603,894451,895333,896191,897077,897947,898823,899671,900511,901367],by decide +kernel,by decide +kernel⟩,
⟨901367,[902227,903109,903949,904847,905843,906727,907583,908419,909317,910307,911161,912053,912941,913811,914701,915557,916457,917317,918173,919033,919883,920743,921589,922463,923347,924197,925063,925961,926851,927727,928703,929587],by decide +kernel,by decide +kernel⟩,
⟨929587,[930409,931267,932131,933019,933883,934763,935621,936511,937351,938243,939091,939973,940853,941741,942607,943477,944329,945211,946091,946961,947833,948713,949567,950423,951283,952151,953023,953881,954743,955613,956477,957317],by decide +kernel,by decide +kernel⟩,
⟨957317,[958183,959083,959969,960833,961691,962587,963461,964333,965233,966109,966971,967847,968731,969599,970457,971357,972229,973081,973957,974837,975731,976637,977521,978403,979291,980159,981023,981889,982759,983617,984491,985351],by decide +kernel,by decide +kernel⟩,
⟨985351,[986213,987083,987913,988789,989647,990529,991409,992281,993137,993997,994837,995713,996703,997609,998513,999389,1000253,1001153,1002017,1002893,1003733,1004599,1005493,1006367,1007249,1008131,1009121,1010003,1010861,1011737,1012637,1013503],by decide +kernel,by decide +kernel⟩,
⟨1013503,[1014371,1015369,1016263,1017139,1018007,1018879,1019747,1020631,1021487,1022383,1023229,1024207,1025093,1025957,1026833,1027703,1028581,1029473,1030451,1031323,1032191,1033079,1033927,1034809,1035707,1036561,1037447,1038337,1039187,1040021,1040929,1041823],by decide +kernel,by decide +kernel⟩,
⟨1041823,[1042709,1043557,1044437,1045307,1046179,1047043,1047887,1048721,1049569,1050437,1051319,1052203,1053103,1053953,1054843,1055713,1056577,1057421,1058329,1059209,1060051,1060883,1061773,1062601,1063483,1064383,1065269,1066133,1066973,1067851,1068721,1069561],by decide +kernel,by decide +kernel⟩,
⟨1069561,[1070431,1071283,1072163,1072999,1073881,1074719,1075621,1076477,1077337,1078219,1079101,1079987,1080983,1081859,1082717,1083613,1084493,1085353,1086203,1087091,1087987,1088851,1089703,1090553,1091413,1092269,1093159,1094029,1094887,1095793,1096673,1097557],by decide +kernel,by decide +kernel⟩,
⟨1097557,[1098541,1099369,1100219,1101103,1101967,1102847,1103723,1104613,1105463,1106363,1107203,1108073,1108957,1109821,1110713,1111577,1112471,1113373,1114241,1115117,1116107,1116989,1117861,1118749,1119623,1120481,1121369,1122241,1123093,1123961,1124869,1125763],by decide +kernel,by decide +kernel⟩,
⟨1125763,[1126597,1127461,1128313,1129169,1130039,1130863,1131751,1132603,1133513,1134487,1135367,1136237,1137109,1137991,1138967,1139869,1140859,1141757,1142599,1143481,1144357,1145227,1146083,1146947,1147819,1148701,1149593,1150447,1151317,1152163,1153063,1154051],by decide +kernel,by decide +kernel⟩,
⟨1154051,[1154927,1155907,1156819,1157713,1158569,1159447,1160429,1161317,1162219,1163083,1163971,1164799,1165643,1166507,1167359,1168187,1169081,1169939,1170821,1171661,1172533,1173407,1174273,1175149,1175989,1176881,1177751,1178659,1179553,1180427,1181281,1182253],by decide +kernel,by decide +kernel⟩,
⟨1182253,[1183151,1184143,1185017,1185889,1186769,1187639,1188529,1189387,1190263,1191131,1191991,1192883,1193743,1194601,1195589,1196471,1197367,1198247,1199137,1200007,1200883,1201729,1202609,1203467,1204337,1205231,1206229,1207123,1208117,1209053,1209889,1210717],by decide +kernel,by decide +kernel⟩,
⟨1210717,[1211621,1212613,1213483,1214371,1215229,1216091,1216973,1217861,1218761,1219663,1220507,1221379,1222219,1223093,1223953,1224809,1225691,1226593,1227497,1228373,1229203,1230071,1230913,1231807,1232719,1233611,1234463,1235327,1236173,1237063,1237919,1238801],by decide +kernel,by decide +kernel⟩,
⟨1238801,[1239661,1240543,1241381,1242289,1243181,1244041,1245037,1245883,1246757,1247627,1248503,1249397,1250281,1251161,1252129,1252997,1253851,1254739,1255609,1256449,1257313,1258183,1259057,1259953,1260827,1261649,1262491,1263373,1264213,1265093,1265981,1266851],by decide +kernel,by decide +kernel⟩,
⟨1266851,[1267711,1268593,1269493,1270333,1271213,1272079,1272919,1273739,1274621,1275467,1276361,1277267,1278163,1279021,1279877,1280833,1281703,1282577,1283417,1284263,1285159,1285993,1286881,1287751,1288613,1289513,1290379,1291249,1292149,1293031,1293869,1294823],by decide +kernel,by decide +kernel⟩,
⟨1294823,[1295681,1296551,1297451,1298333,1299187,1300073,1300963,1301851,1302739,1303633,1304503,1305401,1306273,1307161,1308011,1308911,1309769,1310657,1311523,1312393,1313239,1314133,1315037,1315907,1316779,1317671,1318553,1319443,1320437,1321319,1322203,1323053],by decide +kernel,by decide +kernel⟩,
⟨1323053,[1323923,1324783,1325633,1326511,1327387,1328231,1329109,1329971,1330831,1331683,1332553,1333457,1334297,1335167,1336039,1336927,1337813,1338703,1339577,1340459,1341323,1342181,1343059,1343941,1344829,1345711,1346603,1347473,1348357,1349189,1350073,1350911],by decide +kernel,by decide +kernel⟩,
⟨1350911,[1351799,1352669,1353551,1354393,1355243,1356109,1356973,1357901,1358783,1359739,1360631,1361497,1362371,1363223,1364101,1364971,1365919,1366753,1367647,1368529,1369373,1370227,1371113,1371949,1372799,1373689,1374559,1375421,1376257,1377137,1378033,1378943],by decide +kernel,by decide +kernel⟩,
⟨1378943,[1379821,1380679,1381559,1382449,1383323,1384193,1385039,1385929,1386787,1387783,1388659,1389551,1390421,1391287,1392277,1393159,1394021,1394893,1395871,1396723,1397609,1398497,1399381,1400261,1401083,1401977,1402847,1403693,1404671,1405531,1406389,1407229],by decide +kernel,by decide +kernel⟩,
⟨1407229,[1408067,1408889,1409753,1410599,1411481,1412363,1413253,1414129,1414999,1415851,1416691,1417583,1418449,1419317,1420303,1421191,1422023,1422899,1423759,1424603,1425491,1426343,1427227,1428109,1428953,1429843,1430717,1431601,1432493,1433371,1434259,1435121],by decide +kernel,by decide +kernel⟩,
⟨1435121,[1436111,1436957,1437841,1438667,1439561,1440449,1441331,1442159,1443007,1443859,1444823,1445713,1446587,1447471,1448309,1449193,1450073,1450931,1451929,1452809,1453681,1454549,1455439,1456289,1457147,1458049,1458911,1459793,1460653,1461517,1462427,1463303],by decide +kernel,by decide +kernel⟩,
⟨1463303,[1464179,1465007,1465901,1466747,1467611,1468459,1469323,1470199,1471033,1471937,1472791,1473677,1474579,1475567,1476463,1477339,1478231,1479139,1480099,1480991,1481899,1482763,1483637,1484537,1485383,1486271,1487131,1487989,1488847,1489841,1490711,1491547],by decide +kernel,by decide +kernel⟩,
⟨1491547,[1492417,1493281,1494161,1495019,1495867,1496753,1497619,1498513,1499369,1500241,1501081,1501961,1502869,1503767,1504651,1505521,1506371,1507229,1508081,1508933,1509779,1510669,1511539,1512383,1513229,1514101,1514971,1515847,1516709,1517603,1518463,1519333],by decide +kernel,by decide +kernel⟩,
⟨1519333,[1520173,1521067,1521913,1522789,1523671,1524533,1525409,1526269,1527157,1528019,1528999,1529867,1530703,1531561,1532413,1533293,1534153,1535011,1535879,1536737,1537729,1538617,1539479,1540337,1541191,1542043,1542911,1543909,1544903,1545799,1546679,1547573],by decide +kernel,by decide +kernel⟩,
⟨1547573,[1548433,1549283,1550141,1551019,1551917,1552781,1553653,1554529,1555423,1556329,1557313,1558189,1559059,1559933,1560913,1561759,1562753,1563649,1564543,1565413,1566289,1567133,1567999,1568867,1569731,1570603,1571477,1572379,1573237,1574107,1574957,1575829],by decide +kernel,by decide +kernel⟩,
⟨1575829,[1576721,1577567,1578439,1579321,1580177,1581079,1581929,1582799,1583689,1584577,1585547,1586437,1587301,1588163,1589017,1589899,1590739,1591621,1592609,1593481,1594477,1595357,1596229,1597187,1598053,1598923,1599889,1600789,1601671,1602529,1603421,1604311],by decide +kernel,by decide +kernel⟩,
⟨1604311,[1605199,1606153,1607029,1607873,1608707,1609589,1610431,1611319,1612213,1613201,1614191,1615049,1615891,1616749,1617589,1618489,1619341,1620217,1621097,1622081,1622953,1623847,1624699,1625551,1626437,1627309,1628161,1629031,1629899,1630897,1631761,1632619],by decide +kernel,by decide +kernel⟩,
⟨1632619,[1633459,1634341,1635199,1636079,1636937,1637927,1638913,1639793,1640641,1641473,1642327,1643197,1644073,1644931,1645771,1646647,1647523,1648429,1649327,1650221,1651093,1652089,1652947,1653791,1654703,1655573,1656427,1657303,1658161,1658989,1659851,1660699],by decide +kernel,by decide +kernel⟩,
⟨1660699,[1661677,1662581,1663481,1664461,1665343,1666237,1667077,1667959,1668847,1669727,1670717,1671689,1672651,1673489,1674353,1675217,1676111,1676993,1677887,1678777,1679683,1680557,1681423,1682257,1683089,1683949,1684843,1685681,1686551,1687549,1688443,1689343],by decide +kernel,by decide +kernel⟩,
⟨1689343,[1690231,1691113,1692023,1692883,1693777,1694647,1695527,1696423,1697419,1698313,1699223,1700099,1700983,1701829,1702721,1703593,1704463,1705331,1706191,1707163,1708067,1708909,1709789,1710677,1711519,1712371,1713251,1714091,1714963,1715807,1716703,1717687],by decide +kernel,by decide +kernel⟩,
⟨1717687,[1718573,1719413,1720307,1721149,1722037,1722923,1723903,1724791,1725641,1726513,1727339,1728229,1729129,1730119,1731013,1731893,1732763,1733623,1734463,1735361,1736233,1737103,1737959,1738843,1739741,1740623,1741477,1742369,1743241,1744111,1744993,1745897],by decide +kernel,by decide +kernel⟩,
⟨1745897,[1746737,1747619,1748473,1749359,1750253,1751117,1752001,1752871,1753753,1754639,1755629,1756499,1757491,1758371,1759231,1760117,1760981,1761857,1762751,1763627,1764487,1765369,1766231,1767121,1767979,1768853,1769701,1770589,1771463,1772297,1773173,1774067],by decide +kernel,by decide +kernel⟩,
⟨1774067,[1774939,1775777,1776683,1777553,1778423,1779289,1780133,1781009,1781881,1782769,1783619,1784459,1785331,1786223,1787089,1787953,1788949,1789787,1790623,1791473,1792319,1793203,1794053,1794913,1795793,1796677,1797673,1798571,1799453,1800343,1801223,1802113],by decide +kernel,by decide +kernel⟩]

def ad1 : List (Part addEdge) := [
⟨1802113,[1803103,1804073,1804973,1805857,1806769,1807643,1808507,1809391,1810219,1811107,1811993,1812871,1813741,1814611,1815467,1816337,1817213,1818067,1818923,1819759,1820647,1821509,1822391,1823231,1824077,1824947,1825829,1826819,1827703,1828583,1829441,1830287],by decide +kernel,by decide +kernel⟩,
⟨1830287,[1831171,1832057,1833023,1833883,1834783,1835651,1836647,1837541,1838407,1839317,1840183,1841057,1841941,1842793,1843649,1844537,1845379,1846261,1847129,1848013,1848877,1849759,1850609,1851503,1852373,1853339,1854163,1855039,1855933,1856773,1857617,1858459],by decide +kernel,by decide +kernel⟩,
⟨1858459,[1859323,1860197,1861103,1861927,1862797,1863683,1864571,1865447,1866307,1867193,1868063,1868947,1869793,1870669,1871561,1872473,1873321,1874189,1875061,1875901,1876781,1877621,1878493,1879477,1880467,1881343,1882247,1883129,1884121,1884973,1885847,1886701],by decide +kernel,by decide +kernel⟩,
⟨1886701,[1887577,1888463,1889317,1890173,1891049,1891909,1892783,1893757,1894609,1895501,1896353,1897219,1898053,1898921,1899769,1900667,1901507,1902403,1903271,1904143,1904999,1905863,1906739,1907611,1908499,1909381,1910269,1911121,1911961,1912843,1913719,1914593],by decide +kernel,by decide +kernel⟩,
⟨1914593,[1915471,1916363,1917203,1918079,1919063,1920049,1920923,1921813,1922689,1923547,1924409,1925257,1926097,1926973,1927867,1928753,1929649,1930493,1931323,1932197,1933103,1933931,1934797,1935641,1936523,1937389,1938257,1939151,1939999,1940849,1941739,1942571],by decide +kernel,by decide +kernel⟩,
⟨1942571,[1943443,1944401,1945303,1946299,1947151,1948021,1948909,1949741,1950629,1951501,1952381,1953277,1954159,1955047,1955893,1956737,1957729,1958603,1959599,1960481,1961347,1962211,1963081,1963921,1964773,1965647,1966619,1967501,1968383,1969249,1970083,1970959],by decide +kernel,by decide +kernel⟩,
⟨1970959,[1971833,1972721,1973597,1974457,1975321,1976173,1977023,1977863,1978741,1979617,1980469,1981349,1982219,1983103,1983931,1984921,1985803,1986683,1987523,1988411,1989277,1990253,1991153,1991999,1992983,1993877,1994743,1995611,1996487,1997351,1998251,1999121],by decide +kernel,by decide +kernel⟩,
⟨1999121,[2000003,2000863,2001731,2002579,2003447,2004313,2005193,2006087,2007067,2007961,2008823,2009719,2010583,2011441,2012299,2013181,2014081,2014921,2015801,2016673,2017549,2018413,2019317,2020181,2021009,2021879,2022767,2023753,2024599,2025593,2026487,2027359],by decide +kernel,by decide +kernel⟩,
⟨2027359,[2028241,2029123,2030009,2030881,2031767,2032621,2033461,2034343,2035213,2036051,2036929,2037803,2038661,2039509,2040377,2041231,2042059,2042933,2043817,2044697,2045557,2046553,2047403,2048243,2049107,2049977,2050823,2051689,2052553,2053427,2054369,2055253],by decide +kernel,by decide +kernel⟩,
⟨2055253,[2056111,2056963,2057813,2058653,2059517,2060407,2061247,2062153,2063003,2063881,2064767,2065597,2066473,2067349,2068211,2069051,2069941,2070931,2071801,2072663,2073521,2074351,2075209,2076089,2076973,2077861,2078731,2079617,2080609,2081491,2082341,2083199],by decide +kernel,by decide +kernel⟩,
⟨2083199,[2084051,2084921,2085899,2086759,2087627,2088479,2089361,2090251,2091227,2092133,2093029,2093881,2094847,2095727,2096569,2097427,2098289,2099147,2100011,2100913,2101789,2102651,2103553,2104423,2105287,2106107,2106991,2107979,2108881,2109761,2110637,2111497],by decide +kernel,by decide +kernel⟩,
⟨2111497,[2112353,2113211,2114113,2114977,2115863,2116717,2117597,2118449,2119319,2120203,2121199,2122031,2122873,2123761,2124679,2125567,2126447,2127319,2128183,2129027,2129903,2130901,2131793,2132659,2133541,2134373,2135227,2136091,2137073,2137921,2138909,2139757],by decide +kernel,by decide +kernel⟩,
⟨2139757,[2140637,2141497,2142403,2143279,2144143,2145047,2146009,2146853,2147699,2148583,2149421,2150399,2151283,2152169,2153051,2153909,2154749,2155627,2156461,2157343,2158237,2159093,2160061,2160953,2161823,2162717,2163613,2164471,2165327,2166319,2167289,2168149],by decide +kernel,by decide +kernel⟩,
⟨2168149,[2169031,2169883,2170783,2171777,2172641,2173531,2174423,2175311,2176171,2177167,2177999,2178829,2179693,2180569,2181449,2182441,2183303,2184179,2185009,2185907,2186809,2187697,2188583,2189461,2190347,2191199,2192063,2192941,2193769,2194639,2195527,2196413],by decide +kernel,by decide +kernel⟩,
⟨2196413,[2197253,2198137,2198981,2199833,2200727,2201723,2202617,2203519,2204383,2205251,2206249,2207123,2207969,2208823,2209703,2210573,2211413,2212247,2213243,2214103,2215091,2216047,2216941,2217799,2218771,2219641,2220503,2221343,2222219,2223101,2224099,2224979],by decide +kernel,by decide +kernel⟩,
⟨2224979,[2225863,2226733,2227609,2228507,2229349,2230243,2231107,2231941,2232793,2233657,2234513,2235403,2236279,2237171,2238043,2238931,2239759,2240647,2241539,2242381,2243221,2244167,2245043,2245889,2246749,2247611,2248469,2249311,2250167,2251163,2252017,2252867],by decide +kernel,by decide +kernel⟩,
⟨2252867,[2253739,2254627,2255501,2256379,2257247,2258119,2258987,2259853,2260733,2261621,2262451,2263321,2264153,2265019,2265841,2266697,2267563,2268451,2269343,2270341,2271163,2272019,2272903,2273783,2274653,2275513,2276411,2277259,2278093,2278981,2279843,2280709],by decide +kernel,by decide +kernel⟩,
⟨2280709,[2281579,2282459,2283319,2284213,2285099,2285981,2286847,2287739,2288633,2289461,2290459,2291353,2292181,2293069,2293937,2294807,2295703,2296699,2297593,2298493,2299357,2300239,2301107,2301977,2302841,2303713,2304563,2305487,2306453,2307307,2308183,2309179],by decide +kernel,by decide +kernel⟩,
⟨2309179,[2310067,2310953,2311823,2312701,2313601,2314439,2315317,2316179,2317057,2317921,2318777,2319659,2320547,2321443,2322283,2323177,2324171,2325061,2325881,2326733,2327603,2328479,2329331,2330227,2331191,2332181,2333041,2333909,2334803,2335661,2336573,2337571],by decide +kernel,by decide +kernel⟩,
⟨2337571,[2338421,2339303,2340133,2340983,2341861,2342723,2343589,2344471,2345327,2346167,2347043,2347907,2348779,2349679,2350529,2351357,2352227,2353129,2353993,2354873,2355763,2356621,2357483,2358353,2359223,2360101,2360971,2361959,2362819,2363681,2364679,2365523],by decide +kernel,by decide +kernel⟩,
⟨2365523,[2366389,2367221,2368129,2368997,2369867,2370737,2371609,2372479,2373337,2374189,2375047,2375921,2376809,2377673,2378549,2379413,2380303,2381191,2382181,2383049,2383933,2384771,2385637,2386493,2387353,2388187,2389067,2389939,2390831,2391709,2392591,2393473],by decide +kernel,by decide +kernel⟩,
⟨2393473,[2394383,2395213,2396063,2396941,2397793,2398789,2399671,2400521,2401393,2402233,2403091,2403941,2404823,2405707,2406557,2407529,2408389,2409229,2410081,2410949,2411821,2412671,2413553,2414443,2415319,2416307,2417153,2418109,2418967,2419939,2420813,2421707],by decide +kernel,by decide +kernel⟩,
⟨2421707,[2422561,2423429,2424287,2425139,2425981,2426833,2427701,2428577,2429459,2430343,2431223,2432119,2433113,2434013,2434879,2435753,2436613,2437507,2438383,2439247,2440091,2440973,2441867,2442719,2443601,2444473,2445353,2446207,2447161,2448013,2448883,2449757],by decide +kernel,by decide +kernel⟩,
⟨2449757,[2450633,2451499,2452357,2453233,2454107,2454961,2455823,2456807,2457667,2458553,2459393,2460281,2461153,2462041,2462899,2463779,2464669,2465543,2466407,2467277,2468143,2468971,2469847,2470757,2471753,2472737,2473633,2474611,2475593,2476567,2477561,2478407],by decide +kernel,by decide +kernel⟩,
⟨2478407,[2479283,2480171,2481047,2481877,2482757,2483641,2484491,2485393,2486273,2487143,2488009,2488909,2489777,2490661,2491523,2492383,2493259,2494123,2494993,2495839,2496737,2497603,2498453,2499449,2500339,2501171,2502011,2502917,2503759,2504611,2505487,2506313],by decide +kernel,by decide +kernel⟩,
⟨2506313,[2507149,2508017,2508871,2509721,2510581,2511473,2512343,2513209,2514059,2514917,2515757,2516603,2517469,2518357,2519197,2520031,2520853,2521847,2522717,2523593,2524591,2525473,2526317,2527297,2528167,2529013,2529899,2530777,2531653,2532527,2533397,2534243],by decide +kernel,by decide +kernel⟩,
⟨2534243,[2535121,2535983,2536873,2537701,2538589,2539469,2540341,2541233,2542103,2542933,2543813,2544811,2545703,2546569,2547431,2548333,2549219,2550083,2550973,2551823,2552713,2553611,2554481,2555363,2556233,2557127,2557967,2558861,2559751,2560639,2561521,2562383],by decide +kernel,by decide +kernel⟩,
⟨2562383,[2563261,2564123,2564957,2565809,2566699,2567569,2568431,2569267,2570137,2571011,2571851,2572699,2573591,2574433,2575327,2576209,2577083,2577947,2578819,2579693,2580521,2581429,2582257,2583131,2583979,2584877,2585743,2586721,2587709,2588591,2589473,2590349],by decide +kernel,by decide +kernel⟩,
⟨2590349,[2591233,2592103,2592983,2593859,2594723,2595559,2596553,2597407,2598317,2599297,2600161,2601041,2601869,2602741,2603621,2604617,2605501,2606353,2607217,2608037,2608933,2609813,2610679,2611573,2612549,2613547,2614397,2615383,2616241,2617103,2617961,2618813],by decide +kernel,by decide +kernel⟩,
⟨2618813,[2619691,2620577,2621569,2622419,2623289,2624173,2625169,2626051,2626937,2627837,2628683,2629519,2630389,2631283,2632187,2633083,2633947,2634833,2635819,2636701,2637553,2638411,2639291,2640137,2640997,2641993,2642897,2643791,2644627,2645479,2646361,2647193],by decide +kernel,by decide +kernel⟩,
⟨2647193,[2648057,2648911,2649769,2650603,2651471,2652313,2653193,2654083,2654963,2655841,2656729,2657609,2658463,2659343,2660183,2661181,2662027,2662903,2663783,2664661,2665547,2666393,2667383,2668363,2669281,2670131,2670973,2671849,2672731,2673577,2674487,2675441],by decide +kernel,by decide +kernel⟩,
⟨2675441,[2676313,2677159,2678041,2678909,2679773,2680661,2681561,2682397,2683223,2684083,2684959,2685827,2686669,2687537,2688529,2689369,2690263,2691131,2691959,2692801,2693671,2694541,2695411,2696299,2697179,2698001,2698867,2699713,2700601,2701459,2702327,2703199],by decide +kernel,by decide +kernel⟩,
⟨2703199,[2704067,2704931,2705821,2706701,2707559,2708443,2709323,2710193,2711089,2711941,2712769,2713673,2714659,2715551,2716523,2717369,2718241,2719231,2720117,2720987,2721947,2722801,2723687,2724583,2725553,2726411,2727253,2728097,2728981,2729861,2730713,2731559],by decide +kernel,by decide +kernel⟩,
⟨2731559,[2732449,2733331,2734187,2735153,2735983,2736869,2737727,2738573,2739437,2740421,2741303,2742163,2743057,2743943,2744783,2745643,2746511,2747389,2748257,2749133,2750071,2750963,2751857,2752697,2753599,2754481,2755471,2756339,2757229,2758099,2758949,2759803],by decide +kernel,by decide +kernel⟩,
⟨2759803,[2760671,2761559,2762447,2763317,2764187,2765053,2765891,2766727,2767603,2768461,2769343,2770267,2771147,2772019,2772883,2773759,2774599,2775469,2776309,2777213,2778091,2778967,2779811,2780693,2781521,2782397,2783227,2784113,2785051,2786041,2786923,2787781],by decide +kernel,by decide +kernel⟩,
⟨2787781,[2788633,2789503,2790497,2791379,2792249,2793239,2794093,2794963,2795809,2796707,2797589,2798461,2799299,2800159,2801047,2801921,2802797,2803651,2804509,2805403,2806277,2807141,2807977,2808863,2809717,2810597,2811439,2812331,2813191,2814179,2815009,2815861],by decide +kernel,by decide +kernel⟩,
⟨2815861,[2816717,2817623,2818513,2819413,2820313,2821183,2822033,2822923,2823811,2824651,2825479,2826337,2827241,2828113,2828993,2829889,2830787,2831677,2832569,2833463,2834347,2835221,2836081,2836973,2837803,2838769,2839657,2840507,2841373,2842253,2843119,2843969],by decide +kernel,by decide +kernel⟩,
⟨2843969,[2844833,2845673,2846539,2847389,2848381,2849233,2850223,2851111,2851991,2852879,2853709,2854571,2855443,2856283,2857123,2857973,2858833,2859677,2860499,2861363,2862227,2863079,2863921,2864909,2865803,2866691,2867633,2868497,2869369,2870249,2871139,2871991],by decide +kernel,by decide +kernel⟩,
⟨2871991,[2872973,2873851,2874841,2875709,2876593,2877487,2878361,2879257,2880239,2881061,2881897,2882777,2883641,2884513,2885353,2886199,2887081,2888059,2888917,2889781,2890649,2891509,2892371,2893211,2894071,2894951,2895821,2896667,2897533,2898421,2899279,2900119],by decide +kernel,by decide +kernel⟩,
⟨2900119,[2901001,2901989,2902831,2903699,2904533,2905421,2906291,2907143,2907997,2908861,2909749,2910617,2911511,2912369,2913247,2914139,2915027,2915903,2916787,2917667,2918507,2919383,2920249,2921239,2922133,2923043,2923903,2924791,2925641,2926519,2927473,2928319],by decide +kernel,by decide +kernel⟩,
⟨2928319,[2929189,2930033,2930911,2931751,2932609,2933479,2934313,2935171,2936039,2936933,2937827,2938717,2939579,2940449,2941297,2942141,2943001,2943887,2944763,2945611,2946479,2947339,2948189,2949077,2949931,2950793,2951629,2952511,2953373,2954233,2955131,2956013],by decide +kernel,by decide +kernel⟩,
⟨2956013,[2956841,2957687,2958563,2959447,2960317,2961149,2962033,2962907,2963743,2964617,2965579,2966419,2967277,2968139,2968967,2969821,2970701,2971699,2972551,2973437,2974297,2975183,2976023,2976893,2977753,2978629,2979497,2980391,2981263,2982143,2982997,2983879],by decide +kernel,by decide +kernel⟩,
⟨2983879,[2984777,2985673,2986547,2987429,2988281,2989141,2990137,2990957,2991803,2992687,2993527,2994503,2995351,2996219,2997091,2997959,2998841,2999707,3000553,3001421,3002281,3003157,3003997,3004901,3005809,3006649,3007547,3008393,3009271,3010123,3010981,3011843],by decide +kernel,by decide +kernel⟩,
⟨3011843,[3012727,3013601,3014461,3015343,3016241,3017099,3017983,3018949,3019811,3020687,3021649,3022517,3023357,3024193,3025049,3025927,3026789,3027643,3028541,3029447,3030331,3031201,3032047,3032879,3033763,3034613,3035587,3036463,3037343,3038219,3039193,3040189],by decide +kernel,by decide +kernel⟩,
⟨3040189,[3041057,3041953,3042803,3043643,3044527,3045421,3046301,3047167,3048043,3048893,3049883,3050737,3051623,3052471,3053317,3054299,3055153,3056057,3056939,3057823,3058703,3059569,3060433,3061313,3062177,3063059,3063917,3064751,3065609,3066493,3067331,3068161],by decide +kernel,by decide +kernel⟩,
⟨3068161,[3069007,3069863,3070709,3071539,3072413,3073393,3074251,3075109,3075979,3076867,3077717,3078587,3079457,3080303,3081161,3082031,3082909,3083891,3084749,3085603,3086471,3087349,3088219,3089083,3089923,3090781,3091643,3092513,3093511,3094361,3095329,3096229],by decide +kernel,by decide +kernel⟩,
⟨3096229,[3097097,3098089,3099073,3099937,3100913,3101779,3102661,3103501,3104329,3105181,3106069,3106921,3107749,3108613,3109471,3110353,3111217,3112147,3113039,3113899,3114743,3115597,3116447,3117299,3118183,3119023,3119903,3120791,3121667,3122563,3123413,3124279],by decide +kernel,by decide +kernel⟩,
⟨3124279,[3125219,3126103,3127081,3127937,3128813,3129641,3130513,3131419,3132299,3133153,3134029,3134903,3135773,3136657,3137531,3138403,3139231,3140099,3140981,3141959,3142837,3143813,3144707,3145577,3146431,3147269,3148157,3149051,3149929,3150799,3151789,3152627],by decide +kernel,by decide +kernel⟩,
⟨3152627,[3153499,3154387,3155221,3156107,3157001,3157853,3158717,3159577,3160427,3161309,3162167,3163067,3163969,3164827,3165707,3166577,3167429,3168289,3169121,3169981,3170933,3171793,3172681,3173561,3174419,3175259,3176149,3177017,3177919,3178793,3179653,3180521],by decide +kernel,by decide +kernel⟩,
⟨3180521,[3181411,3182261,3183119,3183991,3184969,3185821,3186697,3187609,3188483,3189371,3190249,3191099,3191987,3192887,3193717,3194573,3195433,3196307,3197143,3198031,3199013,3199997,3200861,3201727,3202607,3203461,3204307,3205297,3206143,3207019,3207913,3208729],by decide +kernel,by decide +kernel⟩,
⟨3208729,[3209623,3210479,3211367,3212353,3213283,3214147,3215021,3215893,3216751,3217741,3218587,3219479,3220471,3221321,3222301,3223189,3224077,3224909,3225853,3226711,3227551,3228403,3229243,3230093,3231049,3231953,3232837,3233687,3234551,3235411,3236267,3237139],by decide +kernel,by decide +kernel⟩,
⟨3237139,[3237991,3238861,3239857,3240737,3241573,3242431,3243293,3244187,3245063,3245951,3246799,3247687,3248561,3249443,3250333,3251207,3252091,3252943,3253813,3254689,3255671,3256531,3257413,3258391,3259253,3260149,3261029,3261911,3262769,3263647,3264491,3265369],by decide +kernel,by decide +kernel⟩,
⟨3265369,[3266269,3267139,3267973,3268871,3269723,3270607,3271601,3272587,3273421,3274291,3275179,3276083,3277067,3277943,3278833,3279709,3280703,3281573,3282563,3283451,3284341,3285203,3286097,3286957,3287813,3288713,3289597,3290459,3291341,3292183,3293057,3293923],by decide +kernel,by decide +kernel⟩,
⟨3293923,[3294791,3295771,3296603,3297433,3298297,3299161,3300041,3300923,3301787,3302617,3303449,3304331,3305227,3306091,3306991,3307973,3308819,3309721,3310547,3311411,3312389,3313267,3314147,3315007,3315883,3316723,3317719,3318613,3319447,3320311,3321151,3322043],by decide +kernel,by decide +kernel⟩,
⟨3322043,[3322931,3323869,3324757,3325631,3326507,3327377,3328231,3329087,3329981,3330809,3331673,3332507,3333401,3334337,3335201,3336181,3337013,3337847,3338719,3339607,3340459,3341449,3342331,3343309,3344303,3345263,3346139,3346999,3347867,3348733,3349613,3350453],by decide +kernel,by decide +kernel⟩,
⟨3350453,[3351301,3352187,3353069,3353927,3354787,3355643,3356539,3357413,3358301,3359287,3360173,3361049,3362017,3363011,3363859,3364763,3365633,3366497,3367387,3368269,3369131,3370009,3370883,3371747,3372601,3373453,3374297,3375167,3376049,3376949,3377837,3378731],by decide +kernel,by decide +kernel⟩,
⟨3378731,[3379613,3380497,3381361,3382243,3383137,3383999,3384883,3385763,3386611,3387473,3388361,3389339,3390239,3391237,3392219,3393053,3393893,3394771,3395603,3396439,3397343,3398221,3399089,3399943,3400919,3401777,3402649,3403523,3404399,3405263,3406153,3407003],by decide +kernel,by decide +kernel⟩,
⟨3407003,[3407857,3408707,3409529,3410419,3411313,3412187,3413021,3413897,3414769,3415627,3416503,3417353,3418249,3419201,3420047,3420919,3421751,3422621,3423487,3424363,3425297,3426169,3427027,3427891,3428783,3429661,3430523,3431353,3432257,3433153,3433979,3434933],by decide +kernel,by decide +kernel⟩,
⟨3434933,[3435799,3436681,3437561,3438469,3439343,3440189,3441077,3441967,3442807,3443683,3444569,3445567,3446383,3447251,3448121,3448997,3449903,3450791,3451781,3452627,3453479,3454343,3455213,3456107,3456977,3457819,3458687,3459541,3460427,3461329,3462187,3463069],by decide +kernel,by decide +kernel⟩,
⟨3463069,[3463939,3464827,3465673,3466549,3467543,3468379,3469247,3470113,3471011,3471901,3472771,3473623,3474517,3475391,3476257,3477091,3477977,3478847,3479743,3480623,3481519,3482389,3483241,3484123,3485077,3485957,3486829,3487661,3488501,3489373,3490229,3491071],by decide +kernel,by decide +kernel⟩,
⟨3491071,[3491951,3492823,3493727,3494627,3495469,3496351,3497231,3498211,3499099,3499973,3500873,3501863,3502711,3503579,3504467,3505363,3506213,3507059,3507901,3508889,3509773,3510623,3511603,3512501,3513371,3514243,3515101,3515977,3516923,3517799,3518693,3519559],by decide +kernel,by decide +kernel⟩,
⟨3519559,[3520427,3521303,3522191,3523159,3523997,3524971,3525833,3526693,3527549,3528409,3529259,3530113,3531001,3531841,3532721,3533581,3534547,3535459,3536341,3537337,3538219,3539167,3540041,3540931,3541817,3542677,3543523,3544357,3545239,3546061,3546929,3547823],by decide +kernel,by decide +kernel⟩,
⟨3547823,[3548689,3549517,3550373,3551239,3552103,3552977,3553967,3554963,3555833,3556691,3557563,3558421,3559279,3560159,3560993,3561853,3562733,3563569,3564443,3565337,3566327,3567283,3568163,3569021,3569897,3570767,3571651,3572599,3573529,3574411,3575291,3576163],by decide +kernel,by decide +kernel⟩,
⟨3576163,[3577037,3577877,3578741,3579703,3580697,3581551,3582437,3583417,3584327,3585173,3586021,3586909,3587891,3588773,3589721,3590623,3591487,3592447,3593377,3594223,3595103,3595973,3596959,3597817,3598703,3599663,3600539,3601427,3602309,3603169,3604163,3605051],by decide +kernel,by decide +kernel⟩]

def ad2 : List (Part addEdge) := [
⟨3605051,[3605923,3606781,3607649,3608531,3609433,3610303,3611129,3612121,3612967,3613871,3614867,3615743,3616583,3617443,3618283,3619159,3620021,3621011,3621889,3622747,3623597,3624473,3625361,3626221,3627079,3627947,3628847,3629749,3630643,3631519,3632383,3633263],by decide +kernel,by decide +kernel⟩,
⟨3633263,[3634097,3634963,3635803,3636683,3637523,3638521,3639397,3640249,3641119,3642101,3642971,3643859,3644831,3645737,3646603,3647599,3648493,3649363,3650233,3651191,3652031,3652939,3653911,3654757,3655633,3656491,3657361,3658201,3659069,3660037,3660919,3661781],by decide +kernel,by decide +kernel⟩,
⟨3661781,[3662657,3663563,3664447,3665329,3666197,3667063,3667919,3668807,3669709,3670603,3671501,3672379,3673277,3674129,3674989,3675829,3676667,3677567,3678461,3679339,3680213,3681043,3681889,3682709,3683677,3684553,3685403,3686239,3687097,3687941,3688801,3689689],by decide +kernel,by decide +kernel⟩,
⟨3689689,[3690571,3691403,3692263,3693211,3694039,3694913,3695773,3696643,3697487,3698311,3699203,3700187,3701077,3701939,3702823,3703691,3704599,3705469,3706309,3707203,3708049,3708893,3709759,3710647,3711497,3712381,3713263,3714259,3715253,3716143,3717011,3717859],by decide +kernel,by decide +kernel⟩,
⟨3717859,[3718681,3719567,3720427,3721303,3722293,3723121,3723959,3724849,3725753,3726631,3727489,3728371,3729241,3730093,3730967,3731803,3732691,3733549,3734443,3735323,3736219,3737057,3737933,3738781,3739663,3740537,3741407,3742301,3743141,3744031,3744869,3745723],by decide +kernel,by decide +kernel⟩,
⟨3745723,[3746581,3747547,3748417,3749293,3750199,3751103,3752093,3752939,3753793,3754789,3755677,3756559,3757463,3758341,3759221,3760193,3761047,3761929,3762799,3763667,3764503,3765373,3766253,3767123,3767987,3768847,3769709,3770539,3771529,3772493,3773321,3774203],by decide +kernel,by decide +kernel⟩,
⟨3774203,[3775201,3776093,3776957,3777853,3778681,3779539,3780433,3781313,3782201,3783053,3783893,3784757,3785753,3786647,3787501,3788333,3789197,3790069,3790933,3791911,3792781,3793649,3794537,3795427,3796283,3797281,3798131,3799013,3799837,3800723,3801599,3802583],by decide +kernel,by decide +kernel⟩,
⟨3802583,[3803419,3804301,3805171,3806029,3806981,3807941,3808913,3809777,3810679,3811547,3812399,3813233,3814123,3814997,3815893,3816737,3817579,3818473,3819371,3820237,3821057,3821911,3822779,3823627,3824519,3825413,3826367,3827249,3828133,3828973,3829853,3830737],by decide +kernel,by decide +kernel⟩,
⟨3830737,[3831733,3832597,3833591,3834451,3835303,3836171,3837049,3837923,3838801,3839683,3840541,3841381,3842269,3843137,3844121,3844999,3845887,3846877,3847783,3848623,3849499,3850403,3851389,3852323,3853321,3854203,3855083,3855937,3856813,3857683,3858671,3859529],by decide +kernel,by decide +kernel⟩,
⟨3859529,[3860387,3861259,3862109,3863107,3863971,3864841,3865691,3866651,3867503,3868399,3869297,3870173,3871013,3871871,3872731,3873577,3874417,3875281,3876161,3877151,3878003,3878893,3879751,3880603,3881467,3882407,3883309,3884183,3885019,3885859,3886717,3887581],by decide +kernel,by decide +kernel⟩,
⟨3887581,[3888431,3889261,3890149,3890981,3891883,3892753,3893609,3894593,3895583,3896413,3897269,3898123,3899117,3899989,3900881,3901741,3902579,3903461,3904309,3905177,3906061,3906911,3907781,3908659,3909533,3910427,3911279,3912263,3913139,3914011,3914873,3915731],by decide +kernel,by decide +kernel⟩,
⟨3915731,[3916637,3917623,3918589,3919457,3920311,3921161,3922033,3922871,3923723,3924593,3925459,3926323,3927307,3928189,3929063,3930061,3930923,3931817,3932689,3933557,3934451,3935333,3936227,3937201,3938087,3938971,3939811,3940697,3941537,3942413,3943283,3944141],by decide +kernel,by decide +kernel⟩,
⟨3944141,[3944987,3945983,3946853,3947693,3948673,3949541,3950393,3951263,3952127,3952997,3953849,3954719,3955603,3956471,3957341,3958243,3959237,3960083,3960941,3961813,3962671,3963569,3964421,3965317,3966173,3967057,3967913,3968743,3969611,3970493,3971333,3972193],by decide +kernel,by decide +kernel⟩,
⟨3972193,[3973061,3973933,3974801,3975677,3976573,3977419,3978283,3979219,3980071,3980891,3981767,3982763,3983747,3984653,3985621,3986473,3987353,3988331,3989171,3990047,3991037,3991891,3992771,3993617,3994453,3995281,3996107,3997003,3997849,3998719,3999599,4000489],by decide +kernel,by decide +kernel⟩,
⟨4000489,[4001383,4002247,4003133,4004089,4004989,4005847,4006729,4007623,4008461,4009333,4010203,4011061,4011929,4012783,4013641,4014497,4015339,4016203,4017089,4017977,4018799,4019693,4020529,4021411,4022297,4023181,4024063,4025057,4025899,4026791,4027643,4028491],by decide +kernel,by decide +kernel⟩,
⟨4028491,[4029341,4030189,4031047,4031903,4032733,4033597,4034489,4035359,4036229,4037083,4037981,4038857,4039741,4040593,4041419,4042271,4043129,4044077,4044917,4045787,4046671,4047647,4048523,4049401,4050253,4051121,4052107,4052969,4053851,4054741,4055599,4056467],by decide +kernel,by decide +kernel⟩,
⟨4056467,[4057343,4058209,4059113,4059947,4060769,4061609,4062493,4063363,4064227,4065073,4065947,4066801,4067647,4068503,4069397,4070267,4071157,4072009,4072867,4073731,4074613,4075507,4076363,4077239,4078117,4079003,4079837,4080719,4081579,4082413,4083269,4084109],by decide +kernel,by decide +kernel⟩,
⟨4084109,[4084937,4085803,4086683,4087673,4088563,4089439,4090309,4091257,4092113,4092983,4093861,4094731,4095577,4096073],by decide +kernel,by decide +kernel⟩]

def aparts : List (Part addEdge) := List.flatten [ad0,ad1,ad2]

theorem achain : Chain addEdge 2 4096073 :=
  join_sound (ss:=aparts) (by decide) (by decide +kernel)

def rd0 : List (Part ratioEdge) := [
⟨4096073,[4096933,4097813,4098691,4099541,4100423,4101313,4102171,4103009,4103881,4104733,4105579,4106471,4107347,4108243,4109071,4109953,4110853,4111727,4112629,4113469,4114373,4115213,4116107,4117081,4117969,4118809,4119697,4120577,4121471,4122343,4123349,4124191],by decide +kernel,by decide +kernel⟩,
⟨4124191,[4125181,4126159,4127033,4127897,4128781,4129667,4130573,4131409,4132279,4133149,4134133,4135003,4135933,4136939,4137823,4138691,4139573,4140457,4141349,4142227,4143077,4143961,4144817,4145653,4146559,4147417,4148279,4149161,4150019,4150859,4151717,4152587],by decide +kernel,by decide +kernel⟩,
⟨4152587,[4153469,4154347,4155197,4156093,4156981,4157869,4158731,4159627,4160509,4161349,4162247,4163251,4164131,4164977,4165849,4166693,4167587,4168469,4169329,4170211,4171093,4171943,4172929,4173943,4174789,4175683,4176569,4177573,4178453,4179347,4180229,4181171],by decide +kernel,by decide +kernel⟩,
⟨4181171,[4182083,4182949,4183813,4184773,4185767,4186673,4187537,4188403,4189403,4190261,4191233,4192129,4193141,4194143,4195033,4196057,4196923,4197923,4198937,4199791,4200671,4201537,4202389,4203247,4204157,4205041,4205923,4206791,4207663,4208689,4209539,4210433],by decide +kernel,by decide +kernel⟩,
⟨4210433,[4211321,4212211,4213217,4214087,4215103,4215979,4216963,4217849,4218869,4219871,4220731,4221761,4222759,4223617,4224511,4225373,4226249,4227109,4228111,4229129,4229993,4230997,4232009,4232887,4233773,4234721,4235741,4236643,4237507,4238459,4239463,4240469],by decide +kernel,by decide +kernel⟩,
⟨4240469,[4241357,4242241,4243121,4244003,4245029,4246019,4246883,4247743,4248631,4249501,4250387,4251419,4252279,4253273,4254277,4255313,4256347,4257371,4258259,4259119,4260019,4261051,4262077,4262941,4263953,4264831,4265719,4266733,4267619,4268651,4269679,4270667],by decide +kernel,by decide +kernel⟩,
⟨4270667,[4271627,4272659,4273667,4274551,4275571,4276607,4277639,4278649,4279687,4280561,4281449,4282331,4283369,4284389,4285427,4286311,4287319,4288321,4289317,4290193,4291181,4292209,4293101,4294099,4294967,4295861,4296757,4297793,4298821,4299863,4300871,4301747],by decide +kernel,by decide +kernel⟩,
⟨4301747,[4302773,4303813,4304851,4305881,4306921,4307939,4308817,4309693,4310573,4311467,4312519,4313539,4314587,4315607,4316593,4317497,4318513,4319563,4320593,4321613,4322603,4323647,4324699,4325743,4326769,4327793,4328677,4329733,4330687,4331573,4332619,4333633],by decide +kernel,by decide +kernel⟩,
⟨4333633,[4334597,4335619,4336663,4337569,4338577,4339547,4340599,4341637,4342687,4343701,4344689,4345577,4346581,4347589,4348621,4349669,4350707,4351759,4352807,4353709,4354747,4355759,4356739,4357637,4358687,4359739,4360717,4361699,4362689,4363663,4364567,4365623],by decide +kernel,by decide +kernel⟩,
⟨4365623,[4366643,4367681,4368709,4369763,4370813,4371877,4372777,4373833,4374869,4375883,4376929,4377929,4378981,4380049,4381093,4382149,4383109,4384129,4385027,4385923,4386973,4388017,4389083,4390117,4391161,4392181,4393201,4394237,4395283,4396181,4397233,4398263],by decide +kernel,by decide +kernel⟩,
⟨4398263,[4399237,4400213,4401251,4402259,4403257,4404287,4405333,4406359,4407367,4408363,4409333,4410379,4411427,4412411,4413443,4414463,4415473,4416527,4417537,4418567,4419601,4420639,4421693,4422757,4423733,4424729,4425749,4426781,4427789,4428821,4429819,4430869],by decide +kernel,by decide +kernel⟩,
⟨4430869,[4431901,4432889,4433953,4434979,4435993,4437011,4438067,4439087,4440133,4441133,4442209,4443221,4444229,4445281,4446319,4447321,4448359,4449343,4450373,4451449,4452509,4453517,4454599,4455641,4456693,4457683,4458697,4459739,4460773,4461823,4462837,4463903],by decide +kernel,by decide +kernel⟩,
⟨4463903,[4464949,4465973,4466963,4468007,4469083,4470121,4471171,4472203,4473181,4474219,4475257,4476247,4477313,4478381,4479389,4480379,4481383,4482409,4483489,4484569,4485557,4486607,4487597,4488643,4489663,4490687,4491749,4492753,4493779,4494793,4495817,4496881],by decide +kernel,by decide +kernel⟩,
⟨4496881,[4497943,4498987,4500047,4501099,4502137,4503157,4504189,4505233,4506233,4507277,4508303,4509343,4510333,4511387,4512407,4513463,4514501,4515541,4516573,4517603,4518667,4519727,4520767,4521773,4522747,4523747,4524803,4525847,4526881,4527923,4528961,4529957],by decide +kernel,by decide +kernel⟩,
⟨4529957,[4531003,4532023,4533007,4534037,4535017,4536073,4537033,4538089,4539149,4540201,4541153,4542211,4543207,4544297,4545379,4546427,4547467,4548443,4549487,4550569,4551571,4552619,4553687,4554707,4555741,4556779,4557781,4558811,4559837,4560851,4561901,4562923],by decide +kernel,by decide +kernel⟩,
⟨4562923,[4563931,4564939,4566007,4566997,4568033,4569049,4570037,4571107,4572131,4573183,4574261,4575323,4576331,4577329,4578383,4579397,4580399,4581433,4582441,4583507,4584589,4585583,4586633,4587679,4588711,4589771,4590797,4591871,4592911,4593907,4594921,4595897],by decide +kernel,by decide +kernel⟩,
⟨4595897,[4596901,4597961,4598999,4600027,4601057,4602113,4603171,4604147,4605199,4606249,4607257,4608319,4609351,4610357,4611391,4612451,4613471,4614523,4615549,4616531,4617521,4618541,4619579,4620611,4621691,4622753,4623761,4624787,4625807,4626833,4627879,4628929],by decide +kernel,by decide +kernel⟩,
⟨4628929,[4629991,4630999,4632077,4633067,4634111,4635161,4636169,4637201,4638199,4639259,4640287,4641293,4642361,4643417,4644433,4645489,4646527,4647557,4648591,4649651,4650661,4651733,4652699,4653763,4654817,4655831,4656823,4657909,4658963,4660009,4661057,4662083],by decide +kernel,by decide +kernel⟩,
⟨4662083,[4663079,4664141,4665209,4666253,4667209,4668247,4669283,4670297,4671347,4672373,4673353,4674377,4675453,4676491,4677529,4678567,4679581,4680563,4681609,4682647,4683667,4684703,4685749,4686881,4687967,4689043,4690123,4691191,4692251,4693303,4694341,4695377],by decide +kernel,by decide +kernel⟩,
⟨4695377,[4696457,4697531,4698541,4699579,4700603,4701643,4702681,4703717,4704697,4705759,4706783,4707779,4708811,4709839,4710869,4711921,4712959,4714097,4715177,4716149,4717217,4718281,4719311,4720403,4721441,4722479,4723517,4724561,4725613,4726619,4727647,4728799],by decide +kernel,by decide +kernel⟩,
⟨4728799,[4729843,4730897,4731929,4732927,4733969,4734997,4736057,4737119,4738157,4739171,4740217,4741259,4742329,4743337,4744393,4745441,4746493,4747537,4748591,4749607,4750729,4751749,4752791,4753823,4754863,4755857,4756891,4757957,4758991,4760023,4761061,4762117],by decide +kernel,by decide +kernel⟩,
⟨4762117,[4763137,4764143,4765223,4766299,4767331,4768391,4769549,4770611,4771633,4772683,4773739,4774769,4775791,4776853,4778009,4779037,4780201,4781237,4782317,4783349,4784419,4785467,4786477,4787513,4788673,4789831,4790857,4791911,4793077,4794103,4795171,4796237],by decide +kernel,by decide +kernel⟩,
⟨4796237,[4797251,4798259,4799303,4800373,4801393,4802411,4803467,4804463,4805539,4806589,4807643,4808641,4809811,4810879,4812053,4813073,4814123,4815127,4816187,4817261,4818277,4819447,4820489,4821541,4822567,4823591,4824619,4825633,4826641,4827637,4828669,4829843],by decide +kernel,by decide +kernel⟩,
⟨4829843,[4831019,4832081,4833109,4834267,4835357,4836413,4837423,4838473,4839529,4840579,4841657,4842821,4843877,4844933,4845943,4847107,4848169,4849211,4850243,4851397,4852481,4853533,4854701,4855717,4856783,4857893,4858967,4859999,4861063,4862141,4863293,4864369],by decide +kernel,by decide +kernel⟩,
⟨4864369,[4865431,4866443,4867501,4868543,4869563,4870609,4871641,4872691,4873753,4874911,4875943,4876981,4878019,4879201,4880261,4881433,4882609,4883677,4884857,4886041,4887227,4888309,4889347,4890383,4891429,4892609,4893643,4894781,4895843,4896887,4897933,4898981],by decide +kernel,by decide +kernel⟩,
⟨4898981,[4900037,4901213,4902259,4903453,4904597,4905731,4906801,4907831,4908907,4910047,4911199,4912253,4913303,4914487,4915663,4916741,4917901,4918961,4920023,4921067,4922251,4923433,4924501,4925539,4926589,4927639,4928837,4929919,4930973,4932017,4933069,4934269],by decide +kernel,by decide +kernel⟩,
⟨4934269,[4935331,4936507,4937563,4938761,4939817,4940983,4942123,4943273,4944463,4945513,4946581,4947617,4948807,4949983,4951189,4952377,4953439,4954487,4955537,4956617,4957663,4958843,4960049,4961249,4962427,4963463,4964647,4965743,4966783,4967867,4969031,4970177],by decide +kernel,by decide +kernel⟩,
⟨4970177,[4971229,4972309,4973363,4974413,4975589,4976639,4977697,4978907,4980103,4981261,4982317,4983523,4984571,4985627,4986809,4988003,4989221,4990393,4991449,4992517,4993693,4994909,4996111,4997281,4998419,4999469,5000519,5001593,5002639,5003839,5004893,5006047],by decide +kernel,by decide +kernel⟩,
⟨5006047,[5007113,5008291,5009453,5010517,5011729,5012831,5014039,5015099,5016287,5017489,5018701,5019899,5021119,5022331,5023511,5024731,5025791,5026993,5028197,5029397,5030471,5031673,5032897,5034089,5035139,5036351,5037523,5038597,5039653,5040853,5042033,5043263],by decide +kernel,by decide +kernel⟩,
⟨5043263,[5044439,5045611,5046817,5048011,5049173,5050369,5051581,5052769,5053973,5055203,5056397,5057597,5058803,5060021,5061187,5062397,5063593,5064809,5066021,5067217,5068451,5069681,5070883,5072063,5073241,5074453,5075669,5076853,5078057,5079259,5080483,5081677],by decide +kernel,by decide +kernel⟩,
⟨5081677,[5082911,5084113,5085349,5086531,5087603,5088823,5090017,5091199,5092411,5093623,5094841,5096029,5097259,5098501,5099701,5100859,5102087,5103289,5104373,5105587,5106793,5108011,5109241,5110459,5111699,5112889,5113967,5115167,5116393,5117603,5118779,5119997],by decide +kernel,by decide +kernel⟩,
⟨5119997,[5121191,5122393,5123551,5124683,5125933,5127139,5128337,5129581,5130791,5131993,5133187,5134429,5135621,5136847,5138083,5139257,5140481,5141699,5142883,5144053,5145263,5146469,5147609,5148823,5150027,5151227,5152423,5153663,5154887,5156089,5157287,5158469],by decide +kernel,by decide +kernel⟩,
⟨5158469,[5159617,5160821,5162063,5163289,5164463,5165659,5166877,5168089,5169317,5170531,5171729,5172919,5174119,5175283,5176511,5177723,5178871,5180101,5181317,5182543,5183749,5184961,5186197,5187359,5188507,5189711,5190973,5192183,5193401,5194643,5195837,5197091],by decide +kernel,by decide +kernel⟩,
⟨5197091,[5198321,5199553,5200753,5201993,5203157,5204327,5205583,5206793,5207981,5209129,5210323,5211473,5212637,5213839,5215061,5216251,5217449,5218669,5219807,5221003,5222251,5223473,5224663,5225921,5227153,5228393,5229613,5230831,5232047,5233231,5234447,5235661],by decide +kernel,by decide +kernel⟩,
⟨5235661,[5236811,5238049,5239277,5240491,5241707,5242931,5244167,5245283,5246459,5247661,5248811,5250043,5251273,5252491,5253713,5254943,5256137,5257349,5258579,5259763,5260943,5262133,5263267,5264537,5265773,5266997,5268209,5269493,5270719,5271913,5273137,5274359],by decide +kernel,by decide +kernel⟩,
⟨5274359,[5275583,5276797,5277983,5279191,5280413,5281631,5282833,5284031,5285237,5286469,5287691,5288869,5290081,5291269,5292473,5293699,5294953,5296219,5297389,5298617,5299787,5300993,5302207,5303399,5304601,5305799,5307011,5308217,5309413,5310707,5311951,5313131],by decide +kernel,by decide +kernel⟩,
⟨5313131,[5314303,5315491,5316679,5317913,5319089,5320229,5321443,5322673,5323867,5325101,5326249,5327473,5328677,5329913,5331089,5332333,5333557,5334733,5335879,5337089,5338283,5339447,5340707,5341943,5343167,5344351,5345537,5346751,5347897,5349083,5350231,5351461],by decide +kernel,by decide +kernel⟩,
⟨5351461,[5352653,5353849,5355023,5356249,5357479,5358697,5359909,5361131,5362337,5363641,5364823,5366027,5367251,5368483,5369681,5370857,5372077,5373293,5374529,5375761,5376953,5378143,5379449,5380699,5381927,5383151,5384341,5385593,5386753,5387951,5389121,5390353],by decide +kernel,by decide +kernel⟩,
⟨5390353,[5391619,5392847,5394061,5395289,5396563,5397781,5398933,5400121,5401397,5402561,5403743,5404921,5406217,5407447,5408719,5409953,5411149,5412467,5413693,5414951,5416157,5417323,5418503,5419811,5421047,5422247,5423443,5424667,5425909,5427133,5428303,5429483],by decide +kernel,by decide +kernel⟩,
⟨5429483,[5430661,5431873,5433101,5434421,5435641,5436841,5438071,5439233,5440453,5441671,5442989,5444177,5445383,5446591,5447821,5449049,5450267,5451503,5452703,5453891,5455097,5456273,5457467,5458723,5459903,5461123,5462311,5463509,5464729,5465969,5467271,5468597],by decide +kernel,by decide +kernel⟩,
⟨5468597,[5469829,5471023,5472239,5473441,5474719,5475881,5477083,5478401,5479603,5480843,5482063,5483273,5484487,5485819,5486983,5488199,5489399,5490593,5491841,5493053,5494283,5495543,5496737,5497931,5499157,5500373,5501593,5502851,5504099,5505413,5506651,5507849],by decide +kernel,by decide +kernel⟩,
⟨5507849,[5509087,5510303,5511613,5512957,5514293,5515541,5516767,5517959,5519303,5520521,5521729,5523031,5524249,5525477,5526823,5528063,5529287,5530543,5531893,5533103,5534351,5535559,5536753,5537957,5539309,5540531,5541869,5543201,5544437,5545637,5546953,5548141],by decide +kernel,by decide +kernel⟩,
⟨5548141,[5549483,5550739,5551981,5553179,5554387,5555567,5556821,5558023,5559347,5560591,5561779,5562971,5564179,5565401,5566619,5567831,5569163,5570377,5571721,5572921,5574131,5575357,5576699,5578031,5579227,5580409,5581733,5583037,5584379,5585633,5586853,5588069],by decide +kernel,by decide +kernel⟩,
⟨5588069,[5589349,5590561,5591771,5592991,5594233,5595559,5596907,5598119,5599463,5600813,5602039,5603291,5604481,5605849,5607073,5608321,5609683,5610937,5612179,5613499,5614703,5615923,5617121,5618363,5619557,5620807,5622011,5623217,5624573,5625877,5627101,5628341],by decide +kernel,by decide +kernel⟩,
⟨5628341,[5629651,5630869,5632127,5633371,5634611,5635979,5637347,5638709,5640043,5641243,5642531,5643877,5645243,5646593,5647951,5649187,5650397,5651623,5652863,5654189,5655409,5656649,5657867,5659117,5660449,5661683,5663051,5664313,5665549,5666783,5668163,5669387],by decide +kernel,by decide +kernel⟩,
⟨5669387,[5670703,5672057,5673281,5674663,5675903,5677279,5678507,5679749,5681089,5682461,5683823,5685203,5686591,5687959,5689183,5690561,5691943,5693299,5694673,5696027,5697247,5698607,5699989,5701211,5702591,5703917,5705153,5706497,5707861,5709217,5710567,5711809],by decide +kernel,by decide +kernel⟩,
⟨5711809,[5713069,5714417,5715793,5717161,5718551,5719859,5721241,5722637,5724023,5725361,5726713,5727973,5729263,5730631,5732017,5733401,5734643,5736011,5737247,5738641,5740001,5741389,5742623,5744003,5745379,5746613,5747849,5749091,5750449,5751799,5753183,5754409],by decide +kernel,by decide +kernel⟩,
⟨5754409,[5755733,5756977,5758297,5759599,5760983,5762381,5763743,5765093,5766499,5767847,5769199,5770579,5771951,5773279,5774677,5776049,5777363,5778611,5779967,5781331,5782717,5784091,5785331,5786707,5788067,5789479,5790847,5792081,5793409,5794801,5796137,5797397],by decide +kernel,by decide +kernel⟩,
⟨5797397,[5798809,5800159,5801561,5802947,5804353,5805749,5807119,5808521,5809931,5811347,5812733,5814079,5815379,5816753,5818013,5819393,5820751,5822111,5823497,5824843,5826173,5827531,5828917,5830313,5831729,5833001,5834351,5835701,5837003,5838379,5839751,5841131],by decide +kernel,by decide +kernel⟩,
⟨5841131,[5842457,5843881,5845193,5846597,5847857,5849269,5850683,5852069,5853443,5854813,5856197,5857531,5858873,5860213,5861593,5862847,5864233,5865641,5867033,5868377,5869781,5871211,5872597,5873951,5875369,5876743,5878063,5879413,5880769,5882179,5883509,5884919],by decide +kernel,by decide +kernel⟩,
⟨5884919,[5886341,5887757,5889097,5890481,5891867,5893241,5894591,5895971,5897303,5898691,5900047,5901437,5902783,5904149,5905573,5906899,5908303,5909663,5911039,5912393,5913763,5915149,5916583,5918027,5919467,5920853,5922253,5923609,5925001,5926381,5927809,5929129],by decide +kernel,by decide +kernel⟩,
⟨5929129,[5930539,5931869,5933273,5934571,5935967,5937361,5938771,5940047,5941451,5942777,5944193,5945591,5946979,5948389,5949763,5951147,5952487,5953799,5955211,5956549,5957981,5959319,5960639,5962063,5963479,5964919,5966243,5967631,5968997,5970373,5971759,5973139],by decide +kernel,by decide +kernel⟩,
⟨5973139,[5974547,5975897,5977253,5978633,5979991,5981387,5982751,5984137,5985533,5986931,5988319,5989721,5991101,5992421,5993837,5995243,5996687,5998061,5999449,6000829,6002179,6003581,6004991,6006313,6007697,6009037,6010393,6011779,6013081,6014467,6015803,6017153],by decide +kernel,by decide +kernel⟩,
⟨6017153,[6018499,6019861,6021289,6022663,6024049,6025433,6026753,6028129,6029521,6030901,6032293,6033673,6035023,6036397,6037793,6039157,6040493,6041911,6043267,6044677,6046069,6047369,6048773,6050141,6051523,6052873,6054289,6055697,6057113,6058469,6059863,6061217],by decide +kernel,by decide +kernel⟩,
⟨6061217,[6062543,6064013,6065407,6066799,6068189,6069551,6070907,6072293,6073693,6075107,6076501,6077821,6079219,6080597,6081989,6083321,6084679,6086123,6087533,6088967,6090349,6091703,6093011,6094397,6095777,6097213,6098669,6100067,6101449,6102793,6104171,6105571],by decide +kernel,by decide +kernel⟩,
⟨6105571,[6106939,6108313,6109751,6111151,6112541,6113893,6115289,6116731,6118199,6119599,6120971,6122461,6123863,6125233,6126649,6128039,6129449,6130849,6132179,6133669,6135053,6136451,6137837,6139219,6140593,6141977,6143339,6144763,6146141,6147619,6149023,6150437],by decide +kernel,by decide +kernel⟩,
⟨6150437,[6151777,6153163,6154541,6155873,6157271,6158689,6160073,6161459,6162841,6164209,6165589,6166997,6168367,6169763,6171101,6172603,6173957,6175333,6176741,6178129,6179533,6180919,6182359,6183761,6185143,6186529,6187891,6189257,6190661,6192031,6193427,6194833],by decide +kernel,by decide +kernel⟩,
⟨6194833,[6196193,6197617,6199043,6200399,6201781,6203143,6204533,6205891,6207283,6208693,6210067,6211427,6212851,6214223,6215639,6217103,6218489,6220003,6221377,6222883,6224269,6225649,6227033,6228413,6229829,6231301,6232801,6234211,6235601,6236999,6238489,6239839],by decide +kernel,by decide +kernel⟩,
⟨6239839,[6241219,6242609,6244099,6245513,6246881,6248399,6249923,6251417,6252791,6254153,6255533,6256907,6258313,6259831,6261301,6262801,6264199,6265601,6267031,6268523,6269899,6271303,6272689,6274061,6275449,6276817,6278179,6279569,6280957,6282377,6283763,6285137],by decide +kernel,by decide +kernel⟩,
⟨6285137,[6286531,6287903,6289429,6290839,6292241,6293767,6295283,6296747,6298283,6299663,6301073,6302609,6304013,6305527,6307039,6308569,6310097,6311509,6313033,6314569,6315973,6317371,6318757,6320159,6321521,6323033,6324559,6325999,6327533,6329077,6330461,6331873],by decide +kernel,by decide +kernel⟩,
⟨6331873,[6333277,6334663,6336073,6337453,6338999,6340519,6341903,6343291,6344687,6346213,6347707,6349099,6350621,6352147,6353531,6354913,6356443,6357839,6359239,6360659,6362203,6363713,6365263,6366751,6368129,6369569,6371087,6372593,6373981,6375361,6376847,6378341],by decide +kernel,by decide +kernel⟩,
⟨6378341,[6379757,6381251,6382643,6384143,6385553,6387013,6388559,6390053,6391607,6393029,6394543,6396073,6397631,6399161,6400717,6402271,6403687,6405221,6406657,6408211,6409757,6411157,6412613,6414041,6415603,6417137,6418663,6420199,6421763,6423191,6424727,6426257],by decide +kernel,by decide +kernel⟩,
⟨6426257,[6427807,6429343,6430849,6432401,6433937,6435493,6437027,6438437,6439837,6441257,6442771,6444337,6445757,6447323,6448811,6450349,6451897,6453443,6454937,6456479,6457879,6459421,6460963,6462473,6464021,6465419,6466991,6468403,6469867,6471401,6472967,6474509],by decide +kernel,by decide +kernel⟩,
⟨6474509,[6476009,6477589,6479153,6480707,6482269,6483823,6485329,6486737,6488297,6489863,6491417,6492911,6494443,6495949,6497509,6499081,6500621,6502163,6503737,6505243,6506719,6508277,6509791,6511331,6512813,6514327,6515909,6517481,6519017,6520597,6522083,6523663],by decide +kernel,by decide +kernel⟩]

def rd1 : List (Part ratioEdge) := [
⟨6523663,[6525187,6526607,6528157,6529709,6531289,6532829,6534379,6535901,6537457,6539023,6540593,6542119,6543659,6545197,6546647,6548207,6549727,6551191,6552697,6554243,6555781,6557333,6558883,6560417,6561857,6563383,6564847,6566407,6567971,6569449,6570881,6572381],by decide +kernel,by decide +kernel⟩,
⟨6572381,[6573913,6575497,6577061,6578639,6580193,6581779,6583363,6584867,6586387,6587963,6589511,6590993,6592571,6594109,6595627,6597167,6598721,6600281,6601817,6603349,6604903,6606463,6607903,6609467,6611057,6612491,6613987,6615541,6617087,6618617,6620183,6621731],by decide +kernel,by decide +kernel⟩,
⟨6621731,[6623261,6624803,6626341,6627917,6629471,6631021,6632573,6634109,6635633,6637139,6638701,6640181,6641729,6643249,6644863,6646403,6647939,6649483,6651053,6652621,6654173,6655729,6657283,6658843,6660421,6661957,6663469,6665017,6666617,6668213,6669769,6671341],by decide +kernel,by decide +kernel⟩,
⟨6671341,[6672881,6674429,6675953,6677537,6679067,6680621,6682183,6683641,6685201,6686723,6688273,6689821,6691411,6692953,6694537,6696083,6697573,6699103,6700657,6702149,6703691,6705247,6706781,6708283,6709877,6711437,6712933,6714443,6716011,6717593,6719117,6720697],by decide +kernel,by decide +kernel⟩,
⟨6720697,[6722239,6723803,6725347,6726821,6728401,6729911,6731449,6733073,6734713,6736297,6737891,6739409,6740941,6742459,6744071,6745667,6747193,6748691,6750259,6751861,6753469,6755071,6756619,6758117,6759679,6761239,6762881,6764423,6765977,6767533,6769051,6770611],by decide +kernel,by decide +kernel⟩,
⟨6770611,[6772163,6773659,6775177,6776689,6778283,6779863,6781501,6783083,6784627,6786149,6787801,6789323,6790933,6792491,6794023,6795617,6797177,6798719,6800257,6801787,6803351,6804949,6806479,6808057,6809687,6811249,6812759,6814363,6815923,6817483,6819019,6820579],by decide +kernel,by decide +kernel⟩,
⟨6820579,[6822143,6823721,6825257,6826829,6828377,6829997,6831581,6833147,6834679,6836201,6837751,6839281,6840811,6842453,6843997,6845563,6847147,6848717,6850369,6851863,6853463,6855071,6856643,6858179,6859739,6861311,6862963,6864553,6866191,6867743,6869273,6870817],by decide +kernel,by decide +kernel⟩,
⟨6870817,[6872381,6874039,6875623,6877271,6878849,6880369,6881939,6883561,6885217,6886823,6888379,6889901,6891557,6893087,6894623,6896173,6897857,6899383,6900923,6902503,6904133,6905713,6907259,6908857,6910513,6912091,6913631,6915319,6916873,6918433,6919993,6921527],by decide +kernel,by decide +kernel⟩,
⟨6921527,[6923123,6924787,6926357,6927871,6929381,6930961,6932489,6934033,6935629,6937171,6938861,6940399,6941953,6943501,6945017,6946559,6948143,6949823,6951383,6952961,6954613,6956203,6957791,6959471,6961063,6962617,6964291,6965977,6967657,6969229,6970813,6972491],by decide +kernel,by decide +kernel⟩,
⟨6972491,[6974179,6975769,6977317,6978991,6980681,6982369,6984023,6985609,6987293,6988991,6990547,6992179,6993853,6995411,6997097,6998779,7000351,7001927,7003487,7005023,7006723,7008341,7010051,7011743,7013327,7015039,7016743,7018321,7019953,7021657,7023371,7024939],by decide +kernel,by decide +kernel⟩,
⟨7024939,[7026541,7028111,7029661,7031209,7032749,7034341,7035913,7037593,7039283,7040981,7042681,7044229,7045849,7047457,7049153,7050737,7052431,7054093,7055651,7057201,7058783,7060463,7062149,7063723,7065277,7066909,7068463,7070027,7071619,7073329,7074887,7076453],by decide +kernel,by decide +kernel⟩,
⟨7076453,[7078151,7079833,7081457,7083107,7084817,7086479,7088171,7089769,7091323,7093013,7094719,7096283,7097999,7099583,7101271,7102987,7104709,7106443,7108009,7109569,7111157,7112747,7114423,7116139,7117843,7119569,7121141,7122743,7124443,7126069,7127803,7129519],by decide +kernel,by decide +kernel⟩,
⟨7129519,[7131217,7132949,7134683,7136249,7137833,7139527,7141231,7142923,7144507,7146091,7147823,7149533,7151227,7152923,7154639,7156213,7157803,7159541,7161251,7162963,7164673,7166417,7168097,7169677,7171259,7172969,7174649,7176371,7178077,7179829,7181431,7183067],by decide +kernel,by decide +kernel⟩,
⟨7183067,[7184657,7186369,7188119,7189783,7191511,7193231,7194923,7196647,7198297,7199957,7201639,7203227,7204949,7206581,7208281,7210001,7211717,7213441,7215133,7216889,7218479,7220201,7221961,7223659,7225373,7227071,7228747,7230481,7232171,7233871,7235597,7237183],by decide +kernel,by decide +kernel⟩,
⟨7237183,[7238927,7240693,7242329,7244053,7245787,7247543,7249223,7250939,7252601,7254349,7256047,7257749,7259453,7261187,7262861,7264583,7266253,7267991,7269719,7271321,7272943,7274719,7276463,7278209,7279939,7281653,7283351,7285081,7286803,7288531,7290271,7292011],by decide +kernel,by decide +kernel⟩,
⟨7292011,[7293719,7295473,7297189,7298839,7300577,7302271,7304009,7305763,7307441,7309171,7310783,7312427,7314163,7315853,7317619,7319383,7321163,7322839,7324531,7326289,7327963,7329677,7331293,7333061,7334783,7336481,7338217,7339961,7341647,7343429,7345123,7346837],by decide +kernel,by decide +kernel⟩,
⟨7346837,[7348541,7350221,7351943,7353679,7355363,7357093,7358809,7360531,7362287,7364059,7365713,7367377,7369081,7370749,7372499,7374259,7375997,7377673,7379441,7381163,7382899,7384627,7386367,7388089,7389721,7391429,7393123,7394809,7396483,7398229,7399993,7401731],by decide +kernel,by decide +kernel⟩,
⟨7401731,[7403453,7405163,7406821,7408523,7410203,7411913,7413563,7415333,7417021,7418737,7420463,7422097,7423903,7425623,7427323,7429013,7430791,7432501,7434223,7435937,7437637,7439371,7441127,7442863,7444639,7446349,7447997,7449749,7451557,7453253,7454983,7456639],by decide +kernel,by decide +kernel⟩,
⟨7456639,[7458403,7460077,7461809,7463509,7465243,7466917,7468619,7470283,7472051,7473733,7475473,7477193,7478893,7480619,7482287,7484023,7485749,7487453,7489171,7490869,7492657,7494469,7496249,7497943,7499663,7501339,7503059,7504817,7506509,7508251,7510081,7511891],by decide +kernel,by decide +kernel⟩,
⟨7511891,[7513589,7515337,7517161,7518853,7520573,7522331,7524031,7525783,7527523,7529267,7531031,7532839,7534673,7536371,7538099,7539773,7541477,7543183,7544899,7546571,7548257,7549963,7551707,7553459,7555189,7556951,7558687,7560407,7562099,7563841,7565531,7567279],by decide +kernel,by decide +kernel⟩,
⟨7567279,[7568993,7570747,7572449,7574173,7575923,7577639,7579349,7581089,7582937,7584701,7586401,7588117,7589903,7591729,7593479,7595239,7596947,7598699,7600403,7602193,7603903,7605641,7607393,7609153,7610873,7612727,7614553,7616239,7617949,7619683,7621433,7623289],by decide +kernel,by decide +kernel⟩,
⟨7623289,[7625011,7626721,7628471,7630333,7632187,7634041,7635809,7637659,7639433,7641289,7643039,7644799,7646519,7648261,7650031,7651783,7653509,7655239,7657007,7658713,7660427,7662173,7663927,7665787,7667651,7669517,7671227,7673011,7674731,7676477,7678183,7679887],by decide +kernel,by decide +kernel⟩,
⟨7679887,[7681591,7683421,7685297,7687103,7688861,7690637,7692491,7694233,7695949,7697713,7699423,7701191,7703027,7704841,7706579,7708301,7710013,7711819,7713661,7715483,7717247,7718993,7720729,7722557,7724293,7726157,7727869,7729621,7731337,7733069,7734821,7736567],by decide +kernel,by decide +kernel⟩,
⟨7736567,[7738391,7740097,7741967,7743737,7745593,7747477,7749251,7751089,7752827,7754689,7756429,7758161,7759897,7761617,7763501,7765343,7767229,7769087,7770929,7772669,7774549,7776413,7778167,7780061,7781957,7783691,7785457,7787333,7789073,7790953,7792693,7794571],by decide +kernel,by decide +kernel⟩,
⟨7794571,[7796423,7798163,7799903,7801769,7803673,7805453,7807193,7809089,7810991,7812733,7814483,7816331,7818233,7820107,7822007,7823779,7825619,7827403,7829251,7830989,7832749,7834627,7836529,7838387,7840253,7842139,7843879,7845763,7847533,7849277,7851061,7852811],by decide +kernel,by decide +kernel⟩,
⟨7852811,[7854703,7856603,7858483,7860401,7862287,7864123,7865881,7867793,7869683,7871483,7873387,7875137,7876997,7878887,7880797,7882709,7884593,7886441,7888301,7890191,7891969,7893883,7895807,7897667,7899589,7901483,7903319,7905229,7907143,7909067,7910923,7912717],by decide +kernel,by decide +kernel⟩,
⟨7912717,[7914481,7916263,7918129,7920019,7921943,7923869,7925741,7927511,7929443,7931353,7933243,7935071,7936949,7938811,7940719,7942609,7944487,7946417,7948279,7950179,7952083,7953863,7955741,7957681,7959583,7961479,7963379,7965271,7967143,7969051,7970887,7972817],by decide +kernel,by decide +kernel⟩,
⟨7972817,[7974677,7976593,7978463,7980289,7982203,7984037,7985851,7987781,7989679,7991483,7993367,7995277,7997167,7998979,8000899,8002847,8004797,8006683,8008589,8010503,8012383,8014301,8016221,8018027,8019953,8021831,8023739,8025653,8027563,8029421,8031269,8033213],by decide +kernel,by decide +kernel⟩,
⟨8033213,[8035063,8036947,8038837,8040701,8042569,8044453,8046299,8048119,8049953,8051851,8053693,8055587,8057503,8059433,8061323,8063233,8065121,8067079,8068969,8070827,8072693,8074657,8076557,8078471,8080343,8082257,8084207,8086063,8087983,8089901,8091773,8093651],by decide +kernel,by decide +kernel⟩,
⟨8093651,[8095547,8097347,8099257,8101127,8103031,8104843,8106767,8108713,8110577,8112463,8114383,8116301,8118251,8120179,8122099,8124019,8125933,8127871,8129743,8131693,8133641,8135497,8137397,8139253,8141093,8143033,8144849,8146711,8148589,8150473,8152379,8154313],by decide +kernel,by decide +kernel⟩,
⟨8154313,[8156189,8158133,8160011,8161859,8163739,8165681,8167673,8169617,8171573,8173523,8175397,8177219,8179169,8181079,8182987,8184857,8186753,8188693,8190667,8192557,8194541,8196481,8198371,8200219,8202149,8204041,8205983,8207827,8209787,8211701,8213603,8215579],by decide +kernel,by decide +kernel⟩,
⟨8215579,[8217439,8219357,8221211,8223169,8225039,8226899,8228777,8230643,8232557,8234419,8236343,8238227,8240143,8242043,8243971,8245877,8247773,8249723,8251583,8253461,8255323,8257237,8259089,8261041,8262889,8264777,8266703,8268577,8270419,8272309,8274323,8276231],by decide +kernel,by decide +kernel⟩,
⟨8276231,[8278247,8280199,8282107,8284051,8286037,8288041,8289901,8291839,8293759,8295701,8297719,8299679,8301581,8303509,8305519,8307521,8309401,8311297,8313199,8315149,8317157,8319109,8321123,8323109,8325089,8326963,8328877,8330779,8332763,8334791,8336777,8338709],by decide +kernel,by decide +kernel⟩,
⟨8338709,[8340641,8342531,8344403,8346341,8348213,8350157,8352161,8354041,8355931,8357831,8359697,8361641,8363653,8365561,8367577,8369489,8371373,8373293,8375189,8377063,8379017,8380969,8382877,8384891,8386759,8388763,8390671,8392693,8394613,8396639,8398633,8400653],by decide +kernel,by decide +kernel⟩,
⟨8400653,[8402561,8404531,8406547,8408461,8410351,8412401,8414311,8416223,8418103,8419993,8421929,8423953,8425943,8427851,8429797,8431697,8433707,8435711,8437609,8439659,8441603,8443573,8445527,8447489,8449517,8451439,8453329,8455301,8457247,8459299,8461361,8463419],by decide +kernel,by decide +kernel⟩,
⟨8463419,[8465423,8467409,8469449,8471453,8473483,8475391,8477281,8479193,8481169,8483117,8485093,8486993,8489053,8491001,8492899,8494939,8496949,8498873,8500783,8502853,8504849,8506867,8508793,8510849,8512919,8514923,8516957,8519009,8521069,8522989,8524909,8526919],by decide +kernel,by decide +kernel⟩,
⟨8526919,[8528873,8530939,8533001,8534921,8536961,8538979,8540893,8542943,8545007,8547079,8549153,8551091,8553007,8555051,8557093,8559181,8561269,8563351,8565397,8567341,8569289,8571361,8573443,8575493,8577563,8579573,8581523,8583581,8585657,8587723,8589797,8591831],by decide +kernel,by decide +kernel⟩,
⟨8591831,[8593883,8595857,8597947,8599867,8601823,8603767,8605813,8607769,8609819,8611891,8613967,8616011,8618059,8620121,8622113,8624153,8626249,8628293,8630387,8632411,8634481,8636521,8638583,8640601,8642651,8644679,8646751,8648741,8650849,8652947,8655011,8657123],by decide +kernel,by decide +kernel⟩,
⟨8657123,[8659181,8661253,8663279,8665303,8667349,8669417,8671471,8673571,8675651,8677759,8679791,8681899,8683943,8685967,8688059,8690177,8692289,8694379,8696437,8698457,8700539,8702597,8704651,8706727,8708807,8710829,8712931,8715041,8717131,8719133,8721239,8723243],by decide +kernel,by decide +kernel⟩,
⟨8723243,[8725319,8727359,8729429,8731501,8733511,8735549,8737591,8739637,8741699,8743753,8745749,8747863,8749991,8752067,8754077,8756101,8758187,8760247,8762311,8764433,8766523,8768621,8770661,8772733,8774851,8776931,8778947,8780923,8782981,8785027,8787131,8789113],by decide +kernel,by decide +kernel⟩,
⟨8789113,[8791187,8793307,8795411,8797457,8799509,8801557,8803657,8805707,8807783,8809861,8811851,8813971,8816123,8818211,8820257,8822347,8824393,8826463,8828549,8830583,8832661,8834741,8836757,8838833,8840963,8843101,8845099,8847161,8849201,8851187,8853193,8855281],by decide +kernel,by decide +kernel⟩,
⟨8855281,[8857301,8859307,8861423,8863577,8865683,8867843,8869919,8872067,8874133,8876149,8878241,8880379,8882417,8884483,8886523,8888669,8890823,8892857,8894947,8896981,8899073,8901121,8903131,8905199,8907293,8909449,8911517,8913589,8915723,8917879,8919983,8922139],by decide +kernel,by decide +kernel⟩,
⟨8922139,[8924213,8926273,8928329,8930429,8932457,8934553,8936663,8938739,8940779,8942851,8944939,8947039,8949221,8951399,8953501,8955629,8957671,8959711,8961793,8963861,8965939,8968103,8970163,8972221,8974391,8976439,8978449,8980523,8982559,8984623,8986697,8988781],by decide +kernel,by decide +kernel⟩,
⟨8988781,[8990873,8992913,8995039,8997119,8999161,9001277,9003409,9005561,9007679,9009773,9011803,9013997,9016067,9018161,9020243,9022313,9024413,9026449,9028609,9030661,9032741,9034813,9036997,9039071,9041143,9043187,9045301,9047413,9049541,9051617,9053683,9055831],by decide +kernel,by decide +kernel⟩,
⟨9055831,[9057901,9060089,9062159,9064241,9066319,9068351,9070519,9072653,9074711,9076909,9079111,9081161,9083203,9085261,9087343,9089389,9091451,9093599,9095791,9097939,9100079,9102139,9104327,9106523,9108691,9110873,9113059,9115159,9117221,9119287,9121397,9123469],by decide +kernel,by decide +kernel⟩,
⟨9123469,[9125561,9127717,9129773,9131849,9133907,9135977,9138049,9140167,9142229,9144413,9146611,9148693,9150887,9152993,9155143,9157321,9159551,9161753,9163943,9166159,9168359,9170459,9172663,9174901,9176971,9179113,9181279,9183389,9185471,9187547,9189767,9191993],by decide +kernel,by decide +kernel⟩,
⟨9191993,[9194203,9196357,9198559,9200803,9203003,9205223,9207379,9209467,9211583,9213767,9215837,9217933,9220163,9222251,9224351,9226603,9228811,9230999,9233219,9235319,9237433,9239623,9241747,9243967,9246199,9248431,9250649,9252883,9255101,9257291,9259531,9261731],by decide +kernel,by decide +kernel⟩,
⟨9261731,[9263873,9265979,9268211,9270323,9272539,9274747,9276871,9278963,9281179,9283279,9285503,9287659,9289829,9292051,9294283,9296489,9298651,9300883,9303089,9305299,9307447,9309691,9311867,9314003,9316147,9318391,9320537,9322741,9324989,9327161,9329417,9331547],by decide +kernel,by decide +kernel⟩,
⟨9331547,[9333647,9335759,9337943,9340147,9342391,9344513,9346759,9349019,9351229,9353473,9355651,9357913,9360083,9362351,9364571,9366719,9368837,9371053,9373319,9375533,9377821,9380057,9382273,9384491,9386711,9388979,9391183,9393437,9395717,9397891,9400121,9402287],by decide +kernel,by decide +kernel⟩,
⟨9402287,[9404537,9406777,9409073,9411343,9413533,9415673,9417841,9420127,9422363,9424609,9426817,9429041,9431299,9433493,9435763,9437977,9440227,9442417,9444671,9446867,9449131,9451381,9453569,9455807,9458041,9460303,9462539,9464837,9467057,9469309,9471551,9473801],by decide +kernel,by decide +kernel⟩,
⟨9473801,[9476009,9478237,9480409,9482659,9484973,9487187,9489407,9491579,9493753,9495949,9498133,9500327,9502589,9504823,9507007,9509267,9511559,9513739,9516019,9518281,9520481,9522677,9524891,9527081,9529301,9531593,9533789,9535979,9538229,9540439,9542629,9544883],by decide +kernel,by decide +kernel⟩,
⟨9544883,[9547103,9549341,9551497,9553703,9555991,9558223,9560461,9562673,9565001,9567223,9569509,9571729,9573937,9576169,9578399,9580733,9582919,9585151,9587359,9589583,9591833,9594043,9596317,9598483,9600673,9602917,9605117,9607337,9609629,9611957,9614201,9616471],by decide +kernel,by decide +kernel⟩,
⟨9616471,[9618667,9620993,9623323,9625607,9627791,9630013,9632347,9634553,9636829,9639169,9641447,9643729,9645959,9648209,9650503,9652739,9655073,9657367,9659633,9661889,9664153,9666491,9668719,9670993,9673177,9675539,9677761,9680023,9682243,9684469,9686759,9688981],by decide +kernel,by decide +kernel⟩,
⟨9688981,[9691267,9693473,9695809,9698023,9700247,9702509,9704743,9706993,9709339,9711571,9713813,9716111,9718327,9720589,9722837,9725059,9727313,9729571,9731767,9734009,9736283,9738529,9740729,9743087,9745349,9747559,9749851,9752081,9754289,9756541,9758767,9761123],by decide +kernel,by decide +kernel⟩,
⟨9761123,[9763393,9765653,9767887,9770149,9772489,9774733,9776993,9779269,9781529,9783779,9786163,9788551,9790819,9793187,9795523,9797903,9800149,9802433,9804689,9806911,9809143,9811517,9813907,9816127,9818371,9820661,9822907,9825191,9827473,9829711,9831953,9834247],by decide +kernel,by decide +kernel⟩,
⟨9834247,[9836501,9838879,9841261,9843553,9845951,9848353,9850727,9853073,9855451,9857849,9860197,9862451,9864817,9867211,9869449,9871753,9874157,9876511,9878773,9881171,9883499,9885773,9888031,9890423,9892703,9894971,9897227,9899467,9901751,9904117,9906527,9908911],by decide +kernel,by decide +kernel⟩,
⟨9908911,[9911173,9913571,9915859,9918121,9920399,9922741,9924997,9927361,9929729,9932129,9934411,9936803,9939229,9941653,9943993,9946273,9948677,9951013,9953429,9955823,9958199,9960619,9962893,9965161,9967549,9969913,9972343,9974711,9977057,9979337,9981739,9984031],by decide +kernel,by decide +kernel⟩,
⟨9984031,[9986467,9988879,9991211,9993623,9996011,9998381,10000721,10003159,10005559,10007897,10010333,10012763,10015043,10017431,10019839,10022191,10024601,10026979,10029367,10031761,10034113,10036421,10038739,10041013,10043443,10045741,10048147,10050437,10052717,10055119,10057477,10059859],by decide +kernel,by decide +kernel⟩,
⟨10059859,[10062233,10064657,10066967,10069369,10071757,10074091,10076477,10078823,10081237,10083613,10086031,10088413,10090837,10093241,10095641,10098007,10100393,10102717,10105133,10107437,10109833,10112239,10114561,10116919,10119259,10121651,10123957,10126399,10128773,10131181,10133609,10135969],by decide +kernel,by decide +kernel⟩,
⟨10135969,[10138351,10140773,10143139,10145483,10147903,10150219,10152679,10155127,10157531,10159957,10162351,10164701,10167097,10169491,10171949,10174327,10176737,10179097,10181467,10183891,10186219,10188587,10191037,10193509,10195891,10198261,10200691,10203071,10205449,10207831,10210243,10212691],by decide +kernel,by decide +kernel⟩,
⟨10212691,[10215119,10217479,10219841,10222283,10224649,10227127,10229519,10231993,10234453,10236857,10239329,10241731,10244123,10246547,10248947,10251407,10253767,10256131,10258543,10260923,10263299,10265737,10268213,10270633,10273033,10275413,10277831,10280243,10282619,10284971,10287401,10289911],by decide +kernel,by decide +kernel⟩,
⟨10289911,[10292333,10294729,10297073,10299529,10302011,10304353,10306729,10309151,10311569,10313921,10316363,10318853,10321301,10323721,10326163,10328569,10331063,10333487,10335917,10338421,10340783,10343213,10345613,10348007,10350443,10352899,10355321,10357801,10360211,10362601,10365097,10367573],by decide +kernel,by decide +kernel⟩,
⟨10367573,[10369967,10372433,10374823,10377197,10379657,10382059,10384573,10386979,10389367,10391893,10394353,10396807,10399309,10401737,10404227,10406729,10409249,10411759,10414247,10416701,10419221,10421669,10424101,10426553,10428991,10431401,10433893,10436417,10438807,10441297,10443803,10446343],by decide +kernel,by decide +kernel⟩,
⟨10446343,[10448887,10451431,10453979,10456463,10458841,10461233,10463743,10466147,10468567,10471093,10473637,10476019,10478441,10480889,10483279,10485817,10488293,10490723,10493261,10495813,10498247,10500703,10503221,10505623,10508161,10510639,10513079,10515641,10518043,10520599,10523021,10525517],by decide +kernel,by decide +kernel⟩]

def rd2 : List (Part ratioEdge) := [
⟨10525517,[10527971,10530367,10532803,10535351,10537777,10540337,10542761,10545313,10547879,10550389,10552933,10555483,10557893,10560353,10562807,10565231,10567763,10570249,10572769,10575221,10577797,10580221,10582667,10585247,10587827,10590253,10592821,10595371,10597913,10600459,10602971,10605481],by decide +kernel,by decide +kernel⟩,
⟨10605481,[10608029,10610603,10613179,10615607,10618063,10620481,10623061,10625509,10627961,10630549,10633013,10635503,10638049,10640633,10643209,10645769,10648247,10650821,10653403,10655867,10658437,10660877,10663459,10666037,10668599,10671041,10673609,10676047,10678631,10681103,10683709,10686157],by decide +kernel,by decide +kernel⟩,
⟨10686157,[10688723,10691279,10693811,10696337,10698911,10701437,10703923,10706503,10709093,10711681,10714213,10716661,10719259,10721831,10724429,10726943,10729487,10732091,10734623,10737079,10739681,10742129,10744639,10747189,10749677,10752139,10754729,10757291,10759897,10762519,10764997,10767551],by decide +kernel,by decide +kernel⟩,
⟨10767551,[10770161,10772647,10775213,10777787,10780361,10782911,10785373,10787873,10790467,10792987,10795607,10798093,10800641,10803227,10805741,10808299,10810937,10813559,10816079,10818641,10821277,10823851,10826393,10828943,10831489,10834079,10836673,10839163,10841783,10844321,10846933,10849541],by decide +kernel,by decide +kernel⟩,
⟨10849541,[10852033,10854637,10857167,10859767,10862363,10864859,10867469,10870073,10872671,10875253,10877863,10880461,10882997,10885621,10888277,10890821,10893451,10896013,10898663,10901257,10903813,10906429,10909049,10911601,10914247,10916833,10919383,10921891,10924541,10927187,10929767,10932331],by decide +kernel,by decide +kernel⟩,
⟨10932331,[10934887,10937501,10940063,10942609,10945163,10947751,10950349,10952897,10955443,10957967,10960531,10963163,10965769,10968379,10971047,10973617,10976227,10978823,10981429,10984021,10986589,10989151,10991693,10994281,10996823,10999507,11002081,11004647,11007257,11009837,11012389,11014987],by decide +kernel,by decide +kernel⟩,
⟨11014987,[11017553,11020181,11022799,11025347,11027899,11030471,11033047,11035667,11038243,11040761,11043341,11046023,11048599,11051203,11053793,11056387,11058977,11061559,11064103,11066717,11069281,11071883,11074451,11077069,11079689,11082257,11084951,11087513,11090179,11092733,11095309,11097917],by decide +kernel,by decide +kernel⟩,
⟨11097917,[11100613,11103199,11105903,11108477,11111173,11113789,11116451,11119133,11121731,11124361,11127023,11129689,11132267,11134843,11137517,11140111,11142763,11145347,11147911,11150497,11153099,11155657,11158237,11160953,11163547,11166137,11168753,11171401,11174011,11176637,11179283,11181839],by decide +kernel,by decide +kernel⟩,
⟨11181839,[11184497,11187073,11189641,11192371,11195069,11197661,11200391,11203039,11205673,11208269,11210993,11213711,11216357,11218943,11221549,11224223,11226931,11229637,11232233,11234941,11237621,11240227,11242817,11245499,11248157,11250773,11253383,11256083,11258801,11261479,11264189,11266781],by decide +kernel,by decide +kernel⟩,
⟨11266781,[11269457,11272123,11274721,11277407,11280133,11282717,11285419,11288003,11290651,11293397,11296009,11298767,11301431,11304091,11306809,11309549,11312281,11314997,11317753,11320489,11323157,11325889,11328643,11331343,11333977,11336719,11339441,11342119,11344757,11347513,11350133,11352743],by decide +kernel,by decide +kernel⟩,
⟨11352743,[11355493,11358233,11361001,11363719,11366317,11369081,11371739,11374439,11377057,11379833,11382433,11385041,11387797,11390551,11393177,11395883,11398637,11401259,11403941,11406581,11409197,11411893,11414597,11417303,11420051,11422823,11425433,11428111,11430781,11433419,11436167,11438929],by decide +kernel,by decide +kernel⟩,
⟨11438929,[11441669,11444341,11447053,11449807,11452433,11455061,11457857,11460487,11463139,11465897,11468687,11471393,11474191,11476963,11479759,11482433,11485127,11487829,11490587,11493331,11496119,11498843,11501543,11504249,11506933,11509633,11512427,11515079,11517791,11520581,11523247,11525959],by decide +kernel,by decide +kernel⟩,
⟨11525959,[11528701,11531449,11534213,11536997,11539793,11542523,11545187,11547881,11550641,11553433,11556113,11558779,11561489,11564269,11566949,11569711,11572523,11575219,11577961,11580691,11583433,11586119,11588873,11591651,11594339,11597167,11599897,11602637,11605301,11608063,11610811,11613527],by decide +kernel,by decide +kernel⟩,
⟨11613527,[11616203,11618989,11621723,11624497,11627323,11630051,11632813,11635553,11638349,11641121,11643839,11646589,11649401,11652161,11654987,11657749,11660503,11663227,11666041,11668757,11671523,11674349,11677063,11679761,11682577,11685283,11688121,11690843,11693599,11696431,11699173,11701951],by decide +kernel,by decide +kernel⟩,
⟨11701951,[11704673,11707411,11710253,11713111,11715857,11718563,11721331,11724179,11726951,11729807,11732597,11735413,11738267,11741011,11743727,11746433,11749211,11751923,11754649,11757443,11760241,11763091,11765813,11768513,11771381,11774171,11776957,11779741,11782501,11785307,11788039,11790781],by decide +kernel,by decide +kernel⟩,
⟨11790781,[11793619,11796443,11799257,11802017,11804759,11807473,11810203,11813083,11815961,11818739,11821507,11824261,11827103,11829847,11832707,11835541,11838263,11841149,11843983,11846803,11849599,11852359,11855213,11858017,11860897,11863703,11866451,11869339,11872057,11874887,11877667,11880419],by decide +kernel,by decide +kernel⟩,
⟨11880419,[11883307,11886073,11888867,11891641,11894497,11897317,11900093,11902999,11905771,11908669,11911573,11914417,11917309,11920199,11922979,11925737,11928649,11931509,11934379,11937271,11940127,11942941,11945683,11948491,11951369,11954279,11957027,11959777,11962537,11965379,11968141,11970919],by decide +kernel,by decide +kernel⟩,
⟨11970919,[11973769,11976647,11979563,11982449,11985271,11988091,11990903,11993699,11996449,11999333,12002183,12005053,12007847,12010651,12013553,12016441,12019349,12022223,12025003,12027803,12030727,12033617,12036553,12039371,12042269,12045181,12048083,12051023,12053887,12056801,12059569,12062387],by decide +kernel,by decide +kernel⟩,
⟨12062387,[12065237,12068101,12071029,12073939,12076871,12079733,12082573,12085471,12088283,12091181,12094039,12096823,12099761,12102557,12105391,12108223,12111149,12114017,12116953,12119797,12122723,12125609,12128513,12131347,12134251,12137119,12139943,12142891,12145781,12148711,12151639,12154559],by decide +kernel,by decide +kernel⟩,
⟨12154559,[12157469,12160403,12163259,12166207,12169111,12172049,12175003,12177881,12180803,12183733,12186659,12189533,12192421,12195233,12198083,12200989,12203881,12206791,12209737,12212561,12215477,12218333,12221273,12224159,12226999,12229927,12232777,12235723,12238661,12241583,12244501,12247369],by decide +kernel,by decide +kernel⟩,
⟨12247369,[12250253,12253193,12256177,12259103,12261961,12264817,12267743,12270667,12273497,12276331,12279167,12282079,12285047,12287983,12290851,12293719,12296623,12299531,12302497,12305441,12308353,12311333,12314231,12317087,12320023,12322889,12325777,12328781,12331723,12334703,12337621,12340607],by decide +kernel,by decide +kernel⟩,
⟨12340607,[12343523,12346429,12349333,12352283,12355223,12358123,12361093,12364021,12366989,12369967,12372887,12375743,12378673,12381587,12384509,12387481,12390437,12393317,12396289,12399193,12402073,12405031,12407981,12410963,12413887,12416869,12419773,12422687,12425597,12428473,12431413,12434311],by decide +kernel,by decide +kernel⟩,
⟨12434311,[12437239,12440273,12443267,12446251,12449147,12452183,12455117,12458071,12460967,12463961,12466913,12469949,12472879,12475831,12478783,12481673,12484621,12487589,12490507,12493499,12496447,12499343,12502249,12505291,12508207,12511231,12514157,12517133,12520111,12523073,12526021,12529031],by decide +kernel,by decide +kernel⟩,
⟨12529031,[12532067,12534983,12537893,12540881,12543859,12546827,12549809,12552791,12555679,12558641,12561529,12564527,12567473,12570409,12573427,12576371,12579341,12582263,12585193,12588101,12591151,12594103,12597029,12600103,12603109,12606127,12609049,12611957,12614999,12617921,12620891,12623839],by decide +kernel,by decide +kernel⟩,
⟨12623839,[12626863,12629807,12632713,12635639,12638699,12641737,12644741,12647729,12650711,12653723,12656713,12659723,12662731,12665651,12668717,12671741,12674687,12677741,12680683,12683651,12686647,12689603,12692549,12695587,12698579,12701617,12704551,12707567,12710561,12713507,12716593,12719671],by decide +kernel,by decide +kernel⟩,
⟨12719671,[12722771,12725771,12728831,12731891,12734873,12737971,12741073,12744103,12747139,12750193,12753287,12756253,12759311,12762391,12765463,12768517,12771593,12774673,12777703,12780731,12783773,12786871,12789947,12793021,12796039,12799021,12801989,12805033,12808049,12811109,12814237,12817213],by decide +kernel,by decide +kernel⟩,
⟨12817213,[12820243,12823229,12826327,12829457,12832553,12835639,12838759,12841753,12844813,12847921,12850979,12854041,12857147,12860179,12863297,12866393,12869509,12872627,12875689,12878699,12881719,12884813,12887827,12890909,12893983,12897013,12900149,12903227,12906241,12909343,12912479,12915559],by decide +kernel,by decide +kernel⟩,
⟨12915559,[12918683,12921763,12924889,12927983,12931103,12934189,12937241,12940363,12943433,12946487,12949553,12952549,12955687,12958733,12961789,12964921,12968029,12971173,12974329,12977411,12980489,12983533,12986689,12989807,12992867,12995887,12999043,13002079,13005211,13008319,13011487,13014611],by decide +kernel,by decide +kernel⟩,
⟨13014611,[13017649,13020779,13023809,13026833,13029943,13033109,13036217,13039291,13042339,13045391,13048507,13051657,13054763,13057841,13060871,13063913,13067011,13070111,13073149,13076233,13079419,13082557,13085701,13088767,13091849,13095001,13098073,13101259,13104389,13107581,13110649,13113811],by decide +kernel,by decide +kernel⟩,
⟨13113811,[13116919,13120087,13123247,13126391,13129463,13132589,13135657,13138837,13141981,13145053,13148131,13151233,13154347,13157471,13160591,13163741,13166801,13169851,13172897,13175971,13179043,13182163,13185257,13188397,13191469,13194611,13197659,13200853,13204043,13207099,13210177,13213331],by decide +kernel,by decide +kernel⟩,
⟨13213331,[13216433,13219519,13222633,13225699,13228801,13231901,13234967,13238177,13241387,13244467,13247537,13250621,13253743,13256959,13260193,13263407,13266641,13269761,13272841,13275931,13279033,13282123,13285333,13288493,13291589,13294829,13297969,13301051,13304293,13307431,13310653,13313779],by decide +kernel,by decide +kernel⟩,
⟨13313779,[13316911,13320113,13323347,13326463,13329587,13332713,13335857,13339049,13342267,13345513,13348637,13351777,13355009,13358231,13361479,13364629,13367843,13370969,13374143,13377401,13380529,13383653,13386767,13390001,13393231,13396499,13399681,13402787,13406053,13409303,13412459,13415581],by decide +kernel,by decide +kernel⟩,
⟨13415581,[13418833,13422077,13425341,13428491,13431679,13434821,13438091,13441331,13444553,13447751,13451003,13454263,13457533,13460693,13463803,13467023,13470277,13473521,13476797,13479943,13483073,13486357,13489561,13492811,13495969,13499149,13502353,13505593,13508779,13512047,13515331,13518607],by decide +kernel,by decide +kernel⟩,
⟨13518607,[13521829,13525027,13528321,13531523,13534657,13537907,13541161,13544431,13547711,13550959,13554091,13557367,13560647,13563779,13566953,13570229,13573451,13576757,13580057,13583327,13586513,13589813,13593079,13596257,13599499,13602767,13605953,13609159,13612351,13615633,13618909,13622087],by decide +kernel,by decide +kernel⟩,
⟨13622087,[13625291,13628471,13631641,13634923,13638161,13641431,13644647,13647869,13651189,13654471,13657691,13661017,13664327,13667581,13670773,13674079,13677289,13680613,13683797,13687129,13690441,13693759,13696999,13700201,13703537,13706851,13710083,13713299,13716587,13719869,13723091,13726289],by decide +kernel,by decide +kernel⟩,
⟨13726289,[13729481,13732769,13735961,13739249,13742479,13745737,13749013,13752259,13755529,13758737,13761971,13765277,13768481,13771763,13775059,13778327,13781591,13784933,13788283,13791499,13794857,13798217,13801577,13804801,13808167,13811407,13814639,13817897,13821161,13824409,13827731,13830989],by decide +kernel,by decide +kernel⟩,
⟨13830989,[13834349,13837601,13840877,13844123,13847389,13850671,13853927,13857281,13860493,13863791,13867043,13870343,13873583,13876847,13880149,13883383,13886681,13889933,13893197,13896461,13899757,13903051,13906439,13909717,13912993,13916339,13919641,13922921,13926287,13929551,13932889,13936129],by decide +kernel,by decide +kernel⟩,
⟨13936129,[13939463,13942741,13946087,13949449,13952711,13956073,13959343,13962623,13965997,13969343,13972597,13975943,13979213,13982569,13985941,13989179,13992463,13995853,13999121,14002427,14005711,14009113,14012417,14015681,14018929,14022221,14025619,14028913,14032253,14035561,14038951,14042341],by decide +kernel,by decide +kernel⟩,
⟨14042341,[14045611,14048941,14052221,14055647,14059061,14062439,14065703,14069087,14072491,14075771,14079161,14082433,14085713,14089007,14092297,14095673,14099009,14102371,14105753,14109047,14112331,14115623,14118961,14122319,14125751,14129147,14132449,14135843,14139289,14142649,14145973,14149417],by decide +kernel,by decide +kernel⟩,
⟨14149417,[14152741,14156179,14159573,14162947,14166379,14169797,14173099,14176433,14179873,14183227,14186633,14190097,14193469,14196907,14200283,14203741,14207183,14210611,14214043,14217451,14220889,14224333,14227799,14231111,14234569,14238001,14241467,14244871,14248187,14251493,14254817,14258131],by decide +kernel,by decide +kernel⟩,
⟨14258131,[14261579,14264969,14268407,14271757,14275139,14278549,14282003,14285471,14288849,14292319,14295791,14299249,14302699,14306051,14309459,14312911,14316349,14319793,14323123,14326441,14329853,14333251,14336657,14340043,14343409,14346791,14350169,14353613,14357113,14360573,14363989,14367403],by decide +kernel,by decide +kernel⟩,
⟨14367403,[14370757,14374253,14377619,14380999,14384477,14387897,14391331,14394691,14398103,14401589,14405003,14408377,14411737,14415103,14418463,14421889,14425349,14428849,14432357,14435723,14439233,14442613,14446057,14449471,14452891,14456383,14459737,14463173,14466587,14470037,14473493,14476919],by decide +kernel,by decide +kernel⟩,
⟨14476919,[14480321,14483839,14487311,14490743,14494141,14497607,14500979,14504461,14507881,14511283,14514701,14518211,14521613,14525057,14528561,14532079,14535511,14538913,14542351,14545891,14549333,14552861,14556343,14559737,14563193,14566733,14570117,14573591,14577103,14580641,14584127,14587567],by decide +kernel,by decide +kernel⟩,
⟨14587567,[14591023,14594549,14597981,14601449,14605013,14608453,14611939,14615383,14618803,14622263,14625749,14629157,14632687,14636107,14639627,14643077,14646509,14650037,14653511,14657087,14660651,14664121,14667647,14671157,14674579,14678029,14681441,14684909,14688397,14691851,14695337,14698889],by decide +kernel,by decide +kernel⟩,
⟨14698889,[14702309,14705893,14709389,14712937,14716447,14719921,14723389,14726827,14730319,14733877,14737301,14740757,14744201,14747779,14751361,14754809,14758267,14761781,14765293,14768791,14772391,14775853,14779319,14782829,14786423,14790023,14793617,14797127,14800699,14804233,14807813,14811389],by decide +kernel,by decide +kernel⟩,
⟨14811389,[14814923,14818483,14822021,14825483,14828953,14832553,14836163,14839777,14843249,14846833,14850413,14854031,14857651,14861261,14864753,14868233,14871707,14875199,14878813,14882341,14885821,14889283,14892847,14896333,14899909,14903437,14907047,14910677,14914171,14917787,14921351,14924983],by decide +kernel,by decide +kernel⟩,
⟨14924983,[14928467,14932087,14935651,14939251,14942839,14946359,14949971,14953507,14957057,14960597,14964113,14967713,14971277,14974877,14978461,14982101,14985683,14989319,14992811,14996383,14999953,15003557,15007103,15010663,15014227,15017777,15021437,15025061,15028633,15032153,15035773,15039403],by decide +kernel,by decide +kernel⟩,
⟨15039403,[15043057,15046657,15050213,15053821,15057377,15060959,15064493,15068071,15071701,15075371,15078979,15082489,15086147,15089717,15093347,15096973,15100499,15104087,15107707,15111331,15114997,15118639,15122213,15125783,15129313,15132913,15136531,15140201,15143837,15147443,15151051,15154603],by decide +kernel,by decide +kernel⟩,
⟨15154603,[15158153,15161801,15165433,15169031,15172723,15176363,15179959,15183643,15187267,15190811,15194423,15198023,15201583,15205271,15208861,15212479,15216049,15219689,15223393,15227077,15230737,15234313,15237907,15241621,15245267,15248929,15252551,15256231,15259921,15263519,15267113,15270769],by decide +kernel,by decide +kernel⟩,
⟨15270769,[15274487,15278113,15281809,15285467,15289133,15292733,15296431,15300013,15303667,15307393,15310961,15314561,15318157,15321767,15325507,15329147,15332813,15336403,15339971,15343547,15347153,15350897,15354509,15358103,15361847,15365419,15369131,15372751,15376429,15380023,15383653,15387343],by decide +kernel,by decide +kernel⟩,
⟨15387343,[15390953,15394619,15398203,15401957,15405703,15409367,15413093,15416803,15420463,15424133,15427879,15431503,15435109,15438827,15442447,15446173,15449849,15453481,15457243,15460997,15464641,15468329,15472103,15475751,15479473,15483253,15487007,15490639,15494257,15497917,15501583,15505283],by decide +kernel,by decide +kernel⟩,
⟨15505283,[15508993,15512713,15516433,15520151,15523813,15527581,15531317,15535067,15538819,15542519,15546281,15549913,15553651,15557341,15561047,15564799,15568439,15572171,15575891,15579593,15583357,15587071,15590873,15594629,15598277,15602057,15605687,15609353,15613093,15616771,15620471,15624253],by decide +kernel,by decide +kernel⟩,
⟨15624253,[15627901,15631691,15635353,15639101,15642827,15646583,15650359,15654139,15657953,15661741,15665491,15669307,15673103,15676781,15680471,15684127,15687781,15691499,15695291,15699049,15702851,15706513,15710327,15714163,15717973,15721697,15725467,15729293,15733097,15736873,15740609,15744433],by decide +kernel,by decide +kernel⟩,
⟨15744433,[15748181,15751963,15755689,15759427,15763129,15766873,15770633,15774439,15778219,15782059,15785801,15789497,15793213,15796903,15800639,15804469,15808237,15812051,15815887,15819721,15823501,15827309,15831073,15834799,15838643,15842483,15846289,15850073,15853841,15857593,15861337,15865111],by decide +kernel,by decide +kernel⟩,
⟨15865111,[15868981,15872833,15876587,15880379,15884221,15888083,15891917,15895757,15899519,15903241,15907037,15910789,15914659,15918401,15922177,15925907,15929713,15933479,15937351,15941179,15944989,15948727,15952583,15956393,15960277,15964121,15967877,15971639,15975437,15979279,15983063,15986869],by decide +kernel,by decide +kernel⟩,
⟨15986869,[15990701,15994549,15998341,16002221,16005967,16009759,16013567,16017439,16021193,16024991,16028839,16032641,16036487,16040281,16044103,16047853,16051597,16055393,16059217,16063067,16066901,16070689,16074481,16078397,16082257,16086089,16089919,16093729,16097569,16101497,16105279,16109179],by decide +kernel,by decide +kernel⟩,
⟨16109179,[16113091,16116983,16120823,16124663,16128551,16132477,16136333,16140193,16144031,16147903,16151771,16155551,16159489,16163317,16167139,16170991,16174927,16178783,16182689,16186607,16190509,16194391,16198283,16202177,16205977,16209889,16213679,16217611,16221493,16225427,16229321,16233247],by decide +kernel,by decide +kernel⟩,
⟨16233247,[16237127,16241011,16244929,16248877,16252813,16256677,16260499,16264387,16268321,16272229,16276151,16280041,16283887,16287811,16291663,16295551,16299497,16303373,16307353,16311289,16315217,16319027,16322953,16326929,16330843,16334677,16338607,16342483,16346339,16350307,16354189,16358039],by decide +kernel,by decide +kernel⟩,
⟨16358039,[16361867,16365827,16369763,16373717,16377653,16381513,16385401,16389311,16393213,16397207,16401197,16405163,16409039,16413037,16416941,16420897,16424831,16428757,16432681,16436597,16440583,16444553,16448477,16452361,16456291,16460231,16464229,16468171,16472089,16476017,16480019,16483913],by decide +kernel,by decide +kernel⟩,
⟨16483913,[16487857,16491859,16495837,16499807,16503743,16507727,16511653,16515613,16519579,16523513,16527529,16531439,16535401,16539349,16543349,16547299,16551163,16555111,16559131,16563047,16567007,16570963,16574969,16578857,16582733,16586683,16590619,16594549,16598503,16602517,16606493,16610509],by decide +kernel,by decide +kernel⟩,
⟨16610509,[16614527,16618463,16622407,16626287,16630307,16634237,16638203,16642177,16646099,16649989,16653893,16657871,16661809,16665751,16669703,16673681,16677643,16681661,16685681,16689623,16693597,16697501,16701479,16705517,16709507,16713467,16717429,16721479,16725421,16729469,16733401,16737443],by decide +kernel,by decide +kernel⟩,
⟨16737443,[16741397,16745381,16749371,16753441,16757387,16761373,16765453,16769537,16773529,16777469,16781483,16785427,16789403,16793489,16797491,16801507,16805521,16809557,16813553,16817629,16821733,16825799,16829851,16833919,16837969,16842017,16846079,16850089,16854029,16858003,16862119,16866103],by decide +kernel,by decide +kernel⟩,
⟨16866103,[16870219,16874237,16878293,16882361,16886431,16890413,16894373,16898383,16902491,16906609,16910731,16914823,16918799,16922777,16926779,16930807,16934791,16938881,16942997,16947071,16951157,16955219,16959301,16963439,16967429,16971553,16975523,16979569,16983541,16987601,16991743,16995817],by decide +kernel,by decide +kernel⟩,
⟨16995817,[16999903,17003897,17007997,17011999,17016071,17020109,17024129,17028181,17032331,17036347,17040469,17044619,17048761,17052781,17056801,17060957,17065007,17069123,17073269,17077363,17081431,17085457,17089603,17093641,17097749,17101907,17105999,17110157,17114249,17118301,17122309,17126419],by decide +kernel,by decide +kernel⟩]

def rd3 : List (Part ratioEdge) := [
⟨17126419,[17130437,17134567,17138647,17142677,17146849,17150921,17155009,17159017,17163109,17167193,17171321,17175463,17179583,17183653,17187683,17191753,17195809,17200003,17204141,17208173,17212337,17216447,17220587,17224783,17228941,17233063,17237159,17241241,17245357,17249387,17253503,17257673],by decide +kernel,by decide +kernel⟩,
⟨17257673,[17261879,17266001,17270117,17274221,17278369,17282501,17286667,17290799,17294861,17299003,17303207,17307313,17311397,17315569,17319749,17323963,17328043,17332223,17336453,17340607,17344669,17348899,17353043,17357149,17361373,17365499,17369713,17373833,17378017,17382161,17386289,17390449],by decide +kernel,by decide +kernel⟩,
⟨17390449,[17394613,17398859,17403013,17407153,17411327,17415491,17419733,17423971,17428097,17432267,17436487,17440741,17444939,17449093,17453353,17457553,17461643,17465771,17469971,17474087,17478187,17482379,17486621,17490743,17494963,17499061,17503229,17507491,17511617,17515873,17520133,17524387],by decide +kernel,by decide +kernel⟩,
⟨17524387,[17528527,17532703,17536817,17541079,17545219,17549387,17553593,17557861,17562113,17566313,17570599,17574727,17578879,17583161,17587343,17591479,17595649,17599891,17604161,17608319,17612531,17616821,17621101,17625341,17629589,17633857,17638091,17642333,17646583,17650741,17654963,17659273],by decide +kernel,by decide +kernel⟩,
⟨17659273,[17663447,17667581,17671837,17676067,17680283,17684599,17688787,17692973,17697271,17701487,17705641,17709953,17714261,17718541,17722787,17727079,17731333,17735563,17739833,17744159,17748359,17752571,17756797,17761049,17765339,17769533,17773843,17778077,17782351,17786627,17790811,17795059],by decide +kernel,by decide +kernel⟩,
⟨17795059,[17799281,17803531,17807771,17811973,17816261,17820571,17824813,17829101,17833447,17837791,17841983,17846273,17850601,17854817,17859151,17863399,17867623,17871883,17876141,17880419,17884679,17888957,17893189,17897513,17901827,17906173,17910463,17914829,17919133,17923343,17927699,17931971],by decide +kernel,by decide +kernel⟩,
⟨17931971,[17936201,17940499,17944813,17949077,17953373,17957701,17961967,17966261,17970481,17974813,17979179,17983391,17987693,17992019,17996351,18000649,18004937,18009323,18013613,18017981,18022337,18026653,18030977,18035231,18039563,18043877,18048113,18052513,18056761,18061111,18065417,18069823],by decide +kernel,by decide +kernel⟩,
⟨18069823,[18074227,18078527,18082913,18087263,18091657,18096031,18100387,18104717,18109019,18113341,18117707,18121993,18126401,18130817,18135203,18139487,18143791,18148111,18152513,18156797,18161153,18165551,18169967,18174287,18178609,18183017,18187381,18191713,18196121,18200519,18204833,18209231],by decide +kernel,by decide +kernel⟩,
⟨18209231,[18213667,18217993,18222367,18226699,18231137,18235541,18239953,18244363,18248719,18253171,18257563,18262009,18266447,18270893,18275209,18279593,18284039,18288449,18292811,18297179,18301627,18306053,18310351,18314669,18318967,18323311,18327707,18332003,18336391,18340741,18345101,18349481],by decide +kernel,by decide +kernel⟩,
⟨18349481,[18353789,18358177,18362543,18366979,18371293,18375677,18380119,18384439,18388879,18393281,18397721,18402191,18406517,18410933,18415379,18419839,18424279,18428623,18433073,18437473,18441881,18446371,18450727,18455093,18459541,18463919,18468311,18472639,18477007,18481369,18485837,18490279],by decide +kernel,by decide +kernel⟩,
⟨18490279,[18494743,18499207,18503581,18508001,18512419,18516881,18521317,18525803,18530287,18534809,18539273,18543743,18548119,18552643,18557027,18561443,18565889,18570379,18574817,18579287,18583667,18588203,18592661,18597053,18601493,18605981,18610463,18614977,18619519,18623911,18628451,18632903],by decide +kernel,by decide +kernel⟩,
⟨18632903,[18637373,18641827,18646253,18650803,18655243,18659687,18664073,18668557,18673103,18677579,18682033,18686461,18691021,18695491,18699887,18704431,18708917,18713459,18717913,18722359,18726781,18731231,18735757,18740299,18744731,18749189,18753673,18758213,18762643,18767209,18771773,18776293],by decide +kernel,by decide +kernel⟩,
⟨18776293,[18780743,18785213,18789739,18794159,18798707,18803201,18807667,18812177,18816619,18821161,18825691,18830281,18834721,18839153,18843733,18848251,18852737,18857257,18861827,18866299,18870749,18875191,18879703,18884227,18888697,18893209,18897701,18902263,18906761,18911339,18915823,18920413],by decide +kernel,by decide +kernel⟩,
⟨18920413,[18924881,18929419,18934007,18938477,18942983,18947543,18952033,18956599,18961219,18965839,18970459,18974987,18979523,18984109,18988603,18993181,18997757,19002353,19006987,19011497,19016119,19020709,19025267,19029853,19034401,19038973,19043513,19048027,19052587,19057099,19061699,19066321],by decide +kernel,by decide +kernel⟩,
⟨19066321,[19070833,19075489,19079993,19084621,19089251,19093859,19098377,19103011,19107661,19112237,19116737,19121279,19125919,19130497,19134991,19139531,19144163,19148699,19153301,19157821,19162421,19167077,19171619,19176277,19180897,19185431,19190029,19194631,19199149,19203707,19208341,19212911],by decide +kernel,by decide +kernel⟩,
⟨19212911,[19217483,19222123,19226707,19231343,19235987,19240589,19245179,19249751,19254311,19258873,19263479,19268111,19272709,19277239,19281853,19286453,19291121,19295723,19300343,19304959,19309583,19314233,19318891,19323443,19328107,19332799,19337443,19342021,19346713,19351399,19356019,19360721],by decide +kernel,by decide +kernel⟩,
⟨19360721,[19365293,19369891,19374503,19379093,19383701,19388261,19392853,19397447,19402121,19406747,19411319,19415983,19420721,19425347,19430071,19434671,19439363,19444043,19448729,19453387,19458001,19462727,19467467,19472129,19476749,19481447,19486067,19490701,19495339,19499923,19504531,19509151],by decide +kernel,by decide +kernel⟩,
⟨19509151,[19513877,19518511,19523267,19527913,19532561,19537277,19541941,19546547,19551179,19555829,19560487,19565197,19569857,19574509,19579151,19583911,19588661,19593283,19597961,19602587,19607311,19612069,19616809,19621463,19626247,19630993,19635719,19640479,19645189,19649837,19654577,19659329],by decide +kernel,by decide +kernel⟩,
⟨19659329,[19664003,19668751,19673419,19678181,19682827,19687469,19692221,19696909,19701587,19706353,19711031,19715791,19720583,19725361,19730111,19734791,19739477,19744133,19748899,19753579,19758229,19763033,19767703,19772453,19777189,19781891,19786667,19791323,19796141,19800961,19805749,19810481],by decide +kernel,by decide +kernel⟩,
⟨19810481,[19815203,19819903,19824743,19829581,19834363,19839181,19843891,19848623,19853363,19858121,19862897,19867583,19872263,19877057,19881889,19886579,19891337,19896133,19900831,19905619,19910441,19915193,19919983,19924763,19929571,19934303,19939067,19943843,19948679,19953503,19958261,19963037],by decide +kernel,by decide +kernel⟩,
⟨19963037,[19967771,19972541,19977277,19982029,19986817,19991611,19996393,20000093,20004973,20009819,20014693,20019547,20024339,20029199,20034073,20038951,20043823,20048701,20053573,20058449,20063317,20068183,20073041,20077921,20082787,20087653,20092531,20097409,20102273,20107151,20112031,20116913],by decide +kernel,by decide +kernel⟩,
⟨20116913,[20121791,20126671,20131549,20136421,20141269,20146111,20150983,20155831,20160709,20165567,20170433,20175263,20180141,20185003,20189881,20194751,20199623,20204477,20209339,20214203,20219083,20223953,20228807,20233687,20238541,20243407,20248273,20253127,20257997,20262863,20267719,20272597],by decide +kernel,by decide +kernel⟩,
⟨20272597,[20277479,20282351,20287207,20292079,20296951,20301829,20306701,20311559,20316433,20321303,20326183,20331061,20335937,20340799,20345681,20350559,20355431,20360309,20365157,20370023,20374903,20379781,20384659,20389541,20394401,20399279,20404159,20409041,20413919,20418799,20423653,20428523],by decide +kernel,by decide +kernel⟩,
⟨20428523,[20433403,20438251,20443123,20447969,20452843,20457709,20462581,20467463,20472341,20477203,20482069,20487067,20492063,20497063,20502059,20507051,20512031,20517037,20522041,20527037,20532049,20537059,20542073,20547089,20552083,20557099,20562109,20567089,20572099,20577119,20582129,20587141],by decide +kernel,by decide +kernel⟩,
⟨20587141,[20592167,20597191,20602217,20607227,20612239,20617271,20622299,20627329,20632363,20637367,20642371,20647411,20652439,20657477,20662517,20667553,20672593,20677639,20682677,20687717,20692759,20697799,20702833,20707873,20712917,20717969,20722993,20728033,20733073,20738119,20743181,20748241],by decide +kernel,by decide +kernel⟩,
⟨20748241,[20753303,20758363,20763377,20768411,20773469,20778521,20783561,20788633,20793701,20798759,20803831,20808889,20813963,20819027,20824103,20829181,20834249,20839327,20844409,20849489,20854577,20859667,20864759,20869837,20874913,20880007,20885101,20890201,20895289,20900389,20905429,20910529],by decide +kernel,by decide +kernel⟩,
⟨20910529,[20915597,20920703,20925811,20930909,20936017,20941091,20946197,20951309,20956423,20961529,20966611,20971723,20976833,20981941,20987059,20992159,20997269,21002393,21007501,21012599,21017701,21022817,21027949,21033083,21038219,21043339,21048451,21053567,21058663,21063803,21068939,21074077],by decide +kernel,by decide +kernel⟩,
⟨21074077,[21079181,21084317,21089437,21094559,21099697,21104849,21109987,21115141,21120283,21125393,21130511,21135649,21140807,21145961,21151069,21156227,21161381,21166529,21171673,21176843,21182009,21187129,21192299,21197447,21202609,21207779,21212941,21218089,21223261,21228437,21233617,21238757],by decide +kernel,by decide +kernel⟩,
⟨21238757,[21243941,21249127,21254309,21259493,21264613,21269777,21274961,21280153,21285347,21290537,21295727,21300907,21306091,21311261,21316459,21321661,21326863,21332071,21337279,21342487,21347653,21352861,21358067,21363257,21368471,21373657,21378817,21383969,21389177,21394379,21399563,21404741],by decide +kernel,by decide +kernel⟩,
⟨21404741,[21409931,21415159,21420331,21425549,21430781,21436013,21441247,21446471,21451673,21456901,21462131,21467357,21472597,21477811,21483037,21488263,21493489,21498733,21503981,21509227,21514439,21519691,21524939,21530161,21535411,21540653,21545911,21551171,21556429,21561629,21566887,21572141],by decide +kernel,by decide +kernel⟩,
⟨21572141,[21577373,21582629,21587893,21593161,21598433,21603661,21608929,21614183,21619459,21624703,21629977,21635219,21640501,21645761,21651043,21656311,21661597,21666881,21672151,21677443,21682709,21687997,21693253,21698533,21703831,21709117,21714403,21719699,21724991,21730283,21735577,21740869],by decide +kernel,by decide +kernel⟩,
⟨21740869,[21746177,21751481,21756769,21762073,21767381,21772691,21778007,21783319,21788633,21793927,21799243,21804539,21809863,21815177,21820489,21825757,21831067,21836323,21841649,21846961,21852287,21857621,21862957,21868289,21873629,21878939,21884273,21889601,21894941,21900283,21905629,21910957],by decide +kernel,by decide +kernel⟩,
⟨21910957,[21916267,21921607,21926959,21932269,21937577,21942923,21948263,21953621,21958973,21964321,21969677,21975013,21980363,21985703,21991069,21996437,22001803,22007173,22012519,22017893,22023247,22028623,22033987,22039351,22044721,22050103,22055377,22060757,22066139,22071463,22076851,22082213],by decide +kernel,by decide +kernel⟩,
⟨22082213,[22087601,22092977,22098371,22103737,22109123,22114471,22119871,22125251,22130653,22136029,22141397,22146797,22152187,22157593,22163003,22168409,22173821,22179191,22184599,22189997,22195403,22200823,22206229,22211621,22217033,22222433,22227847,22233269,22238681,22244111,22249529,22254959],by decide +kernel,by decide +kernel⟩,
⟨22254959,[22260377,22265807,22271239,22276663,22282069,22287491,22292929,22298359,22303793,22309213,22314599,22320019,22325461,22330897,22336339,22341769,22347209,22352663,22358087,22363541,22368971,22374433,22379893,22385351,22390811,22396271,22401727,22407149,22412617,22418089,22423537,22429003],by decide +kernel,by decide +kernel⟩,
⟨22429003,[22434479,22439953,22445431,22450907,22456351,22461799,22467241,22472717,22478179,22483663,22489121,22494607,22500091,22505579,22511063,22516553,22522051,22527517,22533013,22538507,22544003,22549487,22554991,22560481,22565989,22571491,22576991,22582501,22588009,22593503,22599019,22604537],by decide +kernel,by decide +kernel⟩,
⟨22604537,[22610033,22615553,22621063,22626581,22632101,22637621,22643141,22648667,22654189,22659697,22665217,22670701,22676219,22681751,22687277,22692763,22698301,22703833,22709369,22714903,22720441,22725979,22731517,22737061,22742611,22748147,22753699,22759249,22764769,22770323,22775873,22781401],by decide +kernel,by decide +kernel⟩,
⟨22781401,[22786961,22792507,22798063,22803623,22809191,22814761,22820327,22825843,22831397,22836929,22842497,22848043,22853587,22859149,22864727,22870297,22875859,22881437,22887019,22892593,22898177,22903763,22909349,22914937,22920529,22926121,22931719,22937293,22942889,22948489,22954091,22959659],by decide +kernel,by decide +kernel⟩,
⟨22959659,[22965251,22970851,22976449,22982059,22987607,22993213,22998821,23004433,23010047,23015633,23021249,23026853,23032469,23038079,23043703,23049281,23054909,23060519,23066137,23071747,23077363,23082973,23088589,23094199,23099819,23105443,23111083,23116721,23122361,23127991,23133637,23139271],by decide +kernel,by decide +kernel⟩,
⟨23139271,[23144921,23150551,23156201,23161849,23167493,23173147,23178791,23184451,23190103,23195759,23201419,23207083,23212741,23218397,23224037,23229707,23235361,23241013,23246687,23252351,23258021,23263693,23269373,23275051,23280713,23286359,23292029,23297713,23303389,23309063,23314751,23320439],by decide +kernel,by decide +kernel⟩,
⟨23320439,[23326133,23331823,23337511,23343197,23348881,23354581,23360273,23365963,23371639,23377331,23383037,23388733,23394439,23400103,23405801,23411501,23417209,23422913,23428621,23434339,23440037,23445761,23451481,23457199,23462903,23468617,23474333,23480027,23485753,23491477,23497169,23502877],by decide +kernel,by decide +kernel⟩,
⟨23502877,[23508587,23514317,23520059,23525767,23531509,23537243,23542969,23548717,23554457,23560189,23565931,23571677,23577431,23583181,23588933,23594687,23600443,23606197,23611943,23617673,23623417,23629163,23634887,23640649,23646407,23652179,23657947,23663723,23669489,23675269,23681041,23686811],by decide +kernel,by decide +kernel⟩,
⟨23686811,[23692589,23698373,23704129,23709901,23715689,23721473,23727259,23733053,23738843,23744629,23750417,23756207,23761981,23767771,23773567,23779367,23785171,23790971,23796779,23802587,23808397,23814173,23819969,23825783,23831597,23837399,23843219,23849041,23854813,23860621,23866429,23872243],by decide +kernel,by decide +kernel⟩,
⟨23872243,[23878069,23883889,23889713,23895541,23901359,23907173,23913011,23918837,23924671,23930513,23936329,23942173,23948017,23953861,23959709,23965559,23971403,23977249,23983103,23988959,23994791,24000643,24006497,24012353,24018193,24024053,24029899,24035743,24041603,24047461,24053333,24059177],by decide +kernel,by decide +kernel⟩,
⟨24059177,[24065051,24070901,24076769,24082631,24088489,24094309,24100187,24106067,24111953,24117833,24123719,24129593,24135473,24141347,24147241,24153113,24159007,24164897,24170789,24176681,24182567,24188459,24194333,24200213,24206099,24212009,24217909,24223817,24229721,24235609,24241513,24247411],by decide +kernel,by decide +kernel⟩,
⟨24247411,[24253331,24259247,24265123,24271033,24276943,24282857,24288757,24294679,24300611,24306517,24312451,24318379,24324277,24330191,24336089,24342007,24347951,24353893,24359837,24365773,24371713,24377651,24383599,24389539,24395489,24401423,24407371,24413329,24419281,24425239,24431201,24437167],by decide +kernel,by decide +kernel⟩,
⟨24437167,[24443131,24449083,24455047,24460981,24466943,24472907,24478849,24484819,24490793,24496739,24502717,24508691,24514669,24520651,24526627,24532609,24538597,24544577,24550553,24556507,24562463,24568457,24574447,24580397,24586381,24592361,24598363,24604367,24610361,24616351,24622349,24628361],by decide +kernel,by decide +kernel⟩,
⟨24628361,[24634349,24640351,24646367,24652379,24658399,24664379,24670391,24676397,24682397,24688421,24694441,24700471,24706499,24712529,24718559,24724591,24730627,24736631,24742661,24748681,24754699,24760741,24766787,24772829,24778837,24784883,24790903,24796949,24803003,24809051,24815081,24821131],by decide +kernel,by decide +kernel⟩,
⟨24821131,[24827171,24833233,24839239,24845299,24851363,24857423,24863491,24869557,24875621,24881677,24887749,24893779,24899843,24905917,24911981,24918043,24924127,24930209,24936281,24942353,24948421,24954451,24960527,24966553,24972589,24978683,24984779,24990877,24996971,25003063,25009147,25015231],by decide +kernel,by decide +kernel⟩,
⟨25015231,[25021327,25027411,25033517,25039613,25045721,25051783,25057883,25063999,25070117,25076237,25082359,25088473,25094591,25100717,25106833,25112947,25119079,25125197,25131331,25137449,25143583,25149721,25155853,25161979,25168111,25174231,25180321,25186459,25192571,25198711,25204843,25210993],by decide +kernel,by decide +kernel⟩,
⟨25210993,[25217149,25223293,25229401,25235549,25241701,25247863,25254013,25260163,25266331,25272497,25278667,25284821,25290953,25297117,25303241,25309409,25315583,25321763,25327921,25334083,25340267,25346449,25352617,25358791,25364947,25371131,25377299,25383493,25389691,25395869,25402033,25408231],by decide +kernel,by decide +kernel⟩,
⟨25408231,[25414429,25420621,25426811,25432993,25439179,25445341,25451551,25457753,25463959,25470169,25476361,25482571,25488781,25494983,25501199,25507423,25513633,25519859,25526087,25532281,25538509,25544741,25550977,25557157,25563389,25569631,25575859,25582103,25588333,25594553,25600747,25606993],by decide +kernel,by decide +kernel⟩,
⟨25606993,[25613227,25619479,25625711,25631941,25638199,25644431,25650641,25656901,25663159,25669421,25675681,25681927,25688197,25694447,25700693,25706957,25713223,25719493,25725773,25732037,25738319,25744583,25750849,25757119,25763371,25769659,25775947,25782227,25788509,25794803,25801081,25807363],by decide +kernel,by decide +kernel⟩,
⟨25807363,[25813663,25819951,25826237,25832531,25838809,25845109,25851401,25857707,25864001,25870309,25876621,25882919,25889239,25895557,25901879,25908203,25914521,25920847,25927171,25933493,25939819,25946149,25952483,25958809,25965143,25971481,25977773,25984111,25990429,25996771,26003059,26009387],by decide +kernel,by decide +kernel⟩,
⟨26009387,[26015719,26022071,26028421,26034773,26041123,26047459,26053817,26060159,26066497,26072861,26079227,26085583,26091941,26098297,26104657,26111027,26117387,26123761,26130127,26136493,26142863,26149243,26155627,26162011,26168341,26174711,26181101,26187433,26193779,26200157,26206519,26212891],by decide +kernel,by decide +kernel⟩,
⟨26212891,[26219269,26225653,26232043,26238437,26244839,26251237,26257613,26264009,26270401,26276801,26283197,26289607,26296013,26302433,26308847,26315257,26321677,26328103,26334527,26340953,26347339,26353771,26360203,26366633,26373071,26379503,26385937,26392369,26398781,26405227,26411669,26418109],by decide +kernel,by decide +kernel⟩,
⟨26418109,[26424553,26431001,26437427,26443871,26450311,26456761,26463197,26469647,26476103,26482559,26489017,26495479,26501939,26508403,26514869,26521331,26527789,26534267,26540741,26547163,26553629,26560097,26566577,26573059,26579543,26586031,26592499,26598991,26605477,26611973,26618461,26624953],by decide +kernel,by decide +kernel⟩,
⟨26624953,[26631443,26637917,26644421,26650919,26657401,26663891,26670383,26676883,26683369,26689829,26696321,26702833,26709341,26715851,26722349,26728859,26735383,26741903,26748433,26754947,26761459,26767991,26774513,26781037,26787547,26794081,26800601,26807141,26813629,26820163,26826691,26833241],by decide +kernel,by decide +kernel⟩,
⟨26833241,[26839777,26846329,26852879,26859433,26865991,26872523,26879063,26885623,26892179,26898673,26905223,26911783,26918321,26924893,26931461,26938031,26944601,26951173,26957747,26964319,26970887,26977463,26984039,26990617,26997167,27003751,27010271,27016861,27023411,27029999,27036599,27043171],by decide +kernel,by decide +kernel⟩,
⟨27043171,[27049753,27056353,27062957,27069529,27076117,27082721,27089329,27095941,27102529,27109141,27115747,27122363,27128953,27135547,27142153,27148757,27155377,27161993,27168623,27175237,27181873,27188509,27195139,27201743,27208373,27215009,27221653,27228277,27234919,27241559,27248191,27254833],by decide +kernel,by decide +kernel⟩,
⟨27254833,[27261473,27268123,27274781,27281417,27288067,27294727,27301387,27308041,27314701,27321361,27328031,27334667,27341341,27348017,27354671,27361333,27367987,27374663,27381331,27388001,27394651,27401323,27408001,27414679,27421369,27428053,27434749,27441437,27448133,27454787,27461459,27468157],by decide +kernel,by decide +kernel⟩,
⟨27468157,[27474859,27481567,27488257,27494911,27501613,27508321,27515023,27521729,27528443,27535153,27541861,27548581,27555293,27562021,27568741,27575473,27582199,27588919,27595649,27602357,27609079,27615821,27622549,27629293,27636031,27642779,27649529,27656273,27663023,27669773,27676499,27683219],by decide +kernel,by decide +kernel⟩,
⟨27683219,[27689971,27696731,27703469,27710231,27716993,27723757,27730511,27737273,27744029,27750787,27757529,27764287,27771049,27777823,27784591,27791371,27798157,27804941,27811717,27818503,27825289,27832081,27838873,27845647,27852437,27859231,27866023,27872807,27879613,27886399,27893207,27900017],by decide +kernel,by decide +kernel⟩,
⟨27900017,[27906821,27913619,27920419,27927233,27934037,27940853,27947669,27954481,27961279,27968099,27974887,27981697,27988523,27995351,28002157,28008949,28015787,28022623,28029409,28036249,28043053,28049893,28056727,28063573,28070411,28077253,28084103,28090897,28097737,28104589,28111417,28118257],by decide +kernel,by decide +kernel⟩]

def rd4 : List (Part ratioEdge) := [
⟨28118257,[28125107,28131959,28138819,28145687,28152511,28159379,28166249,28173113,28179989,28186849,28193719,28200593,28207463,28214341,28221229,28228117,28235003,28241893,28248751,28255637,28262537,28269401,28276277,28283161,28290061,28296949,28303831,28310731,28317637,28324547,28331461,28338379],by decide +kernel,by decide +kernel⟩,
⟨28338379,[28345241,28352143,28359061,28365959,28372853,28379779,28386689,28393601,28400531,28407403,28414339,28421273,28428163,28435103,28442039,28448977,28455893,28462829,28469773,28476713,28483661,28490603,28497551,28504501,28511449,28518407,28525361,28532293,28539241,28546207,28553171,28560143],by decide +kernel,by decide +kernel⟩,
⟨28560143,[28567109,28574069,28581043,28588019,28594961,28601921,28608883,28615861,28622843,28629829,28636813,28643801,28650781,28657763,28664729,28671701,28678697,28685659,28692659,28699661,28706669,28713677,28720673,28727683,28734697,28741649,28748651,28755667,28762687,28769693,28776679,28783679],by decide +kernel,by decide +kernel⟩,
⟨28783679,[28790659,28797689,28804709,28811743,28818767,28825801,28832827,28839847,28846877,28853921,28860959,28867999,28875037,28882069,28889059,28896089,28903141,28910173,28917211,28924261,28931323,28938383,28945447,28952503,28959563,28966631,28973699,28980769,28987837,28994899,29001979,29009053],by decide +kernel,by decide +kernel⟩,
⟨29009053,[29016137,29023219,29030303,29037391,29044471,29051563,29058641,29065723,29072801,29079893,29086961,29094061,29101117,29108213,29115313,29122417,29129501,29136593,29143703,29150813,29157911,29165029,29172127,29179247,29186359,29193473,29200601,29207729,29214851,29221961,29229091,29236213],by decide +kernel,by decide +kernel⟩,
⟨29236213,[29243329,29250469,29257603,29264723,29271857,29278999,29286137,29293249,29300357,29307503,29314643,29321801,29328931,29336093,29343233,29350367,29357533,29364697,29371861,29379017,29386169,29393341,29400491,29407667,29414837,29421971,29429149,29436311,29443481,29450639,29457817,29465003],by decide +kernel,by decide +kernel⟩,
⟨29465003,[29472181,29479363,29486543,29493731,29500931,29508131,29515333,29522513,29529713,29536919,29544089,29551303,29558467,29565677,29572883,29580079,29587301,29594519,29601707,29608921,29616133,29623277,29630477,29637709,29644943,29652173,29659411,29666647,29673871,29681117,29688313,29695517],by decide +kernel,by decide +kernel⟩,
⟨29695517,[29702759,29710003,29717243,29724473,29731717,29738963,29746183,29753447,29760673,29767897,29775149,29782399,29789671,29796941,29804209,29811443,29818721,29826001,29833273,29840557,29847827,29855101,29862383,29869669,29876953,29884201,29891473,29898769,29906069,29913371,29920669,29927929],by decide +kernel,by decide +kernel⟩,
⟨29927929,[29935231,29942533,29949827,29957117,29964419,29971717,29979029,29986349,29993671,30000989,30008299,30015619,30022943,30030269,30037583,30044897,30052229,30059531,30066871,30074203,30081547,30088871,30096203,30103517,30110849,30118199,30125549,30132889,30140239,30147599,30154951,30162313],by decide +kernel,by decide +kernel⟩,
⟨30162313,[30169661,30177019,30184381,30191743,30199109,30206461,30213829,30221207,30228571,30235937,30243313,30250687,30258043,30265399,30272789,30280169,30287563,30294883,30302281,30309679,30317047,30324443,30331831,30339227,30346633,30354041,30361453,30368861,30376277,30383663,30391069,30398483],by decide +kernel,by decide +kernel⟩,
⟨30398483,[30405901,30413303,30420721,30428141,30435569,30442987,30450421,30457853,30465277,30472711,30480139,30487577,30495013,30502447,30509893,30517339,30524789,30532237,30539671,30547093,30554543,30562003,30569459,30576907,30584371,30591811,30599267,30606731,30614189,30621659,30629111,30636589],by decide +kernel,by decide +kernel⟩,
⟨30636589,[30644063,30651497,30658981,30666443,30673931,30681419,30688901,30696383,30703877,30711361,30718841,30726329,30733831,30741323,30748793,30756301,30763807,30771287,30778793,30786293,30793801,30801319,30808819,30816319,30823831,30831349,30838877,30846407,30853939,30861451,30868973,30876499],by decide +kernel,by decide +kernel⟩,
⟨30876499,[30884039,30891577,30899087,30906613,30914141,30921661,30929201,30936751,30944297,30951853,30959407,30966967,30974483,30982037,30989593,30997159,31004711,31012273,31019831,31027393,31034963,31042541,31050121,31057703,31065263,31072849,31080391,31087961,31095527,31103119,31110691,31118281],by decide +kernel,by decide +kernel⟩,
⟨31118281,[31125869,31133461,31141007,31148609,31156211,31163809,31171403,31178977,31186583,31194179,31201787,31209377,31216993,31224587,31232207,31239823,31247449,31255067,31262659,31270273,31277867,31285487,31293109,31300729,31308367,31316003,31323641,31331269,31338919,31346569,31354187,31361839],by decide +kernel,by decide +kernel⟩,
⟨31361839,[31369483,31377139,31384799,31392461,31400123,31407769,31415437,31423103,31430761,31438411,31446067,31453733,31461413,31469069,31476743,31484417,31492093,31499761,31507403,31515079,31522747,31530437,31538131,31545763,31553453,31561141,31568843,31576549,31584247,31591957,31599671,31607363],by decide +kernel,by decide +kernel⟩,
⟨31607363,[31615063,31622779,31630481,31638193,31645919,31653623,31661351,31669081,31676809,31684537,31692259,31699981,31707679,31715339,31723067,31730807,31738547,31746289,31754039,31761761,31769497,31777247,31785007,31792759,31800499,31808243,31816009,31823767,31831523,31839289,31847029,31854761],by decide +kernel,by decide +kernel⟩,
⟨31854761,[31862533,31870309,31878089,31885873,31893629,31901417,31909183,31916947,31924741,31932503,31940267,31948051,31955849,31963601,31971391,31979191,31986973,31994773,32002549,32010353,32018167,32025937,32033747,32041561,32049349,32057171,32064997,32072827,32080639,32088467,32096303,32104139],by decide +kernel,by decide +kernel⟩,
⟨32104139,[32111971,32119771,32127611,32135449,32143291,32151139,32158981,32166817,32174671,32182519,32190373,32198233,32206093,32213953,32221811,32229629,32237497,32245357,32253223,32261093,32268919,32276779,32284657,32292539,32300417,32308301,32316181,32324069,32331947,32339833,32347723,32355577],by decide +kernel,by decide +kernel⟩,
⟨32355577,[32363459,32371357,32379253,32387149,32395049,32402957,32410849,32418761,32426659,32434561,32442469,32450389,32458277,32466199,32474119,32482027,32489927,32497841,32505769,32513687,32521591,32529487,32537429,32545333,32553277,32561213,32569157,32577079,32585023,32592979,32600929,32608867],by decide +kernel,by decide +kernel⟩,
⟨32608867,[32616821,32624777,32632727,32640677,32648647,32656579,32664529,32672501,32680471,32688437,32696401,32704369,32712353,32720333,32728307,32736289,32744279,32752273,32760263,32768237,32776223,32784217,32792219,32800217,32808211,32816219,32824219,32832229,32840233,32848247,32856221,32864231],by decide +kernel,by decide +kernel⟩,
⟨32864231,[32872187,32880163,32888189,32896211,32904233,32912261,32920271,32928281,32936303,32944297,32952331,32960371,32968417,32976431,32984467,32992501,33000547,33008603,33016663,33024709,33032771,33040801,33048853,33056909,33064973,33073043,33081119,33089179,33097247,33105323,33113359,33121441],by decide +kernel,by decide +kernel⟩,
⟨33121441,[33129529,33137603,33145687,33153781,33161867,33169951,33178027,33186119,33194207,33202313,33210409,33218503,33226591,33234703,33242779,33250871,33258983,33267097,33275197,33283303,33291409,33299537,33307663,33315791,33323923,33332051,33340189,33348323,33356459,33364601,33372737,33380873],by decide +kernel,by decide +kernel⟩,
⟨33380873,[33389011,33397153,33405299,33413441,33421579,33429733,33437867,33446029,33454189,33462353,33470519,33478681,33486847,33495019,33503179,33511339,33519457,33527617,33535793,33543971,33552161,33560333,33568517,33576713,33584909,33593101,33601277,33609481,33617629,33625831,33634031,33642239],by decide +kernel,by decide +kernel⟩,
⟨33642239,[33650447,33658631,33666839,33675041,33683261,33691477,33699703,33707897,33716119,33724349,33732583,33740809,33749041,33757271,33765467,33773699,33781939,33790181,33798421,33806629,33814883,33823129,33831379,33839633,33847871,33856127,33864379,33872639,33880907,33889171,33897431,33905693],by decide +kernel,by decide +kernel⟩,
⟨33905693,[33913961,33922223,33930499,33938771,33947051,33955321,33963607,33971893,33980179,33988469,33996761,34005061,34013351,34021657,34029929,34038239,34046539,34054849,34063151,34071469,34079777,34088083,34096343,34104659,34112987,34121267,34129531,34137863,34146199,34154537,34162861,34171201],by decide +kernel,by decide +kernel⟩,
⟨34171201,[34179533,34187873,34196221,34204553,34212889,34221203,34229539,34237873,34246217,34254569,34262881,34271233,34279579,34287943,34296313,34304687,34313053,34321403,34329761,34338137,34346513,34354883,34363271,34371607,34379981,34388363,34396759,34405157,34413557,34421941,34430339,34438739],by decide +kernel,by decide +kernel⟩,
⟨34438739,[34447121,34455527,34463921,34472323,34480741,34489153,34497571,34505993,34514419,34522843,34531271,34539697,34548079,34556507,34564939,34573349,34581787,34590217,34598623,34607071,34615513,34623961,34632401,34640831,34649261,34657687,34666147,34674599,34683059,34691519,34699963,34708433],by decide +kernel,by decide +kernel⟩,
⟨34708433,[34716893,34725367,34733801,34742243,34750693,34759177,34767661,34776151,34784641,34793131,34801621,34810103,34818571,34827073,34835561,34844059,34852561,34861069,34869563,34878073,34886573,34895089,34903597,34912099,34920623,34929119,34937647,34946147,34954679,34963189,34971721,34980259],by decide +kernel,by decide +kernel⟩,
⟨34980259,[34988783,34997327,35005843,35014391,35022937,35031467,35040001,35048539,35057089,35065649,35074199,35082739,35091293,35099851,35108413,35116969,35125537,35134111,35142671,35151251,35159827,35168401,35176951,35185523,35194111,35202703,35211299,35219879,35228461,35237051,35245649,35254249],by decide +kernel,by decide +kernel⟩,
⟨35254249,[35262853,35271449,35280059,35288653,35297257,35305867,35314463,35323063,35331677,35340293,35348923,35357521,35366143,35374771,35383391,35392031,35400623,35409233,35417869,35426497,35435119,35443741,35452387,35461039,35469677,35478307,35486947,35495599,35504267,35512937,35521601,35530273],by decide +kernel,by decide +kernel⟩,
⟨35530273,[35538947,35547619,35556289,35564951,35573623,35582303,35590969,35599651,35608327,35617019,35625713,35634409,35643037,35651731,35660423,35669087,35677783,35686493,35695199,35703911,35712623,35721337,35730031,35738723,35747441,35756129,35764853,35773567,35782289,35791009,35799721,35808463],by decide +kernel,by decide +kernel⟩,
⟨35808463,[35817193,35825939,35834683,35843419,35852143,35860883,35869637,35878391,35887147,35895907,35904653,35913403,35922167,35930897,35939663,35948383,35957113,35965889,35974667,35983447,35992211,36000989,36009773,36018553,36027293,36036071,36044849,36053609,36062401,36071207,36080003,36088781],by decide +kernel,by decide +kernel⟩,
⟨36088781,[36097583,36106373,36115171,36123979,36132799,36141619,36150427,36159251,36168079,36176911,36185719,36194551,36203371,36212191,36220997,36229841,36238687,36247529,36256373,36265213,36274057,36282907,36291763,36300619,36309451,36318283,36327103,36335947,36344813,36353663,36362533,36371389],by decide +kernel,by decide +kernel⟩,
⟨36371389,[36380261,36389141,36398017,36406897,36415781,36424651,36433519,36442379,36451277,36460139,36469003,36477907,36486803,36495703,36504581,36513469,36522383,36531301,36540209,36549109,36558031,36566951,36575879,36584803,36593729,36602663,36611581,36620497,36629393,36638323,36647269,36656209],by decide +kernel,by decide +kernel⟩,
⟨36656209,[36665159,36674093,36683047,36691981,36700933,36709889,36718841,36727807,36736769,36745691,36754661,36763631,36772601,36781579,36790561,36799541,36808523,36817499,36826459,36835441,36844433,36853423,36862417,36871403,36880397,36889403,36898409,36907417,36916393,36925403,36934411,36943421],by decide +kernel,by decide +kernel⟩,
⟨36943421,[36952429,36961423,36970369,36979387,36988417,36997421,37006447,37015481,37024513,37033511,37042553,37051591,37060633,37069679,37078711,37087741,37096783,37105823,37114877,37123927,37132987,37142047,37151089,37160161,37169227,37178291,37187333,37196413,37205473,37214531,37223611,37232681],by decide +kernel,by decide +kernel⟩,
⟨37232681,[37241759,37250839,37259933,37269019,37278103,37287199,37296269,37305353,37314457,37323569,37332679,37341791,37350893,37360009,37369117,37378241,37387349,37396453,37405573,37414703,37423819,37432957,37442089,37451189,37460329,37469473,37478611,37487753,37496897,37506043,37515199,37524343],by decide +kernel,by decide +kernel⟩,
⟨37524343,[37533481,37542623,37551779,37560949,37570103,37579277,37588429,37597607,37606787,37615969,37625117,37634299,37643483,37652651,37661843,37671037,37680217,37689403,37698601,37707779,37716979,37726189,37735361,37744561,37753759,37762961,37772179,37781389,37790603,37799821,37809049,37818247],by decide +kernel,by decide +kernel⟩,
⟨37818247,[37827443,37836671,37845887,37855117,37864339,37873579,37882763,37892003,37901243,37910473,37919729,37928987,37938233,37947487,37956727,37965953,37975213,37984481,37993751,38003027,38012297,38021561,38030779,38040059,38049329,38058541,38067823,38077111,38086381,38095667,38104967,38114267],by decide +kernel,by decide +kernel⟩,
⟨38114267,[38123573,38132879,38142191,38151499,38160809,38170127,38179409,38188729,38198051,38207359,38216681,38225983,38235317,38244637,38253947,38263279,38272609,38281933,38291243,38300579,38309851,38319199,38328553,38337899,38347247,38356603,38365949,38375279,38384629,38393989,38403361,38412637],by decide +kernel,by decide +kernel⟩,
⟨38412637,[38421997,38431331,38440711,38450063,38459441,38468827,38478221,38487613,38497003,38506397,38515787,38525173,38534569,38543969,38553379,38562793,38572189,38581597,38591017,38600437,38609861,38619241,38628671,38638087,38647507,38656939,38666363,38675801,38685209,38694653,38704069,38713511],by decide +kernel,by decide +kernel⟩,
⟨38713511,[38722927,38732383,38741831,38751283,38760739,38770201,38779661,38789119,38798569,38808043,38817509,38826961,38836417,38845853,38855329,38864809,38874289,38883749,38893223,38902691,38912183,38921677,38931163,38940661,38950151,38959643,38969149,38978623,38988139,38997649,39007169,39016667],by decide +kernel,by decide +kernel⟩,
⟨39016667,[39026191,39035699,39045221,39054749,39064273,39073807,39083347,39092881,39102421,39111967,39121507,39131047,39140599,39150151,39159707,39169243,39178787,39188353,39197891,39207451,39216973,39226543,39236107,39245683,39255263,39264847,39274421,39283997,39293567,39303151,39312737,39322333],by decide +kernel,by decide +kernel⟩,
⟨39322333,[39331933,39341537,39351139,39360719,39370297,39379867,39389447,39399029,39408647,39418243,39427859,39437471,39447101,39456721,39466351,39475979,39485603,39495223,39504859,39514481,39524119,39533759,39543407,39553061,39562703,39572363,39582007,39591667,39601333,39610993,39620653,39630319],by decide +kernel,by decide +kernel⟩,
⟨39630319,[39639973,39649633,39659303,39668957,39678643,39688331,39697997,39707671,39717331,39727007,39736693,39746393,39756097,39765799,39775469,39785177,39794857,39804553,39814237,39823939,39833659,39843371,39853091,39862787,39872519,39882251,39891983,39901699,39911437,39921181,39930929,39940669],by decide +kernel,by decide +kernel⟩,
⟨39940669,[39950419,39960157,39969913,39979673,39989399,39999163,40008929,40018691,40028453,40038221,40047989,40057741,40067497,40077281,40087067,40096853,40106629,40116407,40126201,40135973,40145771,40155559,40165351,40175159,40184941,40194751,40204561,40214371,40224181,40233983,40243799,40253617],by decide +kernel,by decide +kernel⟩,
⟨40253617,[40263407,40273213,40283027,40292821,40302649,40312487,40322329,40332169,40342013,40351849,40361701,40371503,40381357,40391173,40401013,40410869,40420717,40430581,40440451,40450301,40460171,40470043,40479913,40489793,40499663,40509499,40519361,40529239,40539091,40548967,40558841,40568741],by decide +kernel,by decide +kernel⟩,
⟨40568741,[40578619,40588523,40598419,40608299,40618211,40628129,40638049,40647961,40657879,40667797,40677713,40687627,40697549,40707487,40717381,40727311,40737251,40747193,40757137,40767049,40776977,40786903,40796863,40806823,40816759,40826701,40836667,40846633,40856603,40866571,40876547,40886501],by decide +kernel,by decide +kernel⟩,
⟨40886501,[40896451,40906429,40916417,40926397,40936373,40946359,40956329,40966327,40976321,40986317,40996313,41006321,41016323,41026333,41036339,41046353,41056361,41066381,41076391,41086421,41096441,41106473,41116507,41126513,41136547,41146591,41156569,41166613,41176661,41186707,41196761,41206819],by decide +kernel,by decide +kernel⟩,
⟨41206819,[41216843,41226907,41236969,41247029,41257087,41267159,41277227,41287303,41297381,41307439,41317519,41327599,41337689,41347783,41357837,41367899,41377957,41388041,41398129,41408221,41418301,41428411,41438519,41448619,41458723,41468827,41478949,41489059,41499169,41509297,41519417,41529539],by decide +kernel,by decide +kernel⟩,
⟨41529539,[41539669,41549803,41559943,41570063,41580211,41590343,41600483,41610637,41620793,41630879,41641031,41651171,41661331,41671501,41681677,41691851,41702027,41712199,41722361,41732549,41742739,41752903,41763097,41773283,41783477,41793679,41803873,41814053,41824253,41834461,41844661,41854877],by decide +kernel,by decide +kernel⟩,
⟨41854877,[41865091,41875313,41885537,41895731,41905961,41916191,41926421,41936627,41946859,41957101,41967307,41977541,41987783,41998031,42008261,42018511,42028771,42039013,42049243,42059497,42069767,42080029,42090277,42100549,42110807,42121067,42131347,42141607,42151897,42162179,42172463,42182743],by decide +kernel,by decide +kernel⟩,
⟨42182743,[42193043,42203341,42213643,42223949,42234251,42244549,42254837,42265147,42275411,42285731,42296027,42306343,42316669,42326981,42337283,42347621,42357941,42368279,42378619,42388949,42399277,42409589,42419941,42430279,42440633,42450977,42461269,42471623,42481981,42492353,42502727,42513103],by decide +kernel,by decide +kernel⟩,
⟨42513103,[42523457,42533833,42544219,42554593,42564983,42575341,42585721,42596107,42606491,42616879,42627283,42637687,42648059,42658463,42668867,42679261,42689681,42700103,42710491,42720919,42731347,42741781,42752173,42762611,42773041,42783469,42793903,42804343,42814781,42825217,42835673,42846131],by decide +kernel,by decide +kernel⟩,
⟨42846131,[42856591,42867049,42877453,42887917,42898363,42908809,42919277,42929723,42940169,42950651,42961117,42971587,42982073,42992563,43003019,43013491,43023989,43034477,43044971,43055461,43065941,43076441,43086943,43097459,43107947,43118459,43128973,43139497,43150031,43160567,43171081,43181599],by decide +kernel,by decide +kernel⟩,
⟨43181599,[43192139,43202683,43213217,43223759,43234309,43244857,43255417,43265923,43276483,43287037,43297591,43308157,43318697,43329271,43339847,43350413,43360997,43371533,43382123,43392683,43403279,43413829,43424417,43435019,43445599,43456207,43466791,43477403,43488013,43498627,43509247,43519849],by decide +kernel,by decide +kernel⟩,
⟨43519849,[43530449,43541059,43551689,43562317,43572953,43583593,43594231,43604857,43615487,43626137,43636781,43647431,43658081,43668701,43679333,43689991,43700653,43711321,43721987,43732657,43743331,43753967,43764631,43775293,43785971,43796647,43807321,43818001,43828691,43839359,43850063,43860767],by decide +kernel,by decide +kernel⟩,
⟨43860767,[43871473,43882171,43892887,43903603,43914317,43925039,43935757,43946471,43957187,43967897,43978633,43989367,44000101,44010817,44021561,44032267,44043011,44053747,44064499,44075249,44085997,44096761,44107523,44118271,44129017,44139787,44150527,44161297,44172067,44182829,44193607,44204383],by decide +kernel,by decide +kernel⟩,
⟨44204383,[44215153,44225927,44236657,44247457,44258237,44269019,44279819,44290613,44301419,44312209,44322977,44333791,44344609,44355427,44366251,44377079,44387899,44398723,44409557,44420399,44431243,44442077,44452907,44463719,44474569,44485423,44496269,44507129,44517973,44528839,44539697,44550551],by decide +kernel,by decide +kernel⟩,
⟨44550551,[44561401,44572279,44583157,44593961,44604841,44615723,44626609,44637497,44648389,44659267,44670151,44681047,44691953,44702789,44713703,44724611,44735531,44746453,44757373,44768279,44779199,44790101,44801017,44811953,44822879,44833823,44844763,44855693,44866639,44877593,44888537,44899493],by decide +kernel,by decide +kernel⟩,
⟨44899493,[44910449,44921413,44932379,44943347,44954291,44965247,44976199,44987171,44998147,45009113,45020099,45031081,45042059,45053053,45064051,45075047,45086047,45097049,45108061,45119051,45130067,45141079,45152087,45163093,45174121,45185123,45196157,45207181,45218219,45229259,45240301,45251329],by decide +kernel,by decide +kernel⟩,
⟨45251329,[45262337,45273373,45284423,45295409,45306461,45317501,45328553,45339583,45350653,45361699,45372757,45383827,45394897,45405977,45417041,45428129,45439213,45450289,45461387,45472487,45483583,45494689,45505793,45516899,45528001,45539101,45550181,45561301,45572399,45583507,45594631,45605753],by decide +kernel,by decide +kernel⟩,
⟨45605753,[45616873,45628007,45639149,45650291,45661391,45672511,45683653,45694799,45705931,45717071,45728213,45739361,45750527,45761669,45772819,45783989,45795157,45806297,45817469,45828599,45839779,45850969,45862153,45873343,45884539,45895739,45906941,45918133,45929339,45940523,45951739,45962953],by decide +kernel,by decide +kernel⟩,
⟨45962953,[45974177,45985343,45996557,46007789,46019023,46030247,46041487,46052729,46063973,46075213,46086451,46097687,46108939,46120183,46131413,46142653,46153909,46165157,46176421,46187693,46198969,46210249,46221529,46232803,46244089,46255337,46266631,46277921,46289203,46300481,46311781,46323089],by decide +kernel,by decide +kernel⟩]

def rd5 : List (Part ratioEdge) := [
⟨46323089,[46334389,46345699,46357009,46368323,46379639,46390961,46402271,46413583,46424897,46436213,46447537,46458869,46470211,46481537,46492883,46504207,46515563,46526911,46538263,46549627,46560989,46572359,46583659,46594981,46606327,46617679,46629043,46640393,46651733,46663103,46674493,46685861],by decide +kernel,by decide +kernel⟩,
⟨46685861,[46697257,46708633,46720027,46731427,46742833,46754221,46765627,46777043,46788449,46799873,46811293,46822717,46834129,46845559,46856969,46868407,46879837,46891283,46902731,46914167,46925621,46937063,46948519,46959977,46971433,46982869,46994333,47005789,47017253,47028733,47040199,47051681],by decide +kernel,by decide +kernel⟩,
⟨47051681,[47063167,47074639,47086121,47097607,47109089,47120587,47132087,47143571,47155067,47166577,47178067,47189581,47201093,47212589,47224117,47235641,47247157,47258689,47270227,47281769,47293307,47304847,47316397,47327941,47339489,47351039,47362591,47374141,47385707,47397269,47408843,47420419],by decide +kernel,by decide +kernel⟩,
⟨47420419,[47431997,47443579,47455129,47466701,47478281,47489851,47501359,47512957,47524553,47536127,47547727,47559329,47570891,47582503,47594119,47605741,47617351,47628949,47640577,47652203,47663839,47675477,47687111,47698751,47710393,47722039,47733619,47745259,47756909,47768561,47780191,47791847],by decide +kernel,by decide +kernel⟩,
⟨47791847,[47803501,47815151,47826827,47838503,47850181,47861857,47873537,47885213,47896867,47908559,47920237,47931901,47943559,47955263,47966959,47978659,47990363,48002077,48013799,48025513,48037237,48048961,48060679,48072391,48084107,48095837,48107561,48119293,48131033,48142771,48154517,48166259],by decide +kernel,by decide +kernel⟩,
⟨48166259,[48178021,48189767,48201533,48213301,48225053,48236821,48248597,48260357,48272113,48283867,48295633,48307423,48319213,48331007,48342761,48354547,48366323,48378101,48389911,48401723,48413489,48425291,48437083,48448903,48460723,48472547,48484379,48496193,48508027,48519869,48531673,48543511],by decide +kernel,by decide +kernel⟩,
⟨48543511,[48555343,48567157,48579017,48590873,48602707,48614519,48626381,48638237,48650099,48661937,48673817,48685691,48697577,48709417,48721297,48733183,48745057,48756947,48768847,48780751,48792661,48804563,48816479,48828391,48840313,48852217,48864133,48876043,48887963,48899899,48911803,48923729],by decide +kernel,by decide +kernel⟩,
⟨48923729,[48935669,48947617,48959549,48971501,48983453,48995399,49007363,49019317,49031273,49043233,49055203,49067167,49079117,49091099,49103071,49115041,49127003,49138987,49150963,49162961,49174963,49186961,49198943,49210951,49222961,49234981,49246991,49259017,49271017,49283041,49295069,49307077],by decide +kernel,by decide +kernel⟩,
⟨49307077,[49319099,49331089,49343093,49355107,49367147,49379191,49391233,49403267,49415323,49427387,49439447,49451497,49463549,49475617,49487693,49499729,49511773,49523863,49535939,49548019,49560109,49572203,49584307,49596413,49608523,49620631,49632727,49644821,49656941,49669051,49681139,49693253],by decide +kernel,by decide +kernel⟩,
⟨49693253,[49705373,49717511,49729651,49741789,49753927,49766069,49778221,49790353,49802509,49814659,49826773,49838911,49851059,49863223,49875391,49887533,49899713,49911893,49924079,49936267,49948427,49960613,49972801,49984999,49997201,50009371,50021579,50033779,50045987,50058199,50070367,50082587],by decide +kernel,by decide +kernel⟩,
⟨50082587,[50094799,50107003,50119189,50131409,50143651,50155883,50168119,50180359,50192599,50204851,50217049,50229307,50241553,50253809,50266067,50278331,50290601,50302877,50315149,50327423,50339693,50351981,50364253,50376541,50388839,50401123,50413421,50425717,50438029,50450341,50462623,50474939],by decide +kernel,by decide +kernel⟩,
⟨50474939,[50487233,50499557,50511883,50524207,50536517,50548843,50561177,50573519,50585839,50598181,50610533,50622881,50635241,50647603,50659943,50672287,50684653,50697007,50709367,50721743,50734121,50746489,50758879,50771269,50783651,50796047,50808431,50820793,50833193,50845601,50857997,50870399],by decide +kernel,by decide +kernel⟩,
⟨50870399,[50882801,50895223,50907643,50920063,50932477,50944897,50957243,50969669,50982103,50994523,51006947,51019399,51031847,51044297,51056723,51069181,51081647,51094093,51106543,51119009,51131477,51143959,51156433,51168913,51181387,51193853,51206341,51218831,51231331,51243833,51256297,51268813],by decide +kernel,by decide +kernel⟩,
⟨51268813,[51281317,51293839,51306361,51318887,51331417,51343939,51356453,51368983,51381509,51394037,51406583,51419131,51431687,51444223,51456749,51469303,51481861,51494423,51506993,51519569,51532147,51544709,51557281,51569863,51582439,51594997,51607583,51620161,51632717,51645299,51657887,51670501],by decide +kernel,by decide +kernel⟩,
⟨51670501,[51683081,51695681,51708299,51720923,51733553,51746173,51758783,51771373,51784009,51796651,51809299,51821893,51834539,51847193,51859837,51872501,51885161,51897829,51910499,51923153,51935803,51948439,51961121,51973729,51986399,51999091,52011767,52024439,52037129,52049827,52062533,52075223],by decide +kernel,by decide +kernel⟩,
⟨52075223,[52087927,52100591,52113283,52125991,52138687,52151399,52164097,52176809,52189549,52202281,52215019,52227739,52240493,52253219,52265977,52278739,52291469,52304191,52316963,52329737,52342513,52355293,52368067,52380847,52393637,52406401,52419163,52431959,52444757,52457557,52470323,52483133],by decide +kernel,by decide +kernel⟩,
⟨52483133,[52495903,52508717,52521509,52534333,52547149,52559981,52572811,52585591,52598393,52611233,52624063,52636901,52649747,52662569,52675421,52688263,52701067,52713929,52726799,52739669,52752541,52765409,52778293,52791181,52804061,52816949,52829837,52842731,52855631,52868533,52881391,52894301],by decide +kernel,by decide +kernel⟩,
⟨52894301,[52907201,52920113,52932991,52945903,52958809,52971739,52984667,52997597,53010511,53023427,53036363,53049313,53062267,53075221,53088181,53101141,53114077,53127013,53139937,53152907,53165869,53178833,53191783,53204761,53217751,53230741,53243737,53256739,53269739,53282729,53295733,53308727],by decide +kernel,by decide +kernel⟩,
⟨53308727,[53321731,53334751,53347771,53360789,53373797,53386829,53399837,53412851,53425877,53438921,53451943,53464979,53478031,53491073,53504131,53517193,53530261,53543297,53556343,53569403,53582483,53595473,53608549,53621611,53634703,53647793,53660879,53673979,53687077,53700181,53713291,53726389],by decide +kernel,by decide +kernel⟩,
⟨53726389,[53739493,53752613,53765717,53778821,53791951,53805077,53818181,53831321,53844463,53857579,53870731,53883883,53896967,53910127,53923277,53936437,53949593,53962759,53975927,53989063,54002233,54015407,54028589,54041777,54054971,54068171,54081373,54094571,54107777,54120977,54134149,54147349],by decide +kernel,by decide +kernel⟩,
⟨54147349,[54160559,54173783,54186989,54200221,54213449,54226681,54239923,54253163,54266353,54279601,54292841,54306061,54319319,54332581,54345847,54359117,54372389,54385649,54398909,54412187,54425473,54438757,54452023,54465293,54478553,54491821,54505117,54518417,54531727,54545033,54558319,54571631],by decide +kernel,by decide +kernel⟩,
⟨54571631,[54584939,54598249,54611569,54624901,54638209,54651551,54664891,54678227,54691579,54704917,54718267,54731629,54744973,54758339,54771709,54785083,54798461,54811819,54825193,54838577,54851959,54865351,54878741,54892141,54905537,54918937,54932329,54945731,54959143,54972527,54985951,54999367],by decide +kernel,by decide +kernel⟩,
⟨54999367,[55012787,55026203,55039639,55053041,55066483,55079923,55093327,55106773,55120189,55133633,55147087,55160549,55174013,55187477,55200953,55214407,55227877,55241357,55254821,55268303,55281781,55295267,55308763,55322269,55335727,55349237,55362739,55376221,55389743,55403267,55416791,55430321],by decide +kernel,by decide +kernel⟩,
⟨55430321,[55443847,55457377,55470911,55484449,55497991,55511543,55525081,55538633,55552183,55565737,55579301,55592861,55606429,55620007,55633579,55647079,55660607,55674193,55687777,55701361,55714961,55728551,55742153,55755761,55769353,55782971,55796591,55810187,55823809,55837427,55851049,55864663],by decide +kernel,by decide +kernel⟩,
⟨55864663,[55878301,55891943,55905589,55919219,55932871,55946519,55960153,55973779,55987439,56001083,56014723,56028389,56042069,56055743,56069407,56083091,56096779,56110471,56124149,56137849,56151553,56165261,56178943,56192659,56206373,56220083,56233799,56247517,56261239,56274943,56288671,56302397],by decide +kernel,by decide +kernel⟩,
⟨56302397,[56316137,56329849,56343571,56357317,56371079,56384813,56398567,56412331,56426101,56439863,56453629,56467403,56481179,56494957,56508721,56522519,56536309,56550103,56563883,56577691,56591503,56605319,56619127,56632943,56646757,56660581,56674403,56688241,56702083,56715929,56729779,56743613],by decide +kernel,by decide +kernel⟩,
⟨56743613,[56757461,56771303,56785163,56798993,56812859,56826719,56840587,56854463,56868337,56882207,56896087,56909971,56923817,56937703,56951603,56965463,56979361,56993273,57007183,57021067,57034961,57048881,57062783,57076717,57090653,57104591,57118531,57132451,57146363,57160309,57174259,57188207],by decide +kernel,by decide +kernel⟩,
⟨57188207,[57202163,57216121,57230087,57244043,57258013,57271969,57285929,57299903,57313871,57327847,57341839,57355811,57369811,57383797,57397801,57411817,57425833,57439843,57453857,57467807,57481829,57495863,57509897,57523931,57537967,57551993,57566027,57580049,57594109,57608147,57622157,57636217],by decide +kernel,by decide +kernel⟩,
⟨57636217,[57650291,57664361,57678409,57692477,57706547,57720617,57734707,57748799,57762877,57776977,57791053,57805157,57819257,57833351,57847441,57861533,57875647,57889763,57903893,57918019,57932131,57946261,57960407,57974519,57988663,58002821,58016983,58031147,58045301,58059467,58073629,58087781],by decide +kernel,by decide +kernel⟩,
⟨58087781,[58101949,58116131,58130311,58144487,58158671,58172831,58187029,58201223,58215431,58229621,58243813,58258033,58272241,58286447,58300651,58314869,58329083,58343297,58357543,58371779,58386023,58400263,58414513,58428761,58443019,58457263,58471519,58485751,58500023,58514299,58528571,58542863],by decide +kernel,by decide +kernel⟩,
⟨58542863,[58557113,58571393,58585693,58599997,58614299,58628611,58642919,58657223,58671541,58685867,58700197,58714529,58728827,58743137,58757477,58771787,58786139,58800463,58814809,58829161,58843493,58857857,58872227,58886587,58900957,58915331,58929707,58944079,58958441,58972829,58987219,59001617],by decide +kernel,by decide +kernel⟩,
⟨59001617,[59016019,59030383,59044751,59059159,59073503,59087923,59102321,59116723,59131153,59145589,59159963,59174393,59188837,59203289,59217713,59232163,59246591,59261053,59275523,59289961,59304407,59318879,59333357,59347837,59362291,59376787,59391271,59405767,59420243,59434751,59449253,59463769],by decide +kernel,by decide +kernel⟩,
⟨59463769,[59478259,59492777,59507291,59521817,59536343,59550851,59565347,59579887,59594429,59608981,59623519,59638069,59652601,59667149,59681719,59696279,59710841,59725399,59739983,59754559,59769131,59783723,59798311,59812901,59827507,59842103,59856703,59871313,59885927,59900531,59915153,59929769],by decide +kernel,by decide +kernel⟩,
⟨59929769,[59944399,59959019,59973647,59988277,60002869,60017521,60032173,60046801,60061457,60076091,60090757,60105359,60120029,60134707,60149371,60164059,60178739,60193433,60208129,60222817,60237523,60252217,60266897,60281593,60296311,60310993,60325709,60340393,60355123,60369853,60384587,60399331],by decide +kernel,by decide +kernel⟩,
⟨60399331,[60414061,60428813,60443567,60458327,60473081,60487759,60502523,60517279,60532039,60546797,60561581,60576367,60591061,60605843,60620633,60635431,60650221,60665023,60679813,60694603,60709423,60724229,60739039,60753871,60768703,60783497,60798319,60813149,60827999,60842851,60857707,60872549],by decide +kernel,by decide +kernel⟩,
⟨60872549,[60887413,60902269,60917117,60931963,60946829,60961699,60976571,60991451,61006313,61021201,61036099,61050991,61065883,61080793,61095707,61110617,61125511,61140421,61155349,61170283,61185209,61200127,61215071,61230007,61244959,61259897,61274831,61289771,61304657,61319627,61334597,61349539],by decide +kernel,by decide +kernel⟩,
⟨61349539,[61364507,61379491,61394471,61409429,61424411,61439401,61454381,61469383,61484387,61499393,61514359,61529339,61544359,61559387,61574411,61589401,61604407,61619429,61634473,61649521,61664531,61679573,61694623,61709657,61724699,61739771,61754843,61769849,61784927,61800007,61815097,61830191],by decide +kernel,by decide +kernel⟩,
⟨61830191,[61845271,61860353,61875439,61890541,61905647,61920763,61935787,61950901,61965991,61981123,61996241,62011379,62026519,62041657,62056801,62071927,62087029,62102149,62117311,62132437,62147539,62162707,62177887,62193029,62208187,62223367,62238557,62253739,62268931,62284097,62299301,62314513],by decide +kernel,by decide +kernel⟩,
⟨62314513,[62329711,62344921,62360143,62375353,62390579,62405809,62421043,62436251,62451497,62466743,62481983,62497241,62512501,62527753,62542979,62558239,62573477,62588749,62604019,62619299,62634587,62649871,62665157,62680439,62695691,62710969,62726281,62741579,62756887,62772209,62787521,62802853],by decide +kernel,by decide +kernel⟩,
⟨62802853,[62818187,62833523,62848817,62864161,62879503,62894831,62910181,62925491,62940853,62956211,62971577,62986951,63002237,63017621,63033007,63048397,63063779,63079171,63094561,63109957,63125357,63140761,63156157,63171571,63186997,63202427,63217841,63233231,63248659,63264101,63279547,63294997],by decide +kernel,by decide +kernel⟩,
⟨63294997,[63310453,63325861,63341323,63356771,63372203,63387677,63403139,63418603,63434081,63449557,63465047,63480523,63496021,63511477,63526979,63542489,63557953,63573463,63588983,63604493,63620023,63635557,63651089,63666619,63682159,63697693,63713239,63728789,63744341,63759907,63775433,63790949],by decide +kernel,by decide +kernel⟩,
⟨63790949,[63806521,63822091,63837661,63853247,63868829,63884423,63900013,63915611,63931193,63946793,63962387,63977993,63993607,64009217,64024843,64040477,64056107,64071739,64087381,64103029,64118627,64134277,64149931,64165583,64181237,64196861,64212523,64228169,64243819,64259483,64275163,64290859],by decide +kernel,by decide +kernel⟩,
⟨64290859,[64306549,64322249,64337947,64353649,64369351,64385033,64400729,64416431,64432157,64447891,64463627,64479361,64495103,64510841,64526563,64542311,64558063,64573793,64589513,64605269,64621027,64636753,64652477,64668211,64683953,64699741,64715531,64731311,64747099,64762909,64778723,64794533],by decide +kernel,by decide +kernel⟩,
⟨64794533,[64810337,64826161,64841989,64857787,64873597,64889423,64905233,64921067,64936903,64952749,64968569,64984411,65000269,65016139,65032013,65047883,65063741,65079629,65095411,65111303,65127163,65143037,65158939,65174831,65190743,65206637,65222551,65238461,65254373,65270299,65286229,65302169],by decide +kernel,by decide +kernel⟩,
⟨65302169,[65318111,65334047,65349961,65365919,65381879,65397841,65413811,65429743,65445707,65461687,65477653,65493613,65509583,65525533,65541523,65557523,65573531,65589527,65605543,65621551,65637557,65653583,65669599,65685623,65701663,65717669,65733697,65749721,65765729,65781767,65797829,65813893],by decide +kernel,by decide +kernel⟩,
⟨65813893,[65829961,65846021,65862079,65878157,65894243,65910311,65926397,65942489,65958583,65974687,65990797,66006887,66023003,66039097,66055211,66071329,66087457,66103589,66119731,66135871,66152011,66168161,66184309,66200467,66216611,66232757,66248899,66265063,66281203,66297379,66313567,66329719],by decide +kernel,by decide +kernel⟩,
⟨66329719,[66345911,66362099,66378293,66394483,66410689,66426887,66443093,66459277,66475489,66491653,66507877,66524071,66540293,66556531,66572783,66589031,66605281,66621509,66637757,66654017,66670273,66686551,66702833,66719119,66735407,66751697,66767983,66784271,66800557,66816833,66833141,66849439],by decide +kernel,by decide +kernel⟩,
⟨66849439,[66865759,66882083,66898409,66914741,66931069,66947369,66963709,66980047,66996389,67012739,67029077,67045441,67061791,67078159,67094527,67110889,67127243,67143631,67160021,67176379,67192709,67209091,67225493,67241897,67258277,67274699,67291121,67307507,67323943,67340381,67356823,67373269],by decide +kernel,by decide +kernel⟩,
⟨67373269,[67389667,67406117,67422577,67439041,67455499,67471933,67488403,67504867,67521347,67537829,67554317,67570807,67587307,67603807,67620307,67636817,67653323,67669829,67686323,67702847,67719373,67735907,67752413,67768957,67785493,67802039,67818587,67835137,67851689,67868237,67884809,67901363],by decide +kernel,by decide +kernel⟩,
⟨67901363,[67917943,67934521,67951109,67967689,67984253,68000839,68017423,68034019,68050607,68067199,68083801,68100391,68117017,68133643,68150281,68166899,68183537,68200183,68216831,68233489,68250151,68266817,68283443,68300107,68316769,68333431,68350109,68366791,68383481,68400169,68416861,68433559],by decide +kernel,by decide +kernel⟩,
⟨68433559,[68450267,68466977,68483693,68500409,68517121,68533841,68550569,68567299,68584039,68600771,68617519,68634263,68650999,68667763,68684527,68701289,68718061,68734753,68751523,68768303,68785049,68801801,68818597,68835379,68852183,68868979,68885779,68902577,68919391,68936201,68953019,68969843],by decide +kernel,by decide +kernel⟩,
⟨68969843,[68986681,69003523,69020359,69037193,69054047,69070891,69087749,69104603,69121477,69138353,69155197,69172007,69188891,69205753,69222631,69239449,69256357,69273233,69290119,69307039,69323957,69340853,69357779,69374707,69391643,69408557,69425497,69442427,69459367,69476327,69493253,69510223],by decide +kernel,by decide +kernel⟩,
⟨69510223,[69527197,69544171,69561139,69578101,69595091,69612083,69629051,69646051,69663043,69680053,69697037,69714053,69731021,69748039,69765041,69782071,69799109,69816143,69833149,69850201,69867251,69884293,69901309,69918371,69935429,69952507,69969587,69986669,70003757,70020851,70037941,70055003],by decide +kernel,by decide +kernel⟩,
⟨70055003,[70072081,70089163,70106273,70123379,70140479,70157603,70174729,70191859,70208993,70226137,70243273,70260389,70277521,70294681,70311823,70328959,70346131,70363301,70380469,70397633,70414819,70432013,70449191,70466381,70483573,70500763,70517971,70535189,70552399,70569617,70586807,70604021],by decide +kernel,by decide +kernel⟩,
⟨70604021,[70621261,70638481,70655719,70672969,70690211,70707473,70724711,70741973,70759229,70776487,70793759,70811023,70828297,70845587,70862879,70880179,70897483,70914787,70932089,70949407,70966717,70984033,71001341,71018677,71035999,71053343,71070679,71088023,71105381,71122729,71140079,71157409],by decide +kernel,by decide +kernel⟩,
⟨71157409,[71174777,71192137,71209499,71226863,71244223,71261611,71279009,71296411,71313817,71331209,71348621,71366039,71383463,71400893,71418307,71435737,71453153,71470507,71487931,71505361,71522779,71540237,71557693,71575157,71592623,71610061,71627531,71644981,71662441,71679919,71697413,71714869],by decide +kernel,by decide +kernel⟩,
⟨71714869,[71732371,71749861,71767379,71784901,71802413,71819941,71837459,71854997,71872543,71890069,71907599,71925149,71942701,71960263,71977811,71995387,72012961,72030521,72048107,72065687,72083267,72100849,72118441,72136037,72153611,72171199,72188821,72206437,72224059,72241681,72259283,72276901],by decide +kernel,by decide +kernel⟩,
⟨72276901,[72294517,72312143,72329801,72347441,72365047,72382711,72400381,72418061,72435743,72453413,72471101,72488771,72506453,72524093,72541801,72559507,72577223,72594943,72612653,72630377,72648109,72665843,72683587,72701329,72719069,72736823,72754573,72772331,72790093,72807853,72825631,72843413],by decide +kernel,by decide +kernel⟩,
⟨72843413,[72861161,72878947,72896713,72914503,72932239,72950041,72967813,72985621,73003433,73021253,73039067,73056883,73074713,73092553,73110397,73128241,73146089,73163939,73181777,73199641,73217509,73235387,73253269,73271131,73289009,73306903,73324763,73342667,73360571,73378427,73396291,73414199],by decide +kernel,by decide +kernel⟩,
⟨73414199,[73432103,73450031,73467937,73485877,73503809,73521751,73539649,73557599,73575559,73593497,73611427,73629377,73647341,73665313,73683301,73701293,73719287,73737281,73755257,73773229,73791229,73809193,73827211,73845217,73863247,73881263,73899283,73917313,73935331,73953379,73971397,73989407],by decide +kernel,by decide +kernel⟩,
⟨73989407,[74007467,74025529,74043587,74061667,74079713,74097797,74115883,74133967,74152063,74170127,74188223,74206333,74224453,74242507,74260603,74278691,74296829,74314937,74333069,74351219,74369359,74387513,74405663,74423813,74441977,74460151,74478311,74496497,74514683,74532869,74551049,74569249],by decide +kernel,by decide +kernel⟩,
⟨74569249,[74587451,74605631,74623831,74642041,74660233,74678453,74696681,74714917,74733151,74751389,74769601,74787859,74806117,74824357,74842613,74860889,74879153,74897437,74915707,74934001,74952299,74970601,74988889,75007201,75025507,75043823,75062137,75080459,75098791,75117113,75135451,75153791],by decide +kernel,by decide +kernel⟩,
⟨75153791,[75172109,75190457,75208817,75227177,75245539,75263899,75282253,75300623,75318961,75337349,75355739,75374081,75392483,75410869,75429283,75447679,75466103,75484531,75502937,75521297,75539731,75558167,75576601,75595031,75613487,75631949,75650417,75668867,75687323,75705787,75724267,75742753],by decide +kernel,by decide +kernel⟩,
⟨75742753,[75761249,75779731,75798227,75816733,75835241,75853751,75872261,75890747,75909271,75927791,75946319,75964859,75983407,76001927,76020473,76039027,76057591,76076149,76094723,76113287,76131871,76150439,76169029,76187603,76206203,76224803,76243417,76261987,76280609,76299233,76317863,76336499],by decide +kernel,by decide +kernel⟩]

def rd6 : List (Part ratioEdge) := [
⟨76336499,[76355131,76373761,76392403,76411033,76429681,76448293,76466959,76485581,76504247,76522889,76541561,76560247,76578919,76597603,76616257,76634959,76653673,76672381,76691089,76709813,76728541,76747271,76765967,76784689,76803439,76822181,76840931,76859677,76878433,76897169,76915931,76934713],by decide +kernel,by decide +kernel⟩,
⟨76934713,[76953497,76972289,76991077,77009873,77028671,77047469,77066263,77085067,77103883,77122697,77141507,77160341,77179111,77197951,77216801,77235649,77254453,77273309,77292157,77311021,77329891,77348773,77367649,77386537,77405429,77424301,77443193,77462101,77481017,77499913,77518801,77537717],by decide +kernel,by decide +kernel⟩,
⟨77537717,[77556629,77575549,77594483,77613427,77632369,77651317,77670269,77689211,77708153,77727127,77746079,77765041,77783989,77802973,77821957,77840957,77859961,77878973,77897957,77916961,77935951,77954959,77973983,77993017,78012061,78031103,78050153,78069197,78088253,78107303,78126353,78145427],by decide +kernel,by decide +kernel⟩,
⟨78145427,[78164509,78183559,78202639,78221707,78240769,78259873,78278951,78298061,78317179,78336301,78355427,78374537,78393649,78412777,78431917,78451069,78470219,78489377,78508543,78527707,78546883,78566041,78585211,78604373,78623563,78642757,78661951,78681143,78700331,78719539,78738743,78757963],by decide +kernel,by decide +kernel⟩,
⟨78757963,[78777163,78796351,78815557,78834799,78854011,78873247,78892501,78911747,78931007,78950257,78969521,78988799,79008079,79027369,79046609,79065901,79085191,79104503,79123819,79143139,79162463,79181743,79201051,79220389,79239701,79259017,79278371,79297681,79317037,79336403,79355741,79375111],by decide +kernel,by decide +kernel⟩,
⟨79375111,[79394473,79413857,79433239,79452631,79472027,79491397,79510807,79530223,79549621,79569047,79588459,79607881,79627319,79646753,79666177,79685629,79705069,79724531,79743977,79763449,79782917,79802329,79821811,79841291,79860769,79880261,79899767,79919269,79938721,79958231,79977719,79997237],by decide +kernel,by decide +kernel⟩,
⟨79997237,[80016767,80036279,80055793,80075341,80094869,80114399,80133961,80153527,80173091,80192659,80212241,80231821,80251397,80270963,80290547,80310137,80329699,80349287,80368907,80388527,80408149,80427769,80447401,80467039,80486663,80506313,80525959,80545589,80565253,80584901,80604553,80624233],by decide +kernel,by decide +kernel⟩,
⟨80624233,[80643887,80663567,80683261,80702953,80722651,80742353,80762069,80781769,80801491,80821219,80840939,80860673,80880367,80900117,80919871,80939627,80959357,80979127,80998901,81018629,81038413,81058183,81077957,81097733,81117499,81137281,81157091,81176899,81196721,81216547,81236359,81256183],by decide +kernel,by decide +kernel⟩,
⟨81256183,[81275983,81295817,81315653,81335483,81355331,81375191,81395053,81414923,81434791,81454673,81474563,81494431,81514271,81534157,81554059,81573971,81593861,81613783,81633703,81653629,81673567,81693487,81713431,81733363,81753319,81773273,81793241,81813191,81833153,81853099,81873073,81893057],by decide +kernel,by decide +kernel⟩,
⟨81893057,[81913049,81933043,81953029,81973013,81993029,82013003,82032989,82053007,82073029,82093069,82113107,82133153,82153139,82173197,82193231,82213267,82233343,82253419,82273487,82293553,82313633,82333723,82353781,82373869,82393979,82414097,82434169,82454299,82474397,82494527,82514633,82534721],by decide +kernel,by decide +kernel⟩,
⟨82534721,[82554869,82574983,82595143,82615307,82635463,82655627,82675807,82695989,82716181,82736351,82756549,82776739,82796929,82817129,82837331,82857539,82877761,82897981,82918217,82938433,82958683,82978939,82999193,83019421,83039689,83059897,83080169,83100443,83120711,83140997,83161291,83181589],by decide +kernel,by decide +kernel⟩,
⟨83181589,[83201897,83222207,83242529,83262779,83283073,83303387,83323693,83344039,83364361,83384687,83405033,83425399,83445751,83466113,83486483,83506849,83527229,83547601,83567989,83588389,83608801,83629201,83649619,83670043,83690461,83710897,83731337,83751779,83772193,83792617,83813071,83833523],by decide +kernel,by decide +kernel⟩,
⟨83833523,[83853989,83874463,83894933,83915413,83935903,83956393,83976863,83997337,84017849,84038347,84058867,84079393,84099881,84120367,84140909,84161453,84181969,84202523,84223057,84243571,84264139,84284713,84305293,84325873,84346439,84367033,84387623,84408197,84428809,84449423,84470041,84490621],by decide +kernel,by decide +kernel⟩,
⟨84490621,[84511247,84531869,84552497,84573143,84593767,84614417,84635077,84655729,84676391,84697061,84717733,84738397,84759079,84779777,84800479,84821161,84841873,84862567,84883273,84903991,84924703,84945433,84966137,84986851,85007569,85028323,85049077,85069843,85090613,85111391,85132163,85152919],by decide +kernel,by decide +kernel⟩,
⟨85152919,[85173707,85194467,85215157,85235951,85256737,85277531,85298351,85319159,85339979,85360819,85381661,85402507,85423361,85444217,85465067,85485937,85506809,85527679,85548563,85569443,85590331,85611203,85632101,85653011,85673911,85694827,85715753,85736681,85757599,85778513,85799449,85820393],by decide +kernel,by decide +kernel⟩,
⟨85820393,[85841311,85862263,85883221,85904191,85925153,85946131,85967093,85988081,86009071,86030071,86050973,86071981,86092999,86113991,86135011,86156041,86177057,86198083,86219123,86240173,86261221,86282281,86303323,86324389,86345459,86366543,86387629,86408711,86429807,86450857,86471909,86493023],by decide +kernel,by decide +kernel⟩,
⟨86493023,[86514133,86535199,86556317,86577437,86598571,86619703,86640781,86661931,86683081,86704243,86725391,86746567,86767741,86788873,86810057,86831219,86852413,86873617,86894827,86916043,86937259,86958481,86979713,87000937,87022171,87043399,87064651,87085907,87107173,87128443,87149717,87170983],by decide +kernel,by decide +kernel⟩,
⟨87170983,[87192263,87213521,87234793,87256067,87277367,87298669,87319987,87341279,87362599,87383929,87405257,87426571,87447917,87469247,87490603,87511961,87533287,87554657,87576031,87597343,87618733,87640121,87661517,87682919,87704327,87725741,87747161,87768539,87789953,87811387,87832817,87854257],by decide +kernel,by decide +kernel⟩,
⟨87854257,[87875707,87897151,87918563,87939991,87961463,87982943,88004419,88025909,88047391,88068833,88090333,88111823,88133323,88154827,88176349,88197871,88219403,88240937,88262483,88283981,88305517,88327081,88348649,88370213,88391773,88413337,88434919,88456499,88478077,88499681,88521283,88542889],by decide +kernel,by decide +kernel⟩,
⟨88542889,[88564493,88586119,88607719,88629353,88650949,88672553,88694173,88715791,88737437,88759079,88780751,88802431,88824103,88845793,88867489,88889153,88910851,88932533,88954247,88975967,88997693,89019421,89041159,89062879,89084627,89106377,89128133,89149897,89171629,89193389,89215169,89236943],by decide +kernel,by decide +kernel⟩,
⟨89236943,[89258671,89280463,89302259,89324047,89345843,89367661,89389481,89411293,89433079,89454917,89476727,89498537,89520391,89542249,89564107,89585957,89607823,89629703,89651587,89673473,89695367,89717269,89739173,89761079,89782997,89804881,89826797,89848687,89870617,89892563,89914499,89936449],by decide +kernel,by decide +kernel⟩,
⟨89936449,[89958409,89980361,90002303,90024239,90046211,90068191,90090181,90112181,90134179,90156181,90178189,90200189,90222199,90244181,90266173,90288197,90310237,90332287,90354317,90376379,90398419,90420469,90442537,90464623,90486709,90508763,90530827,90552919,90575029,90597119,90619237,90641363],by decide +kernel,by decide +kernel⟩,
⟨90641363,[90663467,90685583,90707723,90729853,90752003,90774149,90796309,90818477,90840649,90862823,90885007,90907183,90929369,90951559,90973769,90995969,91018183,91040407,91062619,91084837,91107059,91129277,91151527,91173769,91196011,91218263,91240537,91262807,91285093,91307383,91329677,91351979],by decide +kernel,by decide +kernel⟩,
⟨91351979,[91374271,91396583,91418893,91441213,91463503,91485833,91508167,91530493,91552843,91575199,91597549,91619909,91642279,91664633,91686983,91709369,91731743,91754137,91776481,91798879,91821277,91843699,91866109,91888507,91910933,91933301,91955741,91978171,92000609,92023073,92045539,92067991],by decide +kernel,by decide +kernel⟩,
⟨92067991,[92090461,92112947,92135431,92157917,92180411,92202911,92225387,92247851,92270371,92292869,92315401,92337941,92360483,92383013,92405567,92428123,92450693,92473267,92495813,92518399,92540971,92563567,92586133,92608727,92631337,92653933,92676541,92699149,92721773,92744363,92767009,92789639],by decide +kernel,by decide +kernel⟩,
⟨92789639,[92812297,92834953,92857619,92880289,92902961,92925643,92948321,92970967,92993597,93016291,93038999,93061699,93084421,93107149,93129877,93152581,93175319,93198031,93220789,93243551,93266297,93289061,93311839,93334613,93357379,93380173,93402973,93425779,93448591,93471409,93494221,93517027],by decide +kernel,by decide +kernel⟩,
⟨93517027,[93539863,93562699,93585511,93608329,93631177,93654019,93676883,93699757,93722623,93745507,93768391,93791279,93814163,93837053,93859967,93882863,93905753,93928657,93951593,93974533,93997469,94020413,94043353,94066309,94089241,94112131,94135091,94158047,94181039,94204037,94227037,94250041],by decide +kernel,by decide +kernel⟩,
⟨94250041,[94273031,94296047,94319063,94342093,94365071,94388111,94411127,94434173,94457179,94480223,94503287,94526363,94549421,94572503,94595587,94618687,94641779,94664873,94687969,94711073,94734179,94757227,94780363,94803479,94826617,94849771,94872889,94896041,94919207,94942363,94965547,94988723],by decide +kernel,by decide +kernel⟩,
⟨94988723,[95011907,95035097,95058281,95081479,95104693,95127887,95151113,95174333,95197567,95220793,95244007,95267243,95290501,95313721,95336971,95360233,95383511,95406803,95430089,95453363,95476649,95499959,95523277,95546599,95569907,95593241,95616557,95639903,95663237,95686597,95709953,95733311],by decide +kernel,by decide +kernel⟩,
⟨95733311,[95756681,95780039,95803403,95826769,95850121,95873527,95896937,95920351,95943773,95967163,95990597,96014027,96037453,96060893,96084347,96107779,96131227,96154679,96178109,96201583,96225071,96248567,96272051,96295543,96319057,96342577,96366103,96389627,96413129,96436663,96460201,96483733],by decide +kernel,by decide +kernel⟩,
⟨96483733,[96507277,96530831,96554389,96577961,96601543,96625117,96648709,96672307,96695909,96719521,96743131,96766739,96790357,96813991,96837619,96861239,96884869,96908527,96932149,96955813,96979489,97003163,97026829,97050517,97074209,97097867,97121533,97145207,97168927,97192651,97216309,97240049],by decide +kernel,by decide +kernel⟩,
⟨97240049,[97263769,97287499,97311241,97335001,97358753,97382521,97406279,97430051,97453817,97477591,97501387,97525193,97548989,97572793,97596593,97620421,97644229,97668061,97691903,97715747,97739573,97763441,97787311,97811179,97835063,97858939,97882831,97906733,97930639,97954553,97978457,98002369],by decide +kernel,by decide +kernel⟩,
⟨98002369,[98026297,98050217,98074159,98098103,98122033,98145989,98169899,98193871,98217841,98241817,98265799,98289781,98313779,98337781,98361793,98385811,98409823,98433847,98457841,98481863,98505889,98529931,98553989,98578049,98602111,98626189,98650273,98674357,98698441,98722543,98746649,98770757],by decide +kernel,by decide +kernel⟩,
⟨98770757,[98794841,98818961,98843089,98867213,98891347,98915483,98939623,98963771,98987909,99012073,99036239,99060397,99084571,99108761,99132941,99157103,99181309,99205511,99229733,99253951,99278177,99302407,99326639,99350887,99375109,99399373,99423613,99447877,99472159,99496447,99520723,99545021],by decide +kernel,by decide +kernel⟩,
⟨99545021,[99569321,99593579,99617873,99642197,99666527,99690859,99715201,99739547,99763897,99788243,99812579,99836939,99861319,99885703,99910093,99934487,99958891,99983243,100007647,100032067,100056479,100080901,100105339,100129747,100154189,100178641,100203073,100227541,100252013,100276483,100300939,100325411],by decide +kernel,by decide +kernel⟩,
⟨100325411,[100349891,100374367,100398839,100423339,100447861,100472369,100496897,100521413,100545953,100570501,100595041,100619593,100644163,100668731,100693309,100717889,100742431,100767001,100791583,100816193,100840793,100865411,100890037,100914661,100939303,100963949,100988599,101013259,101037907,101062547,101087191,101111867],by decide +kernel,by decide +kernel⟩,
⟨101111867,[101136557,101161243,101185943,101210633,101235331,101260031,101284751,101309479,101334199,101358923,101383661,101408399,101433161,101457931,101482697,101507473,101532251,101557039,101581829,101606629,101631433,101656241,101681057,101705873,101730697,101755529,101780353,101805181,101830037,101854901,101879773,101904641],by decide +kernel,by decide +kernel⟩,
⟨101904641,[101929523,101954383,101979271,102004169,102029077,102053981,102078883,102103769,102128687,102153599,102178543,102203483,102228409,102253357,102278321,102303247,102328223,102353189,102378179,102403163,102428147,102453157,102478169,102503189,102528193,102553147,102578159,102603199,102628217,102653267,102678319,102703373],by decide +kernel,by decide +kernel⟩,
⟨102703373,[102728443,102753487,102778579,102803663,102828763,102853873,102878983,102904091,102929191,102954283,102979403,103004543,103029691,103054849,103080011,103105157,103130333,103155517,103180699,103205881,103231069,103256213,103281421,103306579,103331791,103356949,103382159,103407401,103432613,103457833,103483031,103508299],by decide +kernel,by decide +kernel⟩,
⟨103508299,[103533571,103558853,103584137,103609427,103634723,103660019,103685327,103710643,103735969,103761277,103786601,103811921,103837271,103862593,103887937,103913291,103938647,103964023,103989383,104014747,104040127,104065531,104090869,104116241,104141647,104167061,104192489,104217931,104243369,104268823,104294263,104319731],by decide +kernel,by decide +kernel⟩,
⟨104319731,[104345203,104370677,104396161,104421643,104447141,104472629,104498129,104523623,104549131,104574649,104600183,104625709,104651233,104676787,104702347,104727877,104753437,104779009,104804593,104830181,104855761,104881333,104906939,104932549,104958173,104983787,105009403,105034999,105060647,105086279,105111899,105137567],by decide +kernel,by decide +kernel⟩,
⟨105137567,[105163231,105188819,105214477,105240169,105265847,105291541,105317239,105342949,105368663,105394343,105420059,105445793,105471539,105497237,105522983,105548731,105574501,105600259,105625991,105651781,105677581,105703387,105729193,105755003,105780827,105806639,105832471,105858307,105884153,105910003,105935831,105961631],by decide +kernel,by decide +kernel⟩,
⟨105961631,[105987467,106013333,106039211,106065103,106090997,106116893,106142761,106168679,106194601,106220519,106246451,106272349,106298261,106324217,106350169,106376119,106402063,106428037,106454021,106480001,106505999,106532003,106557991,106584011,106610033,106636021,106662043,106688089,106714129,106740187,106766243,106792277],by decide +kernel,by decide +kernel⟩,
⟨106792277,[106818353,106844417,106870507,106896563,106922657,106948757,106974871,107000977,107027093,107053229,107079359,107105501,107131649,107157803,107183953,107210113,107236277,107262451,107288627,107314813,107341019,107367203,107393413,107419601,107445829,107472049,107498249,107524463,107550719,107576981,107603231,107629493],by decide +kernel,by decide +kernel⟩,
⟨107629493,[107655763,107682041,107708299,107734597,107760883,107787187,107813479,107839807,107866133,107892457,107918791,107945143,107971477,107997839,108024197,108050567,108076949,108103321,108129689,108156053,108182401,108208811,108235223,108261653,108288083,108314519,108340961,108367417,108393863,108420331,108446801,108473273],by decide +kernel,by decide +kernel⟩,
⟨108473273,[108499757,108526247,108552737,108579227,108605737,108632219,108658723,108685253,108711793,108738299,108764849,108791407,108817949,108844471,108871033,108897619,108924199,108950791,108977387,109003997,109030591,109057211,109083817,109110451,109137089,109163737,109190387,109217039,109243703,109270333,109297009,109323667],by decide +kernel,by decide +kernel⟩,
⟨109323667,[109350347,109377049,109403741,109430449,109457143,109483861,109510579,109537301,109564033,109590769,109617511,109644263,109671019,109697789,109724567,109751359,109778153,109804949,109831763,109858549,109885361,109912183,109939021,109965857,109992637,110019491,110046323,110073191,110100061,110126927,110153801,110180699],by decide +kernel,by decide +kernel⟩,
⟨110180699,[110207561,110234473,110261381,110288291,110315213,110342147,110369087,110396017,110422943,110449897,110476799,110503777,110530757,110557729,110584723,110611703,110638711,110665729,110692753,110719781,110746799,110773837,110800871,110827919,110854981,110882047,110909111,110936179,110963257,110990317,111017419,111044501],by decide +kernel,by decide +kernel⟩,
⟨111044501,[111071599,111098693,111125809,111152897,111180031,111207181,111234323,111261457,111288623,111315773,111342947,111370123,111397289,111424483,111451687,111478901,111506119,111533347,111560569,111587809,111615041,111642287,111669541,111696803,111724069,111751327,111778613,111805907,111833207,111860503,111887819,111915137],by decide +kernel,by decide +kernel⟩,
⟨111915137,[111942451,111969763,111997091,112024433,112051789,112079137,112106497,112133867,112161229,112188613,112215991,112243357,112270757,112298143,112325561,112352987,112380407,112407793,112435241,112462687,112490099,112517557,112545029,112572469,112599937,112627429,112654931,112682441,112709941,112737451,112764923,112792453],by decide +kernel,by decide +kernel⟩,
⟨112792453,[112819981,112847531,112875031,112902557,112930061,112957613,112985183,113012773,113040359,113067961,113095559,113123173,113150797,113178419,113206019,113233657,113261303,113288947,113316569,113344229,113371903,113399569,113427229,113454917,113482609,113510297,113538011,113565733,113593427,113621153,113648897,113676643],by decide +kernel,by decide +kernel⟩,
⟨113676643,[113704397,113732153,113759923,113787689,113815469,113843243,113871013,113898781,113926591,113954333,113982131,114009953,114037739,114065521,114093367,114121181,114148981,114176831,114204703,114232583,114260459,114288337,114316243,114344123,114372023,114399947,114427879,114455821,114483757,114511703,114539653,114567613],by decide +kernel,by decide +kernel⟩,
⟨114567613,[114595571,114623543,114651533,114679529,114707521,114735529,114763547,114791563,114819587,114847619,114875623,114903617,114931673,114959737,114987767,115015843,115043911,115072003,115100087,115128193,115156277,115184393,115212511,115240571,115268683,115296809,115324961,115353107,115381267,115409431,115437611,115465787],by decide +kernel,by decide +kernel⟩,
⟨115465787,[115493977,115522171,115550353,115578569,115606753,115634957,115663169,115691413,115719661,115747909,115776173,115804421,115832693,115860977,115889269,115917563,115945867,115974181,116002499,116030809,116059109,116087431,116115773,116144117,116172451,116200817,116229109,116257481,116285837,116314213,116342609,116371009],by decide +kernel,by decide +kernel⟩,
⟨116371009,[116399419,116427821,116456237,116484647,116513077,116541521,116569979,116598437,116626903,116655361,116683843,116712331,116740783,116769259,116797741,116826263,116854763,116883287,116911759,116940293,116968847,116997407,117025949,117054517,117083101,117111679,117140269,117168847,117197459,117226069,117254693,117283301],by decide +kernel,by decide +kernel⟩,
⟨117283301,[117311933,117340577,117369229,117397879,117426541,117455213,117483887,117512567,117541261,117569941,117598651,117627311,117656003,117684713,117713411,117742151,117770899,117799657,117828419,117857191,117885967,117914743,117943513,117972301,118001101,118029907,118058687,118087499,118116329,118145161,118174003,118202839],by decide +kernel,by decide +kernel⟩,
⟨118202839,[118231697,118260559,118289429,118318303,118347193,118376087,118404973,118433881,118462787,118491701,118520603,118549507,118578431,118607347,118636291,118665259,118694231,118723183,118752173,118781171,118810177,118839181,118868171,118897159,118926193,118955231,118984273,119013319,119042359,119071427,119100503,119129573],by decide +kernel,by decide +kernel⟩,
⟨119129573,[119158657,119187749,119216827,119245921,119275019,119304127,119333161,119362279,119391361,119420507,119449663,119478829,119507987,119537161,119566319,119595503,119624707,119653903,119683079,119712289,119741491,119770709,119799943,119829197,119858447,119887679,119916949,119946199,119975489,120004783,120034087,120063371],by decide +kernel,by decide +kernel⟩,
⟨120063371,[120092681,120122003,120151303,120180637,120209953,120239293,120268639,120297997,120327359,120356741,120386131,120415507,120444911,120474313,120503711,120533113,120562537,120591959,120621401,120650839,120680299,120709769,120739231,120768707,120798179,120827657,120857161,120886657,120916177,120945703,120975233,121004773],by decide +kernel,by decide +kernel⟩,
⟨121004773,[121034279,121063829,121093391,121122949,121152509,121182091,121211663,121241251,121270829,121300441,121330061,121359643,121389277,121418887,121448521,121478177,121507829,121537501,121567177,121596841,121626521,121656209,121685891,121715569,121745263,121774987,121804723,121834429,121864163,121893917,121923673,121953431],by decide +kernel,by decide +kernel⟩,
⟨121953431,[121983187,122012959,122042749,122072551,122102317,122132123,122161943,122191747,122221579,122251399,122281223,122311069,122340893,122370767,122400637,122430527,122460409,122490311,122520193,122550101,122579999,122609917,122639857,122669803,122699741,122729699,122759653,122789603,122819581,122849563,122879557],by decide +kernel,by decide +kernel⟩]

def rparts : List (Part ratioEdge) := List.flatten [rd0,rd1,rd2,rd3,rd4,rd5,rd6]

theorem rchain : Chain ratioEdge 4096073 122879557 :=
  join_sound (ss:=rparts) (by decide) (by decide +kernel)

theorem common_1000_30000 {n i j : Nat} (hi : 1000 ≤ i) (hu : i ≤ 30000)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j := by
  by_cases hn : 4096 * i ≤ n
  · exact largeN hi hu hij hjn hn
  · by_cases hseed : n < 4096073
    · obtain ⟨p,hp,hpn,hnear⟩ := achain.nearAdd (n := n) (by omega) hseed
      exact N9.common_of_top_prime hij hjn hp (by omega) hpn
    · by_cases hlast : n < 122879557
      · obtain ⟨p,hp,hpn,hnear⟩ := rchain.nearRatio (n := n) (by omega) hlast
        exact N9.common_of_top_prime hij hjn hp (by omega) hpn
      · exact N9.common_of_top_prime hij hjn rchain.lastPrime (by omega) (by omega)
theorem common_gcd_1000_30000 {n i j : Nat} (hi : 1000 ≤ i) (hu : i ≤ 30000)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ (n.choose i).gcd (n.choose j) := by
  obtain ⟨p,hp,hpi,hd1,hd2⟩ := common_1000_30000 hi hu hij hjn
  exact ⟨p,hp,hpi,Nat.dvd_gcd hd1 hd2⟩
end Contribution.Range
#print axioms Contribution.Range.common_1000_30000
#print axioms Contribution.Range.common_gcd_1000_30000
