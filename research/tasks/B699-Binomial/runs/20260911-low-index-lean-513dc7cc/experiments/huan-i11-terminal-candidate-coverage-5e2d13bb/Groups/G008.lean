import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk089
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk090
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk091

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G008
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0128_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk089.w0]
private def c0128_intervals : List NatInterval := [(6304, 6310)]

private theorem c0128_intervals_eq :
    witnessIntervals c0128_witnesses = c0128_intervals := by
  rfl

private theorem c0128_checks : witnessesCheck c0128_witnesses = true := by
  simp only [witnessesCheck, c0128_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk089.w0_check, Bool.and_self]

private theorem c0128_cover : coverCheck 6304 6310 c0128_intervals = true := by
  decide

private theorem c0128_sound : IntervalSound (6304, 6310) := by
  have hc : coverCheck 6304 6310 (witnessIntervals c0128_witnesses) = true := by
    rw [c0128_intervals_eq]
    exact c0128_cover
  exact interval_sound_of_witness_checks (witnesses := c0128_witnesses)
    (lo := 6304) (hi := 6310) c0128_checks hc

private def c0129_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk089.w1, B699LowIndex.I11TerminalData.Chunk089.w2]
private def c0129_intervals : List NatInterval := [(6320, 6327), (6328, 6331)]

private theorem c0129_intervals_eq :
    witnessIntervals c0129_witnesses = c0129_intervals := by
  rfl

private theorem c0129_checks : witnessesCheck c0129_witnesses = true := by
  simp only [witnessesCheck, c0129_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk089.w1_check, B699LowIndex.I11TerminalData.Chunk089.w2_check, Bool.and_self]

private theorem c0129_cover : coverCheck 6320 6331 c0129_intervals = true := by
  decide

private theorem c0129_sound : IntervalSound (6320, 6331) := by
  have hc : coverCheck 6320 6331 (witnessIntervals c0129_witnesses) = true := by
    rw [c0129_intervals_eq]
    exact c0129_cover
  exact interval_sound_of_witness_checks (witnesses := c0129_witnesses)
    (lo := 6320) (hi := 6331) c0129_checks hc

private def c0130_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk089.w3]
private def c0130_intervals : List NatInterval := [(6345, 6346)]

private theorem c0130_intervals_eq :
    witnessIntervals c0130_witnesses = c0130_intervals := by
  rfl

private theorem c0130_checks : witnessesCheck c0130_witnesses = true := by
  simp only [witnessesCheck, c0130_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk089.w3_check, Bool.and_self]

private theorem c0130_cover : coverCheck 6345 6346 c0130_intervals = true := by
  decide

private theorem c0130_sound : IntervalSound (6345, 6346) := by
  have hc : coverCheck 6345 6346 (witnessIntervals c0130_witnesses) = true := by
    rw [c0130_intervals_eq]
    exact c0130_cover
  exact interval_sound_of_witness_checks (witnesses := c0130_witnesses)
    (lo := 6345) (hi := 6346) c0130_checks hc

private def c0131_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk089.w4, B699LowIndex.I11TerminalData.Chunk089.w5]
private def c0131_intervals : List NatInterval := [(6350, 6353), (6354, 6360)]

private theorem c0131_intervals_eq :
    witnessIntervals c0131_witnesses = c0131_intervals := by
  rfl

private theorem c0131_checks : witnessesCheck c0131_witnesses = true := by
  simp only [witnessesCheck, c0131_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk089.w4_check, B699LowIndex.I11TerminalData.Chunk089.w5_check, Bool.and_self]

private theorem c0131_cover : coverCheck 6350 6360 c0131_intervals = true := by
  decide

private theorem c0131_sound : IntervalSound (6350, 6360) := by
  have hc : coverCheck 6350 6360 (witnessIntervals c0131_witnesses) = true := by
    rw [c0131_intervals_eq]
    exact c0131_cover
  exact interval_sound_of_witness_checks (witnesses := c0131_witnesses)
    (lo := 6350) (hi := 6360) c0131_checks hc

private def c0132_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk089.w6, B699LowIndex.I11TerminalData.Chunk089.w7]
private def c0132_intervals : List NatInterval := [(6370, 6377), (6378, 6382)]

private theorem c0132_intervals_eq :
    witnessIntervals c0132_witnesses = c0132_intervals := by
  rfl

private theorem c0132_checks : witnessesCheck c0132_witnesses = true := by
  simp only [witnessesCheck, c0132_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk089.w6_check, B699LowIndex.I11TerminalData.Chunk089.w7_check, Bool.and_self]

