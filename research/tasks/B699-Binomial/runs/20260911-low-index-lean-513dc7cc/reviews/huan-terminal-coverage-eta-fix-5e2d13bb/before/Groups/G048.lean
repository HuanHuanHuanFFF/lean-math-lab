import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk204
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk205
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk206
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk207

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G048
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0768_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk204.w3, B699LowIndex.I11TerminalData.Chunk204.w4]
private def c0768_intervals : List NatInterval := [(29248, 29253), (29254, 29258)]

private theorem c0768_intervals_eq :
    witnessIntervals c0768_witnesses = c0768_intervals := by
  rfl

private theorem c0768_checks : witnessesCheck c0768_witnesses = true := by
  simp only [witnessesCheck, c0768_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk204.w3_check, B699LowIndex.I11TerminalData.Chunk204.w4_check, Bool.and_self]

private theorem c0768_cover : coverCheck 29248 29258 c0768_intervals = true := by
  decide

private theorem c0768_sound : IntervalSound (29248, 29258) := by
  have hc : coverCheck 29248 29258 (witnessIntervals c0768_witnesses) = true := by
    rw [c0768_intervals_eq]
    exact c0768_cover
  exact interval_sound_of_witness_checks (witnesses := c0768_witnesses)
    (lo := 29248) (hi := 29258) c0768_checks hc

private def c0769_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk204.w5]
private def c0769_intervals : List NatInterval := [(29322, 29322)]

private theorem c0769_intervals_eq :
    witnessIntervals c0769_witnesses = c0769_intervals := by
  rfl

private theorem c0769_checks : witnessesCheck c0769_witnesses = true := by
  simp only [witnessesCheck, c0769_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk204.w5_check, Bool.and_self]

private theorem c0769_cover : coverCheck 29322 29322 c0769_intervals = true := by
  decide

private theorem c0769_sound : IntervalSound (29322, 29322) := by
  have hc : coverCheck 29322 29322 (witnessIntervals c0769_witnesses) = true := by
    rw [c0769_intervals_eq]
    exact c0769_cover
  exact interval_sound_of_witness_checks (witnesses := c0769_witnesses)
    (lo := 29322) (hi := 29322) c0769_checks hc

private def c0770_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk204.w6, B699LowIndex.I11TerminalData.Chunk204.w7, B699LowIndex.I11TerminalData.Chunk204.w8, B699LowIndex.I11TerminalData.Chunk204.w9, B699LowIndex.I11TerminalData.Chunk204.w10, B699LowIndex.I11TerminalData.Chunk204.w11, B699LowIndex.I11TerminalData.Chunk204.w12, B699LowIndex.I11TerminalData.Chunk204.w13]
private def c0770_intervals : List NatInterval := [(29376, 29376), (29377, 29377), (29378, 29378), (29379, 29379), (29380, 29380), (29381, 29381), (29382, 29382), (29383, 29385)]

private theorem c0770_intervals_eq :
    witnessIntervals c0770_witnesses = c0770_intervals := by
  rfl

private theorem c0770_checks : witnessesCheck c0770_witnesses = true := by
  simp only [witnessesCheck, c0770_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk204.w6_check, B699LowIndex.I11TerminalData.Chunk204.w7_check, B699LowIndex.I11TerminalData.Chunk204.w8_check, B699LowIndex.I11TerminalData.Chunk204.w9_check, B699LowIndex.I11TerminalData.Chunk204.w10_check, B699LowIndex.I11TerminalData.Chunk204.w11_check, B699LowIndex.I11TerminalData.Chunk204.w12_check, B699LowIndex.I11TerminalData.Chunk204.w13_check, Bool.and_self]

private theorem c0770_cover : coverCheck 29376 29385 c0770_intervals = true := by
  decide

private theorem c0770_sound : IntervalSound (29376, 29385) := by
  have hc : coverCheck 29376 29385 (witnessIntervals c0770_witnesses) = true := by
    rw [c0770_intervals_eq]
    exact c0770_cover
  exact interval_sound_of_witness_checks (witnesses := c0770_witnesses)
    (lo := 29376) (hi := 29385) c0770_checks hc

private def c0771_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk204.w14, B699LowIndex.I11TerminalData.Chunk204.w15]
private def c0771_intervals : List NatInterval := [(29500, 29500), (29501, 29510)]

private theorem c0771_intervals_eq :
    witnessIntervals c0771_witnesses = c0771_intervals := by
  rfl

private theorem c0771_checks : witnessesCheck c0771_witnesses = true := by
  simp only [witnessesCheck, c0771_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk204.w14_check, B699LowIndex.I11TerminalData.Chunk204.w15_check, Bool.and_self]

