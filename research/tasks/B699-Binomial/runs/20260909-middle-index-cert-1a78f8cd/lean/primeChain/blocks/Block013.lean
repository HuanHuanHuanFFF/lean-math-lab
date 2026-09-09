import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Actual consecutive supplied prime-chain nodes. Each kernel reflection
certificate checks at most 16 edges. The larger block is composed from
these bounded checks; there is no giant all-nodes decide call. -/
namespace B699MiddleIndex.PrimeBlocks.Block013

def segment0Nodes : List Nat := [601319, 601487, 601669, 601849, 602033, 602201, 602383, 602551, 602729, 602909, 603091, 603257, 603431, 603613, 603793, 604073]
theorem segment0Check : trialChainCheck 322 601147 segment0Nodes = true := by
  decide +kernel
theorem segment0 : PrimeChain 322 601147 604073 :=
  trialChainCheck_sound segment0Check

def segment1Nodes : List Nat := [604249, 604433, 604613, 604787, 604957, 605261, 605443, 605617, 605789, 605953, 606131, 606313, 606497, 606673, 606857, 607037]
theorem segment1Check : trialChainCheck 322 604073 segment1Nodes = true := by
  decide +kernel
theorem segment1 : PrimeChain 322 604073 607037 :=
  trialChainCheck_sound segment1Check

def segment2Nodes : List Nat := [607219, 607531, 607703, 607883, 608033, 608213, 608527, 608701, 608873, 609047, 609227, 609407, 609589, 609757, 609929, 610243]
theorem segment2Check : trialChainCheck 322 607037 segment2Nodes = true := by
  decide +kernel
theorem segment2 : PrimeChain 322 607037 610243 :=
  trialChainCheck_sound segment2Check

def segment3Nodes : List Nat := [610417, 610583, 610763, 610933, 611113, 611297, 611467, 611641, 611803, 611977, 612149, 612331, 612511, 612679, 612853, 613013]
theorem segment3Check : trialChainCheck 322 610243 segment3Nodes = true := by
  decide +kernel
theorem segment3 : PrimeChain 322 610243 613013 :=
  trialChainCheck_sound segment3Check

def segment4Nodes : List Nat := [613189, 613367, 613549, 613733, 613903, 614219, 614387, 614569, 614753, 614927, 615107, 615289, 615473, 615623, 615799, 615971]
theorem segment4Check : trialChainCheck 322 613013 segment4Nodes = true := by
  decide +kernel
theorem segment4 : PrimeChain 322 613013 615971 :=
  trialChainCheck_sound segment4Check

def segment5Nodes : List Nat := [616153, 616327, 616507, 616673, 616849, 617027, 617191, 617369, 617537, 617719, 617887, 618053, 618229, 618413, 618719, 618883]
theorem segment5Check : trialChainCheck 322 615971 segment5Nodes = true := by
  decide +kernel
theorem segment5 : PrimeChain 322 615971 618883 :=
  trialChainCheck_sound segment5Check

def segment6Nodes : List Nat := [619067, 619247, 619397, 619573, 619753, 619921, 620099, 620261, 620441, 620623, 620777, 620957, 621139, 621317, 621473, 621641]
theorem segment6Check : trialChainCheck 322 618883 segment6Nodes = true := by
  decide +kernel
theorem segment6 : PrimeChain 322 618883 621641 :=
  trialChainCheck_sound segment6Check

def segment7Nodes : List Nat := [621821, 621997, 622177, 622351, 622529, 622709, 622889, 623071, 623221, 623401, 623563, 623743, 623923, 624097, 624277, 624451]
theorem segment7Check : trialChainCheck 322 621641 segment7Nodes = true := by
  decide +kernel
theorem segment7 : PrimeChain 322 621641 624451 :=
  trialChainCheck_sound segment7Check

def segment8Nodes : List Nat := [624607, 624791, 624973, 625133, 625307, 625489, 625663, 625837, 626011, 626191, 626363, 626539, 626723, 626887, 627071, 627251]
theorem segment8Check : trialChainCheck 322 624451 segment8Nodes = true := by
  decide +kernel
theorem segment8 : PrimeChain 322 624451 627251 :=
  trialChainCheck_sound segment8Check

def segment9Nodes : List Nat := [627433, 627617, 627799, 627973, 628139, 628319, 628499, 628681, 628861, 629029, 629203, 629383, 629567, 629747, 629929, 630107]
theorem segment9Check : trialChainCheck 322 627251 segment9Nodes = true := by
  decide +kernel
