import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk244
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk245
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk246
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk247

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G063
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c1008_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk244.w14]
private def c1008_intervals : List NatInterval := [(175625, 175626)]

private theorem c1008_intervals_eq :
    witnessIntervals c1008_witnesses = c1008_intervals := by
  rfl

private theorem c1008_checks : witnessesCheck c1008_witnesses = true := by
  simp only [witnessesCheck, c1008_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk244.w14_check, Bool.and_self]

private theorem c1008_cover : coverCheck 175625 175626 c1008_intervals = true := by
  decide

private theorem c1008_sound : IntervalSound (175625, 175626) := by
  have hc : coverCheck 175625 175626 (witnessIntervals c1008_witnesses) = true := by
    rw [c1008_intervals_eq]
    exact c1008_cover
  exact interval_sound_of_witness_checks (witnesses := c1008_witnesses)
    (lo := 175625) (hi := 175626) c1008_checks hc

private def c1009_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk244.w15, B699LowIndex.I11TerminalData.Chunk245.w0, B699LowIndex.I11TerminalData.Chunk245.w1, B699LowIndex.I11TerminalData.Chunk245.w2, B699LowIndex.I11TerminalData.Chunk245.w3, B699LowIndex.I11TerminalData.Chunk245.w4]
private def c1009_intervals : List NatInterval := [(177152, 177152), (177153, 177153), (177154, 177154), (177155, 177155), (177156, 177156), (177157, 177157)]

private theorem c1009_intervals_eq :
    witnessIntervals c1009_witnesses = c1009_intervals := by
  rfl

private theorem c1009_checks : witnessesCheck c1009_witnesses = true := by
  simp only [witnessesCheck, c1009_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk244.w15_check, B699LowIndex.I11TerminalData.Chunk245.w0_check, B699LowIndex.I11TerminalData.Chunk245.w1_check, B699LowIndex.I11TerminalData.Chunk245.w2_check, B699LowIndex.I11TerminalData.Chunk245.w3_check, B699LowIndex.I11TerminalData.Chunk245.w4_check, Bool.and_self]

private theorem c1009_cover : coverCheck 177152 177157 c1009_intervals = true := by
  decide

private theorem c1009_sound : IntervalSound (177152, 177157) := by
  have hc : coverCheck 177152 177157 (witnessIntervals c1009_witnesses) = true := by
    rw [c1009_intervals_eq]
    exact c1009_cover
  exact interval_sound_of_witness_checks (witnesses := c1009_witnesses)
    (lo := 177152) (hi := 177157) c1009_checks hc

private def c1010_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk245.w5]
private def c1010_intervals : List NatInterval := [(177674, 177674)]

private theorem c1010_intervals_eq :
    witnessIntervals c1010_witnesses = c1010_intervals := by
  rfl

private theorem c1010_checks : witnessesCheck c1010_witnesses = true := by
  simp only [witnessesCheck, c1010_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk245.w5_check, Bool.and_self]

private theorem c1010_cover : coverCheck 177674 177674 c1010_intervals = true := by
  decide

private theorem c1010_sound : IntervalSound (177674, 177674) := by
  have hc : coverCheck 177674 177674 (witnessIntervals c1010_witnesses) = true := by
    rw [c1010_intervals_eq]
    exact c1010_cover
  exact interval_sound_of_witness_checks (witnesses := c1010_witnesses)
    (lo := 177674) (hi := 177674) c1010_checks hc

private def c1011_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk245.w6, B699LowIndex.I11TerminalData.Chunk245.w7]
private def c1011_intervals : List NatInterval := [(181250, 181253), (181254, 181258)]

private theorem c1011_intervals_eq :
    witnessIntervals c1011_witnesses = c1011_intervals := by
  rfl

private theorem c1011_checks : witnessesCheck c1011_witnesses = true := by
  simp only [witnessesCheck, c1011_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk245.w6_check, B699LowIndex.I11TerminalData.Chunk245.w7_check, Bool.and_self]

private theorem c1011_cover : coverCheck 181250 181258 c1011_intervals = true := by
  decide

private theorem c1011_sound : IntervalSound (181250, 181258) := by
  have hc : coverCheck 181250 181258 (witnessIntervals c1011_witnesses) = true := by
    rw [c1011_intervals_eq]
    exact c1011_cover
  exact interval_sound_of_witness_checks (witnesses := c1011_witnesses)
    (lo := 181250) (hi := 181258) c1011_checks hc

