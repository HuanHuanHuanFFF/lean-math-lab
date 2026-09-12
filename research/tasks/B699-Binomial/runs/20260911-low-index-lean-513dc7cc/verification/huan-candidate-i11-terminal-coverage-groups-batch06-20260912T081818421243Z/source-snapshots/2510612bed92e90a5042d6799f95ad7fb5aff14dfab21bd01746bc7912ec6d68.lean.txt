import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk219
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk220
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk221
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk222

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G054
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0864_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk219.w6, B699LowIndex.I11TerminalData.Chunk219.w7, B699LowIndex.I11TerminalData.Chunk219.w8, B699LowIndex.I11TerminalData.Chunk219.w9, B699LowIndex.I11TerminalData.Chunk219.w10, B699LowIndex.I11TerminalData.Chunk219.w11, B699LowIndex.I11TerminalData.Chunk219.w12, B699LowIndex.I11TerminalData.Chunk219.w13, B699LowIndex.I11TerminalData.Chunk219.w14, B699LowIndex.I11TerminalData.Chunk219.w15]
private def c0864_intervals : List NatInterval := [(43904, 43904), (43905, 43905), (43906, 43906), (43907, 43907), (43908, 43908), (43909, 43909), (43910, 43910), (43911, 43911), (43912, 43912), (43913, 43914)]

private theorem c0864_intervals_eq :
    witnessIntervals c0864_witnesses = c0864_intervals := by
  rfl

private theorem c0864_checks : witnessesCheck c0864_witnesses = true := by
  simp only [witnessesCheck, c0864_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk219.w6_check, B699LowIndex.I11TerminalData.Chunk219.w7_check, B699LowIndex.I11TerminalData.Chunk219.w8_check, B699LowIndex.I11TerminalData.Chunk219.w9_check, B699LowIndex.I11TerminalData.Chunk219.w10_check, B699LowIndex.I11TerminalData.Chunk219.w11_check, B699LowIndex.I11TerminalData.Chunk219.w12_check, B699LowIndex.I11TerminalData.Chunk219.w13_check, B699LowIndex.I11TerminalData.Chunk219.w14_check, B699LowIndex.I11TerminalData.Chunk219.w15_check, Bool.and_self]

private theorem c0864_cover : coverCheck 43904 43914 c0864_intervals = true := by
  decide

private theorem c0864_sound : IntervalSound (43904, 43914) := by
  have hc : coverCheck 43904 43914 (witnessIntervals c0864_witnesses) = true := by
    rw [c0864_intervals_eq]
    exact c0864_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0864_witnesses)
    (lo := 43904) (hi := 43914) c0864_checks hc

private def c0865_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk220.w0]
private def c0865_intervals : List NatInterval := [(44250, 44257)]

private theorem c0865_intervals_eq :
    witnessIntervals c0865_witnesses = c0865_intervals := by
  rfl

private theorem c0865_checks : witnessesCheck c0865_witnesses = true := by
  simp only [witnessesCheck, c0865_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk220.w0_check, Bool.and_self]

private theorem c0865_cover : coverCheck 44250 44257 c0865_intervals = true := by
  decide

private theorem c0865_sound : IntervalSound (44250, 44257) := by
  have hc : coverCheck 44250 44257 (witnessIntervals c0865_witnesses) = true := by
    rw [c0865_intervals_eq]
    exact c0865_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0865_witnesses)
    (lo := 44250) (hi := 44257) c0865_checks hc

private def c0866_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk220.w1, B699LowIndex.I11TerminalData.Chunk220.w2]
private def c0866_intervals : List NatInterval := [(44933, 44937), (44938, 44938)]

private theorem c0866_intervals_eq :
    witnessIntervals c0866_witnesses = c0866_intervals := by
  rfl

private theorem c0866_checks : witnessesCheck c0866_witnesses = true := by
  simp only [witnessesCheck, c0866_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk220.w1_check, B699LowIndex.I11TerminalData.Chunk220.w2_check, Bool.and_self]

private theorem c0866_cover : coverCheck 44933 44938 c0866_intervals = true := by
  decide

private theorem c0866_sound : IntervalSound (44933, 44938) := by
  have hc : coverCheck 44933 44938 (witnessIntervals c0866_witnesses) = true := by
    rw [c0866_intervals_eq]
    exact c0866_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0866_witnesses)
    (lo := 44933) (hi := 44938) c0866_checks hc

