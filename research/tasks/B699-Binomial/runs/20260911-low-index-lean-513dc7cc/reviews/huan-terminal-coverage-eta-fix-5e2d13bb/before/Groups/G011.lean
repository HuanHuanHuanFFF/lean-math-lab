import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk098
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk099
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk100
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk101

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G011
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0176_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk098.w8, B699LowIndex.I11TerminalData.Chunk098.w9, B699LowIndex.I11TerminalData.Chunk098.w10]
private def c0176_intervals : List NatInterval := [(7007, 7011), (7012, 7012), (7013, 7017)]

private theorem c0176_intervals_eq :
    witnessIntervals c0176_witnesses = c0176_intervals := by
  rfl

private theorem c0176_checks : witnessesCheck c0176_witnesses = true := by
  simp only [witnessesCheck, c0176_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk098.w8_check, B699LowIndex.I11TerminalData.Chunk098.w9_check, B699LowIndex.I11TerminalData.Chunk098.w10_check, Bool.and_self]

private theorem c0176_cover : coverCheck 7007 7017 c0176_intervals = true := by
  decide

private theorem c0176_sound : IntervalSound (7007, 7017) := by
  have hc : coverCheck 7007 7017 (witnessIntervals c0176_witnesses) = true := by
    rw [c0176_intervals_eq]
    exact c0176_cover
  exact interval_sound_of_witness_checks (witnesses := c0176_witnesses)
    (lo := 7007) (hi := 7017) c0176_checks hc

private def c0177_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk098.w11, B699LowIndex.I11TerminalData.Chunk098.w12]
private def c0177_intervals : List NatInterval := [(7024, 7029), (7030, 7034)]

private theorem c0177_intervals_eq :
    witnessIntervals c0177_witnesses = c0177_intervals := by
  rfl

private theorem c0177_checks : witnessesCheck c0177_witnesses = true := by
  simp only [witnessesCheck, c0177_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk098.w11_check, B699LowIndex.I11TerminalData.Chunk098.w12_check, Bool.and_self]

private theorem c0177_cover : coverCheck 7024 7034 c0177_intervals = true := by
  decide

private theorem c0177_sound : IntervalSound (7024, 7034) := by
  have hc : coverCheck 7024 7034 (witnessIntervals c0177_witnesses) = true := by
    rw [c0177_intervals_eq]
    exact c0177_cover
  exact interval_sound_of_witness_checks (witnesses := c0177_witnesses)
    (lo := 7024) (hi := 7034) c0177_checks hc

private def c0178_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk098.w13, B699LowIndex.I11TerminalData.Chunk098.w14, B699LowIndex.I11TerminalData.Chunk098.w15, B699LowIndex.I11TerminalData.Chunk099.w0, B699LowIndex.I11TerminalData.Chunk099.w1]
private def c0178_intervals : List NatInterval := [(7047, 7053), (7054, 7054), (7055, 7055), (7056, 7056), (7057, 7066)]

private theorem c0178_intervals_eq :
    witnessIntervals c0178_witnesses = c0178_intervals := by
  rfl

private theorem c0178_checks : witnessesCheck c0178_witnesses = true := by
  simp only [witnessesCheck, c0178_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk098.w13_check, B699LowIndex.I11TerminalData.Chunk098.w14_check, B699LowIndex.I11TerminalData.Chunk098.w15_check, B699LowIndex.I11TerminalData.Chunk099.w0_check, B699LowIndex.I11TerminalData.Chunk099.w1_check, Bool.and_self]

private theorem c0178_cover : coverCheck 7047 7066 c0178_intervals = true := by
  decide

private theorem c0178_sound : IntervalSound (7047, 7066) := by
  have hc : coverCheck 7047 7066 (witnessIntervals c0178_witnesses) = true := by
    rw [c0178_intervals_eq]
    exact c0178_cover
  exact interval_sound_of_witness_checks (witnesses := c0178_witnesses)
    (lo := 7047) (hi := 7066) c0178_checks hc

