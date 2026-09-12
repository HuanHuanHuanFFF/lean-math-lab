import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCandidateCoverage.Generic
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk078
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk079
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk080
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk081
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk082

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 16384
namespace Math.B699.I11TerminalCandidateCoverage.Groups.G005
open B699LowIndex B699LowIndex.I11TerminalCover B699LargePrimeStructure
open Math.B699.I11TerminalCandidateCoverage

private def c0080_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk078.w12]
private def c0080_intervals : List NatInterval := [(5568, 5572)]

private theorem c0080_intervals_eq :
    witnessIntervals c0080_witnesses = c0080_intervals := by
  rfl

private theorem c0080_checks : witnessesCheck c0080_witnesses = true := by
  simp only [witnessesCheck, c0080_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk078.w12_check, Bool.and_self]

private theorem c0080_cover : coverCheck 5568 5572 c0080_intervals = true := by
  decide

private theorem c0080_sound : IntervalSound (5568, 5572) := by
  have hc : coverCheck 5568 5572 (witnessIntervals c0080_witnesses) = true := by
    rw [c0080_intervals_eq]
    exact c0080_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0080_witnesses)
    (lo := 5568) (hi := 5572) c0080_checks hc

private def c0081_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk078.w13]
private def c0081_intervals : List NatInterval := [(5575, 5578)]

private theorem c0081_intervals_eq :
    witnessIntervals c0081_witnesses = c0081_intervals := by
  rfl

private theorem c0081_checks : witnessesCheck c0081_witnesses = true := by
  simp only [witnessesCheck, c0081_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk078.w13_check, Bool.and_self]

private theorem c0081_cover : coverCheck 5575 5578 c0081_intervals = true := by
  decide

private theorem c0081_sound : IntervalSound (5575, 5578) := by
  have hc : coverCheck 5575 5578 (witnessIntervals c0081_witnesses) = true := by
    rw [c0081_intervals_eq]
    exact c0081_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0081_witnesses)
    (lo := 5575) (hi := 5578) c0081_checks hc

private def c0082_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk078.w14, B699LowIndex.I11TerminalData.Chunk078.w15]
private def c0082_intervals : List NatInterval := [(5584, 5591), (5592, 5596)]

private theorem c0082_intervals_eq :
    witnessIntervals c0082_witnesses = c0082_intervals := by
  rfl

private theorem c0082_checks : witnessesCheck c0082_witnesses = true := by
  simp only [witnessesCheck, c0082_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk078.w14_check, B699LowIndex.I11TerminalData.Chunk078.w15_check, Bool.and_self]

private theorem c0082_cover : coverCheck 5584 5596 c0082_intervals = true := by
  decide

private theorem c0082_sound : IntervalSound (5584, 5596) := by
  have hc : coverCheck 5584 5596 (witnessIntervals c0082_witnesses) = true := by
    rw [c0082_intervals_eq]
    exact c0082_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0082_witnesses)
    (lo := 5584) (hi := 5596) c0082_checks hc

private def c0083_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk079.w0, B699LowIndex.I11TerminalData.Chunk079.w1, B699LowIndex.I11TerminalData.Chunk079.w2, B699LowIndex.I11TerminalData.Chunk079.w3, B699LowIndex.I11TerminalData.Chunk079.w4, B699LowIndex.I11TerminalData.Chunk079.w5, B699LowIndex.I11TerminalData.Chunk079.w6, B699LowIndex.I11TerminalData.Chunk079.w7, B699LowIndex.I11TerminalData.Chunk079.w8, B699LowIndex.I11TerminalData.Chunk079.w9]
private def c0083_intervals : List NatInterval := [(5600, 5601), (5602, 5602), (5603, 5603), (5604, 5604), (5605, 5605), (5606, 5606), (5607, 5607), (5608, 5608), (5609, 5609), (5610, 5610)]

private theorem c0083_intervals_eq :
    witnessIntervals c0083_witnesses = c0083_intervals := by
  rfl

