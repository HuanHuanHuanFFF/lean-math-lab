import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk111
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk112
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk113
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk114

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G015
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0240_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk111.w0, B699LowIndex.I11TerminalData.Chunk111.w1, B699LowIndex.I11TerminalData.Chunk111.w2, B699LowIndex.I11TerminalData.Chunk111.w3, B699LowIndex.I11TerminalData.Chunk111.w4, B699LowIndex.I11TerminalData.Chunk111.w5, B699LowIndex.I11TerminalData.Chunk111.w6]
private def c0240_intervals : List NatInterval := [(8000, 8003), (8004, 8004), (8005, 8005), (8006, 8006), (8007, 8007), (8008, 8008), (8009, 8010)]

private theorem c0240_intervals_eq :
    witnessIntervals c0240_witnesses = c0240_intervals := by
  rfl

private theorem c0240_checks : witnessesCheck c0240_witnesses = true := by
  simp only [witnessesCheck, c0240_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk111.w0_check, B699LowIndex.I11TerminalData.Chunk111.w1_check, B699LowIndex.I11TerminalData.Chunk111.w2_check, B699LowIndex.I11TerminalData.Chunk111.w3_check, B699LowIndex.I11TerminalData.Chunk111.w4_check, B699LowIndex.I11TerminalData.Chunk111.w5_check, B699LowIndex.I11TerminalData.Chunk111.w6_check, Bool.and_self]

private theorem c0240_cover : coverCheck 8000 8010 c0240_intervals = true := by
  decide

private theorem c0240_sound : IntervalSound (8000, 8010) := by
  have hc : coverCheck 8000 8010 (witnessIntervals c0240_witnesses) = true := by
    rw [c0240_intervals_eq]
    exact c0240_cover
  exact interval_sound_of_witness_checks (witnesses := c0240_witnesses)
    (lo := 8000) (hi := 8010) c0240_checks hc

private def c0241_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk111.w7, B699LowIndex.I11TerminalData.Chunk111.w8, B699LowIndex.I11TerminalData.Chunk111.w9]
private def c0241_intervals : List NatInterval := [(8025, 8027), (8028, 8028), (8029, 8029)]

private theorem c0241_intervals_eq :
    witnessIntervals c0241_witnesses = c0241_intervals := by
  rfl

private theorem c0241_checks : witnessesCheck c0241_witnesses = true := by
  simp only [witnessesCheck, c0241_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk111.w7_check, B699LowIndex.I11TerminalData.Chunk111.w8_check, B699LowIndex.I11TerminalData.Chunk111.w9_check, Bool.and_self]

private theorem c0241_cover : coverCheck 8025 8029 c0241_intervals = true := by
  decide

private theorem c0241_sound : IntervalSound (8025, 8029) := by
  have hc : coverCheck 8025 8029 (witnessIntervals c0241_witnesses) = true := by
    rw [c0241_intervals_eq]
    exact c0241_cover
  exact interval_sound_of_witness_checks (witnesses := c0241_witnesses)
    (lo := 8025) (hi := 8029) c0241_checks hc

private def c0242_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk111.w10, B699LowIndex.I11TerminalData.Chunk111.w11, B699LowIndex.I11TerminalData.Chunk111.w12, B699LowIndex.I11TerminalData.Chunk111.w13, B699LowIndex.I11TerminalData.Chunk111.w14, B699LowIndex.I11TerminalData.Chunk111.w15, B699LowIndex.I11TerminalData.Chunk112.w0, B699LowIndex.I11TerminalData.Chunk112.w1]
private def c0242_intervals : List NatInterval := [(8032, 8032), (8033, 8033), (8034, 8034), (8035, 8035), (8036, 8036), (8037, 8037), (8038, 8038), (8039, 8042)]

private theorem c0242_intervals_eq :
    witnessIntervals c0242_witnesses = c0242_intervals := by
  rfl