private def c0179_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk099.w2, B699LowIndex.I11TerminalData.Chunk099.w3]
private def c0179_intervals : List NatInterval := [(7074, 7079), (7080, 7084)]

private theorem c0179_intervals_eq :
    witnessIntervals c0179_witnesses = c0179_intervals := by
  rfl

private theorem c0179_checks : witnessesCheck c0179_witnesses = true := by
  simp only [witnessesCheck, c0179_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk099.w2_check, B699LowIndex.I11TerminalData.Chunk099.w3_check, Bool.and_self]

private theorem c0179_cover : coverCheck 7074 7084 c0179_intervals = true := by
  decide

private theorem c0179_sound : IntervalSound (7074, 7084) := by
  have hc : coverCheck 7074 7084 (witnessIntervals c0179_witnesses) = true := by
    rw [c0179_intervals_eq]
    exact c0179_cover
  exact interval_sound_of_witness_checks (witnesses := c0179_witnesses)
    (lo := 7074) (hi := 7084) c0179_checks hc

private def c0180_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk099.w4, B699LowIndex.I11TerminalData.Chunk099.w5, B699LowIndex.I11TerminalData.Chunk099.w6, B699LowIndex.I11TerminalData.Chunk099.w7]
private def c0180_intervals : List NatInterval := [(7101, 7101), (7102, 7102), (7103, 7113), (7114, 7114)]

private theorem c0180_intervals_eq :
    witnessIntervals c0180_witnesses = c0180_intervals := by
  rfl

private theorem c0180_checks : witnessesCheck c0180_witnesses = true := by
  simp only [witnessesCheck, c0180_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk099.w4_check, B699LowIndex.I11TerminalData.Chunk099.w5_check, B699LowIndex.I11TerminalData.Chunk099.w6_check, B699LowIndex.I11TerminalData.Chunk099.w7_check, Bool.and_self]

private theorem c0180_cover : coverCheck 7101 7114 c0180_intervals = true := by
  decide

private theorem c0180_sound : IntervalSound (7101, 7114) := by
  have hc : coverCheck 7101 7114 (witnessIntervals c0180_witnesses) = true := by
    rw [c0180_intervals_eq]
    exact c0180_cover
  exact interval_sound_of_witness_checks (witnesses := c0180_witnesses)
    (lo := 7101) (hi := 7114) c0180_checks hc

private def c0181_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk099.w8, B699LowIndex.I11TerminalData.Chunk099.w9]
private def c0181_intervals : List NatInterval := [(7125, 7131), (7132, 7138)]

private theorem c0181_intervals_eq :
    witnessIntervals c0181_witnesses = c0181_intervals := by
  rfl

private theorem c0181_checks : witnessesCheck c0181_witnesses = true := by
  simp only [witnessesCheck, c0181_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk099.w8_check, B699LowIndex.I11TerminalData.Chunk099.w9_check, Bool.and_self]

private theorem c0181_cover : coverCheck 7125 7138 c0181_intervals = true := by
  decide

private theorem c0181_sound : IntervalSound (7125, 7138) := by
  have hc : coverCheck 7125 7138 (witnessIntervals c0181_witnesses) = true := by
    rw [c0181_intervals_eq]
    exact c0181_cover
  exact interval_sound_of_witness_checks (witnesses := c0181_witnesses)
    (lo := 7125) (hi := 7138) c0181_checks hc

private def c0182_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk099.w10, B699LowIndex.I11TerminalData.Chunk099.w11]
private def c0182_intervals : List NatInterval := [(7152, 7161), (7162, 7164)]

private theorem c0182_intervals_eq :
    witnessIntervals c0182_witnesses = c0182_intervals := by
  rfl

private theorem c0182_checks : witnessesCheck c0182_witnesses = true := by
  simp only [witnessesCheck, c0182_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk099.w10_check, B699LowIndex.I11TerminalData.Chunk099.w11_check, Bool.and_self]

