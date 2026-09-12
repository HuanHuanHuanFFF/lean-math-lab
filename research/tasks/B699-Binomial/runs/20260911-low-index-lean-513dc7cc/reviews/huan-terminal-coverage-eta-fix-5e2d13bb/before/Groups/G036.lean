import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk170
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk171
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk172
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk173

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G036
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0576_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk170.w13, B699LowIndex.I11TerminalData.Chunk170.w14]
private def c0576_intervals : List NatInterval := [(15680, 15689), (15690, 15690)]

private theorem c0576_intervals_eq :
    witnessIntervals c0576_witnesses = c0576_intervals := by
  rfl

private theorem c0576_checks : witnessesCheck c0576_witnesses = true := by
  simp only [witnessesCheck, c0576_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk170.w13_check, B699LowIndex.I11TerminalData.Chunk170.w14_check, Bool.and_self]

private theorem c0576_cover : coverCheck 15680 15690 c0576_intervals = true := by
  decide

private theorem c0576_sound : IntervalSound (15680, 15690) := by
  have hc : coverCheck 15680 15690 (witnessIntervals c0576_witnesses) = true := by
    rw [c0576_intervals_eq]
    exact c0576_cover
  exact interval_sound_of_witness_checks (witnesses := c0576_witnesses)
    (lo := 15680) (hi := 15690) c0576_checks hc

private def c0577_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk170.w15, B699LowIndex.I11TerminalData.Chunk171.w0, B699LowIndex.I11TerminalData.Chunk171.w1, B699LowIndex.I11TerminalData.Chunk171.w2, B699LowIndex.I11TerminalData.Chunk171.w3, B699LowIndex.I11TerminalData.Chunk171.w4, B699LowIndex.I11TerminalData.Chunk171.w5, B699LowIndex.I11TerminalData.Chunk171.w6, B699LowIndex.I11TerminalData.Chunk171.w7]
private def c0577_intervals : List NatInterval := [(15714, 15714), (15715, 15715), (15716, 15716), (15717, 15717), (15718, 15718), (15719, 15719), (15720, 15720), (15721, 15721), (15722, 15722)]

private theorem c0577_intervals_eq :
    witnessIntervals c0577_witnesses = c0577_intervals := by
  rfl

private theorem c0577_checks : witnessesCheck c0577_witnesses = true := by
  simp only [witnessesCheck, c0577_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk170.w15_check, B699LowIndex.I11TerminalData.Chunk171.w0_check, B699LowIndex.I11TerminalData.Chunk171.w1_check, B699LowIndex.I11TerminalData.Chunk171.w2_check, B699LowIndex.I11TerminalData.Chunk171.w3_check, B699LowIndex.I11TerminalData.Chunk171.w4_check, B699LowIndex.I11TerminalData.Chunk171.w5_check, B699LowIndex.I11TerminalData.Chunk171.w6_check, B699LowIndex.I11TerminalData.Chunk171.w7_check, Bool.and_self]

private theorem c0577_cover : coverCheck 15714 15722 c0577_intervals = true := by
  decide

private theorem c0577_sound : IntervalSound (15714, 15722) := by
  have hc : coverCheck 15714 15722 (witnessIntervals c0577_witnesses) = true := by
    rw [c0577_intervals_eq]
    exact c0577_cover
  exact interval_sound_of_witness_checks (witnesses := c0577_witnesses)
    (lo := 15714) (hi := 15722) c0577_checks hc

private def c0578_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk171.w8]
private def c0578_intervals : List NatInterval := [(15750, 15754)]

private theorem c0578_intervals_eq :
    witnessIntervals c0578_witnesses = c0578_intervals := by
  rfl

private theorem c0578_checks : witnessesCheck c0578_witnesses = true := by
  simp only [witnessesCheck, c0578_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk171.w8_check, Bool.and_self]

private theorem c0578_cover : coverCheck 15750 15754 c0578_intervals = true := by
  decide

private theorem c0578_sound : IntervalSound (15750, 15754) := by
  have hc : coverCheck 15750 15754 (witnessIntervals c0578_witnesses) = true := by
    rw [c0578_intervals_eq]
    exact c0578_cover
  exact interval_sound_of_witness_checks (witnesses := c0578_witnesses)
    (lo := 15750) (hi := 15754) c0578_checks hc