private theorem c0242_checks : witnessesCheck c0242_witnesses = true := by
  simp only [witnessesCheck, c0242_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk111.w10_check, B699LowIndex.I11TerminalData.Chunk111.w11_check, B699LowIndex.I11TerminalData.Chunk111.w12_check, B699LowIndex.I11TerminalData.Chunk111.w13_check, B699LowIndex.I11TerminalData.Chunk111.w14_check, B699LowIndex.I11TerminalData.Chunk111.w15_check, B699LowIndex.I11TerminalData.Chunk112.w0_check, B699LowIndex.I11TerminalData.Chunk112.w1_check, Bool.and_self]

private theorem c0242_cover : coverCheck 8032 8042 c0242_intervals = true := by
  decide

private theorem c0242_sound : IntervalSound (8032, 8042) := by
  have hc : coverCheck 8032 8042 (witnessIntervals c0242_witnesses) = true := by
    rw [c0242_intervals_eq]
    exact c0242_cover
  exact interval_sound_of_witness_checks (witnesses := c0242_witnesses)
    (lo := 8032) (hi := 8042) c0242_checks hc

private def c0243_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk112.w2]
private def c0243_intervals : List NatInterval := [(8046, 8046)]

private theorem c0243_intervals_eq :
    witnessIntervals c0243_witnesses = c0243_intervals := by
  rfl

private theorem c0243_checks : witnessesCheck c0243_witnesses = true := by
  simp only [witnessesCheck, c0243_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk112.w2_check, Bool.and_self]

private theorem c0243_cover : coverCheck 8046 8046 c0243_intervals = true := by
  decide

private theorem c0243_sound : IntervalSound (8046, 8046) := by
  have hc : coverCheck 8046 8046 (witnessIntervals c0243_witnesses) = true := by
    rw [c0243_intervals_eq]
    exact c0243_cover
  exact interval_sound_of_witness_checks (witnesses := c0243_witnesses)
    (lo := 8046) (hi := 8046) c0243_checks hc

private def c0244_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk112.w3, B699LowIndex.I11TerminalData.Chunk112.w4, B699LowIndex.I11TerminalData.Chunk112.w5, B699LowIndex.I11TerminalData.Chunk112.w6]
private def c0244_intervals : List NatInterval := [(8050, 8050), (8051, 8051), (8052, 8052), (8053, 8056)]

private theorem c0244_intervals_eq :
    witnessIntervals c0244_witnesses = c0244_intervals := by
  rfl

private theorem c0244_checks : witnessesCheck c0244_witnesses = true := by
  simp only [witnessesCheck, c0244_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk112.w3_check, B699LowIndex.I11TerminalData.Chunk112.w4_check, B699LowIndex.I11TerminalData.Chunk112.w5_check, B699LowIndex.I11TerminalData.Chunk112.w6_check, Bool.and_self]

private theorem c0244_cover : coverCheck 8050 8056 c0244_intervals = true := by
  decide

private theorem c0244_sound : IntervalSound (8050, 8056) := by
  have hc : coverCheck 8050 8056 (witnessIntervals c0244_witnesses) = true := by
    rw [c0244_intervals_eq]
    exact c0244_cover
  exact interval_sound_of_witness_checks (witnesses := c0244_witnesses)
    (lo := 8050) (hi := 8056) c0244_checks hc

private def c0245_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk112.w7, B699LowIndex.I11TerminalData.Chunk112.w8, B699LowIndex.I11TerminalData.Chunk112.w9]
private def c0245_intervals : List NatInterval := [(8073, 8079), (8080, 8080), (8081, 8083)]

private theorem c0245_intervals_eq :
    witnessIntervals c0245_witnesses = c0245_intervals := by
  rfl

private theorem c0245_checks : witnessesCheck c0245_witnesses = true := by
  simp only [witnessesCheck, c0245_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk112.w7_check, B699LowIndex.I11TerminalData.Chunk112.w8_check, B699LowIndex.I11TerminalData.Chunk112.w9_check, Bool.and_self]

private theorem c0245_cover : coverCheck 8073 8083 c0245_intervals = true := by
  decide

