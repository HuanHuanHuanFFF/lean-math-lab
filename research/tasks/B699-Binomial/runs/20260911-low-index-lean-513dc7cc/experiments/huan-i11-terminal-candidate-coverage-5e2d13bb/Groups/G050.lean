import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk210
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk211
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk212

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G050
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0800_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk210.w9]
private def c0800_intervals : List NatInterval := [(32896, 32896)]

private theorem c0800_intervals_eq :
    witnessIntervals c0800_witnesses = c0800_intervals := by
  rfl

private theorem c0800_checks : witnessesCheck c0800_witnesses = true := by
  simp only [witnessesCheck, c0800_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk210.w9_check, Bool.and_self]

private theorem c0800_cover : coverCheck 32896 32896 c0800_intervals = true := by
  decide

private theorem c0800_sound : IntervalSound (32896, 32896) := by
  have hc : coverCheck 32896 32896 (witnessIntervals c0800_witnesses) = true := by
    rw [c0800_intervals_eq]
    exact c0800_cover
  exact interval_sound_of_witness_checks (witnesses := c0800_witnesses)
    (lo := 32896) (hi := 32896) c0800_checks hc

private def c0801_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk210.w10, B699LowIndex.I11TerminalData.Chunk210.w11, B699LowIndex.I11TerminalData.Chunk210.w12, B699LowIndex.I11TerminalData.Chunk210.w13, B699LowIndex.I11TerminalData.Chunk210.w14, B699LowIndex.I11TerminalData.Chunk210.w15, B699LowIndex.I11TerminalData.Chunk211.w0]
private def c0801_intervals : List NatInterval := [(33129, 33129), (33130, 33130), (33131, 33131), (33132, 33132), (33133, 33133), (33134, 33134), (33135, 33135)]

private theorem c0801_intervals_eq :
    witnessIntervals c0801_witnesses = c0801_intervals := by
  rfl

private theorem c0801_checks : witnessesCheck c0801_witnesses = true := by
  simp only [witnessesCheck, c0801_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk210.w10_check, B699LowIndex.I11TerminalData.Chunk210.w11_check, B699LowIndex.I11TerminalData.Chunk210.w12_check, B699LowIndex.I11TerminalData.Chunk210.w13_check, B699LowIndex.I11TerminalData.Chunk210.w14_check, B699LowIndex.I11TerminalData.Chunk210.w15_check, B699LowIndex.I11TerminalData.Chunk211.w0_check, Bool.and_self]

private theorem c0801_cover : coverCheck 33129 33135 c0801_intervals = true := by
  decide

private theorem c0801_sound : IntervalSound (33129, 33135) := by
  have hc : coverCheck 33129 33135 (witnessIntervals c0801_witnesses) = true := by
    rw [c0801_intervals_eq]
    exact c0801_cover
  exact interval_sound_of_witness_checks (witnesses := c0801_witnesses)
    (lo := 33129) (hi := 33135) c0801_checks hc

private def c0802_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk211.w1, B699LowIndex.I11TerminalData.Chunk211.w2]
private def c0802_intervals : List NatInterval := [(33280, 33280), (33281, 33281)]

private theorem c0802_intervals_eq :
    witnessIntervals c0802_witnesses = c0802_intervals := by
  rfl

private theorem c0802_checks : witnessesCheck c0802_witnesses = true := by
  simp only [witnessesCheck, c0802_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk211.w1_check, B699LowIndex.I11TerminalData.Chunk211.w2_check, Bool.and_self]

private theorem c0802_cover : coverCheck 33280 33281 c0802_intervals = true := by
  decide

private theorem c0802_sound : IntervalSound (33280, 33281) := by
  have hc : coverCheck 33280 33281 (witnessIntervals c0802_witnesses) = true := by
    rw [c0802_intervals_eq]
    exact c0802_cover
  exact interval_sound_of_witness_checks (witnesses := c0802_witnesses)
    (lo := 33280) (hi := 33281) c0802_checks hc

private def c0803_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk211.w3, B699LowIndex.I11TerminalData.Chunk211.w4, B699LowIndex.I11TerminalData.Chunk211.w5]
private def c0803_intervals : List NatInterval := [(33375, 33375), (33376, 33376), (33377, 33382)]

private theorem c0803_intervals_eq :
    witnessIntervals c0803_witnesses = c0803_intervals := by
  rfl

