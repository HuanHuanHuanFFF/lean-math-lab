import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk166
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk167
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk168

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G034
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0544_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk166.w8]
private def c0544_intervals : List NatInterval := [(14375, 14378)]

private theorem c0544_intervals_eq :
    witnessIntervals c0544_witnesses = c0544_intervals := by
  rfl

private theorem c0544_checks : witnessesCheck c0544_witnesses = true := by
  simp only [witnessesCheck, c0544_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk166.w8_check, Bool.and_self]

private theorem c0544_cover : coverCheck 14375 14378 c0544_intervals = true := by
  decide

private theorem c0544_sound : IntervalSound (14375, 14378) := by
  have hc : coverCheck 14375 14378 (witnessIntervals c0544_witnesses) = true := by
    rw [c0544_intervals_eq]
    exact c0544_cover
  exact interval_sound_of_witness_checks (witnesses := c0544_witnesses)
    (lo := 14375) (hi := 14378) c0544_checks hc

private def c0545_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk166.w9]
private def c0545_intervals : List NatInterval := [(14406, 14410)]

private theorem c0545_intervals_eq :
    witnessIntervals c0545_witnesses = c0545_intervals := by
  rfl

private theorem c0545_checks : witnessesCheck c0545_witnesses = true := by
  simp only [witnessesCheck, c0545_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk166.w9_check, Bool.and_self]

private theorem c0545_cover : coverCheck 14406 14410 c0545_intervals = true := by
  decide

private theorem c0545_sound : IntervalSound (14406, 14410) := by
  have hc : coverCheck 14406 14410 (witnessIntervals c0545_witnesses) = true := by
    rw [c0545_intervals_eq]
    exact c0545_cover
  exact interval_sound_of_witness_checks (witnesses := c0545_witnesses)
    (lo := 14406) (hi := 14410) c0545_checks hc

private def c0546_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk166.w10]
private def c0546_intervals : List NatInterval := [(14464, 14465)]

private theorem c0546_intervals_eq :
    witnessIntervals c0546_witnesses = c0546_intervals := by
  rfl

private theorem c0546_checks : witnessesCheck c0546_witnesses = true := by
  simp only [witnessesCheck, c0546_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk166.w10_check, Bool.and_self]

private theorem c0546_cover : coverCheck 14464 14465 c0546_intervals = true := by
  decide

private theorem c0546_sound : IntervalSound (14464, 14465) := by
  have hc : coverCheck 14464 14465 (witnessIntervals c0546_witnesses) = true := by
    rw [c0546_intervals_eq]
    exact c0546_cover
  exact interval_sound_of_witness_checks (witnesses := c0546_witnesses)
    (lo := 14464) (hi := 14465) c0546_checks hc

private def c0547_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk166.w11, B699LowIndex.I11TerminalData.Chunk166.w12, B699LowIndex.I11TerminalData.Chunk166.w13, B699LowIndex.I11TerminalData.Chunk166.w14, B699LowIndex.I11TerminalData.Chunk166.w15]
private def c0547_intervals : List NatInterval := [(14499, 14499), (14500, 14500), (14501, 14501), (14502, 14502), (14503, 14510)]

private theorem c0547_intervals_eq :
    witnessIntervals c0547_witnesses = c0547_intervals := by
  rfl

private theorem c0547_checks : witnessesCheck c0547_witnesses = true := by
  simp only [witnessesCheck, c0547_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk166.w11_check, B699LowIndex.I11TerminalData.Chunk166.w12_check, B699LowIndex.I11TerminalData.Chunk166.w13_check, B699LowIndex.I11TerminalData.Chunk166.w14_check, B699LowIndex.I11TerminalData.Chunk166.w15_check, Bool.and_self]

private theorem c0547_cover : coverCheck 14499 14510 c0547_intervals = true := by
  decide

