import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk114
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk115
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk116
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk117

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G016
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0256_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk114.w9, B699LowIndex.I11TerminalData.Chunk114.w10, B699LowIndex.I11TerminalData.Chunk114.w11]
private def c0256_intervals : List NatInterval := [(8281, 8283), (8284, 8284), (8285, 8285)]

private theorem c0256_intervals_eq :
    witnessIntervals c0256_witnesses = c0256_intervals := by
  rfl

private theorem c0256_checks : witnessesCheck c0256_witnesses = true := by
  simp only [witnessesCheck, c0256_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk114.w9_check, B699LowIndex.I11TerminalData.Chunk114.w10_check, B699LowIndex.I11TerminalData.Chunk114.w11_check, Bool.and_self]

private theorem c0256_cover : coverCheck 8281 8285 c0256_intervals = true := by
  decide

private theorem c0256_sound : IntervalSound (8281, 8285) := by
  have hc : coverCheck 8281 8285 (witnessIntervals c0256_witnesses) = true := by
    rw [c0256_intervals_eq]
    exact c0256_cover
  exact interval_sound_of_witness_checks (witnesses := c0256_witnesses)
    (lo := 8281) (hi := 8285) c0256_checks hc

private def c0257_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk114.w12, B699LowIndex.I11TerminalData.Chunk114.w13]
private def c0257_intervals : List NatInterval := [(8288, 8297), (8298, 8298)]

private theorem c0257_intervals_eq :
    witnessIntervals c0257_witnesses = c0257_intervals := by
  rfl

private theorem c0257_checks : witnessesCheck c0257_witnesses = true := by
  simp only [witnessesCheck, c0257_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk114.w12_check, B699LowIndex.I11TerminalData.Chunk114.w13_check, Bool.and_self]

private theorem c0257_cover : coverCheck 8288 8298 c0257_intervals = true := by
  decide

private theorem c0257_sound : IntervalSound (8288, 8298) := by
  have hc : coverCheck 8288 8298 (witnessIntervals c0257_witnesses) = true := by
    rw [c0257_intervals_eq]
    exact c0257_cover
  exact interval_sound_of_witness_checks (witnesses := c0257_witnesses)
    (lo := 8288) (hi := 8298) c0257_checks hc

private def c0258_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk114.w14, B699LowIndex.I11TerminalData.Chunk114.w15, B699LowIndex.I11TerminalData.Chunk115.w0]
private def c0258_intervals : List NatInterval := [(8320, 8327), (8328, 8328), (8329, 8335)]

private theorem c0258_intervals_eq :
    witnessIntervals c0258_witnesses = c0258_intervals := by
  rfl

private theorem c0258_checks : witnessesCheck c0258_witnesses = true := by
  simp only [witnessesCheck, c0258_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk114.w14_check, B699LowIndex.I11TerminalData.Chunk114.w15_check, B699LowIndex.I11TerminalData.Chunk115.w0_check, Bool.and_self]

private theorem c0258_cover : coverCheck 8320 8335 c0258_intervals = true := by
  decide

private theorem c0258_sound : IntervalSound (8320, 8335) := by
  have hc : coverCheck 8320 8335 (witnessIntervals c0258_witnesses) = true := by
    rw [c0258_intervals_eq]
    exact c0258_cover
  exact interval_sound_of_witness_checks (witnesses := c0258_witnesses)
    (lo := 8320) (hi := 8335) c0258_checks hc

private def c0259_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk115.w1, B699LowIndex.I11TerminalData.Chunk115.w2, B699LowIndex.I11TerminalData.Chunk115.w3, B699LowIndex.I11TerminalData.Chunk115.w4]
private def c0259_intervals : List NatInterval := [(8350, 8350), (8351, 8351), (8352, 8352), (8353, 8360)]

private theorem c0259_intervals_eq :
    witnessIntervals c0259_witnesses = c0259_intervals := by
  rfl

