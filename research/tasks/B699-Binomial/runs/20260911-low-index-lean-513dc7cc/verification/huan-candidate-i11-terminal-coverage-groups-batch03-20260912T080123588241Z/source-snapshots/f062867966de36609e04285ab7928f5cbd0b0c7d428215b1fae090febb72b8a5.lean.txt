import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk150
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk151
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk152

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G028
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0448_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk150.w3, B699LowIndex.I11TerminalData.Chunk150.w4, B699LowIndex.I11TerminalData.Chunk150.w5, B699LowIndex.I11TerminalData.Chunk150.w6, B699LowIndex.I11TerminalData.Chunk150.w7, B699LowIndex.I11TerminalData.Chunk150.w8, B699LowIndex.I11TerminalData.Chunk150.w9, B699LowIndex.I11TerminalData.Chunk150.w10, B699LowIndex.I11TerminalData.Chunk150.w11]
private def c0448_intervals : List NatInterval := [(11875, 11877), (11878, 11878), (11879, 11879), (11880, 11880), (11881, 11881), (11882, 11882), (11883, 11883), (11884, 11884), (11885, 11885)]

private theorem c0448_intervals_eq :
    witnessIntervals c0448_witnesses = c0448_intervals := by
  rfl

private theorem c0448_checks : witnessesCheck c0448_witnesses = true := by
  simp only [witnessesCheck, c0448_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk150.w3_check, B699LowIndex.I11TerminalData.Chunk150.w4_check, B699LowIndex.I11TerminalData.Chunk150.w5_check, B699LowIndex.I11TerminalData.Chunk150.w6_check, B699LowIndex.I11TerminalData.Chunk150.w7_check, B699LowIndex.I11TerminalData.Chunk150.w8_check, B699LowIndex.I11TerminalData.Chunk150.w9_check, B699LowIndex.I11TerminalData.Chunk150.w10_check, B699LowIndex.I11TerminalData.Chunk150.w11_check, Bool.and_self]

private theorem c0448_cover : coverCheck 11875 11885 c0448_intervals = true := by
  decide

private theorem c0448_sound : IntervalSound (11875, 11885) := by
  have hc : coverCheck 11875 11885 (witnessIntervals c0448_witnesses) = true := by
    rw [c0448_intervals_eq]
    exact c0448_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0448_witnesses)
    (lo := 11875) (hi := 11885) c0448_checks hc

private def c0449_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk150.w12, B699LowIndex.I11TerminalData.Chunk150.w13]
private def c0449_intervals : List NatInterval := [(11904, 11913), (11914, 11917)]

private theorem c0449_intervals_eq :
    witnessIntervals c0449_witnesses = c0449_intervals := by
  rfl

private theorem c0449_checks : witnessesCheck c0449_witnesses = true := by
  simp only [witnessesCheck, c0449_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk150.w12_check, B699LowIndex.I11TerminalData.Chunk150.w13_check, Bool.and_self]

private theorem c0449_cover : coverCheck 11904 11917 c0449_intervals = true := by
  decide

private theorem c0449_sound : IntervalSound (11904, 11917) := by
  have hc : coverCheck 11904 11917 (witnessIntervals c0449_witnesses) = true := by
    rw [c0449_intervals_eq]
    exact c0449_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0449_witnesses)
    (lo := 11904) (hi := 11917) c0449_checks hc

private def c0450_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk150.w14, B699LowIndex.I11TerminalData.Chunk150.w15]
private def c0450_intervals : List NatInterval := [(11934, 11943), (11944, 11944)]

private theorem c0450_intervals_eq :
    witnessIntervals c0450_witnesses = c0450_intervals := by
  rfl

private theorem c0450_checks : witnessesCheck c0450_witnesses = true := by
  simp only [witnessesCheck, c0450_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk150.w14_check, B699LowIndex.I11TerminalData.Chunk150.w15_check, Bool.and_self]

private theorem c0450_cover : coverCheck 11934 11944 c0450_intervals = true := by
  decide

private theorem c0450_sound : IntervalSound (11934, 11944) := by
  have hc : coverCheck 11934 11944 (witnessIntervals c0450_witnesses) = true := by
    rw [c0450_intervals_eq]
    exact c0450_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0450_witnesses)
    (lo := 11934) (hi := 11944) c0450_checks hc

