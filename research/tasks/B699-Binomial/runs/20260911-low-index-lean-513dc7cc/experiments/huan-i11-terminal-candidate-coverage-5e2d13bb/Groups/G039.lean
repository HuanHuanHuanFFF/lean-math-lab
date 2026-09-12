import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk178
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk179
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk180
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk181
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk182

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G039
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0624_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk178.w11, B699LowIndex.I11TerminalData.Chunk178.w12]
private def c0624_intervals : List NatInterval := [(18500, 18503), (18504, 18506)]

private theorem c0624_intervals_eq :
    witnessIntervals c0624_witnesses = c0624_intervals := by
  rfl

private theorem c0624_checks : witnessesCheck c0624_witnesses = true := by
  simp only [witnessesCheck, c0624_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk178.w11_check, B699LowIndex.I11TerminalData.Chunk178.w12_check, Bool.and_self]

private theorem c0624_cover : coverCheck 18500 18506 c0624_intervals = true := by
  decide

private theorem c0624_sound : IntervalSound (18500, 18506) := by
  have hc : coverCheck 18500 18506 (witnessIntervals c0624_witnesses) = true := by
    rw [c0624_intervals_eq]
    exact c0624_cover
  exact interval_sound_of_witness_checks (witnesses := c0624_witnesses)
    (lo := 18500) (hi := 18506) c0624_checks hc

private def c0625_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk178.w13, B699LowIndex.I11TerminalData.Chunk178.w14, B699LowIndex.I11TerminalData.Chunk178.w15, B699LowIndex.I11TerminalData.Chunk179.w0, B699LowIndex.I11TerminalData.Chunk179.w1, B699LowIndex.I11TerminalData.Chunk179.w2, B699LowIndex.I11TerminalData.Chunk179.w3, B699LowIndex.I11TerminalData.Chunk179.w4, B699LowIndex.I11TerminalData.Chunk179.w5]
private def c0625_intervals : List NatInterval := [(18624, 18627), (18628, 18628), (18629, 18629), (18630, 18630), (18631, 18631), (18632, 18632), (18633, 18633), (18634, 18634), (18635, 18635)]

private theorem c0625_intervals_eq :
    witnessIntervals c0625_witnesses = c0625_intervals := by
  rfl

private theorem c0625_checks : witnessesCheck c0625_witnesses = true := by
  simp only [witnessesCheck, c0625_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk178.w13_check, B699LowIndex.I11TerminalData.Chunk178.w14_check, B699LowIndex.I11TerminalData.Chunk178.w15_check, B699LowIndex.I11TerminalData.Chunk179.w0_check, B699LowIndex.I11TerminalData.Chunk179.w1_check, B699LowIndex.I11TerminalData.Chunk179.w2_check, B699LowIndex.I11TerminalData.Chunk179.w3_check, B699LowIndex.I11TerminalData.Chunk179.w4_check, B699LowIndex.I11TerminalData.Chunk179.w5_check, Bool.and_self]

private theorem c0625_cover : coverCheck 18624 18635 c0625_intervals = true := by
  decide

private theorem c0625_sound : IntervalSound (18624, 18635) := by
  have hc : coverCheck 18624 18635 (witnessIntervals c0625_witnesses) = true := by
    rw [c0625_intervals_eq]
    exact c0625_cover
  exact interval_sound_of_witness_checks (witnesses := c0625_witnesses)
    (lo := 18624) (hi := 18635) c0625_checks hc

private def c0626_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk179.w6]
private def c0626_intervals : List NatInterval := [(18718, 18721)]

private theorem c0626_intervals_eq :
    witnessIntervals c0626_witnesses = c0626_intervals := by
  rfl

private theorem c0626_checks : witnessesCheck c0626_witnesses = true := by
  simp only [witnessesCheck, c0626_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk179.w6_check, Bool.and_self]

private theorem c0626_cover : coverCheck 18718 18721 c0626_intervals = true := by
  decide

private theorem c0626_sound : IntervalSound (18718, 18721) := by
  have hc : coverCheck 18718 18721 (witnessIntervals c0626_witnesses) = true := by
    rw [c0626_intervals_eq]
    exact c0626_cover
  exact interval_sound_of_witness_checks (witnesses := c0626_witnesses)
    (lo := 18718) (hi := 18721) c0626_checks hc