private theorem c0259_checks : witnessesCheck c0259_witnesses = true := by
  simp only [witnessesCheck, c0259_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk115.w1_check, B699LowIndex.I11TerminalData.Chunk115.w2_check, B699LowIndex.I11TerminalData.Chunk115.w3_check, B699LowIndex.I11TerminalData.Chunk115.w4_check, Bool.and_self]

private theorem c0259_cover : coverCheck 8350 8360 c0259_intervals = true := by
  decide

private theorem c0259_sound : IntervalSound (8350, 8360) := by
  have hc : coverCheck 8350 8360 (witnessIntervals c0259_witnesses) = true := by
    rw [c0259_intervals_eq]
    exact c0259_cover
  exact interval_sound_of_witness_checks (witnesses := c0259_witnesses)
    (lo := 8350) (hi := 8360) c0259_checks hc

private def c0260_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk115.w5, B699LowIndex.I11TerminalData.Chunk115.w6, B699LowIndex.I11TerminalData.Chunk115.w7]
private def c0260_intervals : List NatInterval := [(8375, 8379), (8380, 8387), (8388, 8389)]

private theorem c0260_intervals_eq :
    witnessIntervals c0260_witnesses = c0260_intervals := by
  rfl

private theorem c0260_checks : witnessesCheck c0260_witnesses = true := by
  simp only [witnessesCheck, c0260_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk115.w5_check, B699LowIndex.I11TerminalData.Chunk115.w6_check, B699LowIndex.I11TerminalData.Chunk115.w7_check, Bool.and_self]

private theorem c0260_cover : coverCheck 8375 8389 c0260_intervals = true := by
  decide

private theorem c0260_sound : IntervalSound (8375, 8389) := by
  have hc : coverCheck 8375 8389 (witnessIntervals c0260_witnesses) = true := by
    rw [c0260_intervals_eq]
    exact c0260_cover
  exact interval_sound_of_witness_checks (witnesses := c0260_witnesses)
    (lo := 8375) (hi := 8389) c0260_checks hc

private def c0261_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk115.w8, B699LowIndex.I11TerminalData.Chunk115.w9, B699LowIndex.I11TerminalData.Chunk115.w10, B699LowIndex.I11TerminalData.Chunk115.w11, B699LowIndex.I11TerminalData.Chunk115.w12, B699LowIndex.I11TerminalData.Chunk115.w13, B699LowIndex.I11TerminalData.Chunk115.w14, B699LowIndex.I11TerminalData.Chunk115.w15]
private def c0261_intervals : List NatInterval := [(8400, 8400), (8401, 8401), (8402, 8402), (8403, 8403), (8404, 8404), (8405, 8405), (8406, 8406), (8407, 8407)]

private theorem c0261_intervals_eq :
    witnessIntervals c0261_witnesses = c0261_intervals := by
  rfl

private theorem c0261_checks : witnessesCheck c0261_witnesses = true := by
  simp only [witnessesCheck, c0261_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk115.w8_check, B699LowIndex.I11TerminalData.Chunk115.w9_check, B699LowIndex.I11TerminalData.Chunk115.w10_check, B699LowIndex.I11TerminalData.Chunk115.w11_check, B699LowIndex.I11TerminalData.Chunk115.w12_check, B699LowIndex.I11TerminalData.Chunk115.w13_check, B699LowIndex.I11TerminalData.Chunk115.w14_check, B699LowIndex.I11TerminalData.Chunk115.w15_check, Bool.and_self]

private theorem c0261_cover : coverCheck 8400 8407 c0261_intervals = true := by
  decide

private theorem c0261_sound : IntervalSound (8400, 8407) := by
  have hc : coverCheck 8400 8407 (witnessIntervals c0261_witnesses) = true := by
    rw [c0261_intervals_eq]
    exact c0261_cover
  exact interval_sound_of_witness_checks (witnesses := c0261_witnesses)
    (lo := 8400) (hi := 8407) c0261_checks hc

private def c0262_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk116.w0, B699LowIndex.I11TerminalData.Chunk116.w1]
private def c0262_intervals : List NatInterval := [(8424, 8433), (8434, 8435)]