private def c0451_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk151.w0, B699LowIndex.I11TerminalData.Chunk151.w1]
private def c0451_intervals : List NatInterval := [(11956, 11963), (11964, 11966)]

private theorem c0451_intervals_eq :
    witnessIntervals c0451_witnesses = c0451_intervals := by
  rfl

private theorem c0451_checks : witnessesCheck c0451_witnesses = true := by
  simp only [witnessesCheck, c0451_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk151.w0_check, B699LowIndex.I11TerminalData.Chunk151.w1_check, Bool.and_self]

private theorem c0451_cover : coverCheck 11956 11966 c0451_intervals = true := by
  decide

private theorem c0451_sound : IntervalSound (11956, 11966) := by
  have hc : coverCheck 11956 11966 (witnessIntervals c0451_witnesses) = true := by
    rw [c0451_intervals_eq]
    exact c0451_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0451_witnesses)
    (lo := 11956) (hi := 11966) c0451_checks hc

private def c0452_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk151.w2, B699LowIndex.I11TerminalData.Chunk151.w3]
private def c0452_intervals : List NatInterval := [(11968, 11969), (11970, 11971)]

private theorem c0452_intervals_eq :
    witnessIntervals c0452_witnesses = c0452_intervals := by
  rfl

private theorem c0452_checks : witnessesCheck c0452_witnesses = true := by
  simp only [witnessesCheck, c0452_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk151.w2_check, B699LowIndex.I11TerminalData.Chunk151.w3_check, Bool.and_self]

private theorem c0452_cover : coverCheck 11968 11971 c0452_intervals = true := by
  decide

private theorem c0452_sound : IntervalSound (11968, 11971) := by
  have hc : coverCheck 11968 11971 (witnessIntervals c0452_witnesses) = true := by
    rw [c0452_intervals_eq]
    exact c0452_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0452_witnesses)
    (lo := 11968) (hi := 11971) c0452_checks hc

private def c0453_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk151.w4]
private def c0453_intervals : List NatInterval := [(11975, 11978)]

private theorem c0453_intervals_eq :
    witnessIntervals c0453_witnesses = c0453_intervals := by
  rfl

private theorem c0453_checks : witnessesCheck c0453_witnesses = true := by
  simp only [witnessesCheck, c0453_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk151.w4_check, Bool.and_self]

private theorem c0453_cover : coverCheck 11975 11978 c0453_intervals = true := by
  decide

private theorem c0453_sound : IntervalSound (11975, 11978) := by
  have hc : coverCheck 11975 11978 (witnessIntervals c0453_witnesses) = true := by
    rw [c0453_intervals_eq]
    exact c0453_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0453_witnesses)
    (lo := 11975) (hi := 11978) c0453_checks hc

private def c0454_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk151.w5, B699LowIndex.I11TerminalData.Chunk151.w6, B699LowIndex.I11TerminalData.Chunk151.w7, B699LowIndex.I11TerminalData.Chunk151.w8, B699LowIndex.I11TerminalData.Chunk151.w9, B699LowIndex.I11TerminalData.Chunk151.w10, B699LowIndex.I11TerminalData.Chunk151.w11, B699LowIndex.I11TerminalData.Chunk151.w12]
private def c0454_intervals : List NatInterval := [(12000, 12000), (12001, 12001), (12002, 12002), (12003, 12003), (12004, 12004), (12005, 12005), (12006, 12006), (12007, 12010)]

private theorem c0454_intervals_eq :
    witnessIntervals c0454_witnesses = c0454_intervals := by
  rfl

private theorem c0454_checks : witnessesCheck c0454_witnesses = true := by
  simp only [witnessesCheck, c0454_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk151.w5_check, B699LowIndex.I11TerminalData.Chunk151.w6_check, B699LowIndex.I11TerminalData.Chunk151.w7_check, B699LowIndex.I11TerminalData.Chunk151.w8_check, B699LowIndex.I11TerminalData.Chunk151.w9_check, B699LowIndex.I11TerminalData.Chunk151.w10_check, B699LowIndex.I11TerminalData.Chunk151.w11_check, B699LowIndex.I11TerminalData.Chunk151.w12_check, Bool.and_self]

private theorem c0454_cover : coverCheck 12000 12010 c0454_intervals = true := by
  decide

