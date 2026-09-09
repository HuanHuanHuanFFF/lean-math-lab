import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block003

def segment0Nodes : List Nat := [137251, 137413, 137597, 137777, 137957, 138139, 138323, 138497, 138679, 138863, 139033, 139201, 139369, 139547, 139729, 139907]
theorem segment0Check : trialChainCheck 322 137077 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 137077 139907 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [140071, 140249, 140423, 140603, 140779, 140939, 141121, 141301, 141481, 141653, 141833, 142007, 142189, 142369, 142553, 142733]
theorem segment1Check : trialChainCheck 322 139907 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 139907 142733 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [142907, 143063, 143243, 143419, 143593, 143909, 144073, 144253, 144427, 144611, 144791, 144973, 145139, 145307, 145487, 145661]
theorem segment2Check : trialChainCheck 322 142733 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 142733 145661 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [145829, 146011, 146191, 146369, 146543, 146719, 146893, 147073, 147253, 147419, 147583, 147761, 147937, 148249, 148429, 148609]
theorem segment3Check : trialChainCheck 322 145661 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 145661 148609 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [148793, 148961, 149143, 149323, 149629, 149803, 149971, 150151, 150329, 150503, 150659, 150833, 151013, 151189, 151357, 151537]
theorem segment4Check : trialChainCheck 322 148609 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 148609 151537 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [151717, 151901, 152083, 152267, 152443, 152623, 152791, 152959, 153137, 153319, 153499, 153817, 154001, 154183, 154351, 154523]
theorem segment5Check : trialChainCheck 322 151537 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 151537 154523 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [154699, 154883, 155047, 155231, 155413, 155593, 155777, 156089, 156269, 156437, 156619, 156799, 156979, 157163, 157327, 157489]
theorem segment6Check : trialChainCheck 322 154523 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 154523 157489 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [157669, 157841, 158017, 158201, 158371, 158551, 158731, 158909, 159079, 159233, 159407, 159589, 159773, 159937, 160253, 160423]
theorem segment7Check : trialChainCheck 322 157489 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 157489 160423 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [160603, 160781, 161093, 161411, 161591, 161773, 161957, 162119, 162293, 162473, 162649, 162829, 163003, 163181, 163363, 163543]
theorem segment8Check : trialChainCheck 322 160423 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 160423 163543 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [163697, 163871, 164051, 164233, 164413, 164587, 164771, 164953, 165133, 165317, 165479, 165653, 165833, 166013, 166189, 166363]
theorem segment9Check : trialChainCheck 322 163543 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 163543 166363 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [166541, 166723, 166871, 167051, 167221, 167543, 167711, 167891, 168071, 168253, 168433, 168617, 168781, 168943, 169111, 169283]
theorem segment10Check : trialChainCheck 322 166363 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 166363 169283 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [169457, 169639, 169823, 170003, 170179, 170363, 170539, 170711, 170887, 171053, 171233, 171403, 171583, 171763, 171947, 172127]
theorem segment11Check : trialChainCheck 322 169283 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 169283 172127 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [172307, 172489, 172673, 172853, 173023, 173207, 173359, 173543, 173713, 173897, 174079, 174263, 174443, 174617, 174799, 174959]
theorem segment12Check : trialChainCheck 322 172127 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 172127 174959 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [175141, 175309, 175493, 175673, 175853, 176023, 176207, 176389, 176573, 176753, 176933, 177113, 177283, 177467, 177647, 177823]
theorem segment13Check : trialChainCheck 322 174959 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 174959 177823 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [178001, 178183, 178361, 178537, 178697, 178877, 179057, 179233, 179411, 179593, 179749, 179923, 180097, 180281, 180463, 180647]
theorem segment14Check : trialChainCheck 322 177823 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 177823 180647 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [180959, 181141, 181459, 181639, 181813, 181997, 182179, 182353, 182537, 182713, 182893, 183067, 183247, 183397, 183581, 183763]
theorem segment15Check : trialChainCheck 322 180647 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 180647 183763 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 137077 142733 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 142733 148609 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 148609 154523 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 154523 160423 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 160423 166363 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 166363 172127 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 172127 177823 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 177823 183763 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 137077 148609 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 148609 160423 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 160423 172127 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 172127 183763 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 137077 160423 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 160423 183763 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 137077 183763 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 137077 183763 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block003

#print axioms B699MiddleIndex.PrimeBlocks.Block003.joined
