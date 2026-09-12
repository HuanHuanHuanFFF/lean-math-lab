import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk231
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk232
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk233

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G058
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0928_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk231.w5, B699LowIndex.I11TerminalData.Chunk231.w6]
private def c0928_intervals : List NatInterval := [(63112, 63113), (63114, 63114)]

private theorem c0928_intervals_eq :
    witnessIntervals c0928_witnesses = c0928_intervals := by
  rfl

private theorem c0928_checks : witnessesCheck c0928_witnesses = true := by
  simp only [witnessesCheck, c0928_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk231.w5_check, B699LowIndex.I11TerminalData.Chunk231.w6_check, Bool.and_self]

private theorem c0928_cover : coverCheck 63112 63114 c0928_intervals = true := by
  decide

private theorem c0928_sound : IntervalSound (63112, 63114) := by
  have hc : coverCheck 63112 63114 (witnessIntervals c0928_witnesses) = true := by
    rw [c0928_intervals_eq]
    exact c0928_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0928_witnesses)
    (lo := 63112) (hi := 63114) c0928_checks hc

private def c0929_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk231.w7, B699LowIndex.I11TerminalData.Chunk231.w8]
private def c0929_intervals : List NatInterval := [(63750, 63753), (63754, 63754)]

private theorem c0929_intervals_eq :
    witnessIntervals c0929_witnesses = c0929_intervals := by
  rfl

private theorem c0929_checks : witnessesCheck c0929_witnesses = true := by
  simp only [witnessesCheck, c0929_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk231.w7_check, B699LowIndex.I11TerminalData.Chunk231.w8_check, Bool.and_self]

private theorem c0929_cover : coverCheck 63750 63754 c0929_intervals = true := by
  decide

private theorem c0929_sound : IntervalSound (63750, 63754) := by
  have hc : coverCheck 63750 63754 (witnessIntervals c0929_witnesses) = true := by
    rw [c0929_intervals_eq]
    exact c0929_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0929_witnesses)
    (lo := 63750) (hi := 63754) c0929_checks hc

private def c0930_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk231.w9, B699LowIndex.I11TerminalData.Chunk231.w10, B699LowIndex.I11TerminalData.Chunk231.w11]
private def c0930_intervals : List NatInterval := [(65856, 65861), (65862, 65862), (65863, 65863)]

private theorem c0930_intervals_eq :
    witnessIntervals c0930_witnesses = c0930_intervals := by
  rfl

private theorem c0930_checks : witnessesCheck c0930_witnesses = true := by
  simp only [witnessesCheck, c0930_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk231.w9_check, B699LowIndex.I11TerminalData.Chunk231.w10_check, B699LowIndex.I11TerminalData.Chunk231.w11_check, Bool.and_self]

private theorem c0930_cover : coverCheck 65856 65863 c0930_intervals = true := by
  decide

private theorem c0930_sound : IntervalSound (65856, 65863) := by
  have hc : coverCheck 65856 65863 (witnessIntervals c0930_witnesses) = true := by
    rw [c0930_intervals_eq]
    exact c0930_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0930_witnesses)
    (lo := 65856) (hi := 65863) c0930_checks hc

private def c0931_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk231.w12]
private def c0931_intervals : List NatInterval := [(66825, 66826)]

private theorem c0931_intervals_eq :
    witnessIntervals c0931_witnesses = c0931_intervals := by
  rfl

private theorem c0931_checks : witnessesCheck c0931_witnesses = true := by
  simp only [witnessesCheck, c0931_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk231.w12_check, Bool.and_self]

private theorem c0931_cover : coverCheck 66825 66826 c0931_intervals = true := by
  decide

private theorem c0931_sound : IntervalSound (66825, 66826) := by
  have hc : coverCheck 66825 66826 (witnessIntervals c0931_witnesses) = true := by
    rw [c0931_intervals_eq]
    exact c0931_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0931_witnesses)
    (lo := 66825) (hi := 66826) c0931_checks hc

private def c0932_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk231.w13]
private def c0932_intervals : List NatInterval := [(66885, 66885)]

private theorem c0932_intervals_eq :
    witnessIntervals c0932_witnesses = c0932_intervals := by
  rfl

