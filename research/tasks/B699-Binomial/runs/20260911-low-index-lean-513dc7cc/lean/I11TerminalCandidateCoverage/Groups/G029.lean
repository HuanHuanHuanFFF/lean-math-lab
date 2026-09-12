import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk152
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk153
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk154
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk155

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G029
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0464_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk152.w14, B699LowIndex.I11TerminalData.Chunk152.w15, B699LowIndex.I11TerminalData.Chunk153.w0, B699LowIndex.I11TerminalData.Chunk153.w1, B699LowIndex.I11TerminalData.Chunk153.w2, B699LowIndex.I11TerminalData.Chunk153.w3, B699LowIndex.I11TerminalData.Chunk153.w4]
private def c0464_intervals : List NatInterval := [(12125, 12129), (12130, 12130), (12131, 12131), (12132, 12132), (12133, 12133), (12134, 12134), (12135, 12135)]

private theorem c0464_intervals_eq :
    witnessIntervals c0464_witnesses = c0464_intervals := by
  rfl

private theorem c0464_checks : witnessesCheck c0464_witnesses = true := by
  simp only [witnessesCheck, c0464_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk152.w14_check, B699LowIndex.I11TerminalData.Chunk152.w15_check, B699LowIndex.I11TerminalData.Chunk153.w0_check, B699LowIndex.I11TerminalData.Chunk153.w1_check, B699LowIndex.I11TerminalData.Chunk153.w2_check, B699LowIndex.I11TerminalData.Chunk153.w3_check, B699LowIndex.I11TerminalData.Chunk153.w4_check, Bool.and_self]

private theorem c0464_cover : coverCheck 12125 12135 c0464_intervals = true := by
  decide

private theorem c0464_sound : IntervalSound (12125, 12135) := by
  have hc : coverCheck 12125 12135 (witnessIntervals c0464_witnesses) = true := by
    rw [c0464_intervals_eq]
    exact c0464_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0464_witnesses)
    (lo := 12125) (hi := 12135) c0464_checks hc

private def c0465_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk153.w5, B699LowIndex.I11TerminalData.Chunk153.w6]
private def c0465_intervals : List NatInterval := [(12150, 12159), (12160, 12162)]

private theorem c0465_intervals_eq :
    witnessIntervals c0465_witnesses = c0465_intervals := by
  rfl

private theorem c0465_checks : witnessesCheck c0465_witnesses = true := by
  simp only [witnessesCheck, c0465_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk153.w5_check, B699LowIndex.I11TerminalData.Chunk153.w6_check, Bool.and_self]

private theorem c0465_cover : coverCheck 12150 12162 c0465_intervals = true := by
  decide

private theorem c0465_sound : IntervalSound (12150, 12162) := by
  have hc : coverCheck 12150 12162 (witnessIntervals c0465_witnesses) = true := by
    rw [c0465_intervals_eq]
    exact c0465_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0465_witnesses)
    (lo := 12150) (hi := 12162) c0465_checks hc

private def c0466_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk153.w7, B699LowIndex.I11TerminalData.Chunk153.w8, B699LowIndex.I11TerminalData.Chunk153.w9, B699LowIndex.I11TerminalData.Chunk153.w10, B699LowIndex.I11TerminalData.Chunk153.w11, B699LowIndex.I11TerminalData.Chunk153.w12, B699LowIndex.I11TerminalData.Chunk153.w13, B699LowIndex.I11TerminalData.Chunk153.w14, B699LowIndex.I11TerminalData.Chunk153.w15]
private def c0466_intervals : List NatInterval := [(12177, 12177), (12178, 12178), (12179, 12179), (12180, 12180), (12181, 12181), (12182, 12182), (12183, 12183), (12184, 12184), (12185, 12185)]

private theorem c0466_intervals_eq :
    witnessIntervals c0466_witnesses = c0466_intervals := by
  rfl

private theorem c0466_checks : witnessesCheck c0466_witnesses = true := by
  simp only [witnessesCheck, c0466_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk153.w7_check, B699LowIndex.I11TerminalData.Chunk153.w8_check, B699LowIndex.I11TerminalData.Chunk153.w9_check, B699LowIndex.I11TerminalData.Chunk153.w10_check, B699LowIndex.I11TerminalData.Chunk153.w11_check, B699LowIndex.I11TerminalData.Chunk153.w12_check, B699LowIndex.I11TerminalData.Chunk153.w13_check, B699LowIndex.I11TerminalData.Chunk153.w14_check, B699LowIndex.I11TerminalData.Chunk153.w15_check, Bool.and_self]

