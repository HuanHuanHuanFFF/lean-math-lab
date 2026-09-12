import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk022

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P022
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk022.witnesses
private def intervals : List NatInterval := [(1846, 1846), (1847, 1857), (1858, 1858), (1859, 1859), (1860, 1860), (1861, 1871), (1872, 1881), (1882, 1889), (1890, 1899), (1900, 1900), (1901, 1911), (1912, 1917), (1918, 1923), (1924, 1924), (1925, 1925), (1926, 1926)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk022.witnesses_check

private theorem cover_check : coverCheck 1846 1926 intervals = true := by
  decide

theorem sound : IntervalSound (1846, 1926) := by
  have hc : coverCheck 1846 1926 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 1846) (hi := 1926) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P022