private theorem c0932_checks : witnessesCheck c0932_witnesses = true := by
  simp only [witnessesCheck, c0932_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk231.w13_check, Bool.and_self]

private theorem c0932_cover : coverCheck 66885 66885 c0932_intervals = true := by
  decide

private theorem c0932_sound : IntervalSound (66885, 66885) := by
  have hc : coverCheck 66885 66885 (witnessIntervals c0932_witnesses) = true := by
    rw [c0932_intervals_eq]
    exact c0932_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0932_witnesses)
    (lo := 66885) (hi := 66885) c0932_checks hc

private def c0933_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk231.w14, B699LowIndex.I11TerminalData.Chunk231.w15]
private def c0933_intervals : List NatInterval := [(67072, 67072), (67073, 67078)]

private theorem c0933_intervals_eq :
    witnessIntervals c0933_witnesses = c0933_intervals := by
  rfl

private theorem c0933_checks : witnessesCheck c0933_witnesses = true := by
  simp only [witnessesCheck, c0933_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk231.w14_check, B699LowIndex.I11TerminalData.Chunk231.w15_check, Bool.and_self]

private theorem c0933_cover : coverCheck 67072 67078 c0933_intervals = true := by
  decide

private theorem c0933_sound : IntervalSound (67072, 67078) := by
  have hc : coverCheck 67072 67078 (witnessIntervals c0933_witnesses) = true := by
    rw [c0933_intervals_eq]
    exact c0933_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0933_witnesses)
    (lo := 67072) (hi := 67078) c0933_checks hc

private def c0934_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk232.w0, B699LowIndex.I11TerminalData.Chunk232.w1, B699LowIndex.I11TerminalData.Chunk232.w2]
private def c0934_intervals : List NatInterval := [(68608, 68608), (68609, 68609), (68610, 68610)]

private theorem c0934_intervals_eq :
    witnessIntervals c0934_witnesses = c0934_intervals := by
  rfl

private theorem c0934_checks : witnessesCheck c0934_witnesses = true := by
  simp only [witnessesCheck, c0934_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk232.w0_check, B699LowIndex.I11TerminalData.Chunk232.w1_check, B699LowIndex.I11TerminalData.Chunk232.w2_check, Bool.and_self]

private theorem c0934_cover : coverCheck 68608 68610 c0934_intervals = true := by
  decide

private theorem c0934_sound : IntervalSound (68608, 68610) := by
  have hc : coverCheck 68608 68610 (witnessIntervals c0934_witnesses) = true := by
    rw [c0934_intervals_eq]
    exact c0934_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0934_witnesses)
    (lo := 68608) (hi := 68610) c0934_checks hc

private def c0935_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk232.w3, B699LowIndex.I11TerminalData.Chunk232.w4]
private def c0935_intervals : List NatInterval := [(69376, 69381), (69382, 69385)]

private theorem c0935_intervals_eq :
    witnessIntervals c0935_witnesses = c0935_intervals := by
  rfl

private theorem c0935_checks : witnessesCheck c0935_witnesses = true := by
  simp only [witnessesCheck, c0935_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk232.w3_check, B699LowIndex.I11TerminalData.Chunk232.w4_check, Bool.and_self]

private theorem c0935_cover : coverCheck 69376 69385 c0935_intervals = true := by
  decide

private theorem c0935_sound : IntervalSound (69376, 69385) := by
  have hc : coverCheck 69376 69385 (witnessIntervals c0935_witnesses) = true := by
    rw [c0935_intervals_eq]
    exact c0935_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0935_witnesses)
    (lo := 69376) (hi := 69385) c0935_checks hc

private def c0936_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk232.w5, B699LowIndex.I11TerminalData.Chunk232.w6, B699LowIndex.I11TerminalData.Chunk232.w7, B699LowIndex.I11TerminalData.Chunk232.w8, B699LowIndex.I11TerminalData.Chunk232.w9, B699LowIndex.I11TerminalData.Chunk232.w10, B699LowIndex.I11TerminalData.Chunk232.w11]
private def c0936_intervals : List NatInterval := [(69632, 69633), (69634, 69634), (69635, 69635), (69636, 69636), (69637, 69637), (69638, 69638), (69639, 69639)]

private theorem c0936_intervals_eq :
    witnessIntervals c0936_witnesses = c0936_intervals := by
  rfl