private theorem c0132_cover : coverCheck 6370 6382 c0132_intervals = true := by
  decide

private theorem c0132_sound : IntervalSound (6370, 6382) := by
  have hc : coverCheck 6370 6382 (witnessIntervals c0132_witnesses) = true := by
    rw [c0132_intervals_eq]
    exact c0132_cover
  exact interval_sound_of_witness_checks (witnesses := c0132_witnesses)
    (lo := 6370) (hi := 6382) c0132_checks hc

private def c0133_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk089.w8]
private def c0133_intervals : List NatInterval := [(6384, 6385)]

private theorem c0133_intervals_eq :
    witnessIntervals c0133_witnesses = c0133_intervals := by
  rfl

private theorem c0133_checks : witnessesCheck c0133_witnesses = true := by
  simp only [witnessesCheck, c0133_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk089.w8_check, Bool.and_self]

private theorem c0133_cover : coverCheck 6384 6385 c0133_intervals = true := by
  decide

private theorem c0133_sound : IntervalSound (6384, 6385) := by
  have hc : coverCheck 6384 6385 (witnessIntervals c0133_witnesses) = true := by
    rw [c0133_intervals_eq]
    exact c0133_cover
  exact interval_sound_of_witness_checks (witnesses := c0133_witnesses)
    (lo := 6384) (hi := 6385) c0133_checks hc

private def c0134_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk089.w9, B699LowIndex.I11TerminalData.Chunk089.w10, B699LowIndex.I11TerminalData.Chunk089.w11, B699LowIndex.I11TerminalData.Chunk089.w12]
private def c0134_intervals : List NatInterval := [(6400, 6407), (6408, 6408), (6409, 6409), (6410, 6410)]

private theorem c0134_intervals_eq :
    witnessIntervals c0134_witnesses = c0134_intervals := by
  rfl

private theorem c0134_checks : witnessesCheck c0134_witnesses = true := by
  simp only [witnessesCheck, c0134_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk089.w9_check, B699LowIndex.I11TerminalData.Chunk089.w10_check, B699LowIndex.I11TerminalData.Chunk089.w11_check, B699LowIndex.I11TerminalData.Chunk089.w12_check, Bool.and_self]

private theorem c0134_cover : coverCheck 6400 6410 c0134_intervals = true := by
  decide

private theorem c0134_sound : IntervalSound (6400, 6410) := by
  have hc : coverCheck 6400 6410 (witnessIntervals c0134_witnesses) = true := by
    rw [c0134_intervals_eq]
    exact c0134_cover
  exact interval_sound_of_witness_checks (witnesses := c0134_witnesses)
    (lo := 6400) (hi := 6410) c0134_checks hc

private def c0135_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk089.w13, B699LowIndex.I11TerminalData.Chunk089.w14, B699LowIndex.I11TerminalData.Chunk089.w15, B699LowIndex.I11TerminalData.Chunk090.w0]
private def c0135_intervals : List NatInterval := [(6419, 6419), (6420, 6420), (6421, 6431), (6432, 6436)]

private theorem c0135_intervals_eq :
    witnessIntervals c0135_witnesses = c0135_intervals := by
  rfl

private theorem c0135_checks : witnessesCheck c0135_witnesses = true := by
  simp only [witnessesCheck, c0135_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk089.w13_check, B699LowIndex.I11TerminalData.Chunk089.w14_check, B699LowIndex.I11TerminalData.Chunk089.w15_check, B699LowIndex.I11TerminalData.Chunk090.w0_check, Bool.and_self]

private theorem c0135_cover : coverCheck 6419 6436 c0135_intervals = true := by
  decide

private theorem c0135_sound : IntervalSound (6419, 6436) := by
  have hc : coverCheck 6419 6436 (witnessIntervals c0135_witnesses) = true := by
    rw [c0135_intervals_eq]
    exact c0135_cover
  exact interval_sound_of_witness_checks (witnesses := c0135_witnesses)
    (lo := 6419) (hi := 6436) c0135_checks hc

private def c0136_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk090.w1, B699LowIndex.I11TerminalData.Chunk090.w2]
private def c0136_intervals : List NatInterval := [(6450, 6459), (6460, 6460)]

private theorem c0136_intervals_eq :
    witnessIntervals c0136_witnesses = c0136_intervals := by
  rfl

private theorem c0136_checks : witnessesCheck c0136_witnesses = true := by
  simp only [witnessesCheck, c0136_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk090.w1_check, B699LowIndex.I11TerminalData.Chunk090.w2_check, Bool.and_self]

private theorem c0136_cover : coverCheck 6450 6460 c0136_intervals = true := by
  decide

