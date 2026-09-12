import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-terminal-candidate-coverage-5e2d13bb».Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk107
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk108
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk109
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk110

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G014
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0224_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk107.w2, B699LowIndex.I11TerminalData.Chunk107.w3, B699LowIndex.I11TerminalData.Chunk107.w4, B699LowIndex.I11TerminalData.Chunk107.w5, B699LowIndex.I11TerminalData.Chunk107.w6, B699LowIndex.I11TerminalData.Chunk107.w7, B699LowIndex.I11TerminalData.Chunk107.w8, B699LowIndex.I11TerminalData.Chunk107.w9, B699LowIndex.I11TerminalData.Chunk107.w10, B699LowIndex.I11TerminalData.Chunk107.w11, B699LowIndex.I11TerminalData.Chunk107.w12]
private def c0224_intervals : List NatInterval := [(7776, 7776), (7777, 7777), (7778, 7778), (7779, 7779), (7780, 7780), (7781, 7781), (7782, 7782), (7783, 7783), (7784, 7784), (7785, 7785), (7786, 7786)]

private theorem c0224_intervals_eq :
    witnessIntervals c0224_witnesses = c0224_intervals := by
  rfl

private theorem c0224_checks : witnessesCheck c0224_witnesses = true := by
  simp only [witnessesCheck, c0224_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk107.w2_check, B699LowIndex.I11TerminalData.Chunk107.w3_check, B699LowIndex.I11TerminalData.Chunk107.w4_check, B699LowIndex.I11TerminalData.Chunk107.w5_check, B699LowIndex.I11TerminalData.Chunk107.w6_check, B699LowIndex.I11TerminalData.Chunk107.w7_check, B699LowIndex.I11TerminalData.Chunk107.w8_check, B699LowIndex.I11TerminalData.Chunk107.w9_check, B699LowIndex.I11TerminalData.Chunk107.w10_check, B699LowIndex.I11TerminalData.Chunk107.w11_check, B699LowIndex.I11TerminalData.Chunk107.w12_check, Bool.and_self]

private theorem c0224_cover : coverCheck 7776 7786 c0224_intervals = true := by
  decide

private theorem c0224_sound : IntervalSound (7776, 7786) := by
  have hc : coverCheck 7776 7786 (witnessIntervals c0224_witnesses) = true := by
    rw [c0224_intervals_eq]
    exact c0224_cover
  exact interval_sound_of_witness_checks (witnesses := c0224_witnesses)
    (lo := 7776) (hi := 7786) c0224_checks hc

private def c0225_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk107.w13, B699LowIndex.I11TerminalData.Chunk107.w14, B699LowIndex.I11TerminalData.Chunk107.w15, B699LowIndex.I11TerminalData.Chunk108.w0, B699LowIndex.I11TerminalData.Chunk108.w1, B699LowIndex.I11TerminalData.Chunk108.w2, B699LowIndex.I11TerminalData.Chunk108.w3, B699LowIndex.I11TerminalData.Chunk108.w4, B699LowIndex.I11TerminalData.Chunk108.w5, B699LowIndex.I11TerminalData.Chunk108.w6, B699LowIndex.I11TerminalData.Chunk108.w7, B699LowIndex.I11TerminalData.Chunk108.w8]
private def c0225_intervals : List NatInterval := [(7792, 7799), (7800, 7803), (7804, 7804), (7805, 7805), (7806, 7806), (7807, 7807), (7808, 7808), (7809, 7809), (7810, 7810), (7811, 7811), (7812, 7812), (7813, 7813)]

private theorem c0225_intervals_eq :
    witnessIntervals c0225_witnesses = c0225_intervals := by
  rfl

private theorem c0225_checks : witnessesCheck c0225_witnesses = true := by
  simp only [witnessesCheck, c0225_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk107.w13_check, B699LowIndex.I11TerminalData.Chunk107.w14_check, B699LowIndex.I11TerminalData.Chunk107.w15_check, B699LowIndex.I11TerminalData.Chunk108.w0_check, B699LowIndex.I11TerminalData.Chunk108.w1_check, B699LowIndex.I11TerminalData.Chunk108.w2_check, B699LowIndex.I11TerminalData.Chunk108.w3_check, B699LowIndex.I11TerminalData.Chunk108.w4_check, B699LowIndex.I11TerminalData.Chunk108.w5_check, B699LowIndex.I11TerminalData.Chunk108.w6_check, B699LowIndex.I11TerminalData.Chunk108.w7_check, B699LowIndex.I11TerminalData.Chunk108.w8_check, Bool.and_self]