private def c1012_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk245.w8]
private def c1012_intervals : List NatInterval := [(186880, 186885)]

private theorem c1012_intervals_eq :
    witnessIntervals c1012_witnesses = c1012_intervals := by
  rfl

private theorem c1012_checks : witnessesCheck c1012_witnesses = true := by
  simp only [witnessesCheck, c1012_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk245.w8_check, Bool.and_self]

private theorem c1012_cover : coverCheck 186880 186885 c1012_intervals = true := by
  decide

private theorem c1012_sound : IntervalSound (186880, 186885) := by
  have hc : coverCheck 186880 186885 (witnessIntervals c1012_witnesses) = true := by
    rw [c1012_intervals_eq]
    exact c1012_cover
  exact interval_sound_of_witness_checks (witnesses := c1012_witnesses)
    (lo := 186880) (hi := 186885) c1012_checks hc

private def c1013_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk245.w9, B699LowIndex.I11TerminalData.Chunk245.w10, B699LowIndex.I11TerminalData.Chunk245.w11, B699LowIndex.I11TerminalData.Chunk245.w12, B699LowIndex.I11TerminalData.Chunk245.w13, B699LowIndex.I11TerminalData.Chunk245.w14]
private def c1013_intervals : List NatInterval := [(196101, 196101), (196102, 196102), (196103, 196103), (196104, 196104), (196105, 196105), (196106, 196106)]

private theorem c1013_intervals_eq :
    witnessIntervals c1013_witnesses = c1013_intervals := by
  rfl

private theorem c1013_checks : witnessesCheck c1013_witnesses = true := by
  simp only [witnessesCheck, c1013_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk245.w9_check, B699LowIndex.I11TerminalData.Chunk245.w10_check, B699LowIndex.I11TerminalData.Chunk245.w11_check, B699LowIndex.I11TerminalData.Chunk245.w12_check, B699LowIndex.I11TerminalData.Chunk245.w13_check, B699LowIndex.I11TerminalData.Chunk245.w14_check, Bool.and_self]

private theorem c1013_cover : coverCheck 196101 196106 c1013_intervals = true := by
  decide

private theorem c1013_sound : IntervalSound (196101, 196106) := by
  have hc : coverCheck 196101 196106 (witnessIntervals c1013_witnesses) = true := by
    rw [c1013_intervals_eq]
    exact c1013_cover
  exact interval_sound_of_witness_checks (witnesses := c1013_witnesses)
    (lo := 196101) (hi := 196106) c1013_checks hc

private def c1014_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk245.w15]
private def c1014_intervals : List NatInterval := [(196882, 196885)]

private theorem c1014_intervals_eq :
    witnessIntervals c1014_witnesses = c1014_intervals := by
  rfl

private theorem c1014_checks : witnessesCheck c1014_witnesses = true := by
  simp only [witnessesCheck, c1014_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk245.w15_check, Bool.and_self]

private theorem c1014_cover : coverCheck 196882 196885 c1014_intervals = true := by
  decide

private theorem c1014_sound : IntervalSound (196882, 196885) := by
  have hc : coverCheck 196882 196885 (witnessIntervals c1014_witnesses) = true := by
    rw [c1014_intervals_eq]
    exact c1014_cover
  exact interval_sound_of_witness_checks (witnesses := c1014_witnesses)
    (lo := 196882) (hi := 196885) c1014_checks hc

private def c1015_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk246.w0]
private def c1015_intervals : List NatInterval := [(208896, 208897)]

private theorem c1015_intervals_eq :
    witnessIntervals c1015_witnesses = c1015_intervals := by
  rfl

private theorem c1015_checks : witnessesCheck c1015_witnesses = true := by
  simp only [witnessesCheck, c1015_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk246.w0_check, Bool.and_self]

private theorem c1015_cover : coverCheck 208896 208897 c1015_intervals = true := by
  decide

private theorem c1015_sound : IntervalSound (208896, 208897) := by
  have hc : coverCheck 208896 208897 (witnessIntervals c1015_witnesses) = true := by
    rw [c1015_intervals_eq]
    exact c1015_cover
  exact interval_sound_of_witness_checks (witnesses := c1015_witnesses)
    (lo := 208896) (hi := 208897) c1015_checks hc