private theorem c0547_sound : IntervalSound (14499, 14510) := by
  have hc : coverCheck 14499 14510 (witnessIntervals c0547_witnesses) = true := by
    rw [c0547_intervals_eq]
    exact c0547_cover
  exact interval_sound_of_witness_checks (witnesses := c0547_witnesses)
    (lo := 14499) (hi := 14510) c0547_checks hc

private def c0548_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk167.w0]
private def c0548_intervals : List NatInterval := [(14560, 14563)]

private theorem c0548_intervals_eq :
    witnessIntervals c0548_witnesses = c0548_intervals := by
  rfl

private theorem c0548_checks : witnessesCheck c0548_witnesses = true := by
  simp only [witnessesCheck, c0548_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk167.w0_check, Bool.and_self]

private theorem c0548_cover : coverCheck 14560 14563 c0548_intervals = true := by
  decide

private theorem c0548_sound : IntervalSound (14560, 14563) := by
  have hc : coverCheck 14560 14563 (witnessIntervals c0548_witnesses) = true := by
    rw [c0548_intervals_eq]
    exact c0548_cover
  exact interval_sound_of_witness_checks (witnesses := c0548_witnesses)
    (lo := 14560) (hi := 14563) c0548_checks hc

private def c0549_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk167.w1]
private def c0549_intervals : List NatInterval := [(14602, 14602)]

private theorem c0549_intervals_eq :
    witnessIntervals c0549_witnesses = c0549_intervals := by
  rfl

private theorem c0549_checks : witnessesCheck c0549_witnesses = true := by
  simp only [witnessesCheck, c0549_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk167.w1_check, Bool.and_self]

private theorem c0549_cover : coverCheck 14602 14602 c0549_intervals = true := by
  decide

private theorem c0549_sound : IntervalSound (14602, 14602) := by
  have hc : coverCheck 14602 14602 (witnessIntervals c0549_witnesses) = true := by
    rw [c0549_intervals_eq]
    exact c0549_cover
  exact interval_sound_of_witness_checks (witnesses := c0549_witnesses)
    (lo := 14602) (hi := 14602) c0549_checks hc

private def c0550_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk167.w2, B699LowIndex.I11TerminalData.Chunk167.w3]
private def c0550_intervals : List NatInterval := [(14625, 14631), (14632, 14634)]

private theorem c0550_intervals_eq :
    witnessIntervals c0550_witnesses = c0550_intervals := by
  rfl

private theorem c0550_checks : witnessesCheck c0550_witnesses = true := by
  simp only [witnessesCheck, c0550_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk167.w2_check, B699LowIndex.I11TerminalData.Chunk167.w3_check, Bool.and_self]

private theorem c0550_cover : coverCheck 14625 14634 c0550_intervals = true := by
  decide

private theorem c0550_sound : IntervalSound (14625, 14634) := by
  have hc : coverCheck 14625 14634 (witnessIntervals c0550_witnesses) = true := by
    rw [c0550_intervals_eq]
    exact c0550_cover
  exact interval_sound_of_witness_checks (witnesses := c0550_witnesses)
    (lo := 14625) (hi := 14634) c0550_checks hc

private def c0551_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk167.w4, B699LowIndex.I11TerminalData.Chunk167.w5]
private def c0551_intervals : List NatInterval := [(14656, 14663), (14664, 14666)]

private theorem c0551_intervals_eq :
    witnessIntervals c0551_witnesses = c0551_intervals := by
  rfl

private theorem c0551_checks : witnessesCheck c0551_witnesses = true := by
  simp only [witnessesCheck, c0551_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk167.w4_check, B699LowIndex.I11TerminalData.Chunk167.w5_check, Bool.and_self]

private theorem c0551_cover : coverCheck 14656 14666 c0551_intervals = true := by
  decide

private theorem c0551_sound : IntervalSound (14656, 14666) := by
  have hc : coverCheck 14656 14666 (witnessIntervals c0551_witnesses) = true := by
    rw [c0551_intervals_eq]
    exact c0551_cover
  exact interval_sound_of_witness_checks (witnesses := c0551_witnesses)
    (lo := 14656) (hi := 14666) c0551_checks hc