private theorem c0083_checks : witnessesCheck c0083_witnesses = true := by
  simp only [witnessesCheck, c0083_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk079.w0_check, B699LowIndex.I11TerminalData.Chunk079.w1_check, B699LowIndex.I11TerminalData.Chunk079.w2_check, B699LowIndex.I11TerminalData.Chunk079.w3_check, B699LowIndex.I11TerminalData.Chunk079.w4_check, B699LowIndex.I11TerminalData.Chunk079.w5_check, B699LowIndex.I11TerminalData.Chunk079.w6_check, B699LowIndex.I11TerminalData.Chunk079.w7_check, B699LowIndex.I11TerminalData.Chunk079.w8_check, B699LowIndex.I11TerminalData.Chunk079.w9_check, Bool.and_self]

private theorem c0083_cover : coverCheck 5600 5610 c0083_intervals = true := by
  decide

private theorem c0083_sound : IntervalSound (5600, 5610) := by
  have hc : coverCheck 5600 5610 (witnessIntervals c0083_witnesses) = true := by
    rw [c0083_intervals_eq]
    exact c0083_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0083_witnesses)
    (lo := 5600) (hi := 5610) c0083_checks hc

private def c0084_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk079.w10, B699LowIndex.I11TerminalData.Chunk079.w11, B699LowIndex.I11TerminalData.Chunk079.w12, B699LowIndex.I11TerminalData.Chunk079.w13, B699LowIndex.I11TerminalData.Chunk079.w14, B699LowIndex.I11TerminalData.Chunk079.w15, B699LowIndex.I11TerminalData.Chunk080.w0, B699LowIndex.I11TerminalData.Chunk080.w1]
private def c0084_intervals : List NatInterval := [(5616, 5616), (5617, 5617), (5618, 5618), (5619, 5619), (5620, 5620), (5621, 5621), (5622, 5622), (5623, 5626)]

private theorem c0084_intervals_eq :
    witnessIntervals c0084_witnesses = c0084_intervals := by
  rfl

private theorem c0084_checks : witnessesCheck c0084_witnesses = true := by
  simp only [witnessesCheck, c0084_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk079.w10_check, B699LowIndex.I11TerminalData.Chunk079.w11_check, B699LowIndex.I11TerminalData.Chunk079.w12_check, B699LowIndex.I11TerminalData.Chunk079.w13_check, B699LowIndex.I11TerminalData.Chunk079.w14_check, B699LowIndex.I11TerminalData.Chunk079.w15_check, B699LowIndex.I11TerminalData.Chunk080.w0_check, B699LowIndex.I11TerminalData.Chunk080.w1_check, Bool.and_self]

private theorem c0084_cover : coverCheck 5616 5626 c0084_intervals = true := by
  decide

private theorem c0084_sound : IntervalSound (5616, 5626) := by
  have hc : coverCheck 5616 5626 (witnessIntervals c0084_witnesses) = true := by
    rw [c0084_intervals_eq]
    exact c0084_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0084_witnesses)
    (lo := 5616) (hi := 5626) c0084_checks hc

private def c0085_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk080.w2, B699LowIndex.I11TerminalData.Chunk080.w3, B699LowIndex.I11TerminalData.Chunk080.w4, B699LowIndex.I11TerminalData.Chunk080.w5, B699LowIndex.I11TerminalData.Chunk080.w6, B699LowIndex.I11TerminalData.Chunk080.w7, B699LowIndex.I11TerminalData.Chunk080.w8]
private def c0085_intervals : List NatInterval := [(5632, 5633), (5634, 5634), (5635, 5635), (5636, 5636), (5637, 5637), (5638, 5638), (5639, 5645)]

private theorem c0085_intervals_eq :
    witnessIntervals c0085_witnesses = c0085_intervals := by
  rfl

private theorem c0085_checks : witnessesCheck c0085_witnesses = true := by
  simp only [witnessesCheck, c0085_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk080.w2_check, B699LowIndex.I11TerminalData.Chunk080.w3_check, B699LowIndex.I11TerminalData.Chunk080.w4_check, B699LowIndex.I11TerminalData.Chunk080.w5_check, B699LowIndex.I11TerminalData.Chunk080.w6_check, B699LowIndex.I11TerminalData.Chunk080.w7_check, B699LowIndex.I11TerminalData.Chunk080.w8_check, Bool.and_self]

private theorem c0085_cover : coverCheck 5632 5645 c0085_intervals = true := by
  decide

