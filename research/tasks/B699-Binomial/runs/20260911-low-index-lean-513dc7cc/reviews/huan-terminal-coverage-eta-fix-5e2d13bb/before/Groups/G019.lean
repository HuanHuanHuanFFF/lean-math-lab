import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk123
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk124
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk125

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G019
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0304_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk123.w14]
private def c0304_intervals : List NatInterval := [(9225, 9226)]

private theorem c0304_intervals_eq :
    witnessIntervals c0304_witnesses = c0304_intervals := by
  rfl

private theorem c0304_checks : witnessesCheck c0304_witnesses = true := by
  simp only [witnessesCheck, c0304_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk123.w14_check, Bool.and_self]

private theorem c0304_cover : coverCheck 9225 9226 c0304_intervals = true := by
  decide

private theorem c0304_sound : IntervalSound (9225, 9226) := by
  have hc : coverCheck 9225 9226 (witnessIntervals c0304_witnesses) = true := by
    rw [c0304_intervals_eq]
    exact c0304_cover
  exact interval_sound_of_witness_checks (witnesses := c0304_witnesses)
    (lo := 9225) (hi := 9226) c0304_checks hc

private def c0305_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk123.w15]
private def c0305_intervals : List NatInterval := [(9234, 9235)]

private theorem c0305_intervals_eq :
    witnessIntervals c0305_witnesses = c0305_intervals := by
  rfl

private theorem c0305_checks : witnessesCheck c0305_witnesses = true := by
  simp only [witnessesCheck, c0305_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk123.w15_check, Bool.and_self]

private theorem c0305_cover : coverCheck 9234 9235 c0305_intervals = true := by
  decide

private theorem c0305_sound : IntervalSound (9234, 9235) := by
  have hc : coverCheck 9234 9235 (witnessIntervals c0305_witnesses) = true := by
    rw [c0305_intervals_eq]
    exact c0305_cover
  exact interval_sound_of_witness_checks (witnesses := c0305_witnesses)
    (lo := 9234) (hi := 9235) c0305_checks hc

private def c0306_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk124.w0, B699LowIndex.I11TerminalData.Chunk124.w1, B699LowIndex.I11TerminalData.Chunk124.w2, B699LowIndex.I11TerminalData.Chunk124.w3, B699LowIndex.I11TerminalData.Chunk124.w4, B699LowIndex.I11TerminalData.Chunk124.w5, B699LowIndex.I11TerminalData.Chunk124.w6]
private def c0306_intervals : List NatInterval := [(9250, 9251), (9252, 9252), (9253, 9253), (9254, 9254), (9255, 9255), (9256, 9256), (9257, 9258)]

private theorem c0306_intervals_eq :
    witnessIntervals c0306_witnesses = c0306_intervals := by
  rfl

private theorem c0306_checks : witnessesCheck c0306_witnesses = true := by
  simp only [witnessesCheck, c0306_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk124.w0_check, B699LowIndex.I11TerminalData.Chunk124.w1_check, B699LowIndex.I11TerminalData.Chunk124.w2_check, B699LowIndex.I11TerminalData.Chunk124.w3_check, B699LowIndex.I11TerminalData.Chunk124.w4_check, B699LowIndex.I11TerminalData.Chunk124.w5_check, B699LowIndex.I11TerminalData.Chunk124.w6_check, Bool.and_self]

private theorem c0306_cover : coverCheck 9250 9258 c0306_intervals = true := by
  decide

private theorem c0306_sound : IntervalSound (9250, 9258) := by
  have hc : coverCheck 9250 9258 (witnessIntervals c0306_witnesses) = true := by
    rw [c0306_intervals_eq]
    exact c0306_cover
  exact interval_sound_of_witness_checks (witnesses := c0306_witnesses)
    (lo := 9250) (hi := 9258) c0306_checks hc

private def c0307_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk124.w7, B699LowIndex.I11TerminalData.Chunk124.w8, B699LowIndex.I11TerminalData.Chunk124.w9, B699LowIndex.I11TerminalData.Chunk124.w10, B699LowIndex.I11TerminalData.Chunk124.w11]
private def c0307_intervals : List NatInterval := [(9261, 9267), (9268, 9268), (9269, 9269), (9270, 9270), (9271, 9271)]