private theorem c0262_intervals_eq :
    witnessIntervals c0262_witnesses = c0262_intervals := by
  rfl

private theorem c0262_checks : witnessesCheck c0262_witnesses = true := by
  simp only [witnessesCheck, c0262_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk116.w0_check, B699LowIndex.I11TerminalData.Chunk116.w1_check, Bool.and_self]

private theorem c0262_cover : coverCheck 8424 8435 c0262_intervals = true := by
  decide

private theorem c0262_sound : IntervalSound (8424, 8435) := by
  have hc : coverCheck 8424 8435 (witnessIntervals c0262_witnesses) = true := by
    rw [c0262_intervals_eq]
    exact c0262_cover
  exact interval_sound_of_witness_checks (witnesses := c0262_witnesses)
    (lo := 8424) (hi := 8435) c0262_checks hc

private def c0263_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk116.w2, B699LowIndex.I11TerminalData.Chunk116.w3, B699LowIndex.I11TerminalData.Chunk116.w4, B699LowIndex.I11TerminalData.Chunk116.w5]
private def c0263_intervals : List NatInterval := [(8450, 8457), (8458, 8458), (8459, 8459), (8460, 8460)]

private theorem c0263_intervals_eq :
    witnessIntervals c0263_witnesses = c0263_intervals := by
  rfl

private theorem c0263_checks : witnessesCheck c0263_witnesses = true := by
  simp only [witnessesCheck, c0263_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk116.w2_check, B699LowIndex.I11TerminalData.Chunk116.w3_check, B699LowIndex.I11TerminalData.Chunk116.w4_check, B699LowIndex.I11TerminalData.Chunk116.w5_check, Bool.and_self]

private theorem c0263_cover : coverCheck 8450 8460 c0263_intervals = true := by
  decide

private theorem c0263_sound : IntervalSound (8450, 8460) := by
  have hc : coverCheck 8450 8460 (witnessIntervals c0263_witnesses) = true := by
    rw [c0263_intervals_eq]
    exact c0263_cover
  exact interval_sound_of_witness_checks (witnesses := c0263_witnesses)
    (lo := 8450) (hi := 8460) c0263_checks hc

private def c0264_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk116.w6, B699LowIndex.I11TerminalData.Chunk116.w7, B699LowIndex.I11TerminalData.Chunk116.w8, B699LowIndex.I11TerminalData.Chunk116.w9, B699LowIndex.I11TerminalData.Chunk116.w10, B699LowIndex.I11TerminalData.Chunk116.w11, B699LowIndex.I11TerminalData.Chunk116.w12, B699LowIndex.I11TerminalData.Chunk116.w13, B699LowIndex.I11TerminalData.Chunk116.w14, B699LowIndex.I11TerminalData.Chunk116.w15, B699LowIndex.I11TerminalData.Chunk117.w0, B699LowIndex.I11TerminalData.Chunk117.w1]
private def c0264_intervals : List NatInterval := [(8477, 8477), (8478, 8478), (8479, 8479), (8480, 8480), (8481, 8481), (8482, 8482), (8483, 8483), (8484, 8484), (8485, 8485), (8486, 8486), (8487, 8487), (8488, 8488)]

private theorem c0264_intervals_eq :
    witnessIntervals c0264_witnesses = c0264_intervals := by
  rfl

private theorem c0264_checks : witnessesCheck c0264_witnesses = true := by
  simp only [witnessesCheck, c0264_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk116.w6_check, B699LowIndex.I11TerminalData.Chunk116.w7_check, B699LowIndex.I11TerminalData.Chunk116.w8_check, B699LowIndex.I11TerminalData.Chunk116.w9_check, B699LowIndex.I11TerminalData.Chunk116.w10_check, B699LowIndex.I11TerminalData.Chunk116.w11_check, B699LowIndex.I11TerminalData.Chunk116.w12_check, B699LowIndex.I11TerminalData.Chunk116.w13_check, B699LowIndex.I11TerminalData.Chunk116.w14_check, B699LowIndex.I11TerminalData.Chunk116.w15_check, B699LowIndex.I11TerminalData.Chunk117.w0_check, B699LowIndex.I11TerminalData.Chunk117.w1_check, Bool.and_self]