private theorem c0771_cover : coverCheck 29500 29510 c0771_intervals = true := by
  decide

private theorem c0771_sound : IntervalSound (29500, 29510) := by
  have hc : coverCheck 29500 29510 (witnessIntervals c0771_witnesses) = true := by
    rw [c0771_intervals_eq]
    exact c0771_cover
  exact interval_sound_of_witness_checks (witnesses := c0771_witnesses)
    (lo := 29500) (hi := 29510) c0771_checks hc

private def c0772_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk205.w0]
private def c0772_intervals : List NatInterval := [(29568, 29575)]

private theorem c0772_intervals_eq :
    witnessIntervals c0772_witnesses = c0772_intervals := by
  rfl

private theorem c0772_checks : witnessesCheck c0772_witnesses = true := by
  simp only [witnessesCheck, c0772_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk205.w0_check, Bool.and_self]

private theorem c0772_cover : coverCheck 29568 29575 c0772_intervals = true := by
  decide

private theorem c0772_sound : IntervalSound (29568, 29575) := by
  have hc : coverCheck 29568 29575 (witnessIntervals c0772_witnesses) = true := by
    rw [c0772_intervals_eq]
    exact c0772_cover
  exact interval_sound_of_witness_checks (witnesses := c0772_witnesses)
    (lo := 29568) (hi := 29575) c0772_checks hc

private def c0773_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk205.w1]
private def c0773_intervals : List NatInterval := [(29632, 29635)]

private theorem c0773_intervals_eq :
    witnessIntervals c0773_witnesses = c0773_intervals := by
  rfl

private theorem c0773_checks : witnessesCheck c0773_witnesses = true := by
  simp only [witnessesCheck, c0773_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk205.w1_check, Bool.and_self]

private theorem c0773_cover : coverCheck 29632 29635 c0773_intervals = true := by
  decide

private theorem c0773_sound : IntervalSound (29632, 29635) := by
  have hc : coverCheck 29632 29635 (witnessIntervals c0773_witnesses) = true := by
    rw [c0773_intervals_eq]
    exact c0773_cover
  exact interval_sound_of_witness_checks (witnesses := c0773_witnesses)
    (lo := 29632) (hi := 29635) c0773_checks hc

private def c0774_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk205.w2]
private def c0774_intervals : List NatInterval := [(29760, 29760)]

private theorem c0774_intervals_eq :
    witnessIntervals c0774_witnesses = c0774_intervals := by
  rfl

private theorem c0774_checks : witnessesCheck c0774_witnesses = true := by
  simp only [witnessesCheck, c0774_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk205.w2_check, Bool.and_self]

private theorem c0774_cover : coverCheck 29760 29760 c0774_intervals = true := by
  decide

private theorem c0774_sound : IntervalSound (29760, 29760) := by
  have hc : coverCheck 29760 29760 (witnessIntervals c0774_witnesses) = true := by
    rw [c0774_intervals_eq]
    exact c0774_cover
  exact interval_sound_of_witness_checks (witnesses := c0774_witnesses)
    (lo := 29760) (hi := 29760) c0774_checks hc

private def c0775_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk205.w3, B699LowIndex.I11TerminalData.Chunk205.w4, B699LowIndex.I11TerminalData.Chunk205.w5, B699LowIndex.I11TerminalData.Chunk205.w6, B699LowIndex.I11TerminalData.Chunk205.w7, B699LowIndex.I11TerminalData.Chunk205.w8, B699LowIndex.I11TerminalData.Chunk205.w9, B699LowIndex.I11TerminalData.Chunk205.w10]
private def c0775_intervals : List NatInterval := [(29889, 29891), (29892, 29892), (29893, 29893), (29894, 29894), (29895, 29895), (29896, 29896), (29897, 29897), (29898, 29898)]

private theorem c0775_intervals_eq :
    witnessIntervals c0775_witnesses = c0775_intervals := by
  rfl

private theorem c0775_checks : witnessesCheck c0775_witnesses = true := by
  simp only [witnessesCheck, c0775_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk205.w3_check, B699LowIndex.I11TerminalData.Chunk205.w4_check, B699LowIndex.I11TerminalData.Chunk205.w5_check, B699LowIndex.I11TerminalData.Chunk205.w6_check, B699LowIndex.I11TerminalData.Chunk205.w7_check, B699LowIndex.I11TerminalData.Chunk205.w8_check, B699LowIndex.I11TerminalData.Chunk205.w9_check, B699LowIndex.I11TerminalData.Chunk205.w10_check, Bool.and_self]