private theorem c0245_sound : IntervalSound (8073, 8083) := by
  have hc : coverCheck 8073 8083 (witnessIntervals c0245_witnesses) = true := by
    rw [c0245_intervals_eq]
    exact c0245_cover
  exact interval_sound_of_witness_checks (witnesses := c0245_witnesses)
    (lo := 8073) (hi := 8083) c0245_checks hc

private def c0246_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk112.w10]
private def c0246_intervals : List NatInterval := [(8085, 8085)]

private theorem c0246_intervals_eq :
    witnessIntervals c0246_witnesses = c0246_intervals := by
  rfl

private theorem c0246_checks : witnessesCheck c0246_witnesses = true := by
  simp only [witnessesCheck, c0246_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk112.w10_check, Bool.and_self]

private theorem c0246_cover : coverCheck 8085 8085 c0246_intervals = true := by
  decide

private theorem c0246_sound : IntervalSound (8085, 8085) := by
  have hc : coverCheck 8085 8085 (witnessIntervals c0246_witnesses) = true := by
    rw [c0246_intervals_eq]
    exact c0246_cover
  exact interval_sound_of_witness_checks (witnesses := c0246_witnesses)
    (lo := 8085) (hi := 8085) c0246_checks hc

private def c0247_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk112.w11, B699LowIndex.I11TerminalData.Chunk112.w12]
private def c0247_intervals : List NatInterval := [(8100, 8103), (8104, 8110)]

private theorem c0247_intervals_eq :
    witnessIntervals c0247_witnesses = c0247_intervals := by
  rfl

private theorem c0247_checks : witnessesCheck c0247_witnesses = true := by
  simp only [witnessesCheck, c0247_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk112.w11_check, B699LowIndex.I11TerminalData.Chunk112.w12_check, Bool.and_self]

private theorem c0247_cover : coverCheck 8100 8110 c0247_intervals = true := by
  decide

private theorem c0247_sound : IntervalSound (8100, 8110) := by
  have hc : coverCheck 8100 8110 (witnessIntervals c0247_witnesses) = true := by
    rw [c0247_intervals_eq]
    exact c0247_cover
  exact interval_sound_of_witness_checks (witnesses := c0247_witnesses)
    (lo := 8100) (hi := 8110) c0247_checks hc

private def c0248_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk112.w13, B699LowIndex.I11TerminalData.Chunk112.w14, B699LowIndex.I11TerminalData.Chunk112.w15, B699LowIndex.I11TerminalData.Chunk113.w0, B699LowIndex.I11TerminalData.Chunk113.w1, B699LowIndex.I11TerminalData.Chunk113.w2]
private def c0248_intervals : List NatInterval := [(8127, 8133), (8134, 8134), (8135, 8135), (8136, 8136), (8137, 8137), (8138, 8138)]

private theorem c0248_intervals_eq :
    witnessIntervals c0248_witnesses = c0248_intervals := by
  rfl

private theorem c0248_checks : witnessesCheck c0248_witnesses = true := by
  simp only [witnessesCheck, c0248_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk112.w13_check, B699LowIndex.I11TerminalData.Chunk112.w14_check, B699LowIndex.I11TerminalData.Chunk112.w15_check, B699LowIndex.I11TerminalData.Chunk113.w0_check, B699LowIndex.I11TerminalData.Chunk113.w1_check, B699LowIndex.I11TerminalData.Chunk113.w2_check, Bool.and_self]

private theorem c0248_cover : coverCheck 8127 8138 c0248_intervals = true := by
  decide

private theorem c0248_sound : IntervalSound (8127, 8138) := by
  have hc : coverCheck 8127 8138 (witnessIntervals c0248_witnesses) = true := by
    rw [c0248_intervals_eq]
    exact c0248_cover
  exact interval_sound_of_witness_checks (witnesses := c0248_witnesses)
    (lo := 8127) (hi := 8138) c0248_checks hc

private def c0249_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk113.w3, B699LowIndex.I11TerminalData.Chunk113.w4, B699LowIndex.I11TerminalData.Chunk113.w5, B699LowIndex.I11TerminalData.Chunk113.w6, B699LowIndex.I11TerminalData.Chunk113.w7]
private def c0249_intervals : List NatInterval := [(8154, 8157), (8158, 8158), (8159, 8159), (8160, 8160), (8161, 8164)]