private theorem c0307_intervals_eq :
    witnessIntervals c0307_witnesses = c0307_intervals := by
  rfl

private theorem c0307_checks : witnessesCheck c0307_witnesses = true := by
  simp only [witnessesCheck, c0307_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk124.w7_check, B699LowIndex.I11TerminalData.Chunk124.w8_check, B699LowIndex.I11TerminalData.Chunk124.w9_check, B699LowIndex.I11TerminalData.Chunk124.w10_check, B699LowIndex.I11TerminalData.Chunk124.w11_check, Bool.and_self]

private theorem c0307_cover : coverCheck 9261 9271 c0307_intervals = true := by
  decide

private theorem c0307_sound : IntervalSound (9261, 9271) := by
  have hc : coverCheck 9261 9271 (witnessIntervals c0307_witnesses) = true := by
    rw [c0307_intervals_eq]
    exact c0307_cover
  exact interval_sound_of_witness_checks (witnesses := c0307_witnesses)
    (lo := 9261) (hi := 9271) c0307_checks hc

private def c0308_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk124.w12]
private def c0308_intervals : List NatInterval := [(9280, 9285)]

private theorem c0308_intervals_eq :
    witnessIntervals c0308_witnesses = c0308_intervals := by
  rfl

private theorem c0308_checks : witnessesCheck c0308_witnesses = true := by
  simp only [witnessesCheck, c0308_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk124.w12_check, Bool.and_self]

private theorem c0308_cover : coverCheck 9280 9285 c0308_intervals = true := by
  decide

private theorem c0308_sound : IntervalSound (9280, 9285) := by
  have hc : coverCheck 9280 9285 (witnessIntervals c0308_witnesses) = true := by
    rw [c0308_intervals_eq]
    exact c0308_cover
  exact interval_sound_of_witness_checks (witnesses := c0308_witnesses)
    (lo := 9280) (hi := 9285) c0308_checks hc

private def c0309_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk124.w13]
private def c0309_intervals : List NatInterval := [(9288, 9290)]

private theorem c0309_intervals_eq :
    witnessIntervals c0309_witnesses = c0309_intervals := by
  rfl

private theorem c0309_checks : witnessesCheck c0309_witnesses = true := by
  simp only [witnessesCheck, c0309_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk124.w13_check, Bool.and_self]

private theorem c0309_cover : coverCheck 9288 9290 c0309_intervals = true := by
  decide

private theorem c0309_sound : IntervalSound (9288, 9290) := by
  have hc : coverCheck 9288 9290 (witnessIntervals c0309_witnesses) = true := by
    rw [c0309_intervals_eq]
    exact c0309_cover
  exact interval_sound_of_witness_checks (witnesses := c0309_witnesses)
    (lo := 9288) (hi := 9290) c0309_checks hc

private def c0310_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk124.w14]
private def c0310_intervals : List NatInterval := [(9310, 9310)]

private theorem c0310_intervals_eq :
    witnessIntervals c0310_witnesses = c0310_intervals := by
  rfl

private theorem c0310_checks : witnessesCheck c0310_witnesses = true := by
  simp only [witnessesCheck, c0310_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk124.w14_check, Bool.and_self]

private theorem c0310_cover : coverCheck 9310 9310 c0310_intervals = true := by
  decide

private theorem c0310_sound : IntervalSound (9310, 9310) := by
  have hc : coverCheck 9310 9310 (witnessIntervals c0310_witnesses) = true := by
    rw [c0310_intervals_eq]
    exact c0310_cover
  exact interval_sound_of_witness_checks (witnesses := c0310_witnesses)
    (lo := 9310) (hi := 9310) c0310_checks hc

private def c0311_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk124.w15, B699LowIndex.I11TerminalData.Chunk125.w0]
private def c0311_intervals : List NatInterval := [(9312, 9321), (9322, 9322)]

private theorem c0311_intervals_eq :
    witnessIntervals c0311_witnesses = c0311_intervals := by
  rfl

private theorem c0311_checks : witnessesCheck c0311_witnesses = true := by
  simp only [witnessesCheck, c0311_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk124.w15_check, B699LowIndex.I11TerminalData.Chunk125.w0_check, Bool.and_self]

