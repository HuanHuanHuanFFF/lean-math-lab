import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk195
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk196
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk197
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk198

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G045
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0720_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk195.w7]
private def c0720_intervals : List NatInterval := [(23875, 23882)]

private theorem c0720_intervals_eq :
    witnessIntervals c0720_witnesses = c0720_intervals := by
  rfl

private theorem c0720_checks : witnessesCheck c0720_witnesses = true := by
  simp only [witnessesCheck, c0720_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk195.w7_check, Bool.and_self]

private theorem c0720_cover : coverCheck 23875 23882 c0720_intervals = true := by
  decide

private theorem c0720_sound : IntervalSound (23875, 23882) := by
  have hc : coverCheck 23875 23882 (witnessIntervals c0720_witnesses) = true := by
    rw [c0720_intervals_eq]
    exact c0720_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0720_witnesses)
    (lo := 23875) (hi := 23882) c0720_checks hc

private def c0721_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk195.w8, B699LowIndex.I11TerminalData.Chunk195.w9]
private def c0721_intervals : List NatInterval := [(24000, 24003), (24004, 24010)]

private theorem c0721_intervals_eq :
    witnessIntervals c0721_witnesses = c0721_intervals := by
  rfl

private theorem c0721_checks : witnessesCheck c0721_witnesses = true := by
  simp only [witnessesCheck, c0721_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk195.w8_check, B699LowIndex.I11TerminalData.Chunk195.w9_check, Bool.and_self]

private theorem c0721_cover : coverCheck 24000 24010 c0721_intervals = true := by
  decide

private theorem c0721_sound : IntervalSound (24000, 24010) := by
  have hc : coverCheck 24000 24010 (witnessIntervals c0721_witnesses) = true := by
    rw [c0721_intervals_eq]
    exact c0721_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0721_witnesses)
    (lo := 24000) (hi := 24010) c0721_checks hc

private def c0722_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk195.w10, B699LowIndex.I11TerminalData.Chunk195.w11, B699LowIndex.I11TerminalData.Chunk195.w12]
private def c0722_intervals : List NatInterval := [(24059, 24059), (24060, 24060), (24061, 24069)]

private theorem c0722_intervals_eq :
    witnessIntervals c0722_witnesses = c0722_intervals := by
  rfl

private theorem c0722_checks : witnessesCheck c0722_witnesses = true := by
  simp only [witnessesCheck, c0722_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk195.w10_check, B699LowIndex.I11TerminalData.Chunk195.w11_check, B699LowIndex.I11TerminalData.Chunk195.w12_check, Bool.and_self]

private theorem c0722_cover : coverCheck 24059 24069 c0722_intervals = true := by
  decide

private theorem c0722_sound : IntervalSound (24059, 24069) := by
  have hc : coverCheck 24059 24069 (witnessIntervals c0722_witnesses) = true := by
    rw [c0722_intervals_eq]
    exact c0722_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0722_witnesses)
    (lo := 24059) (hi := 24069) c0722_checks hc

private def c0723_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk195.w13, B699LowIndex.I11TerminalData.Chunk195.w14, B699LowIndex.I11TerminalData.Chunk195.w15]
private def c0723_intervals : List NatInterval := [(24128, 24131), (24132, 24132), (24133, 24135)]

private theorem c0723_intervals_eq :
    witnessIntervals c0723_witnesses = c0723_intervals := by
  rfl

private theorem c0723_checks : witnessesCheck c0723_witnesses = true := by
  simp only [witnessesCheck, c0723_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk195.w13_check, B699LowIndex.I11TerminalData.Chunk195.w14_check, B699LowIndex.I11TerminalData.Chunk195.w15_check, Bool.and_self]

private theorem c0723_cover : coverCheck 24128 24135 c0723_intervals = true := by
  decide

private theorem c0723_sound : IntervalSound (24128, 24135) := by
  have hc : coverCheck 24128 24135 (witnessIntervals c0723_witnesses) = true := by
    rw [c0723_intervals_eq]
    exact c0723_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0723_witnesses)
    (lo := 24128) (hi := 24135) c0723_checks hc

private def c0724_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk196.w0]
private def c0724_intervals : List NatInterval := [(24138, 24138)]

private theorem c0724_intervals_eq :
    witnessIntervals c0724_witnesses = c0724_intervals := by
  rfl

private theorem c0724_checks : witnessesCheck c0724_witnesses = true := by
  simp only [witnessesCheck, c0724_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk196.w0_check, Bool.and_self]