private theorem c0803_checks : witnessesCheck c0803_witnesses = true := by
  simp only [witnessesCheck, c0803_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk211.w3_check, B699LowIndex.I11TerminalData.Chunk211.w4_check, B699LowIndex.I11TerminalData.Chunk211.w5_check, Bool.and_self]

private theorem c0803_cover : coverCheck 33375 33382 c0803_intervals = true := by
  decide

private theorem c0803_sound : IntervalSound (33375, 33382) := by
  have hc : coverCheck 33375 33382 (witnessIntervals c0803_witnesses) = true := by
    rw [c0803_intervals_eq]
    exact c0803_cover
  exact interval_sound_of_witness_checks (witnesses := c0803_witnesses)
    (lo := 33375) (hi := 33382) c0803_checks hc

private def c0804_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk211.w6, B699LowIndex.I11TerminalData.Chunk211.w7]
private def c0804_intervals : List NatInterval := [(33536, 33543), (33544, 33544)]

private theorem c0804_intervals_eq :
    witnessIntervals c0804_witnesses = c0804_intervals := by
  rfl

private theorem c0804_checks : witnessesCheck c0804_witnesses = true := by
  simp only [witnessesCheck, c0804_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk211.w6_check, B699LowIndex.I11TerminalData.Chunk211.w7_check, Bool.and_self]

private theorem c0804_cover : coverCheck 33536 33544 c0804_intervals = true := by
  decide

private theorem c0804_sound : IntervalSound (33536, 33544) := by
  have hc : coverCheck 33536 33544 (witnessIntervals c0804_witnesses) = true := by
    rw [c0804_intervals_eq]
    exact c0804_cover
  exact interval_sound_of_witness_checks (witnesses := c0804_witnesses)
    (lo := 33536) (hi := 33544) c0804_checks hc

private def c0805_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk211.w8, B699LowIndex.I11TerminalData.Chunk211.w9]
private def c0805_intervals : List NatInterval := [(33615, 33623), (33624, 33625)]

private theorem c0805_intervals_eq :
    witnessIntervals c0805_witnesses = c0805_intervals := by
  rfl

private theorem c0805_checks : witnessesCheck c0805_witnesses = true := by
  simp only [witnessesCheck, c0805_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk211.w8_check, B699LowIndex.I11TerminalData.Chunk211.w9_check, Bool.and_self]

private theorem c0805_cover : coverCheck 33615 33625 c0805_intervals = true := by
  decide

private theorem c0805_sound : IntervalSound (33615, 33625) := by
  have hc : coverCheck 33615 33625 (witnessIntervals c0805_witnesses) = true := by
    rw [c0805_intervals_eq]
    exact c0805_cover
  exact interval_sound_of_witness_checks (witnesses := c0805_witnesses)
    (lo := 33615) (hi := 33625) c0805_checks hc

private def c0806_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk211.w10, B699LowIndex.I11TerminalData.Chunk211.w11]
private def c0806_intervals : List NatInterval := [(34182, 34182), (34183, 34186)]

private theorem c0806_intervals_eq :
    witnessIntervals c0806_witnesses = c0806_intervals := by
  rfl

private theorem c0806_checks : witnessesCheck c0806_witnesses = true := by
  simp only [witnessesCheck, c0806_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk211.w10_check, B699LowIndex.I11TerminalData.Chunk211.w11_check, Bool.and_self]

private theorem c0806_cover : coverCheck 34182 34186 c0806_intervals = true := by
  decide

private theorem c0806_sound : IntervalSound (34182, 34186) := by
  have hc : coverCheck 34182 34186 (witnessIntervals c0806_witnesses) = true := by
    rw [c0806_intervals_eq]
    exact c0806_cover
  exact interval_sound_of_witness_checks (witnesses := c0806_witnesses)
    (lo := 34182) (hi := 34186) c0806_checks hc

private def c0807_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk211.w12]
private def c0807_intervals : List NatInterval := [(34304, 34310)]

private theorem c0807_intervals_eq :
    witnessIntervals c0807_witnesses = c0807_intervals := by
  rfl

private theorem c0807_checks : witnessesCheck c0807_witnesses = true := by
  simp only [witnessesCheck, c0807_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk211.w12_check, Bool.and_self]

private theorem c0807_cover : coverCheck 34304 34310 c0807_intervals = true := by
  decide