private theorem c0311_cover : coverCheck 9312 9322 c0311_intervals = true := by
  decide

private theorem c0311_sound : IntervalSound (9312, 9322) := by
  have hc : coverCheck 9312 9322 (witnessIntervals c0311_witnesses) = true := by
    rw [c0311_intervals_eq]
    exact c0311_cover
  exact interval_sound_of_witness_checks (witnesses := c0311_witnesses)
    (lo := 9312) (hi := 9322) c0311_checks hc

private def c0312_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk125.w1]
private def c0312_intervals : List NatInterval := [(9325, 9325)]

private theorem c0312_intervals_eq :
    witnessIntervals c0312_witnesses = c0312_intervals := by
  rfl

private theorem c0312_checks : witnessesCheck c0312_witnesses = true := by
  simp only [witnessesCheck, c0312_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk125.w1_check, Bool.and_self]

private theorem c0312_cover : coverCheck 9325 9325 c0312_intervals = true := by
  decide

private theorem c0312_sound : IntervalSound (9325, 9325) := by
  have hc : coverCheck 9325 9325 (witnessIntervals c0312_witnesses) = true := by
    rw [c0312_intervals_eq]
    exact c0312_cover
  exact interval_sound_of_witness_checks (witnesses := c0312_witnesses)
    (lo := 9325) (hi := 9325) c0312_checks hc

private def c0313_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk125.w2, B699LowIndex.I11TerminalData.Chunk125.w3]
private def c0313_intervals : List NatInterval := [(9344, 9353), (9354, 9354)]

private theorem c0313_intervals_eq :
    witnessIntervals c0313_witnesses = c0313_intervals := by
  rfl

private theorem c0313_checks : witnessesCheck c0313_witnesses = true := by
  simp only [witnessesCheck, c0313_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk125.w2_check, B699LowIndex.I11TerminalData.Chunk125.w3_check, Bool.and_self]

private theorem c0313_cover : coverCheck 9344 9354 c0313_intervals = true := by
  decide

private theorem c0313_sound : IntervalSound (9344, 9354) := by
  have hc : coverCheck 9344 9354 (witnessIntervals c0313_witnesses) = true := by
    rw [c0313_intervals_eq]
    exact c0313_cover
  exact interval_sound_of_witness_checks (witnesses := c0313_witnesses)
    (lo := 9344) (hi := 9354) c0313_checks hc

private def c0314_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk125.w4, B699LowIndex.I11TerminalData.Chunk125.w5]
private def c0314_intervals : List NatInterval := [(9359, 9359), (9360, 9360)]

private theorem c0314_intervals_eq :
    witnessIntervals c0314_witnesses = c0314_intervals := by
  rfl

private theorem c0314_checks : witnessesCheck c0314_witnesses = true := by
  simp only [witnessesCheck, c0314_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk125.w4_check, B699LowIndex.I11TerminalData.Chunk125.w5_check, Bool.and_self]

private theorem c0314_cover : coverCheck 9359 9360 c0314_intervals = true := by
  decide

private theorem c0314_sound : IntervalSound (9359, 9360) := by
  have hc : coverCheck 9359 9360 (witnessIntervals c0314_witnesses) = true := by
    rw [c0314_intervals_eq]
    exact c0314_cover
  exact interval_sound_of_witness_checks (witnesses := c0314_witnesses)
    (lo := 9359) (hi := 9360) c0314_checks hc

private def c0315_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk125.w6]
private def c0315_intervals : List NatInterval := [(9369, 9369)]

private theorem c0315_intervals_eq :
    witnessIntervals c0315_witnesses = c0315_intervals := by
  rfl

private theorem c0315_checks : witnessesCheck c0315_witnesses = true := by
  simp only [witnessesCheck, c0315_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk125.w6_check, Bool.and_self]

private theorem c0315_cover : coverCheck 9369 9369 c0315_intervals = true := by
  decide