private theorem c0724_cover : coverCheck 24138 24138 c0724_intervals = true := by
  decide

private theorem c0724_sound : IntervalSound (24138, 24138) := by
  have hc : coverCheck 24138 24138 (witnessIntervals c0724_witnesses) = true := by
    rw [c0724_intervals_eq]
    exact c0724_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0724_witnesses)
    (lo := 24138) (hi := 24138) c0724_checks hc

private def c0725_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk196.w1, B699LowIndex.I11TerminalData.Chunk196.w2, B699LowIndex.I11TerminalData.Chunk196.w3, B699LowIndex.I11TerminalData.Chunk196.w4, B699LowIndex.I11TerminalData.Chunk196.w5]
private def c0725_intervals : List NatInterval := [(24255, 24261), (24262, 24262), (24263, 24263), (24264, 24264), (24265, 24265)]

private theorem c0725_intervals_eq :
    witnessIntervals c0725_witnesses = c0725_intervals := by
  rfl

private theorem c0725_checks : witnessesCheck c0725_witnesses = true := by
  simp only [witnessesCheck, c0725_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk196.w1_check, B699LowIndex.I11TerminalData.Chunk196.w2_check, B699LowIndex.I11TerminalData.Chunk196.w3_check, B699LowIndex.I11TerminalData.Chunk196.w4_check, B699LowIndex.I11TerminalData.Chunk196.w5_check, Bool.and_self]

private theorem c0725_cover : coverCheck 24255 24265 c0725_intervals = true := by
  decide

private theorem c0725_sound : IntervalSound (24255, 24265) := by
  have hc : coverCheck 24255 24265 (witnessIntervals c0725_witnesses) = true := by
    rw [c0725_intervals_eq]
    exact c0725_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0725_witnesses)
    (lo := 24255) (hi := 24265) c0725_checks hc

private def c0726_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk196.w6, B699LowIndex.I11TerminalData.Chunk196.w7, B699LowIndex.I11TerminalData.Chunk196.w8, B699LowIndex.I11TerminalData.Chunk196.w9, B699LowIndex.I11TerminalData.Chunk196.w10, B699LowIndex.I11TerminalData.Chunk196.w11, B699LowIndex.I11TerminalData.Chunk196.w12]
private def c0726_intervals : List NatInterval := [(24304, 24304), (24305, 24305), (24306, 24306), (24307, 24307), (24308, 24308), (24309, 24309), (24310, 24310)]

private theorem c0726_intervals_eq :
    witnessIntervals c0726_witnesses = c0726_intervals := by
  rfl

private theorem c0726_checks : witnessesCheck c0726_witnesses = true := by
  simp only [witnessesCheck, c0726_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk196.w6_check, B699LowIndex.I11TerminalData.Chunk196.w7_check, B699LowIndex.I11TerminalData.Chunk196.w8_check, B699LowIndex.I11TerminalData.Chunk196.w9_check, B699LowIndex.I11TerminalData.Chunk196.w10_check, B699LowIndex.I11TerminalData.Chunk196.w11_check, B699LowIndex.I11TerminalData.Chunk196.w12_check, Bool.and_self]

private theorem c0726_cover : coverCheck 24304 24310 c0726_intervals = true := by
  decide

private theorem c0726_sound : IntervalSound (24304, 24310) := by
  have hc : coverCheck 24304 24310 (witnessIntervals c0726_witnesses) = true := by
    rw [c0726_intervals_eq]
    exact c0726_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0726_witnesses)
    (lo := 24304) (hi := 24310) c0726_checks hc

private def c0727_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk196.w13, B699LowIndex.I11TerminalData.Chunk196.w14, B699LowIndex.I11TerminalData.Chunk196.w15]
private def c0727_intervals : List NatInterval := [(24381, 24389), (24390, 24390), (24391, 24391)]

private theorem c0727_intervals_eq :
    witnessIntervals c0727_witnesses = c0727_intervals := by
  rfl

private theorem c0727_checks : witnessesCheck c0727_witnesses = true := by
  simp only [witnessesCheck, c0727_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk196.w13_check, B699LowIndex.I11TerminalData.Chunk196.w14_check, B699LowIndex.I11TerminalData.Chunk196.w15_check, Bool.and_self]

private theorem c0727_cover : coverCheck 24381 24391 c0727_intervals = true := by
  decide