private theorem c0807_sound : IntervalSound (34304, 34310) := by
  have hc : coverCheck 34304 34310 (witnessIntervals c0807_witnesses) = true := by
    rw [c0807_intervals_eq]
    exact c0807_cover
  exact interval_sound_of_witness_checks (witnesses := c0807_witnesses)
    (lo := 34304) (hi := 34310) c0807_checks hc

private def c0808_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk211.w13]
private def c0808_intervals : List NatInterval := [(34432, 34435)]

private theorem c0808_intervals_eq :
    witnessIntervals c0808_witnesses = c0808_intervals := by
  rfl

private theorem c0808_checks : witnessesCheck c0808_witnesses = true := by
  simp only [witnessesCheck, c0808_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk211.w13_check, Bool.and_self]

private theorem c0808_cover : coverCheck 34432 34435 c0808_intervals = true := by
  decide

private theorem c0808_sound : IntervalSound (34432, 34435) := by
  have hc : coverCheck 34432 34435 (witnessIntervals c0808_witnesses) = true := by
    rw [c0808_intervals_eq]
    exact c0808_cover
  exact interval_sound_of_witness_checks (witnesses := c0808_witnesses)
    (lo := 34432) (hi := 34435) c0808_checks hc

private def c0809_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk211.w14]
private def c0809_intervals : List NatInterval := [(34506, 34510)]

private theorem c0809_intervals_eq :
    witnessIntervals c0809_witnesses = c0809_intervals := by
  rfl

private theorem c0809_checks : witnessesCheck c0809_witnesses = true := by
  simp only [witnessesCheck, c0809_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk211.w14_check, Bool.and_self]

private theorem c0809_cover : coverCheck 34506 34510 c0809_intervals = true := by
  decide

private theorem c0809_sound : IntervalSound (34506, 34510) := by
  have hc : coverCheck 34506 34510 (witnessIntervals c0809_witnesses) = true := by
    rw [c0809_intervals_eq]
    exact c0809_cover
  exact interval_sound_of_witness_checks (witnesses := c0809_witnesses)
    (lo := 34506) (hi := 34510) c0809_checks hc

private def c0810_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk211.w15, B699LowIndex.I11TerminalData.Chunk212.w0]
private def c0810_intervals : List NatInterval := [(34750, 34757), (34758, 34759)]

private theorem c0810_intervals_eq :
    witnessIntervals c0810_witnesses = c0810_intervals := by
  rfl

private theorem c0810_checks : witnessesCheck c0810_witnesses = true := by
  simp only [witnessesCheck, c0810_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk211.w15_check, B699LowIndex.I11TerminalData.Chunk212.w0_check, Bool.and_self]

private theorem c0810_cover : coverCheck 34750 34759 c0810_intervals = true := by
  decide

private theorem c0810_sound : IntervalSound (34750, 34759) := by
  have hc : coverCheck 34750 34759 (witnessIntervals c0810_witnesses) = true := by
    rw [c0810_intervals_eq]
    exact c0810_cover
  exact interval_sound_of_witness_checks (witnesses := c0810_witnesses)
    (lo := 34750) (hi := 34759) c0810_checks hc

private def c0811_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk212.w1, B699LowIndex.I11TerminalData.Chunk212.w2, B699LowIndex.I11TerminalData.Chunk212.w3, B699LowIndex.I11TerminalData.Chunk212.w4, B699LowIndex.I11TerminalData.Chunk212.w5]
private def c0811_intervals : List NatInterval := [(34992, 34992), (34993, 34993), (34994, 34994), (34995, 34995), (34996, 34996)]

private theorem c0811_intervals_eq :
    witnessIntervals c0811_witnesses = c0811_intervals := by
  rfl

private theorem c0811_checks : witnessesCheck c0811_witnesses = true := by
  simp only [witnessesCheck, c0811_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk212.w1_check, B699LowIndex.I11TerminalData.Chunk212.w2_check, B699LowIndex.I11TerminalData.Chunk212.w3_check, B699LowIndex.I11TerminalData.Chunk212.w4_check, B699LowIndex.I11TerminalData.Chunk212.w5_check, Bool.and_self]

private theorem c0811_cover : coverCheck 34992 34996 c0811_intervals = true := by
  decide

private theorem c0811_sound : IntervalSound (34992, 34996) := by
  have hc : coverCheck 34992 34996 (witnessIntervals c0811_witnesses) = true := by
    rw [c0811_intervals_eq]
    exact c0811_cover
  exact interval_sound_of_witness_checks (witnesses := c0811_witnesses)
    (lo := 34992) (hi := 34996) c0811_checks hc

