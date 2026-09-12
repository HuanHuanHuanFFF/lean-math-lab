import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk095
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk096
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk097
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk098

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G010
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0160_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk095.w4]
private def c0160_intervals : List NatInterval := [(6768, 6772)]

private theorem c0160_intervals_eq :
    witnessIntervals c0160_witnesses = c0160_intervals := by
  rfl

private theorem c0160_checks : witnessesCheck c0160_witnesses = true := by
  simp only [witnessesCheck, c0160_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk095.w4_check, Bool.and_self]

private theorem c0160_cover : coverCheck 6768 6772 c0160_intervals = true := by
  decide

private theorem c0160_sound : IntervalSound (6768, 6772) := by
  have hc : coverCheck 6768 6772 (witnessIntervals c0160_witnesses) = true := by
    rw [c0160_intervals_eq]
    exact c0160_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0160_witnesses)
    (lo := 6768) (hi := 6772) c0160_checks hc

private def c0161_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk095.w5, B699LowIndex.I11TerminalData.Chunk095.w6, B699LowIndex.I11TerminalData.Chunk095.w7, B699LowIndex.I11TerminalData.Chunk095.w8, B699LowIndex.I11TerminalData.Chunk095.w9]
private def c0161_intervals : List NatInterval := [(6775, 6775), (6776, 6776), (6777, 6777), (6778, 6778), (6779, 6787)]

private theorem c0161_intervals_eq :
    witnessIntervals c0161_witnesses = c0161_intervals := by
  rfl

private theorem c0161_checks : witnessesCheck c0161_witnesses = true := by
  simp only [witnessesCheck, c0161_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk095.w5_check, B699LowIndex.I11TerminalData.Chunk095.w6_check, B699LowIndex.I11TerminalData.Chunk095.w7_check, B699LowIndex.I11TerminalData.Chunk095.w8_check, B699LowIndex.I11TerminalData.Chunk095.w9_check, Bool.and_self]

private theorem c0161_cover : coverCheck 6775 6787 c0161_intervals = true := by
  decide

private theorem c0161_sound : IntervalSound (6775, 6787) := by
  have hc : coverCheck 6775 6787 (witnessIntervals c0161_witnesses) = true := by
    rw [c0161_intervals_eq]
    exact c0161_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0161_witnesses)
    (lo := 6775) (hi := 6787) c0161_checks hc

private def c0162_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk095.w10, B699LowIndex.I11TerminalData.Chunk095.w11, B699LowIndex.I11TerminalData.Chunk095.w12]
private def c0162_intervals : List NatInterval := [(6800, 6803), (6804, 6813), (6814, 6814)]

private theorem c0162_intervals_eq :
    witnessIntervals c0162_witnesses = c0162_intervals := by
  rfl

private theorem c0162_checks : witnessesCheck c0162_witnesses = true := by
  simp only [witnessesCheck, c0162_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk095.w10_check, B699LowIndex.I11TerminalData.Chunk095.w11_check, B699LowIndex.I11TerminalData.Chunk095.w12_check, Bool.and_self]

private theorem c0162_cover : coverCheck 6800 6814 c0162_intervals = true := by
  decide

private theorem c0162_sound : IntervalSound (6800, 6814) := by
  have hc : coverCheck 6800 6814 (witnessIntervals c0162_witnesses) = true := by
    rw [c0162_intervals_eq]
    exact c0162_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0162_witnesses)
    (lo := 6800) (hi := 6814) c0162_checks hc

private def c0163_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk095.w13, B699LowIndex.I11TerminalData.Chunk095.w14, B699LowIndex.I11TerminalData.Chunk095.w15, B699LowIndex.I11TerminalData.Chunk096.w0, B699LowIndex.I11TerminalData.Chunk096.w1, B699LowIndex.I11TerminalData.Chunk096.w2]
private def c0163_intervals : List NatInterval := [(6816, 6816), (6817, 6817), (6818, 6818), (6819, 6819), (6820, 6820), (6821, 6821)]

private theorem c0163_intervals_eq :
    witnessIntervals c0163_witnesses = c0163_intervals := by
  rfl

private theorem c0163_checks : witnessesCheck c0163_witnesses = true := by
  simp only [witnessesCheck, c0163_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk095.w13_check, B699LowIndex.I11TerminalData.Chunk095.w14_check, B699LowIndex.I11TerminalData.Chunk095.w15_check, B699LowIndex.I11TerminalData.Chunk096.w0_check, B699LowIndex.I11TerminalData.Chunk096.w1_check, B699LowIndex.I11TerminalData.Chunk096.w2_check, Bool.and_self]