private theorem c0182_cover : coverCheck 7152 7164 c0182_intervals = true := by
  decide

private theorem c0182_sound : IntervalSound (7152, 7164) := by
  have hc : coverCheck 7152 7164 (witnessIntervals c0182_witnesses) = true := by
    rw [c0182_intervals_eq]
    exact c0182_cover
  exact interval_sound_of_witness_checks (witnesses := c0182_witnesses)
    (lo := 7152) (hi := 7164) c0182_checks hc

private def c0183_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk099.w12, B699LowIndex.I11TerminalData.Chunk099.w13, B699LowIndex.I11TerminalData.Chunk099.w14]
private def c0183_intervals : List NatInterval := [(7175, 7175), (7176, 7176), (7177, 7178)]

private theorem c0183_intervals_eq :
    witnessIntervals c0183_witnesses = c0183_intervals := by
  rfl

private theorem c0183_checks : witnessesCheck c0183_witnesses = true := by
  simp only [witnessesCheck, c0183_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk099.w12_check, B699LowIndex.I11TerminalData.Chunk099.w13_check, B699LowIndex.I11TerminalData.Chunk099.w14_check, Bool.and_self]

private theorem c0183_cover : coverCheck 7175 7178 c0183_intervals = true := by
  decide

private theorem c0183_sound : IntervalSound (7175, 7178) := by
  have hc : coverCheck 7175 7178 (witnessIntervals c0183_witnesses) = true := by
    rw [c0183_intervals_eq]
    exact c0183_cover
  exact interval_sound_of_witness_checks (witnesses := c0183_witnesses)
    (lo := 7175) (hi := 7178) c0183_checks hc

private def c0184_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk099.w15, B699LowIndex.I11TerminalData.Chunk100.w0]
private def c0184_intervals : List NatInterval := [(7182, 7187), (7188, 7192)]

private theorem c0184_intervals_eq :
    witnessIntervals c0184_witnesses = c0184_intervals := by
  rfl

private theorem c0184_checks : witnessesCheck c0184_witnesses = true := by
  simp only [witnessesCheck, c0184_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk099.w15_check, B699LowIndex.I11TerminalData.Chunk100.w0_check, Bool.and_self]

private theorem c0184_cover : coverCheck 7182 7192 c0184_intervals = true := by
  decide

private theorem c0184_sound : IntervalSound (7182, 7192) := by
  have hc : coverCheck 7182 7192 (witnessIntervals c0184_witnesses) = true := by
    rw [c0184_intervals_eq]
    exact c0184_cover
  exact interval_sound_of_witness_checks (witnesses := c0184_witnesses)
    (lo := 7182) (hi := 7192) c0184_checks hc

private def c0185_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk100.w1, B699LowIndex.I11TerminalData.Chunk100.w2, B699LowIndex.I11TerminalData.Chunk100.w3, B699LowIndex.I11TerminalData.Chunk100.w4, B699LowIndex.I11TerminalData.Chunk100.w5]
private def c0185_intervals : List NatInterval := [(7200, 7203), (7204, 7204), (7205, 7205), (7206, 7206), (7207, 7213)]

private theorem c0185_intervals_eq :
    witnessIntervals c0185_witnesses = c0185_intervals := by
  rfl

private theorem c0185_checks : witnessesCheck c0185_witnesses = true := by
  simp only [witnessesCheck, c0185_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk100.w1_check, B699LowIndex.I11TerminalData.Chunk100.w2_check, B699LowIndex.I11TerminalData.Chunk100.w3_check, B699LowIndex.I11TerminalData.Chunk100.w4_check, B699LowIndex.I11TerminalData.Chunk100.w5_check, Bool.and_self]

private theorem c0185_cover : coverCheck 7200 7213 c0185_intervals = true := by
  decide