private theorem c0085_sound : IntervalSound (5632, 5645) := by
  have hc : coverCheck 5632 5645 (witnessIntervals c0085_witnesses) = true := by
    rw [c0085_intervals_eq]
    exact c0085_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0085_witnesses)
    (lo := 5632) (hi := 5645) c0085_checks hc

private def c0086_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk080.w9, B699LowIndex.I11TerminalData.Chunk080.w10]
private def c0086_intervals : List NatInterval := [(5648, 5657), (5658, 5658)]

private theorem c0086_intervals_eq :
    witnessIntervals c0086_witnesses = c0086_intervals := by
  rfl

private theorem c0086_checks : witnessesCheck c0086_witnesses = true := by
  simp only [witnessesCheck, c0086_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk080.w9_check, B699LowIndex.I11TerminalData.Chunk080.w10_check, Bool.and_self]

private theorem c0086_cover : coverCheck 5648 5658 c0086_intervals = true := by
  decide

private theorem c0086_sound : IntervalSound (5648, 5658) := by
  have hc : coverCheck 5648 5658 (witnessIntervals c0086_witnesses) = true := by
    rw [c0086_intervals_eq]
    exact c0086_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0086_witnesses)
    (lo := 5648) (hi := 5658) c0086_checks hc

private def c0087_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk080.w11, B699LowIndex.I11TerminalData.Chunk080.w12, B699LowIndex.I11TerminalData.Chunk080.w13, B699LowIndex.I11TerminalData.Chunk080.w14, B699LowIndex.I11TerminalData.Chunk080.w15]
private def c0087_intervals : List NatInterval := [(5670, 5679), (5680, 5680), (5681, 5681), (5682, 5682), (5683, 5690)]

private theorem c0087_intervals_eq :
    witnessIntervals c0087_witnesses = c0087_intervals := by
  rfl

private theorem c0087_checks : witnessesCheck c0087_witnesses = true := by
  simp only [witnessesCheck, c0087_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk080.w11_check, B699LowIndex.I11TerminalData.Chunk080.w12_check, B699LowIndex.I11TerminalData.Chunk080.w13_check, B699LowIndex.I11TerminalData.Chunk080.w14_check, B699LowIndex.I11TerminalData.Chunk080.w15_check, Bool.and_self]

private theorem c0087_cover : coverCheck 5670 5690 c0087_intervals = true := by
  decide

private theorem c0087_sound : IntervalSound (5670, 5690) := by
  have hc : coverCheck 5670 5690 (witnessIntervals c0087_witnesses) = true := by
    rw [c0087_intervals_eq]
    exact c0087_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0087_witnesses)
    (lo := 5670) (hi := 5690) c0087_checks hc

private def c0088_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk081.w0, B699LowIndex.I11TerminalData.Chunk081.w1]
private def c0088_intervals : List NatInterval := [(5697, 5703), (5704, 5707)]

private theorem c0088_intervals_eq :
    witnessIntervals c0088_witnesses = c0088_intervals := by
  rfl

private theorem c0088_checks : witnessesCheck c0088_witnesses = true := by
  simp only [witnessesCheck, c0088_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk081.w0_check, B699LowIndex.I11TerminalData.Chunk081.w1_check, Bool.and_self]

private theorem c0088_cover : coverCheck 5697 5707 c0088_intervals = true := by
  decide

private theorem c0088_sound : IntervalSound (5697, 5707) := by
  have hc : coverCheck 5697 5707 (witnessIntervals c0088_witnesses) = true := by
    rw [c0088_intervals_eq]
    exact c0088_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0088_witnesses)
    (lo := 5697) (hi := 5707) c0088_checks hc

private def c0089_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk081.w2, B699LowIndex.I11TerminalData.Chunk081.w3, B699LowIndex.I11TerminalData.Chunk081.w4, B699LowIndex.I11TerminalData.Chunk081.w5, B699LowIndex.I11TerminalData.Chunk081.w6, B699LowIndex.I11TerminalData.Chunk081.w7, B699LowIndex.I11TerminalData.Chunk081.w8, B699LowIndex.I11TerminalData.Chunk081.w9, B699LowIndex.I11TerminalData.Chunk081.w10, B699LowIndex.I11TerminalData.Chunk081.w11, B699LowIndex.I11TerminalData.Chunk081.w12]
private def c0089_intervals : List NatInterval := [(5725, 5727), (5728, 5728), (5729, 5729), (5730, 5730), (5731, 5731), (5732, 5732), (5733, 5733), (5734, 5734), (5735, 5735), (5736, 5736), (5737, 5738)]