private theorem c0136_sound : IntervalSound (6450, 6460) := by
  have hc : coverCheck 6450 6460 (witnessIntervals c0136_witnesses) = true := by
    rw [c0136_intervals_eq]
    exact c0136_cover
  exact interval_sound_of_witness_checks (witnesses := c0136_witnesses)
    (lo := 6450) (hi := 6460) c0136_checks hc

private def c0137_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk090.w3, B699LowIndex.I11TerminalData.Chunk090.w4]
private def c0137_intervals : List NatInterval := [(6468, 6468), (6469, 6478)]

private theorem c0137_intervals_eq :
    witnessIntervals c0137_witnesses = c0137_intervals := by
  rfl

private theorem c0137_checks : witnessesCheck c0137_witnesses = true := by
  simp only [witnessesCheck, c0137_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk090.w3_check, B699LowIndex.I11TerminalData.Chunk090.w4_check, Bool.and_self]

private theorem c0137_cover : coverCheck 6468 6478 c0137_intervals = true := by
  decide

private theorem c0137_sound : IntervalSound (6468, 6478) := by
  have hc : coverCheck 6468 6478 (witnessIntervals c0137_witnesses) = true := by
    rw [c0137_intervals_eq]
    exact c0137_cover
  exact interval_sound_of_witness_checks (witnesses := c0137_witnesses)
    (lo := 6468) (hi := 6478) c0137_checks hc

private def c0138_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk090.w5, B699LowIndex.I11TerminalData.Chunk090.w6]
private def c0138_intervals : List NatInterval := [(6480, 6483), (6484, 6490)]

private theorem c0138_intervals_eq :
    witnessIntervals c0138_witnesses = c0138_intervals := by
  rfl

private theorem c0138_checks : witnessesCheck c0138_witnesses = true := by
  simp only [witnessesCheck, c0138_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk090.w5_check, B699LowIndex.I11TerminalData.Chunk090.w6_check, Bool.and_self]

private theorem c0138_cover : coverCheck 6480 6490 c0138_intervals = true := by
  decide

private theorem c0138_sound : IntervalSound (6480, 6490) := by
  have hc : coverCheck 6480 6490 (witnessIntervals c0138_witnesses) = true := by
    rw [c0138_intervals_eq]
    exact c0138_cover
  exact interval_sound_of_witness_checks (witnesses := c0138_witnesses)
    (lo := 6480) (hi := 6490) c0138_checks hc

private def c0139_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk090.w7, B699LowIndex.I11TerminalData.Chunk090.w8, B699LowIndex.I11TerminalData.Chunk090.w9, B699LowIndex.I11TerminalData.Chunk090.w10, B699LowIndex.I11TerminalData.Chunk090.w11, B699LowIndex.I11TerminalData.Chunk090.w12, B699LowIndex.I11TerminalData.Chunk090.w13, B699LowIndex.I11TerminalData.Chunk090.w14, B699LowIndex.I11TerminalData.Chunk090.w15, B699LowIndex.I11TerminalData.Chunk091.w0]
private def c0139_intervals : List NatInterval := [(6500, 6501), (6502, 6502), (6503, 6503), (6504, 6504), (6505, 6505), (6506, 6506), (6507, 6507), (6508, 6508), (6509, 6509), (6510, 6510)]

private theorem c0139_intervals_eq :
    witnessIntervals c0139_witnesses = c0139_intervals := by
  rfl

private theorem c0139_checks : witnessesCheck c0139_witnesses = true := by
  simp only [witnessesCheck, c0139_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk090.w7_check, B699LowIndex.I11TerminalData.Chunk090.w8_check, B699LowIndex.I11TerminalData.Chunk090.w9_check, B699LowIndex.I11TerminalData.Chunk090.w10_check, B699LowIndex.I11TerminalData.Chunk090.w11_check, B699LowIndex.I11TerminalData.Chunk090.w12_check, B699LowIndex.I11TerminalData.Chunk090.w13_check, B699LowIndex.I11TerminalData.Chunk090.w14_check, B699LowIndex.I11TerminalData.Chunk090.w15_check, B699LowIndex.I11TerminalData.Chunk091.w0_check, Bool.and_self]

private theorem c0139_cover : coverCheck 6500 6510 c0139_intervals = true := by
  decide

private theorem c0139_sound : IntervalSound (6500, 6510) := by
  have hc : coverCheck 6500 6510 (witnessIntervals c0139_witnesses) = true := by
    rw [c0139_intervals_eq]
    exact c0139_cover
  exact interval_sound_of_witness_checks (witnesses := c0139_witnesses)
    (lo := 6500) (hi := 6510) c0139_checks hc

