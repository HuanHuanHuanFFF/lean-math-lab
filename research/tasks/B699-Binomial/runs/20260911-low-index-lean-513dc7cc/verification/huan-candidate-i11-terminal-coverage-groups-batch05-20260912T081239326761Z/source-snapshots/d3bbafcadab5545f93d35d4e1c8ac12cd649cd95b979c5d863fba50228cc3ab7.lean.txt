import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk200
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk201
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk202
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk203
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk204

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G047
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0752_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk200.w13]
private def c0752_intervals : List NatInterval := [(26880, 26885)]

private theorem c0752_intervals_eq :
    witnessIntervals c0752_witnesses = c0752_intervals := by
  rfl

private theorem c0752_checks : witnessesCheck c0752_witnesses = true := by
  simp only [witnessesCheck, c0752_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk200.w13_check, Bool.and_self]

private theorem c0752_cover : coverCheck 26880 26885 c0752_intervals = true := by
  decide

private theorem c0752_sound : IntervalSound (26880, 26885) := by
  have hc : coverCheck 26880 26885 (witnessIntervals c0752_witnesses) = true := by
    rw [c0752_intervals_eq]
    exact c0752_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0752_witnesses)
    (lo := 26880) (hi := 26885) c0752_checks hc

private def c0753_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk200.w14, B699LowIndex.I11TerminalData.Chunk200.w15, B699LowIndex.I11TerminalData.Chunk201.w0]
private def c0753_intervals : List NatInterval := [(27008, 27008), (27009, 27009), (27010, 27010)]

private theorem c0753_intervals_eq :
    witnessIntervals c0753_witnesses = c0753_intervals := by
  rfl

private theorem c0753_checks : witnessesCheck c0753_witnesses = true := by
  simp only [witnessesCheck, c0753_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk200.w14_check, B699LowIndex.I11TerminalData.Chunk200.w15_check, B699LowIndex.I11TerminalData.Chunk201.w0_check, Bool.and_self]

private theorem c0753_cover : coverCheck 27008 27010 c0753_intervals = true := by
  decide

private theorem c0753_sound : IntervalSound (27008, 27010) := by
  have hc : coverCheck 27008 27010 (witnessIntervals c0753_witnesses) = true := by
    rw [c0753_intervals_eq]
    exact c0753_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0753_witnesses)
    (lo := 27008) (hi := 27010) c0753_checks hc

private def c0754_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk201.w1, B699LowIndex.I11TerminalData.Chunk201.w2, B699LowIndex.I11TerminalData.Chunk201.w3, B699LowIndex.I11TerminalData.Chunk201.w4, B699LowIndex.I11TerminalData.Chunk201.w5, B699LowIndex.I11TerminalData.Chunk201.w6, B699LowIndex.I11TerminalData.Chunk201.w7]
private def c0754_intervals : List NatInterval := [(27135, 27137), (27138, 27138), (27139, 27139), (27140, 27140), (27141, 27141), (27142, 27142), (27143, 27145)]

private theorem c0754_intervals_eq :
    witnessIntervals c0754_witnesses = c0754_intervals := by
  rfl

private theorem c0754_checks : witnessesCheck c0754_witnesses = true := by
  simp only [witnessesCheck, c0754_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk201.w1_check, B699LowIndex.I11TerminalData.Chunk201.w2_check, B699LowIndex.I11TerminalData.Chunk201.w3_check, B699LowIndex.I11TerminalData.Chunk201.w4_check, B699LowIndex.I11TerminalData.Chunk201.w5_check, B699LowIndex.I11TerminalData.Chunk201.w6_check, B699LowIndex.I11TerminalData.Chunk201.w7_check, Bool.and_self]

private theorem c0754_cover : coverCheck 27135 27145 c0754_intervals = true := by
  decide