private theorem c0225_cover : coverCheck 7792 7813 c0225_intervals = true := by
  decide

private theorem c0225_sound : IntervalSound (7792, 7813) := by
  have hc : coverCheck 7792 7813 (witnessIntervals c0225_witnesses) = true := by
    rw [c0225_intervals_eq]
    exact c0225_cover
  exact interval_sound_of_witness_checks (witnesses := c0225_witnesses)
    (lo := 7792) (hi := 7813) c0225_checks hc

private def c0226_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk108.w9, B699LowIndex.I11TerminalData.Chunk108.w10]
private def c0226_intervals : List NatInterval := [(7825, 7833), (7834, 7835)]

private theorem c0226_intervals_eq :
    witnessIntervals c0226_witnesses = c0226_intervals := by
  rfl

private theorem c0226_checks : witnessesCheck c0226_witnesses = true := by
  simp only [witnessesCheck, c0226_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk108.w9_check, B699LowIndex.I11TerminalData.Chunk108.w10_check, Bool.and_self]

private theorem c0226_cover : coverCheck 7825 7835 c0226_intervals = true := by
  decide

private theorem c0226_sound : IntervalSound (7825, 7835) := by
  have hc : coverCheck 7825 7835 (witnessIntervals c0226_witnesses) = true := by
    rw [c0226_intervals_eq]
    exact c0226_cover
  exact interval_sound_of_witness_checks (witnesses := c0226_witnesses)
    (lo := 7825) (hi := 7835) c0226_checks hc

private def c0227_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk108.w11, B699LowIndex.I11TerminalData.Chunk108.w12]
private def c0227_intervals : List NatInterval := [(7840, 7840), (7841, 7850)]

private theorem c0227_intervals_eq :
    witnessIntervals c0227_witnesses = c0227_intervals := by
  rfl

private theorem c0227_checks : witnessesCheck c0227_witnesses = true := by
  simp only [witnessesCheck, c0227_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk108.w11_check, B699LowIndex.I11TerminalData.Chunk108.w12_check, Bool.and_self]

private theorem c0227_cover : coverCheck 7840 7850 c0227_intervals = true := by
  decide

private theorem c0227_sound : IntervalSound (7840, 7850) := by
  have hc : coverCheck 7840 7850 (witnessIntervals c0227_witnesses) = true := by
    rw [c0227_intervals_eq]
    exact c0227_cover
  exact interval_sound_of_witness_checks (witnesses := c0227_witnesses)
    (lo := 7840) (hi := 7850) c0227_checks hc

private def c0228_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk108.w13, B699LowIndex.I11TerminalData.Chunk108.w14, B699LowIndex.I11TerminalData.Chunk108.w15, B699LowIndex.I11TerminalData.Chunk109.w0]
private def c0228_intervals : List NatInterval := [(7856, 7863), (7864, 7864), (7865, 7865), (7866, 7866)]

private theorem c0228_intervals_eq :
    witnessIntervals c0228_witnesses = c0228_intervals := by
  rfl

private theorem c0228_checks : witnessesCheck c0228_witnesses = true := by
  simp only [witnessesCheck, c0228_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk108.w13_check, B699LowIndex.I11TerminalData.Chunk108.w14_check, B699LowIndex.I11TerminalData.Chunk108.w15_check, B699LowIndex.I11TerminalData.Chunk109.w0_check, Bool.and_self]

private theorem c0228_cover : coverCheck 7856 7866 c0228_intervals = true := by
  decide

private theorem c0228_sound : IntervalSound (7856, 7866) := by
  have hc : coverCheck 7856 7866 (witnessIntervals c0228_witnesses) = true := by
    rw [c0228_intervals_eq]
    exact c0228_cover
  exact interval_sound_of_witness_checks (witnesses := c0228_witnesses)
    (lo := 7856) (hi := 7866) c0228_checks hc

