import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk039

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P039
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk039.witnesses
private def intervals : List NatInterval := [(2985, 2985), (2986, 2986), (2987, 2987), (2988, 2988), (2989, 2989), (2990, 2990), (2991, 2991), (2992, 2992), (2993, 2993), (2994, 2994), (2995, 2995), (2996, 2996), (2997, 2997), (2998, 2998), (2999, 3009), (3010, 3011)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk039.witnesses_check

private theorem cover_check : coverCheck 2985 3011 intervals = true := by
  decide

theorem sound : IntervalSound (2985, 3011) := by
  have hc : coverCheck 2985 3011 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 2985) (hi := 3011) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P039