private def c0579_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk171.w9, B699LowIndex.I11TerminalData.Chunk171.w10, B699LowIndex.I11TerminalData.Chunk171.w11, B699LowIndex.I11TerminalData.Chunk171.w12]
private def c0579_intervals : List NatInterval := [(15778, 15783), (15784, 15784), (15785, 15785), (15786, 15786)]

private theorem c0579_intervals_eq :
    witnessIntervals c0579_witnesses = c0579_intervals := by
  rfl

private theorem c0579_checks : witnessesCheck c0579_witnesses = true := by
  simp only [witnessesCheck, c0579_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk171.w9_check, B699LowIndex.I11TerminalData.Chunk171.w10_check, B699LowIndex.I11TerminalData.Chunk171.w11_check, B699LowIndex.I11TerminalData.Chunk171.w12_check, Bool.and_self]

private theorem c0579_cover : coverCheck 15778 15786 c0579_intervals = true := by
  decide

private theorem c0579_sound : IntervalSound (15778, 15786) := by
  have hc : coverCheck 15778 15786 (witnessIntervals c0579_witnesses) = true := by
    rw [c0579_intervals_eq]
    exact c0579_cover
  exact interval_sound_of_witness_checks (witnesses := c0579_witnesses)
    (lo := 15778) (hi := 15786) c0579_checks hc

private def c0580_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk171.w13, B699LowIndex.I11TerminalData.Chunk171.w14, B699LowIndex.I11TerminalData.Chunk171.w15]
private def c0580_intervals : List NatInterval := [(15875, 15875), (15876, 15876), (15877, 15886)]

private theorem c0580_intervals_eq :
    witnessIntervals c0580_witnesses = c0580_intervals := by
  rfl

private theorem c0580_checks : witnessesCheck c0580_witnesses = true := by
  simp only [witnessesCheck, c0580_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk171.w13_check, B699LowIndex.I11TerminalData.Chunk171.w14_check, B699LowIndex.I11TerminalData.Chunk171.w15_check, Bool.and_self]

private theorem c0580_cover : coverCheck 15875 15886 c0580_intervals = true := by
  decide

private theorem c0580_sound : IntervalSound (15875, 15886) := by
  have hc : coverCheck 15875 15886 (witnessIntervals c0580_witnesses) = true := by
    rw [c0580_intervals_eq]
    exact c0580_cover
  exact interval_sound_of_witness_checks (witnesses := c0580_witnesses)
    (lo := 15875) (hi := 15886) c0580_checks hc

private def c0581_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk172.w0]
private def c0581_intervals : List NatInterval := [(15974, 15978)]

private theorem c0581_intervals_eq :
    witnessIntervals c0581_witnesses = c0581_intervals := by
  rfl

private theorem c0581_checks : witnessesCheck c0581_witnesses = true := by
  simp only [witnessesCheck, c0581_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk172.w0_check, Bool.and_self]

private theorem c0581_cover : coverCheck 15974 15978 c0581_intervals = true := by
  decide

private theorem c0581_sound : IntervalSound (15974, 15978) := by
  have hc : coverCheck 15974 15978 (witnessIntervals c0581_witnesses) = true := by
    rw [c0581_intervals_eq]
    exact c0581_cover
  exact interval_sound_of_witness_checks (witnesses := c0581_witnesses)
    (lo := 15974) (hi := 15978) c0581_checks hc

private def c0582_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk172.w1, B699LowIndex.I11TerminalData.Chunk172.w2]
private def c0582_intervals : List NatInterval := [(16000, 16001), (16002, 16010)]

private theorem c0582_intervals_eq :
    witnessIntervals c0582_witnesses = c0582_intervals := by
  rfl

private theorem c0582_checks : witnessesCheck c0582_witnesses = true := by
  simp only [witnessesCheck, c0582_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk172.w1_check, B699LowIndex.I11TerminalData.Chunk172.w2_check, Bool.and_self]

private theorem c0582_cover : coverCheck 16000 16010 c0582_intervals = true := by
  decide

private theorem c0582_sound : IntervalSound (16000, 16010) := by
  have hc : coverCheck 16000 16010 (witnessIntervals c0582_witnesses) = true := by
    rw [c0582_intervals_eq]
    exact c0582_cover
  exact interval_sound_of_witness_checks (witnesses := c0582_witnesses)
    (lo := 16000) (hi := 16010) c0582_checks hc