private theorem c0466_cover : coverCheck 12177 12185 c0466_intervals = true := by
  decide

private theorem c0466_sound : IntervalSound (12177, 12185) := by
  have hc : coverCheck 12177 12185 (witnessIntervals c0466_witnesses) = true := by
    rw [c0466_intervals_eq]
    exact c0466_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0466_witnesses)
    (lo := 12177) (hi := 12185) c0466_checks hc

private def c0467_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk154.w0, B699LowIndex.I11TerminalData.Chunk154.w1]
private def c0467_intervals : List NatInterval := [(12200, 12207), (12208, 12211)]

private theorem c0467_intervals_eq :
    witnessIntervals c0467_witnesses = c0467_intervals := by
  rfl

private theorem c0467_checks : witnessesCheck c0467_witnesses = true := by
  simp only [witnessesCheck, c0467_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk154.w0_check, B699LowIndex.I11TerminalData.Chunk154.w1_check, Bool.and_self]

private theorem c0467_cover : coverCheck 12200 12211 c0467_intervals = true := by
  decide

private theorem c0467_sound : IntervalSound (12200, 12211) := by
  have hc : coverCheck 12200 12211 (witnessIntervals c0467_witnesses) = true := by
    rw [c0467_intervals_eq]
    exact c0467_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0467_witnesses)
    (lo := 12200) (hi := 12211) c0467_checks hc

private def c0468_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk154.w2, B699LowIndex.I11TerminalData.Chunk154.w3, B699LowIndex.I11TerminalData.Chunk154.w4]
private def c0468_intervals : List NatInterval := [(12225, 12225), (12226, 12226), (12227, 12235)]

private theorem c0468_intervals_eq :
    witnessIntervals c0468_witnesses = c0468_intervals := by
  rfl

private theorem c0468_checks : witnessesCheck c0468_witnesses = true := by
  simp only [witnessesCheck, c0468_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk154.w2_check, B699LowIndex.I11TerminalData.Chunk154.w3_check, B699LowIndex.I11TerminalData.Chunk154.w4_check, Bool.and_self]

private theorem c0468_cover : coverCheck 12225 12235 c0468_intervals = true := by
  decide

private theorem c0468_sound : IntervalSound (12225, 12235) := by
  have hc : coverCheck 12225 12235 (witnessIntervals c0468_witnesses) = true := by
    rw [c0468_intervals_eq]
    exact c0468_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0468_witnesses)
    (lo := 12225) (hi := 12235) c0468_checks hc

private def c0469_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk154.w5, B699LowIndex.I11TerminalData.Chunk154.w6, B699LowIndex.I11TerminalData.Chunk154.w7, B699LowIndex.I11TerminalData.Chunk154.w8]
private def c0469_intervals : List NatInterval := [(12250, 12251), (12252, 12261), (12262, 12263), (12264, 12266)]

private theorem c0469_intervals_eq :
    witnessIntervals c0469_witnesses = c0469_intervals := by
  rfl

private theorem c0469_checks : witnessesCheck c0469_witnesses = true := by
  simp only [witnessesCheck, c0469_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk154.w5_check, B699LowIndex.I11TerminalData.Chunk154.w6_check, B699LowIndex.I11TerminalData.Chunk154.w7_check, B699LowIndex.I11TerminalData.Chunk154.w8_check, Bool.and_self]

private theorem c0469_cover : coverCheck 12250 12266 c0469_intervals = true := by
  decide

private theorem c0469_sound : IntervalSound (12250, 12266) := by
  have hc : coverCheck 12250 12266 (witnessIntervals c0469_witnesses) = true := by
    rw [c0469_intervals_eq]
    exact c0469_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0469_witnesses)
    (lo := 12250) (hi := 12266) c0469_checks hc

private def c0470_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk154.w9]
private def c0470_intervals : List NatInterval := [(12285, 12285)]

private theorem c0470_intervals_eq :
    witnessIntervals c0470_witnesses = c0470_intervals := by
  rfl

private theorem c0470_checks : witnessesCheck c0470_witnesses = true := by
  simp only [witnessesCheck, c0470_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk154.w9_check, Bool.and_self]