private theorem c0163_cover : coverCheck 6816 6821 c0163_intervals = true := by
  decide

private theorem c0163_sound : IntervalSound (6816, 6821) := by
  have hc : coverCheck 6816 6821 (witnessIntervals c0163_witnesses) = true := by
    rw [c0163_intervals_eq]
    exact c0163_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0163_witnesses)
    (lo := 6816) (hi := 6821) c0163_checks hc

private def c0164_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk096.w3]
private def c0164_intervals : List NatInterval := [(6825, 6826)]

private theorem c0164_intervals_eq :
    witnessIntervals c0164_witnesses = c0164_intervals := by
  rfl

private theorem c0164_checks : witnessesCheck c0164_witnesses = true := by
  simp only [witnessesCheck, c0164_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk096.w3_check, Bool.and_self]

private theorem c0164_cover : coverCheck 6825 6826 c0164_intervals = true := by
  decide

private theorem c0164_sound : IntervalSound (6825, 6826) := by
  have hc : coverCheck 6825 6826 (witnessIntervals c0164_witnesses) = true := by
    rw [c0164_intervals_eq]
    exact c0164_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0164_witnesses)
    (lo := 6825) (hi := 6826) c0164_checks hc

private def c0165_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk096.w4, B699LowIndex.I11TerminalData.Chunk096.w5]
private def c0165_intervals : List NatInterval := [(6831, 6839), (6840, 6841)]

private theorem c0165_intervals_eq :
    witnessIntervals c0165_witnesses = c0165_intervals := by
  rfl

private theorem c0165_checks : witnessesCheck c0165_witnesses = true := by
  simp only [witnessesCheck, c0165_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk096.w4_check, B699LowIndex.I11TerminalData.Chunk096.w5_check, Bool.and_self]

private theorem c0165_cover : coverCheck 6831 6841 c0165_intervals = true := by
  decide

private theorem c0165_sound : IntervalSound (6831, 6841) := by
  have hc : coverCheck 6831 6841 (witnessIntervals c0165_witnesses) = true := by
    rw [c0165_intervals_eq]
    exact c0165_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0165_witnesses)
    (lo := 6831) (hi := 6841) c0165_checks hc

private def c0166_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk096.w6, B699LowIndex.I11TerminalData.Chunk096.w7, B699LowIndex.I11TerminalData.Chunk096.w8, B699LowIndex.I11TerminalData.Chunk096.w9, B699LowIndex.I11TerminalData.Chunk096.w10, B699LowIndex.I11TerminalData.Chunk096.w11, B699LowIndex.I11TerminalData.Chunk096.w12, B699LowIndex.I11TerminalData.Chunk096.w13]
private def c0166_intervals : List NatInterval := [(6850, 6851), (6852, 6852), (6853, 6853), (6854, 6854), (6855, 6855), (6856, 6856), (6857, 6867), (6868, 6870)]

private theorem c0166_intervals_eq :
    witnessIntervals c0166_witnesses = c0166_intervals := by
  rfl

private theorem c0166_checks : witnessesCheck c0166_witnesses = true := by
  simp only [witnessesCheck, c0166_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk096.w6_check, B699LowIndex.I11TerminalData.Chunk096.w7_check, B699LowIndex.I11TerminalData.Chunk096.w8_check, B699LowIndex.I11TerminalData.Chunk096.w9_check, B699LowIndex.I11TerminalData.Chunk096.w10_check, B699LowIndex.I11TerminalData.Chunk096.w11_check, B699LowIndex.I11TerminalData.Chunk096.w12_check, B699LowIndex.I11TerminalData.Chunk096.w13_check, Bool.and_self]

private theorem c0166_cover : coverCheck 6850 6870 c0166_intervals = true := by
  decide

private theorem c0166_sound : IntervalSound (6850, 6870) := by
  have hc : coverCheck 6850 6870 (witnessIntervals c0166_witnesses) = true := by
    rw [c0166_intervals_eq]
    exact c0166_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0166_witnesses)
    (lo := 6850) (hi := 6870) c0166_checks hc

private def c0167_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk096.w14, B699LowIndex.I11TerminalData.Chunk096.w15, B699LowIndex.I11TerminalData.Chunk097.w0]
private def c0167_intervals : List NatInterval := [(6880, 6881), (6882, 6882), (6883, 6890)]

private theorem c0167_intervals_eq :
    witnessIntervals c0167_witnesses = c0167_intervals := by
  rfl