private def c0583_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk172.w3]
private def c0583_intervals : List NatInterval := [(16072, 16074)]

private theorem c0583_intervals_eq :
    witnessIntervals c0583_witnesses = c0583_intervals := by
  rfl

private theorem c0583_checks : witnessesCheck c0583_witnesses = true := by
  simp only [witnessesCheck, c0583_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk172.w3_check, Bool.and_self]

private theorem c0583_cover : coverCheck 16072 16074 c0583_intervals = true := by
  decide

private theorem c0583_sound : IntervalSound (16072, 16074) := by
  have hc : coverCheck 16072 16074 (witnessIntervals c0583_witnesses) = true := by
    rw [c0583_intervals_eq]
    exact c0583_cover
  exact interval_sound_of_witness_checks (witnesses := c0583_witnesses)
    (lo := 16072) (hi := 16074) c0583_checks hc

private def c0584_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk172.w4, B699LowIndex.I11TerminalData.Chunk172.w5, B699LowIndex.I11TerminalData.Chunk172.w6, B699LowIndex.I11TerminalData.Chunk172.w7, B699LowIndex.I11TerminalData.Chunk172.w8, B699LowIndex.I11TerminalData.Chunk172.w9, B699LowIndex.I11TerminalData.Chunk172.w10]
private def c0584_intervals : List NatInterval := [(16121, 16121), (16122, 16122), (16123, 16123), (16124, 16124), (16125, 16125), (16126, 16126), (16127, 16135)]

private theorem c0584_intervals_eq :
    witnessIntervals c0584_witnesses = c0584_intervals := by
  rfl

private theorem c0584_checks : witnessesCheck c0584_witnesses = true := by
  simp only [witnessesCheck, c0584_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk172.w4_check, B699LowIndex.I11TerminalData.Chunk172.w5_check, B699LowIndex.I11TerminalData.Chunk172.w6_check, B699LowIndex.I11TerminalData.Chunk172.w7_check, B699LowIndex.I11TerminalData.Chunk172.w8_check, B699LowIndex.I11TerminalData.Chunk172.w9_check, B699LowIndex.I11TerminalData.Chunk172.w10_check, Bool.and_self]

private theorem c0584_cover : coverCheck 16121 16135 c0584_intervals = true := by
  decide

private theorem c0584_sound : IntervalSound (16121, 16135) := by
  have hc : coverCheck 16121 16135 (witnessIntervals c0584_witnesses) = true := by
    rw [c0584_intervals_eq]
    exact c0584_cover
  exact interval_sound_of_witness_checks (witnesses := c0584_witnesses)
    (lo := 16121) (hi := 16135) c0584_checks hc

private def c0585_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk172.w11]
private def c0585_intervals : List NatInterval := [(16200, 16202)]

private theorem c0585_intervals_eq :
    witnessIntervals c0585_witnesses = c0585_intervals := by
  rfl

private theorem c0585_checks : witnessesCheck c0585_witnesses = true := by
  simp only [witnessesCheck, c0585_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk172.w11_check, Bool.and_self]

private theorem c0585_cover : coverCheck 16200 16202 c0585_intervals = true := by
  decide

private theorem c0585_sound : IntervalSound (16200, 16202) := by
  have hc : coverCheck 16200 16202 (witnessIntervals c0585_witnesses) = true := by
    rw [c0585_intervals_eq]
    exact c0585_cover
  exact interval_sound_of_witness_checks (witnesses := c0585_witnesses)
    (lo := 16200) (hi := 16202) c0585_checks hc

private def c0586_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk172.w12]
private def c0586_intervals : List NatInterval := [(16256, 16260)]

private theorem c0586_intervals_eq :
    witnessIntervals c0586_witnesses = c0586_intervals := by
  rfl

private theorem c0586_checks : witnessesCheck c0586_witnesses = true := by
  simp only [witnessesCheck, c0586_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk172.w12_check, Bool.and_self]

private theorem c0586_cover : coverCheck 16256 16260 c0586_intervals = true := by
  decide

private theorem c0586_sound : IntervalSound (16256, 16260) := by
  have hc : coverCheck 16256 16260 (witnessIntervals c0586_witnesses) = true := by
    rw [c0586_intervals_eq]
    exact c0586_cover
  exact interval_sound_of_witness_checks (witnesses := c0586_witnesses)
    (lo := 16256) (hi := 16260) c0586_checks hc