private def c0627_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk179.w7, B699LowIndex.I11TerminalData.Chunk179.w8]
private def c0627_intervals : List NatInterval := [(18752, 18759), (18760, 18760)]

private theorem c0627_intervals_eq :
    witnessIntervals c0627_witnesses = c0627_intervals := by
  rfl

private theorem c0627_checks : witnessesCheck c0627_witnesses = true := by
  simp only [witnessesCheck, c0627_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk179.w7_check, B699LowIndex.I11TerminalData.Chunk179.w8_check, Bool.and_self]

private theorem c0627_cover : coverCheck 18752 18760 c0627_intervals = true := by
  decide

private theorem c0627_sound : IntervalSound (18752, 18760) := by
  have hc : coverCheck 18752 18760 (witnessIntervals c0627_witnesses) = true := by
    rw [c0627_intervals_eq]
    exact c0627_cover
  exact interval_sound_of_witness_checks (witnesses := c0627_witnesses)
    (lo := 18752) (hi := 18760) c0627_checks hc

private def c0628_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk179.w9, B699LowIndex.I11TerminalData.Chunk179.w10, B699LowIndex.I11TerminalData.Chunk179.w11, B699LowIndex.I11TerminalData.Chunk179.w12, B699LowIndex.I11TerminalData.Chunk179.w13, B699LowIndex.I11TerminalData.Chunk179.w14, B699LowIndex.I11TerminalData.Chunk179.w15, B699LowIndex.I11TerminalData.Chunk180.w0, B699LowIndex.I11TerminalData.Chunk180.w1, B699LowIndex.I11TerminalData.Chunk180.w2, B699LowIndex.I11TerminalData.Chunk180.w3]
private def c0628_intervals : List NatInterval := [(18816, 18816), (18817, 18817), (18818, 18818), (18819, 18819), (18820, 18820), (18821, 18821), (18822, 18822), (18823, 18823), (18824, 18824), (18825, 18825), (18826, 18826)]

private theorem c0628_intervals_eq :
    witnessIntervals c0628_witnesses = c0628_intervals := by
  rfl

private theorem c0628_checks : witnessesCheck c0628_witnesses = true := by
  simp only [witnessesCheck, c0628_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk179.w9_check, B699LowIndex.I11TerminalData.Chunk179.w10_check, B699LowIndex.I11TerminalData.Chunk179.w11_check, B699LowIndex.I11TerminalData.Chunk179.w12_check, B699LowIndex.I11TerminalData.Chunk179.w13_check, B699LowIndex.I11TerminalData.Chunk179.w14_check, B699LowIndex.I11TerminalData.Chunk179.w15_check, B699LowIndex.I11TerminalData.Chunk180.w0_check, B699LowIndex.I11TerminalData.Chunk180.w1_check, B699LowIndex.I11TerminalData.Chunk180.w2_check, B699LowIndex.I11TerminalData.Chunk180.w3_check, Bool.and_self]

private theorem c0628_cover : coverCheck 18816 18826 c0628_intervals = true := by
  decide

private theorem c0628_sound : IntervalSound (18816, 18826) := by
  have hc : coverCheck 18816 18826 (witnessIntervals c0628_witnesses) = true := by
    rw [c0628_intervals_eq]
    exact c0628_cover
  exact interval_sound_of_witness_checks (witnesses := c0628_witnesses)
    (lo := 18816) (hi := 18826) c0628_checks hc

private def c0629_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk180.w4, B699LowIndex.I11TerminalData.Chunk180.w5, B699LowIndex.I11TerminalData.Chunk180.w6, B699LowIndex.I11TerminalData.Chunk180.w7, B699LowIndex.I11TerminalData.Chunk180.w8, B699LowIndex.I11TerminalData.Chunk180.w9, B699LowIndex.I11TerminalData.Chunk180.w10]
private def c0629_intervals : List NatInterval := [(18873, 18879), (18880, 18880), (18881, 18881), (18882, 18882), (18883, 18883), (18884, 18884), (18885, 18885)]