private def c1016_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk246.w1, B699LowIndex.I11TerminalData.Chunk246.w2, B699LowIndex.I11TerminalData.Chunk246.w3]
private def c1016_intervals : List NatInterval := [(220160, 220161), (220162, 220162), (220163, 220168)]

private theorem c1016_intervals_eq :
    witnessIntervals c1016_witnesses = c1016_intervals := by
  rfl

private theorem c1016_checks : witnessesCheck c1016_witnesses = true := by
  simp only [witnessesCheck, c1016_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk246.w1_check, B699LowIndex.I11TerminalData.Chunk246.w2_check, B699LowIndex.I11TerminalData.Chunk246.w3_check, Bool.and_self]

private theorem c1016_cover : coverCheck 220160 220168 c1016_intervals = true := by
  decide

private theorem c1016_sound : IntervalSound (220160, 220168) := by
  have hc : coverCheck 220160 220168 (witnessIntervals c1016_witnesses) = true := by
    rw [c1016_intervals_eq]
    exact c1016_cover
  exact interval_sound_of_witness_checks (witnesses := c1016_witnesses)
    (lo := 220160) (hi := 220168) c1016_checks hc

private def c1017_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk246.w4]
private def c1017_intervals : List NatInterval := [(220892, 220897)]

private theorem c1017_intervals_eq :
    witnessIntervals c1017_witnesses = c1017_intervals := by
  rfl

private theorem c1017_checks : witnessesCheck c1017_witnesses = true := by
  simp only [witnessesCheck, c1017_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk246.w4_check, Bool.and_self]

private theorem c1017_cover : coverCheck 220892 220897 c1017_intervals = true := by
  decide

private theorem c1017_sound : IntervalSound (220892, 220897) := by
  have hc : coverCheck 220892 220897 (witnessIntervals c1017_witnesses) = true := by
    rw [c1017_intervals_eq]
    exact c1017_cover
  exact interval_sound_of_witness_checks (witnesses := c1017_witnesses)
    (lo := 220892) (hi := 220897) c1017_checks hc

private def c1018_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk246.w5]
private def c1018_intervals : List NatInterval := [(223750, 223754)]

private theorem c1018_intervals_eq :
    witnessIntervals c1018_witnesses = c1018_intervals := by
  rfl

private theorem c1018_checks : witnessesCheck c1018_witnesses = true := by
  simp only [witnessesCheck, c1018_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk246.w5_check, Bool.and_self]

private theorem c1018_cover : coverCheck 223750 223754 c1018_intervals = true := by
  decide

private theorem c1018_sound : IntervalSound (223750, 223754) := by
  have hc : coverCheck 223750 223754 (witnessIntervals c1018_witnesses) = true := by
    rw [c1018_intervals_eq]
    exact c1018_cover
  exact interval_sound_of_witness_checks (witnesses := c1018_witnesses)
    (lo := 223750) (hi := 223754) c1018_checks hc

private def c1019_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk246.w6, B699LowIndex.I11TerminalData.Chunk246.w7, B699LowIndex.I11TerminalData.Chunk246.w8]
private def c1019_intervals : List NatInterval := [(229376, 229383), (229384, 229384), (229385, 229385)]

private theorem c1019_intervals_eq :
    witnessIntervals c1019_witnesses = c1019_intervals := by
  rfl

private theorem c1019_checks : witnessesCheck c1019_witnesses = true := by
  simp only [witnessesCheck, c1019_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk246.w6_check, B699LowIndex.I11TerminalData.Chunk246.w7_check, B699LowIndex.I11TerminalData.Chunk246.w8_check, Bool.and_self]

private theorem c1019_cover : coverCheck 229376 229385 c1019_intervals = true := by
  decide

private theorem c1019_sound : IntervalSound (229376, 229385) := by
  have hc : coverCheck 229376 229385 (witnessIntervals c1019_witnesses) = true := by
    rw [c1019_intervals_eq]
    exact c1019_cover
  exact interval_sound_of_witness_checks (witnesses := c1019_witnesses)
    (lo := 229376) (hi := 229385) c1019_checks hc

private def c1020_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk246.w9]
private def c1020_intervals : List NatInterval := [(235008, 235010)]

private theorem c1020_intervals_eq :
    witnessIntervals c1020_witnesses = c1020_intervals := by
  rfl

private theorem c1020_checks : witnessesCheck c1020_witnesses = true := by
  simp only [witnessesCheck, c1020_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk246.w9_check, Bool.and_self]

