import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk008

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P008
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk008.witnesses
private def intervals : List NatInterval := [(864, 873), (874, 874), (875, 875), (876, 876), (877, 887), (888, 897), (898, 898), (899, 899), (900, 900), (901, 901), (902, 902), (903, 903), (904, 904), (905, 905), (906, 906), (907, 917)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk008.witnesses_check

private theorem cover_check : coverCheck 864 917 intervals = true := by
  decide

theorem sound : IntervalSound (864, 917) := by
  have hc : coverCheck 864 917 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 864) (hi := 917) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P008