private theorem c0754_sound : IntervalSound (27135, 27145) := by
  have hc : coverCheck 27135 27145 (witnessIntervals c0754_witnesses) = true := by
    rw [c0754_intervals_eq]
    exact c0754_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0754_witnesses)
    (lo := 27135) (hi := 27145) c0754_checks hc

private def c0755_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk201.w8, B699LowIndex.I11TerminalData.Chunk201.w9, B699LowIndex.I11TerminalData.Chunk201.w10, B699LowIndex.I11TerminalData.Chunk201.w11, B699LowIndex.I11TerminalData.Chunk201.w12, B699LowIndex.I11TerminalData.Chunk201.w13, B699LowIndex.I11TerminalData.Chunk201.w14, B699LowIndex.I11TerminalData.Chunk201.w15]
private def c0755_intervals : List NatInterval := [(27378, 27378), (27379, 27379), (27380, 27380), (27381, 27381), (27382, 27382), (27383, 27383), (27384, 27384), (27385, 27385)]

private theorem c0755_intervals_eq :
    witnessIntervals c0755_witnesses = c0755_intervals := by
  rfl

private theorem c0755_checks : witnessesCheck c0755_witnesses = true := by
  simp only [witnessesCheck, c0755_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk201.w8_check, B699LowIndex.I11TerminalData.Chunk201.w9_check, B699LowIndex.I11TerminalData.Chunk201.w10_check, B699LowIndex.I11TerminalData.Chunk201.w11_check, B699LowIndex.I11TerminalData.Chunk201.w12_check, B699LowIndex.I11TerminalData.Chunk201.w13_check, B699LowIndex.I11TerminalData.Chunk201.w14_check, B699LowIndex.I11TerminalData.Chunk201.w15_check, Bool.and_self]

private theorem c0755_cover : coverCheck 27378 27385 c0755_intervals = true := by
  decide

private theorem c0755_sound : IntervalSound (27378, 27385) := by
  have hc : coverCheck 27378 27385 (witnessIntervals c0755_witnesses) = true := by
    rw [c0755_intervals_eq]
    exact c0755_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0755_witnesses)
    (lo := 27378) (hi := 27385) c0755_checks hc

private def c0756_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk202.w0]
private def c0756_intervals : List NatInterval := [(27459, 27466)]

private theorem c0756_intervals_eq :
    witnessIntervals c0756_witnesses = c0756_intervals := by
  rfl

private theorem c0756_checks : witnessesCheck c0756_witnesses = true := by
  simp only [witnessesCheck, c0756_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk202.w0_check, Bool.and_self]

private theorem c0756_cover : coverCheck 27459 27466 c0756_intervals = true := by
  decide

private theorem c0756_sound : IntervalSound (27459, 27466) := by
  have hc : coverCheck 27459 27466 (witnessIntervals c0756_witnesses) = true := by
    rw [c0756_intervals_eq]
    exact c0756_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0756_witnesses)
    (lo := 27459) (hi := 27466) c0756_checks hc

private def c0757_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk202.w1, B699LowIndex.I11TerminalData.Chunk202.w2, B699LowIndex.I11TerminalData.Chunk202.w3, B699LowIndex.I11TerminalData.Chunk202.w4, B699LowIndex.I11TerminalData.Chunk202.w5]
private def c0757_intervals : List NatInterval := [(27625, 27627), (27628, 27628), (27629, 27629), (27630, 27630), (27631, 27631)]

private theorem c0757_intervals_eq :
    witnessIntervals c0757_witnesses = c0757_intervals := by
  rfl

private theorem c0757_checks : witnessesCheck c0757_witnesses = true := by
  simp only [witnessesCheck, c0757_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk202.w1_check, B699LowIndex.I11TerminalData.Chunk202.w2_check, B699LowIndex.I11TerminalData.Chunk202.w3_check, B699LowIndex.I11TerminalData.Chunk202.w4_check, B699LowIndex.I11TerminalData.Chunk202.w5_check, Bool.and_self]