private theorem c0454_sound : IntervalSound (12000, 12010) := by
  have hc : coverCheck 12000 12010 (witnessIntervals c0454_witnesses) = true := by
    rw [c0454_intervals_eq]
    exact c0454_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0454_witnesses)
    (lo := 12000) (hi := 12010) c0454_checks hc

private def c0455_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk151.w13]
private def c0455_intervals : List NatInterval := [(12015, 12015)]

private theorem c0455_intervals_eq :
    witnessIntervals c0455_witnesses = c0455_intervals := by
  rfl

private theorem c0455_checks : witnessesCheck c0455_witnesses = true := by
  simp only [witnessesCheck, c0455_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk151.w13_check, Bool.and_self]

private theorem c0455_cover : coverCheck 12015 12015 c0455_intervals = true := by
  decide

private theorem c0455_sound : IntervalSound (12015, 12015) := by
  have hc : coverCheck 12015 12015 (witnessIntervals c0455_witnesses) = true := by
    rw [c0455_intervals_eq]
    exact c0455_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0455_witnesses)
    (lo := 12015) (hi := 12015) c0455_checks hc

private def c0456_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk151.w14]
private def c0456_intervals : List NatInterval := [(12025, 12025)]

private theorem c0456_intervals_eq :
    witnessIntervals c0456_witnesses = c0456_intervals := by
  rfl

private theorem c0456_checks : witnessesCheck c0456_witnesses = true := by
  simp only [witnessesCheck, c0456_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk151.w14_check, Bool.and_self]

private theorem c0456_cover : coverCheck 12025 12025 c0456_intervals = true := by
  decide

private theorem c0456_sound : IntervalSound (12025, 12025) := by
  have hc : coverCheck 12025 12025 (witnessIntervals c0456_witnesses) = true := by
    rw [c0456_intervals_eq]
    exact c0456_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0456_witnesses)
    (lo := 12025) (hi := 12025) c0456_checks hc

private def c0457_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk151.w15, B699LowIndex.I11TerminalData.Chunk152.w0, B699LowIndex.I11TerminalData.Chunk152.w1, B699LowIndex.I11TerminalData.Chunk152.w2]
private def c0457_intervals : List NatInterval := [(12032, 12032), (12033, 12033), (12034, 12034), (12035, 12035)]

private theorem c0457_intervals_eq :
    witnessIntervals c0457_witnesses = c0457_intervals := by
  rfl

private theorem c0457_checks : witnessesCheck c0457_witnesses = true := by
  simp only [witnessesCheck, c0457_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk151.w15_check, B699LowIndex.I11TerminalData.Chunk152.w0_check, B699LowIndex.I11TerminalData.Chunk152.w1_check, B699LowIndex.I11TerminalData.Chunk152.w2_check, Bool.and_self]

private theorem c0457_cover : coverCheck 12032 12035 c0457_intervals = true := by
  decide

private theorem c0457_sound : IntervalSound (12032, 12035) := by
  have hc : coverCheck 12032 12035 (witnessIntervals c0457_witnesses) = true := by
    rw [c0457_intervals_eq]
    exact c0457_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0457_witnesses)
    (lo := 12032) (hi := 12035) c0457_checks hc

private def c0458_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk152.w3]
private def c0458_intervals : List NatInterval := [(12042, 12042)]

private theorem c0458_intervals_eq :
    witnessIntervals c0458_witnesses = c0458_intervals := by
  rfl

private theorem c0458_checks : witnessesCheck c0458_witnesses = true := by
  simp only [witnessesCheck, c0458_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk152.w3_check, Bool.and_self]

private theorem c0458_cover : coverCheck 12042 12042 c0458_intervals = true := by
  decide

private theorem c0458_sound : IntervalSound (12042, 12042) := by
  have hc : coverCheck 12042 12042 (witnessIntervals c0458_witnesses) = true := by
    rw [c0458_intervals_eq]
    exact c0458_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0458_witnesses)
    (lo := 12042) (hi := 12042) c0458_checks hc

private def c0459_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk152.w4]
private def c0459_intervals : List NatInterval := [(12050, 12052)]

private theorem c0459_intervals_eq :
    witnessIntervals c0459_witnesses = c0459_intervals := by
  rfl

private theorem c0459_checks : witnessesCheck c0459_witnesses = true := by
  simp only [witnessesCheck, c0459_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk152.w4_check, Bool.and_self]

