import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk158
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk159
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk160

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G031
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0496_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk158.w6, B699LowIndex.I11TerminalData.Chunk158.w7, B699LowIndex.I11TerminalData.Chunk158.w8]
private def c0496_intervals : List NatInterval := [(12887, 12887), (12888, 12888), (12889, 12889)]

private theorem c0496_intervals_eq :
    witnessIntervals c0496_witnesses = c0496_intervals := by
  rfl

private theorem c0496_checks : witnessesCheck c0496_witnesses = true := by
  simp only [witnessesCheck, c0496_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk158.w6_check, B699LowIndex.I11TerminalData.Chunk158.w7_check, B699LowIndex.I11TerminalData.Chunk158.w8_check, Bool.and_self]

private theorem c0496_cover : coverCheck 12887 12889 c0496_intervals = true := by
  decide

private theorem c0496_sound : IntervalSound (12887, 12889) := by
  have hc : coverCheck 12887 12889 (witnessIntervals c0496_witnesses) = true := by
    rw [c0496_intervals_eq]
    exact c0496_cover
  exact interval_sound_of_witness_checks (witnesses := c0496_witnesses)
    (lo := 12887) (hi := 12889) c0496_checks hc

private def c0497_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk158.w9]
private def c0497_intervals : List NatInterval := [(12896, 12897)]

private theorem c0497_intervals_eq :
    witnessIntervals c0497_witnesses = c0497_intervals := by
  rfl

private theorem c0497_checks : witnessesCheck c0497_witnesses = true := by
  simp only [witnessesCheck, c0497_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk158.w9_check, Bool.and_self]

private theorem c0497_cover : coverCheck 12896 12897 c0497_intervals = true := by
  decide

private theorem c0497_sound : IntervalSound (12896, 12897) := by
  have hc : coverCheck 12896 12897 (witnessIntervals c0497_witnesses) = true := by
    rw [c0497_intervals_eq]
    exact c0497_cover
  exact interval_sound_of_witness_checks (witnesses := c0497_witnesses)
    (lo := 12896) (hi := 12897) c0497_checks hc

private def c0498_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk158.w10]
private def c0498_intervals : List NatInterval := [(12906, 12906)]

private theorem c0498_intervals_eq :
    witnessIntervals c0498_witnesses = c0498_intervals := by
  rfl

private theorem c0498_checks : witnessesCheck c0498_witnesses = true := by
  simp only [witnessesCheck, c0498_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk158.w10_check, Bool.and_self]

private theorem c0498_cover : coverCheck 12906 12906 c0498_intervals = true := by
  decide

private theorem c0498_sound : IntervalSound (12906, 12906) := by
  have hc : coverCheck 12906 12906 (witnessIntervals c0498_witnesses) = true := by
    rw [c0498_intervals_eq]
    exact c0498_cover
  exact interval_sound_of_witness_checks (witnesses := c0498_witnesses)
    (lo := 12906) (hi := 12906) c0498_checks hc

private def c0499_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk158.w11, B699LowIndex.I11TerminalData.Chunk158.w12, B699LowIndex.I11TerminalData.Chunk158.w13, B699LowIndex.I11TerminalData.Chunk158.w14, B699LowIndex.I11TerminalData.Chunk158.w15, B699LowIndex.I11TerminalData.Chunk159.w0, B699LowIndex.I11TerminalData.Chunk159.w1, B699LowIndex.I11TerminalData.Chunk159.w2, B699LowIndex.I11TerminalData.Chunk159.w3]
private def c0499_intervals : List NatInterval := [(12933, 12933), (12934, 12934), (12935, 12935), (12936, 12936), (12937, 12937), (12938, 12938), (12939, 12939), (12940, 12940), (12941, 12943)]

private theorem c0499_intervals_eq :
    witnessIntervals c0499_witnesses = c0499_intervals := by
  rfl

private theorem c0499_checks : witnessesCheck c0499_witnesses = true := by
  simp only [witnessesCheck, c0499_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk158.w11_check, B699LowIndex.I11TerminalData.Chunk158.w12_check, B699LowIndex.I11TerminalData.Chunk158.w13_check, B699LowIndex.I11TerminalData.Chunk158.w14_check, B699LowIndex.I11TerminalData.Chunk158.w15_check, B699LowIndex.I11TerminalData.Chunk159.w0_check, B699LowIndex.I11TerminalData.Chunk159.w1_check, B699LowIndex.I11TerminalData.Chunk159.w2_check, B699LowIndex.I11TerminalData.Chunk159.w3_check, Bool.and_self]