private theorem c0264_cover : coverCheck 8477 8488 c0264_intervals = true := by
  decide

private theorem c0264_sound : IntervalSound (8477, 8488) := by
  have hc : coverCheck 8477 8488 (witnessIntervals c0264_witnesses) = true := by
    rw [c0264_intervals_eq]
    exact c0264_cover
  exact interval_sound_of_witness_checks (witnesses := c0264_witnesses)
    (lo := 8477) (hi := 8488) c0264_checks hc

private def c0265_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk117.w2]
private def c0265_intervals : List NatInterval := [(8505, 8510)]

private theorem c0265_intervals_eq :
    witnessIntervals c0265_witnesses = c0265_intervals := by
  rfl

private theorem c0265_checks : witnessesCheck c0265_witnesses = true := by
  simp only [witnessesCheck, c0265_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk117.w2_check, Bool.and_self]

private theorem c0265_cover : coverCheck 8505 8510 c0265_intervals = true := by
  decide

private theorem c0265_sound : IntervalSound (8505, 8510) := by
  have hc : coverCheck 8505 8510 (witnessIntervals c0265_witnesses) = true := by
    rw [c0265_intervals_eq]
    exact c0265_cover
  exact interval_sound_of_witness_checks (witnesses := c0265_witnesses)
    (lo := 8505) (hi := 8510) c0265_checks hc

private def c0266_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk117.w3, B699LowIndex.I11TerminalData.Chunk117.w4]
private def c0266_intervals : List NatInterval := [(8512, 8512), (8513, 8515)]

private theorem c0266_intervals_eq :
    witnessIntervals c0266_witnesses = c0266_intervals := by
  rfl

private theorem c0266_checks : witnessesCheck c0266_witnesses = true := by
  simp only [witnessesCheck, c0266_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk117.w3_check, B699LowIndex.I11TerminalData.Chunk117.w4_check, Bool.and_self]

private theorem c0266_cover : coverCheck 8512 8515 c0266_intervals = true := by
  decide

private theorem c0266_sound : IntervalSound (8512, 8515) := by
  have hc : coverCheck 8512 8515 (witnessIntervals c0266_witnesses) = true := by
    rw [c0266_intervals_eq]
    exact c0266_cover
  exact interval_sound_of_witness_checks (witnesses := c0266_witnesses)
    (lo := 8512) (hi := 8515) c0266_checks hc

private def c0267_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk117.w5, B699LowIndex.I11TerminalData.Chunk117.w6]
private def c0267_intervals : List NatInterval := [(8526, 8531), (8532, 8536)]

private theorem c0267_intervals_eq :
    witnessIntervals c0267_witnesses = c0267_intervals := by
  rfl

private theorem c0267_checks : witnessesCheck c0267_witnesses = true := by
  simp only [witnessesCheck, c0267_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk117.w5_check, B699LowIndex.I11TerminalData.Chunk117.w6_check, Bool.and_self]

private theorem c0267_cover : coverCheck 8526 8536 c0267_intervals = true := by
  decide

private theorem c0267_sound : IntervalSound (8526, 8536) := by
  have hc : coverCheck 8526 8536 (witnessIntervals c0267_witnesses) = true := by
    rw [c0267_intervals_eq]
    exact c0267_cover
  exact interval_sound_of_witness_checks (witnesses := c0267_witnesses)
    (lo := 8526) (hi := 8536) c0267_checks hc

private def c0268_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk117.w7, B699LowIndex.I11TerminalData.Chunk117.w8]
private def c0268_intervals : List NatInterval := [(8550, 8553), (8554, 8554)]

private theorem c0268_intervals_eq :
    witnessIntervals c0268_witnesses = c0268_intervals := by
  rfl