private theorem c0629_intervals_eq :
    witnessIntervals c0629_witnesses = c0629_intervals := by
  rfl

private theorem c0629_checks : witnessesCheck c0629_witnesses = true := by
  simp only [witnessesCheck, c0629_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk180.w4_check, B699LowIndex.I11TerminalData.Chunk180.w5_check, B699LowIndex.I11TerminalData.Chunk180.w6_check, B699LowIndex.I11TerminalData.Chunk180.w7_check, B699LowIndex.I11TerminalData.Chunk180.w8_check, B699LowIndex.I11TerminalData.Chunk180.w9_check, B699LowIndex.I11TerminalData.Chunk180.w10_check, Bool.and_self]

private theorem c0629_cover : coverCheck 18873 18885 c0629_intervals = true := by
  decide

private theorem c0629_sound : IntervalSound (18873, 18885) := by
  have hc : coverCheck 18873 18885 (witnessIntervals c0629_witnesses) = true := by
    rw [c0629_intervals_eq]
    exact c0629_cover
  exact interval_sound_of_witness_checks (witnesses := c0629_witnesses)
    (lo := 18873) (hi := 18885) c0629_checks hc

private def c0630_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk180.w11]
private def c0630_intervals : List NatInterval := [(18954, 18954)]

private theorem c0630_intervals_eq :
    witnessIntervals c0630_witnesses = c0630_intervals := by
  rfl

private theorem c0630_checks : witnessesCheck c0630_witnesses = true := by
  simp only [witnessesCheck, c0630_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk180.w11_check, Bool.and_self]

private theorem c0630_cover : coverCheck 18954 18954 c0630_intervals = true := by
  decide

private theorem c0630_sound : IntervalSound (18954, 18954) := by
  have hc : coverCheck 18954 18954 (witnessIntervals c0630_witnesses) = true := by
    rw [c0630_intervals_eq]
    exact c0630_cover
  exact interval_sound_of_witness_checks (witnesses := c0630_witnesses)
    (lo := 18954) (hi := 18954) c0630_checks hc

private def c0631_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk180.w12]
private def c0631_intervals : List NatInterval := [(18963, 18964)]

private theorem c0631_intervals_eq :
    witnessIntervals c0631_witnesses = c0631_intervals := by
  rfl

private theorem c0631_checks : witnessesCheck c0631_witnesses = true := by
  simp only [witnessesCheck, c0631_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk180.w12_check, Bool.and_self]

private theorem c0631_cover : coverCheck 18963 18964 c0631_intervals = true := by
  decide

private theorem c0631_sound : IntervalSound (18963, 18964) := by
  have hc : coverCheck 18963 18964 (witnessIntervals c0631_witnesses) = true := by
    rw [c0631_intervals_eq]
    exact c0631_cover
  exact interval_sound_of_witness_checks (witnesses := c0631_witnesses)
    (lo := 18963) (hi := 18964) c0631_checks hc

private def c0632_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk180.w13]
private def c0632_intervals : List NatInterval := [(19008, 19010)]

private theorem c0632_intervals_eq :
    witnessIntervals c0632_witnesses = c0632_intervals := by
  rfl

private theorem c0632_checks : witnessesCheck c0632_witnesses = true := by
  simp only [witnessesCheck, c0632_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk180.w13_check, Bool.and_self]

private theorem c0632_cover : coverCheck 19008 19010 c0632_intervals = true := by
  decide

private theorem c0632_sound : IntervalSound (19008, 19010) := by
  have hc : coverCheck 19008 19010 (witnessIntervals c0632_witnesses) = true := by
    rw [c0632_intervals_eq]
    exact c0632_cover
  exact interval_sound_of_witness_checks (witnesses := c0632_witnesses)
    (lo := 19008) (hi := 19010) c0632_checks hc

private def c0633_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk180.w14]
private def c0633_intervals : List NatInterval := [(19012, 19018)]

private theorem c0633_intervals_eq :
    witnessIntervals c0633_witnesses = c0633_intervals := by
  rfl

private theorem c0633_checks : witnessesCheck c0633_witnesses = true := by
  simp only [witnessesCheck, c0633_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk180.w14_check, Bool.and_self]

private theorem c0633_cover : coverCheck 19012 19018 c0633_intervals = true := by
  decide

