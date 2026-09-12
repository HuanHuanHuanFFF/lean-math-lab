import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalFinal.Extended
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCrt.RowCell

/-! UNCOMPILED. Tiny exact parameter-interval diagnostics. No primality,
choose, full CRT grid, or original-problem calculation is performed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11TerminalCRT
open B699LowIndex B699LowIndex.I11TerminalCover

def exampleOldCandidates : List NatInterval := [(24, 33)]

theorem parameter_interval_low : parameterInterval 2 3 2 (-1) 0 = (3, 12) := by decide

theorem old_low_cover_fails : coverCheck 3 12 exampleOldCandidates = false := by decide

theorem extended_low_cover (cs : List NatInterval) :
    coverCheck 3 12 (extendedCandidates cs) = true := by rfl

/-- Every old list with lower endpoints>=24 has the same obstruction. -/
theorem low_cover_impossible {cs : List NatInterval}
    (hlower : ∀ I, I ∈ cs → 24 ≤ I.1) : coverCheck 3 12 cs ≠ true := by
  intro hcheck
  obtain ⟨I, hI, hIn⟩ := coverCheck_sound cs 3 12 3 hcheck (by decide) (by decide)
  have h24 := hlower I hI
  have h3 := hIn.1
  omega

/-- A second small case crosses23/24, so head and old tail must join. -/
theorem parameter_interval_crossing : parameterInterval 2 3 2 (-7) 2 = (21, 24) := by decide

theorem extended_crossing_cover :
    coverCheck 21 24 (extendedCandidates exampleOldCandidates) = true := by decide

theorem first_legal_n_stays_old : candidateMem 24 exampleOldCandidates := by
  refine ⟨(24, 33), by simp [exampleOldCandidates], ?_⟩
  exact ⟨by decide, by decide⟩

end Math.B699.I11TerminalCRT