private def c0229_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk109.w1]
private def c0229_intervals : List NatInterval := [(7875, 7882)]

private theorem c0229_intervals_eq :
    witnessIntervals c0229_witnesses = c0229_intervals := by
  rfl

private theorem c0229_checks : witnessesCheck c0229_witnesses = true := by
  simp only [witnessesCheck, c0229_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk109.w1_check, Bool.and_self]

private theorem c0229_cover : coverCheck 7875 7882 c0229_intervals = true := by
  decide

private theorem c0229_sound : IntervalSound (7875, 7882) := by
  have hc : coverCheck 7875 7882 (witnessIntervals c0229_witnesses) = true := by
    rw [c0229_intervals_eq]
    exact c0229_cover
  exact interval_sound_of_witness_checks (witnesses := c0229_witnesses)
    (lo := 7875) (hi := 7882) c0229_checks hc

private def c0230_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk109.w2]
private def c0230_intervals : List NatInterval := [(7884, 7885)]

private theorem c0230_intervals_eq :
    witnessIntervals c0230_witnesses = c0230_intervals := by
  rfl

private theorem c0230_checks : witnessesCheck c0230_witnesses = true := by
  simp only [witnessesCheck, c0230_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk109.w2_check, Bool.and_self]

private theorem c0230_cover : coverCheck 7884 7885 c0230_intervals = true := by
  decide

private theorem c0230_sound : IntervalSound (7884, 7885) := by
  have hc : coverCheck 7884 7885 (witnessIntervals c0230_witnesses) = true := by
    rw [c0230_intervals_eq]
    exact c0230_cover
  exact interval_sound_of_witness_checks (witnesses := c0230_witnesses)
    (lo := 7884) (hi := 7885) c0230_checks hc

private def c0231_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk109.w3, B699LowIndex.I11TerminalData.Chunk109.w4, B699LowIndex.I11TerminalData.Chunk109.w5, B699LowIndex.I11TerminalData.Chunk109.w6, B699LowIndex.I11TerminalData.Chunk109.w7, B699LowIndex.I11TerminalData.Chunk109.w8]
private def c0231_intervals : List NatInterval := [(7888, 7893), (7894, 7894), (7895, 7895), (7896, 7896), (7897, 7897), (7898, 7898)]

private theorem c0231_intervals_eq :
    witnessIntervals c0231_witnesses = c0231_intervals := by
  rfl

private theorem c0231_checks : witnessesCheck c0231_witnesses = true := by
  simp only [witnessesCheck, c0231_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk109.w3_check, B699LowIndex.I11TerminalData.Chunk109.w4_check, B699LowIndex.I11TerminalData.Chunk109.w5_check, B699LowIndex.I11TerminalData.Chunk109.w6_check, B699LowIndex.I11TerminalData.Chunk109.w7_check, B699LowIndex.I11TerminalData.Chunk109.w8_check, Bool.and_self]

private theorem c0231_cover : coverCheck 7888 7898 c0231_intervals = true := by
  decide

private theorem c0231_sound : IntervalSound (7888, 7898) := by
  have hc : coverCheck 7888 7898 (witnessIntervals c0231_witnesses) = true := by
    rw [c0231_intervals_eq]
    exact c0231_cover
  exact interval_sound_of_witness_checks (witnesses := c0231_witnesses)
    (lo := 7888) (hi := 7898) c0231_checks hc

private def c0232_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk109.w9, B699LowIndex.I11TerminalData.Chunk109.w10]
private def c0232_intervals : List NatInterval := [(7904, 7911), (7912, 7914)]

private theorem c0232_intervals_eq :
    witnessIntervals c0232_witnesses = c0232_intervals := by
  rfl

private theorem c0232_checks : witnessesCheck c0232_witnesses = true := by
  simp only [witnessesCheck, c0232_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk109.w9_check, B699LowIndex.I11TerminalData.Chunk109.w10_check, Bool.and_self]

private theorem c0232_cover : coverCheck 7904 7914 c0232_intervals = true := by
  decide