private theorem c0936_checks : witnessesCheck c0936_witnesses = true := by
  simp only [witnessesCheck, c0936_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk232.w5_check, B699LowIndex.I11TerminalData.Chunk232.w6_check, B699LowIndex.I11TerminalData.Chunk232.w7_check, B699LowIndex.I11TerminalData.Chunk232.w8_check, B699LowIndex.I11TerminalData.Chunk232.w9_check, B699LowIndex.I11TerminalData.Chunk232.w10_check, B699LowIndex.I11TerminalData.Chunk232.w11_check, Bool.and_self]

private theorem c0936_cover : coverCheck 69632 69639 c0936_intervals = true := by
  decide

private theorem c0936_sound : IntervalSound (69632, 69639) := by
  have hc : coverCheck 69632 69639 (witnessIntervals c0936_witnesses) = true := by
    rw [c0936_intervals_eq]
    exact c0936_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0936_witnesses)
    (lo := 69632) (hi := 69639) c0936_checks hc

private def c0937_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk232.w12]
private def c0937_intervals : List NatInterval := [(70658, 70666)]

private theorem c0937_intervals_eq :
    witnessIntervals c0937_witnesses = c0937_intervals := by
  rfl

private theorem c0937_checks : witnessesCheck c0937_witnesses = true := by
  simp only [witnessesCheck, c0937_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk232.w12_check, Bool.and_self]

private theorem c0937_cover : coverCheck 70658 70666 c0937_intervals = true := by
  decide

private theorem c0937_sound : IntervalSound (70658, 70666) := by
  have hc : coverCheck 70658 70666 (witnessIntervals c0937_witnesses) = true := by
    rw [c0937_intervals_eq]
    exact c0937_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0937_witnesses)
    (lo := 70658) (hi := 70666) c0937_checks hc

private def c0938_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk232.w13, B699LowIndex.I11TerminalData.Chunk232.w14, B699LowIndex.I11TerminalData.Chunk232.w15, B699LowIndex.I11TerminalData.Chunk233.w0, B699LowIndex.I11TerminalData.Chunk233.w1, B699LowIndex.I11TerminalData.Chunk233.w2, B699LowIndex.I11TerminalData.Chunk233.w3, B699LowIndex.I11TerminalData.Chunk233.w4, B699LowIndex.I11TerminalData.Chunk233.w5]
private def c0938_intervals : List NatInterval := [(71685, 71685), (71686, 71686), (71687, 71687), (71688, 71688), (71689, 71689), (71690, 71690), (71691, 71691), (71692, 71692), (71693, 71695)]

private theorem c0938_intervals_eq :
    witnessIntervals c0938_witnesses = c0938_intervals := by
  rfl

private theorem c0938_checks : witnessesCheck c0938_witnesses = true := by
  simp only [witnessesCheck, c0938_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk232.w13_check, B699LowIndex.I11TerminalData.Chunk232.w14_check, B699LowIndex.I11TerminalData.Chunk232.w15_check, B699LowIndex.I11TerminalData.Chunk233.w0_check, B699LowIndex.I11TerminalData.Chunk233.w1_check, B699LowIndex.I11TerminalData.Chunk233.w2_check, B699LowIndex.I11TerminalData.Chunk233.w3_check, B699LowIndex.I11TerminalData.Chunk233.w4_check, B699LowIndex.I11TerminalData.Chunk233.w5_check, Bool.and_self]

private theorem c0938_cover : coverCheck 71685 71695 c0938_intervals = true := by
  decide

private theorem c0938_sound : IntervalSound (71685, 71695) := by
  have hc : coverCheck 71685 71695 (witnessIntervals c0938_witnesses) = true := by
    rw [c0938_intervals_eq]
    exact c0938_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0938_witnesses)
    (lo := 71685) (hi := 71695) c0938_checks hc

private def c0939_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk233.w6]
private def c0939_intervals : List NatInterval := [(71936, 71938)]

private theorem c0939_intervals_eq :
    witnessIntervals c0939_witnesses = c0939_intervals := by
  rfl

private theorem c0939_checks : witnessesCheck c0939_witnesses = true := by
  simp only [witnessesCheck, c0939_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk233.w6_check, Bool.and_self]

private theorem c0939_cover : coverCheck 71936 71938 c0939_intervals = true := by
  decide

