import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block022

def segment0Nodes : List Nat := [1018357, 1018513, 1018697, 1018879, 1019059, 1019237, 1019413, 1019563, 1019747, 1019927, 1020109, 1020293, 1020457, 1020631, 1020797, 1020979]
theorem segment0Check : trialChainCheck 322 1018177 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 1018177 1020979 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [1021159, 1021333, 1021487, 1021663, 1021837, 1022017, 1022201, 1022383, 1022701, 1022881, 1023047, 1023229, 1023413, 1023577, 1023871, 1024031]
theorem segment1Check : trialChainCheck 322 1020979 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 1020979 1024031 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [1024207, 1024391, 1024559, 1024729, 1024909, 1025093, 1025273, 1025443, 1025623, 1025807, 1025957, 1026139, 1026313, 1026481, 1026661, 1026833]
theorem segment2Check : trialChainCheck 322 1024031 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 1024031 1026833 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [1027003, 1027181, 1027357, 1027519, 1027703, 1027883, 1028063, 1028243, 1028411, 1028581, 1028761, 1028941, 1029113, 1029289, 1029473, 1029653]
theorem segment3Check : trialChainCheck 322 1026833 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 1026833 1029653 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [1029827, 1029989, 1030307, 1030619, 1030801, 1030957, 1031141, 1031323, 1031507, 1031677, 1031837, 1032007, 1032191, 1032373, 1032541, 1032721]
theorem segment4Check : trialChainCheck 322 1029653 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 1029653 1032721 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [1032901, 1033223, 1033393, 1033567, 1033751, 1033927, 1034101, 1034281, 1034461, 1034639, 1034809, 1034993, 1035163, 1035343, 1035527, 1035707]
theorem segment5Check : trialChainCheck 322 1032721 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 1032721 1035707 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [1035869, 1036039, 1036223, 1036391, 1036561, 1036729, 1036913, 1037089, 1037273, 1037447, 1037627, 1037801, 1037983, 1038157, 1038337, 1038503]
theorem segment6Check : trialChainCheck 322 1035707 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 1035707 1038503 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [1038671, 1038833, 1039007, 1039187, 1039351, 1039517, 1039837, 1040021, 1040203, 1040387, 1040563, 1040747, 1040929, 1041109, 1041289, 1041461]
theorem segment7Check : trialChainCheck 322 1038503 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 1038503 1041461 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [1041643, 1041823, 1042001, 1042183, 1042357, 1042529, 1042709, 1043023, 1043201, 1043377, 1043557, 1043723, 1043899, 1044079, 1044257, 1044437]
theorem segment8Check : trialChainCheck 322 1041461 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 1041461 1044437 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [1044619, 1044941, 1045123, 1045307, 1045487, 1045663, 1045841, 1045997, 1046179, 1046351, 1046527, 1046711, 1046867, 1047043, 1047199, 1047379]
theorem segment9Check : trialChainCheck 322 1044437 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 1044437 1047379 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [1047559, 1047737, 1047887, 1048063, 1048219, 1048391, 1048573, 1048721, 1048897, 1049077, 1049239, 1049413, 1049569, 1049747, 1049899, 1050083]
theorem segment10Check : trialChainCheck 322 1047379 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 1047379 1050083 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [1050253, 1050437, 1050611, 1050781, 1050961, 1051139, 1051319, 1051499, 1051663, 1051847, 1052027, 1052333, 1052489, 1052663, 1052819, 1053103]
theorem segment11Check : trialChainCheck 322 1050083 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 1050083 1053103 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [1053271, 1053449, 1053769, 1053953, 1054133, 1054309, 1054483, 1054667, 1054843, 1055017, 1055191, 1055371, 1055543, 1055713, 1055897, 1056073]
theorem segment12Check : trialChainCheck 322 1053103 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 1053103 1056073 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [1056247, 1056401, 1056577, 1056739, 1056917, 1057093, 1057271, 1057421, 1057603, 1057781, 1057963, 1058147, 1058329, 1058507, 1058683, 1058861]
theorem segment13Check : trialChainCheck 322 1056073 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 1056073 1058861 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [1059029, 1059349, 1059517, 1059701, 1059871, 1060051, 1060229, 1060403, 1060573, 1060883, 1061057, 1061227, 1061407, 1061591, 1061773, 1062073]
theorem segment14Check : trialChainCheck 322 1058861 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 1058861 1062073 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [1062253, 1062427, 1062601, 1062781, 1062949, 1063123, 1063303, 1063483, 1063661, 1063837, 1064017, 1064201, 1064383, 1064549, 1064731, 1064911]
theorem segment15Check : trialChainCheck 322 1062073 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 1062073 1064911 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 1018177 1024031 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 1024031 1029653 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 1029653 1035707 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 1035707 1041461 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 1041461 1047379 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 1047379 1053103 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 1053103 1058861 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 1058861 1064911 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 1018177 1029653 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 1029653 1041461 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 1041461 1053103 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1053103 1064911 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 1018177 1041461 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 1041461 1064911 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 1018177 1064911 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 1018177 1064911 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block022

#print axioms B699MiddleIndex.PrimeBlocks.Block022.joined