private theorem c0232_sound : IntervalSound (7904, 7914) := by
  have hc : coverCheck 7904 7914 (witnessIntervals c0232_witnesses) = true := by
    rw [c0232_intervals_eq]
    exact c0232_cover
  exact interval_sound_of_witness_checks (witnesses := c0232_witnesses)
    (lo := 7904) (hi := 7914) c0232_checks hc

private def c0233_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk109.w11]
private def c0233_intervals : List NatInterval := [(7920, 7921)]

private theorem c0233_intervals_eq :
    witnessIntervals c0233_witnesses = c0233_intervals := by
  rfl

private theorem c0233_checks : witnessesCheck c0233_witnesses = true := by
  simp only [witnessesCheck, c0233_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk109.w11_check, Bool.and_self]

private theorem c0233_cover : coverCheck 7920 7921 c0233_intervals = true := by
  decide

private theorem c0233_sound : IntervalSound (7920, 7921) := by
  have hc : coverCheck 7920 7921 (witnessIntervals c0233_witnesses) = true := by
    rw [c0233_intervals_eq]
    exact c0233_cover
  exact interval_sound_of_witness_checks (witnesses := c0233_witnesses)
    (lo := 7920) (hi := 7921) c0233_checks hc

private def c0234_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk109.w12, B699LowIndex.I11TerminalData.Chunk109.w13]
private def c0234_intervals : List NatInterval := [(7925, 7929), (7930, 7930)]

private theorem c0234_intervals_eq :
    witnessIntervals c0234_witnesses = c0234_intervals := by
  rfl

private theorem c0234_checks : witnessesCheck c0234_witnesses = true := by
  simp only [witnessesCheck, c0234_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk109.w12_check, B699LowIndex.I11TerminalData.Chunk109.w13_check, Bool.and_self]

private theorem c0234_cover : coverCheck 7925 7930 c0234_intervals = true := by
  decide

private theorem c0234_sound : IntervalSound (7925, 7930) := by
  have hc : coverCheck 7925 7930 (witnessIntervals c0234_witnesses) = true := by
    rw [c0234_intervals_eq]
    exact c0234_cover
  exact interval_sound_of_witness_checks (witnesses := c0234_witnesses)
    (lo := 7925) (hi := 7930) c0234_checks hc

private def c0235_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk109.w14, B699LowIndex.I11TerminalData.Chunk109.w15]
private def c0235_intervals : List NatInterval := [(7938, 7947), (7948, 7948)]

private theorem c0235_intervals_eq :
    witnessIntervals c0235_witnesses = c0235_intervals := by
  rfl

private theorem c0235_checks : witnessesCheck c0235_witnesses = true := by
  simp only [witnessesCheck, c0235_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk109.w14_check, B699LowIndex.I11TerminalData.Chunk109.w15_check, Bool.and_self]

private theorem c0235_cover : coverCheck 7938 7948 c0235_intervals = true := by
  decide

private theorem c0235_sound : IntervalSound (7938, 7948) := by
  have hc : coverCheck 7938 7948 (witnessIntervals c0235_witnesses) = true := by
    rw [c0235_intervals_eq]
    exact c0235_cover
  exact interval_sound_of_witness_checks (witnesses := c0235_witnesses)
    (lo := 7938) (hi := 7948) c0235_checks hc

private def c0236_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk110.w0]
private def c0236_intervals : List NatInterval := [(7952, 7960)]

private theorem c0236_intervals_eq :
    witnessIntervals c0236_witnesses = c0236_intervals := by
  rfl

private theorem c0236_checks : witnessesCheck c0236_witnesses = true := by
  simp only [witnessesCheck, c0236_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk110.w0_check, Bool.and_self]

private theorem c0236_cover : coverCheck 7952 7960 c0236_intervals = true := by
  decide

private theorem c0236_sound : IntervalSound (7952, 7960) := by
  have hc : coverCheck 7952 7960 (witnessIntervals c0236_witnesses) = true := by
    rw [c0236_intervals_eq]
    exact c0236_cover
  exact interval_sound_of_witness_checks (witnesses := c0236_witnesses)
    (lo := 7952) (hi := 7960) c0236_checks hc