private theorem c0499_cover : coverCheck 12933 12943 c0499_intervals = true := by
  decide

private theorem c0499_sound : IntervalSound (12933, 12943) := by
  have hc : coverCheck 12933 12943 (witnessIntervals c0499_witnesses) = true := by
    rw [c0499_intervals_eq]
    exact c0499_cover
  exact interval_sound_of_witness_checks (witnesses := c0499_witnesses)
    (lo := 12933) (hi := 12943) c0499_checks hc

private def c0500_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk159.w4, B699LowIndex.I11TerminalData.Chunk159.w5]
private def c0500_intervals : List NatInterval := [(12960, 12969), (12970, 12970)]

private theorem c0500_intervals_eq :
    witnessIntervals c0500_witnesses = c0500_intervals := by
  rfl

private theorem c0500_checks : witnessesCheck c0500_witnesses = true := by
  simp only [witnessesCheck, c0500_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk159.w4_check, B699LowIndex.I11TerminalData.Chunk159.w5_check, Bool.and_self]

private theorem c0500_cover : coverCheck 12960 12970 c0500_intervals = true := by
  decide

private theorem c0500_sound : IntervalSound (12960, 12970) := by
  have hc : coverCheck 12960 12970 (witnessIntervals c0500_witnesses) = true := by
    rw [c0500_intervals_eq]
    exact c0500_cover
  exact interval_sound_of_witness_checks (witnesses := c0500_witnesses)
    (lo := 12960) (hi := 12970) c0500_checks hc

private def c0501_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk159.w6, B699LowIndex.I11TerminalData.Chunk159.w7, B699LowIndex.I11TerminalData.Chunk159.w8, B699LowIndex.I11TerminalData.Chunk159.w9, B699LowIndex.I11TerminalData.Chunk159.w10]
private def c0501_intervals : List NatInterval := [(12987, 12993), (12994, 12994), (12995, 12995), (12996, 12996), (12997, 12997)]

private theorem c0501_intervals_eq :
    witnessIntervals c0501_witnesses = c0501_intervals := by
  rfl

private theorem c0501_checks : witnessesCheck c0501_witnesses = true := by
  simp only [witnessesCheck, c0501_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk159.w6_check, B699LowIndex.I11TerminalData.Chunk159.w7_check, B699LowIndex.I11TerminalData.Chunk159.w8_check, B699LowIndex.I11TerminalData.Chunk159.w9_check, B699LowIndex.I11TerminalData.Chunk159.w10_check, Bool.and_self]

private theorem c0501_cover : coverCheck 12987 12997 c0501_intervals = true := by
  decide

private theorem c0501_sound : IntervalSound (12987, 12997) := by
  have hc : coverCheck 12987 12997 (witnessIntervals c0501_witnesses) = true := by
    rw [c0501_intervals_eq]
    exact c0501_cover
  exact interval_sound_of_witness_checks (witnesses := c0501_witnesses)
    (lo := 12987) (hi := 12997) c0501_checks hc

private def c0502_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk159.w11, B699LowIndex.I11TerminalData.Chunk159.w12]
private def c0502_intervals : List NatInterval := [(13000, 13000), (13001, 13002)]

private theorem c0502_intervals_eq :
    witnessIntervals c0502_witnesses = c0502_intervals := by
  rfl

private theorem c0502_checks : witnessesCheck c0502_witnesses = true := by
  simp only [witnessesCheck, c0502_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk159.w11_check, B699LowIndex.I11TerminalData.Chunk159.w12_check, Bool.and_self]

private theorem c0502_cover : coverCheck 13000 13002 c0502_intervals = true := by
  decide

private theorem c0502_sound : IntervalSound (13000, 13002) := by
  have hc : coverCheck 13000 13002 (witnessIntervals c0502_witnesses) = true := by
    rw [c0502_intervals_eq]
    exact c0502_cover
  exact interval_sound_of_witness_checks (witnesses := c0502_witnesses)
    (lo := 13000) (hi := 13002) c0502_checks hc

private def c0503_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk159.w13]
private def c0503_intervals : List NatInterval := [(13024, 13024)]