private def c0587_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk172.w13]
private def c0587_intervals : List NatInterval := [(16320, 16327)]

private theorem c0587_intervals_eq :
    witnessIntervals c0587_witnesses = c0587_intervals := by
  rfl

private theorem c0587_checks : witnessesCheck c0587_witnesses = true := by
  simp only [witnessesCheck, c0587_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk172.w13_check, Bool.and_self]

private theorem c0587_cover : coverCheck 16320 16327 c0587_intervals = true := by
  decide

private theorem c0587_sound : IntervalSound (16320, 16327) := by
  have hc : coverCheck 16320 16327 (witnessIntervals c0587_witnesses) = true := by
    rw [c0587_intervals_eq]
    exact c0587_cover
  exact interval_sound_of_witness_checks (witnesses := c0587_witnesses)
    (lo := 16320) (hi := 16327) c0587_checks hc

private def c0588_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk172.w14]
private def c0588_intervals : List NatInterval := [(16366, 16372)]

private theorem c0588_intervals_eq :
    witnessIntervals c0588_witnesses = c0588_intervals := by
  rfl

private theorem c0588_checks : witnessesCheck c0588_witnesses = true := by
  simp only [witnessesCheck, c0588_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk172.w14_check, Bool.and_self]

private theorem c0588_cover : coverCheck 16366 16372 c0588_intervals = true := by
  decide

private theorem c0588_sound : IntervalSound (16366, 16372) := by
  have hc : coverCheck 16366 16372 (witnessIntervals c0588_witnesses) = true := by
    rw [c0588_intervals_eq]
    exact c0588_cover
  exact interval_sound_of_witness_checks (witnesses := c0588_witnesses)
    (lo := 16366) (hi := 16372) c0588_checks hc

private def c0589_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk172.w15]
private def c0589_intervals : List NatInterval := [(16375, 16376)]

private theorem c0589_intervals_eq :
    witnessIntervals c0589_witnesses = c0589_intervals := by
  rfl

private theorem c0589_checks : witnessesCheck c0589_witnesses = true := by
  simp only [witnessesCheck, c0589_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk172.w15_check, Bool.and_self]

private theorem c0589_cover : coverCheck 16375 16376 c0589_intervals = true := by
  decide

private theorem c0589_sound : IntervalSound (16375, 16376) := by
  have hc : coverCheck 16375 16376 (witnessIntervals c0589_witnesses) = true := by
    rw [c0589_intervals_eq]
    exact c0589_cover
  exact interval_sound_of_witness_checks (witnesses := c0589_witnesses)
    (lo := 16375) (hi := 16376) c0589_checks hc

private def c0590_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk173.w0]
private def c0590_intervals : List NatInterval := [(16384, 16385)]

private theorem c0590_intervals_eq :
    witnessIntervals c0590_witnesses = c0590_intervals := by
  rfl

private theorem c0590_checks : witnessesCheck c0590_witnesses = true := by
  simp only [witnessesCheck, c0590_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk173.w0_check, Bool.and_self]

private theorem c0590_cover : coverCheck 16384 16385 c0590_intervals = true := by
  decide

private theorem c0590_sound : IntervalSound (16384, 16385) := by
  have hc : coverCheck 16384 16385 (witnessIntervals c0590_witnesses) = true := by
    rw [c0590_intervals_eq]
    exact c0590_cover
  exact interval_sound_of_witness_checks (witnesses := c0590_witnesses)
    (lo := 16384) (hi := 16385) c0590_checks hc

private def c0591_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk173.w1]
private def c0591_intervals : List NatInterval := [(16448, 16453)]

private theorem c0591_intervals_eq :
    witnessIntervals c0591_witnesses = c0591_intervals := by
  rfl

private theorem c0591_checks : witnessesCheck c0591_witnesses = true := by
  simp only [witnessesCheck, c0591_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk173.w1_check, Bool.and_self]

private theorem c0591_cover : coverCheck 16448 16453 c0591_intervals = true := by
  decide

private theorem c0591_sound : IntervalSound (16448, 16453) := by
  have hc : coverCheck 16448 16453 (witnessIntervals c0591_witnesses) = true := by
    rw [c0591_intervals_eq]
    exact c0591_cover
  exact interval_sound_of_witness_checks (witnesses := c0591_witnesses)
    (lo := 16448) (hi := 16453) c0591_checks hc

