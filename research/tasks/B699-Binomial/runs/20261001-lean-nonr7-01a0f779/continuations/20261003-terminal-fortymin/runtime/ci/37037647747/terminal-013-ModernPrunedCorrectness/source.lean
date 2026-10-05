module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ModernPrunedCount
import all research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ModernPrunedCount
public import Mathlib.Algebra.BigOperators.Group.Finset.Powerset
public import Mathlib.Data.Int.Basic
public import Mathlib.Algebra.Ring.Int.Defs
public import Mathlib.Algebra.Group.Nat.Defs

/-! Exact powerset correctness of zero-quotient pruning, before importing the
larger original-problem consumer. All lists without repetitions and b are
quantified, with no primality requirement for this integer identity. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
open scoped BigOperators
public section
namespace B699ModernPrunedSieve

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

end B699ModernPrunedSieve
#check @B699ModernPrunedSieve.count_eq_floorSum
#print axioms B699ModernPrunedSieve.floorSum_insert
#print axioms B699ModernPrunedSieve.count_eq_floorSum