private theorem c0503_intervals_eq :
    witnessIntervals c0503_witnesses = c0503_intervals := by
  rfl

private theorem c0503_checks : witnessesCheck c0503_witnesses = true := by
  simp only [witnessesCheck, c0503_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk159.w13_check, Bool.and_self]

private theorem c0503_cover : coverCheck 13024 13024 c0503_intervals = true := by
  decide

private theorem c0503_sound : IntervalSound (13024, 13024) := by
  have hc : coverCheck 13024 13024 (witnessIntervals c0503_witnesses) = true := by
    rw [c0503_intervals_eq]
    exact c0503_cover
  exact interval_sound_of_witness_checks (witnesses := c0503_witnesses)
    (lo := 13024) (hi := 13024) c0503_checks hc

private def c0504_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk159.w14]
private def c0504_intervals : List NatInterval := [(13034, 13034)]

private theorem c0504_intervals_eq :
    witnessIntervals c0504_witnesses = c0504_intervals := by
  rfl

private theorem c0504_checks : witnessesCheck c0504_witnesses = true := by
  simp only [witnessesCheck, c0504_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk159.w14_check, Bool.and_self]

private theorem c0504_cover : coverCheck 13034 13034 c0504_intervals = true := by
  decide

private theorem c0504_sound : IntervalSound (13034, 13034) := by
  have hc : coverCheck 13034 13034 (witnessIntervals c0504_witnesses) = true := by
    rw [c0504_intervals_eq]
    exact c0504_cover
  exact interval_sound_of_witness_checks (witnesses := c0504_witnesses)
    (lo := 13034) (hi := 13034) c0504_checks hc

private def c0505_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk159.w15]
private def c0505_intervals : List NatInterval := [(13041, 13044)]

private theorem c0505_intervals_eq :
    witnessIntervals c0505_witnesses = c0505_intervals := by
  rfl

private theorem c0505_checks : witnessesCheck c0505_witnesses = true := by
  simp only [witnessesCheck, c0505_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk159.w15_check, Bool.and_self]

private theorem c0505_cover : coverCheck 13041 13044 c0505_intervals = true := by
  decide

private theorem c0505_sound : IntervalSound (13041, 13044) := by
  have hc : coverCheck 13041 13044 (witnessIntervals c0505_witnesses) = true := by
    rw [c0505_intervals_eq]
    exact c0505_cover
  exact interval_sound_of_witness_checks (witnesses := c0505_witnesses)
    (lo := 13041) (hi := 13044) c0505_checks hc

private def c0506_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk160.w0, B699LowIndex.I11TerminalData.Chunk160.w1, B699LowIndex.I11TerminalData.Chunk160.w2, B699LowIndex.I11TerminalData.Chunk160.w3, B699LowIndex.I11TerminalData.Chunk160.w4, B699LowIndex.I11TerminalData.Chunk160.w5]
private def c0506_intervals : List NatInterval := [(13088, 13088), (13089, 13089), (13090, 13090), (13091, 13091), (13092, 13092), (13093, 13093)]

private theorem c0506_intervals_eq :
    witnessIntervals c0506_witnesses = c0506_intervals := by
  rfl

private theorem c0506_checks : witnessesCheck c0506_witnesses = true := by
  simp only [witnessesCheck, c0506_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk160.w0_check, B699LowIndex.I11TerminalData.Chunk160.w1_check, B699LowIndex.I11TerminalData.Chunk160.w2_check, B699LowIndex.I11TerminalData.Chunk160.w3_check, B699LowIndex.I11TerminalData.Chunk160.w4_check, B699LowIndex.I11TerminalData.Chunk160.w5_check, Bool.and_self]

private theorem c0506_cover : coverCheck 13088 13093 c0506_intervals = true := by
  decide

private theorem c0506_sound : IntervalSound (13088, 13093) := by
  have hc : coverCheck 13088 13093 (witnessIntervals c0506_witnesses) = true := by
    rw [c0506_intervals_eq]
    exact c0506_cover
  exact interval_sound_of_witness_checks (witnesses := c0506_witnesses)
    (lo := 13088) (hi := 13093) c0506_checks hc

private def c0507_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk160.w6]
private def c0507_intervals : List NatInterval := [(13095, 13098)]

private theorem c0507_intervals_eq :
    witnessIntervals c0507_witnesses = c0507_intervals := by
  rfl