private theorem c0167_checks : witnessesCheck c0167_witnesses = true := by
  simp only [witnessesCheck, c0167_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk096.w14_check, B699LowIndex.I11TerminalData.Chunk096.w15_check, B699LowIndex.I11TerminalData.Chunk097.w0_check, Bool.and_self]

private theorem c0167_cover : coverCheck 6880 6890 c0167_intervals = true := by
  decide

private theorem c0167_sound : IntervalSound (6880, 6890) := by
  have hc : coverCheck 6880 6890 (witnessIntervals c0167_witnesses) = true := by
    rw [c0167_intervals_eq]
    exact c0167_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0167_witnesses)
    (lo := 6880) (hi := 6890) c0167_checks hc

private def c0168_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk097.w1]
private def c0168_intervals : List NatInterval := [(6900, 6906)]

private theorem c0168_intervals_eq :
    witnessIntervals c0168_witnesses = c0168_intervals := by
  rfl

private theorem c0168_checks : witnessesCheck c0168_witnesses = true := by
  simp only [witnessesCheck, c0168_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk097.w1_check, Bool.and_self]

private theorem c0168_cover : coverCheck 6900 6906 c0168_intervals = true := by
  decide

private theorem c0168_sound : IntervalSound (6900, 6906) := by
  have hc : coverCheck 6900 6906 (witnessIntervals c0168_witnesses) = true := by
    rw [c0168_intervals_eq]
    exact c0168_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0168_witnesses)
    (lo := 6900) (hi := 6906) c0168_checks hc

private def c0169_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk097.w2]
private def c0169_intervals : List NatInterval := [(6909, 6910)]

private theorem c0169_intervals_eq :
    witnessIntervals c0169_witnesses = c0169_intervals := by
  rfl

private theorem c0169_checks : witnessesCheck c0169_witnesses = true := by
  simp only [witnessesCheck, c0169_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk097.w2_check, Bool.and_self]

private theorem c0169_cover : coverCheck 6909 6910 c0169_intervals = true := by
  decide

private theorem c0169_sound : IntervalSound (6909, 6910) := by
  have hc : coverCheck 6909 6910 (witnessIntervals c0169_witnesses) = true := by
    rw [c0169_intervals_eq]
    exact c0169_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0169_witnesses)
    (lo := 6909) (hi := 6910) c0169_checks hc

private def c0170_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk097.w3, B699LowIndex.I11TerminalData.Chunk097.w4]
private def c0170_intervals : List NatInterval := [(6912, 6921), (6922, 6922)]

private theorem c0170_intervals_eq :
    witnessIntervals c0170_witnesses = c0170_intervals := by
  rfl

private theorem c0170_checks : witnessesCheck c0170_witnesses = true := by
  simp only [witnessesCheck, c0170_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk097.w3_check, B699LowIndex.I11TerminalData.Chunk097.w4_check, Bool.and_self]

private theorem c0170_cover : coverCheck 6912 6922 c0170_intervals = true := by
  decide

private theorem c0170_sound : IntervalSound (6912, 6922) := by
  have hc : coverCheck 6912 6922 (witnessIntervals c0170_witnesses) = true := by
    rw [c0170_intervals_eq]
    exact c0170_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0170_witnesses)
    (lo := 6912) (hi := 6922) c0170_checks hc

private def c0171_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk097.w5, B699LowIndex.I11TerminalData.Chunk097.w6, B699LowIndex.I11TerminalData.Chunk097.w7, B699LowIndex.I11TerminalData.Chunk097.w8, B699LowIndex.I11TerminalData.Chunk097.w9, B699LowIndex.I11TerminalData.Chunk097.w10, B699LowIndex.I11TerminalData.Chunk097.w11, B699LowIndex.I11TerminalData.Chunk097.w12]
private def c0171_intervals : List NatInterval := [(6928, 6928), (6929, 6929), (6930, 6930), (6931, 6931), (6932, 6932), (6933, 6933), (6934, 6934), (6935, 6935)]

private theorem c0171_intervals_eq :
    witnessIntervals c0171_witnesses = c0171_intervals := by
  rfl

private theorem c0171_checks : witnessesCheck c0171_witnesses = true := by
  simp only [witnessesCheck, c0171_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk097.w5_check, B699LowIndex.I11TerminalData.Chunk097.w6_check, B699LowIndex.I11TerminalData.Chunk097.w7_check, B699LowIndex.I11TerminalData.Chunk097.w8_check, B699LowIndex.I11TerminalData.Chunk097.w9_check, B699LowIndex.I11TerminalData.Chunk097.w10_check, B699LowIndex.I11TerminalData.Chunk097.w11_check, B699LowIndex.I11TerminalData.Chunk097.w12_check, Bool.and_self]