private theorem c0315_sound : IntervalSound (9369, 9369) := by
  have hc : coverCheck 9369 9369 (witnessIntervals c0315_witnesses) = true := by
    rw [c0315_intervals_eq]
    exact c0315_cover
  exact interval_sound_of_witness_checks (witnesses := c0315_witnesses)
    (lo := 9369) (hi := 9369) c0315_checks hc

private def c0316_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk125.w7, B699LowIndex.I11TerminalData.Chunk125.w8]
private def c0316_intervals : List NatInterval := [(9375, 9381), (9382, 9385)]

private theorem c0316_intervals_eq :
    witnessIntervals c0316_witnesses = c0316_intervals := by
  rfl

private theorem c0316_checks : witnessesCheck c0316_witnesses = true := by
  simp only [witnessesCheck, c0316_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk125.w7_check, B699LowIndex.I11TerminalData.Chunk125.w8_check, Bool.and_self]

private theorem c0316_cover : coverCheck 9375 9385 c0316_intervals = true := by
  decide

private theorem c0316_sound : IntervalSound (9375, 9385) := by
  have hc : coverCheck 9375 9385 (witnessIntervals c0316_witnesses) = true := by
    rw [c0316_intervals_eq]
    exact c0316_cover
  exact interval_sound_of_witness_checks (witnesses := c0316_witnesses)
    (lo := 9375) (hi := 9385) c0316_checks hc

private def c0317_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk125.w9]
private def c0317_intervals : List NatInterval := [(9400, 9406)]

private theorem c0317_intervals_eq :
    witnessIntervals c0317_witnesses = c0317_intervals := by
  rfl

private theorem c0317_checks : witnessesCheck c0317_witnesses = true := by
  simp only [witnessesCheck, c0317_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk125.w9_check, Bool.and_self]

private theorem c0317_cover : coverCheck 9400 9406 c0317_intervals = true := by
  decide

private theorem c0317_sound : IntervalSound (9400, 9406) := by
  have hc : coverCheck 9400 9406 (witnessIntervals c0317_witnesses) = true := by
    rw [c0317_intervals_eq]
    exact c0317_cover
  exact interval_sound_of_witness_checks (witnesses := c0317_witnesses)
    (lo := 9400) (hi := 9406) c0317_checks hc

private def c0318_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk125.w10, B699LowIndex.I11TerminalData.Chunk125.w11]
private def c0318_intervals : List NatInterval := [(9408, 9413), (9414, 9418)]

private theorem c0318_intervals_eq :
    witnessIntervals c0318_witnesses = c0318_intervals := by
  rfl

private theorem c0318_checks : witnessesCheck c0318_witnesses = true := by
  simp only [witnessesCheck, c0318_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk125.w10_check, B699LowIndex.I11TerminalData.Chunk125.w11_check, Bool.and_self]

private theorem c0318_cover : coverCheck 9408 9418 c0318_intervals = true := by
  decide

private theorem c0318_sound : IntervalSound (9408, 9418) := by
  have hc : coverCheck 9408 9418 (witnessIntervals c0318_witnesses) = true := by
    rw [c0318_intervals_eq]
    exact c0318_cover
  exact interval_sound_of_witness_checks (witnesses := c0318_witnesses)
    (lo := 9408) (hi := 9418) c0318_checks hc

private def c0319_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk125.w12, B699LowIndex.I11TerminalData.Chunk125.w13]
private def c0319_intervals : List NatInterval := [(9425, 9431), (9432, 9433)]

private theorem c0319_intervals_eq :
    witnessIntervals c0319_witnesses = c0319_intervals := by
  rfl

private theorem c0319_checks : witnessesCheck c0319_witnesses = true := by
  simp only [witnessesCheck, c0319_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk125.w12_check, B699LowIndex.I11TerminalData.Chunk125.w13_check, Bool.and_self]

private theorem c0319_cover : coverCheck 9425 9433 c0319_intervals = true := by
  decide

private theorem c0319_sound : IntervalSound (9425, 9433) := by
  have hc : coverCheck 9425 9433 (witnessIntervals c0319_witnesses) = true := by
    rw [c0319_intervals_eq]
    exact c0319_cover
  exact interval_sound_of_witness_checks (witnesses := c0319_witnesses)
    (lo := 9425) (hi := 9433) c0319_checks hc