private theorem c0775_cover : coverCheck 29889 29898 c0775_intervals = true := by
  decide

private theorem c0775_sound : IntervalSound (29889, 29898) := by
  have hc : coverCheck 29889 29898 (witnessIntervals c0775_witnesses) = true := by
    rw [c0775_intervals_eq]
    exact c0775_cover
  exact interval_sound_of_witness_checks (witnesses := c0775_witnesses)
    (lo := 29889) (hi := 29898) c0775_checks hc

private def c0776_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk205.w11, B699LowIndex.I11TerminalData.Chunk205.w12]
private def c0776_intervals : List NatInterval := [(30132, 30132), (30133, 30135)]

private theorem c0776_intervals_eq :
    witnessIntervals c0776_witnesses = c0776_intervals := by
  rfl

private theorem c0776_checks : witnessesCheck c0776_witnesses = true := by
  simp only [witnessesCheck, c0776_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk205.w11_check, B699LowIndex.I11TerminalData.Chunk205.w12_check, Bool.and_self]

private theorem c0776_cover : coverCheck 30132 30135 c0776_intervals = true := by
  decide

private theorem c0776_sound : IntervalSound (30132, 30135) := by
  have hc : coverCheck 30132 30135 (witnessIntervals c0776_witnesses) = true := by
    rw [c0776_intervals_eq]
    exact c0776_cover
  exact interval_sound_of_witness_checks (witnesses := c0776_witnesses)
    (lo := 30132) (hi := 30135) c0776_checks hc

private def c0777_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk205.w13]
private def c0777_intervals : List NatInterval := [(30213, 30218)]

private theorem c0777_intervals_eq :
    witnessIntervals c0777_witnesses = c0777_intervals := by
  rfl

private theorem c0777_checks : witnessesCheck c0777_witnesses = true := by
  simp only [witnessesCheck, c0777_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk205.w13_check, Bool.and_self]

private theorem c0777_cover : coverCheck 30213 30218 c0777_intervals = true := by
  decide

private theorem c0777_sound : IntervalSound (30213, 30218) := by
  have hc : coverCheck 30213 30218 (witnessIntervals c0777_witnesses) = true := by
    rw [c0777_intervals_eq]
    exact c0777_cover
  exact interval_sound_of_witness_checks (witnesses := c0777_witnesses)
    (lo := 30213) (hi := 30218) c0777_checks hc

private def c0778_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk205.w14, B699LowIndex.I11TerminalData.Chunk205.w15, B699LowIndex.I11TerminalData.Chunk206.w0, B699LowIndex.I11TerminalData.Chunk206.w1, B699LowIndex.I11TerminalData.Chunk206.w2, B699LowIndex.I11TerminalData.Chunk206.w3, B699LowIndex.I11TerminalData.Chunk206.w4, B699LowIndex.I11TerminalData.Chunk206.w5, B699LowIndex.I11TerminalData.Chunk206.w6]
private def c0778_intervals : List NatInterval := [(30375, 30377), (30378, 30378), (30379, 30379), (30380, 30380), (30381, 30381), (30382, 30382), (30383, 30383), (30384, 30384), (30385, 30385)]

private theorem c0778_intervals_eq :
    witnessIntervals c0778_witnesses = c0778_intervals := by
  rfl

private theorem c0778_checks : witnessesCheck c0778_witnesses = true := by
  simp only [witnessesCheck, c0778_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk205.w14_check, B699LowIndex.I11TerminalData.Chunk205.w15_check, B699LowIndex.I11TerminalData.Chunk206.w0_check, B699LowIndex.I11TerminalData.Chunk206.w1_check, B699LowIndex.I11TerminalData.Chunk206.w2_check, B699LowIndex.I11TerminalData.Chunk206.w3_check, B699LowIndex.I11TerminalData.Chunk206.w4_check, B699LowIndex.I11TerminalData.Chunk206.w5_check, B699LowIndex.I11TerminalData.Chunk206.w6_check, Bool.and_self]

private theorem c0778_cover : coverCheck 30375 30385 c0778_intervals = true := by
  decide

private theorem c0778_sound : IntervalSound (30375, 30385) := by
  have hc : coverCheck 30375 30385 (witnessIntervals c0778_witnesses) = true := by
    rw [c0778_intervals_eq]
    exact c0778_cover
  exact interval_sound_of_witness_checks (witnesses := c0778_witnesses)
    (lo := 30375) (hi := 30385) c0778_checks hc

private def c0779_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk206.w7, B699LowIndex.I11TerminalData.Chunk206.w8, B699LowIndex.I11TerminalData.Chunk206.w9]
private def c0779_intervals : List NatInterval := [(30464, 30464), (30465, 30465), (30466, 30466)]