private def c0812_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk212.w6, B699LowIndex.I11TerminalData.Chunk212.w7, B699LowIndex.I11TerminalData.Chunk212.w8]
private def c0812_intervals : List NatInterval := [(35000, 35000), (35001, 35001), (35002, 35002)]

private theorem c0812_intervals_eq :
    witnessIntervals c0812_witnesses = c0812_intervals := by
  rfl

private theorem c0812_checks : witnessesCheck c0812_witnesses = true := by
  simp only [witnessesCheck, c0812_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk212.w6_check, B699LowIndex.I11TerminalData.Chunk212.w7_check, B699LowIndex.I11TerminalData.Chunk212.w8_check, Bool.and_self]

private theorem c0812_cover : coverCheck 35000 35002 c0812_intervals = true := by
  decide

private theorem c0812_sound : IntervalSound (35000, 35002) := by
  have hc : coverCheck 35000 35002 (witnessIntervals c0812_witnesses) = true := by
    rw [c0812_intervals_eq]
    exact c0812_cover
  exact interval_sound_of_witness_checks (witnesses := c0812_witnesses)
    (lo := 35000) (hi := 35002) c0812_checks hc

private def c0813_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk212.w9, B699LowIndex.I11TerminalData.Chunk212.w10, B699LowIndex.I11TerminalData.Chunk212.w11]
private def c0813_intervals : List NatInterval := [(35073, 35079), (35080, 35080), (35081, 35082)]

private theorem c0813_intervals_eq :
    witnessIntervals c0813_witnesses = c0813_intervals := by
  rfl

private theorem c0813_checks : witnessesCheck c0813_witnesses = true := by
  simp only [witnessesCheck, c0813_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk212.w9_check, B699LowIndex.I11TerminalData.Chunk212.w10_check, B699LowIndex.I11TerminalData.Chunk212.w11_check, Bool.and_self]

private theorem c0813_cover : coverCheck 35073 35082 c0813_intervals = true := by
  decide

private theorem c0813_sound : IntervalSound (35073, 35082) := by
  have hc : coverCheck 35073 35082 (witnessIntervals c0813_witnesses) = true := by
    rw [c0813_intervals_eq]
    exact c0813_cover
  exact interval_sound_of_witness_checks (witnesses := c0813_witnesses)
    (lo := 35073) (hi := 35082) c0813_checks hc

private def c0814_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk212.w12, B699LowIndex.I11TerminalData.Chunk212.w13]
private def c0814_intervals : List NatInterval := [(35329, 35337), (35338, 35338)]

private theorem c0814_intervals_eq :
    witnessIntervals c0814_witnesses = c0814_intervals := by
  rfl

private theorem c0814_checks : witnessesCheck c0814_witnesses = true := by
  simp only [witnessesCheck, c0814_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk212.w12_check, B699LowIndex.I11TerminalData.Chunk212.w13_check, Bool.and_self]

private theorem c0814_cover : coverCheck 35329 35338 c0814_intervals = true := by
  decide

private theorem c0814_sound : IntervalSound (35329, 35338) := by
  have hc : coverCheck 35329 35338 (witnessIntervals c0814_witnesses) = true := by
    rw [c0814_intervals_eq]
    exact c0814_cover
  exact interval_sound_of_witness_checks (witnesses := c0814_witnesses)
    (lo := 35329) (hi := 35338) c0814_checks hc

private def c0815_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk212.w14, B699LowIndex.I11TerminalData.Chunk212.w15]
private def c0815_intervals : List NatInterval := [(35721, 35721), (35722, 35722)]

private theorem c0815_intervals_eq :
    witnessIntervals c0815_witnesses = c0815_intervals := by
  rfl

private theorem c0815_checks : witnessesCheck c0815_witnesses = true := by
  simp only [witnessesCheck, c0815_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk212.w14_check, B699LowIndex.I11TerminalData.Chunk212.w15_check, Bool.and_self]

private theorem c0815_cover : coverCheck 35721 35722 c0815_intervals = true := by
  decide

private theorem c0815_sound : IntervalSound (35721, 35722) := by
  have hc : coverCheck 35721 35722 (witnessIntervals c0815_witnesses) = true := by
    rw [c0815_intervals_eq]
    exact c0815_cover
  exact interval_sound_of_witness_checks (witnesses := c0815_witnesses)
    (lo := 35721) (hi := 35722) c0815_checks hc