private def c0867_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk220.w3, B699LowIndex.I11TerminalData.Chunk220.w4]
private def c0867_intervals : List NatInterval := [(45441, 45449), (45450, 45450)]

private theorem c0867_intervals_eq :
    witnessIntervals c0867_witnesses = c0867_intervals := by
  rfl

private theorem c0867_checks : witnessesCheck c0867_witnesses = true := by
  simp only [witnessesCheck, c0867_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk220.w3_check, B699LowIndex.I11TerminalData.Chunk220.w4_check, Bool.and_self]

private theorem c0867_cover : coverCheck 45441 45450 c0867_intervals = true := by
  decide

private theorem c0867_sound : IntervalSound (45441, 45450) := by
  have hc : coverCheck 45441 45450 (witnessIntervals c0867_witnesses) = true := by
    rw [c0867_intervals_eq]
    exact c0867_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0867_witnesses)
    (lo := 45441) (hi := 45450) c0867_checks hc

private def c0868_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk220.w5, B699LowIndex.I11TerminalData.Chunk220.w6, B699LowIndex.I11TerminalData.Chunk220.w7, B699LowIndex.I11TerminalData.Chunk220.w8, B699LowIndex.I11TerminalData.Chunk220.w9]
private def c0868_intervals : List NatInterval := [(45625, 45625), (45626, 45626), (45627, 45627), (45628, 45628), (45629, 45629)]

private theorem c0868_intervals_eq :
    witnessIntervals c0868_witnesses = c0868_intervals := by
  rfl

private theorem c0868_checks : witnessesCheck c0868_witnesses = true := by
  simp only [witnessesCheck, c0868_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk220.w5_check, B699LowIndex.I11TerminalData.Chunk220.w6_check, B699LowIndex.I11TerminalData.Chunk220.w7_check, B699LowIndex.I11TerminalData.Chunk220.w8_check, B699LowIndex.I11TerminalData.Chunk220.w9_check, Bool.and_self]

private theorem c0868_cover : coverCheck 45625 45629 c0868_intervals = true := by
  decide

private theorem c0868_sound : IntervalSound (45625, 45629) := by
  have hc : coverCheck 45625 45629 (witnessIntervals c0868_witnesses) = true := by
    rw [c0868_intervals_eq]
    exact c0868_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0868_witnesses)
    (lo := 45625) (hi := 45629) c0868_checks hc

private def c0869_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk220.w10]
private def c0869_intervals : List NatInterval := [(45962, 45962)]

private theorem c0869_intervals_eq :
    witnessIntervals c0869_witnesses = c0869_intervals := by
  rfl

private theorem c0869_checks : witnessesCheck c0869_witnesses = true := by
  simp only [witnessesCheck, c0869_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk220.w10_check, Bool.and_self]

private theorem c0869_cover : coverCheck 45962 45962 c0869_intervals = true := by
  decide

private theorem c0869_sound : IntervalSound (45962, 45962) := by
  have hc : coverCheck 45962 45962 (witnessIntervals c0869_witnesses) = true := by
    rw [c0869_intervals_eq]
    exact c0869_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0869_witnesses)
    (lo := 45962) (hi := 45962) c0869_checks hc

private def c0870_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk220.w11]
private def c0870_intervals : List NatInterval := [(46656, 46658)]

private theorem c0870_intervals_eq :
    witnessIntervals c0870_witnesses = c0870_intervals := by
  rfl

private theorem c0870_checks : witnessesCheck c0870_witnesses = true := by
  simp only [witnessesCheck, c0870_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk220.w11_check, Bool.and_self]

private theorem c0870_cover : coverCheck 46656 46658 c0870_intervals = true := by
  decide

private theorem c0870_sound : IntervalSound (46656, 46658) := by
  have hc : coverCheck 46656 46658 (witnessIntervals c0870_witnesses) = true := by
    rw [c0870_intervals_eq]
    exact c0870_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0870_witnesses)
    (lo := 46656) (hi := 46658) c0870_checks hc

private def c0871_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk220.w12]
private def c0871_intervals : List NatInterval := [(47000, 47001)]

private theorem c0871_intervals_eq :
    witnessIntervals c0871_witnesses = c0871_intervals := by
  rfl

private theorem c0871_checks : witnessesCheck c0871_witnesses = true := by
  simp only [witnessesCheck, c0871_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk220.w12_check, Bool.and_self]

private theorem c0871_cover : coverCheck 47000 47001 c0871_intervals = true := by
  decide