private theorem c0757_cover : coverCheck 27625 27631 c0757_intervals = true := by
  decide

private theorem c0757_sound : IntervalSound (27625, 27631) := by
  have hc : coverCheck 27625 27631 (witnessIntervals c0757_witnesses) = true := by
    rw [c0757_intervals_eq]
    exact c0757_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0757_witnesses)
    (lo := 27625) (hi := 27631) c0757_checks hc

private def c0758_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk202.w6]
private def c0758_intervals : List NatInterval := [(27712, 27712)]

private theorem c0758_intervals_eq :
    witnessIntervals c0758_witnesses = c0758_intervals := by
  rfl

private theorem c0758_checks : witnessesCheck c0758_witnesses = true := by
  simp only [witnessesCheck, c0758_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk202.w6_check, Bool.and_self]

private theorem c0758_cover : coverCheck 27712 27712 c0758_intervals = true := by
  decide

private theorem c0758_sound : IntervalSound (27712, 27712) := by
  have hc : coverCheck 27712 27712 (witnessIntervals c0758_witnesses) = true := by
    rw [c0758_intervals_eq]
    exact c0758_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0758_witnesses)
    (lo := 27712) (hi := 27712) c0758_checks hc

private def c0759_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk202.w7, B699LowIndex.I11TerminalData.Chunk202.w8, B699LowIndex.I11TerminalData.Chunk202.w9]
private def c0759_intervals : List NatInterval := [(27783, 27789), (27790, 27790), (27791, 27793)]

private theorem c0759_intervals_eq :
    witnessIntervals c0759_witnesses = c0759_intervals := by
  rfl

private theorem c0759_checks : witnessesCheck c0759_witnesses = true := by
  simp only [witnessesCheck, c0759_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk202.w7_check, B699LowIndex.I11TerminalData.Chunk202.w8_check, B699LowIndex.I11TerminalData.Chunk202.w9_check, Bool.and_self]

private theorem c0759_cover : coverCheck 27783 27793 c0759_intervals = true := by
  decide

private theorem c0759_sound : IntervalSound (27783, 27793) := by
  have hc : coverCheck 27783 27793 (witnessIntervals c0759_witnesses) = true := by
    rw [c0759_intervals_eq]
    exact c0759_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0759_witnesses)
    (lo := 27783) (hi := 27793) c0759_checks hc

private def c0760_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk202.w10]
private def c0760_intervals : List NatInterval := [(28032, 28036)]

private theorem c0760_intervals_eq :
    witnessIntervals c0760_witnesses = c0760_intervals := by
  rfl

private theorem c0760_checks : witnessesCheck c0760_witnesses = true := by
  simp only [witnessesCheck, c0760_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk202.w10_check, Bool.and_self]

private theorem c0760_cover : coverCheck 28032 28036 c0760_intervals = true := by
  decide

private theorem c0760_sound : IntervalSound (28032, 28036) := by
  have hc : coverCheck 28032 28036 (witnessIntervals c0760_witnesses) = true := by
    rw [c0760_intervals_eq]
    exact c0760_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0760_witnesses)
    (lo := 28032) (hi := 28036) c0760_checks hc

private def c0761_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk202.w11, B699LowIndex.I11TerminalData.Chunk202.w12, B699LowIndex.I11TerminalData.Chunk202.w13]
private def c0761_intervals : List NatInterval := [(28126, 28133), (28134, 28134), (28135, 28135)]

private theorem c0761_intervals_eq :
    witnessIntervals c0761_witnesses = c0761_intervals := by
  rfl

private theorem c0761_checks : witnessesCheck c0761_witnesses = true := by
  simp only [witnessesCheck, c0761_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk202.w11_check, B699LowIndex.I11TerminalData.Chunk202.w12_check, B699LowIndex.I11TerminalData.Chunk202.w13_check, Bool.and_self]

private theorem c0761_cover : coverCheck 28126 28135 c0761_intervals = true := by
  decide