private theorem c0470_cover : coverCheck 12285 12285 c0470_intervals = true := by
  decide

private theorem c0470_sound : IntervalSound (12285, 12285) := by
  have hc : coverCheck 12285 12285 (witnessIntervals c0470_witnesses) = true := by
    rw [c0470_intervals_eq]
    exact c0470_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0470_witnesses)
    (lo := 12285) (hi := 12285) c0470_checks hc

private def c0471_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk154.w10, B699LowIndex.I11TerminalData.Chunk154.w11]
private def c0471_intervals : List NatInterval := [(12288, 12291), (12292, 12295)]

private theorem c0471_intervals_eq :
    witnessIntervals c0471_witnesses = c0471_intervals := by
  rfl

private theorem c0471_checks : witnessesCheck c0471_witnesses = true := by
  simp only [witnessesCheck, c0471_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk154.w10_check, B699LowIndex.I11TerminalData.Chunk154.w11_check, Bool.and_self]

private theorem c0471_cover : coverCheck 12288 12295 c0471_intervals = true := by
  decide

private theorem c0471_sound : IntervalSound (12288, 12295) := by
  have hc : coverCheck 12288 12295 (witnessIntervals c0471_witnesses) = true := by
    rw [c0471_intervals_eq]
    exact c0471_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0471_witnesses)
    (lo := 12288) (hi := 12295) c0471_checks hc

private def c0472_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk154.w12, B699LowIndex.I11TerminalData.Chunk154.w13]
private def c0472_intervals : List NatInterval := [(12300, 12300), (12301, 12309)]

private theorem c0472_intervals_eq :
    witnessIntervals c0472_witnesses = c0472_intervals := by
  rfl

private theorem c0472_checks : witnessesCheck c0472_witnesses = true := by
  simp only [witnessesCheck, c0472_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk154.w12_check, B699LowIndex.I11TerminalData.Chunk154.w13_check, Bool.and_self]

private theorem c0472_cover : coverCheck 12300 12309 c0472_intervals = true := by
  decide

private theorem c0472_sound : IntervalSound (12300, 12309) := by
  have hc : coverCheck 12300 12309 (witnessIntervals c0472_witnesses) = true := by
    rw [c0472_intervals_eq]
    exact c0472_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0472_witnesses)
    (lo := 12300) (hi := 12309) c0472_checks hc

private def c0473_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk154.w14, B699LowIndex.I11TerminalData.Chunk154.w15, B699LowIndex.I11TerminalData.Chunk155.w0]
private def c0473_intervals : List NatInterval := [(12320, 12320), (12321, 12321), (12322, 12322)]

private theorem c0473_intervals_eq :
    witnessIntervals c0473_witnesses = c0473_intervals := by
  rfl

private theorem c0473_checks : witnessesCheck c0473_witnesses = true := by
  simp only [witnessesCheck, c0473_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk154.w14_check, B699LowIndex.I11TerminalData.Chunk154.w15_check, B699LowIndex.I11TerminalData.Chunk155.w0_check, Bool.and_self]

private theorem c0473_cover : coverCheck 12320 12322 c0473_intervals = true := by
  decide

private theorem c0473_sound : IntervalSound (12320, 12322) := by
  have hc : coverCheck 12320 12322 (witnessIntervals c0473_witnesses) = true := by
    rw [c0473_intervals_eq]
    exact c0473_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0473_witnesses)
    (lo := 12320) (hi := 12322) c0473_checks hc

private def c0474_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk155.w1]
private def c0474_intervals : List NatInterval := [(12325, 12330)]

private theorem c0474_intervals_eq :
    witnessIntervals c0474_witnesses = c0474_intervals := by
  rfl

private theorem c0474_checks : witnessesCheck c0474_witnesses = true := by
  simp only [witnessesCheck, c0474_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk155.w1_check, Bool.and_self]

private theorem c0474_cover : coverCheck 12325 12330 c0474_intervals = true := by
  decide

private theorem c0474_sound : IntervalSound (12325, 12330) := by
  have hc : coverCheck 12325 12330 (witnessIntervals c0474_witnesses) = true := by
    rw [c0474_intervals_eq]
    exact c0474_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0474_witnesses)
    (lo := 12325) (hi := 12330) c0474_checks hc

