import Mathlib.Data.List.Basic
import Lean.Elab.Tactic.Omega

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LowIndex

abbrev NatInterval := ℕ × ℕ
abbrev ColouredInterval := ℕ × ℕ × ℕ

def intervalMem (n : ℕ) (I : NatInterval) : Prop :=
  I.1 ≤ n ∧ n ≤ I.2

/-- A linear certificate checker for a closed interval covered by a supplied
ordered list. Only a true result is used; arbitrary gaps make the check fail. -/
def coverCheck (lo hi : ℕ) : List NatInterval → Bool
  | [] => decide (hi < lo)
  | (a, b) :: rest =>
      if hi < lo then true
      else if b < lo then coverCheck lo hi rest
      else if lo < a then false
      else if hi ≤ b then true
      else coverCheck (b + 1) hi rest

theorem coverCheck_sound (cover : List NatInterval) :
    ∀ lo hi n : ℕ, coverCheck lo hi cover = true → lo ≤ n → n ≤ hi →
      ∃ I ∈ cover, intervalMem n I := by
  induction cover with
  | nil =>
      intro lo hi n hcheck hlo hhi
      simp only [coverCheck, decide_eq_true_eq] at hcheck
      omega
  | cons I rest ih =>
      obtain ⟨a, b⟩ := I
      intro lo hi n hcheck hlo hhi
      by_cases hempty : hi < lo
      · omega
      by_cases hbefore : b < lo
      · have hr : coverCheck lo hi rest = true := by
          simpa only [coverCheck, if_neg hempty, if_pos hbefore] using hcheck
        obtain ⟨J, hJ, hnJ⟩ := ih lo hi n hr hlo hhi
        exact ⟨J, List.mem_cons_of_mem _ hJ, hnJ⟩
      by_cases hgap : lo < a
      · simp only [coverCheck, if_neg hempty, if_neg hbefore, if_pos hgap,
          Bool.false_eq_true] at hcheck
      by_cases hdone : hi ≤ b
      · refine ⟨(a, b), List.mem_cons_self, ?_⟩
        unfold intervalMem
        dsimp only
        omega
      by_cases hnhead : n ≤ b
      · refine ⟨(a, b), List.mem_cons_self, ?_⟩
        unfold intervalMem
        dsimp only
        omega
      · have hr : coverCheck (b + 1) hi rest = true := by
          simpa only [coverCheck, if_neg hempty, if_neg hbefore, if_neg hgap,
            if_neg hdone] using hcheck
        obtain ⟨J, hJ, hnJ⟩ := ih (b + 1) hi n hr (by omega) hhi
        exact ⟨J, List.mem_cons_of_mem _ hJ, hnJ⟩

/-- Check every intersection between intervals of different prime colours. -/
def pairCoverCheck (intervals : List ColouredInterval) (cover : List NatInterval) : Bool :=
  intervals.all fun I =>
    intervals.all fun J =>
      if I.1 = J.1 then true
      else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) cover

theorem pairCoverCheck_sound {intervals : List ColouredInterval}
    {cover : List NatInterval} {I J : ColouredInterval} {n : ℕ}
    (hcheck : pairCoverCheck intervals cover = true)
    (hI : I ∈ intervals) (hJ : J ∈ intervals) (hcolours : I.1 ≠ J.1)
    (hIlow : I.2.1 ≤ n) (hIhigh : n ≤ I.2.2)
    (hJlow : J.2.1 ≤ n) (hJhigh : n ≤ J.2.2) :
    ∃ K ∈ cover, intervalMem n K := by
  unfold pairCoverCheck at hcheck
  have hrow := List.all_eq_true.mp hcheck I hI
  have hpair := List.all_eq_true.mp hrow J hJ
  have hc : coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) cover = true := by
    simpa only [if_neg hcolours] using hpair
  exact coverCheck_sound cover _ _ n hc (by omega) (by omega)

end B699LowIndex

#print axioms B699LowIndex.coverCheck_sound
#print axioms B699LowIndex.pairCoverCheck_sound