private theorem c0268_checks : witnessesCheck c0268_witnesses = true := by
  simp only [witnessesCheck, c0268_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk117.w7_check, B699LowIndex.I11TerminalData.Chunk117.w8_check, Bool.and_self]

private theorem c0268_cover : coverCheck 8550 8554 c0268_intervals = true := by
  decide

private theorem c0268_sound : IntervalSound (8550, 8554) := by
  have hc : coverCheck 8550 8554 (witnessIntervals c0268_witnesses) = true := by
    rw [c0268_intervals_eq]
    exact c0268_cover
  exact interval_sound_of_witness_checks (witnesses := c0268_witnesses)
    (lo := 8550) (hi := 8554) c0268_checks hc

private def c0269_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk117.w9, B699LowIndex.I11TerminalData.Chunk117.w10]
private def c0269_intervals : List NatInterval := [(8559, 8559), (8560, 8560)]

private theorem c0269_intervals_eq :
    witnessIntervals c0269_witnesses = c0269_intervals := by
  rfl

private theorem c0269_checks : witnessesCheck c0269_witnesses = true := by
  simp only [witnessesCheck, c0269_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk117.w9_check, B699LowIndex.I11TerminalData.Chunk117.w10_check, Bool.and_self]

private theorem c0269_cover : coverCheck 8559 8560 c0269_intervals = true := by
  decide

private theorem c0269_sound : IntervalSound (8559, 8560) := by
  have hc : coverCheck 8559 8560 (witnessIntervals c0269_witnesses) = true := by
    rw [c0269_intervals_eq]
    exact c0269_cover
  exact interval_sound_of_witness_checks (witnesses := c0269_witnesses)
    (lo := 8559) (hi := 8560) c0269_checks hc

private def c0270_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk117.w11, B699LowIndex.I11TerminalData.Chunk117.w12]
private def c0270_intervals : List NatInterval := [(8575, 8583), (8584, 8586)]

private theorem c0270_intervals_eq :
    witnessIntervals c0270_witnesses = c0270_intervals := by
  rfl

private theorem c0270_checks : witnessesCheck c0270_witnesses = true := by
  simp only [witnessesCheck, c0270_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk117.w11_check, B699LowIndex.I11TerminalData.Chunk117.w12_check, Bool.and_self]

private theorem c0270_cover : coverCheck 8575 8586 c0270_intervals = true := by
  decide

private theorem c0270_sound : IntervalSound (8575, 8586) := by
  have hc : coverCheck 8575 8586 (witnessIntervals c0270_witnesses) = true := by
    rw [c0270_intervals_eq]
    exact c0270_cover
  exact interval_sound_of_witness_checks (witnesses := c0270_witnesses)
    (lo := 8575) (hi := 8586) c0270_checks hc

private def c0271_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk117.w13, B699LowIndex.I11TerminalData.Chunk117.w14]
private def c0271_intervals : List NatInterval := [(8608, 8609), (8610, 8610)]

private theorem c0271_intervals_eq :
    witnessIntervals c0271_witnesses = c0271_intervals := by
  rfl

private theorem c0271_checks : witnessesCheck c0271_witnesses = true := by
  simp only [witnessesCheck, c0271_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk117.w13_check, B699LowIndex.I11TerminalData.Chunk117.w14_check, Bool.and_self]

private theorem c0271_cover : coverCheck 8608 8610 c0271_intervals = true := by
  decide

private theorem c0271_sound : IntervalSound (8608, 8610) := by
  have hc : coverCheck 8608 8610 (witnessIntervals c0271_witnesses) = true := by
    rw [c0271_intervals_eq]
    exact c0271_cover
  exact interval_sound_of_witness_checks (witnesses := c0271_witnesses)
    (lo := 8608) (hi := 8610) c0271_checks hc