private theorem c0779_intervals_eq :
    witnessIntervals c0779_witnesses = c0779_intervals := by
  rfl

private theorem c0779_checks : witnessesCheck c0779_witnesses = true := by
  simp only [witnessesCheck, c0779_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk206.w7_check, B699LowIndex.I11TerminalData.Chunk206.w8_check, B699LowIndex.I11TerminalData.Chunk206.w9_check, Bool.and_self]

private theorem c0779_cover : coverCheck 30464 30466 c0779_intervals = true := by
  decide

private theorem c0779_sound : IntervalSound (30464, 30466) := by
  have hc : coverCheck 30464 30466 (witnessIntervals c0779_witnesses) = true := by
    rw [c0779_intervals_eq]
    exact c0779_cover
  exact interval_sound_of_witness_checks (witnesses := c0779_witnesses)
    (lo := 30464) (hi := 30466) c0779_checks hc

private def c0780_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk206.w10, B699LowIndex.I11TerminalData.Chunk206.w11]
private def c0780_intervals : List NatInterval := [(30528, 30528), (30529, 30538)]

private theorem c0780_intervals_eq :
    witnessIntervals c0780_witnesses = c0780_intervals := by
  rfl

private theorem c0780_checks : witnessesCheck c0780_witnesses = true := by
  simp only [witnessesCheck, c0780_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk206.w10_check, B699LowIndex.I11TerminalData.Chunk206.w11_check, Bool.and_self]

private theorem c0780_cover : coverCheck 30528 30538 c0780_intervals = true := by
  decide

private theorem c0780_sound : IntervalSound (30528, 30538) := by
  have hc : coverCheck 30528 30538 (witnessIntervals c0780_witnesses) = true := by
    rw [c0780_intervals_eq]
    exact c0780_cover
  exact interval_sound_of_witness_checks (witnesses := c0780_witnesses)
    (lo := 30528) (hi := 30538) c0780_checks hc

private def c0781_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk206.w12, B699LowIndex.I11TerminalData.Chunk206.w13, B699LowIndex.I11TerminalData.Chunk206.w14, B699LowIndex.I11TerminalData.Chunk206.w15]
private def c0781_intervals : List NatInterval := [(30625, 30625), (30626, 30626), (30627, 30627), (30628, 30628)]

private theorem c0781_intervals_eq :
    witnessIntervals c0781_witnesses = c0781_intervals := by
  rfl

private theorem c0781_checks : witnessesCheck c0781_witnesses = true := by
  simp only [witnessesCheck, c0781_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk206.w12_check, B699LowIndex.I11TerminalData.Chunk206.w13_check, B699LowIndex.I11TerminalData.Chunk206.w14_check, B699LowIndex.I11TerminalData.Chunk206.w15_check, Bool.and_self]

private theorem c0781_cover : coverCheck 30625 30628 c0781_intervals = true := by
  decide

private theorem c0781_sound : IntervalSound (30625, 30628) := by
  have hc : coverCheck 30625 30628 (witnessIntervals c0781_witnesses) = true := by
    rw [c0781_intervals_eq]
    exact c0781_cover
  exact interval_sound_of_witness_checks (witnesses := c0781_witnesses)
    (lo := 30625) (hi := 30628) c0781_checks hc

private def c0782_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk207.w0]
private def c0782_intervals : List NatInterval := [(30784, 30790)]

private theorem c0782_intervals_eq :
    witnessIntervals c0782_witnesses = c0782_intervals := by
  rfl

private theorem c0782_checks : witnessesCheck c0782_witnesses = true := by
  simp only [witnessesCheck, c0782_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk207.w0_check, Bool.and_self]

private theorem c0782_cover : coverCheck 30784 30790 c0782_intervals = true := by
  decide

private theorem c0782_sound : IntervalSound (30784, 30790) := by
  have hc : coverCheck 30784 30790 (witnessIntervals c0782_witnesses) = true := by
    rw [c0782_intervals_eq]
    exact c0782_cover
  exact interval_sound_of_witness_checks (witnesses := c0782_witnesses)
    (lo := 30784) (hi := 30790) c0782_checks hc

private def c0783_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk207.w1]
private def c0783_intervals : List NatInterval := [(30870, 30871)]

private theorem c0783_intervals_eq :
    witnessIntervals c0783_witnesses = c0783_intervals := by
  rfl

private theorem c0783_checks : witnessesCheck c0783_witnesses = true := by
  simp only [witnessesCheck, c0783_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk207.w1_check, Bool.and_self]

