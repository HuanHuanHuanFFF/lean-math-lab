import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk213
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk214

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G051
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0816_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk213.w0]
private def c0816_intervals : List NatInterval := [(35883, 35885)]

private theorem c0816_intervals_eq :
    witnessIntervals c0816_witnesses = c0816_intervals := by
  rfl

private theorem c0816_checks : witnessesCheck c0816_witnesses = true := by
  simp only [witnessesCheck, c0816_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk213.w0_check, Bool.and_self]

private theorem c0816_cover : coverCheck 35883 35885 c0816_intervals = true := by
  decide

private theorem c0816_sound : IntervalSound (35883, 35885) := by
  have hc : coverCheck 35883 35885 (witnessIntervals c0816_witnesses) = true := by
    rw [c0816_intervals_eq]
    exact c0816_cover
  exact interval_sound_of_witness_checks (witnesses := c0816_witnesses)
    (lo := 35883) (hi := 35885) c0816_checks hc

private def c0817_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk213.w1, B699LowIndex.I11TerminalData.Chunk213.w2]
private def c0817_intervals : List NatInterval := [(35968, 35973), (35974, 35974)]

private theorem c0817_intervals_eq :
    witnessIntervals c0817_witnesses = c0817_intervals := by
  rfl

private theorem c0817_checks : witnessesCheck c0817_witnesses = true := by
  simp only [witnessesCheck, c0817_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk213.w1_check, B699LowIndex.I11TerminalData.Chunk213.w2_check, Bool.and_self]

private theorem c0817_cover : coverCheck 35968 35974 c0817_intervals = true := by
  decide

private theorem c0817_sound : IntervalSound (35968, 35974) := by
  have hc : coverCheck 35968 35974 (witnessIntervals c0817_witnesses) = true := by
    rw [c0817_intervals_eq]
    exact c0817_cover
  exact interval_sound_of_witness_checks (witnesses := c0817_witnesses)
    (lo := 35968) (hi := 35974) c0817_checks hc

private def c0818_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk213.w3, B699LowIndex.I11TerminalData.Chunk213.w4, B699LowIndex.I11TerminalData.Chunk213.w5, B699LowIndex.I11TerminalData.Chunk213.w6, B699LowIndex.I11TerminalData.Chunk213.w7, B699LowIndex.I11TerminalData.Chunk213.w8]
private def c0818_intervals : List NatInterval := [(36126, 36126), (36127, 36127), (36128, 36128), (36129, 36129), (36130, 36130), (36131, 36135)]

private theorem c0818_intervals_eq :
    witnessIntervals c0818_witnesses = c0818_intervals := by
  rfl

private theorem c0818_checks : witnessesCheck c0818_witnesses = true := by
  simp only [witnessesCheck, c0818_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk213.w3_check, B699LowIndex.I11TerminalData.Chunk213.w4_check, B699LowIndex.I11TerminalData.Chunk213.w5_check, B699LowIndex.I11TerminalData.Chunk213.w6_check, B699LowIndex.I11TerminalData.Chunk213.w7_check, B699LowIndex.I11TerminalData.Chunk213.w8_check, Bool.and_self]

private theorem c0818_cover : coverCheck 36126 36135 c0818_intervals = true := by
  decide

private theorem c0818_sound : IntervalSound (36126, 36135) := by
  have hc : coverCheck 36126 36135 (witnessIntervals c0818_witnesses) = true := by
    rw [c0818_intervals_eq]
    exact c0818_cover
  exact interval_sound_of_witness_checks (witnesses := c0818_witnesses)
    (lo := 36126) (hi := 36135) c0818_checks hc

private def c0819_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk213.w9]
private def c0819_intervals : List NatInterval := [(36358, 36362)]

private theorem c0819_intervals_eq :
    witnessIntervals c0819_witnesses = c0819_intervals := by
  rfl

private theorem c0819_checks : witnessesCheck c0819_witnesses = true := by
  simp only [witnessesCheck, c0819_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk213.w9_check, Bool.and_self]