private theorem c0089_intervals_eq :
    witnessIntervals c0089_witnesses = c0089_intervals := by
  rfl

private theorem c0089_checks : witnessesCheck c0089_witnesses = true := by
  simp only [witnessesCheck, c0089_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk081.w2_check, B699LowIndex.I11TerminalData.Chunk081.w3_check, B699LowIndex.I11TerminalData.Chunk081.w4_check, B699LowIndex.I11TerminalData.Chunk081.w5_check, B699LowIndex.I11TerminalData.Chunk081.w6_check, B699LowIndex.I11TerminalData.Chunk081.w7_check, B699LowIndex.I11TerminalData.Chunk081.w8_check, B699LowIndex.I11TerminalData.Chunk081.w9_check, B699LowIndex.I11TerminalData.Chunk081.w10_check, B699LowIndex.I11TerminalData.Chunk081.w11_check, B699LowIndex.I11TerminalData.Chunk081.w12_check, Bool.and_self]

private theorem c0089_cover : coverCheck 5725 5738 c0089_intervals = true := by
  decide

private theorem c0089_sound : IntervalSound (5725, 5738) := by
  have hc : coverCheck 5725 5738 (witnessIntervals c0089_witnesses) = true := by
    rw [c0089_intervals_eq]
    exact c0089_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0089_witnesses)
    (lo := 5725) (hi := 5738) c0089_checks hc

private def c0090_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk081.w13, B699LowIndex.I11TerminalData.Chunk081.w14, B699LowIndex.I11TerminalData.Chunk081.w15]
private def c0090_intervals : List NatInterval := [(5750, 5759), (5760, 5760), (5761, 5761)]

private theorem c0090_intervals_eq :
    witnessIntervals c0090_witnesses = c0090_intervals := by
  rfl

private theorem c0090_checks : witnessesCheck c0090_witnesses = true := by
  simp only [witnessesCheck, c0090_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk081.w13_check, B699LowIndex.I11TerminalData.Chunk081.w14_check, B699LowIndex.I11TerminalData.Chunk081.w15_check, Bool.and_self]

private theorem c0090_cover : coverCheck 5750 5761 c0090_intervals = true := by
  decide

private theorem c0090_sound : IntervalSound (5750, 5761) := by
  have hc : coverCheck 5750 5761 (witnessIntervals c0090_witnesses) = true := by
    rw [c0090_intervals_eq]
    exact c0090_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0090_witnesses)
    (lo := 5750) (hi := 5761) c0090_checks hc

private def c0091_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk082.w0, B699LowIndex.I11TerminalData.Chunk082.w1, B699LowIndex.I11TerminalData.Chunk082.w2, B699LowIndex.I11TerminalData.Chunk082.w3]
private def c0091_intervals : List NatInterval := [(5776, 5776), (5777, 5777), (5778, 5778), (5779, 5788)]

private theorem c0091_intervals_eq :
    witnessIntervals c0091_witnesses = c0091_intervals := by
  rfl

private theorem c0091_checks : witnessesCheck c0091_witnesses = true := by
  simp only [witnessesCheck, c0091_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk082.w0_check, B699LowIndex.I11TerminalData.Chunk082.w1_check, B699LowIndex.I11TerminalData.Chunk082.w2_check, B699LowIndex.I11TerminalData.Chunk082.w3_check, Bool.and_self]

private theorem c0091_cover : coverCheck 5776 5788 c0091_intervals = true := by
  decide

private theorem c0091_sound : IntervalSound (5776, 5788) := by
  have hc : coverCheck 5776 5788 (witnessIntervals c0091_witnesses) = true := by
    rw [c0091_intervals_eq]
    exact c0091_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0091_witnesses)
    (lo := 5776) (hi := 5788) c0091_checks hc

private def c0092_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk082.w4]
private def c0092_intervals : List NatInterval := [(5792, 5792)]

private theorem c0092_intervals_eq :
    witnessIntervals c0092_witnesses = c0092_intervals := by
  rfl