private theorem c0761_sound : IntervalSound (28126, 28135) := by
  have hc : coverCheck 28126 28135 (witnessIntervals c0761_witnesses) = true := by
    rw [c0761_intervals_eq]
    exact c0761_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0761_witnesses)
    (lo := 28126) (hi := 28135) c0761_checks hc

private def c0762_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk202.w14]
private def c0762_intervals : List NatInterval := [(28352, 28360)]

private theorem c0762_intervals_eq :
    witnessIntervals c0762_witnesses = c0762_intervals := by
  rfl

private theorem c0762_checks : witnessesCheck c0762_witnesses = true := by
  simp only [witnessesCheck, c0762_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk202.w14_check, Bool.and_self]

private theorem c0762_cover : coverCheck 28352 28360 c0762_intervals = true := by
  decide

private theorem c0762_sound : IntervalSound (28352, 28360) := by
  have hc : coverCheck 28352 28360 (witnessIntervals c0762_witnesses) = true := by
    rw [c0762_intervals_eq]
    exact c0762_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0762_witnesses)
    (lo := 28352) (hi := 28360) c0762_checks hc

private def c0763_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk202.w15, B699LowIndex.I11TerminalData.Chunk203.w0, B699LowIndex.I11TerminalData.Chunk203.w1, B699LowIndex.I11TerminalData.Chunk203.w2]
private def c0763_intervals : List NatInterval := [(28674, 28679), (28680, 28680), (28681, 28681), (28682, 28682)]

private theorem c0763_intervals_eq :
    witnessIntervals c0763_witnesses = c0763_intervals := by
  rfl

private theorem c0763_checks : witnessesCheck c0763_witnesses = true := by
  simp only [witnessesCheck, c0763_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk202.w15_check, B699LowIndex.I11TerminalData.Chunk203.w0_check, B699LowIndex.I11TerminalData.Chunk203.w1_check, B699LowIndex.I11TerminalData.Chunk203.w2_check, Bool.and_self]

private theorem c0763_cover : coverCheck 28674 28682 c0763_intervals = true := by
  decide

private theorem c0763_sound : IntervalSound (28674, 28682) := by
  have hc : coverCheck 28674 28682 (witnessIntervals c0763_witnesses) = true := by
    rw [c0763_intervals_eq]
    exact c0763_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0763_witnesses)
    (lo := 28674) (hi := 28682) c0763_checks hc

private def c0764_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk203.w3]
private def c0764_intervals : List NatInterval := [(28755, 28760)]

private theorem c0764_intervals_eq :
    witnessIntervals c0764_witnesses = c0764_intervals := by
  rfl

private theorem c0764_checks : witnessesCheck c0764_witnesses = true := by
  simp only [witnessesCheck, c0764_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk203.w3_check, Bool.and_self]

private theorem c0764_cover : coverCheck 28755 28760 c0764_intervals = true := by
  decide

private theorem c0764_sound : IntervalSound (28755, 28760) := by
  have hc : coverCheck 28755 28760 (witnessIntervals c0764_witnesses) = true := by
    rw [c0764_intervals_eq]
    exact c0764_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0764_witnesses)
    (lo := 28755) (hi := 28760) c0764_checks hc

private def c0765_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk203.w4, B699LowIndex.I11TerminalData.Chunk203.w5, B699LowIndex.I11TerminalData.Chunk203.w6, B699LowIndex.I11TerminalData.Chunk203.w7, B699LowIndex.I11TerminalData.Chunk203.w8, B699LowIndex.I11TerminalData.Chunk203.w9, B699LowIndex.I11TerminalData.Chunk203.w10, B699LowIndex.I11TerminalData.Chunk203.w11, B699LowIndex.I11TerminalData.Chunk203.w12, B699LowIndex.I11TerminalData.Chunk203.w13, B699LowIndex.I11TerminalData.Chunk203.w14]
private def c0765_intervals : List NatInterval := [(28998, 28998), (28999, 28999), (29000, 29000), (29001, 29001), (29002, 29002), (29003, 29003), (29004, 29004), (29005, 29005), (29006, 29006), (29007, 29007), (29008, 29008)]