private theorem c0249_intervals_eq :
    witnessIntervals c0249_witnesses = c0249_intervals := by
  rfl

private theorem c0249_checks : witnessesCheck c0249_witnesses = true := by
  simp only [witnessesCheck, c0249_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk113.w3_check, B699LowIndex.I11TerminalData.Chunk113.w4_check, B699LowIndex.I11TerminalData.Chunk113.w5_check, B699LowIndex.I11TerminalData.Chunk113.w6_check, B699LowIndex.I11TerminalData.Chunk113.w7_check, Bool.and_self]

private theorem c0249_cover : coverCheck 8154 8164 c0249_intervals = true := by
  decide

private theorem c0249_sound : IntervalSound (8154, 8164) := by
  have hc : coverCheck 8154 8164 (witnessIntervals c0249_witnesses) = true := by
    rw [c0249_intervals_eq]
    exact c0249_cover
  exact interval_sound_of_witness_checks (witnesses := c0249_witnesses)
    (lo := 8154) (hi := 8164) c0249_checks hc

private def c0250_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk113.w8, B699LowIndex.I11TerminalData.Chunk113.w9, B699LowIndex.I11TerminalData.Chunk113.w10]
private def c0250_intervals : List NatInterval := [(8181, 8189), (8190, 8190), (8191, 8193)]

private theorem c0250_intervals_eq :
    witnessIntervals c0250_witnesses = c0250_intervals := by
  rfl

private theorem c0250_checks : witnessesCheck c0250_witnesses = true := by
  simp only [witnessesCheck, c0250_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk113.w8_check, B699LowIndex.I11TerminalData.Chunk113.w9_check, B699LowIndex.I11TerminalData.Chunk113.w10_check, Bool.and_self]

private theorem c0250_cover : coverCheck 8181 8193 c0250_intervals = true := by
  decide

private theorem c0250_sound : IntervalSound (8181, 8193) := by
  have hc : coverCheck 8181 8193 (witnessIntervals c0250_witnesses) = true := by
    rw [c0250_intervals_eq]
    exact c0250_cover
  exact interval_sound_of_witness_checks (witnesses := c0250_witnesses)
    (lo := 8181) (hi := 8193) c0250_checks hc

private def c0251_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk113.w11, B699LowIndex.I11TerminalData.Chunk113.w12]
private def c0251_intervals : List NatInterval := [(8200, 8201), (8202, 8202)]

private theorem c0251_intervals_eq :
    witnessIntervals c0251_witnesses = c0251_intervals := by
  rfl

private theorem c0251_checks : witnessesCheck c0251_witnesses = true := by
  simp only [witnessesCheck, c0251_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk113.w11_check, B699LowIndex.I11TerminalData.Chunk113.w12_check, Bool.and_self]

private theorem c0251_cover : coverCheck 8200 8202 c0251_intervals = true := by
  decide

private theorem c0251_sound : IntervalSound (8200, 8202) := by
  have hc : coverCheck 8200 8202 (witnessIntervals c0251_witnesses) = true := by
    rw [c0251_intervals_eq]
    exact c0251_cover
  exact interval_sound_of_witness_checks (witnesses := c0251_witnesses)
    (lo := 8200) (hi := 8202) c0251_checks hc

private def c0252_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk113.w13, B699LowIndex.I11TerminalData.Chunk113.w14]
private def c0252_intervals : List NatInterval := [(8208, 8208), (8209, 8210)]

private theorem c0252_intervals_eq :
    witnessIntervals c0252_witnesses = c0252_intervals := by
  rfl

private theorem c0252_checks : witnessesCheck c0252_witnesses = true := by
  simp only [witnessesCheck, c0252_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk113.w13_check, B699LowIndex.I11TerminalData.Chunk113.w14_check, Bool.and_self]

private theorem c0252_cover : coverCheck 8208 8210 c0252_intervals = true := by
  decide