private theorem c0727_sound : IntervalSound (24381, 24391) := by
  have hc : coverCheck 24381 24391 (witnessIntervals c0727_witnesses) = true := by
    rw [c0727_intervals_eq]
    exact c0727_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0727_witnesses)
    (lo := 24381) (hi := 24391) c0727_checks hc

private def c0728_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk197.w0, B699LowIndex.I11TerminalData.Chunk197.w1, B699LowIndex.I11TerminalData.Chunk197.w2, B699LowIndex.I11TerminalData.Chunk197.w3, B699LowIndex.I11TerminalData.Chunk197.w4, B699LowIndex.I11TerminalData.Chunk197.w5]
private def c0728_intervals : List NatInterval := [(24451, 24453), (24454, 24454), (24455, 24455), (24456, 24456), (24457, 24457), (24458, 24458)]

private theorem c0728_intervals_eq :
    witnessIntervals c0728_witnesses = c0728_intervals := by
  rfl

private theorem c0728_checks : witnessesCheck c0728_witnesses = true := by
  simp only [witnessesCheck, c0728_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk197.w0_check, B699LowIndex.I11TerminalData.Chunk197.w1_check, B699LowIndex.I11TerminalData.Chunk197.w2_check, B699LowIndex.I11TerminalData.Chunk197.w3_check, B699LowIndex.I11TerminalData.Chunk197.w4_check, B699LowIndex.I11TerminalData.Chunk197.w5_check, Bool.and_self]

private theorem c0728_cover : coverCheck 24451 24458 c0728_intervals = true := by
  decide

private theorem c0728_sound : IntervalSound (24451, 24458) := by
  have hc : coverCheck 24451 24458 (witnessIntervals c0728_witnesses) = true := by
    rw [c0728_intervals_eq]
    exact c0728_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0728_witnesses)
    (lo := 24451) (hi := 24458) c0728_checks hc

private def c0729_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk197.w6, B699LowIndex.I11TerminalData.Chunk197.w7]
private def c0729_intervals : List NatInterval := [(24500, 24509), (24510, 24510)]

private theorem c0729_intervals_eq :
    witnessIntervals c0729_witnesses = c0729_intervals := by
  rfl

private theorem c0729_checks : witnessesCheck c0729_witnesses = true := by
  simp only [witnessesCheck, c0729_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk197.w6_check, B699LowIndex.I11TerminalData.Chunk197.w7_check, Bool.and_self]

private theorem c0729_cover : coverCheck 24500 24510 c0729_intervals = true := by
  decide

private theorem c0729_sound : IntervalSound (24500, 24510) := by
  have hc : coverCheck 24500 24510 (witnessIntervals c0729_witnesses) = true := by
    rw [c0729_intervals_eq]
    exact c0729_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0729_witnesses)
    (lo := 24500) (hi := 24510) c0729_checks hc

private def c0730_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk197.w8, B699LowIndex.I11TerminalData.Chunk197.w9]
private def c0730_intervals : List NatInterval := [(24625, 24633), (24634, 24634)]

private theorem c0730_intervals_eq :
    witnessIntervals c0730_witnesses = c0730_intervals := by
  rfl

private theorem c0730_checks : witnessesCheck c0730_witnesses = true := by
  simp only [witnessesCheck, c0730_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk197.w8_check, B699LowIndex.I11TerminalData.Chunk197.w9_check, Bool.and_self]

private theorem c0730_cover : coverCheck 24625 24634 c0730_intervals = true := by
  decide

private theorem c0730_sound : IntervalSound (24625, 24634) := by
  have hc : coverCheck 24625 24634 (witnessIntervals c0730_witnesses) = true := by
    rw [c0730_intervals_eq]
    exact c0730_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0730_witnesses)
    (lo := 24625) (hi := 24634) c0730_checks hc

private def c0731_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk197.w10, B699LowIndex.I11TerminalData.Chunk197.w11, B699LowIndex.I11TerminalData.Chunk197.w12]
private def c0731_intervals : List NatInterval := [(24704, 24707), (24708, 24708), (24709, 24714)]

private theorem c0731_intervals_eq :
    witnessIntervals c0731_witnesses = c0731_intervals := by
  rfl

private theorem c0731_checks : witnessesCheck c0731_witnesses = true := by
  simp only [witnessesCheck, c0731_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk197.w10_check, B699LowIndex.I11TerminalData.Chunk197.w11_check, B699LowIndex.I11TerminalData.Chunk197.w12_check, Bool.and_self]

