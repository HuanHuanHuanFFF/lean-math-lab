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

namespace Contribution.R8HighFirstPartFuel

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

def primeCheck (p : Nat) : Bool :=
  if p < 11086 then trialPrimeCheck p
  else decide (2 ≤ p ∧ p < 11086*11086) && fueledCoprime 64 p F
theorem primeCheck_sound {p : Nat} (hc : primeCheck p=true) : p.Prime := by
  by_cases hs : p < 11086
  · exact trialPrimeCheck_sound (by simpa only [primeCheck,if_pos hs] using hc)
  · have hf : (2 ≤ p ∧ p < 11086*11086) ∧ fueledCoprime 64 p F=true := by
      simpa only [primeCheck,if_neg hs,Bool.and_eq_true,decide_eq_true_eq] using hc
    have he : 2 ≤ p ∧ p < 11086*11086 ∧ Nat.gcd p F=1 :=
      ⟨hf.1.1,hf.1.2,fueledCoprime_sound hf.2⟩
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


set_option profiler true
set_option profiler.threshold 100
def firstPart : Part addEdge := ⟨2,[887,1789,2687,3571,4463,5351,6229,7129,8017,8893,9781,10667,11551,12437,13339,14221,15107,16007,16903,17791,18679,19583,20479,21347,22247,23099,23993,24877,25771,26647,27481,28351],by decide +kernel,by decide +kernel⟩
theorem checked : Chain addEdge 2 28351 := firstPart.chain
end Contribution.R8HighFirstPartFuel