private theorem c0459_cover : coverCheck 12050 12052 c0459_intervals = true := by
  decide

private theorem c0459_sound : IntervalSound (12050, 12052) := by
  have hc : coverCheck 12050 12052 (witnessIntervals c0459_witnesses) = true := by
    rw [c0459_intervals_eq]
    exact c0459_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0459_witnesses)
    (lo := 12050) (hi := 12052) c0459_checks hc

private def c0460_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk152.w5, B699LowIndex.I11TerminalData.Chunk152.w6]
private def c0460_intervals : List NatInterval := [(12054, 12059), (12060, 12060)]

private theorem c0460_intervals_eq :
    witnessIntervals c0460_witnesses = c0460_intervals := by
  rfl

private theorem c0460_checks : witnessesCheck c0460_witnesses = true := by
  simp only [witnessesCheck, c0460_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk152.w5_check, B699LowIndex.I11TerminalData.Chunk152.w6_check, Bool.and_self]

private theorem c0460_cover : coverCheck 12054 12060 c0460_intervals = true := by
  decide

private theorem c0460_sound : IntervalSound (12054, 12060) := by
  have hc : coverCheck 12054 12060 (witnessIntervals c0460_witnesses) = true := by
    rw [c0460_intervals_eq]
    exact c0460_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0460_witnesses)
    (lo := 12054) (hi := 12060) c0460_checks hc

private def c0461_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk152.w7]
private def c0461_intervals : List NatInterval := [(12064, 12064)]

private theorem c0461_intervals_eq :
    witnessIntervals c0461_witnesses = c0461_intervals := by
  rfl

private theorem c0461_checks : witnessesCheck c0461_witnesses = true := by
  simp only [witnessesCheck, c0461_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk152.w7_check, Bool.and_self]

private theorem c0461_cover : coverCheck 12064 12064 c0461_intervals = true := by
  decide

private theorem c0461_sound : IntervalSound (12064, 12064) := by
  have hc : coverCheck 12064 12064 (witnessIntervals c0461_witnesses) = true := by
    rw [c0461_intervals_eq]
    exact c0461_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0461_witnesses)
    (lo := 12064) (hi := 12064) c0461_checks hc

private def c0462_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk152.w8, B699LowIndex.I11TerminalData.Chunk152.w9, B699LowIndex.I11TerminalData.Chunk152.w10]
private def c0462_intervals : List NatInterval := [(12069, 12069), (12070, 12070), (12071, 12079)]

private theorem c0462_intervals_eq :
    witnessIntervals c0462_witnesses = c0462_intervals := by
  rfl

private theorem c0462_checks : witnessesCheck c0462_witnesses = true := by
  simp only [witnessesCheck, c0462_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk152.w8_check, B699LowIndex.I11TerminalData.Chunk152.w9_check, B699LowIndex.I11TerminalData.Chunk152.w10_check, Bool.and_self]

private theorem c0462_cover : coverCheck 12069 12079 c0462_intervals = true := by
  decide

private theorem c0462_sound : IntervalSound (12069, 12079) := by
  have hc : coverCheck 12069 12079 (witnessIntervals c0462_witnesses) = true := by
    rw [c0462_intervals_eq]
    exact c0462_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0462_witnesses)
    (lo := 12069) (hi := 12079) c0462_checks hc

private def c0463_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk152.w11, B699LowIndex.I11TerminalData.Chunk152.w12, B699LowIndex.I11TerminalData.Chunk152.w13]
private def c0463_intervals : List NatInterval := [(12096, 12096), (12097, 12107), (12108, 12110)]

private theorem c0463_intervals_eq :
    witnessIntervals c0463_witnesses = c0463_intervals := by
  rfl

private theorem c0463_checks : witnessesCheck c0463_witnesses = true := by
  simp only [witnessesCheck, c0463_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk152.w11_check, B699LowIndex.I11TerminalData.Chunk152.w12_check, B699LowIndex.I11TerminalData.Chunk152.w13_check, Bool.and_self]

private theorem c0463_cover : coverCheck 12096 12110 c0463_intervals = true := by
  decide

private theorem c0463_sound : IntervalSound (12096, 12110) := by
  have hc : coverCheck 12096 12110 (witnessIntervals c0463_witnesses) = true := by
    rw [c0463_intervals_eq]
    exact c0463_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0463_witnesses)
    (lo := 12096) (hi := 12110) c0463_checks hc

