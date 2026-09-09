import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.PrimeBasis
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.SmallPrimeCount
import Init.Data.List.Range

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699MiddleExtension

/-- Completeness on a half-open interval of candidate integers. -/
def BasisCompleteOn (ps : List Nat) (lo hi : Nat) : Prop :=
  ∀ q : Nat, q.Prime → lo ≤ q → q < hi → q ∈ ps

/-- Covers every integer, using the complete existing trial checker for primality. -/
def basisRangeCheck (ps : List Nat) (lo len : Nat) : Bool :=
  (List.range' lo len).all
    (fun q => !B699LowIndex.trialPrimeCheck q || ps.contains q)

theorem basisRangeCheck_sound {ps : List Nat} {lo len : Nat}
    (hcheck : basisRangeCheck ps lo len = true) :
    BasisCompleteOn ps lo (lo + len) := by
  intro q hq hlo hhi
  have hmem : q ∈ List.range' lo len :=
    List.mem_range'.mpr ⟨q - lo, by omega, by omega⟩
  have hrow : (!B699LowIndex.trialPrimeCheck q || ps.contains q) = true :=
    List.all_eq_true.mp hcheck q hmem
  have hprime := B699Middle.trialPrimeCheck_complete (p := q) hq
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

end B699MiddleExtension

#print axioms B699MiddleExtension.basisRangeCheck_sound
#print axioms B699MiddleExtension.BasisCompleteOn.trans
#print axioms B699MiddleExtension.BasisCompleteOn.to_complete