private def c0552_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk167.w6, B699LowIndex.I11TerminalData.Chunk167.w7]
private def c0552_intervals : List NatInterval := [(14749, 14757), (14758, 14760)]

private theorem c0552_intervals_eq :
    witnessIntervals c0552_witnesses = c0552_intervals := by
  rfl

private theorem c0552_checks : witnessesCheck c0552_witnesses = true := by
  simp only [witnessesCheck, c0552_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk167.w6_check, B699LowIndex.I11TerminalData.Chunk167.w7_check, Bool.and_self]

private theorem c0552_cover : coverCheck 14749 14760 c0552_intervals = true := by
  decide

private theorem c0552_sound : IntervalSound (14749, 14760) := by
  have hc : coverCheck 14749 14760 (witnessIntervals c0552_witnesses) = true := by
    rw [c0552_intervals_eq]
    exact c0552_cover
  exact interval_sound_of_witness_checks (witnesses := c0552_witnesses)
    (lo := 14749) (hi := 14760) c0552_checks hc

private def c0553_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk167.w8]
private def c0553_intervals : List NatInterval := [(14823, 14826)]

private theorem c0553_intervals_eq :
    witnessIntervals c0553_witnesses = c0553_intervals := by
  rfl

private theorem c0553_checks : witnessesCheck c0553_witnesses = true := by
  simp only [witnessesCheck, c0553_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk167.w8_check, Bool.and_self]

private theorem c0553_cover : coverCheck 14823 14826 c0553_intervals = true := by
  decide

private theorem c0553_sound : IntervalSound (14823, 14826) := by
  have hc : coverCheck 14823 14826 (witnessIntervals c0553_witnesses) = true := by
    rw [c0553_intervals_eq]
    exact c0553_cover
  exact interval_sound_of_witness_checks (witnesses := c0553_witnesses)
    (lo := 14823) (hi := 14826) c0553_checks hc

private def c0554_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk167.w9, B699LowIndex.I11TerminalData.Chunk167.w10]
private def c0554_intervals : List NatInterval := [(14848, 14853), (14854, 14857)]

private theorem c0554_intervals_eq :
    witnessIntervals c0554_witnesses = c0554_intervals := by
  rfl

private theorem c0554_checks : witnessesCheck c0554_witnesses = true := by
  simp only [witnessesCheck, c0554_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk167.w9_check, B699LowIndex.I11TerminalData.Chunk167.w10_check, Bool.and_self]

private theorem c0554_cover : coverCheck 14848 14857 c0554_intervals = true := by
  decide

private theorem c0554_sound : IntervalSound (14848, 14857) := by
  have hc : coverCheck 14848 14857 (witnessIntervals c0554_witnesses) = true := by
    rw [c0554_intervals_eq]
    exact c0554_cover
  exact interval_sound_of_witness_checks (witnesses := c0554_witnesses)
    (lo := 14848) (hi := 14857) c0554_checks hc

private def c0555_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk167.w11]
private def c0555_intervals : List NatInterval := [(14880, 14885)]

private theorem c0555_intervals_eq :
    witnessIntervals c0555_witnesses = c0555_intervals := by
  rfl

private theorem c0555_checks : witnessesCheck c0555_witnesses = true := by
  simp only [witnessesCheck, c0555_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk167.w11_check, Bool.and_self]

private theorem c0555_cover : coverCheck 14880 14885 c0555_intervals = true := by
  decide

private theorem c0555_sound : IntervalSound (14880, 14885) := by
  have hc : coverCheck 14880 14885 (witnessIntervals c0555_witnesses) = true := by
    rw [c0555_intervals_eq]
    exact c0555_cover
  exact interval_sound_of_witness_checks (witnesses := c0555_witnesses)
    (lo := 14880) (hi := 14885) c0555_checks hc

private def c0556_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk167.w12]
private def c0556_intervals : List NatInterval := [(14904, 14906)]

private theorem c0556_intervals_eq :
    witnessIntervals c0556_witnesses = c0556_intervals := by
  rfl

