import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block056

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [4953979, 4954139, 4954321, 4954487, 4954669, 4954843, 4955011, 4955179, 4955359, 4955537, 4955719, 4955893, 4956073, 4956253, 4956437, 4956617]
theorem check0 : primorialChainCheck 4473 primorial4473 184 4953797 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 4953797 4956617 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4953797) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [4956793, 4956977, 4957159, 4957333, 4957483, 4957663, 4957847, 4958021, 4958189, 4958351, 4958497, 4958659, 4958843, 4959013, 4959197, 4959379]
theorem check1 : primorialChainCheck 4473 primorial4473 184 4956617 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 4956617 4959379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4956617) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [4959533, 4959701, 4959883, 4960049, 4960231, 4960393, 4960567, 4960751, 4960933, 4961113, 4961249, 4961389, 4961563, 4961741, 4961921, 4962091]
theorem check2 : primorialChainCheck 4473 primorial4473 184 4959379 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 4959379 4962091 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4959379) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [4962259, 4962427, 4962611, 4962791, 4962967, 4963121, 4963279, 4963463, 4963639, 4963801, 4963967, 4964129, 4964293, 4964473, 4964647, 4964831]
theorem check3 : primorialChainCheck 4473 primorial4473 184 4962091 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 4962091 4964831 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4962091) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [4965013, 4965197, 4965379, 4965563, 4965743, 4965923, 4966099, 4966267, 4966441, 4966613, 4966783, 4966963, 4967147, 4967329, 4967513, 4967687]
theorem check4 : primorialChainCheck 4473 primorial4473 184 4964831 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 4964831 4967687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4964831) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [4967867, 4968037, 4968209, 4968373, 4968517, 4968683, 4968857, 4969031, 4969199, 4969373, 4969483, 4969649, 4969823, 4969997, 4970177, 4970353]
theorem check5 : primorialChainCheck 4473 primorial4473 184 4967687 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 4967687 4970353 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4967687) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [4970519, 4970701, 4970873, 4971053, 4971229, 4971409, 4971587, 4971763, 4971943, 4972127, 4972309, 4972481, 4972663, 4972843, 4973021, 4973179]
theorem check6 : primorialChainCheck 4473 primorial4473 184 4970353 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 4970353 4973179 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4970353) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [4973363, 4973539, 4973719, 4973897, 4974071, 4974241, 4974413, 4974587, 4974743, 4974919, 4975081, 4975253, 4975417, 4975589, 4975769, 4975931]
theorem check7 : primorialChainCheck 4473 primorial4473 184 4973179 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 4973179 4975931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4973179) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [4976113, 4976281, 4976459, 4976639, 4976813, 4976987, 4977169, 4977341, 4977521, 4977697, 4977877, 4978031, 4978213, 4978397, 4978579, 4978751]
theorem check8 : primorialChainCheck 4473 primorial4473 184 4975931 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 4975931 4978751 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4975931) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [4978907, 4979071, 4979209, 4979393, 4979563, 4979743, 4979921, 4980103, 4980281, 4980427, 4980611, 4980763, 4980947, 4981103, 4981261, 4981441]
theorem check9 : primorialChainCheck 4473 primorial4473 184 4978751 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 4978751 4981441 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4978751) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [4981609, 4981789, 4981967, 4982147, 4982317, 4982501, 4982657, 4982839, 4983001, 4983179, 4983361, 4983523, 4983707, 4983887, 4984039, 4984207]
theorem check10 : primorialChainCheck 4473 primorial4473 184 4981441 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 4981441 4984207 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4981441) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [4984391, 4984571, 4984753, 4984937, 4985107, 4985287, 4985443, 4985627, 4985803, 4985971, 4986143, 4986313, 4986481, 4986649, 4986809, 4986983]
theorem check11 : primorialChainCheck 4473 primorial4473 184 4984207 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 4984207 4986983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4984207) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [4987127, 4987303, 4987457, 4987639, 4987819, 4988003, 4988177, 4988353, 4988537, 4988719, 4988891, 4989067, 4989221, 4989377, 4989541, 4989713]
theorem check12 : primorialChainCheck 4473 primorial4473 184 4986983 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 4986983 4989713 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4986983) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [4989863, 4990031, 4990213, 4990393, 4990577, 4990759, 4990933, 4991101, 4991267, 4991449, 4991617, 4991801, 4991983, 4992157, 4992341, 4992517]
theorem check13 : primorialChainCheck 4473 primorial4473 184 4989713 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 4989713 4992517 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4989713) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [4992683, 4992833, 4993007, 4993159, 4993343, 4993517, 4993693, 4993873, 4994051, 4994233, 4994417, 4994599, 4994761, 4994909, 4995083, 4995253]
theorem check14 : primorialChainCheck 4473 primorial4473 184 4992517 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 4992517 4995253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4992517) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [4995427, 4995607, 4995779, 4995953, 4996111, 4996291, 4996463, 4996637, 4996757, 4996933, 4997101, 4997281, 4997401, 4997579, 4997753, 4997929]
theorem check15 : primorialChainCheck 4473 primorial4473 184 4995253 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 4995253 4997929 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4995253) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [4998113, 4998241, 4998419, 4998601, 4998769, 4998947, 4999121, 4999301, 4999469, 4999651, 4999823, 4999999, 5000167, 5000339, 5000519, 5000701]
theorem check16 : primorialChainCheck 4473 primorial4473 184 4997929 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 4997929 5000701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4997929) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [5000881, 5001053, 5001233, 5001413, 5001593, 5001767, 5001923, 5002103, 5002273, 5002457, 5002639, 5002817, 5002979, 5003143, 5003309, 5003483]
theorem check17 : primorialChainCheck 4473 primorial4473 184 5000701 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 5000701 5003483 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5000701) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [5003659, 5003839, 5004019, 5004193, 5004367, 5004539, 5004721, 5004893, 5005067, 5005223, 5005381, 5005549, 5005709, 5005883, 5006047, 5006231]
theorem check18 : primorialChainCheck 4473 primorial4473 184 5003483 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 5003483 5006231 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5003483) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [5006411, 5006591, 5006773, 5006929, 5007113, 5007283, 5007467, 5007643, 5007817, 5007983, 5008151, 5008291, 5008433, 5008607, 5008741, 5008919]
theorem check19 : primorialChainCheck 4473 primorial4473 184 5006231 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 5006231 5008919 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5006231) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [5009099, 5009281, 5009453, 5009623, 5009803, 5009987, 5010169, 5010353, 5010517, 5010701, 5010883, 5011063, 5011213, 5011387, 5011561, 5011729]
theorem check20 : primorialChainCheck 4473 primorial4473 184 5008919 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 5008919 5011729 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5008919) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [5011901, 5012053, 5012177, 5012347, 5012531, 5012663, 5012831, 5012999, 5013179, 5013347, 5013527, 5013683, 5013857, 5014039, 5014199, 5014381]
theorem check21 : primorialChainCheck 4473 primorial4473 184 5011729 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 5011729 5014381 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5011729) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [5014561, 5014739, 5014921, 5015099, 5015267, 5015431, 5015599, 5015783, 5015953, 5016113, 5016287, 5016469, 5016653, 5016811, 5016983, 5017141]
theorem check22 : primorialChainCheck 4473 primorial4473 184 5014381 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 5014381 5017141 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5014381) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [5017321, 5017489, 5017637, 5017819, 5018003, 5018177, 5018357, 5018539, 5018701, 5018879, 5019043, 5019227, 5019389, 5019569, 5019719, 5019899]
theorem check23 : primorialChainCheck 4473 primorial4473 184 5017141 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 5017141 5019899 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5017141) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [5020079, 5020261, 5020441, 5020621, 5020793, 5020957, 5021119, 5021299, 5021479, 5021663, 5021837, 5022019, 5022187, 5022331, 5022509, 5022691]
theorem check24 : primorialChainCheck 4473 primorial4473 184 5019899 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 5019899 5022691 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5019899) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [5022833, 5023013, 5023169, 5023331, 5023511, 5023693, 5023871, 5024053, 5024233, 5024407, 5024587, 5024731, 5024897, 5025079, 5025257, 5025437]
theorem check25 : primorialChainCheck 4473 primorial4473 184 5022691 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 5022691 5025437 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5022691) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [5025617, 5025791, 5025971, 5026129, 5026289, 5026457, 5026633, 5026817, 5026993, 5027171, 5027339, 5027509, 5027677, 5027851, 5028017, 5028197]
theorem check26 : primorialChainCheck 4473 primorial4473 184 5025437 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 5025437 5028197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5025437) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [5028367, 5028547, 5028703, 5028869, 5029033, 5029217, 5029397, 5029579, 5029763, 5029933, 5030111, 5030287, 5030471, 5030653, 5030821, 5030981]
theorem check27 : primorialChainCheck 4473 primorial4473 184 5028197 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 5028197 5030981 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5028197) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [5031161, 5031329, 5031497, 5031673, 5031857, 5032039, 5032219, 5032387, 5032543, 5032723, 5032897, 5033069, 5033227, 5033407, 5033549, 5033731]
theorem check28 : primorialChainCheck 4473 primorial4473 184 5030981 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 5030981 5033731 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5030981) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [5033909, 5034089, 5034247, 5034427, 5034607, 5034787, 5034971, 5035139, 5035319, 5035493, 5035673, 5035853, 5035999, 5036183, 5036351, 5036533]
theorem check29 : primorialChainCheck 4473 primorial4473 184 5033731 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 5033731 5036533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5033731) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [5036711, 5036893, 5037029, 5037211, 5037377, 5037523, 5037707, 5037887, 5038063, 5038237, 5038421, 5038597, 5038769, 5038939, 5039119, 5039303]
theorem check30 : primorialChainCheck 4473 primorial4473 184 5036533 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 5036533 5039303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5036533) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [5039477, 5039653, 5039831, 5039999, 5040181, 5040359, 5040533, 5040713, 5040853, 5041009, 5041181, 5041343, 5041523, 5041703, 5041849, 5042033]
theorem check31 : primorialChainCheck 4473 primorial4473 184 5039303 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 5039303 5042033 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5039303) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 4953797 4959379 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4953797)
    (mid := 4956617) (hi := 4959379) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 4959379 4964831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4959379)
    (mid := 4962091) (hi := 4964831) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 4964831 4970353 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4964831)
    (mid := 4967687) (hi := 4970353) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 4970353 4975931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4970353)
    (mid := 4973179) (hi := 4975931) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 4975931 4981441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4975931)
    (mid := 4978751) (hi := 4981441) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 4981441 4986983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4981441)
    (mid := 4984207) (hi := 4986983) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 4986983 4992517 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4986983)
    (mid := 4989713) (hi := 4992517) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 4992517 4997929 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4992517)
    (mid := 4995253) (hi := 4997929) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 4997929 5003483 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4997929)
    (mid := 5000701) (hi := 5003483) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 5003483 5008919 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5003483)
    (mid := 5006231) (hi := 5008919) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 5008919 5014381 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5008919)
    (mid := 5011729) (hi := 5014381) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 5014381 5019899 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5014381)
    (mid := 5017141) (hi := 5019899) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 5019899 5025437 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5019899)
    (mid := 5022691) (hi := 5025437) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 5025437 5030981 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5025437)
    (mid := 5028197) (hi := 5030981) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 5030981 5036533 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5030981)
    (mid := 5033731) (hi := 5036533) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 5036533 5042033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5036533)
    (mid := 5039303) (hi := 5042033) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 4953797 4964831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4953797)
    (mid := 4959379) (hi := 4964831) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 4964831 4975931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4964831)
    (mid := 4970353) (hi := 4975931) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 4975931 4986983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4975931)
    (mid := 4981441) (hi := 4986983) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 4986983 4997929 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4986983)
    (mid := 4992517) (hi := 4997929) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 4997929 5008919 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4997929)
    (mid := 5003483) (hi := 5008919) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 5008919 5019899 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5008919)
    (mid := 5014381) (hi := 5019899) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 5019899 5030981 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5019899)
    (mid := 5025437) (hi := 5030981) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 5030981 5042033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5030981)
    (mid := 5036533) (hi := 5042033) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 4953797 4975931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4953797)
    (mid := 4964831) (hi := 4975931) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 4975931 4997929 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4975931)
    (mid := 4986983) (hi := 4997929) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 4997929 5019899 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4997929)
    (mid := 5008919) (hi := 5019899) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 5019899 5042033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5019899)
    (mid := 5030981) (hi := 5042033) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 4953797 4997929 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4953797)
    (mid := 4975931) (hi := 4997929) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 4997929 5042033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4997929)
    (mid := 5019899) (hi := 5042033) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 4953797 5042033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4953797)
    (mid := 4997929) (hi := 5042033) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 4953797 5042033 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block056

#print axioms B699MiddleExtension.PrimorialBlocks.Block056.joined
