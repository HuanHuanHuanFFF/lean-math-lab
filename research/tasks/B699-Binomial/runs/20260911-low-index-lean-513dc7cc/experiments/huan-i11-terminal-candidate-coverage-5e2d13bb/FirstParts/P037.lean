import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk037

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P037
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk037.witnesses
private def intervals : List NatInterval := [(2830, 2830), (2831, 2831), (2832, 2832), (2833, 2843), (2844, 2853), (2854, 2861), (2862, 2871), (2872, 2872), (2873, 2873), (2874, 2874), (2875, 2875), (2876, 2876), (2877, 2877), (2878, 2878), (2879, 2889), (2890, 2897)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk037.witnesses_check

private theorem cover_check : coverCheck 2830 2897 intervals = true := by
  decide

theorem sound : IntervalSound (2830, 2897) := by
  have hc : coverCheck 2830 2897 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 2830) (hi := 2897) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P037
