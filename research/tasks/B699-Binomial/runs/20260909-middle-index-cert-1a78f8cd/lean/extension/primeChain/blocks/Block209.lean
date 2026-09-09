import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block209

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [18352079, 18352261, 18352429, 18352603, 18352783, 18352967, 18353129, 18353299, 18353483, 18353633, 18353789, 18353971, 18354143, 18354313, 18354467, 18354649]
theorem check0 : primorialChainCheck 4473 primorial4473 184 18351923 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 18351923 18354649 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18351923) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [18354829, 18355009, 18355171, 18355319, 18355499, 18355657, 18355829, 18356003, 18356137, 18356321, 18356419, 18356587, 18356771, 18356953, 18357113, 18357293]
theorem check1 : primorialChainCheck 4473 primorial4473 184 18354649 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 18354649 18357293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18354649) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [18357461, 18357643, 18357827, 18358003, 18358177, 18358331, 18358513, 18358663, 18358841, 18359023, 18359203, 18359387, 18359569, 18359749, 18359903, 18360079]
theorem check2 : primorialChainCheck 4473 primorial4473 184 18357293 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 18357293 18360079 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18357293) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [18360253, 18360437, 18360619, 18360803, 18360971, 18361141, 18361319, 18361493, 18361667, 18361831, 18361997, 18362177, 18362359, 18362543, 18362723, 18362899]
theorem check3 : primorialChainCheck 4473 primorial4473 184 18360079 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 18360079 18362899 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18360079) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [18363083, 18363263, 18363403, 18363577, 18363731, 18363911, 18364091, 18364271, 18364427, 18364609, 18364783, 18364961, 18365143, 18365311, 18365471, 18365639]
theorem check4 : primorialChainCheck 4473 primorial4473 184 18362899 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 18362899 18365639 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18362899) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [18365813, 18365993, 18366133, 18366311, 18366479, 18366637, 18366809, 18366979, 18367163, 18367343, 18367523, 18367697, 18367879, 18368039, 18368221, 18368401]
theorem check5 : primorialChainCheck 4473 primorial4473 184 18365639 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 18365639 18368401 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18365639) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [18368569, 18368741, 18368923, 18369101, 18369283, 18369437, 18369613, 18369773, 18369943, 18370117, 18370301, 18370483, 18370637, 18370799, 18370939, 18371117]
theorem check6 : primorialChainCheck 4473 primorial4473 184 18368401 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 18368401 18371117 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18368401) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [18371293, 18371473, 18371657, 18371831, 18371999, 18372157, 18372337, 18372521, 18372703, 18372877, 18373051, 18373231, 18373391, 18373547, 18373727, 18373909]
theorem check7 : primorialChainCheck 4473 primorial4473 184 18371117 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 18371117 18373909 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18371117) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [18374063, 18374243, 18374417, 18374597, 18374771, 18374947, 18375131, 18375311, 18375493, 18375677, 18375857, 18376027, 18376207, 18376381, 18376511, 18376681]
theorem check8 : primorialChainCheck 4473 primorial4473 184 18373909 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 18373909 18376681 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18373909) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [18376861, 18377033, 18377201, 18377377, 18377551, 18377719, 18377873, 18378049, 18378229, 18378401, 18378583, 18378761, 18378937, 18379079, 18379247, 18379421]
theorem check9 : primorialChainCheck 4473 primorial4473 184 18376681 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 18376681 18379421 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18376681) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [18379589, 18379763, 18379943, 18380119, 18380293, 18380471, 18380647, 18380827, 18381007, 18381173, 18381353, 18381521, 18381691, 18381871, 18382033, 18382213]
theorem check10 : primorialChainCheck 4473 primorial4473 184 18379421 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 18379421 18382213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18379421) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [18382393, 18382547, 18382669, 18382849, 18383033, 18383213, 18383389, 18383569, 18383741, 18383921, 18384073, 18384257, 18384439, 18384617, 18384791, 18384941]
theorem check11 : primorialChainCheck 4473 primorial4473 184 18382213 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 18382213 18384941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18382213) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [18385121, 18385277, 18385459, 18385643, 18385819, 18385987, 18386149, 18386323, 18386507, 18386677, 18386861, 18387023, 18387197, 18387377, 18387533, 18387701]
theorem check12 : primorialChainCheck 4473 primorial4473 184 18384941 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 18384941 18387701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18384941) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [18387883, 18388037, 18388207, 18388369, 18388553, 18388723, 18388879, 18389051, 18389227, 18389401, 18389573, 18389747, 18389927, 18390103, 18390287, 18390467]
theorem check13 : primorialChainCheck 4473 primorial4473 184 18387701 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 18387701 18390467 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18387701) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [18390643, 18390793, 18390973, 18391157, 18391337, 18391519, 18391699, 18391883, 18392051, 18392233, 18392389, 18392573, 18392753, 18392923, 18393103, 18393281]
theorem check14 : primorialChainCheck 4473 primorial4473 184 18390467 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 18390467 18393281 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18390467) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [18393457, 18393619, 18393799, 18393961, 18394141, 18394309, 18394469, 18394639, 18394781, 18394951, 18395123, 18395303, 18395473, 18395639, 18395813, 18395981]
theorem check15 : primorialChainCheck 4473 primorial4473 184 18393281 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 18393281 18395981 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18393281) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [18396163, 18396347, 18396523, 18396691, 18396869, 18397037, 18397207, 18397391, 18397559, 18397721, 18397903, 18398071, 18398227, 18398353, 18398521, 18398687]
theorem check16 : primorialChainCheck 4473 primorial4473 184 18395981 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 18395981 18398687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18395981) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [18398857, 18399023, 18399203, 18399377, 18399551, 18399727, 18399911, 18400093, 18400247, 18400423, 18400597, 18400771, 18400939, 18401113, 18401297, 18401479]
theorem check17 : primorialChainCheck 4473 primorial4473 184 18398687 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 18398687 18401479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18398687) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [18401657, 18401833, 18402011, 18402191, 18402359, 18402539, 18402719, 18402893, 18403043, 18403211, 18403391, 18403559, 18403733, 18403897, 18404041, 18404219]
theorem check18 : primorialChainCheck 4473 primorial4473 184 18401479 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 18401479 18404219 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18401479) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [18404383, 18404567, 18404741, 18404923, 18405097, 18405263, 18405437, 18405619, 18405799, 18405977, 18406153, 18406337, 18406517, 18406691, 18406859, 18407041]
theorem check19 : primorialChainCheck 4473 primorial4473 184 18404219 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 18404219 18407041 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18404219) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [18407189, 18407369, 18407551, 18407723, 18407897, 18408077, 18408233, 18408391, 18408571, 18408751, 18408917, 18409051, 18409207, 18409367, 18409549, 18409723]
theorem check20 : primorialChainCheck 4473 primorial4473 184 18407041 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 18407041 18409723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18407041) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [18409907, 18410083, 18410261, 18410443, 18410617, 18410801, 18410933, 18411083, 18411251, 18411413, 18411577, 18411751, 18411929, 18412111, 18412291, 18412447]
theorem check21 : primorialChainCheck 4473 primorial4473 184 18409723 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 18409723 18412447 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18409723) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [18412631, 18412777, 18412951, 18413113, 18413293, 18413471, 18413653, 18413821, 18414001, 18414169, 18414353, 18414533, 18414701, 18414853, 18415031, 18415213]
theorem check22 : primorialChainCheck 4473 primorial4473 184 18412447 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 18412447 18415213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18412447) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [18415379, 18415559, 18415711, 18415871, 18416053, 18416231, 18416407, 18416581, 18416743, 18416911, 18417067, 18417247, 18417401, 18417577, 18417743, 18417907]
theorem check23 : primorialChainCheck 4473 primorial4473 184 18415213 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 18415213 18417907 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18415213) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [18418073, 18418249, 18418427, 18418591, 18418759, 18418943, 18419119, 18419299, 18419477, 18419657, 18419839, 18420011, 18420161, 18420341, 18420517, 18420691]
theorem check24 : primorialChainCheck 4473 primorial4473 184 18417907 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 18417907 18420691 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18417907) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [18420863, 18421043, 18421201, 18421379, 18421553, 18421723, 18421891, 18422071, 18422249, 18422389, 18422567, 18422737, 18422893, 18423073, 18423241, 18423421]
theorem check25 : primorialChainCheck 4473 primorial4473 184 18420691 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 18420691 18423421 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18420691) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [18423599, 18423781, 18423949, 18424121, 18424279, 18424463, 18424639, 18424823, 18424999, 18425177, 18425347, 18425521, 18425689, 18425867, 18426041, 18426211]
theorem check26 : primorialChainCheck 4473 primorial4473 184 18423421 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 18423421 18426211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18423421) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [18426389, 18426539, 18426673, 18426857, 18427039, 18427223, 18427403, 18427579, 18427757, 18427933, 18428101, 18428273, 18428441, 18428623, 18428807, 18428959]
theorem check27 : primorialChainCheck 4473 primorial4473 184 18426211 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 18426211 18428959 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18426211) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [18429143, 18429317, 18429493, 18429629, 18429797, 18429979, 18430141, 18430301, 18430481, 18430661, 18430837, 18431011, 18431183, 18431353, 18431537, 18431711]
theorem check28 : primorialChainCheck 4473 primorial4473 184 18428959 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 18428959 18431711 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18428959) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [18431879, 18432049, 18432217, 18432389, 18432563, 18432737, 18432917, 18433073, 18433229, 18433411, 18433579, 18433757, 18433931, 18434113, 18434287, 18434417]
theorem check29 : primorialChainCheck 4473 primorial4473 184 18431711 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 18431711 18434417 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18431711) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [18434567, 18434723, 18434879, 18435059, 18435239, 18435419, 18435601, 18435751, 18435929, 18436097, 18436277, 18436447, 18436609, 18436793, 18436937, 18437119]
theorem check30 : primorialChainCheck 4473 primorial4473 184 18434417 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 18434417 18437119 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18434417) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [18437297, 18437473, 18437647, 18437831, 18438001, 18438179, 18438361, 18438499, 18438649, 18438821, 18438977, 18439159, 18439321, 18439483, 18439657, 18439831]
theorem check31 : primorialChainCheck 4473 primorial4473 184 18437119 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 18437119 18439831 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18437119) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 18351923 18357293 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18351923)
    (mid := 18354649) (hi := 18357293) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 18357293 18362899 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18357293)
    (mid := 18360079) (hi := 18362899) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 18362899 18368401 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18362899)
    (mid := 18365639) (hi := 18368401) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 18368401 18373909 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18368401)
    (mid := 18371117) (hi := 18373909) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 18373909 18379421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18373909)
    (mid := 18376681) (hi := 18379421) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 18379421 18384941 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18379421)
    (mid := 18382213) (hi := 18384941) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 18384941 18390467 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18384941)
    (mid := 18387701) (hi := 18390467) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 18390467 18395981 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18390467)
    (mid := 18393281) (hi := 18395981) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 18395981 18401479 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18395981)
    (mid := 18398687) (hi := 18401479) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 18401479 18407041 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18401479)
    (mid := 18404219) (hi := 18407041) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 18407041 18412447 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18407041)
    (mid := 18409723) (hi := 18412447) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 18412447 18417907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18412447)
    (mid := 18415213) (hi := 18417907) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 18417907 18423421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18417907)
    (mid := 18420691) (hi := 18423421) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 18423421 18428959 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18423421)
    (mid := 18426211) (hi := 18428959) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 18428959 18434417 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18428959)
    (mid := 18431711) (hi := 18434417) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 18434417 18439831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18434417)
    (mid := 18437119) (hi := 18439831) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 18351923 18362899 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18351923)
    (mid := 18357293) (hi := 18362899) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 18362899 18373909 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18362899)
    (mid := 18368401) (hi := 18373909) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 18373909 18384941 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18373909)
    (mid := 18379421) (hi := 18384941) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 18384941 18395981 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18384941)
    (mid := 18390467) (hi := 18395981) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 18395981 18407041 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18395981)
    (mid := 18401479) (hi := 18407041) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 18407041 18417907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18407041)
    (mid := 18412447) (hi := 18417907) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 18417907 18428959 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18417907)
    (mid := 18423421) (hi := 18428959) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 18428959 18439831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18428959)
    (mid := 18434417) (hi := 18439831) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 18351923 18373909 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18351923)
    (mid := 18362899) (hi := 18373909) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 18373909 18395981 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18373909)
    (mid := 18384941) (hi := 18395981) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 18395981 18417907 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18395981)
    (mid := 18407041) (hi := 18417907) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 18417907 18439831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18417907)
    (mid := 18428959) (hi := 18439831) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 18351923 18395981 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18351923)
    (mid := 18373909) (hi := 18395981) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 18395981 18439831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18395981)
    (mid := 18417907) (hi := 18439831) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 18351923 18439831 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18351923)
    (mid := 18395981) (hi := 18439831) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 18351923 18439831 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block209

#print axioms B699MiddleExtension.PrimorialBlocks.Block209.joined