private def c0475_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk155.w2, B699LowIndex.I11TerminalData.Chunk155.w3, B699LowIndex.I11TerminalData.Chunk155.w4, B699LowIndex.I11TerminalData.Chunk155.w5]
private def c0475_intervals : List NatInterval := [(12348, 12357), (12358, 12358), (12359, 12359), (12360, 12360)]

private theorem c0475_intervals_eq :
    witnessIntervals c0475_witnesses = c0475_intervals := by
  rfl

private theorem c0475_checks : witnessesCheck c0475_witnesses = true := by
  simp only [witnessesCheck, c0475_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk155.w2_check, B699LowIndex.I11TerminalData.Chunk155.w3_check, B699LowIndex.I11TerminalData.Chunk155.w4_check, B699LowIndex.I11TerminalData.Chunk155.w5_check, Bool.and_self]

private theorem c0475_cover : coverCheck 12348 12360 c0475_intervals = true := by
  decide

private theorem c0475_sound : IntervalSound (12348, 12360) := by
  have hc : coverCheck 12348 12360 (witnessIntervals c0475_witnesses) = true := by
    rw [c0475_intervals_eq]
    exact c0475_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0475_witnesses)
    (lo := 12348) (hi := 12360) c0475_checks hc

private def c0476_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk155.w6]
private def c0476_intervals : List NatInterval := [(12375, 12376)]

private theorem c0476_intervals_eq :
    witnessIntervals c0476_witnesses = c0476_intervals := by
  rfl

private theorem c0476_checks : witnessesCheck c0476_witnesses = true := by
  simp only [witnessesCheck, c0476_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk155.w6_check, Bool.and_self]

private theorem c0476_cover : coverCheck 12375 12376 c0476_intervals = true := by
  decide

private theorem c0476_sound : IntervalSound (12375, 12376) := by
  have hc : coverCheck 12375 12376 (witnessIntervals c0476_witnesses) = true := by
    rw [c0476_intervals_eq]
    exact c0476_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0476_witnesses)
    (lo := 12375) (hi := 12376) c0476_checks hc

private def c0477_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk155.w7]
private def c0477_intervals : List NatInterval := [(12384, 12385)]

private theorem c0477_intervals_eq :
    witnessIntervals c0477_witnesses = c0477_intervals := by
  rfl

private theorem c0477_checks : witnessesCheck c0477_witnesses = true := by
  simp only [witnessesCheck, c0477_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk155.w7_check, Bool.and_self]

private theorem c0477_cover : coverCheck 12384 12385 c0477_intervals = true := by
  decide

private theorem c0477_sound : IntervalSound (12384, 12385) := by
  have hc : coverCheck 12384 12385 (witnessIntervals c0477_witnesses) = true := by
    rw [c0477_intervals_eq]
    exact c0477_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0477_witnesses)
    (lo := 12384) (hi := 12385) c0477_checks hc

private def c0478_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk155.w8]
private def c0478_intervals : List NatInterval := [(12393, 12394)]

private theorem c0478_intervals_eq :
    witnessIntervals c0478_witnesses = c0478_intervals := by
  rfl

private theorem c0478_checks : witnessesCheck c0478_witnesses = true := by
  simp only [witnessesCheck, c0478_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk155.w8_check, Bool.and_self]

private theorem c0478_cover : coverCheck 12393 12394 c0478_intervals = true := by
  decide

private theorem c0478_sound : IntervalSound (12393, 12394) := by
  have hc : coverCheck 12393 12394 (witnessIntervals c0478_witnesses) = true := by
    rw [c0478_intervals_eq]
    exact c0478_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0478_witnesses)
    (lo := 12393) (hi := 12394) c0478_checks hc

private def c0479_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk155.w9, B699LowIndex.I11TerminalData.Chunk155.w10]
private def c0479_intervals : List NatInterval := [(12397, 12401), (12402, 12407)]

private theorem c0479_intervals_eq :
    witnessIntervals c0479_witnesses = c0479_intervals := by
  rfl

private theorem c0479_checks : witnessesCheck c0479_witnesses = true := by
  simp only [witnessesCheck, c0479_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk155.w9_check, B699LowIndex.I11TerminalData.Chunk155.w10_check, Bool.and_self]

private theorem c0479_cover : coverCheck 12397 12407 c0479_intervals = true := by
  decide