private theorem c0252_sound : IntervalSound (8208, 8210) := by
  have hc : coverCheck 8208 8210 (witnessIntervals c0252_witnesses) = true := by
    rw [c0252_intervals_eq]
    exact c0252_cover
  exact interval_sound_of_witness_checks (witnesses := c0252_witnesses)
    (lo := 8208) (hi := 8210) c0252_checks hc

private def c0253_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk113.w15, B699LowIndex.I11TerminalData.Chunk114.w0, B699LowIndex.I11TerminalData.Chunk114.w1]
private def c0253_intervals : List NatInterval := [(8225, 8231), (8232, 8241), (8242, 8242)]

private theorem c0253_intervals_eq :
    witnessIntervals c0253_witnesses = c0253_intervals := by
  rfl

private theorem c0253_checks : witnessesCheck c0253_witnesses = true := by
  simp only [witnessesCheck, c0253_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk113.w15_check, B699LowIndex.I11TerminalData.Chunk114.w0_check, B699LowIndex.I11TerminalData.Chunk114.w1_check, Bool.and_self]

private theorem c0253_cover : coverCheck 8225 8242 c0253_intervals = true := by
  decide

private theorem c0253_sound : IntervalSound (8225, 8242) := by
  have hc : coverCheck 8225 8242 (witnessIntervals c0253_witnesses) = true := by
    rw [c0253_intervals_eq]
    exact c0253_cover
  exact interval_sound_of_witness_checks (witnesses := c0253_witnesses)
    (lo := 8225) (hi := 8242) c0253_checks hc

private def c0254_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk114.w2, B699LowIndex.I11TerminalData.Chunk114.w3, B699LowIndex.I11TerminalData.Chunk114.w4, B699LowIndex.I11TerminalData.Chunk114.w5, B699LowIndex.I11TerminalData.Chunk114.w6]
private def c0254_intervals : List NatInterval := [(8256, 8256), (8257, 8257), (8258, 8258), (8259, 8259), (8260, 8260)]

private theorem c0254_intervals_eq :
    witnessIntervals c0254_witnesses = c0254_intervals := by
  rfl

private theorem c0254_checks : witnessesCheck c0254_witnesses = true := by
  simp only [witnessesCheck, c0254_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk114.w2_check, B699LowIndex.I11TerminalData.Chunk114.w3_check, B699LowIndex.I11TerminalData.Chunk114.w4_check, B699LowIndex.I11TerminalData.Chunk114.w5_check, B699LowIndex.I11TerminalData.Chunk114.w6_check, Bool.and_self]

private theorem c0254_cover : coverCheck 8256 8260 c0254_intervals = true := by
  decide

private theorem c0254_sound : IntervalSound (8256, 8260) := by
  have hc : coverCheck 8256 8260 (witnessIntervals c0254_witnesses) = true := by
    rw [c0254_intervals_eq]
    exact c0254_cover
  exact interval_sound_of_witness_checks (witnesses := c0254_witnesses)
    (lo := 8256) (hi := 8260) c0254_checks hc

private def c0255_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk114.w7, B699LowIndex.I11TerminalData.Chunk114.w8]
private def c0255_intervals : List NatInterval := [(8262, 8262), (8263, 8266)]

private theorem c0255_intervals_eq :
    witnessIntervals c0255_witnesses = c0255_intervals := by
  rfl

private theorem c0255_checks : witnessesCheck c0255_witnesses = true := by
  simp only [witnessesCheck, c0255_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk114.w7_check, B699LowIndex.I11TerminalData.Chunk114.w8_check, Bool.and_self]

private theorem c0255_cover : coverCheck 8262 8266 c0255_intervals = true := by
  decide

private theorem c0255_sound : IntervalSound (8262, 8266) := by
  have hc : coverCheck 8262 8266 (witnessIntervals c0255_witnesses) = true := by
    rw [c0255_intervals_eq]
    exact c0255_cover
  exact interval_sound_of_witness_checks (witnesses := c0255_witnesses)
    (lo := 8262) (hi := 8266) c0255_checks hc