private theorem c0731_cover : coverCheck 24704 24714 c0731_intervals = true := by
  decide

private theorem c0731_sound : IntervalSound (24704, 24714) := by
  have hc : coverCheck 24704 24714 (witnessIntervals c0731_witnesses) = true := by
    rw [c0731_intervals_eq]
    exact c0731_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0731_witnesses)
    (lo := 24704) (hi := 24714) c0731_checks hc

private def c0732_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk197.w13, B699LowIndex.I11TerminalData.Chunk197.w14, B699LowIndex.I11TerminalData.Chunk197.w15]
private def c0732_intervals : List NatInterval := [(24875, 24875), (24876, 24876), (24877, 24877)]

private theorem c0732_intervals_eq :
    witnessIntervals c0732_witnesses = c0732_intervals := by
  rfl

private theorem c0732_checks : witnessesCheck c0732_witnesses = true := by
  simp only [witnessesCheck, c0732_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk197.w13_check, B699LowIndex.I11TerminalData.Chunk197.w14_check, B699LowIndex.I11TerminalData.Chunk197.w15_check, Bool.and_self]

private theorem c0732_cover : coverCheck 24875 24877 c0732_intervals = true := by
  decide

private theorem c0732_sound : IntervalSound (24875, 24877) := by
  have hc : coverCheck 24875 24877 (witnessIntervals c0732_witnesses) = true := by
    rw [c0732_intervals_eq]
    exact c0732_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0732_witnesses)
    (lo := 24875) (hi := 24877) c0732_checks hc

private def c0733_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk198.w0, B699LowIndex.I11TerminalData.Chunk198.w1, B699LowIndex.I11TerminalData.Chunk198.w2]
private def c0733_intervals : List NatInterval := [(25029, 25029), (25030, 25030), (25031, 25034)]

private theorem c0733_intervals_eq :
    witnessIntervals c0733_witnesses = c0733_intervals := by
  rfl

private theorem c0733_checks : witnessesCheck c0733_witnesses = true := by
  simp only [witnessesCheck, c0733_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk198.w0_check, B699LowIndex.I11TerminalData.Chunk198.w1_check, B699LowIndex.I11TerminalData.Chunk198.w2_check, Bool.and_self]

private theorem c0733_cover : coverCheck 25029 25034 c0733_intervals = true := by
  decide

private theorem c0733_sound : IntervalSound (25029, 25034) := by
  have hc : coverCheck 25029 25034 (witnessIntervals c0733_witnesses) = true := by
    rw [c0733_intervals_eq]
    exact c0733_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0733_witnesses)
    (lo := 25029) (hi := 25034) c0733_checks hc

private def c0734_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk198.w3]
private def c0734_intervals : List NatInterval := [(25039, 25039)]

private theorem c0734_intervals_eq :
    witnessIntervals c0734_witnesses = c0734_intervals := by
  rfl

private theorem c0734_checks : witnessesCheck c0734_witnesses = true := by
  simp only [witnessesCheck, c0734_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk198.w3_check, Bool.and_self]

private theorem c0734_cover : coverCheck 25039 25039 c0734_intervals = true := by
  decide

private theorem c0734_sound : IntervalSound (25039, 25039) := by
  have hc : coverCheck 25039 25039 (witnessIntervals c0734_witnesses) = true := by
    rw [c0734_intervals_eq]
    exact c0734_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0734_witnesses)
    (lo := 25039) (hi := 25039) c0734_checks hc

private def c0735_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk198.w4, B699LowIndex.I11TerminalData.Chunk198.w5, B699LowIndex.I11TerminalData.Chunk198.w6]
private def c0735_intervals : List NatInterval := [(25280, 25280), (25281, 25281), (25282, 25282)]

private theorem c0735_intervals_eq :
    witnessIntervals c0735_witnesses = c0735_intervals := by
  rfl

private theorem c0735_checks : witnessesCheck c0735_witnesses = true := by
  simp only [witnessesCheck, c0735_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk198.w4_check, B699LowIndex.I11TerminalData.Chunk198.w5_check, B699LowIndex.I11TerminalData.Chunk198.w6_check, Bool.and_self]

private theorem c0735_cover : coverCheck 25280 25282 c0735_intervals = true := by
  decide