def intervals : List NatInterval := [(9225, 9226), (9234, 9235), (9250, 9258), (9261, 9271), (9280, 9285), (9288, 9290), (9310, 9310), (9312, 9322), (9325, 9325), (9344, 9354), (9359, 9360), (9369, 9369), (9375, 9385), (9400, 9406), (9408, 9418), (9425, 9433)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (9225, 9226)) (intervals := [(9234, 9235), (9250, 9258), (9261, 9271), (9280, 9285), (9288, 9290), (9310, 9310), (9312, 9322), (9325, 9325), (9344, 9354), (9359, 9360), (9369, 9369), (9375, 9385), (9400, 9406), (9408, 9418), (9425, 9433)]) c0304_sound (intervals_sound_cons (I := (9234, 9235)) (intervals := [(9250, 9258), (9261, 9271), (9280, 9285), (9288, 9290), (9310, 9310), (9312, 9322), (9325, 9325), (9344, 9354), (9359, 9360), (9369, 9369), (9375, 9385), (9400, 9406), (9408, 9418), (9425, 9433)]) c0305_sound (intervals_sound_cons (I := (9250, 9258)) (intervals := [(9261, 9271), (9280, 9285), (9288, 9290), (9310, 9310), (9312, 9322), (9325, 9325), (9344, 9354), (9359, 9360), (9369, 9369), (9375, 9385), (9400, 9406), (9408, 9418), (9425, 9433)]) c0306_sound (intervals_sound_cons (I := (9261, 9271)) (intervals := [(9280, 9285), (9288, 9290), (9310, 9310), (9312, 9322), (9325, 9325), (9344, 9354), (9359, 9360), (9369, 9369), (9375, 9385), (9400, 9406), (9408, 9418), (9425, 9433)]) c0307_sound (intervals_sound_cons (I := (9280, 9285)) (intervals := [(9288, 9290), (9310, 9310), (9312, 9322), (9325, 9325), (9344, 9354), (9359, 9360), (9369, 9369), (9375, 9385), (9400, 9406), (9408, 9418), (9425, 9433)]) c0308_sound (intervals_sound_cons (I := (9288, 9290)) (intervals := [(9310, 9310), (9312, 9322), (9325, 9325), (9344, 9354), (9359, 9360), (9369, 9369), (9375, 9385), (9400, 9406), (9408, 9418), (9425, 9433)]) c0309_sound (intervals_sound_cons (I := (9310, 9310)) (intervals := [(9312, 9322), (9325, 9325), (9344, 9354), (9359, 9360), (9369, 9369), (9375, 9385), (9400, 9406), (9408, 9418), (9425, 9433)]) c0310_sound (intervals_sound_cons (I := (9312, 9322)) (intervals := [(9325, 9325), (9344, 9354), (9359, 9360), (9369, 9369), (9375, 9385), (9400, 9406), (9408, 9418), (9425, 9433)]) c0311_sound (intervals_sound_cons (I := (9325, 9325)) (intervals := [(9344, 9354), (9359, 9360), (9369, 9369), (9375, 9385), (9400, 9406), (9408, 9418), (9425, 9433)]) c0312_sound (intervals_sound_cons (I := (9344, 9354)) (intervals := [(9359, 9360), (9369, 9369), (9375, 9385), (9400, 9406), (9408, 9418), (9425, 9433)]) c0313_sound (intervals_sound_cons (I := (9359, 9360)) (intervals := [(9369, 9369), (9375, 9385), (9400, 9406), (9408, 9418), (9425, 9433)]) c0314_sound (intervals_sound_cons (I := (9369, 9369)) (intervals := [(9375, 9385), (9400, 9406), (9408, 9418), (9425, 9433)]) c0315_sound (intervals_sound_cons (I := (9375, 9385)) (intervals := [(9400, 9406), (9408, 9418), (9425, 9433)]) c0316_sound (intervals_sound_cons (I := (9400, 9406)) (intervals := [(9408, 9418), (9425, 9433)]) c0317_sound (intervals_sound_cons (I := (9408, 9418)) (intervals := [(9425, 9433)]) c0318_sound (intervals_sound_cons (I := (9425, 9433)) (intervals := []) c0319_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G019