private theorem c0783_cover : coverCheck 30870 30871 c0783_intervals = true := by
  decide

private theorem c0783_sound : IntervalSound (30870, 30871) := by
  have hc : coverCheck 30870 30871 (witnessIntervals c0783_witnesses) = true := by
    rw [c0783_intervals_eq]
    exact c0783_cover
  exact interval_sound_of_witness_checks (witnesses := c0783_witnesses)
    (lo := 30870) (hi := 30871) c0783_checks hc

def intervals : List NatInterval := [(29248, 29258), (29322, 29322), (29376, 29385), (29500, 29510), (29568, 29575), (29632, 29635), (29760, 29760), (29889, 29898), (30132, 30135), (30213, 30218), (30375, 30385), (30464, 30466), (30528, 30538), (30625, 30628), (30784, 30790), (30870, 30871)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (29248, 29258)) (intervals := [(29322, 29322), (29376, 29385), (29500, 29510), (29568, 29575), (29632, 29635), (29760, 29760), (29889, 29898), (30132, 30135), (30213, 30218), (30375, 30385), (30464, 30466), (30528, 30538), (30625, 30628), (30784, 30790), (30870, 30871)]) c0768_sound (intervals_sound_cons (I := (29322, 29322)) (intervals := [(29376, 29385), (29500, 29510), (29568, 29575), (29632, 29635), (29760, 29760), (29889, 29898), (30132, 30135), (30213, 30218), (30375, 30385), (30464, 30466), (30528, 30538), (30625, 30628), (30784, 30790), (30870, 30871)]) c0769_sound (intervals_sound_cons (I := (29376, 29385)) (intervals := [(29500, 29510), (29568, 29575), (29632, 29635), (29760, 29760), (29889, 29898), (30132, 30135), (30213, 30218), (30375, 30385), (30464, 30466), (30528, 30538), (30625, 30628), (30784, 30790), (30870, 30871)]) c0770_sound (intervals_sound_cons (I := (29500, 29510)) (intervals := [(29568, 29575), (29632, 29635), (29760, 29760), (29889, 29898), (30132, 30135), (30213, 30218), (30375, 30385), (30464, 30466), (30528, 30538), (30625, 30628), (30784, 30790), (30870, 30871)]) c0771_sound (intervals_sound_cons (I := (29568, 29575)) (intervals := [(29632, 29635), (29760, 29760), (29889, 29898), (30132, 30135), (30213, 30218), (30375, 30385), (30464, 30466), (30528, 30538), (30625, 30628), (30784, 30790), (30870, 30871)]) c0772_sound (intervals_sound_cons (I := (29632, 29635)) (intervals := [(29760, 29760), (29889, 29898), (30132, 30135), (30213, 30218), (30375, 30385), (30464, 30466), (30528, 30538), (30625, 30628), (30784, 30790), (30870, 30871)]) c0773_sound (intervals_sound_cons (I := (29760, 29760)) (intervals := [(29889, 29898), (30132, 30135), (30213, 30218), (30375, 30385), (30464, 30466), (30528, 30538), (30625, 30628), (30784, 30790), (30870, 30871)]) c0774_sound (intervals_sound_cons (I := (29889, 29898)) (intervals := [(30132, 30135), (30213, 30218), (30375, 30385), (30464, 30466), (30528, 30538), (30625, 30628), (30784, 30790), (30870, 30871)]) c0775_sound (intervals_sound_cons (I := (30132, 30135)) (intervals := [(30213, 30218), (30375, 30385), (30464, 30466), (30528, 30538), (30625, 30628), (30784, 30790), (30870, 30871)]) c0776_sound (intervals_sound_cons (I := (30213, 30218)) (intervals := [(30375, 30385), (30464, 30466), (30528, 30538), (30625, 30628), (30784, 30790), (30870, 30871)]) c0777_sound (intervals_sound_cons (I := (30375, 30385)) (intervals := [(30464, 30466), (30528, 30538), (30625, 30628), (30784, 30790), (30870, 30871)]) c0778_sound (intervals_sound_cons (I := (30464, 30466)) (intervals := [(30528, 30538), (30625, 30628), (30784, 30790), (30870, 30871)]) c0779_sound (intervals_sound_cons (I := (30528, 30538)) (intervals := [(30625, 30628), (30784, 30790), (30870, 30871)]) c0780_sound (intervals_sound_cons (I := (30625, 30628)) (intervals := [(30784, 30790), (30870, 30871)]) c0781_sound (intervals_sound_cons (I := (30784, 30790)) (intervals := [(30870, 30871)]) c0782_sound (intervals_sound_cons (I := (30870, 30871)) (intervals := []) c0783_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G048