private theorem c0765_intervals_eq :
    witnessIntervals c0765_witnesses = c0765_intervals := by
  rfl

private theorem c0765_checks : witnessesCheck c0765_witnesses = true := by
  simp only [witnessesCheck, c0765_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk203.w4_check, B699LowIndex.I11TerminalData.Chunk203.w5_check, B699LowIndex.I11TerminalData.Chunk203.w6_check, B699LowIndex.I11TerminalData.Chunk203.w7_check, B699LowIndex.I11TerminalData.Chunk203.w8_check, B699LowIndex.I11TerminalData.Chunk203.w9_check, B699LowIndex.I11TerminalData.Chunk203.w10_check, B699LowIndex.I11TerminalData.Chunk203.w11_check, B699LowIndex.I11TerminalData.Chunk203.w12_check, B699LowIndex.I11TerminalData.Chunk203.w13_check, B699LowIndex.I11TerminalData.Chunk203.w14_check, Bool.and_self]

private theorem c0765_cover : coverCheck 28998 29008 c0765_intervals = true := by
  decide

private theorem c0765_sound : IntervalSound (28998, 29008) := by
  have hc : coverCheck 28998 29008 (witnessIntervals c0765_witnesses) = true := by
    rw [c0765_intervals_eq]
    exact c0765_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0765_witnesses)
    (lo := 28998) (hi := 29008) c0765_checks hc

private def c0766_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk203.w15]
private def c0766_intervals : List NatInterval := [(29125, 29130)]

private theorem c0766_intervals_eq :
    witnessIntervals c0766_witnesses = c0766_intervals := by
  rfl

private theorem c0766_checks : witnessesCheck c0766_witnesses = true := by
  simp only [witnessesCheck, c0766_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk203.w15_check, Bool.and_self]

private theorem c0766_cover : coverCheck 29125 29130 c0766_intervals = true := by
  decide

private theorem c0766_sound : IntervalSound (29125, 29130) := by
  have hc : coverCheck 29125 29130 (witnessIntervals c0766_witnesses) = true := by
    rw [c0766_intervals_eq]
    exact c0766_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0766_witnesses)
    (lo := 29125) (hi := 29130) c0766_checks hc

private def c0767_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk204.w0, B699LowIndex.I11TerminalData.Chunk204.w1, B699LowIndex.I11TerminalData.Chunk204.w2]
private def c0767_intervals : List NatInterval := [(29160, 29163), (29164, 29164), (29165, 29165)]

private theorem c0767_intervals_eq :
    witnessIntervals c0767_witnesses = c0767_intervals := by
  rfl

private theorem c0767_checks : witnessesCheck c0767_witnesses = true := by
  simp only [witnessesCheck, c0767_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk204.w0_check, B699LowIndex.I11TerminalData.Chunk204.w1_check, B699LowIndex.I11TerminalData.Chunk204.w2_check, Bool.and_self]

private theorem c0767_cover : coverCheck 29160 29165 c0767_intervals = true := by
  decide

private theorem c0767_sound : IntervalSound (29160, 29165) := by
  have hc : coverCheck 29160 29165 (witnessIntervals c0767_witnesses) = true := by
    rw [c0767_intervals_eq]
    exact c0767_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0767_witnesses)
    (lo := 29160) (hi := 29165) c0767_checks hc

