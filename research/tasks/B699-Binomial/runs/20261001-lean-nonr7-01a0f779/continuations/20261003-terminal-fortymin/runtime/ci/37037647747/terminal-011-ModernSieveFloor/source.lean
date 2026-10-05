module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ModernSieveInclusionExclusion
import all research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ModernSieveInclusionExclusion
public import Mathlib.Data.Nat.Factorization.Basic
public import Mathlib.Data.Nat.GCD.BigOperators

/-! Paper section 3.1: the exact floor-division inclusion-exclusion formula.
All finite prime sets and natural bounds are quantified; no fixed-row count
is imported as an axiom or accepted from historical computation. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
open scoped BigOperators
public section
namespace B699ModernSieve

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

end B699ModernSieve
#check @B699ModernSieve.survivors_card_floor_formula
#print axioms B699ModernSieve.prime_prod_dvd_iff
#print axioms B699ModernSieve.intersections_card_floor
#print axioms B699ModernSieve.survivors_card_floor_formula

