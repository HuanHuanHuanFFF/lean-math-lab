import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block058

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [5130443, 5130623, 5130791, 5130959, 5131141, 5131307, 5131481, 5131657, 5131823, 5131993, 5132177, 5132359, 5132539, 5132689, 5132873, 5133053]
theorem check0 : primorialChainCheck 4473 primorial4473 184 5130271 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 5130271 5133053 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5130271) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [5133187, 5133361, 5133529, 5133701, 5133883, 5134067, 5134249, 5134429, 5134573, 5134757, 5134939, 5135113, 5135297, 5135443, 5135621, 5135789]
theorem check1 : primorialChainCheck 4473 primorial4473 184 5133053 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 5133053 5135789 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5133053) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [5135959, 5136143, 5136323, 5136493, 5136667, 5136847, 5137021, 5137199, 5137381, 5137547, 5137721, 5137903, 5138083, 5138257, 5138387, 5138561]
theorem check2 : primorialChainCheck 4473 primorial4473 184 5135789 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 5135789 5138561 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5135789) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [5138719, 5138891, 5139073, 5139257, 5139427, 5139611, 5139793, 5139973, 5140153, 5140297, 5140481, 5140657, 5140829, 5141011, 5141179, 5141363]
theorem check3 : primorialChainCheck 4473 primorial4473 184 5138561 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 5138561 5141363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5138561) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [5141537, 5141699, 5141869, 5142043, 5142227, 5142383, 5142539, 5142713, 5142883, 5143051, 5143217, 5143381, 5143543, 5143711, 5143891, 5144053]
theorem check4 : primorialChainCheck 4473 primorial4473 184 5141363 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 5141363 5144053 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5141363) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [5144189, 5144371, 5144549, 5144719, 5144903, 5145083, 5145263, 5145433, 5145601, 5145779, 5145949, 5146109, 5146289, 5146469, 5146649, 5146831]
theorem check5 : primorialChainCheck 4473 primorial4473 184 5144053 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 5144053 5146831 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5144053) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [5146957, 5147069, 5147251, 5147431, 5147609, 5147789, 5147963, 5148131, 5148313, 5148497, 5148659, 5148823, 5148973, 5149139, 5149307, 5149483]
theorem check6 : primorialChainCheck 4473 primorial4473 184 5146831 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 5146831 5149483 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5146831) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [5149667, 5149847, 5150027, 5150209, 5150389, 5150567, 5150741, 5150921, 5151061, 5151227, 5151407, 5151583, 5151739, 5151919, 5152087, 5152261]
theorem check7 : primorialChainCheck 4473 primorial4473 184 5149483 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 5149483 5152261 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5149483) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [5152423, 5152579, 5152753, 5152937, 5153117, 5153299, 5153483, 5153663, 5153833, 5154013, 5154173, 5154353, 5154533, 5154713, 5154887, 5155067]
theorem check8 : primorialChainCheck 4473 primorial4473 184 5152261 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 5152261 5155067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5152261) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [5155237, 5155387, 5155567, 5155729, 5155907, 5156089, 5156273, 5156449, 5156609, 5156783, 5156951, 5157133, 5157287, 5157457, 5157629, 5157793]
theorem check9 : primorialChainCheck 4473 primorial4473 184 5155067 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 5155067 5157793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5155067) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [5157967, 5158117, 5158289, 5158469, 5158603, 5158763, 5158921, 5159093, 5159261, 5159443, 5159617, 5159779, 5159927, 5160101, 5160283, 5160461]
theorem check10 : primorialChainCheck 4473 primorial4473 184 5157793 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 5157793 5160461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5157793) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [5160643, 5160821, 5161003, 5161187, 5161363, 5161529, 5161703, 5161879, 5162063, 5162233, 5162393, 5162569, 5162753, 5162933, 5163113, 5163289]
theorem check11 : primorialChainCheck 4473 primorial4473 184 5160461 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 5160461 5163289 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5160461) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [5163469, 5163629, 5163797, 5163973, 5164157, 5164331, 5164463, 5164619, 5164799, 5164961, 5165137, 5165309, 5165483, 5165659, 5165833, 5166017]
theorem check12 : primorialChainCheck 4473 primorial4473 184 5163289 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 5163289 5166017 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5163289) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [5166197, 5166373, 5166541, 5166703, 5166877, 5167061, 5167231, 5167403, 5167583, 5167741, 5167919, 5168089, 5168263, 5168441, 5168623, 5168803]
theorem check13 : primorialChainCheck 4473 primorial4473 184 5166017 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 5166017 5168803 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5166017) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [5168981, 5169149, 5169317, 5169497, 5169679, 5169841, 5170013, 5170183, 5170357, 5170531, 5170709, 5170889, 5171071, 5171239, 5171407, 5171561]
theorem check14 : primorialChainCheck 4473 primorial4473 184 5168803 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 5168803 5171561 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5168803) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [5171729, 5171909, 5172077, 5172259, 5172407, 5172571, 5172751, 5172919, 5173097, 5173261, 5173439, 5173613, 5173787, 5173963, 5174119, 5174293]
theorem check15 : primorialChainCheck 4473 primorial4473 184 5171561 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 5171561 5174293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5171561) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [5174473, 5174657, 5174833, 5174999, 5175103, 5175283, 5175461, 5175637, 5175811, 5175991, 5176169, 5176343, 5176511, 5176693, 5176861, 5177033]
theorem check16 : primorialChainCheck 4473 primorial4473 184 5174293 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 5174293 5177033 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5174293) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [5177209, 5177387, 5177551, 5177723, 5177903, 5178083, 5178193, 5178337, 5178521, 5178689, 5178871, 5179051, 5179231, 5179411, 5179591, 5179739]
theorem check17 : primorialChainCheck 4473 primorial4473 184 5177033 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 5177033 5179739 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5177033) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [5179919, 5180101, 5180281, 5180459, 5180621, 5180771, 5180953, 5181133, 5181317, 5181499, 5181679, 5181859, 5182027, 5182207, 5182379, 5182543]
theorem check18 : primorialChainCheck 4473 primorial4473 184 5179739 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 5179739 5182543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5179739) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [5182721, 5182897, 5183077, 5183221, 5183393, 5183569, 5183749, 5183933, 5184103, 5184281, 5184457, 5184631, 5184799, 5184961, 5185139, 5185321]
theorem check19 : primorialChainCheck 4473 primorial4473 184 5182543 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 5182543 5185321 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5182543) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [5185487, 5185669, 5185853, 5186033, 5186197, 5186381, 5186557, 5186729, 5186899, 5187011, 5187181, 5187359, 5187529, 5187697, 5187869, 5188021]
theorem check20 : primorialChainCheck 4473 primorial4473 184 5185321 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 5185321 5188021 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5185321) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [5188193, 5188343, 5188507, 5188679, 5188849, 5189027, 5189207, 5189377, 5189557, 5189711, 5189893, 5190077, 5190259, 5190443, 5190611, 5190791]
theorem check21 : primorialChainCheck 4473 primorial4473 184 5188021 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 5188021 5190791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5188021) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [5190973, 5191141, 5191301, 5191481, 5191651, 5191831, 5192009, 5192183, 5192359, 5192521, 5192699, 5192879, 5193053, 5193229, 5193401, 5193571]
theorem check22 : primorialChainCheck 4473 primorial4473 184 5190791 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 5190791 5193571 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5190791) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [5193751, 5193931, 5194109, 5194283, 5194459, 5194643, 5194817, 5194997, 5195173, 5195357, 5195501, 5195657, 5195837, 5196013, 5196197, 5196379]
theorem check23 : primorialChainCheck 4473 primorial4473 184 5193571 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 5193571 5196379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5193571) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [5196563, 5196733, 5196913, 5197091, 5197259, 5197421, 5197603, 5197783, 5197967, 5198147, 5198321, 5198503, 5198681, 5198861, 5199043, 5199221]
theorem check24 : primorialChainCheck 4473 primorial4473 184 5196379 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 5196379 5199221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5196379) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [5199391, 5199553, 5199731, 5199911, 5200081, 5200229, 5200397, 5200579, 5200753, 5200933, 5201113, 5201297, 5201477, 5201659, 5201837, 5201993]
theorem check25 : primorialChainCheck 4473 primorial4473 184 5199221 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 5199221 5201993 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5199221) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [5202167, 5202343, 5202521, 5202671, 5202811, 5202973, 5203157, 5203339, 5203477, 5203637, 5203813, 5203997, 5204179, 5204327, 5204503, 5204687]
theorem check26 : primorialChainCheck 4473 primorial4473 184 5201993 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 5201993 5204687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5201993) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [5204867, 5205047, 5205227, 5205407, 5205583, 5205763, 5205931, 5206081, 5206261, 5206427, 5206609, 5206793, 5206967, 5207149, 5207329, 5207513]
theorem check27 : primorialChainCheck 4473 primorial4473 184 5204687 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 5204687 5207513 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5204687) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [5207681, 5207827, 5207981, 5208149, 5208293, 5208473, 5208617, 5208799, 5208979, 5209129, 5209313, 5209481, 5209657, 5209823, 5210003, 5210141]
theorem check28 : primorialChainCheck 4473 primorial4473 184 5207513 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 5207513 5210141 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5207513) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [5210323, 5210507, 5210677, 5210851, 5211023, 5211109, 5211289, 5211473, 5211641, 5211803, 5211959, 5212139, 5212313, 5212477, 5212637, 5212813]
theorem check29 : primorialChainCheck 4473 primorial4473 184 5210141 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 5210141 5212813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5210141) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [5212993, 5213171, 5213347, 5213501, 5213671, 5213839, 5214017, 5214199, 5214383, 5214527, 5214701, 5214883, 5215061, 5215229, 5215403, 5215579]
theorem check30 : primorialChainCheck 4473 primorial4473 184 5212813 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 5212813 5215579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5212813) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [5215751, 5215921, 5216083, 5216251, 5216411, 5216591, 5216767, 5216947, 5217101, 5217271, 5217449, 5217631, 5217809, 5217991, 5218151, 5218321]
theorem check31 : primorialChainCheck 4473 primorial4473 184 5215579 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 5215579 5218321 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5215579) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 5130271 5135789 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5130271)
    (mid := 5133053) (hi := 5135789) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 5135789 5141363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5135789)
    (mid := 5138561) (hi := 5141363) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 5141363 5146831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5141363)
    (mid := 5144053) (hi := 5146831) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 5146831 5152261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5146831)
    (mid := 5149483) (hi := 5152261) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 5152261 5157793 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5152261)
    (mid := 5155067) (hi := 5157793) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 5157793 5163289 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5157793)
    (mid := 5160461) (hi := 5163289) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 5163289 5168803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5163289)
    (mid := 5166017) (hi := 5168803) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 5168803 5174293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5168803)
    (mid := 5171561) (hi := 5174293) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 5174293 5179739 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5174293)
    (mid := 5177033) (hi := 5179739) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 5179739 5185321 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5179739)
    (mid := 5182543) (hi := 5185321) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 5185321 5190791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5185321)
    (mid := 5188021) (hi := 5190791) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 5190791 5196379 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5190791)
    (mid := 5193571) (hi := 5196379) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 5196379 5201993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5196379)
    (mid := 5199221) (hi := 5201993) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 5201993 5207513 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5201993)
    (mid := 5204687) (hi := 5207513) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 5207513 5212813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5207513)
    (mid := 5210141) (hi := 5212813) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 5212813 5218321 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5212813)
    (mid := 5215579) (hi := 5218321) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 5130271 5141363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5130271)
    (mid := 5135789) (hi := 5141363) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 5141363 5152261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5141363)
    (mid := 5146831) (hi := 5152261) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 5152261 5163289 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5152261)
    (mid := 5157793) (hi := 5163289) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 5163289 5174293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5163289)
    (mid := 5168803) (hi := 5174293) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 5174293 5185321 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5174293)
    (mid := 5179739) (hi := 5185321) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 5185321 5196379 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5185321)
    (mid := 5190791) (hi := 5196379) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 5196379 5207513 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5196379)
    (mid := 5201993) (hi := 5207513) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 5207513 5218321 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5207513)
    (mid := 5212813) (hi := 5218321) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 5130271 5152261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5130271)
    (mid := 5141363) (hi := 5152261) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 5152261 5174293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5152261)
    (mid := 5163289) (hi := 5174293) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 5174293 5196379 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5174293)
    (mid := 5185321) (hi := 5196379) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 5196379 5218321 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5196379)
    (mid := 5207513) (hi := 5218321) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 5130271 5174293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5130271)
    (mid := 5152261) (hi := 5174293) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 5174293 5218321 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5174293)
    (mid := 5196379) (hi := 5218321) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 5130271 5218321 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5130271)
    (mid := 5174293) (hi := 5218321) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 5130271 5218321 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block058

#print axioms B699MiddleExtension.PrimorialBlocks.Block058.joined