private theorem c0507_checks : witnessesCheck c0507_witnesses = true := by
  simp only [witnessesCheck, c0507_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk160.w6_check, Bool.and_self]

private theorem c0507_cover : coverCheck 13095 13098 c0507_intervals = true := by
  decide

private theorem c0507_sound : IntervalSound (13095, 13098) := by
  have hc : coverCheck 13095 13098 (witnessIntervals c0507_witnesses) = true := by
    rw [c0507_intervals_eq]
    exact c0507_cover
  exact interval_sound_of_witness_checks (witnesses := c0507_witnesses)
    (lo := 13095) (hi := 13098) c0507_checks hc

private def c0508_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk160.w7, B699LowIndex.I11TerminalData.Chunk160.w8]
private def c0508_intervals : List NatInterval := [(13122, 13131), (13132, 13135)]

private theorem c0508_intervals_eq :
    witnessIntervals c0508_witnesses = c0508_intervals := by
  rfl

private theorem c0508_checks : witnessesCheck c0508_witnesses = true := by
  simp only [witnessesCheck, c0508_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk160.w7_check, B699LowIndex.I11TerminalData.Chunk160.w8_check, Bool.and_self]

private theorem c0508_cover : coverCheck 13122 13135 c0508_intervals = true := by
  decide

private theorem c0508_sound : IntervalSound (13122, 13135) := by
  have hc : coverCheck 13122 13135 (witnessIntervals c0508_witnesses) = true := by
    rw [c0508_intervals_eq]
    exact c0508_cover
  exact interval_sound_of_witness_checks (witnesses := c0508_witnesses)
    (lo := 13122) (hi := 13135) c0508_checks hc

private def c0509_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk160.w9]
private def c0509_intervals : List NatInterval := [(13152, 13159)]

private theorem c0509_intervals_eq :
    witnessIntervals c0509_witnesses = c0509_intervals := by
  rfl

private theorem c0509_checks : witnessesCheck c0509_witnesses = true := by
  simp only [witnessesCheck, c0509_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk160.w9_check, Bool.and_self]

private theorem c0509_cover : coverCheck 13152 13159 c0509_intervals = true := by
  decide

private theorem c0509_sound : IntervalSound (13152, 13159) := by
  have hc : coverCheck 13152 13159 (witnessIntervals c0509_witnesses) = true := by
    rw [c0509_intervals_eq]
    exact c0509_cover
  exact interval_sound_of_witness_checks (witnesses := c0509_witnesses)
    (lo := 13152) (hi := 13159) c0509_checks hc

private def c0510_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk160.w10, B699LowIndex.I11TerminalData.Chunk160.w11]
private def c0510_intervals : List NatInterval := [(13181, 13187), (13188, 13191)]

private theorem c0510_intervals_eq :
    witnessIntervals c0510_witnesses = c0510_intervals := by
  rfl

private theorem c0510_checks : witnessesCheck c0510_witnesses = true := by
  simp only [witnessesCheck, c0510_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk160.w10_check, B699LowIndex.I11TerminalData.Chunk160.w11_check, Bool.and_self]

private theorem c0510_cover : coverCheck 13181 13191 c0510_intervals = true := by
  decide

private theorem c0510_sound : IntervalSound (13181, 13191) := by
  have hc : coverCheck 13181 13191 (witnessIntervals c0510_witnesses) = true := by
    rw [c0510_intervals_eq]
    exact c0510_cover
  exact interval_sound_of_witness_checks (witnesses := c0510_witnesses)
    (lo := 13181) (hi := 13191) c0510_checks hc

private def c0511_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk160.w12, B699LowIndex.I11TerminalData.Chunk160.w13]
private def c0511_intervals : List NatInterval := [(13230, 13239), (13240, 13240)]

private theorem c0511_intervals_eq :
    witnessIntervals c0511_witnesses = c0511_intervals := by
  rfl

private theorem c0511_checks : witnessesCheck c0511_witnesses = true := by
  simp only [witnessesCheck, c0511_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk160.w12_check, B699LowIndex.I11TerminalData.Chunk160.w13_check, Bool.and_self]

private theorem c0511_cover : coverCheck 13230 13240 c0511_intervals = true := by
  decide

private theorem c0511_sound : IntervalSound (13230, 13240) := by
  have hc : coverCheck 13230 13240 (witnessIntervals c0511_witnesses) = true := by
    rw [c0511_intervals_eq]
    exact c0511_cover
  exact interval_sound_of_witness_checks (witnesses := c0511_witnesses)
    (lo := 13230) (hi := 13240) c0511_checks hc