private theorem c0633_sound : IntervalSound (19012, 19018) := by
  have hc : coverCheck 19012 19018 (witnessIntervals c0633_witnesses) = true := by
    rw [c0633_intervals_eq]
    exact c0633_cover
  exact interval_sound_of_witness_checks (witnesses := c0633_witnesses)
    (lo := 19012) (hi := 19018) c0633_checks hc

private def c0634_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk180.w15, B699LowIndex.I11TerminalData.Chunk181.w0, B699LowIndex.I11TerminalData.Chunk181.w1, B699LowIndex.I11TerminalData.Chunk181.w2, B699LowIndex.I11TerminalData.Chunk181.w3]
private def c0634_intervals : List NatInterval := [(19116, 19116), (19117, 19117), (19118, 19118), (19119, 19119), (19120, 19120)]

private theorem c0634_intervals_eq :
    witnessIntervals c0634_witnesses = c0634_intervals := by
  rfl

private theorem c0634_checks : witnessesCheck c0634_witnesses = true := by
  simp only [witnessesCheck, c0634_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk180.w15_check, B699LowIndex.I11TerminalData.Chunk181.w0_check, B699LowIndex.I11TerminalData.Chunk181.w1_check, B699LowIndex.I11TerminalData.Chunk181.w2_check, B699LowIndex.I11TerminalData.Chunk181.w3_check, Bool.and_self]

private theorem c0634_cover : coverCheck 19116 19120 c0634_intervals = true := by
  decide

private theorem c0634_sound : IntervalSound (19116, 19120) := by
  have hc : coverCheck 19116 19120 (witnessIntervals c0634_witnesses) = true := by
    rw [c0634_intervals_eq]
    exact c0634_cover
  exact interval_sound_of_witness_checks (witnesses := c0634_witnesses)
    (lo := 19116) (hi := 19120) c0634_checks hc

private def c0635_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk181.w4]
private def c0635_intervals : List NatInterval := [(19125, 19126)]

private theorem c0635_intervals_eq :
    witnessIntervals c0635_witnesses = c0635_intervals := by
  rfl

private theorem c0635_checks : witnessesCheck c0635_witnesses = true := by
  simp only [witnessesCheck, c0635_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk181.w4_check, Bool.and_self]

private theorem c0635_cover : coverCheck 19125 19126 c0635_intervals = true := by
  decide

private theorem c0635_sound : IntervalSound (19125, 19126) := by
  have hc : coverCheck 19125 19126 (witnessIntervals c0635_witnesses) = true := by
    rw [c0635_intervals_eq]
    exact c0635_cover
  exact interval_sound_of_witness_checks (witnesses := c0635_witnesses)
    (lo := 19125) (hi := 19126) c0635_checks hc

private def c0636_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk181.w5, B699LowIndex.I11TerminalData.Chunk181.w6, B699LowIndex.I11TerminalData.Chunk181.w7, B699LowIndex.I11TerminalData.Chunk181.w8, B699LowIndex.I11TerminalData.Chunk181.w9, B699LowIndex.I11TerminalData.Chunk181.w10, B699LowIndex.I11TerminalData.Chunk181.w11, B699LowIndex.I11TerminalData.Chunk181.w12]
private def c0636_intervals : List NatInterval := [(19200, 19200), (19201, 19201), (19202, 19202), (19203, 19203), (19204, 19204), (19205, 19205), (19206, 19206), (19207, 19210)]

private theorem c0636_intervals_eq :
    witnessIntervals c0636_witnesses = c0636_intervals := by
  rfl

private theorem c0636_checks : witnessesCheck c0636_witnesses = true := by
  simp only [witnessesCheck, c0636_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk181.w5_check, B699LowIndex.I11TerminalData.Chunk181.w6_check, B699LowIndex.I11TerminalData.Chunk181.w7_check, B699LowIndex.I11TerminalData.Chunk181.w8_check, B699LowIndex.I11TerminalData.Chunk181.w9_check, B699LowIndex.I11TerminalData.Chunk181.w10_check, B699LowIndex.I11TerminalData.Chunk181.w11_check, B699LowIndex.I11TerminalData.Chunk181.w12_check, Bool.and_self]