private theorem c0871_sound : IntervalSound (47000, 47001) := by
  have hc : coverCheck 47000 47001 (witnessIntervals c0871_witnesses) = true := by
    rw [c0871_intervals_eq]
    exact c0871_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0871_witnesses)
    (lo := 47000) (hi := 47001) c0871_checks hc

private def c0872_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk220.w13]
private def c0872_intervals : List NatInterval := [(47385, 47385)]

private theorem c0872_intervals_eq :
    witnessIntervals c0872_witnesses = c0872_intervals := by
  rfl

private theorem c0872_checks : witnessesCheck c0872_witnesses = true := by
  simp only [witnessesCheck, c0872_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk220.w13_check, Bool.and_self]

private theorem c0872_cover : coverCheck 47385 47385 c0872_intervals = true := by
  decide

private theorem c0872_sound : IntervalSound (47385, 47385) := by
  have hc : coverCheck 47385 47385 (witnessIntervals c0872_witnesses) = true := by
    rw [c0872_intervals_eq]
    exact c0872_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0872_witnesses)
    (lo := 47385) (hi := 47385) c0872_checks hc

private def c0873_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk220.w14]
private def c0873_intervals : List NatInterval := [(47625, 47626)]

private theorem c0873_intervals_eq :
    witnessIntervals c0873_witnesses = c0873_intervals := by
  rfl

private theorem c0873_checks : witnessesCheck c0873_witnesses = true := by
  simp only [witnessesCheck, c0873_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk220.w14_check, Bool.and_self]

private theorem c0873_cover : coverCheck 47625 47626 c0873_intervals = true := by
  decide

private theorem c0873_sound : IntervalSound (47625, 47626) := by
  have hc : coverCheck 47625 47626 (witnessIntervals c0873_witnesses) = true := by
    rw [c0873_intervals_eq]
    exact c0873_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0873_witnesses)
    (lo := 47625) (hi := 47626) c0873_checks hc

private def c0874_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk220.w15, B699LowIndex.I11TerminalData.Chunk221.w0]
private def c0874_intervals : List NatInterval := [(47628, 47633), (47634, 47635)]

private theorem c0874_intervals_eq :
    witnessIntervals c0874_witnesses = c0874_intervals := by
  rfl

private theorem c0874_checks : witnessesCheck c0874_witnesses = true := by
  simp only [witnessesCheck, c0874_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk220.w15_check, B699LowIndex.I11TerminalData.Chunk221.w0_check, Bool.and_self]

private theorem c0874_cover : coverCheck 47628 47635 c0874_intervals = true := by
  decide

private theorem c0874_sound : IntervalSound (47628, 47635) := by
  have hc : coverCheck 47628 47635 (witnessIntervals c0874_witnesses) = true := by
    rw [c0874_intervals_eq]
    exact c0874_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0874_witnesses)
    (lo := 47628) (hi := 47635) c0874_checks hc

private def c0875_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk221.w1, B699LowIndex.I11TerminalData.Chunk221.w2]
private def c0875_intervals : List NatInterval := [(47750, 47753), (47754, 47754)]

private theorem c0875_intervals_eq :
    witnessIntervals c0875_witnesses = c0875_intervals := by
  rfl

private theorem c0875_checks : witnessesCheck c0875_witnesses = true := by
  simp only [witnessesCheck, c0875_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk221.w1_check, B699LowIndex.I11TerminalData.Chunk221.w2_check, Bool.and_self]

private theorem c0875_cover : coverCheck 47750 47754 c0875_intervals = true := by
  decide

private theorem c0875_sound : IntervalSound (47750, 47754) := by
  have hc : coverCheck 47750 47754 (witnessIntervals c0875_witnesses) = true := by
    rw [c0875_intervals_eq]
    exact c0875_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0875_witnesses)
    (lo := 47750) (hi := 47754) c0875_checks hc

private def c0876_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk221.w3, B699LowIndex.I11TerminalData.Chunk221.w4, B699LowIndex.I11TerminalData.Chunk221.w5]
private def c0876_intervals : List NatInterval := [(47872, 47879), (47880, 47880), (47881, 47882)]

private theorem c0876_intervals_eq :
    witnessIntervals c0876_witnesses = c0876_intervals := by
  rfl

private theorem c0876_checks : witnessesCheck c0876_witnesses = true := by
  simp only [witnessesCheck, c0876_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk221.w3_check, B699LowIndex.I11TerminalData.Chunk221.w4_check, B699LowIndex.I11TerminalData.Chunk221.w5_check, Bool.and_self]

