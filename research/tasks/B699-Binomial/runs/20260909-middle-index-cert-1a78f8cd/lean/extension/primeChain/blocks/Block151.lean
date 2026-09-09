import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block151

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [13283107, 13283287, 13283453, 13283617, 13283789, 13283971, 13284137, 13284319, 13284473, 13284653, 13284809, 13284983, 13285163, 13285333, 13285511, 13285663]
theorem check0 : primorialChainCheck 4473 primorial4473 184 13282949 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 13282949 13285663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13282949) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [13285841, 13286003, 13286177, 13286327, 13286489, 13286659, 13286839, 13287007, 13287179, 13287347, 13287503, 13287643, 13287823, 13288007, 13288153, 13288313]
theorem check1 : primorialChainCheck 4473 primorial4473 184 13285663 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 13285663 13288313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13285663) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [13288493, 13288673, 13288853, 13288973, 13289149, 13289323, 13289503, 13289677, 13289839, 13290019, 13290197, 13290373, 13290547, 13290731, 13290911, 13291087]
theorem check2 : primorialChainCheck 4473 primorial4473 184 13288313 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 13288313 13291087 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13288313) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [13291261, 13291427, 13291589, 13291753, 13291931, 13292107, 13292281, 13292443, 13292627, 13292803, 13292957, 13293131, 13293311, 13293481, 13293653, 13293817]
theorem check3 : primorialChainCheck 4473 primorial4473 184 13291087 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 13291087 13293817 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13291087) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [13293991, 13294163, 13294321, 13294481, 13294651, 13294829, 13294999, 13295179, 13295353, 13295537, 13295719, 13295899, 13296053, 13296221, 13296389, 13296571]
theorem check4 : primorialChainCheck 4473 primorial4473 184 13293817 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 13293817 13296571 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13293817) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [13296749, 13296929, 13297103, 13297279, 13297441, 13297619, 13297787, 13297969, 13298147, 13298323, 13298497, 13298657, 13298839, 13299017, 13299191, 13299361]
theorem check5 : primorialChainCheck 4473 primorial4473 184 13296571 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 13296571 13299361 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13296571) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [13299467, 13299641, 13299817, 13299991, 13300159, 13300337, 13300517, 13300697, 13300873, 13301051, 13301221, 13301381, 13301557, 13301731, 13301909, 13302089]
theorem check6 : primorialChainCheck 4473 primorial4473 184 13299361 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 13299361 13302089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13299361) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [13302241, 13302391, 13302547, 13302703, 13302853, 13303033, 13303207, 13303391, 13303573, 13303751, 13303931, 13304111, 13304293, 13304461, 13304639, 13304803]
theorem check7 : primorialChainCheck 4473 primorial4473 184 13302089 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 13302089 13304803 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13302089) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [13304987, 13305167, 13305349, 13305517, 13305697, 13305881, 13306057, 13306229, 13306411, 13306589, 13306753, 13306921, 13307093, 13307263, 13307431, 13307603]
theorem check8 : primorialChainCheck 4473 primorial4473 184 13304803 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 13304803 13307603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13304803) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [13307761, 13307939, 13308121, 13308301, 13308481, 13308653, 13308803, 13308979, 13309151, 13309301, 13309451, 13309627, 13309771, 13309951, 13310131, 13310293]
theorem check9 : primorialChainCheck 4473 primorial4473 184 13307603 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 13307603 13310293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13307603) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [13310471, 13310653, 13310837, 13311007, 13311169, 13311349, 13311517, 13311691, 13311863, 13312043, 13312199, 13312379, 13312553, 13312727, 13312909, 13313089]
theorem check10 : primorialChainCheck 4473 primorial4473 184 13310293 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 13310293 13313089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13310293) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [13313269, 13313453, 13313611, 13313779, 13313939, 13314121, 13314293, 13314473, 13314647, 13314827, 13315007, 13315189, 13315373, 13315543, 13315723, 13315891]
theorem check11 : primorialChainCheck 4473 primorial4473 184 13313089 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 13313089 13315891 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13313089) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [13316071, 13316243, 13316419, 13316591, 13316731, 13316911, 13317091, 13317217, 13317379, 13317553, 13317721, 13317881, 13318051, 13318231, 13318387, 13318553]
theorem check12 : primorialChainCheck 4473 primorial4473 184 13315891 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 13315891 13318553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13315891) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [13318709, 13318889, 13319071, 13319249, 13319431, 13319611, 13319791, 13319951, 13320113, 13320271, 13320443, 13320617, 13320799, 13320977, 13321151, 13321331]
theorem check13 : primorialChainCheck 4473 primorial4473 184 13318553 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 13318553 13321331 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13318553) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [13321513, 13321667, 13321837, 13322011, 13322189, 13322341, 13322503, 13322671, 13322843, 13323001, 13323181, 13323347, 13323523, 13323703, 13323881, 13324063]
theorem check14 : primorialChainCheck 4473 primorial4473 184 13321331 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 13321331 13324063 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13321331) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [13324247, 13324397, 13324579, 13324741, 13324907, 13325089, 13325243, 13325407, 13325591, 13325759, 13325941, 13326119, 13326301, 13326463, 13326613, 13326791]
theorem check15 : primorialChainCheck 4473 primorial4473 184 13324063 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 13324063 13326791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13324063) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [13326941, 13327123, 13327297, 13327477, 13327651, 13327823, 13327999, 13328179, 13328353, 13328537, 13328717, 13328897, 13329079, 13329257, 13329413, 13329587]
theorem check16 : primorialChainCheck 4473 primorial4473 184 13326791 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 13326791 13329587 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13326791) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [13329769, 13329923, 13330099, 13330277, 13330451, 13330631, 13330813, 13330987, 13331167, 13331309, 13331473, 13331641, 13331821, 13331999, 13332181, 13332353]
theorem check17 : primorialChainCheck 4473 primorial4473 184 13329587 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 13329587 13332353 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13329587) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [13332533, 13332713, 13332887, 13333057, 13333223, 13333403, 13333577, 13333757, 13333921, 13334099, 13334281, 13334459, 13334623, 13334807, 13334977, 13335151]
theorem check18 : primorialChainCheck 4473 primorial4473 184 13332353 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 13332353 13335151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13332353) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [13335323, 13335499, 13335683, 13335857, 13336031, 13336207, 13336363, 13336529, 13336709, 13336871, 13337047, 13337213, 13337393, 13337561, 13337713, 13337893]
theorem check19 : primorialChainCheck 4473 primorial4473 184 13335151 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 13335151 13337893 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13335151) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [13338067, 13338223, 13338379, 13338547, 13338719, 13338889, 13339049, 13339223, 13339397, 13339561, 13339727, 13339891, 13340027, 13340209, 13340357, 13340533]
theorem check20 : primorialChainCheck 4473 primorial4473 184 13337893 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 13337893 13340533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13337893) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [13340711, 13340891, 13341071, 13341239, 13341409, 13341577, 13341751, 13341931, 13342111, 13342267, 13342423, 13342597, 13342781, 13342963, 13343137, 13343321]
theorem check21 : primorialChainCheck 4473 primorial4473 184 13340533 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 13340533 13343321 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13340533) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [13343497, 13343647, 13343809, 13343987, 13344169, 13344341, 13344523, 13344703, 13344871, 13345027, 13345207, 13345379, 13345513, 13345687, 13345861, 13346009]
theorem check22 : primorialChainCheck 4473 primorial4473 184 13343321 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 13343321 13346009 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13343321) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [13346161, 13346323, 13346491, 13346653, 13346789, 13346903, 13347083, 13347239, 13347421, 13347589, 13347769, 13347923, 13348099, 13348277, 13348457, 13348637]
theorem check23 : primorialChainCheck 4473 primorial4473 184 13346009 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 13346009 13348637 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13346009) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [13348793, 13348969, 13349129, 13349263, 13349443, 13349627, 13349807, 13349983, 13350163, 13350319, 13350503, 13350671, 13350829, 13350989, 13351099, 13351279]
theorem check24 : primorialChainCheck 4473 primorial4473 184 13348637 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 13348637 13351279 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13348637) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [13351453, 13351633, 13351777, 13351951, 13352111, 13352279, 13352411, 13352587, 13352753, 13352929, 13353113, 13353283, 13353443, 13353617, 13353757, 13353931]
theorem check25 : primorialChainCheck 4473 primorial4473 184 13351279 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 13351279 13353931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13351279) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [13354111, 13354291, 13354457, 13354619, 13354687, 13354867, 13355009, 13355161, 13355339, 13355521, 13355677, 13355857, 13356029, 13356197, 13356379, 13356557]
theorem check26 : primorialChainCheck 4473 primorial4473 184 13353931 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 13353931 13356557 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13353931) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [13356719, 13356887, 13357051, 13357229, 13357397, 13357573, 13357753, 13357889, 13358057, 13358231, 13358407, 13358581, 13358717, 13358899, 13359083, 13359259]
theorem check27 : primorialChainCheck 4473 primorial4473 184 13356557 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 13356557 13359259 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13356557) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [13359443, 13359623, 13359767, 13359947, 13360121, 13360289, 13360471, 13360649, 13360813, 13360973, 13361147, 13361297, 13361479, 13361639, 13361801, 13361977]
theorem check28 : primorialChainCheck 4473 primorial4473 184 13359259 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 13359259 13361977 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13359259) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [13362161, 13362343, 13362521, 13362703, 13362863, 13363033, 13363199, 13363379, 13363541, 13363723, 13363907, 13364089, 13364269, 13364453, 13364629, 13364803]
theorem check29 : primorialChainCheck 4473 primorial4473 184 13361977 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 13361977 13364803 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13361977) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [13364987, 13365167, 13365347, 13365529, 13365697, 13365817, 13365997, 13366181, 13366319, 13366447, 13366621, 13366799, 13366967, 13367149, 13367329, 13367503]
theorem check30 : primorialChainCheck 4473 primorial4473 184 13364803 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 13364803 13367503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13364803) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [13367671, 13367843, 13368011, 13368193, 13368373, 13368541, 13368713, 13368889, 13369063, 13369241, 13369399, 13369571, 13369753, 13369933, 13370117, 13370297]
theorem check31 : primorialChainCheck 4473 primorial4473 184 13367503 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 13367503 13370297 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13367503) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 13282949 13288313 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13282949)
    (mid := 13285663) (hi := 13288313) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 13288313 13293817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13288313)
    (mid := 13291087) (hi := 13293817) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 13293817 13299361 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13293817)
    (mid := 13296571) (hi := 13299361) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 13299361 13304803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13299361)
    (mid := 13302089) (hi := 13304803) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 13304803 13310293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13304803)
    (mid := 13307603) (hi := 13310293) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 13310293 13315891 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13310293)
    (mid := 13313089) (hi := 13315891) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 13315891 13321331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13315891)
    (mid := 13318553) (hi := 13321331) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 13321331 13326791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13321331)
    (mid := 13324063) (hi := 13326791) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 13326791 13332353 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13326791)
    (mid := 13329587) (hi := 13332353) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 13332353 13337893 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13332353)
    (mid := 13335151) (hi := 13337893) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 13337893 13343321 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13337893)
    (mid := 13340533) (hi := 13343321) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 13343321 13348637 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13343321)
    (mid := 13346009) (hi := 13348637) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 13348637 13353931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13348637)
    (mid := 13351279) (hi := 13353931) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 13353931 13359259 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13353931)
    (mid := 13356557) (hi := 13359259) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 13359259 13364803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13359259)
    (mid := 13361977) (hi := 13364803) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 13364803 13370297 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13364803)
    (mid := 13367503) (hi := 13370297) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 13282949 13293817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13282949)
    (mid := 13288313) (hi := 13293817) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 13293817 13304803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13293817)
    (mid := 13299361) (hi := 13304803) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 13304803 13315891 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13304803)
    (mid := 13310293) (hi := 13315891) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 13315891 13326791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13315891)
    (mid := 13321331) (hi := 13326791) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 13326791 13337893 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13326791)
    (mid := 13332353) (hi := 13337893) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 13337893 13348637 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13337893)
    (mid := 13343321) (hi := 13348637) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 13348637 13359259 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13348637)
    (mid := 13353931) (hi := 13359259) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 13359259 13370297 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13359259)
    (mid := 13364803) (hi := 13370297) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 13282949 13304803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13282949)
    (mid := 13293817) (hi := 13304803) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 13304803 13326791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13304803)
    (mid := 13315891) (hi := 13326791) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 13326791 13348637 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13326791)
    (mid := 13337893) (hi := 13348637) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 13348637 13370297 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13348637)
    (mid := 13359259) (hi := 13370297) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 13282949 13326791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13282949)
    (mid := 13304803) (hi := 13326791) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 13326791 13370297 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13326791)
    (mid := 13348637) (hi := 13370297) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 13282949 13370297 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13282949)
    (mid := 13326791) (hi := 13370297) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 13282949 13370297 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block151

#print axioms B699MiddleExtension.PrimorialBlocks.Block151.joined