def intervals : List NatInterval := [(26880, 26885), (27008, 27010), (27135, 27145), (27378, 27385), (27459, 27466), (27625, 27631), (27712, 27712), (27783, 27793), (28032, 28036), (28126, 28135), (28352, 28360), (28674, 28682), (28755, 28760), (28998, 29008), (29125, 29130), (29160, 29165)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (26880, 26885)) (intervals := [(27008, 27010), (27135, 27145), (27378, 27385), (27459, 27466), (27625, 27631), (27712, 27712), (27783, 27793), (28032, 28036), (28126, 28135), (28352, 28360), (28674, 28682), (28755, 28760), (28998, 29008), (29125, 29130), (29160, 29165)]) c0752_sound (intervals_sound_cons (I := (27008, 27010)) (intervals := [(27135, 27145), (27378, 27385), (27459, 27466), (27625, 27631), (27712, 27712), (27783, 27793), (28032, 28036), (28126, 28135), (28352, 28360), (28674, 28682), (28755, 28760), (28998, 29008), (29125, 29130), (29160, 29165)]) c0753_sound (intervals_sound_cons (I := (27135, 27145)) (intervals := [(27378, 27385), (27459, 27466), (27625, 27631), (27712, 27712), (27783, 27793), (28032, 28036), (28126, 28135), (28352, 28360), (28674, 28682), (28755, 28760), (28998, 29008), (29125, 29130), (29160, 29165)]) c0754_sound (intervals_sound_cons (I := (27378, 27385)) (intervals := [(27459, 27466), (27625, 27631), (27712, 27712), (27783, 27793), (28032, 28036), (28126, 28135), (28352, 28360), (28674, 28682), (28755, 28760), (28998, 29008), (29125, 29130), (29160, 29165)]) c0755_sound (intervals_sound_cons (I := (27459, 27466)) (intervals := [(27625, 27631), (27712, 27712), (27783, 27793), (28032, 28036), (28126, 28135), (28352, 28360), (28674, 28682), (28755, 28760), (28998, 29008), (29125, 29130), (29160, 29165)]) c0756_sound (intervals_sound_cons (I := (27625, 27631)) (intervals := [(27712, 27712), (27783, 27793), (28032, 28036), (28126, 28135), (28352, 28360), (28674, 28682), (28755, 28760), (28998, 29008), (29125, 29130), (29160, 29165)]) c0757_sound (intervals_sound_cons (I := (27712, 27712)) (intervals := [(27783, 27793), (28032, 28036), (28126, 28135), (28352, 28360), (28674, 28682), (28755, 28760), (28998, 29008), (29125, 29130), (29160, 29165)]) c0758_sound (intervals_sound_cons (I := (27783, 27793)) (intervals := [(28032, 28036), (28126, 28135), (28352, 28360), (28674, 28682), (28755, 28760), (28998, 29008), (29125, 29130), (29160, 29165)]) c0759_sound (intervals_sound_cons (I := (28032, 28036)) (intervals := [(28126, 28135), (28352, 28360), (28674, 28682), (28755, 28760), (28998, 29008), (29125, 29130), (29160, 29165)]) c0760_sound (intervals_sound_cons (I := (28126, 28135)) (intervals := [(28352, 28360), (28674, 28682), (28755, 28760), (28998, 29008), (29125, 29130), (29160, 29165)]) c0761_sound (intervals_sound_cons (I := (28352, 28360)) (intervals := [(28674, 28682), (28755, 28760), (28998, 29008), (29125, 29130), (29160, 29165)]) c0762_sound (intervals_sound_cons (I := (28674, 28682)) (intervals := [(28755, 28760), (28998, 29008), (29125, 29130), (29160, 29165)]) c0763_sound (intervals_sound_cons (I := (28755, 28760)) (intervals := [(28998, 29008), (29125, 29130), (29160, 29165)]) c0764_sound (intervals_sound_cons (I := (28998, 29008)) (intervals := [(29125, 29130), (29160, 29165)]) c0765_sound (intervals_sound_cons (I := (29125, 29130)) (intervals := [(29160, 29165)]) c0766_sound (intervals_sound_cons (I := (29160, 29165)) (intervals := []) c0767_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G047
