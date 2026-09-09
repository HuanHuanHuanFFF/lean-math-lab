import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block004

def segment0Nodes : List Nat := [183943, 184117, 184291, 184463, 184777, 184957, 185137, 185309, 185491, 185651, 185833, 186013, 186191, 186481, 186799, 186959]
theorem segment0Check : trialChainCheck 322 183763 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 183763 186959 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [187141, 187303, 187477, 187661, 187843, 188021, 188197, 188369, 188533, 188711, 188891, 189067, 189251, 189433, 189617, 189799]
theorem segment1Check : trialChainCheck 322 186959 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 186959 189799 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [189983, 190159, 190339, 190523, 190699, 190871, 191047, 191231, 191413, 191579, 191749, 191929, 192113, 192431, 192613, 192791]
theorem segment2Check : trialChainCheck 322 189799 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 189799 192791 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [192971, 193153, 193337, 193513, 193679, 193861, 194027, 194203, 194377, 194543, 194723, 194899, 195077, 195259, 195443, 195599]
theorem segment3Check : trialChainCheck 322 192791 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 192791 195599 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [195781, 195931, 196111, 196291, 196459, 196643, 196817, 196993, 197161, 197341, 197521, 197837, 198017, 198197, 198377, 198553]
theorem segment4Check : trialChainCheck 322 195599 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 195599 198553 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [198733, 198901, 199081, 199261, 199429, 199603, 199783, 199967, 200131, 200297, 200467, 200639, 200807, 200989, 201167, 201337]
theorem segment5Check : trialChainCheck 322 198553 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 198553 201337 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [201517, 201701, 201881, 202063, 202243, 202409, 202591, 202757, 202933, 203117, 203293, 203461, 203641, 203821, 203999, 204173]
theorem segment6Check : trialChainCheck 322 201337 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 201337 204173 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [204353, 204521, 204679, 204859, 205043, 205223, 205399, 205721, 205883, 206051, 206233, 206413, 206597, 206779, 206953, 207127]
theorem segment7Check : trialChainCheck 322 204173 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 204173 207127 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [207307, 207491, 207673, 207847, 208009, 208189, 208367, 208529, 208699, 208877, 209039, 209221, 209401, 209581, 209743, 209927]
theorem segment8Check : trialChainCheck 322 207127 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 207127 209927 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [210109, 210283, 210467, 210643, 210827, 211007, 211187, 211369, 211543, 211727, 211891, 212057, 212239, 212423, 212593, 212777]
theorem segment9Check : trialChainCheck 322 209927 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 209927 212777 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [213097, 213281, 213461, 213641, 213821, 214003, 214177, 214351, 214531, 214691, 214867, 215051, 215197, 215381, 215563, 215737]
theorem segment10Check : trialChainCheck 322 212777 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 212777 215737 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [215921, 216103, 216263, 216431, 216607, 216791, 216973, 217157, 217339, 217519, 217697, 217859, 218021, 218191, 218371, 218551]
theorem segment11Check : trialChainCheck 322 215737 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 215737 218551 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [218723, 218887, 219071, 219251, 219433, 219613, 219797, 219979, 220163, 220333, 220513, 220687, 220861, 221021, 221327, 221509]
theorem segment12Check : trialChainCheck 322 218551 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 218551 221509 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [221677, 221849, 222029, 222199, 222379, 222557, 222731, 222913, 223087, 223259, 223441, 223621, 223781, 223963, 224131, 224309]
theorem segment13Check : trialChainCheck 322 221509 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 221509 224309 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [224491, 224669, 224831, 224993, 225167, 225349, 225529, 225697, 225871, 226027, 226201, 226381, 226697, 226871, 227053, 227233]
theorem segment14Check : trialChainCheck 322 224309 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 224309 227233 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [227407, 227581, 227893, 228077, 228257, 228427, 228611, 228793, 228961, 229139, 229321, 229499, 229681, 229849, 230017, 230189]
theorem segment15Check : trialChainCheck 322 227233 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 227233 230189 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 183763 189799 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 189799 195599 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 195599 201337 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 201337 207127 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 207127 212777 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 212777 218551 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 218551 224309 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 224309 230189 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 183763 195599 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 195599 207127 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 207127 218551 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 218551 230189 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 183763 207127 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 207127 230189 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 183763 230189 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 183763 230189 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block004

#print axioms B699MiddleIndex.PrimeBlocks.Block004.joined
