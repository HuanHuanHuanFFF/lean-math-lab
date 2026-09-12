import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk054

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P054
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk054.witnesses
private def intervals : List NatInterval := [(3847, 3857), (3858, 3863), (3864, 3873), (3874, 3874), (3875, 3875), (3876, 3876), (3877, 3887), (3888, 3891), (3892, 3899), (3900, 3900), (3901, 3901), (3902, 3902), (3903, 3903), (3904, 3904), (3905, 3905), (3906, 3906)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk054.witnesses_check

private theorem cover_check : coverCheck 3847 3906 intervals = true := by
  decide

theorem sound : IntervalSound (3847, 3906) := by
  have hc : coverCheck 3847 3906 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 3847) (hi := 3906) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P054