private theorem c0939_sound : IntervalSound (71936, 71938) := by
  have hc : coverCheck 71936 71938 (witnessIntervals c0939_witnesses) = true := by
    rw [c0939_intervals_eq]
    exact c0939_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0939_witnesses)
    (lo := 71936) (hi := 71938) c0939_checks hc

private def c0940_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk233.w7, B699LowIndex.I11TerminalData.Chunk233.w8]
private def c0940_intervals : List NatInterval := [(73750, 73750), (73751, 73755)]

private theorem c0940_intervals_eq :
    witnessIntervals c0940_witnesses = c0940_intervals := by
  rfl

private theorem c0940_checks : witnessesCheck c0940_witnesses = true := by
  simp only [witnessesCheck, c0940_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk233.w7_check, B699LowIndex.I11TerminalData.Chunk233.w8_check, Bool.and_self]

private theorem c0940_cover : coverCheck 73750 73755 c0940_intervals = true := by
  decide

private theorem c0940_sound : IntervalSound (73750, 73755) := by
  have hc : coverCheck 73750 73755 (witnessIntervals c0940_witnesses) = true := by
    rw [c0940_intervals_eq]
    exact c0940_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0940_witnesses)
    (lo := 73750) (hi := 73755) c0940_checks hc

private def c0941_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk233.w9, B699LowIndex.I11TerminalData.Chunk233.w10, B699LowIndex.I11TerminalData.Chunk233.w11]
private def c0941_intervals : List NatInterval := [(75008, 75008), (75009, 75009), (75010, 75010)]

private theorem c0941_intervals_eq :
    witnessIntervals c0941_witnesses = c0941_intervals := by
  rfl

private theorem c0941_checks : witnessesCheck c0941_witnesses = true := by
  simp only [witnessesCheck, c0941_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk233.w9_check, B699LowIndex.I11TerminalData.Chunk233.w10_check, B699LowIndex.I11TerminalData.Chunk233.w11_check, Bool.and_self]

private theorem c0941_cover : coverCheck 75008 75010 c0941_intervals = true := by
  decide

private theorem c0941_sound : IntervalSound (75008, 75010) := by
  have hc : coverCheck 75008 75010 (witnessIntervals c0941_witnesses) = true := by
    rw [c0941_intervals_eq]
    exact c0941_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0941_witnesses)
    (lo := 75008) (hi := 75010) c0941_checks hc

private def c0942_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk233.w12, B699LowIndex.I11TerminalData.Chunk233.w13]
private def c0942_intervals : List NatInterval := [(76545, 76553), (76554, 76554)]

private theorem c0942_intervals_eq :
    witnessIntervals c0942_witnesses = c0942_intervals := by
  rfl

private theorem c0942_checks : witnessesCheck c0942_witnesses = true := by
  simp only [witnessesCheck, c0942_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk233.w12_check, B699LowIndex.I11TerminalData.Chunk233.w13_check, Bool.and_self]

private theorem c0942_cover : coverCheck 76545 76554 c0942_intervals = true := by
  decide

private theorem c0942_sound : IntervalSound (76545, 76554) := by
  have hc : coverCheck 76545 76554 (witnessIntervals c0942_witnesses) = true := by
    rw [c0942_intervals_eq]
    exact c0942_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0942_witnesses)
    (lo := 76545) (hi := 76554) c0942_checks hc

private def c0943_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk233.w14, B699LowIndex.I11TerminalData.Chunk233.w15]
private def c0943_intervals : List NatInterval := [(77518, 77523), (77524, 77527)]

private theorem c0943_intervals_eq :
    witnessIntervals c0943_witnesses = c0943_intervals := by
  rfl

private theorem c0943_checks : witnessesCheck c0943_witnesses = true := by
  simp only [witnessesCheck, c0943_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk233.w14_check, B699LowIndex.I11TerminalData.Chunk233.w15_check, Bool.and_self]

private theorem c0943_cover : coverCheck 77518 77527 c0943_intervals = true := by
  decide

private theorem c0943_sound : IntervalSound (77518, 77527) := by
  have hc : coverCheck 77518 77527 (witnessIntervals c0943_witnesses) = true := by
    rw [c0943_intervals_eq]
    exact c0943_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0943_witnesses)
    (lo := 77518) (hi := 77527) c0943_checks hc

