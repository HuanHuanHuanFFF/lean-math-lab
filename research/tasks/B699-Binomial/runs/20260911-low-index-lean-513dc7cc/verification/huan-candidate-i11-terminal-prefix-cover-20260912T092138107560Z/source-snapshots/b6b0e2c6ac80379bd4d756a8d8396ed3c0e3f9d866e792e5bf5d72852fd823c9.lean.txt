import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalMono.Cover

/-! UNCOMPILED exact-type and transitive-axiom audit. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
open B699LowIndex Math.B699.I11TerminalMono

#check (@Math.B699.I11TerminalMono.coverCheck_empty_interval : ∀ (lo hi : ℕ) (cs : List NatInterval) (h : hi < lo),
  coverCheck lo hi cs = true)
#print axioms Math.B699.I11TerminalMono.coverCheck_empty_interval

#check (@Math.B699.I11TerminalMono.coverCheck_append : ∀ (front suffix : List NatInterval),
  ∀ lo hi : ℕ, coverCheck lo hi front = true →
      coverCheck lo hi (front ++ suffix) = true)
#print axioms Math.B699.I11TerminalMono.coverCheck_append

#check (@Math.B699.I11TerminalMono.coverCheck_of_isPrefix : ∀ (lo hi : ℕ) (small large : List NatInterval)
    (hprefix : small.IsPrefix large) (hcheck : coverCheck lo hi small = true),
  coverCheck lo hi large = true)
#print axioms Math.B699.I11TerminalMono.coverCheck_of_isPrefix

#check (@Math.B699.I11TerminalMono.coverCheck_take : ∀ (lo hi : ℕ) (cs : List NatInterval) (k : ℕ)
    (hcheck : coverCheck lo hi (cs.take k) = true),
  coverCheck lo hi cs = true)
#print axioms Math.B699.I11TerminalMono.coverCheck_take

#check (@Math.B699.I11TerminalMono.sublist_counterexample : ([(1, 1)] : List NatInterval).Sublist [(2, 2), (1, 1)] ∧
    coverCheck 1 1 [(1, 1)] = true ∧
    coverCheck 1 1 [(2, 2), (1, 1)] = false)
#print axioms Math.B699.I11TerminalMono.sublist_counterexample

#check (@Math.B699.I11TerminalMono.not_coverCheck_sublist_mono : ¬ (∀ (lo hi : ℕ) (small large : List NatInterval), small.Sublist large →
      coverCheck lo hi small = true → coverCheck lo hi large = true))
#print axioms Math.B699.I11TerminalMono.not_coverCheck_sublist_mono

#print B699LowIndex.coverCheck
