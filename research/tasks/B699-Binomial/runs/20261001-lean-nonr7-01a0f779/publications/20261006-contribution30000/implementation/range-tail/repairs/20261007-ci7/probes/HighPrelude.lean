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
set_option maxHeartbeats 400000
set_option maxRecDepth 65536

set_option profiler true
set_option profiler.threshold 100
namespace Contribution.ProfilingHighPrelude

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

theorem profilingPrelude : True := by trivial
end Contribution.ProfilingHighPrelude
#print axioms Contribution.ProfilingHighPrelude.profilingPrelude
