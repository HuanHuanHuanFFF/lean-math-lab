import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk023

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P023
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := B699LowIndex.I11TerminalData.Chunk023.witnesses
private def intervals : List NatInterval := [(1927, 1927), (1928, 1928), (1929, 1929), (1930, 1930), (1931, 1941), (1942, 1943), (1944, 1944), (1945, 1945), (1946, 1946), (1947, 1947), (1948, 1948), (1949, 1959), (1960, 1961), (1962, 1962), (1963, 1963), (1964, 1964)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  exact B699LowIndex.I11TerminalData.Chunk023.witnesses_check

private theorem cover_check : coverCheck 1927 1964 intervals = true := by
  decide

theorem sound : IntervalSound (1927, 1964) := by
  have hc : coverCheck 1927 1964 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  exact interval_sound_of_witness_checks (witnesses := witnesses)
    (lo := 1927) (hi := 1964) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P023