private theorem c0819_cover : coverCheck 36358 36362 c0819_intervals = true := by
  decide

private theorem c0819_sound : IntervalSound (36358, 36362) := by
  have hc : coverCheck 36358 36362 (witnessIntervals c0819_witnesses) = true := by
    rw [c0819_intervals_eq]
    exact c0819_cover
  exact interval_sound_of_witness_checks (witnesses := c0819_witnesses)
    (lo := 36358) (hi := 36362) c0819_checks hc

private def c0820_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk213.w10]
private def c0820_intervals : List NatInterval := [(36375, 36379)]

private theorem c0820_intervals_eq :
    witnessIntervals c0820_witnesses = c0820_intervals := by
  rfl

private theorem c0820_checks : witnessesCheck c0820_witnesses = true := by
  simp only [witnessesCheck, c0820_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk213.w10_check, Bool.and_self]

private theorem c0820_cover : coverCheck 36375 36379 c0820_intervals = true := by
  decide

private theorem c0820_sound : IntervalSound (36375, 36379) := by
  have hc : coverCheck 36375 36379 (witnessIntervals c0820_witnesses) = true := by
    rw [c0820_intervals_eq]
    exact c0820_cover
  exact interval_sound_of_witness_checks (witnesses := c0820_witnesses)
    (lo := 36375) (hi := 36379) c0820_checks hc

private def c0821_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk213.w11, B699LowIndex.I11TerminalData.Chunk213.w12]
private def c0821_intervals : List NatInterval := [(36612, 36617), (36618, 36618)]

private theorem c0821_intervals_eq :
    witnessIntervals c0821_witnesses = c0821_intervals := by
  rfl

private theorem c0821_checks : witnessesCheck c0821_witnesses = true := by
  simp only [witnessesCheck, c0821_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk213.w11_check, B699LowIndex.I11TerminalData.Chunk213.w12_check, Bool.and_self]

private theorem c0821_cover : coverCheck 36612 36618 c0821_intervals = true := by
  decide

private theorem c0821_sound : IntervalSound (36612, 36618) := by
  have hc : coverCheck 36612 36618 (witnessIntervals c0821_witnesses) = true := by
    rw [c0821_intervals_eq]
    exact c0821_cover
  exact interval_sound_of_witness_checks (witnesses := c0821_witnesses)
    (lo := 36612) (hi := 36618) c0821_checks hc

private def c0822_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk213.w13]
private def c0822_intervals : List NatInterval := [(36701, 36703)]

private theorem c0822_intervals_eq :
    witnessIntervals c0822_witnesses = c0822_intervals := by
  rfl

private theorem c0822_checks : witnessesCheck c0822_witnesses = true := by
  simp only [witnessesCheck, c0822_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk213.w13_check, Bool.and_self]

private theorem c0822_cover : coverCheck 36701 36703 c0822_intervals = true := by
  decide

private theorem c0822_sound : IntervalSound (36701, 36703) := by
  have hc : coverCheck 36701 36703 (witnessIntervals c0822_witnesses) = true := by
    rw [c0822_intervals_eq]
    exact c0822_cover
  exact interval_sound_of_witness_checks (witnesses := c0822_witnesses)
    (lo := 36701) (hi := 36703) c0822_checks hc

private def c0823_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk213.w14]
private def c0823_intervals : List NatInterval := [(36864, 36865)]

private theorem c0823_intervals_eq :
    witnessIntervals c0823_witnesses = c0823_intervals := by
  rfl

private theorem c0823_checks : witnessesCheck c0823_witnesses = true := by
  simp only [witnessesCheck, c0823_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk213.w14_check, Bool.and_self]

private theorem c0823_cover : coverCheck 36864 36865 c0823_intervals = true := by
  decide

private theorem c0823_sound : IntervalSound (36864, 36865) := by
  have hc : coverCheck 36864 36865 (witnessIntervals c0823_witnesses) = true := by
    rw [c0823_intervals_eq]
    exact c0823_cover
  exact interval_sound_of_witness_checks (witnesses := c0823_witnesses)
    (lo := 36864) (hi := 36865) c0823_checks hc