private def c0237_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk110.w1, B699LowIndex.I11TerminalData.Chunk110.w2, B699LowIndex.I11TerminalData.Chunk110.w3, B699LowIndex.I11TerminalData.Chunk110.w4, B699LowIndex.I11TerminalData.Chunk110.w5, B699LowIndex.I11TerminalData.Chunk110.w6]
private def c0237_intervals : List NatInterval := [(7968, 7973), (7974, 7974), (7975, 7975), (7976, 7976), (7977, 7977), (7978, 7978)]

private theorem c0237_intervals_eq :
    witnessIntervals c0237_witnesses = c0237_intervals := by
  rfl

private theorem c0237_checks : witnessesCheck c0237_witnesses = true := by
  simp only [witnessesCheck, c0237_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk110.w1_check, B699LowIndex.I11TerminalData.Chunk110.w2_check, B699LowIndex.I11TerminalData.Chunk110.w3_check, B699LowIndex.I11TerminalData.Chunk110.w4_check, B699LowIndex.I11TerminalData.Chunk110.w5_check, B699LowIndex.I11TerminalData.Chunk110.w6_check, Bool.and_self]

private theorem c0237_cover : coverCheck 7968 7978 c0237_intervals = true := by
  decide

private theorem c0237_sound : IntervalSound (7968, 7978) := by
  have hc : coverCheck 7968 7978 (witnessIntervals c0237_witnesses) = true := by
    rw [c0237_intervals_eq]
    exact c0237_cover
  exact interval_sound_of_witness_checks (witnesses := c0237_witnesses)
    (lo := 7968) (hi := 7978) c0237_checks hc

private def c0238_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk110.w7, B699LowIndex.I11TerminalData.Chunk110.w8]
private def c0238_intervals : List NatInterval := [(7984, 7984), (7985, 7985)]

private theorem c0238_intervals_eq :
    witnessIntervals c0238_witnesses = c0238_intervals := by
  rfl

private theorem c0238_checks : witnessesCheck c0238_witnesses = true := by
  simp only [witnessesCheck, c0238_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk110.w7_check, B699LowIndex.I11TerminalData.Chunk110.w8_check, Bool.and_self]

private theorem c0238_cover : coverCheck 7984 7985 c0238_intervals = true := by
  decide

private theorem c0238_sound : IntervalSound (7984, 7985) := by
  have hc : coverCheck 7984 7985 (witnessIntervals c0238_witnesses) = true := by
    rw [c0238_intervals_eq]
    exact c0238_cover
  exact interval_sound_of_witness_checks (witnesses := c0238_witnesses)
    (lo := 7984) (hi := 7985) c0238_checks hc

private def c0239_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk110.w9, B699LowIndex.I11TerminalData.Chunk110.w10, B699LowIndex.I11TerminalData.Chunk110.w11, B699LowIndex.I11TerminalData.Chunk110.w12, B699LowIndex.I11TerminalData.Chunk110.w13, B699LowIndex.I11TerminalData.Chunk110.w14, B699LowIndex.I11TerminalData.Chunk110.w15]
private def c0239_intervals : List NatInterval := [(7987, 7987), (7988, 7988), (7989, 7989), (7990, 7990), (7991, 7991), (7992, 7992), (7993, 7997)]

private theorem c0239_intervals_eq :
    witnessIntervals c0239_witnesses = c0239_intervals := by
  rfl

private theorem c0239_checks : witnessesCheck c0239_witnesses = true := by
  simp only [witnessesCheck, c0239_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk110.w9_check, B699LowIndex.I11TerminalData.Chunk110.w10_check, B699LowIndex.I11TerminalData.Chunk110.w11_check, B699LowIndex.I11TerminalData.Chunk110.w12_check, B699LowIndex.I11TerminalData.Chunk110.w13_check, B699LowIndex.I11TerminalData.Chunk110.w14_check, B699LowIndex.I11TerminalData.Chunk110.w15_check, Bool.and_self]

private theorem c0239_cover : coverCheck 7987 7997 c0239_intervals = true := by
  decide

private theorem c0239_sound : IntervalSound (7987, 7997) := by
  have hc : coverCheck 7987 7997 (witnessIntervals c0239_witnesses) = true := by
    rw [c0239_intervals_eq]
    exact c0239_cover
  exact interval_sound_of_witness_checks (witnesses := c0239_witnesses)
    (lo := 7987) (hi := 7997) c0239_checks hc