theorem segment9 : PrimeChain 322 627251 630107 :=
  trialChainCheck_sound segment9Check

def segment10Nodes : List Nat := [630281, 630451, 630613, 630797, 630967, 631151, 631307, 631487, 631667, 631847, 632029, 632209, 632393, 632561, 632743, 632923]
theorem segment10Check : trialChainCheck 322 630107 segment10Nodes = true := by
  decide +kernel
theorem segment10 : PrimeChain 322 630107 632923 :=
  trialChainCheck_sound segment10Check

def segment11Nodes : List Nat := [633091, 633271, 633449, 633629, 633803, 633967, 634141, 634313, 634493, 634651, 634817, 634979, 635149, 635333, 635507, 635689]
theorem segment11Check : trialChainCheck 322 632923 segment11Nodes = true := by
  decide +kernel
theorem segment11 : PrimeChain 322 632923 635689 :=
  trialChainCheck_sound segment11Check

def segment12Nodes : List Nat := [635867, 636043, 636359, 636541, 636721, 637003, 637171, 637349, 637531, 637711, 637883, 638063, 638371, 638527, 638699, 638861]
theorem segment12Check : trialChainCheck 322 635689 segment12Nodes = true := by
  decide +kernel
theorem segment12 : PrimeChain 322 635689 638861 :=
  trialChainCheck_sound segment12Check

def segment13Nodes : List Nat := [639043, 639211, 639391, 639571, 639739, 639911, 640069, 640249, 640421, 640589, 640771, 640949, 641131, 641299, 641479, 641639]
theorem segment13Check : trialChainCheck 322 638861 segment13Nodes = true := by
  decide +kernel
theorem segment13 : PrimeChain 322 638861 641639 :=
  trialChainCheck_sound segment13Check

def segment14Nodes : List Nat := [641821, 641981, 642281, 642457, 642623, 642799, 642977, 643129, 643303, 643469, 643781, 643961, 644143, 644327, 644507, 644687]
theorem segment14Check : trialChainCheck 322 641639 segment14Nodes = true := by
  decide +kernel
theorem segment14 : PrimeChain 322 641639 644687 :=
  trialChainCheck_sound segment14Check

def segment15Nodes : List Nat := [644869, 645049, 645233, 645409, 645583, 645763, 645941, 646103, 646273, 646453, 646637, 646957, 647131, 647303, 647477, 647659]
theorem segment15Check : trialChainCheck 322 644687 segment15Nodes = true := by
  decide +kernel
theorem segment15 : PrimeChain 322 644687 647659 :=
  trialChainCheck_sound segment15Check

theorem joinLevel0_0 : PrimeChain 322 601147 607037 :=
  segment0.trans segment1

theorem joinLevel0_1 : PrimeChain 322 607037 613013 :=
  segment2.trans segment3

theorem joinLevel0_2 : PrimeChain 322 613013 618883 :=
  segment4.trans segment5

theorem joinLevel0_3 : PrimeChain 322 618883 624451 :=
  segment6.trans segment7

theorem joinLevel0_4 : PrimeChain 322 624451 630107 :=
  segment8.trans segment9

theorem joinLevel0_5 : PrimeChain 322 630107 635689 :=
  segment10.trans segment11

theorem joinLevel0_6 : PrimeChain 322 635689 641639 :=
  segment12.trans segment13

theorem joinLevel0_7 : PrimeChain 322 641639 647659 :=
  segment14.trans segment15

theorem joinLevel1_0 : PrimeChain 322 601147 613013 :=
  joinLevel0_0.trans joinLevel0_1

theorem joinLevel1_1 : PrimeChain 322 613013 624451 :=
  joinLevel0_2.trans joinLevel0_3

theorem joinLevel1_2 : PrimeChain 322 624451 635689 :=
  joinLevel0_4.trans joinLevel0_5

theorem joinLevel1_3 : PrimeChain 322 635689 647659 :=
  joinLevel0_6.trans joinLevel0_7

theorem joinLevel2_0 : PrimeChain 322 601147 624451 :=
  joinLevel1_0.trans joinLevel1_1

theorem joinLevel2_1 : PrimeChain 322 624451 647659 :=
  joinLevel1_2.trans joinLevel1_3

theorem joinLevel3_0 : PrimeChain 322 601147 647659 :=
  joinLevel2_0.trans joinLevel2_1

theorem joined : PrimeChain 322 601147 647659 := joinLevel3_0

end B699MiddleIndex.PrimeBlocks.Block013

#print axioms B699MiddleIndex.PrimeBlocks.Block013.joined