def intervals : List NatInterval := [(63112, 63114), (63750, 63754), (65856, 65863), (66825, 66826), (66885, 66885), (67072, 67078), (68608, 68610), (69376, 69385), (69632, 69639), (70658, 70666), (71685, 71695), (71936, 71938), (73750, 73755), (75008, 75010), (76545, 76554), (77518, 77527)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (63112, 63114)) (intervals := [(63750, 63754), (65856, 65863), (66825, 66826), (66885, 66885), (67072, 67078), (68608, 68610), (69376, 69385), (69632, 69639), (70658, 70666), (71685, 71695), (71936, 71938), (73750, 73755), (75008, 75010), (76545, 76554), (77518, 77527)]) c0928_sound (intervals_sound_cons (I := (63750, 63754)) (intervals := [(65856, 65863), (66825, 66826), (66885, 66885), (67072, 67078), (68608, 68610), (69376, 69385), (69632, 69639), (70658, 70666), (71685, 71695), (71936, 71938), (73750, 73755), (75008, 75010), (76545, 76554), (77518, 77527)]) c0929_sound (intervals_sound_cons (I := (65856, 65863)) (intervals := [(66825, 66826), (66885, 66885), (67072, 67078), (68608, 68610), (69376, 69385), (69632, 69639), (70658, 70666), (71685, 71695), (71936, 71938), (73750, 73755), (75008, 75010), (76545, 76554), (77518, 77527)]) c0930_sound (intervals_sound_cons (I := (66825, 66826)) (intervals := [(66885, 66885), (67072, 67078), (68608, 68610), (69376, 69385), (69632, 69639), (70658, 70666), (71685, 71695), (71936, 71938), (73750, 73755), (75008, 75010), (76545, 76554), (77518, 77527)]) c0931_sound (intervals_sound_cons (I := (66885, 66885)) (intervals := [(67072, 67078), (68608, 68610), (69376, 69385), (69632, 69639), (70658, 70666), (71685, 71695), (71936, 71938), (73750, 73755), (75008, 75010), (76545, 76554), (77518, 77527)]) c0932_sound (intervals_sound_cons (I := (67072, 67078)) (intervals := [(68608, 68610), (69376, 69385), (69632, 69639), (70658, 70666), (71685, 71695), (71936, 71938), (73750, 73755), (75008, 75010), (76545, 76554), (77518, 77527)]) c0933_sound (intervals_sound_cons (I := (68608, 68610)) (intervals := [(69376, 69385), (69632, 69639), (70658, 70666), (71685, 71695), (71936, 71938), (73750, 73755), (75008, 75010), (76545, 76554), (77518, 77527)]) c0934_sound (intervals_sound_cons (I := (69376, 69385)) (intervals := [(69632, 69639), (70658, 70666), (71685, 71695), (71936, 71938), (73750, 73755), (75008, 75010), (76545, 76554), (77518, 77527)]) c0935_sound (intervals_sound_cons (I := (69632, 69639)) (intervals := [(70658, 70666), (71685, 71695), (71936, 71938), (73750, 73755), (75008, 75010), (76545, 76554), (77518, 77527)]) c0936_sound (intervals_sound_cons (I := (70658, 70666)) (intervals := [(71685, 71695), (71936, 71938), (73750, 73755), (75008, 75010), (76545, 76554), (77518, 77527)]) c0937_sound (intervals_sound_cons (I := (71685, 71695)) (intervals := [(71936, 71938), (73750, 73755), (75008, 75010), (76545, 76554), (77518, 77527)]) c0938_sound (intervals_sound_cons (I := (71936, 71938)) (intervals := [(73750, 73755), (75008, 75010), (76545, 76554), (77518, 77527)]) c0939_sound (intervals_sound_cons (I := (73750, 73755)) (intervals := [(75008, 75010), (76545, 76554), (77518, 77527)]) c0940_sound (intervals_sound_cons (I := (75008, 75010)) (intervals := [(76545, 76554), (77518, 77527)]) c0941_sound (intervals_sound_cons (I := (76545, 76554)) (intervals := [(77518, 77527)]) c0942_sound (intervals_sound_cons (I := (77518, 77527)) (intervals := []) c0943_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G058
