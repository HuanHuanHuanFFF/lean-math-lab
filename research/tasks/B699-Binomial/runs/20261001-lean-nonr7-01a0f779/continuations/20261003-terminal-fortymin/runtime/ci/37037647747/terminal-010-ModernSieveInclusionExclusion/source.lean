module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ModernSieveBound
import all research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.ModernSieveBound
public import Mathlib.Combinatorics.Enumerative.InclusionExclusion

/-! Exact finite inclusion-exclusion for the paper section 3.1 sieve.
This is a cardinality identity, before replacing intersections by floor divisions
or evaluating the existing 115 fixed rows. No numerical sieve result is assumed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
open scoped BigOperators
public section
namespace B699ModernSieve
attribute [local instance] Classical.propDecidable

noncomputable def intersections (P : Finset Nat) (b : Nat) : Finset Nat := by
  classical
  exact (Finset.Icc 1 b).filter (fun m => ∀ q ∈ P, q ∣ m)

theorem restricted_inf_card (P : Finset Nat) (b : Nat) (R : Nat → Nat → Prop) :
    ((P.inf (fun q => (Finset.univ : Finset ↥(Finset.Icc 1 b)).filter
      (fun m => R q m.val))).card) =
      ((Finset.Icc 1 b).filter (fun m => ∀ q ∈ P, R q m)).card := by
  classical
  have hm (x : ↥(Finset.Icc 1 b)) :
      x ∈ P.inf (fun q => (Finset.univ : Finset ↥(Finset.Icc 1 b)).filter
        (fun m => R q m.val)) ↔ ∀ q ∈ P, R q x.val := by
    induction P using Finset.induction_on with
    | empty => simp
    | @insert q s hqs ih =>
      rw [Finset.inf_insert]
      simp only [Finset.inf_eq_inter, Finset.mem_inter, Finset.mem_filter, Finset.mem_univ, true_and]
      rw [ih]
      simp
  apply Finset.card_bij (fun x _ => x.val)
  · intro x hx
    exact Finset.mem_filter.mpr ⟨x.property, (hm x).mp hx⟩
  · intro x hx y hy hxy
    exact Subtype.ext hxy
  · intro m hmem
    obtain ⟨hmb, hR⟩ := Finset.mem_filter.mp hmem
    exact ⟨⟨m, hmb⟩, (hm ⟨m, hmb⟩).mpr hR, rfl⟩

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

end B699ModernSieve
#check @B699ModernSieve.survivors_card_inclusion_exclusion
#print axioms B699ModernSieve.restricted_inf_card
#print axioms B699ModernSieve.survivors_card_inclusion_exclusion