def intervals : List NatInterval := [(8281, 8285), (8288, 8298), (8320, 8335), (8350, 8360), (8375, 8389), (8400, 8407), (8424, 8435), (8450, 8460), (8477, 8488), (8505, 8510), (8512, 8515), (8526, 8536), (8550, 8554), (8559, 8560), (8575, 8586), (8608, 8610)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (8281, 8285)) (intervals := [(8288, 8298), (8320, 8335), (8350, 8360), (8375, 8389), (8400, 8407), (8424, 8435), (8450, 8460), (8477, 8488), (8505, 8510), (8512, 8515), (8526, 8536), (8550, 8554), (8559, 8560), (8575, 8586), (8608, 8610)]) c0256_sound (intervals_sound_cons (I := (8288, 8298)) (intervals := [(8320, 8335), (8350, 8360), (8375, 8389), (8400, 8407), (8424, 8435), (8450, 8460), (8477, 8488), (8505, 8510), (8512, 8515), (8526, 8536), (8550, 8554), (8559, 8560), (8575, 8586), (8608, 8610)]) c0257_sound (intervals_sound_cons (I := (8320, 8335)) (intervals := [(8350, 8360), (8375, 8389), (8400, 8407), (8424, 8435), (8450, 8460), (8477, 8488), (8505, 8510), (8512, 8515), (8526, 8536), (8550, 8554), (8559, 8560), (8575, 8586), (8608, 8610)]) c0258_sound (intervals_sound_cons (I := (8350, 8360)) (intervals := [(8375, 8389), (8400, 8407), (8424, 8435), (8450, 8460), (8477, 8488), (8505, 8510), (8512, 8515), (8526, 8536), (8550, 8554), (8559, 8560), (8575, 8586), (8608, 8610)]) c0259_sound (intervals_sound_cons (I := (8375, 8389)) (intervals := [(8400, 8407), (8424, 8435), (8450, 8460), (8477, 8488), (8505, 8510), (8512, 8515), (8526, 8536), (8550, 8554), (8559, 8560), (8575, 8586), (8608, 8610)]) c0260_sound (intervals_sound_cons (I := (8400, 8407)) (intervals := [(8424, 8435), (8450, 8460), (8477, 8488), (8505, 8510), (8512, 8515), (8526, 8536), (8550, 8554), (8559, 8560), (8575, 8586), (8608, 8610)]) c0261_sound (intervals_sound_cons (I := (8424, 8435)) (intervals := [(8450, 8460), (8477, 8488), (8505, 8510), (8512, 8515), (8526, 8536), (8550, 8554), (8559, 8560), (8575, 8586), (8608, 8610)]) c0262_sound (intervals_sound_cons (I := (8450, 8460)) (intervals := [(8477, 8488), (8505, 8510), (8512, 8515), (8526, 8536), (8550, 8554), (8559, 8560), (8575, 8586), (8608, 8610)]) c0263_sound (intervals_sound_cons (I := (8477, 8488)) (intervals := [(8505, 8510), (8512, 8515), (8526, 8536), (8550, 8554), (8559, 8560), (8575, 8586), (8608, 8610)]) c0264_sound (intervals_sound_cons (I := (8505, 8510)) (intervals := [(8512, 8515), (8526, 8536), (8550, 8554), (8559, 8560), (8575, 8586), (8608, 8610)]) c0265_sound (intervals_sound_cons (I := (8512, 8515)) (intervals := [(8526, 8536), (8550, 8554), (8559, 8560), (8575, 8586), (8608, 8610)]) c0266_sound (intervals_sound_cons (I := (8526, 8536)) (intervals := [(8550, 8554), (8559, 8560), (8575, 8586), (8608, 8610)]) c0267_sound (intervals_sound_cons (I := (8550, 8554)) (intervals := [(8559, 8560), (8575, 8586), (8608, 8610)]) c0268_sound (intervals_sound_cons (I := (8559, 8560)) (intervals := [(8575, 8586), (8608, 8610)]) c0269_sound (intervals_sound_cons (I := (8575, 8586)) (intervals := [(8608, 8610)]) c0270_sound (intervals_sound_cons (I := (8608, 8610)) (intervals := []) c0271_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G016