private def c0824_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk213.w15]
private def c0824_intervals : List NatInterval := [(37000, 37002)]

private theorem c0824_intervals_eq :
    witnessIntervals c0824_witnesses = c0824_intervals := by
  rfl

private theorem c0824_checks : witnessesCheck c0824_witnesses = true := by
  simp only [witnessesCheck, c0824_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk213.w15_check, Bool.and_self]

private theorem c0824_cover : coverCheck 37000 37002 c0824_intervals = true := by
  decide

private theorem c0824_sound : IntervalSound (37000, 37002) := by
  have hc : coverCheck 37000 37002 (witnessIntervals c0824_witnesses) = true := by
    rw [c0824_intervals_eq]
    exact c0824_cover
  exact interval_sound_of_witness_checks (witnesses := c0824_witnesses)
    (lo := 37000) (hi := 37002) c0824_checks hc

private def c0825_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk214.w0]
private def c0825_intervals : List NatInterval := [(37125, 37130)]

private theorem c0825_intervals_eq :
    witnessIntervals c0825_witnesses = c0825_intervals := by
  rfl

private theorem c0825_checks : witnessesCheck c0825_witnesses = true := by
  simp only [witnessesCheck, c0825_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk214.w0_check, Bool.and_self]

private theorem c0825_cover : coverCheck 37125 37130 c0825_intervals = true := by
  decide

private theorem c0825_sound : IntervalSound (37125, 37130) := by
  have hc : coverCheck 37125 37130 (witnessIntervals c0825_witnesses) = true := by
    rw [c0825_intervals_eq]
    exact c0825_cover
  exact interval_sound_of_witness_checks (witnesses := c0825_witnesses)
    (lo := 37125) (hi := 37130) c0825_checks hc

private def c0826_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk214.w1, B699LowIndex.I11TerminalData.Chunk214.w2]
private def c0826_intervals : List NatInterval := [(37250, 37253), (37254, 37258)]

private theorem c0826_intervals_eq :
    witnessIntervals c0826_witnesses = c0826_intervals := by
  rfl

private theorem c0826_checks : witnessesCheck c0826_witnesses = true := by
  simp only [witnessesCheck, c0826_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk214.w1_check, B699LowIndex.I11TerminalData.Chunk214.w2_check, Bool.and_self]

private theorem c0826_cover : coverCheck 37250 37258 c0826_intervals = true := by
  decide

private theorem c0826_sound : IntervalSound (37250, 37258) := by
  have hc : coverCheck 37250 37258 (witnessIntervals c0826_witnesses) = true := by
    rw [c0826_intervals_eq]
    exact c0826_cover
  exact interval_sound_of_witness_checks (witnesses := c0826_witnesses)
    (lo := 37250) (hi := 37258) c0826_checks hc

private def c0827_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk214.w3]
private def c0827_intervals : List NatInterval := [(37260, 37260)]

private theorem c0827_intervals_eq :
    witnessIntervals c0827_witnesses = c0827_intervals := by
  rfl

private theorem c0827_checks : witnessesCheck c0827_witnesses = true := by
  simp only [witnessesCheck, c0827_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk214.w3_check, Bool.and_self]

private theorem c0827_cover : coverCheck 37260 37260 c0827_intervals = true := by
  decide

private theorem c0827_sound : IntervalSound (37260, 37260) := by
  have hc : coverCheck 37260 37260 (witnessIntervals c0827_witnesses) = true := by
    rw [c0827_intervals_eq]
    exact c0827_cover
  exact interval_sound_of_witness_checks (witnesses := c0827_witnesses)
    (lo := 37260) (hi := 37260) c0827_checks hc

private def c0828_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk214.w4, B699LowIndex.I11TerminalData.Chunk214.w5]
private def c0828_intervals : List NatInterval := [(37376, 37379), (37380, 37385)]