private theorem c0171_cover : coverCheck 6928 6935 c0171_intervals = true := by
  decide

private theorem c0171_sound : IntervalSound (6928, 6935) := by
  have hc : coverCheck 6928 6935 (witnessIntervals c0171_witnesses) = true := by
    rw [c0171_intervals_eq]
    exact c0171_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0171_witnesses)
    (lo := 6928) (hi := 6935) c0171_checks hc

private def c0172_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk097.w13, B699LowIndex.I11TerminalData.Chunk097.w14, B699LowIndex.I11TerminalData.Chunk097.w15, B699LowIndex.I11TerminalData.Chunk098.w0]
private def c0172_intervals : List NatInterval := [(6944, 6944), (6945, 6945), (6946, 6946), (6947, 6954)]

private theorem c0172_intervals_eq :
    witnessIntervals c0172_witnesses = c0172_intervals := by
  rfl

private theorem c0172_checks : witnessesCheck c0172_witnesses = true := by
  simp only [witnessesCheck, c0172_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk097.w13_check, B699LowIndex.I11TerminalData.Chunk097.w14_check, B699LowIndex.I11TerminalData.Chunk097.w15_check, B699LowIndex.I11TerminalData.Chunk098.w0_check, Bool.and_self]

private theorem c0172_cover : coverCheck 6944 6954 c0172_intervals = true := by
  decide

private theorem c0172_sound : IntervalSound (6944, 6954) := by
  have hc : coverCheck 6944 6954 (witnessIntervals c0172_witnesses) = true := by
    rw [c0172_intervals_eq]
    exact c0172_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0172_witnesses)
    (lo := 6944) (hi := 6954) c0172_checks hc

private def c0173_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk098.w1, B699LowIndex.I11TerminalData.Chunk098.w2, B699LowIndex.I11TerminalData.Chunk098.w3]
private def c0173_intervals : List NatInterval := [(6958, 6959), (6960, 6969), (6970, 6970)]

private theorem c0173_intervals_eq :
    witnessIntervals c0173_witnesses = c0173_intervals := by
  rfl

private theorem c0173_checks : witnessesCheck c0173_witnesses = true := by
  simp only [witnessesCheck, c0173_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk098.w1_check, B699LowIndex.I11TerminalData.Chunk098.w2_check, B699LowIndex.I11TerminalData.Chunk098.w3_check, Bool.and_self]

private theorem c0173_cover : coverCheck 6958 6970 c0173_intervals = true := by
  decide

private theorem c0173_sound : IntervalSound (6958, 6970) := by
  have hc : coverCheck 6958 6970 (witnessIntervals c0173_witnesses) = true := by
    rw [c0173_intervals_eq]
    exact c0173_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0173_witnesses)
    (lo := 6958) (hi := 6970) c0173_checks hc

private def c0174_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk098.w4, B699LowIndex.I11TerminalData.Chunk098.w5]
private def c0174_intervals : List NatInterval := [(6975, 6981), (6982, 6985)]

private theorem c0174_intervals_eq :
    witnessIntervals c0174_witnesses = c0174_intervals := by
  rfl

private theorem c0174_checks : witnessesCheck c0174_witnesses = true := by
  simp only [witnessesCheck, c0174_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk098.w4_check, B699LowIndex.I11TerminalData.Chunk098.w5_check, Bool.and_self]

private theorem c0174_cover : coverCheck 6975 6985 c0174_intervals = true := by
  decide

private theorem c0174_sound : IntervalSound (6975, 6985) := by
  have hc : coverCheck 6975 6985 (witnessIntervals c0174_witnesses) = true := by
    rw [c0174_intervals_eq]
    exact c0174_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0174_witnesses)
    (lo := 6975) (hi := 6985) c0174_checks hc

private def c0175_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk098.w6, B699LowIndex.I11TerminalData.Chunk098.w7]
private def c0175_intervals : List NatInterval := [(6993, 7001), (7002, 7003)]

private theorem c0175_intervals_eq :
    witnessIntervals c0175_witnesses = c0175_intervals := by
  rfl

private theorem c0175_checks : witnessesCheck c0175_witnesses = true := by
  simp only [witnessesCheck, c0175_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk098.w6_check, B699LowIndex.I11TerminalData.Chunk098.w7_check, Bool.and_self]

private theorem c0175_cover : coverCheck 6993 7003 c0175_intervals = true := by
  decide