def intervals : List NatInterval := [(8000, 8010), (8025, 8029), (8032, 8042), (8046, 8046), (8050, 8056), (8073, 8083), (8085, 8085), (8100, 8110), (8127, 8138), (8154, 8164), (8181, 8193), (8200, 8202), (8208, 8210), (8225, 8242), (8256, 8260), (8262, 8266)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (8000, 8010)) (intervals := [(8025, 8029), (8032, 8042), (8046, 8046), (8050, 8056), (8073, 8083), (8085, 8085), (8100, 8110), (8127, 8138), (8154, 8164), (8181, 8193), (8200, 8202), (8208, 8210), (8225, 8242), (8256, 8260), (8262, 8266)]) c0240_sound (intervals_sound_cons (I := (8025, 8029)) (intervals := [(8032, 8042), (8046, 8046), (8050, 8056), (8073, 8083), (8085, 8085), (8100, 8110), (8127, 8138), (8154, 8164), (8181, 8193), (8200, 8202), (8208, 8210), (8225, 8242), (8256, 8260), (8262, 8266)]) c0241_sound (intervals_sound_cons (I := (8032, 8042)) (intervals := [(8046, 8046), (8050, 8056), (8073, 8083), (8085, 8085), (8100, 8110), (8127, 8138), (8154, 8164), (8181, 8193), (8200, 8202), (8208, 8210), (8225, 8242), (8256, 8260), (8262, 8266)]) c0242_sound (intervals_sound_cons (I := (8046, 8046)) (intervals := [(8050, 8056), (8073, 8083), (8085, 8085), (8100, 8110), (8127, 8138), (8154, 8164), (8181, 8193), (8200, 8202), (8208, 8210), (8225, 8242), (8256, 8260), (8262, 8266)]) c0243_sound (intervals_sound_cons (I := (8050, 8056)) (intervals := [(8073, 8083), (8085, 8085), (8100, 8110), (8127, 8138), (8154, 8164), (8181, 8193), (8200, 8202), (8208, 8210), (8225, 8242), (8256, 8260), (8262, 8266)]) c0244_sound (intervals_sound_cons (I := (8073, 8083)) (intervals := [(8085, 8085), (8100, 8110), (8127, 8138), (8154, 8164), (8181, 8193), (8200, 8202), (8208, 8210), (8225, 8242), (8256, 8260), (8262, 8266)]) c0245_sound (intervals_sound_cons (I := (8085, 8085)) (intervals := [(8100, 8110), (8127, 8138), (8154, 8164), (8181, 8193), (8200, 8202), (8208, 8210), (8225, 8242), (8256, 8260), (8262, 8266)]) c0246_sound (intervals_sound_cons (I := (8100, 8110)) (intervals := [(8127, 8138), (8154, 8164), (8181, 8193), (8200, 8202), (8208, 8210), (8225, 8242), (8256, 8260), (8262, 8266)]) c0247_sound (intervals_sound_cons (I := (8127, 8138)) (intervals := [(8154, 8164), (8181, 8193), (8200, 8202), (8208, 8210), (8225, 8242), (8256, 8260), (8262, 8266)]) c0248_sound (intervals_sound_cons (I := (8154, 8164)) (intervals := [(8181, 8193), (8200, 8202), (8208, 8210), (8225, 8242), (8256, 8260), (8262, 8266)]) c0249_sound (intervals_sound_cons (I := (8181, 8193)) (intervals := [(8200, 8202), (8208, 8210), (8225, 8242), (8256, 8260), (8262, 8266)]) c0250_sound (intervals_sound_cons (I := (8200, 8202)) (intervals := [(8208, 8210), (8225, 8242), (8256, 8260), (8262, 8266)]) c0251_sound (intervals_sound_cons (I := (8208, 8210)) (intervals := [(8225, 8242), (8256, 8260), (8262, 8266)]) c0252_sound (intervals_sound_cons (I := (8225, 8242)) (intervals := [(8256, 8260), (8262, 8266)]) c0253_sound (intervals_sound_cons (I := (8256, 8260)) (intervals := [(8262, 8266)]) c0254_sound (intervals_sound_cons (I := (8262, 8266)) (intervals := []) c0255_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G015