private theorem c0876_cover : coverCheck 47872 47882 c0876_intervals = true := by
  decide

private theorem c0876_sound : IntervalSound (47872, 47882) := by
  have hc : coverCheck 47872 47882 (witnessIntervals c0876_witnesses) = true := by
    rw [c0876_intervals_eq]
    exact c0876_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0876_witnesses)
    (lo := 47872) (hi := 47882) c0876_checks hc

private def c0877_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk221.w6, B699LowIndex.I11TerminalData.Chunk221.w7, B699LowIndex.I11TerminalData.Chunk221.w8, B699LowIndex.I11TerminalData.Chunk221.w9, B699LowIndex.I11TerminalData.Chunk221.w10, B699LowIndex.I11TerminalData.Chunk221.w11, B699LowIndex.I11TerminalData.Chunk221.w12, B699LowIndex.I11TerminalData.Chunk221.w13, B699LowIndex.I11TerminalData.Chunk221.w14, B699LowIndex.I11TerminalData.Chunk221.w15, B699LowIndex.I11TerminalData.Chunk222.w0]
private def c0877_intervals : List NatInterval := [(48000, 48000), (48001, 48001), (48002, 48002), (48003, 48003), (48004, 48004), (48005, 48005), (48006, 48006), (48007, 48007), (48008, 48008), (48009, 48009), (48010, 48010)]

private theorem c0877_intervals_eq :
    witnessIntervals c0877_witnesses = c0877_intervals := by
  rfl

private theorem c0877_checks : witnessesCheck c0877_witnesses = true := by
  simp only [witnessesCheck, c0877_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk221.w6_check, B699LowIndex.I11TerminalData.Chunk221.w7_check, B699LowIndex.I11TerminalData.Chunk221.w8_check, B699LowIndex.I11TerminalData.Chunk221.w9_check, B699LowIndex.I11TerminalData.Chunk221.w10_check, B699LowIndex.I11TerminalData.Chunk221.w11_check, B699LowIndex.I11TerminalData.Chunk221.w12_check, B699LowIndex.I11TerminalData.Chunk221.w13_check, B699LowIndex.I11TerminalData.Chunk221.w14_check, B699LowIndex.I11TerminalData.Chunk221.w15_check, B699LowIndex.I11TerminalData.Chunk222.w0_check, Bool.and_self]

private theorem c0877_cover : coverCheck 48000 48010 c0877_intervals = true := by
  decide

private theorem c0877_sound : IntervalSound (48000, 48010) := by
  have hc : coverCheck 48000 48010 (witnessIntervals c0877_witnesses) = true := by
    rw [c0877_intervals_eq]
    exact c0877_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0877_witnesses)
    (lo := 48000) (hi := 48010) c0877_checks hc

private def c0878_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk222.w1, B699LowIndex.I11TerminalData.Chunk222.w2]
private def c0878_intervals : List NatInterval := [(48128, 48131), (48132, 48135)]

private theorem c0878_intervals_eq :
    witnessIntervals c0878_witnesses = c0878_intervals := by
  rfl

private theorem c0878_checks : witnessesCheck c0878_witnesses = true := by
  simp only [witnessesCheck, c0878_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk222.w1_check, B699LowIndex.I11TerminalData.Chunk222.w2_check, Bool.and_self]

private theorem c0878_cover : coverCheck 48128 48135 c0878_intervals = true := by
  decide

private theorem c0878_sound : IntervalSound (48128, 48135) := by
  have hc : coverCheck 48128 48135 (witnessIntervals c0878_witnesses) = true := by
    rw [c0878_intervals_eq]
    exact c0878_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0878_witnesses)
    (lo := 48128) (hi := 48135) c0878_checks hc

private def c0879_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk222.w3, B699LowIndex.I11TerminalData.Chunk222.w4, B699LowIndex.I11TerminalData.Chunk222.w5]
private def c0879_intervals : List NatInterval := [(48256, 48257), (48258, 48258), (48259, 48260)]

private theorem c0879_intervals_eq :
    witnessIntervals c0879_witnesses = c0879_intervals := by
  rfl

private theorem c0879_checks : witnessesCheck c0879_witnesses = true := by
  simp only [witnessesCheck, c0879_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk222.w3_check, B699LowIndex.I11TerminalData.Chunk222.w4_check, B699LowIndex.I11TerminalData.Chunk222.w5_check, Bool.and_self]

private theorem c0879_cover : coverCheck 48256 48260 c0879_intervals = true := by
  decide