private theorem c0185_sound : IntervalSound (7200, 7213) := by
  have hc : coverCheck 7200 7213 (witnessIntervals c0185_witnesses) = true := by
    rw [c0185_intervals_eq]
    exact c0185_cover
  exact interval_sound_of_witness_checks (witnesses := c0185_witnesses)
    (lo := 7200) (hi := 7213) c0185_checks hc

private def c0186_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk100.w6]
private def c0186_intervals : List NatInterval := [(7216, 7219)]

private theorem c0186_intervals_eq :
    witnessIntervals c0186_witnesses = c0186_intervals := by
  rfl

private theorem c0186_checks : witnessesCheck c0186_witnesses = true := by
  simp only [witnessesCheck, c0186_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk100.w6_check, Bool.and_self]

private theorem c0186_cover : coverCheck 7216 7219 c0186_intervals = true := by
  decide

private theorem c0186_sound : IntervalSound (7216, 7219) := by
  have hc : coverCheck 7216 7219 (witnessIntervals c0186_witnesses) = true := by
    rw [c0186_intervals_eq]
    exact c0186_cover
  exact interval_sound_of_witness_checks (witnesses := c0186_witnesses)
    (lo := 7216) (hi := 7219) c0186_checks hc

private def c0187_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk100.w7]
private def c0187_intervals : List NatInterval := [(7225, 7226)]

private theorem c0187_intervals_eq :
    witnessIntervals c0187_witnesses = c0187_intervals := by
  rfl

private theorem c0187_checks : witnessesCheck c0187_witnesses = true := by
  simp only [witnessesCheck, c0187_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk100.w7_check, Bool.and_self]

private theorem c0187_cover : coverCheck 7225 7226 c0187_intervals = true := by
  decide

private theorem c0187_sound : IntervalSound (7225, 7226) := by
  have hc : coverCheck 7225 7226 (witnessIntervals c0187_witnesses) = true := by
    rw [c0187_intervals_eq]
    exact c0187_cover
  exact interval_sound_of_witness_checks (witnesses := c0187_witnesses)
    (lo := 7225) (hi := 7226) c0187_checks hc

private def c0188_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk100.w8, B699LowIndex.I11TerminalData.Chunk100.w9]
private def c0188_intervals : List NatInterval := [(7232, 7239), (7240, 7242)]

private theorem c0188_intervals_eq :
    witnessIntervals c0188_witnesses = c0188_intervals := by
  rfl

private theorem c0188_checks : witnessesCheck c0188_witnesses = true := by
  simp only [witnessesCheck, c0188_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk100.w8_check, B699LowIndex.I11TerminalData.Chunk100.w9_check, Bool.and_self]

private theorem c0188_cover : coverCheck 7232 7242 c0188_intervals = true := by
  decide

private theorem c0188_sound : IntervalSound (7232, 7242) := by
  have hc : coverCheck 7232 7242 (witnessIntervals c0188_witnesses) = true := by
    rw [c0188_intervals_eq]
    exact c0188_cover
  exact interval_sound_of_witness_checks (witnesses := c0188_witnesses)
    (lo := 7232) (hi := 7242) c0188_checks hc

private def c0189_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk100.w10, B699LowIndex.I11TerminalData.Chunk100.w11]
private def c0189_intervals : List NatInterval := [(7250, 7257), (7258, 7260)]

private theorem c0189_intervals_eq :
    witnessIntervals c0189_witnesses = c0189_intervals := by
  rfl

private theorem c0189_checks : witnessesCheck c0189_witnesses = true := by
  simp only [witnessesCheck, c0189_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk100.w10_check, B699LowIndex.I11TerminalData.Chunk100.w11_check, Bool.and_self]

private theorem c0189_cover : coverCheck 7250 7260 c0189_intervals = true := by
  decide

private theorem c0189_sound : IntervalSound (7250, 7260) := by
  have hc : coverCheck 7250 7260 (witnessIntervals c0189_witnesses) = true := by
    rw [c0189_intervals_eq]
    exact c0189_cover
  exact interval_sound_of_witness_checks (witnesses := c0189_witnesses)
    (lo := 7250) (hi := 7260) c0189_checks hc