private theorem c0636_cover : coverCheck 19200 19210 c0636_intervals = true := by
  decide

private theorem c0636_sound : IntervalSound (19200, 19210) := by
  have hc : coverCheck 19200 19210 (witnessIntervals c0636_witnesses) = true := by
    rw [c0636_intervals_eq]
    exact c0636_cover
  exact interval_sound_of_witness_checks (witnesses := c0636_witnesses)
    (lo := 19200) (hi := 19210) c0636_checks hc

private def c0637_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk181.w13, B699LowIndex.I11TerminalData.Chunk181.w14]
private def c0637_intervals : List NatInterval := [(19257, 19259), (19260, 19260)]

private theorem c0637_intervals_eq :
    witnessIntervals c0637_witnesses = c0637_intervals := by
  rfl

private theorem c0637_checks : witnessesCheck c0637_witnesses = true := by
  simp only [witnessesCheck, c0637_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk181.w13_check, B699LowIndex.I11TerminalData.Chunk181.w14_check, Bool.and_self]

private theorem c0637_cover : coverCheck 19257 19260 c0637_intervals = true := by
  decide

private theorem c0637_sound : IntervalSound (19257, 19260) := by
  have hc : coverCheck 19257 19260 (witnessIntervals c0637_witnesses) = true := by
    rw [c0637_intervals_eq]
    exact c0637_cover
  exact interval_sound_of_witness_checks (witnesses := c0637_witnesses)
    (lo := 19257) (hi := 19260) c0637_checks hc

private def c0638_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk181.w15]
private def c0638_intervals : List NatInterval := [(19264, 19267)]

private theorem c0638_intervals_eq :
    witnessIntervals c0638_witnesses = c0638_intervals := by
  rfl

private theorem c0638_checks : witnessesCheck c0638_witnesses = true := by
  simp only [witnessesCheck, c0638_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk181.w15_check, Bool.and_self]

private theorem c0638_cover : coverCheck 19264 19267 c0638_intervals = true := by
  decide

private theorem c0638_sound : IntervalSound (19264, 19267) := by
  have hc : coverCheck 19264 19267 (witnessIntervals c0638_witnesses) = true := by
    rw [c0638_intervals_eq]
    exact c0638_cover
  exact interval_sound_of_witness_checks (witnesses := c0638_witnesses)
    (lo := 19264) (hi := 19267) c0638_checks hc

private def c0639_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk182.w0, B699LowIndex.I11TerminalData.Chunk182.w1, B699LowIndex.I11TerminalData.Chunk182.w2, B699LowIndex.I11TerminalData.Chunk182.w3, B699LowIndex.I11TerminalData.Chunk182.w4, B699LowIndex.I11TerminalData.Chunk182.w5, B699LowIndex.I11TerminalData.Chunk182.w6]
private def c0639_intervals : List NatInterval := [(19359, 19359), (19360, 19360), (19361, 19361), (19362, 19362), (19363, 19363), (19364, 19364), (19365, 19365)]

private theorem c0639_intervals_eq :
    witnessIntervals c0639_witnesses = c0639_intervals := by
  rfl

private theorem c0639_checks : witnessesCheck c0639_witnesses = true := by
  simp only [witnessesCheck, c0639_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk182.w0_check, B699LowIndex.I11TerminalData.Chunk182.w1_check, B699LowIndex.I11TerminalData.Chunk182.w2_check, B699LowIndex.I11TerminalData.Chunk182.w3_check, B699LowIndex.I11TerminalData.Chunk182.w4_check, B699LowIndex.I11TerminalData.Chunk182.w5_check, B699LowIndex.I11TerminalData.Chunk182.w6_check, Bool.and_self]

private theorem c0639_cover : coverCheck 19359 19365 c0639_intervals = true := by
  decide

private theorem c0639_sound : IntervalSound (19359, 19365) := by
  have hc : coverCheck 19359 19365 (witnessIntervals c0639_witnesses) = true := by
    rw [c0639_intervals_eq]
    exact c0639_cover
  exact interval_sound_of_witness_checks (witnesses := c0639_witnesses)
    (lo := 19359) (hi := 19365) c0639_checks hc