private def c0140_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk091.w1, B699LowIndex.I11TerminalData.Chunk091.w2, B699LowIndex.I11TerminalData.Chunk091.w3, B699LowIndex.I11TerminalData.Chunk091.w4, B699LowIndex.I11TerminalData.Chunk091.w5, B699LowIndex.I11TerminalData.Chunk091.w6, B699LowIndex.I11TerminalData.Chunk091.w7, B699LowIndex.I11TerminalData.Chunk091.w8, B699LowIndex.I11TerminalData.Chunk091.w9, B699LowIndex.I11TerminalData.Chunk091.w10]
private def c0140_intervals : List NatInterval := [(6512, 6512), (6513, 6513), (6514, 6514), (6515, 6515), (6516, 6516), (6517, 6517), (6518, 6518), (6519, 6519), (6520, 6520), (6521, 6522)]

private theorem c0140_intervals_eq :
    witnessIntervals c0140_witnesses = c0140_intervals := by
  rfl

private theorem c0140_checks : witnessesCheck c0140_witnesses = true := by
  simp only [witnessesCheck, c0140_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk091.w1_check, B699LowIndex.I11TerminalData.Chunk091.w2_check, B699LowIndex.I11TerminalData.Chunk091.w3_check, B699LowIndex.I11TerminalData.Chunk091.w4_check, B699LowIndex.I11TerminalData.Chunk091.w5_check, B699LowIndex.I11TerminalData.Chunk091.w6_check, B699LowIndex.I11TerminalData.Chunk091.w7_check, B699LowIndex.I11TerminalData.Chunk091.w8_check, B699LowIndex.I11TerminalData.Chunk091.w9_check, B699LowIndex.I11TerminalData.Chunk091.w10_check, Bool.and_self]

private theorem c0140_cover : coverCheck 6512 6522 c0140_intervals = true := by
  decide

private theorem c0140_sound : IntervalSound (6512, 6522) := by
  have hc : coverCheck 6512 6522 (witnessIntervals c0140_witnesses) = true := by
    rw [c0140_intervals_eq]
    exact c0140_cover
  exact interval_sound_of_witness_checks (witnesses := c0140_witnesses)
    (lo := 6512) (hi := 6522) c0140_checks hc

private def c0141_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk091.w11, B699LowIndex.I11TerminalData.Chunk091.w12]
private def c0141_intervals : List NatInterval := [(6525, 6531), (6532, 6538)]

private theorem c0141_intervals_eq :
    witnessIntervals c0141_witnesses = c0141_intervals := by
  rfl

private theorem c0141_checks : witnessesCheck c0141_witnesses = true := by
  simp only [witnessesCheck, c0141_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk091.w11_check, B699LowIndex.I11TerminalData.Chunk091.w12_check, Bool.and_self]

private theorem c0141_cover : coverCheck 6525 6538 c0141_intervals = true := by
  decide

private theorem c0141_sound : IntervalSound (6525, 6538) := by
  have hc : coverCheck 6525 6538 (witnessIntervals c0141_witnesses) = true := by
    rw [c0141_intervals_eq]
    exact c0141_cover
  exact interval_sound_of_witness_checks (witnesses := c0141_witnesses)
    (lo := 6525) (hi := 6538) c0141_checks hc

private def c0142_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk091.w13]
private def c0142_intervals : List NatInterval := [(6544, 6544)]

private theorem c0142_intervals_eq :
    witnessIntervals c0142_witnesses = c0142_intervals := by
  rfl

private theorem c0142_checks : witnessesCheck c0142_witnesses = true := by
  simp only [witnessesCheck, c0142_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk091.w13_check, Bool.and_self]

private theorem c0142_cover : coverCheck 6544 6544 c0142_intervals = true := by
  decide

private theorem c0142_sound : IntervalSound (6544, 6544) := by
  have hc : coverCheck 6544 6544 (witnessIntervals c0142_witnesses) = true := by
    rw [c0142_intervals_eq]
    exact c0142_cover
  exact interval_sound_of_witness_checks (witnesses := c0142_witnesses)
    (lo := 6544) (hi := 6544) c0142_checks hc

private def c0143_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk091.w14]
private def c0143_intervals : List NatInterval := [(6550, 6554)]

private theorem c0143_intervals_eq :
    witnessIntervals c0143_witnesses = c0143_intervals := by
  rfl

private theorem c0143_checks : witnessesCheck c0143_witnesses = true := by
  simp only [witnessesCheck, c0143_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk091.w14_check, Bool.and_self]

private theorem c0143_cover : coverCheck 6550 6554 c0143_intervals = true := by
  decide