private theorem c0092_checks : witnessesCheck c0092_witnesses = true := by
  simp only [witnessesCheck, c0092_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk082.w4_check, Bool.and_self]

private theorem c0092_cover : coverCheck 5792 5792 c0092_intervals = true := by
  decide

private theorem c0092_sound : IntervalSound (5792, 5792) := by
  have hc : coverCheck 5792 5792 (witnessIntervals c0092_witnesses) = true := by
    rw [c0092_intervals_eq]
    exact c0092_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0092_witnesses)
    (lo := 5792) (hi := 5792) c0092_checks hc

private def c0093_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk082.w5, B699LowIndex.I11TerminalData.Chunk082.w6]
private def c0093_intervals : List NatInterval := [(5800, 5801), (5802, 5802)]

private theorem c0093_intervals_eq :
    witnessIntervals c0093_witnesses = c0093_intervals := by
  rfl

private theorem c0093_checks : witnessesCheck c0093_witnesses = true := by
  simp only [witnessesCheck, c0093_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk082.w5_check, B699LowIndex.I11TerminalData.Chunk082.w6_check, Bool.and_self]

private theorem c0093_cover : coverCheck 5800 5802 c0093_intervals = true := by
  decide

private theorem c0093_sound : IntervalSound (5800, 5802) := by
  have hc : coverCheck 5800 5802 (witnessIntervals c0093_witnesses) = true := by
    rw [c0093_intervals_eq]
    exact c0093_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0093_witnesses)
    (lo := 5800) (hi := 5802) c0093_checks hc

private def c0094_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk082.w7, B699LowIndex.I11TerminalData.Chunk082.w8]
private def c0094_intervals : List NatInterval := [(5805, 5811), (5812, 5815)]

private theorem c0094_intervals_eq :
    witnessIntervals c0094_witnesses = c0094_intervals := by
  rfl

private theorem c0094_checks : witnessesCheck c0094_witnesses = true := by
  simp only [witnessesCheck, c0094_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk082.w7_check, B699LowIndex.I11TerminalData.Chunk082.w8_check, Bool.and_self]

private theorem c0094_cover : coverCheck 5805 5815 c0094_intervals = true := by
  decide

private theorem c0094_sound : IntervalSound (5805, 5815) := by
  have hc : coverCheck 5805 5815 (witnessIntervals c0094_witnesses) = true := by
    rw [c0094_intervals_eq]
    exact c0094_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0094_witnesses)
    (lo := 5805) (hi := 5815) c0094_checks hc

private def c0095_witnesses : List Witness := [B699LowIndex.I11TerminalData.Chunk082.w9, B699LowIndex.I11TerminalData.Chunk082.w10, B699LowIndex.I11TerminalData.Chunk082.w11, B699LowIndex.I11TerminalData.Chunk082.w12]
private def c0095_intervals : List NatInterval := [(5825, 5831), (5832, 5837), (5838, 5838), (5839, 5842)]

private theorem c0095_intervals_eq :
    witnessIntervals c0095_witnesses = c0095_intervals := by
  rfl

private theorem c0095_checks : witnessesCheck c0095_witnesses = true := by
  simp only [witnessesCheck, c0095_witnesses, List.all_cons, List.all_nil,
    B699LowIndex.I11TerminalData.Chunk082.w9_check, B699LowIndex.I11TerminalData.Chunk082.w10_check, B699LowIndex.I11TerminalData.Chunk082.w11_check, B699LowIndex.I11TerminalData.Chunk082.w12_check, Bool.and_self]

private theorem c0095_cover : coverCheck 5825 5842 c0095_intervals = true := by
  decide

private theorem c0095_sound : IntervalSound (5825, 5842) := by
  have hc : coverCheck 5825 5842 (witnessIntervals c0095_witnesses) = true := by
    rw [c0095_intervals_eq]
    exact c0095_cover
  intro n j
  exact interval_sound_of_witness_checks (n := n) (j := j) (witnesses := c0095_witnesses)
    (lo := 5825) (hi := 5842) c0095_checks hc