private theorem c0735_sound : IntervalSound (25280, 25282) := by
  have hc : coverCheck 25280 25282 (witnessIntervals c0735_witnesses) = true := by
    rw [c0735_intervals_eq]
    exact c0735_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0735_witnesses)
    (lo := 25280) (hi := 25282) c0735_checks hc

def intervals : List NatInterval := [(23875, 23882), (24000, 24010), (24059, 24069), (24128, 24135), (24138, 24138), (24255, 24265), (24304, 24310), (24381, 24391), (24451, 24458), (24500, 24510), (24625, 24634), (24704, 24714), (24875, 24877), (25029, 25034), (25039, 25039), (25280, 25282)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (23875, 23882)) (intervals := [(24000, 24010), (24059, 24069), (24128, 24135), (24138, 24138), (24255, 24265), (24304, 24310), (24381, 24391), (24451, 24458), (24500, 24510), (24625, 24634), (24704, 24714), (24875, 24877), (25029, 25034), (25039, 25039), (25280, 25282)]) c0720_sound (intervals_sound_cons (I := (24000, 24010)) (intervals := [(24059, 24069), (24128, 24135), (24138, 24138), (24255, 24265), (24304, 24310), (24381, 24391), (24451, 24458), (24500, 24510), (24625, 24634), (24704, 24714), (24875, 24877), (25029, 25034), (25039, 25039), (25280, 25282)]) c0721_sound (intervals_sound_cons (I := (24059, 24069)) (intervals := [(24128, 24135), (24138, 24138), (24255, 24265), (24304, 24310), (24381, 24391), (24451, 24458), (24500, 24510), (24625, 24634), (24704, 24714), (24875, 24877), (25029, 25034), (25039, 25039), (25280, 25282)]) c0722_sound (intervals_sound_cons (I := (24128, 24135)) (intervals := [(24138, 24138), (24255, 24265), (24304, 24310), (24381, 24391), (24451, 24458), (24500, 24510), (24625, 24634), (24704, 24714), (24875, 24877), (25029, 25034), (25039, 25039), (25280, 25282)]) c0723_sound (intervals_sound_cons (I := (24138, 24138)) (intervals := [(24255, 24265), (24304, 24310), (24381, 24391), (24451, 24458), (24500, 24510), (24625, 24634), (24704, 24714), (24875, 24877), (25029, 25034), (25039, 25039), (25280, 25282)]) c0724_sound (intervals_sound_cons (I := (24255, 24265)) (intervals := [(24304, 24310), (24381, 24391), (24451, 24458), (24500, 24510), (24625, 24634), (24704, 24714), (24875, 24877), (25029, 25034), (25039, 25039), (25280, 25282)]) c0725_sound (intervals_sound_cons (I := (24304, 24310)) (intervals := [(24381, 24391), (24451, 24458), (24500, 24510), (24625, 24634), (24704, 24714), (24875, 24877), (25029, 25034), (25039, 25039), (25280, 25282)]) c0726_sound (intervals_sound_cons (I := (24381, 24391)) (intervals := [(24451, 24458), (24500, 24510), (24625, 24634), (24704, 24714), (24875, 24877), (25029, 25034), (25039, 25039), (25280, 25282)]) c0727_sound (intervals_sound_cons (I := (24451, 24458)) (intervals := [(24500, 24510), (24625, 24634), (24704, 24714), (24875, 24877), (25029, 25034), (25039, 25039), (25280, 25282)]) c0728_sound (intervals_sound_cons (I := (24500, 24510)) (intervals := [(24625, 24634), (24704, 24714), (24875, 24877), (25029, 25034), (25039, 25039), (25280, 25282)]) c0729_sound (intervals_sound_cons (I := (24625, 24634)) (intervals := [(24704, 24714), (24875, 24877), (25029, 25034), (25039, 25039), (25280, 25282)]) c0730_sound (intervals_sound_cons (I := (24704, 24714)) (intervals := [(24875, 24877), (25029, 25034), (25039, 25039), (25280, 25282)]) c0731_sound (intervals_sound_cons (I := (24875, 24877)) (intervals := [(25029, 25034), (25039, 25039), (25280, 25282)]) c0732_sound (intervals_sound_cons (I := (25029, 25034)) (intervals := [(25039, 25039), (25280, 25282)]) c0733_sound (intervals_sound_cons (I := (25039, 25039)) (intervals := [(25280, 25282)]) c0734_sound (intervals_sound_cons (I := (25280, 25282)) (intervals := []) c0735_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G045