private theorem c0143_sound : IntervalSound (6550, 6554) := by
  have hc : coverCheck 6550 6554 (witnessIntervals c0143_witnesses) = true := by
    rw [c0143_intervals_eq]
    exact c0143_cover
  exact interval_sound_of_witness_checks (witnesses := c0143_witnesses)
    (lo := 6550) (hi := 6554) c0143_checks hc

def intervals : List NatInterval := [(6304, 6310), (6320, 6331), (6345, 6346), (6350, 6360), (6370, 6382), (6384, 6385), (6400, 6410), (6419, 6436), (6450, 6460), (6468, 6478), (6480, 6490), (6500, 6510), (6512, 6522), (6525, 6538), (6544, 6544), (6550, 6554)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (6304, 6310)) (intervals := [(6320, 6331), (6345, 6346), (6350, 6360), (6370, 6382), (6384, 6385), (6400, 6410), (6419, 6436), (6450, 6460), (6468, 6478), (6480, 6490), (6500, 6510), (6512, 6522), (6525, 6538), (6544, 6544), (6550, 6554)]) c0128_sound (intervals_sound_cons (I := (6320, 6331)) (intervals := [(6345, 6346), (6350, 6360), (6370, 6382), (6384, 6385), (6400, 6410), (6419, 6436), (6450, 6460), (6468, 6478), (6480, 6490), (6500, 6510), (6512, 6522), (6525, 6538), (6544, 6544), (6550, 6554)]) c0129_sound (intervals_sound_cons (I := (6345, 6346)) (intervals := [(6350, 6360), (6370, 6382), (6384, 6385), (6400, 6410), (6419, 6436), (6450, 6460), (6468, 6478), (6480, 6490), (6500, 6510), (6512, 6522), (6525, 6538), (6544, 6544), (6550, 6554)]) c0130_sound (intervals_sound_cons (I := (6350, 6360)) (intervals := [(6370, 6382), (6384, 6385), (6400, 6410), (6419, 6436), (6450, 6460), (6468, 6478), (6480, 6490), (6500, 6510), (6512, 6522), (6525, 6538), (6544, 6544), (6550, 6554)]) c0131_sound (intervals_sound_cons (I := (6370, 6382)) (intervals := [(6384, 6385), (6400, 6410), (6419, 6436), (6450, 6460), (6468, 6478), (6480, 6490), (6500, 6510), (6512, 6522), (6525, 6538), (6544, 6544), (6550, 6554)]) c0132_sound (intervals_sound_cons (I := (6384, 6385)) (intervals := [(6400, 6410), (6419, 6436), (6450, 6460), (6468, 6478), (6480, 6490), (6500, 6510), (6512, 6522), (6525, 6538), (6544, 6544), (6550, 6554)]) c0133_sound (intervals_sound_cons (I := (6400, 6410)) (intervals := [(6419, 6436), (6450, 6460), (6468, 6478), (6480, 6490), (6500, 6510), (6512, 6522), (6525, 6538), (6544, 6544), (6550, 6554)]) c0134_sound (intervals_sound_cons (I := (6419, 6436)) (intervals := [(6450, 6460), (6468, 6478), (6480, 6490), (6500, 6510), (6512, 6522), (6525, 6538), (6544, 6544), (6550, 6554)]) c0135_sound (intervals_sound_cons (I := (6450, 6460)) (intervals := [(6468, 6478), (6480, 6490), (6500, 6510), (6512, 6522), (6525, 6538), (6544, 6544), (6550, 6554)]) c0136_sound (intervals_sound_cons (I := (6468, 6478)) (intervals := [(6480, 6490), (6500, 6510), (6512, 6522), (6525, 6538), (6544, 6544), (6550, 6554)]) c0137_sound (intervals_sound_cons (I := (6480, 6490)) (intervals := [(6500, 6510), (6512, 6522), (6525, 6538), (6544, 6544), (6550, 6554)]) c0138_sound (intervals_sound_cons (I := (6500, 6510)) (intervals := [(6512, 6522), (6525, 6538), (6544, 6544), (6550, 6554)]) c0139_sound (intervals_sound_cons (I := (6512, 6522)) (intervals := [(6525, 6538), (6544, 6544), (6550, 6554)]) c0140_sound (intervals_sound_cons (I := (6525, 6538)) (intervals := [(6544, 6544), (6550, 6554)]) c0141_sound (intervals_sound_cons (I := (6544, 6544)) (intervals := [(6550, 6554)]) c0142_sound (intervals_sound_cons (I := (6550, 6554)) (intervals := []) c0143_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G008