private def c0190_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk100.w12, B699LowIndex.I11TerminalData.Chunk100.w13, B699LowIndex.I11TerminalData.Chunk100.w14, B699LowIndex.I11TerminalData.Chunk100.w15, B699LowIndex.I11TerminalData.Chunk101.w0, B699LowIndex.I11TerminalData.Chunk101.w1, B699LowIndex.I11TerminalData.Chunk101.w2, B699LowIndex.I11TerminalData.Chunk101.w3, B699LowIndex.I11TerminalData.Chunk101.w4, B699LowIndex.I11TerminalData.Chunk101.w5]
private def c0190_intervals : List NatInterval := [(7264, 7264), (7265, 7265), (7266, 7266), (7267, 7267), (7268, 7268), (7269, 7269), (7270, 7270), (7271, 7271), (7272, 7272), (7273, 7273)]

private theorem c0190_intervals_eq :
    witnessIntervals c0190_witnesses = c0190_intervals := by
  rfl

private theorem c0190_checks : witnessesCheck c0190_witnesses = true := by
  simp only [witnessesCheck, c0190_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk100.w12_check, B699LowIndex.I11TerminalData.Chunk100.w13_check, B699LowIndex.I11TerminalData.Chunk100.w14_check, B699LowIndex.I11TerminalData.Chunk100.w15_check, B699LowIndex.I11TerminalData.Chunk101.w0_check, B699LowIndex.I11TerminalData.Chunk101.w1_check, B699LowIndex.I11TerminalData.Chunk101.w2_check, B699LowIndex.I11TerminalData.Chunk101.w3_check, B699LowIndex.I11TerminalData.Chunk101.w4_check, B699LowIndex.I11TerminalData.Chunk101.w5_check, Bool.and_self]

private theorem c0190_cover : coverCheck 7264 7273 c0190_intervals = true := by
  decide

private theorem c0190_sound : IntervalSound (7264, 7273) := by
  have hc : coverCheck 7264 7273 (witnessIntervals c0190_witnesses) = true := by
    rw [c0190_intervals_eq]
    exact c0190_cover
  exact interval_sound_of_witness_checks (witnesses := c0190_witnesses)
    (lo := 7264) (hi := 7273) c0190_checks hc

private def c0191_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk101.w6, B699LowIndex.I11TerminalData.Chunk101.w7, B699LowIndex.I11TerminalData.Chunk101.w8, B699LowIndex.I11TerminalData.Chunk101.w9]
private def c0191_intervals : List NatInterval := [(7280, 7280), (7281, 7281), (7282, 7282), (7283, 7285)]

private theorem c0191_intervals_eq :
    witnessIntervals c0191_witnesses = c0191_intervals := by
  rfl

private theorem c0191_checks : witnessesCheck c0191_witnesses = true := by
  simp only [witnessesCheck, c0191_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk101.w6_check, B699LowIndex.I11TerminalData.Chunk101.w7_check, B699LowIndex.I11TerminalData.Chunk101.w8_check, B699LowIndex.I11TerminalData.Chunk101.w9_check, Bool.and_self]

private theorem c0191_cover : coverCheck 7280 7285 c0191_intervals = true := by
  decide

private theorem c0191_sound : IntervalSound (7280, 7285) := by
  have hc : coverCheck 7280 7285 (witnessIntervals c0191_witnesses) = true := by
    rw [c0191_intervals_eq]
    exact c0191_cover
  exact interval_sound_of_witness_checks (witnesses := c0191_witnesses)
    (lo := 7280) (hi := 7285) c0191_checks hc