private theorem c0556_checks : witnessesCheck c0556_witnesses = true := by
  simp only [witnessesCheck, c0556_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk167.w12_check, Bool.and_self]

private theorem c0556_cover : coverCheck 14904 14906 c0556_intervals = true := by
  decide

private theorem c0556_sound : IntervalSound (14904, 14906) := by
  have hc : coverCheck 14904 14906 (witnessIntervals c0556_witnesses) = true := by
    rw [c0556_intervals_eq]
    exact c0556_cover
  exact interval_sound_of_witness_checks (witnesses := c0556_witnesses)
    (lo := 14904) (hi := 14906) c0556_checks hc

private def c0557_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk167.w13, B699LowIndex.I11TerminalData.Chunk167.w14, B699LowIndex.I11TerminalData.Chunk167.w15]
private def c0557_intervals : List NatInterval := [(14912, 14912), (14913, 14913), (14914, 14914)]

private theorem c0557_intervals_eq :
    witnessIntervals c0557_witnesses = c0557_intervals := by
  rfl

private theorem c0557_checks : witnessesCheck c0557_witnesses = true := by
  simp only [witnessesCheck, c0557_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk167.w13_check, B699LowIndex.I11TerminalData.Chunk167.w14_check, B699LowIndex.I11TerminalData.Chunk167.w15_check, Bool.and_self]

private theorem c0557_cover : coverCheck 14912 14914 c0557_intervals = true := by
  decide

private theorem c0557_sound : IntervalSound (14912, 14914) := by
  have hc : coverCheck 14912 14914 (witnessIntervals c0557_witnesses) = true := by
    rw [c0557_intervals_eq]
    exact c0557_cover
  exact interval_sound_of_witness_checks (witnesses := c0557_witnesses)
    (lo := 14912) (hi := 14914) c0557_checks hc

private def c0558_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk168.w0, B699LowIndex.I11TerminalData.Chunk168.w1]
private def c0558_intervals : List NatInterval := [(14945, 14949), (14950, 14954)]

private theorem c0558_intervals_eq :
    witnessIntervals c0558_witnesses = c0558_intervals := by
  rfl

private theorem c0558_checks : witnessesCheck c0558_witnesses = true := by
  simp only [witnessesCheck, c0558_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk168.w0_check, B699LowIndex.I11TerminalData.Chunk168.w1_check, Bool.and_self]

private theorem c0558_cover : coverCheck 14945 14954 c0558_intervals = true := by
  decide

private theorem c0558_sound : IntervalSound (14945, 14954) := by
  have hc : coverCheck 14945 14954 (witnessIntervals c0558_witnesses) = true := by
    rw [c0558_intervals_eq]
    exact c0558_cover
  exact interval_sound_of_witness_checks (witnesses := c0558_witnesses)
    (lo := 14945) (hi := 14954) c0558_checks hc

private def c0559_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk168.w2]
private def c0559_intervals : List NatInterval := [(14985, 14986)]

private theorem c0559_intervals_eq :
    witnessIntervals c0559_witnesses = c0559_intervals := by
  rfl

private theorem c0559_checks : witnessesCheck c0559_witnesses = true := by
  simp only [witnessesCheck, c0559_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk168.w2_check, Bool.and_self]

private theorem c0559_cover : coverCheck 14985 14986 c0559_intervals = true := by
  decide

private theorem c0559_sound : IntervalSound (14985, 14986) := by
  have hc : coverCheck 14985 14986 (witnessIntervals c0559_witnesses) = true := by
    rw [c0559_intervals_eq]
    exact c0559_cover
  exact interval_sound_of_witness_checks (witnesses := c0559_witnesses)
    (lo := 14985) (hi := 14986) c0559_checks hc