private theorem c0479_sound : IntervalSound (12397, 12407) := by
  have hc : coverCheck 12397 12407 (witnessIntervals c0479_witnesses) = true := by
    rw [c0479_intervals_eq]
    exact c0479_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0479_witnesses)
    (lo := 12397) (hi := 12407) c0479_checks hc

def intervals : List NatInterval := [(12125, 12135), (12150, 12162), (12177, 12185), (12200, 12211), (12225, 12235), (12250, 12266), (12285, 12285), (12288, 12295), (12300, 12309), (12320, 12322), (12325, 12330), (12348, 12360), (12375, 12376), (12384, 12385), (12393, 12394), (12397, 12407)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (12125, 12135)) (intervals := [(12150, 12162), (12177, 12185), (12200, 12211), (12225, 12235), (12250, 12266), (12285, 12285), (12288, 12295), (12300, 12309), (12320, 12322), (12325, 12330), (12348, 12360), (12375, 12376), (12384, 12385), (12393, 12394), (12397, 12407)]) c0464_sound (intervals_sound_cons (I := (12150, 12162)) (intervals := [(12177, 12185), (12200, 12211), (12225, 12235), (12250, 12266), (12285, 12285), (12288, 12295), (12300, 12309), (12320, 12322), (12325, 12330), (12348, 12360), (12375, 12376), (12384, 12385), (12393, 12394), (12397, 12407)]) c0465_sound (intervals_sound_cons (I := (12177, 12185)) (intervals := [(12200, 12211), (12225, 12235), (12250, 12266), (12285, 12285), (12288, 12295), (12300, 12309), (12320, 12322), (12325, 12330), (12348, 12360), (12375, 12376), (12384, 12385), (12393, 12394), (12397, 12407)]) c0466_sound (intervals_sound_cons (I := (12200, 12211)) (intervals := [(12225, 12235), (12250, 12266), (12285, 12285), (12288, 12295), (12300, 12309), (12320, 12322), (12325, 12330), (12348, 12360), (12375, 12376), (12384, 12385), (12393, 12394), (12397, 12407)]) c0467_sound (intervals_sound_cons (I := (12225, 12235)) (intervals := [(12250, 12266), (12285, 12285), (12288, 12295), (12300, 12309), (12320, 12322), (12325, 12330), (12348, 12360), (12375, 12376), (12384, 12385), (12393, 12394), (12397, 12407)]) c0468_sound (intervals_sound_cons (I := (12250, 12266)) (intervals := [(12285, 12285), (12288, 12295), (12300, 12309), (12320, 12322), (12325, 12330), (12348, 12360), (12375, 12376), (12384, 12385), (12393, 12394), (12397, 12407)]) c0469_sound (intervals_sound_cons (I := (12285, 12285)) (intervals := [(12288, 12295), (12300, 12309), (12320, 12322), (12325, 12330), (12348, 12360), (12375, 12376), (12384, 12385), (12393, 12394), (12397, 12407)]) c0470_sound (intervals_sound_cons (I := (12288, 12295)) (intervals := [(12300, 12309), (12320, 12322), (12325, 12330), (12348, 12360), (12375, 12376), (12384, 12385), (12393, 12394), (12397, 12407)]) c0471_sound (intervals_sound_cons (I := (12300, 12309)) (intervals := [(12320, 12322), (12325, 12330), (12348, 12360), (12375, 12376), (12384, 12385), (12393, 12394), (12397, 12407)]) c0472_sound (intervals_sound_cons (I := (12320, 12322)) (intervals := [(12325, 12330), (12348, 12360), (12375, 12376), (12384, 12385), (12393, 12394), (12397, 12407)]) c0473_sound (intervals_sound_cons (I := (12325, 12330)) (intervals := [(12348, 12360), (12375, 12376), (12384, 12385), (12393, 12394), (12397, 12407)]) c0474_sound (intervals_sound_cons (I := (12348, 12360)) (intervals := [(12375, 12376), (12384, 12385), (12393, 12394), (12397, 12407)]) c0475_sound (intervals_sound_cons (I := (12375, 12376)) (intervals := [(12384, 12385), (12393, 12394), (12397, 12407)]) c0476_sound (intervals_sound_cons (I := (12384, 12385)) (intervals := [(12393, 12394), (12397, 12407)]) c0477_sound (intervals_sound_cons (I := (12393, 12394)) (intervals := [(12397, 12407)]) c0478_sound (intervals_sound_cons (I := (12397, 12407)) (intervals := []) c0479_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G029