def intervals : List NatInterval := [(7007, 7017), (7024, 7034), (7047, 7066), (7074, 7084), (7101, 7114), (7125, 7138), (7152, 7164), (7175, 7178), (7182, 7192), (7200, 7213), (7216, 7219), (7225, 7226), (7232, 7242), (7250, 7260), (7264, 7273), (7280, 7285)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (7007, 7017)) (intervals := [(7024, 7034), (7047, 7066), (7074, 7084), (7101, 7114), (7125, 7138), (7152, 7164), (7175, 7178), (7182, 7192), (7200, 7213), (7216, 7219), (7225, 7226), (7232, 7242), (7250, 7260), (7264, 7273), (7280, 7285)]) c0176_sound (intervals_sound_cons (I := (7024, 7034)) (intervals := [(7047, 7066), (7074, 7084), (7101, 7114), (7125, 7138), (7152, 7164), (7175, 7178), (7182, 7192), (7200, 7213), (7216, 7219), (7225, 7226), (7232, 7242), (7250, 7260), (7264, 7273), (7280, 7285)]) c0177_sound (intervals_sound_cons (I := (7047, 7066)) (intervals := [(7074, 7084), (7101, 7114), (7125, 7138), (7152, 7164), (7175, 7178), (7182, 7192), (7200, 7213), (7216, 7219), (7225, 7226), (7232, 7242), (7250, 7260), (7264, 7273), (7280, 7285)]) c0178_sound (intervals_sound_cons (I := (7074, 7084)) (intervals := [(7101, 7114), (7125, 7138), (7152, 7164), (7175, 7178), (7182, 7192), (7200, 7213), (7216, 7219), (7225, 7226), (7232, 7242), (7250, 7260), (7264, 7273), (7280, 7285)]) c0179_sound (intervals_sound_cons (I := (7101, 7114)) (intervals := [(7125, 7138), (7152, 7164), (7175, 7178), (7182, 7192), (7200, 7213), (7216, 7219), (7225, 7226), (7232, 7242), (7250, 7260), (7264, 7273), (7280, 7285)]) c0180_sound (intervals_sound_cons (I := (7125, 7138)) (intervals := [(7152, 7164), (7175, 7178), (7182, 7192), (7200, 7213), (7216, 7219), (7225, 7226), (7232, 7242), (7250, 7260), (7264, 7273), (7280, 7285)]) c0181_sound (intervals_sound_cons (I := (7152, 7164)) (intervals := [(7175, 7178), (7182, 7192), (7200, 7213), (7216, 7219), (7225, 7226), (7232, 7242), (7250, 7260), (7264, 7273), (7280, 7285)]) c0182_sound (intervals_sound_cons (I := (7175, 7178)) (intervals := [(7182, 7192), (7200, 7213), (7216, 7219), (7225, 7226), (7232, 7242), (7250, 7260), (7264, 7273), (7280, 7285)]) c0183_sound (intervals_sound_cons (I := (7182, 7192)) (intervals := [(7200, 7213), (7216, 7219), (7225, 7226), (7232, 7242), (7250, 7260), (7264, 7273), (7280, 7285)]) c0184_sound (intervals_sound_cons (I := (7200, 7213)) (intervals := [(7216, 7219), (7225, 7226), (7232, 7242), (7250, 7260), (7264, 7273), (7280, 7285)]) c0185_sound (intervals_sound_cons (I := (7216, 7219)) (intervals := [(7225, 7226), (7232, 7242), (7250, 7260), (7264, 7273), (7280, 7285)]) c0186_sound (intervals_sound_cons (I := (7225, 7226)) (intervals := [(7232, 7242), (7250, 7260), (7264, 7273), (7280, 7285)]) c0187_sound (intervals_sound_cons (I := (7232, 7242)) (intervals := [(7250, 7260), (7264, 7273), (7280, 7285)]) c0188_sound (intervals_sound_cons (I := (7250, 7260)) (intervals := [(7264, 7273), (7280, 7285)]) c0189_sound (intervals_sound_cons (I := (7264, 7273)) (intervals := [(7280, 7285)]) c0190_sound (intervals_sound_cons (I := (7280, 7285)) (intervals := []) c0191_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G011