private theorem c0828_intervals_eq :
    witnessIntervals c0828_witnesses = c0828_intervals := by
  rfl

private theorem c0828_checks : witnessesCheck c0828_witnesses = true := by
  simp only [witnessesCheck, c0828_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk214.w4_check, B699LowIndex.I11TerminalData.Chunk214.w5_check, Bool.and_self]

private theorem c0828_cover : coverCheck 37376 37385 c0828_intervals = true := by
  decide

private theorem c0828_sound : IntervalSound (37376, 37385) := by
  have hc : coverCheck 37376 37385 (witnessIntervals c0828_witnesses) = true := by
    rw [c0828_intervals_eq]
    exact c0828_cover
  exact interval_sound_of_witness_checks (witnesses := c0828_witnesses)
    (lo := 37376) (hi := 37385) c0828_checks hc

private def c0829_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk214.w6, B699LowIndex.I11TerminalData.Chunk214.w7]
private def c0829_intervals : List NatInterval := [(37503, 37511), (37512, 37513)]

private theorem c0829_intervals_eq :
    witnessIntervals c0829_witnesses = c0829_intervals := by
  rfl

private theorem c0829_checks : witnessesCheck c0829_witnesses = true := by
  simp only [witnessesCheck, c0829_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk214.w6_check, B699LowIndex.I11TerminalData.Chunk214.w7_check, Bool.and_self]

private theorem c0829_cover : coverCheck 37503 37513 c0829_intervals = true := by
  decide

private theorem c0829_sound : IntervalSound (37503, 37513) := by
  have hc : coverCheck 37503 37513 (witnessIntervals c0829_witnesses) = true := by
    rw [c0829_intervals_eq]
    exact c0829_cover
  exact interval_sound_of_witness_checks (witnesses := c0829_witnesses)
    (lo := 37503) (hi := 37513) c0829_checks hc

private def c0830_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk214.w8, B699LowIndex.I11TerminalData.Chunk214.w9]
private def c0830_intervals : List NatInterval := [(37632, 37632), (37633, 37635)]

private theorem c0830_intervals_eq :
    witnessIntervals c0830_witnesses = c0830_intervals := by
  rfl

private theorem c0830_checks : witnessesCheck c0830_witnesses = true := by
  simp only [witnessesCheck, c0830_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk214.w8_check, B699LowIndex.I11TerminalData.Chunk214.w9_check, Bool.and_self]

private theorem c0830_cover : coverCheck 37632 37635 c0830_intervals = true := by
  decide

private theorem c0830_sound : IntervalSound (37632, 37635) := by
  have hc : coverCheck 37632 37635 (witnessIntervals c0830_witnesses) = true := by
    rw [c0830_intervals_eq]
    exact c0830_cover
  exact interval_sound_of_witness_checks (witnesses := c0830_witnesses)
    (lo := 37632) (hi := 37635) c0830_checks hc

private def c0831_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk214.w10]
private def c0831_intervals : List NatInterval := [(37750, 37756)]

private theorem c0831_intervals_eq :
    witnessIntervals c0831_witnesses = c0831_intervals := by
  rfl

private theorem c0831_checks : witnessesCheck c0831_witnesses = true := by
  simp only [witnessesCheck, c0831_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk214.w10_check, Bool.and_self]

private theorem c0831_cover : coverCheck 37750 37756 c0831_intervals = true := by
  decide

private theorem c0831_sound : IntervalSound (37750, 37756) := by
  have hc : coverCheck 37750 37756 (witnessIntervals c0831_witnesses) = true := by
    rw [c0831_intervals_eq]
    exact c0831_cover
  exact interval_sound_of_witness_checks (witnesses := c0831_witnesses)
    (lo := 37750) (hi := 37756) c0831_checks hc