def intervals : List NatInterval := [(11875, 11885), (11904, 11917), (11934, 11944), (11956, 11966), (11968, 11971), (11975, 11978), (12000, 12010), (12015, 12015), (12025, 12025), (12032, 12035), (12042, 12042), (12050, 12052), (12054, 12060), (12064, 12064), (12069, 12079), (12096, 12110)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (11875, 11885)) (intervals := [(11904, 11917), (11934, 11944), (11956, 11966), (11968, 11971), (11975, 11978), (12000, 12010), (12015, 12015), (12025, 12025), (12032, 12035), (12042, 12042), (12050, 12052), (12054, 12060), (12064, 12064), (12069, 12079), (12096, 12110)]) c0448_sound (intervals_sound_cons (I := (11904, 11917)) (intervals := [(11934, 11944), (11956, 11966), (11968, 11971), (11975, 11978), (12000, 12010), (12015, 12015), (12025, 12025), (12032, 12035), (12042, 12042), (12050, 12052), (12054, 12060), (12064, 12064), (12069, 12079), (12096, 12110)]) c0449_sound (intervals_sound_cons (I := (11934, 11944)) (intervals := [(11956, 11966), (11968, 11971), (11975, 11978), (12000, 12010), (12015, 12015), (12025, 12025), (12032, 12035), (12042, 12042), (12050, 12052), (12054, 12060), (12064, 12064), (12069, 12079), (12096, 12110)]) c0450_sound (intervals_sound_cons (I := (11956, 11966)) (intervals := [(11968, 11971), (11975, 11978), (12000, 12010), (12015, 12015), (12025, 12025), (12032, 12035), (12042, 12042), (12050, 12052), (12054, 12060), (12064, 12064), (12069, 12079), (12096, 12110)]) c0451_sound (intervals_sound_cons (I := (11968, 11971)) (intervals := [(11975, 11978), (12000, 12010), (12015, 12015), (12025, 12025), (12032, 12035), (12042, 12042), (12050, 12052), (12054, 12060), (12064, 12064), (12069, 12079), (12096, 12110)]) c0452_sound (intervals_sound_cons (I := (11975, 11978)) (intervals := [(12000, 12010), (12015, 12015), (12025, 12025), (12032, 12035), (12042, 12042), (12050, 12052), (12054, 12060), (12064, 12064), (12069, 12079), (12096, 12110)]) c0453_sound (intervals_sound_cons (I := (12000, 12010)) (intervals := [(12015, 12015), (12025, 12025), (12032, 12035), (12042, 12042), (12050, 12052), (12054, 12060), (12064, 12064), (12069, 12079), (12096, 12110)]) c0454_sound (intervals_sound_cons (I := (12015, 12015)) (intervals := [(12025, 12025), (12032, 12035), (12042, 12042), (12050, 12052), (12054, 12060), (12064, 12064), (12069, 12079), (12096, 12110)]) c0455_sound (intervals_sound_cons (I := (12025, 12025)) (intervals := [(12032, 12035), (12042, 12042), (12050, 12052), (12054, 12060), (12064, 12064), (12069, 12079), (12096, 12110)]) c0456_sound (intervals_sound_cons (I := (12032, 12035)) (intervals := [(12042, 12042), (12050, 12052), (12054, 12060), (12064, 12064), (12069, 12079), (12096, 12110)]) c0457_sound (intervals_sound_cons (I := (12042, 12042)) (intervals := [(12050, 12052), (12054, 12060), (12064, 12064), (12069, 12079), (12096, 12110)]) c0458_sound (intervals_sound_cons (I := (12050, 12052)) (intervals := [(12054, 12060), (12064, 12064), (12069, 12079), (12096, 12110)]) c0459_sound (intervals_sound_cons (I := (12054, 12060)) (intervals := [(12064, 12064), (12069, 12079), (12096, 12110)]) c0460_sound (intervals_sound_cons (I := (12064, 12064)) (intervals := [(12069, 12079), (12096, 12110)]) c0461_sound (intervals_sound_cons (I := (12069, 12079)) (intervals := [(12096, 12110)]) c0462_sound (intervals_sound_cons (I := (12096, 12110)) (intervals := []) c0463_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G028
