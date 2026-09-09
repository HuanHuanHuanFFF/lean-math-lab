import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block019

def segment0Nodes : List Nat := [879713, 879881, 880057, 880367, 880543, 880727, 880909, 881077, 881249, 881417, 881597, 881779, 881963, 882139, 882313, 882491]
theorem segment0Check : trialChainCheck 322 879533 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 879533 882491 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [882659, 882979, 883163, 883343, 883517, 883699, 883877, 884057, 884371, 884537, 884717, 884899, 885083, 885263, 885427, 885611]
theorem segment1Check : trialChainCheck 322 882491 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 882491 885611 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [885793, 885977, 886129, 886313, 886493, 886667, 886819, 886999, 887177, 887333, 887503, 887681, 887849, 888011, 888179, 888361]
theorem segment2Check : trialChainCheck 322 885611 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 885611 888361 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [888541, 888721, 888887, 889069, 889247, 889429, 889597, 889769, 889951, 890129, 890303, 890609, 890789, 890969, 891151, 891329]
theorem segment3Check : trialChainCheck 322 888361 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 888361 891329 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [891509, 891679, 891859, 892027, 892189, 892357, 892531, 892709, 892877, 893059, 893237, 893419, 893603, 893777, 893939, 894119]
theorem segment4Check : trialChainCheck 322 891329 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 891329 894119 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [894301, 894613, 894793, 894973, 895157, 895333, 895507, 895691, 896009, 896191, 896369, 896549, 896723, 896897, 897077, 897251]
theorem segment5Check : trialChainCheck 322 894119 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 894119 897251 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [897433, 897607, 897781, 897947, 898129, 898307, 898483, 898663, 898823, 898987, 899161, 899321, 899491, 899671, 899851, 900019]
theorem segment6Check : trialChainCheck 322 897251 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 897251 900019 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [900187, 900349, 900511, 900689, 900869, 901013, 901193, 901367, 901547, 901717, 901891, 902053, 902227, 902401, 902579, 902761]
theorem segment7Check : trialChainCheck 322 900019 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 900019 902761 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [902933, 903109, 903269, 903451, 903613, 903781, 903949, 904121, 904303, 904483, 904667, 904847, 905011, 905189, 905507, 905687]
theorem segment8Check : trialChainCheck 322 902761 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 902761 905687 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [905843, 906023, 906203, 906383, 906557, 906727, 906911, 907073, 907237, 907399, 907583, 907759, 907927, 908249, 908419, 908603]
theorem segment9Check : trialChainCheck 322 905687 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 905687 908603 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [908771, 908953, 909133, 909317, 909637, 909809, 909977, 910141, 910307, 910471, 910643, 910817, 910981, 911161, 911341, 911507]
theorem segment10Check : trialChainCheck 322 908603 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 908603 911507 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [911689, 911873, 912053, 912227, 912409, 912581, 912763, 912941, 913103, 913279, 913457, 913639, 913811, 913981, 914161, 914339]
theorem segment11Check : trialChainCheck 322 911507 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 911507 914339 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [914521, 914701, 914873, 915053, 915223, 915391, 915557, 915737, 915919, 916103, 916273, 916457, 916633, 916787, 916961, 917141]
theorem segment12Check : trialChainCheck 322 914339 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 914339 917141 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [917317, 917471, 917641, 917809, 917993, 918173, 918353, 918529, 918683, 918857, 919033, 919351, 919531, 919703, 919883, 920053]
theorem segment13Check : trialChainCheck 322 917141 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 917141 920053 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [920233, 920411, 920561, 920743, 920921, 921091, 921409, 921589, 921761, 921931, 922099, 922283, 922463, 922643, 922813, 922993]
theorem segment14Check : trialChainCheck 322 920053 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 920053 922993 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [923177, 923347, 923513, 923693, 923869, 924043, 924361, 924529, 924713, 924881, 925063, 925241, 925423, 925607, 925789, 925961]
theorem segment15Check : trialChainCheck 322 922993 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 922993 925961 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 879533 885611 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 885611 891329 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 891329 897251 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 897251 902761 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 902761 908603 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 908603 914339 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 914339 920053 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 920053 925961 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 879533 891329 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 891329 902761 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 902761 914339 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 914339 925961 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 879533 902761 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 902761 925961 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 879533 925961 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 879533 925961 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block019

#print axioms B699MiddleIndex.PrimeBlocks.Block019.joined