def intervals : List NatInterval := [(5568, 5572), (5575, 5578), (5584, 5596), (5600, 5610), (5616, 5626), (5632, 5645), (5648, 5658), (5670, 5690), (5697, 5707), (5725, 5738), (5750, 5761), (5776, 5788), (5792, 5792), (5800, 5802), (5805, 5815), (5825, 5842)]
theorem intervals_sound : IntervalsSound intervals := by
  unfold intervals
  exact (intervals_sound_cons (I := (5568, 5572)) (intervals := [(5575, 5578), (5584, 5596), (5600, 5610), (5616, 5626), (5632, 5645), (5648, 5658), (5670, 5690), (5697, 5707), (5725, 5738), (5750, 5761), (5776, 5788), (5792, 5792), (5800, 5802), (5805, 5815), (5825, 5842)]) c0080_sound (intervals_sound_cons (I := (5575, 5578)) (intervals := [(5584, 5596), (5600, 5610), (5616, 5626), (5632, 5645), (5648, 5658), (5670, 5690), (5697, 5707), (5725, 5738), (5750, 5761), (5776, 5788), (5792, 5792), (5800, 5802), (5805, 5815), (5825, 5842)]) c0081_sound (intervals_sound_cons (I := (5584, 5596)) (intervals := [(5600, 5610), (5616, 5626), (5632, 5645), (5648, 5658), (5670, 5690), (5697, 5707), (5725, 5738), (5750, 5761), (5776, 5788), (5792, 5792), (5800, 5802), (5805, 5815), (5825, 5842)]) c0082_sound (intervals_sound_cons (I := (5600, 5610)) (intervals := [(5616, 5626), (5632, 5645), (5648, 5658), (5670, 5690), (5697, 5707), (5725, 5738), (5750, 5761), (5776, 5788), (5792, 5792), (5800, 5802), (5805, 5815), (5825, 5842)]) c0083_sound (intervals_sound_cons (I := (5616, 5626)) (intervals := [(5632, 5645), (5648, 5658), (5670, 5690), (5697, 5707), (5725, 5738), (5750, 5761), (5776, 5788), (5792, 5792), (5800, 5802), (5805, 5815), (5825, 5842)]) c0084_sound (intervals_sound_cons (I := (5632, 5645)) (intervals := [(5648, 5658), (5670, 5690), (5697, 5707), (5725, 5738), (5750, 5761), (5776, 5788), (5792, 5792), (5800, 5802), (5805, 5815), (5825, 5842)]) c0085_sound (intervals_sound_cons (I := (5648, 5658)) (intervals := [(5670, 5690), (5697, 5707), (5725, 5738), (5750, 5761), (5776, 5788), (5792, 5792), (5800, 5802), (5805, 5815), (5825, 5842)]) c0086_sound (intervals_sound_cons (I := (5670, 5690)) (intervals := [(5697, 5707), (5725, 5738), (5750, 5761), (5776, 5788), (5792, 5792), (5800, 5802), (5805, 5815), (5825, 5842)]) c0087_sound (intervals_sound_cons (I := (5697, 5707)) (intervals := [(5725, 5738), (5750, 5761), (5776, 5788), (5792, 5792), (5800, 5802), (5805, 5815), (5825, 5842)]) c0088_sound (intervals_sound_cons (I := (5725, 5738)) (intervals := [(5750, 5761), (5776, 5788), (5792, 5792), (5800, 5802), (5805, 5815), (5825, 5842)]) c0089_sound (intervals_sound_cons (I := (5750, 5761)) (intervals := [(5776, 5788), (5792, 5792), (5800, 5802), (5805, 5815), (5825, 5842)]) c0090_sound (intervals_sound_cons (I := (5776, 5788)) (intervals := [(5792, 5792), (5800, 5802), (5805, 5815), (5825, 5842)]) c0091_sound (intervals_sound_cons (I := (5792, 5792)) (intervals := [(5800, 5802), (5805, 5815), (5825, 5842)]) c0092_sound (intervals_sound_cons (I := (5800, 5802)) (intervals := [(5805, 5815), (5825, 5842)]) c0093_sound (intervals_sound_cons (I := (5805, 5815)) (intervals := [(5825, 5842)]) c0094_sound (intervals_sound_cons (I := (5825, 5842)) (intervals := []) c0095_sound intervals_sound_nil))))))))))))))))

end Math.B699.I11TerminalCandidateCoverage.Groups.G005
