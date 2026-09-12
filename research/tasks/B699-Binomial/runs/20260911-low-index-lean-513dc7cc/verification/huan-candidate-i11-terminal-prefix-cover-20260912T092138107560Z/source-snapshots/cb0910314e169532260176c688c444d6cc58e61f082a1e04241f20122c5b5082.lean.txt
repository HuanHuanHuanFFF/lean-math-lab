import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.IntervalCover

/-! UNCOMPILED. Prefix extension for the unchanged early-failure checker.
Arbitrary Sublist monotonicity is false; no ordering assumption is introduced. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TerminalMono
open B699LowIndex

theorem coverCheck_empty_interval (lo hi : ℕ) (cs : List NatInterval) (h : hi < lo) :
    coverCheck lo hi cs = true := by
  cases cs with
  | nil => simp only [coverCheck, decide_eq_true_eq]; exact h
  | cons I rest =>
    obtain ⟨a, b⟩ := I
    simp only [coverCheck, if_pos h]

theorem coverCheck_append (front suffix : List NatInterval) :
    ∀ lo hi : ℕ, coverCheck lo hi front = true →
      coverCheck lo hi (front ++ suffix) = true := by
  induction front with
  | nil =>
    intro lo hi hcheck
    have hempty : hi < lo := by
      simpa only [coverCheck, decide_eq_true_eq] using hcheck
    exact coverCheck_empty_interval lo hi suffix hempty
  | cons I rest ih =>
    obtain ⟨a, b⟩ := I
    intro lo hi hcheck
    by_cases hempty : hi < lo
    · exact coverCheck_empty_interval lo hi (((a, b) :: rest) ++ suffix) hempty
    by_cases hbefore : b < lo
    · have hr : coverCheck lo hi rest = true := by
        simpa only [coverCheck, if_neg hempty, if_pos hbefore] using hcheck
      simpa only [List.cons_append, coverCheck, if_neg hempty, if_pos hbefore]
        using ih lo hi hr
    by_cases hgap : lo < a
    · simp only [coverCheck, if_neg hempty, if_neg hbefore, if_pos hgap,
        Bool.false_eq_true] at hcheck
    by_cases hdone : hi ≤ b
    · simp only [List.cons_append, coverCheck, if_neg hempty, if_neg hbefore,
        if_neg hgap, if_pos hdone]
    · have hr : coverCheck (b + 1) hi rest = true := by
        simpa only [coverCheck, if_neg hempty, if_neg hbefore, if_neg hgap,
          if_neg hdone] using hcheck
      simpa only [List.cons_append, coverCheck, if_neg hempty, if_neg hbefore,
        if_neg hgap, if_neg hdone] using ih (b + 1) hi hr

theorem coverCheck_of_isPrefix (lo hi : ℕ) (small large : List NatInterval)
    (hprefix : small.IsPrefix large) (hcheck : coverCheck lo hi small = true) :
    coverCheck lo hi large = true := by
  obtain ⟨suffix, heq⟩ := hprefix
  rw [← heq]
  exact coverCheck_append small suffix lo hi hcheck

theorem coverCheck_take (lo hi : ℕ) (cs : List NatInterval) (k : ℕ)
    (hcheck : coverCheck lo hi (cs.take k) = true) : coverCheck lo hi cs = true := by
  exact coverCheck_of_isPrefix lo hi (cs.take k) cs (List.take_prefix k cs) hcheck

/-- One inserted future interval triggers the checker's immediate gap failure. -/
theorem sublist_counterexample :
    ([(1, 1)] : List NatInterval).Sublist [(2, 2), (1, 1)] ∧
    coverCheck 1 1 [(1, 1)] = true ∧
    coverCheck 1 1 [(2, 2), (1, 1)] = false := by
  refine ⟨List.sublist_cons_self (2, 2) [(1, 1)], ?_, ?_⟩ <;> decide

theorem not_coverCheck_sublist_mono :
    ¬ (∀ (lo hi : ℕ) (small large : List NatInterval), small.Sublist large →
      coverCheck lo hi small = true → coverCheck lo hi large = true) := by
  intro h
  have hbad := h 1 1 [(1, 1)] [(2, 2), (1, 1)]
    sublist_counterexample.1 sublist_counterexample.2.1
  rw [sublist_counterexample.2.2] at hbad
  cases hbad

end Math.B699.I11TerminalMono
