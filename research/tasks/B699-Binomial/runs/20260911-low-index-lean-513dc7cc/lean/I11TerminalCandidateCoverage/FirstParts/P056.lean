import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk056

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace Math.B699.I11TerminalCandidateCoverage.FirstParts.P056
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk056.w0, B699LowIndex.I11TerminalData.Chunk056.w1, B699LowIndex.I11TerminalData.Chunk056.w2, B699LowIndex.I11TerminalData.Chunk056.w3, B699LowIndex.I11TerminalData.Chunk056.w4, B699LowIndex.I11TerminalData.Chunk056.w5, B699LowIndex.I11TerminalData.Chunk056.w6, B699LowIndex.I11TerminalData.Chunk056.w7, B699LowIndex.I11TerminalData.Chunk056.w8, B699LowIndex.I11TerminalData.Chunk056.w9, B699LowIndex.I11TerminalData.Chunk056.w10, B699LowIndex.I11TerminalData.Chunk056.w11, B699LowIndex.I11TerminalData.Chunk056.w12, B699LowIndex.I11TerminalData.Chunk056.w13, B699LowIndex.I11TerminalData.Chunk056.w14]
private def intervals : List NatInterval := [(3967, 3977), (3978, 3978), (3979, 3979), (3980, 3980), (3981, 3981), (3982, 3982), (3983, 3983), (3984, 3984), (3985, 3985), (3986, 3986), (3987, 3987), (3988, 3988), (3989, 3999), (4000, 4000), (4001, 4010)]

private theorem intervals_eq : witnessIntervals witnesses = intervals := by
  rfl

private theorem checks : witnessesCheck witnesses = true := by
  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk056.w0_check, B699LowIndex.I11TerminalData.Chunk056.w1_check, B699LowIndex.I11TerminalData.Chunk056.w2_check, B699LowIndex.I11TerminalData.Chunk056.w3_check, B699LowIndex.I11TerminalData.Chunk056.w4_check, B699LowIndex.I11TerminalData.Chunk056.w5_check, B699LowIndex.I11TerminalData.Chunk056.w6_check, B699LowIndex.I11TerminalData.Chunk056.w7_check, B699LowIndex.I11TerminalData.Chunk056.w8_check, B699LowIndex.I11TerminalData.Chunk056.w9_check, B699LowIndex.I11TerminalData.Chunk056.w10_check, B699LowIndex.I11TerminalData.Chunk056.w11_check, B699LowIndex.I11TerminalData.Chunk056.w12_check, B699LowIndex.I11TerminalData.Chunk056.w13_check, B699LowIndex.I11TerminalData.Chunk056.w14_check, Bool.and_self]

private theorem cover_check : coverCheck 3967 4010 intervals = true := by
  decide

theorem sound : IntervalSound (3967, 4010) := by
  have hc : coverCheck 3967 4010 (witnessIntervals witnesses) = true := by
    rw [intervals_eq]
    exact cover_check
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := witnesses)
    (lo := 3967) (hi := 4010) checks hc

end Math.B699.I11TerminalCandidateCoverage.FirstParts.P056