def intervals : List NatInterval := [(12887, 12889), (12896, 12897), (12906, 12906), (12933, 12943), (12960, 12970), (12987, 12997), (13000, 13002), (13024, 13024), (13034, 13034), (13041, 13044), (13088, 13093), (13095, 13098), (13122, 13135), (13152, 13159), (13181, 13191), (13230, 13240)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (12887, 12889)) (intervals := [(12896, 12897), (12906, 12906), (12933, 12943), (12960, 12970), (12987, 12997), (13000, 13002), (13024, 13024), (13034, 13034), (13041, 13044), (13088, 13093), (13095, 13098), (13122, 13135), (13152, 13159), (13181, 13191), (13230, 13240)]) c0496_sound (intervals_sound_cons (I := (12896, 12897)) (intervals := [(12906, 12906), (12933, 12943), (12960, 12970), (12987, 12997), (13000, 13002), (13024, 13024), (13034, 13034), (13041, 13044), (13088, 13093), (13095, 13098), (13122, 13135), (13152, 13159), (13181, 13191), (13230, 13240)]) c0497_sound (intervals_sound_cons (I := (12906, 12906)) (intervals := [(12933, 12943), (12960, 12970), (12987, 12997), (13000, 13002), (13024, 13024), (13034, 13034), (13041, 13044), (13088, 13093), (13095, 13098), (13122, 13135), (13152, 13159), (13181, 13191), (13230, 13240)]) c0498_sound (intervals_sound_cons (I := (12933, 12943)) (intervals := [(12960, 12970), (12987, 12997), (13000, 13002), (13024, 13024), (13034, 13034), (13041, 13044), (13088, 13093), (13095, 13098), (13122, 13135), (13152, 13159), (13181, 13191), (13230, 13240)]) c0499_sound (intervals_sound_cons (I := (12960, 12970)) (intervals := [(12987, 12997), (13000, 13002), (13024, 13024), (13034, 13034), (13041, 13044), (13088, 13093), (13095, 13098), (13122, 13135), (13152, 13159), (13181, 13191), (13230, 13240)]) c0500_sound (intervals_sound_cons (I := (12987, 12997)) (intervals := [(13000, 13002), (13024, 13024), (13034, 13034), (13041, 13044), (13088, 13093), (13095, 13098), (13122, 13135), (13152, 13159), (13181, 13191), (13230, 13240)]) c0501_sound (intervals_sound_cons (I := (13000, 13002)) (intervals := [(13024, 13024), (13034, 13034), (13041, 13044), (13088, 13093), (13095, 13098), (13122, 13135), (13152, 13159), (13181, 13191), (13230, 13240)]) c0502_sound (intervals_sound_cons (I := (13024, 13024)) (intervals := [(13034, 13034), (13041, 13044), (13088, 13093), (13095, 13098), (13122, 13135), (13152, 13159), (13181, 13191), (13230, 13240)]) c0503_sound (intervals_sound_cons (I := (13034, 13034)) (intervals := [(13041, 13044), (13088, 13093), (13095, 13098), (13122, 13135), (13152, 13159), (13181, 13191), (13230, 13240)]) c0504_sound (intervals_sound_cons (I := (13041, 13044)) (intervals := [(13088, 13093), (13095, 13098), (13122, 13135), (13152, 13159), (13181, 13191), (13230, 13240)]) c0505_sound (intervals_sound_cons (I := (13088, 13093)) (intervals := [(13095, 13098), (13122, 13135), (13152, 13159), (13181, 13191), (13230, 13240)]) c0506_sound (intervals_sound_cons (I := (13095, 13098)) (intervals := [(13122, 13135), (13152, 13159), (13181, 13191), (13230, 13240)]) c0507_sound (intervals_sound_cons (I := (13122, 13135)) (intervals := [(13152, 13159), (13181, 13191), (13230, 13240)]) c0508_sound (intervals_sound_cons (I := (13152, 13159)) (intervals := [(13181, 13191), (13230, 13240)]) c0509_sound (intervals_sound_cons (I := (13181, 13191)) (intervals := [(13230, 13240)]) c0510_sound (intervals_sound_cons (I := (13230, 13240)) (intervals := []) c0511_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G031
