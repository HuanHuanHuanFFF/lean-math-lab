import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block021

def segment0Nodes : List Nat := [972229, 972409, 972721, 972901, 973081, 973253, 973421, 973597, 973781, 973957, 974137, 974317, 974497, 974657, 974837, 975017]
theorem segment0Check : trialChainCheck 322 972047 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 972047 975017 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [975199, 975383, 975553, 975731, 975907, 976091, 976271, 976453, 976637, 976817, 976991, 977167, 977351, 977521, 977693, 977861]
theorem segment1Check : trialChainCheck 322 975017 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 975017 977861 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [978041, 978223, 978403, 978569, 978749, 978931, 979109, 979291, 979471, 979651, 979831, 979987, 980159, 980327, 980503, 980687]
theorem segment2Check : trialChainCheck 322 977861 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 977861 980687 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [980851, 981023, 981199, 981377, 981527, 981707, 981889, 982067, 982231, 982403, 982577, 982759, 982939, 983123, 983299, 983617]
theorem segment3Check : trialChainCheck 322 980687 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 980687 983617 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [983791, 983951, 984127, 984307, 984491, 984667, 984847, 985027, 985181, 985351, 985531, 985709, 985877, 986053, 986369, 986543]
theorem segment4Check : trialChainCheck 322 983617 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 983617 986543 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [986719, 986903, 987083, 987251, 987433, 987739, 987913, 988093, 988271, 988453, 988607, 988789, 988963, 989123, 989293, 989477]
theorem segment5Check : trialChainCheck 322 986543 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 986543 989477 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [989647, 989831, 990013, 990181, 990361, 990529, 990707, 990889, 991073, 991229, 991409, 991579, 991751, 991931, 992113, 992281]
theorem segment6Check : trialChainCheck 322 989477 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 989477 992281 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [992461, 992633, 992809, 992983, 993137, 993319, 993493, 993647, 993827, 993997, 994181, 994501, 994667, 994837, 995009, 995173]
theorem segment7Check : trialChainCheck 322 992281 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 992281 995173 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [995347, 995531, 995713, 995887, 996067, 996367, 996551, 996703, 996887, 997069, 997247, 997427, 997609, 997793, 997973, 998147]
theorem segment8Check : trialChainCheck 322 995173 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 995173 998147 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [998329, 998513, 998689, 998861, 999043, 999221, 999389, 999563, 999727, 999907, 1000081, 1000253, 1000429, 1000609, 1000793, 1000973]
theorem segment9Check : trialChainCheck 322 998147 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 998147 1000973 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [1001153, 1001327, 1001501, 1001683, 1001839, 1002017, 1002191, 1002361, 1002527, 1002709, 1002893, 1003201, 1003381, 1003549, 1003733, 1003913]
theorem segment10Check : trialChainCheck 322 1000973 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 1000973 1003913 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [1004089, 1004273, 1004453, 1004599, 1004779, 1004963, 1005143, 1005317, 1005493, 1005677, 1005833, 1006007, 1006189, 1006367, 1006547, 1006721]
theorem segment11Check : trialChainCheck 322 1003913 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 1003913 1006721 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [1006897, 1007081, 1007249, 1007429, 1007609, 1007789, 1007971, 1008263, 1008437, 1008617, 1008793, 1008947, 1009121, 1009303, 1009487, 1009669]
theorem segment12Check : trialChainCheck 322 1006721 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 1006721 1009669 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [1009843, 1010003, 1010179, 1010357, 1010519, 1010687, 1010861, 1011037, 1011221, 1011397, 1011559, 1011737, 1011917, 1012097, 1012279, 1012463]
theorem segment13Check : trialChainCheck 322 1009669 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 1009669 1012463 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [1012637, 1012811, 1012993, 1013153, 1013329, 1013503, 1013687, 1013851, 1014029, 1014199, 1014371, 1014547, 1014731, 1014907, 1015207, 1015369]
theorem segment14Check : trialChainCheck 322 1012463 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 1012463 1015369 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [1015549, 1015727, 1015907, 1016089, 1016263, 1016441, 1016621, 1016789, 1016971, 1017139, 1017323, 1017481, 1017649, 1017827, 1018007, 1018177]
theorem segment15Check : trialChainCheck 322 1015369 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 1015369 1018177 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 972047 977861 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 977861 983617 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 983617 989477 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 989477 995173 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 995173 1000973 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 1000973 1006721 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 1006721 1012463 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 1012463 1018177 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 972047 983617 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 983617 995173 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 995173 1006721 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 1006721 1018177 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 972047 995173 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 995173 1018177 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 972047 1018177 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 972047 1018177 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block021

#print axioms B699MiddleIndex.PrimeBlocks.Block021.joined