private theorem c1020_cover : coverCheck 235008 235010 c1020_intervals = true := by
  decide

private theorem c1020_sound : IntervalSound (235008, 235010) := by
  have hc : coverCheck 235008 235010 (witnessIntervals c1020_witnesses) = true := by
    rw [c1020_intervals_eq]
    exact c1020_cover
  exact interval_sound_of_witness_checks (witnesses := c1020_witnesses)
    (lo := 235008) (hi := 235010) c1020_checks hc

private def c1021_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk246.w10, B699LowIndex.I11TerminalData.Chunk246.w11, B699LowIndex.I11TerminalData.Chunk246.w12]
private def c1021_intervals : List NatInterval := [(239112, 239112), (239113, 239113), (239114, 239114)]

private theorem c1021_intervals_eq :
    witnessIntervals c1021_witnesses = c1021_intervals := by
  rfl

private theorem c1021_checks : witnessesCheck c1021_witnesses = true := by
  simp only [witnessesCheck, c1021_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk246.w10_check, B699LowIndex.I11TerminalData.Chunk246.w11_check, B699LowIndex.I11TerminalData.Chunk246.w12_check, Bool.and_self]

private theorem c1021_cover : coverCheck 239112 239114 c1021_intervals = true := by
  decide

private theorem c1021_sound : IntervalSound (239112, 239114) := by
  have hc : coverCheck 239112 239114 (witnessIntervals c1021_witnesses) = true := by
    rw [c1021_intervals_eq]
    exact c1021_cover
  exact interval_sound_of_witness_checks (witnesses := c1021_witnesses)
    (lo := 239112) (hi := 239114) c1021_checks hc

private def c1022_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk246.w13, B699LowIndex.I11TerminalData.Chunk246.w14, B699LowIndex.I11TerminalData.Chunk246.w15, B699LowIndex.I11TerminalData.Chunk247.w0, B699LowIndex.I11TerminalData.Chunk247.w1, B699LowIndex.I11TerminalData.Chunk247.w2, B699LowIndex.I11TerminalData.Chunk247.w3, B699LowIndex.I11TerminalData.Chunk247.w4, B699LowIndex.I11TerminalData.Chunk247.w5]
private def c1022_intervals : List NatInterval := [(242501, 242501), (242502, 242502), (242503, 242503), (242504, 242504), (242505, 242505), (242506, 242506), (242507, 242507), (242508, 242508), (242509, 242510)]

private theorem c1022_intervals_eq :
    witnessIntervals c1022_witnesses = c1022_intervals := by
  rfl

private theorem c1022_checks : witnessesCheck c1022_witnesses = true := by
  simp only [witnessesCheck, c1022_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk246.w13_check, B699LowIndex.I11TerminalData.Chunk246.w14_check, B699LowIndex.I11TerminalData.Chunk246.w15_check, B699LowIndex.I11TerminalData.Chunk247.w0_check, B699LowIndex.I11TerminalData.Chunk247.w1_check, B699LowIndex.I11TerminalData.Chunk247.w2_check, B699LowIndex.I11TerminalData.Chunk247.w3_check, B699LowIndex.I11TerminalData.Chunk247.w4_check, B699LowIndex.I11TerminalData.Chunk247.w5_check, Bool.and_self]

private theorem c1022_cover : coverCheck 242501 242510 c1022_intervals = true := by
  decide

private theorem c1022_sound : IntervalSound (242501, 242510) := by
  have hc : coverCheck 242501 242510 (witnessIntervals c1022_witnesses) = true := by
    rw [c1022_intervals_eq]
    exact c1022_cover
  exact interval_sound_of_witness_checks (witnesses := c1022_witnesses)
    (lo := 242501) (hi := 242510) c1022_checks hc

private def c1023_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk247.w6]
private def c1023_intervals : List NatInterval := [(244224, 244225)]

private theorem c1023_intervals_eq :
    witnessIntervals c1023_witnesses = c1023_intervals := by
  rfl

private theorem c1023_checks : witnessesCheck c1023_witnesses = true := by
  simp only [witnessesCheck, c1023_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk247.w6_check, Bool.and_self]

private theorem c1023_cover : coverCheck 244224 244225 c1023_intervals = true := by
  decide