def intervals : List NatInterval := [(15680, 15690), (15714, 15722), (15750, 15754), (15778, 15786), (15875, 15886), (15974, 15978), (16000, 16010), (16072, 16074), (16121, 16135), (16200, 16202), (16256, 16260), (16320, 16327), (16366, 16372), (16375, 16376), (16384, 16385), (16448, 16453)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (15680, 15690)) (intervals := [(15714, 15722), (15750, 15754), (15778, 15786), (15875, 15886), (15974, 15978), (16000, 16010), (16072, 16074), (16121, 16135), (16200, 16202), (16256, 16260), (16320, 16327), (16366, 16372), (16375, 16376), (16384, 16385), (16448, 16453)]) c0576_sound (intervals_sound_cons (I := (15714, 15722)) (intervals := [(15750, 15754), (15778, 15786), (15875, 15886), (15974, 15978), (16000, 16010), (16072, 16074), (16121, 16135), (16200, 16202), (16256, 16260), (16320, 16327), (16366, 16372), (16375, 16376), (16384, 16385), (16448, 16453)]) c0577_sound (intervals_sound_cons (I := (15750, 15754)) (intervals := [(15778, 15786), (15875, 15886), (15974, 15978), (16000, 16010), (16072, 16074), (16121, 16135), (16200, 16202), (16256, 16260), (16320, 16327), (16366, 16372), (16375, 16376), (16384, 16385), (16448, 16453)]) c0578_sound (intervals_sound_cons (I := (15778, 15786)) (intervals := [(15875, 15886), (15974, 15978), (16000, 16010), (16072, 16074), (16121, 16135), (16200, 16202), (16256, 16260), (16320, 16327), (16366, 16372), (16375, 16376), (16384, 16385), (16448, 16453)]) c0579_sound (intervals_sound_cons (I := (15875, 15886)) (intervals := [(15974, 15978), (16000, 16010), (16072, 16074), (16121, 16135), (16200, 16202), (16256, 16260), (16320, 16327), (16366, 16372), (16375, 16376), (16384, 16385), (16448, 16453)]) c0580_sound (intervals_sound_cons (I := (15974, 15978)) (intervals := [(16000, 16010), (16072, 16074), (16121, 16135), (16200, 16202), (16256, 16260), (16320, 16327), (16366, 16372), (16375, 16376), (16384, 16385), (16448, 16453)]) c0581_sound (intervals_sound_cons (I := (16000, 16010)) (intervals := [(16072, 16074), (16121, 16135), (16200, 16202), (16256, 16260), (16320, 16327), (16366, 16372), (16375, 16376), (16384, 16385), (16448, 16453)]) c0582_sound (intervals_sound_cons (I := (16072, 16074)) (intervals := [(16121, 16135), (16200, 16202), (16256, 16260), (16320, 16327), (16366, 16372), (16375, 16376), (16384, 16385), (16448, 16453)]) c0583_sound (intervals_sound_cons (I := (16121, 16135)) (intervals := [(16200, 16202), (16256, 16260), (16320, 16327), (16366, 16372), (16375, 16376), (16384, 16385), (16448, 16453)]) c0584_sound (intervals_sound_cons (I := (16200, 16202)) (intervals := [(16256, 16260), (16320, 16327), (16366, 16372), (16375, 16376), (16384, 16385), (16448, 16453)]) c0585_sound (intervals_sound_cons (I := (16256, 16260)) (intervals := [(16320, 16327), (16366, 16372), (16375, 16376), (16384, 16385), (16448, 16453)]) c0586_sound (intervals_sound_cons (I := (16320, 16327)) (intervals := [(16366, 16372), (16375, 16376), (16384, 16385), (16448, 16453)]) c0587_sound (intervals_sound_cons (I := (16366, 16372)) (intervals := [(16375, 16376), (16384, 16385), (16448, 16453)]) c0588_sound (intervals_sound_cons (I := (16375, 16376)) (intervals := [(16384, 16385), (16448, 16453)]) c0589_sound (intervals_sound_cons (I := (16384, 16385)) (intervals := [(16448, 16453)]) c0590_sound (intervals_sound_cons (I := (16448, 16453)) (intervals := []) c0591_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G036