def intervals : List NatInterval := [(18500, 18506), (18624, 18635), (18718, 18721), (18752, 18760), (18816, 18826), (18873, 18885), (18954, 18954), (18963, 18964), (19008, 19010), (19012, 19018), (19116, 19120), (19125, 19126), (19200, 19210), (19257, 19260), (19264, 19267), (19359, 19365)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (18500, 18506)) (intervals := [(18624, 18635), (18718, 18721), (18752, 18760), (18816, 18826), (18873, 18885), (18954, 18954), (18963, 18964), (19008, 19010), (19012, 19018), (19116, 19120), (19125, 19126), (19200, 19210), (19257, 19260), (19264, 19267), (19359, 19365)]) c0624_sound (intervals_sound_cons (I := (18624, 18635)) (intervals := [(18718, 18721), (18752, 18760), (18816, 18826), (18873, 18885), (18954, 18954), (18963, 18964), (19008, 19010), (19012, 19018), (19116, 19120), (19125, 19126), (19200, 19210), (19257, 19260), (19264, 19267), (19359, 19365)]) c0625_sound (intervals_sound_cons (I := (18718, 18721)) (intervals := [(18752, 18760), (18816, 18826), (18873, 18885), (18954, 18954), (18963, 18964), (19008, 19010), (19012, 19018), (19116, 19120), (19125, 19126), (19200, 19210), (19257, 19260), (19264, 19267), (19359, 19365)]) c0626_sound (intervals_sound_cons (I := (18752, 18760)) (intervals := [(18816, 18826), (18873, 18885), (18954, 18954), (18963, 18964), (19008, 19010), (19012, 19018), (19116, 19120), (19125, 19126), (19200, 19210), (19257, 19260), (19264, 19267), (19359, 19365)]) c0627_sound (intervals_sound_cons (I := (18816, 18826)) (intervals := [(18873, 18885), (18954, 18954), (18963, 18964), (19008, 19010), (19012, 19018), (19116, 19120), (19125, 19126), (19200, 19210), (19257, 19260), (19264, 19267), (19359, 19365)]) c0628_sound (intervals_sound_cons (I := (18873, 18885)) (intervals := [(18954, 18954), (18963, 18964), (19008, 19010), (19012, 19018), (19116, 19120), (19125, 19126), (19200, 19210), (19257, 19260), (19264, 19267), (19359, 19365)]) c0629_sound (intervals_sound_cons (I := (18954, 18954)) (intervals := [(18963, 18964), (19008, 19010), (19012, 19018), (19116, 19120), (19125, 19126), (19200, 19210), (19257, 19260), (19264, 19267), (19359, 19365)]) c0630_sound (intervals_sound_cons (I := (18963, 18964)) (intervals := [(19008, 19010), (19012, 19018), (19116, 19120), (19125, 19126), (19200, 19210), (19257, 19260), (19264, 19267), (19359, 19365)]) c0631_sound (intervals_sound_cons (I := (19008, 19010)) (intervals := [(19012, 19018), (19116, 19120), (19125, 19126), (19200, 19210), (19257, 19260), (19264, 19267), (19359, 19365)]) c0632_sound (intervals_sound_cons (I := (19012, 19018)) (intervals := [(19116, 19120), (19125, 19126), (19200, 19210), (19257, 19260), (19264, 19267), (19359, 19365)]) c0633_sound (intervals_sound_cons (I := (19116, 19120)) (intervals := [(19125, 19126), (19200, 19210), (19257, 19260), (19264, 19267), (19359, 19365)]) c0634_sound (intervals_sound_cons (I := (19125, 19126)) (intervals := [(19200, 19210), (19257, 19260), (19264, 19267), (19359, 19365)]) c0635_sound (intervals_sound_cons (I := (19200, 19210)) (intervals := [(19257, 19260), (19264, 19267), (19359, 19365)]) c0636_sound (intervals_sound_cons (I := (19257, 19260)) (intervals := [(19264, 19267), (19359, 19365)]) c0637_sound (intervals_sound_cons (I := (19264, 19267)) (intervals := [(19359, 19365)]) c0638_sound (intervals_sound_cons (I := (19359, 19365)) (intervals := []) c0639_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G039