def intervals : List NatInterval := [(35883, 35885), (35968, 35974), (36126, 36135), (36358, 36362), (36375, 36379), (36612, 36618), (36701, 36703), (36864, 36865), (37000, 37002), (37125, 37130), (37250, 37258), (37260, 37260), (37376, 37385), (37503, 37513), (37632, 37635), (37750, 37756)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (35883, 35885)) (intervals := [(35968, 35974), (36126, 36135), (36358, 36362), (36375, 36379), (36612, 36618), (36701, 36703), (36864, 36865), (37000, 37002), (37125, 37130), (37250, 37258), (37260, 37260), (37376, 37385), (37503, 37513), (37632, 37635), (37750, 37756)]) c0816_sound (intervals_sound_cons (I := (35968, 35974)) (intervals := [(36126, 36135), (36358, 36362), (36375, 36379), (36612, 36618), (36701, 36703), (36864, 36865), (37000, 37002), (37125, 37130), (37250, 37258), (37260, 37260), (37376, 37385), (37503, 37513), (37632, 37635), (37750, 37756)]) c0817_sound (intervals_sound_cons (I := (36126, 36135)) (intervals := [(36358, 36362), (36375, 36379), (36612, 36618), (36701, 36703), (36864, 36865), (37000, 37002), (37125, 37130), (37250, 37258), (37260, 37260), (37376, 37385), (37503, 37513), (37632, 37635), (37750, 37756)]) c0818_sound (intervals_sound_cons (I := (36358, 36362)) (intervals := [(36375, 36379), (36612, 36618), (36701, 36703), (36864, 36865), (37000, 37002), (37125, 37130), (37250, 37258), (37260, 37260), (37376, 37385), (37503, 37513), (37632, 37635), (37750, 37756)]) c0819_sound (intervals_sound_cons (I := (36375, 36379)) (intervals := [(36612, 36618), (36701, 36703), (36864, 36865), (37000, 37002), (37125, 37130), (37250, 37258), (37260, 37260), (37376, 37385), (37503, 37513), (37632, 37635), (37750, 37756)]) c0820_sound (intervals_sound_cons (I := (36612, 36618)) (intervals := [(36701, 36703), (36864, 36865), (37000, 37002), (37125, 37130), (37250, 37258), (37260, 37260), (37376, 37385), (37503, 37513), (37632, 37635), (37750, 37756)]) c0821_sound (intervals_sound_cons (I := (36701, 36703)) (intervals := [(36864, 36865), (37000, 37002), (37125, 37130), (37250, 37258), (37260, 37260), (37376, 37385), (37503, 37513), (37632, 37635), (37750, 37756)]) c0822_sound (intervals_sound_cons (I := (36864, 36865)) (intervals := [(37000, 37002), (37125, 37130), (37250, 37258), (37260, 37260), (37376, 37385), (37503, 37513), (37632, 37635), (37750, 37756)]) c0823_sound (intervals_sound_cons (I := (37000, 37002)) (intervals := [(37125, 37130), (37250, 37258), (37260, 37260), (37376, 37385), (37503, 37513), (37632, 37635), (37750, 37756)]) c0824_sound (intervals_sound_cons (I := (37125, 37130)) (intervals := [(37250, 37258), (37260, 37260), (37376, 37385), (37503, 37513), (37632, 37635), (37750, 37756)]) c0825_sound (intervals_sound_cons (I := (37250, 37258)) (intervals := [(37260, 37260), (37376, 37385), (37503, 37513), (37632, 37635), (37750, 37756)]) c0826_sound (intervals_sound_cons (I := (37260, 37260)) (intervals := [(37376, 37385), (37503, 37513), (37632, 37635), (37750, 37756)]) c0827_sound (intervals_sound_cons (I := (37376, 37385)) (intervals := [(37503, 37513), (37632, 37635), (37750, 37756)]) c0828_sound (intervals_sound_cons (I := (37503, 37513)) (intervals := [(37632, 37635), (37750, 37756)]) c0829_sound (intervals_sound_cons (I := (37632, 37635)) (intervals := [(37750, 37756)]) c0830_sound (intervals_sound_cons (I := (37750, 37756)) (intervals := []) c0831_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G051