def intervals : List NatInterval := [(14375, 14378), (14406, 14410), (14464, 14465), (14499, 14510), (14560, 14563), (14602, 14602), (14625, 14634), (14656, 14666), (14749, 14760), (14823, 14826), (14848, 14857), (14880, 14885), (14904, 14906), (14912, 14914), (14945, 14954), (14985, 14986)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (14375, 14378)) (intervals := [(14406, 14410), (14464, 14465), (14499, 14510), (14560, 14563), (14602, 14602), (14625, 14634), (14656, 14666), (14749, 14760), (14823, 14826), (14848, 14857), (14880, 14885), (14904, 14906), (14912, 14914), (14945, 14954), (14985, 14986)]) c0544_sound (intervals_sound_cons (I := (14406, 14410)) (intervals := [(14464, 14465), (14499, 14510), (14560, 14563), (14602, 14602), (14625, 14634), (14656, 14666), (14749, 14760), (14823, 14826), (14848, 14857), (14880, 14885), (14904, 14906), (14912, 14914), (14945, 14954), (14985, 14986)]) c0545_sound (intervals_sound_cons (I := (14464, 14465)) (intervals := [(14499, 14510), (14560, 14563), (14602, 14602), (14625, 14634), (14656, 14666), (14749, 14760), (14823, 14826), (14848, 14857), (14880, 14885), (14904, 14906), (14912, 14914), (14945, 14954), (14985, 14986)]) c0546_sound (intervals_sound_cons (I := (14499, 14510)) (intervals := [(14560, 14563), (14602, 14602), (14625, 14634), (14656, 14666), (14749, 14760), (14823, 14826), (14848, 14857), (14880, 14885), (14904, 14906), (14912, 14914), (14945, 14954), (14985, 14986)]) c0547_sound (intervals_sound_cons (I := (14560, 14563)) (intervals := [(14602, 14602), (14625, 14634), (14656, 14666), (14749, 14760), (14823, 14826), (14848, 14857), (14880, 14885), (14904, 14906), (14912, 14914), (14945, 14954), (14985, 14986)]) c0548_sound (intervals_sound_cons (I := (14602, 14602)) (intervals := [(14625, 14634), (14656, 14666), (14749, 14760), (14823, 14826), (14848, 14857), (14880, 14885), (14904, 14906), (14912, 14914), (14945, 14954), (14985, 14986)]) c0549_sound (intervals_sound_cons (I := (14625, 14634)) (intervals := [(14656, 14666), (14749, 14760), (14823, 14826), (14848, 14857), (14880, 14885), (14904, 14906), (14912, 14914), (14945, 14954), (14985, 14986)]) c0550_sound (intervals_sound_cons (I := (14656, 14666)) (intervals := [(14749, 14760), (14823, 14826), (14848, 14857), (14880, 14885), (14904, 14906), (14912, 14914), (14945, 14954), (14985, 14986)]) c0551_sound (intervals_sound_cons (I := (14749, 14760)) (intervals := [(14823, 14826), (14848, 14857), (14880, 14885), (14904, 14906), (14912, 14914), (14945, 14954), (14985, 14986)]) c0552_sound (intervals_sound_cons (I := (14823, 14826)) (intervals := [(14848, 14857), (14880, 14885), (14904, 14906), (14912, 14914), (14945, 14954), (14985, 14986)]) c0553_sound (intervals_sound_cons (I := (14848, 14857)) (intervals := [(14880, 14885), (14904, 14906), (14912, 14914), (14945, 14954), (14985, 14986)]) c0554_sound (intervals_sound_cons (I := (14880, 14885)) (intervals := [(14904, 14906), (14912, 14914), (14945, 14954), (14985, 14986)]) c0555_sound (intervals_sound_cons (I := (14904, 14906)) (intervals := [(14912, 14914), (14945, 14954), (14985, 14986)]) c0556_sound (intervals_sound_cons (I := (14912, 14914)) (intervals := [(14945, 14954), (14985, 14986)]) c0557_sound (intervals_sound_cons (I := (14945, 14954)) (intervals := [(14985, 14986)]) c0558_sound (intervals_sound_cons (I := (14985, 14986)) (intervals := []) c0559_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G034