private theorem c0879_sound : IntervalSound (48256, 48260) := by
  have hc : coverCheck 48256 48260 (witnessIntervals c0879_witnesses) = true := by
    rw [c0879_intervals_eq]
    exact c0879_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0879_witnesses)
    (lo := 48256) (hi := 48260) c0879_checks hc

def intervals : List NatInterval := [(43904, 43914), (44250, 44257), (44933, 44938), (45441, 45450), (45625, 45629), (45962, 45962), (46656, 46658), (47000, 47001), (47385, 47385), (47625, 47626), (47628, 47635), (47750, 47754), (47872, 47882), (48000, 48010), (48128, 48135), (48256, 48260)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (43904, 43914)) (intervals := [(44250, 44257), (44933, 44938), (45441, 45450), (45625, 45629), (45962, 45962), (46656, 46658), (47000, 47001), (47385, 47385), (47625, 47626), (47628, 47635), (47750, 47754), (47872, 47882), (48000, 48010), (48128, 48135), (48256, 48260)]) c0864_sound (intervals_sound_cons (I := (44250, 44257)) (intervals := [(44933, 44938), (45441, 45450), (45625, 45629), (45962, 45962), (46656, 46658), (47000, 47001), (47385, 47385), (47625, 47626), (47628, 47635), (47750, 47754), (47872, 47882), (48000, 48010), (48128, 48135), (48256, 48260)]) c0865_sound (intervals_sound_cons (I := (44933, 44938)) (intervals := [(45441, 45450), (45625, 45629), (45962, 45962), (46656, 46658), (47000, 47001), (47385, 47385), (47625, 47626), (47628, 47635), (47750, 47754), (47872, 47882), (48000, 48010), (48128, 48135), (48256, 48260)]) c0866_sound (intervals_sound_cons (I := (45441, 45450)) (intervals := [(45625, 45629), (45962, 45962), (46656, 46658), (47000, 47001), (47385, 47385), (47625, 47626), (47628, 47635), (47750, 47754), (47872, 47882), (48000, 48010), (48128, 48135), (48256, 48260)]) c0867_sound (intervals_sound_cons (I := (45625, 45629)) (intervals := [(45962, 45962), (46656, 46658), (47000, 47001), (47385, 47385), (47625, 47626), (47628, 47635), (47750, 47754), (47872, 47882), (48000, 48010), (48128, 48135), (48256, 48260)]) c0868_sound (intervals_sound_cons (I := (45962, 45962)) (intervals := [(46656, 46658), (47000, 47001), (47385, 47385), (47625, 47626), (47628, 47635), (47750, 47754), (47872, 47882), (48000, 48010), (48128, 48135), (48256, 48260)]) c0869_sound (intervals_sound_cons (I := (46656, 46658)) (intervals := [(47000, 47001), (47385, 47385), (47625, 47626), (47628, 47635), (47750, 47754), (47872, 47882), (48000, 48010), (48128, 48135), (48256, 48260)]) c0870_sound (intervals_sound_cons (I := (47000, 47001)) (intervals := [(47385, 47385), (47625, 47626), (47628, 47635), (47750, 47754), (47872, 47882), (48000, 48010), (48128, 48135), (48256, 48260)]) c0871_sound (intervals_sound_cons (I := (47385, 47385)) (intervals := [(47625, 47626), (47628, 47635), (47750, 47754), (47872, 47882), (48000, 48010), (48128, 48135), (48256, 48260)]) c0872_sound (intervals_sound_cons (I := (47625, 47626)) (intervals := [(47628, 47635), (47750, 47754), (47872, 47882), (48000, 48010), (48128, 48135), (48256, 48260)]) c0873_sound (intervals_sound_cons (I := (47628, 47635)) (intervals := [(47750, 47754), (47872, 47882), (48000, 48010), (48128, 48135), (48256, 48260)]) c0874_sound (intervals_sound_cons (I := (47750, 47754)) (intervals := [(47872, 47882), (48000, 48010), (48128, 48135), (48256, 48260)]) c0875_sound (intervals_sound_cons (I := (47872, 47882)) (intervals := [(48000, 48010), (48128, 48135), (48256, 48260)]) c0876_sound (intervals_sound_cons (I := (48000, 48010)) (intervals := [(48128, 48135), (48256, 48260)]) c0877_sound (intervals_sound_cons (I := (48128, 48135)) (intervals := [(48256, 48260)]) c0878_sound (intervals_sound_cons (I := (48256, 48260)) (intervals := []) c0879_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G054