private theorem c0175_sound : IntervalSound (6993, 7003) := by
  have hc : coverCheck 6993 7003 (witnessIntervals c0175_witnesses) = true := by
    rw [c0175_intervals_eq]
    exact c0175_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0175_witnesses)
    (lo := 6993) (hi := 7003) c0175_checks hc

def intervals : List NatInterval := [(6768, 6772), (6775, 6787), (6800, 6814), (6816, 6821), (6825, 6826), (6831, 6841), (6850, 6870), (6880, 6890), (6900, 6906), (6909, 6910), (6912, 6922), (6928, 6935), (6944, 6954), (6958, 6970), (6975, 6985), (6993, 7003)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (6768, 6772)) (intervals := [(6775, 6787), (6800, 6814), (6816, 6821), (6825, 6826), (6831, 6841), (6850, 6870), (6880, 6890), (6900, 6906), (6909, 6910), (6912, 6922), (6928, 6935), (6944, 6954), (6958, 6970), (6975, 6985), (6993, 7003)]) c0160_sound (intervals_sound_cons (I := (6775, 6787)) (intervals := [(6800, 6814), (6816, 6821), (6825, 6826), (6831, 6841), (6850, 6870), (6880, 6890), (6900, 6906), (6909, 6910), (6912, 6922), (6928, 6935), (6944, 6954), (6958, 6970), (6975, 6985), (6993, 7003)]) c0161_sound (intervals_sound_cons (I := (6800, 6814)) (intervals := [(6816, 6821), (6825, 6826), (6831, 6841), (6850, 6870), (6880, 6890), (6900, 6906), (6909, 6910), (6912, 6922), (6928, 6935), (6944, 6954), (6958, 6970), (6975, 6985), (6993, 7003)]) c0162_sound (intervals_sound_cons (I := (6816, 6821)) (intervals := [(6825, 6826), (6831, 6841), (6850, 6870), (6880, 6890), (6900, 6906), (6909, 6910), (6912, 6922), (6928, 6935), (6944, 6954), (6958, 6970), (6975, 6985), (6993, 7003)]) c0163_sound (intervals_sound_cons (I := (6825, 6826)) (intervals := [(6831, 6841), (6850, 6870), (6880, 6890), (6900, 6906), (6909, 6910), (6912, 6922), (6928, 6935), (6944, 6954), (6958, 6970), (6975, 6985), (6993, 7003)]) c0164_sound (intervals_sound_cons (I := (6831, 6841)) (intervals := [(6850, 6870), (6880, 6890), (6900, 6906), (6909, 6910), (6912, 6922), (6928, 6935), (6944, 6954), (6958, 6970), (6975, 6985), (6993, 7003)]) c0165_sound (intervals_sound_cons (I := (6850, 6870)) (intervals := [(6880, 6890), (6900, 6906), (6909, 6910), (6912, 6922), (6928, 6935), (6944, 6954), (6958, 6970), (6975, 6985), (6993, 7003)]) c0166_sound (intervals_sound_cons (I := (6880, 6890)) (intervals := [(6900, 6906), (6909, 6910), (6912, 6922), (6928, 6935), (6944, 6954), (6958, 6970), (6975, 6985), (6993, 7003)]) c0167_sound (intervals_sound_cons (I := (6900, 6906)) (intervals := [(6909, 6910), (6912, 6922), (6928, 6935), (6944, 6954), (6958, 6970), (6975, 6985), (6993, 7003)]) c0168_sound (intervals_sound_cons (I := (6909, 6910)) (intervals := [(6912, 6922), (6928, 6935), (6944, 6954), (6958, 6970), (6975, 6985), (6993, 7003)]) c0169_sound (intervals_sound_cons (I := (6912, 6922)) (intervals := [(6928, 6935), (6944, 6954), (6958, 6970), (6975, 6985), (6993, 7003)]) c0170_sound (intervals_sound_cons (I := (6928, 6935)) (intervals := [(6944, 6954), (6958, 6970), (6975, 6985), (6993, 7003)]) c0171_sound (intervals_sound_cons (I := (6944, 6954)) (intervals := [(6958, 6970), (6975, 6985), (6993, 7003)]) c0172_sound (intervals_sound_cons (I := (6958, 6970)) (intervals := [(6975, 6985), (6993, 7003)]) c0173_sound (intervals_sound_cons (I := (6975, 6985)) (intervals := [(6993, 7003)]) c0174_sound (intervals_sound_cons (I := (6993, 7003)) (intervals := []) c0175_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G010