def intervals : List NatInterval := [(32896, 32896), (33129, 33135), (33280, 33281), (33375, 33382), (33536, 33544), (33615, 33625), (34182, 34186), (34304, 34310), (34432, 34435), (34506, 34510), (34750, 34759), (34992, 34996), (35000, 35002), (35073, 35082), (35329, 35338), (35721, 35722)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (32896, 32896)) (intervals := [(33129, 33135), (33280, 33281), (33375, 33382), (33536, 33544), (33615, 33625), (34182, 34186), (34304, 34310), (34432, 34435), (34506, 34510), (34750, 34759), (34992, 34996), (35000, 35002), (35073, 35082), (35329, 35338), (35721, 35722)]) c0800_sound (intervals_sound_cons (I := (33129, 33135)) (intervals := [(33280, 33281), (33375, 33382), (33536, 33544), (33615, 33625), (34182, 34186), (34304, 34310), (34432, 34435), (34506, 34510), (34750, 34759), (34992, 34996), (35000, 35002), (35073, 35082), (35329, 35338), (35721, 35722)]) c0801_sound (intervals_sound_cons (I := (33280, 33281)) (intervals := [(33375, 33382), (33536, 33544), (33615, 33625), (34182, 34186), (34304, 34310), (34432, 34435), (34506, 34510), (34750, 34759), (34992, 34996), (35000, 35002), (35073, 35082), (35329, 35338), (35721, 35722)]) c0802_sound (intervals_sound_cons (I := (33375, 33382)) (intervals := [(33536, 33544), (33615, 33625), (34182, 34186), (34304, 34310), (34432, 34435), (34506, 34510), (34750, 34759), (34992, 34996), (35000, 35002), (35073, 35082), (35329, 35338), (35721, 35722)]) c0803_sound (intervals_sound_cons (I := (33536, 33544)) (intervals := [(33615, 33625), (34182, 34186), (34304, 34310), (34432, 34435), (34506, 34510), (34750, 34759), (34992, 34996), (35000, 35002), (35073, 35082), (35329, 35338), (35721, 35722)]) c0804_sound (intervals_sound_cons (I := (33615, 33625)) (intervals := [(34182, 34186), (34304, 34310), (34432, 34435), (34506, 34510), (34750, 34759), (34992, 34996), (35000, 35002), (35073, 35082), (35329, 35338), (35721, 35722)]) c0805_sound (intervals_sound_cons (I := (34182, 34186)) (intervals := [(34304, 34310), (34432, 34435), (34506, 34510), (34750, 34759), (34992, 34996), (35000, 35002), (35073, 35082), (35329, 35338), (35721, 35722)]) c0806_sound (intervals_sound_cons (I := (34304, 34310)) (intervals := [(34432, 34435), (34506, 34510), (34750, 34759), (34992, 34996), (35000, 35002), (35073, 35082), (35329, 35338), (35721, 35722)]) c0807_sound (intervals_sound_cons (I := (34432, 34435)) (intervals := [(34506, 34510), (34750, 34759), (34992, 34996), (35000, 35002), (35073, 35082), (35329, 35338), (35721, 35722)]) c0808_sound (intervals_sound_cons (I := (34506, 34510)) (intervals := [(34750, 34759), (34992, 34996), (35000, 35002), (35073, 35082), (35329, 35338), (35721, 35722)]) c0809_sound (intervals_sound_cons (I := (34750, 34759)) (intervals := [(34992, 34996), (35000, 35002), (35073, 35082), (35329, 35338), (35721, 35722)]) c0810_sound (intervals_sound_cons (I := (34992, 34996)) (intervals := [(35000, 35002), (35073, 35082), (35329, 35338), (35721, 35722)]) c0811_sound (intervals_sound_cons (I := (35000, 35002)) (intervals := [(35073, 35082), (35329, 35338), (35721, 35722)]) c0812_sound (intervals_sound_cons (I := (35073, 35082)) (intervals := [(35329, 35338), (35721, 35722)]) c0813_sound (intervals_sound_cons (I := (35329, 35338)) (intervals := [(35721, 35722)]) c0814_sound (intervals_sound_cons (I := (35721, 35722)) (intervals := []) c0815_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G050