def intervals : List NatInterval := [(7776, 7786), (7792, 7813), (7825, 7835), (7840, 7850), (7856, 7866), (7875, 7882), (7884, 7885), (7888, 7898), (7904, 7914), (7920, 7921), (7925, 7930), (7938, 7948), (7952, 7960), (7968, 7978), (7984, 7985), (7987, 7997)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (7776, 7786)) (intervals := [(7792, 7813), (7825, 7835), (7840, 7850), (7856, 7866), (7875, 7882), (7884, 7885), (7888, 7898), (7904, 7914), (7920, 7921), (7925, 7930), (7938, 7948), (7952, 7960), (7968, 7978), (7984, 7985), (7987, 7997)]) c0224_sound (intervals_sound_cons (I := (7792, 7813)) (intervals := [(7825, 7835), (7840, 7850), (7856, 7866), (7875, 7882), (7884, 7885), (7888, 7898), (7904, 7914), (7920, 7921), (7925, 7930), (7938, 7948), (7952, 7960), (7968, 7978), (7984, 7985), (7987, 7997)]) c0225_sound (intervals_sound_cons (I := (7825, 7835)) (intervals := [(7840, 7850), (7856, 7866), (7875, 7882), (7884, 7885), (7888, 7898), (7904, 7914), (7920, 7921), (7925, 7930), (7938, 7948), (7952, 7960), (7968, 7978), (7984, 7985), (7987, 7997)]) c0226_sound (intervals_sound_cons (I := (7840, 7850)) (intervals := [(7856, 7866), (7875, 7882), (7884, 7885), (7888, 7898), (7904, 7914), (7920, 7921), (7925, 7930), (7938, 7948), (7952, 7960), (7968, 7978), (7984, 7985), (7987, 7997)]) c0227_sound (intervals_sound_cons (I := (7856, 7866)) (intervals := [(7875, 7882), (7884, 7885), (7888, 7898), (7904, 7914), (7920, 7921), (7925, 7930), (7938, 7948), (7952, 7960), (7968, 7978), (7984, 7985), (7987, 7997)]) c0228_sound (intervals_sound_cons (I := (7875, 7882)) (intervals := [(7884, 7885), (7888, 7898), (7904, 7914), (7920, 7921), (7925, 7930), (7938, 7948), (7952, 7960), (7968, 7978), (7984, 7985), (7987, 7997)]) c0229_sound (intervals_sound_cons (I := (7884, 7885)) (intervals := [(7888, 7898), (7904, 7914), (7920, 7921), (7925, 7930), (7938, 7948), (7952, 7960), (7968, 7978), (7984, 7985), (7987, 7997)]) c0230_sound (intervals_sound_cons (I := (7888, 7898)) (intervals := [(7904, 7914), (7920, 7921), (7925, 7930), (7938, 7948), (7952, 7960), (7968, 7978), (7984, 7985), (7987, 7997)]) c0231_sound (intervals_sound_cons (I := (7904, 7914)) (intervals := [(7920, 7921), (7925, 7930), (7938, 7948), (7952, 7960), (7968, 7978), (7984, 7985), (7987, 7997)]) c0232_sound (intervals_sound_cons (I := (7920, 7921)) (intervals := [(7925, 7930), (7938, 7948), (7952, 7960), (7968, 7978), (7984, 7985), (7987, 7997)]) c0233_sound (intervals_sound_cons (I := (7925, 7930)) (intervals := [(7938, 7948), (7952, 7960), (7968, 7978), (7984, 7985), (7987, 7997)]) c0234_sound (intervals_sound_cons (I := (7938, 7948)) (intervals := [(7952, 7960), (7968, 7978), (7984, 7985), (7987, 7997)]) c0235_sound (intervals_sound_cons (I := (7952, 7960)) (intervals := [(7968, 7978), (7984, 7985), (7987, 7997)]) c0236_sound (intervals_sound_cons (I := (7968, 7978)) (intervals := [(7984, 7985), (7987, 7997)]) c0237_sound (intervals_sound_cons (I := (7984, 7985)) (intervals := [(7987, 7997)]) c0238_sound (intervals_sound_cons (I := (7987, 7997)) (intervals := []) c0239_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G014