private theorem c1023_sound : IntervalSound (244224, 244225) := by
  have hc : coverCheck 244224 244225 (witnessIntervals c1023_witnesses) = true := by
    rw [c1023_intervals_eq]
    exact c1023_cover
  exact interval_sound_of_witness_checks (witnesses := c1023_witnesses)
    (lo := 244224) (hi := 244225) c1023_checks hc

def intervals : List NatInterval := [(175625, 175626), (177152, 177157), (177674, 177674), (181250, 181258), (186880, 186885), (196101, 196106), (196882, 196885), (208896, 208897), (220160, 220168), (220892, 220897), (223750, 223754), (229376, 229385), (235008, 235010), (239112, 239114), (242501, 242510), (244224, 244225)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (175625, 175626)) (intervals := [(177152, 177157), (177674, 177674), (181250, 181258), (186880, 186885), (196101, 196106), (196882, 196885), (208896, 208897), (220160, 220168), (220892, 220897), (223750, 223754), (229376, 229385), (235008, 235010), (239112, 239114), (242501, 242510), (244224, 244225)]) c1008_sound (intervals_sound_cons (I := (177152, 177157)) (intervals := [(177674, 177674), (181250, 181258), (186880, 186885), (196101, 196106), (196882, 196885), (208896, 208897), (220160, 220168), (220892, 220897), (223750, 223754), (229376, 229385), (235008, 235010), (239112, 239114), (242501, 242510), (244224, 244225)]) c1009_sound (intervals_sound_cons (I := (177674, 177674)) (intervals := [(181250, 181258), (186880, 186885), (196101, 196106), (196882, 196885), (208896, 208897), (220160, 220168), (220892, 220897), (223750, 223754), (229376, 229385), (235008, 235010), (239112, 239114), (242501, 242510), (244224, 244225)]) c1010_sound (intervals_sound_cons (I := (181250, 181258)) (intervals := [(186880, 186885), (196101, 196106), (196882, 196885), (208896, 208897), (220160, 220168), (220892, 220897), (223750, 223754), (229376, 229385), (235008, 235010), (239112, 239114), (242501, 242510), (244224, 244225)]) c1011_sound (intervals_sound_cons (I := (186880, 186885)) (intervals := [(196101, 196106), (196882, 196885), (208896, 208897), (220160, 220168), (220892, 220897), (223750, 223754), (229376, 229385), (235008, 235010), (239112, 239114), (242501, 242510), (244224, 244225)]) c1012_sound (intervals_sound_cons (I := (196101, 196106)) (intervals := [(196882, 196885), (208896, 208897), (220160, 220168), (220892, 220897), (223750, 223754), (229376, 229385), (235008, 235010), (239112, 239114), (242501, 242510), (244224, 244225)]) c1013_sound (intervals_sound_cons (I := (196882, 196885)) (intervals := [(208896, 208897), (220160, 220168), (220892, 220897), (223750, 223754), (229376, 229385), (235008, 235010), (239112, 239114), (242501, 242510), (244224, 244225)]) c1014_sound (intervals_sound_cons (I := (208896, 208897)) (intervals := [(220160, 220168), (220892, 220897), (223750, 223754), (229376, 229385), (235008, 235010), (239112, 239114), (242501, 242510), (244224, 244225)]) c1015_sound (intervals_sound_cons (I := (220160, 220168)) (intervals := [(220892, 220897), (223750, 223754), (229376, 229385), (235008, 235010), (239112, 239114), (242501, 242510), (244224, 244225)]) c1016_sound (intervals_sound_cons (I := (220892, 220897)) (intervals := [(223750, 223754), (229376, 229385), (235008, 235010), (239112, 239114), (242501, 242510), (244224, 244225)]) c1017_sound (intervals_sound_cons (I := (223750, 223754)) (intervals := [(229376, 229385), (235008, 235010), (239112, 239114), (242501, 242510), (244224, 244225)]) c1018_sound (intervals_sound_cons (I := (229376, 229385)) (intervals := [(235008, 235010), (239112, 239114), (242501, 242510), (244224, 244225)]) c1019_sound (intervals_sound_cons (I := (235008, 235010)) (intervals := [(239112, 239114), (242501, 242510), (244224, 244225)]) c1020_sound (intervals_sound_cons (I := (239112, 239114)) (intervals := [(242501, 242510), (244224, 244225)]) c1021_sound (intervals_sound_cons (I := (242501, 242510)) (intervals := [(244224, 244225)]) c1022_sound (intervals_sound_cons (I := (244224, 244225)) (intervals := []) c1023_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G063
