import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block128

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [11269123, 11269289, 11269457, 11269637, 11269807, 11269987, 11270153, 11270317, 11270461, 11270617, 11270801, 11270953, 11271137, 11271319, 11271473, 11271619]
theorem check0 : primorialChainCheck 4473 primorial4473 184 11268953 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 11268953 11271619 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11268953) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [11271787, 11271947, 11272123, 11272291, 11272463, 11272637, 11272813, 11272981, 11273161, 11273341, 11273503, 11273681, 11273861, 11274037, 11274199, 11274379]
theorem check1 : primorialChainCheck 4473 primorial4473 184 11271619 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 11271619 11274379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11271619) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [11274551, 11274721, 11274889, 11275051, 11275223, 11275399, 11275567, 11275729, 11275889, 11276071, 11276207, 11276351, 11276533, 11276689, 11276869, 11277053]
theorem check2 : primorialChainCheck 4473 primorial4473 184 11274379 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 11274379 11277053 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11274379) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [11277229, 11277407, 11277589, 11277743, 11277883, 11278067, 11278249, 11278411, 11278537, 11278721, 11278903, 11279087, 11279263, 11279447, 11279623, 11279777]
theorem check3 : primorialChainCheck 4473 primorial4473 184 11277053 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 11277053 11279777 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11277053) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [11279951, 11280133, 11280317, 11280473, 11280653, 11280817, 11281001, 11281177, 11281357, 11281541, 11281723, 11281903, 11282083, 11282261, 11282399, 11282533]
theorem check4 : primorialChainCheck 4473 primorial4473 184 11279777 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 11279777 11282533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11279777) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [11282717, 11282893, 11283067, 11283229, 11283401, 11283583, 11283763, 11283893, 11284037, 11284211, 11284387, 11284571, 11284739, 11284921, 11285083, 11285243]
theorem check5 : primorialChainCheck 4473 primorial4473 184 11282533 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 11282533 11285243 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11282533) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [11285419, 11285597, 11285779, 11285941, 11286097, 11286277, 11286427, 11286599, 11286757, 11286937, 11287117, 11287301, 11287483, 11287663, 11287831, 11288003]
theorem check6 : primorialChainCheck 4473 primorial4473 184 11285243 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 11285243 11288003 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11285243) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [11288183, 11288359, 11288539, 11288723, 11288887, 11289049, 11289233, 11289413, 11289587, 11289769, 11289953, 11290133, 11290303, 11290471, 11290651, 11290817]
theorem check7 : primorialChainCheck 4473 primorial4473 184 11288003 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 11288003 11290817 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11288003) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [11290991, 11291171, 11291333, 11291513, 11291669, 11291849, 11291999, 11292167, 11292349, 11292529, 11292691, 11292871, 11293039, 11293223, 11293397, 11293549]
theorem check8 : primorialChainCheck 4473 primorial4473 184 11290817 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 11290817 11293549 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11290817) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [11293699, 11293883, 11294057, 11294221, 11294401, 11294567, 11294747, 11294929, 11295113, 11295287, 11295467, 11295649, 11295833, 11296009, 11296193, 11296333]
theorem check9 : primorialChainCheck 4473 primorial4473 184 11293549 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 11293549 11296333 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11293549) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [11296513, 11296673, 11296847, 11297021, 11297203, 11297387, 11297567, 11297743, 11297917, 11298101, 11298233, 11298409, 11298583, 11298767, 11298929, 11299111]
theorem check10 : primorialChainCheck 4473 primorial4473 184 11296333 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 11296333 11299111 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11296333) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [11299247, 11299403, 11299567, 11299741, 11299919, 11300101, 11300279, 11300437, 11300617, 11300747, 11300929, 11301109, 11301247, 11301431, 11301607, 11301781]
theorem check11 : primorialChainCheck 4473 primorial4473 184 11299111 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 11299111 11301781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11299111) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [11301929, 11302063, 11302243, 11302411, 11302589, 11302747, 11302931, 11303099, 11303273, 11303449, 11303573, 11303753, 11303911, 11304091, 11304257, 11304427]
theorem check12 : primorialChainCheck 4473 primorial4473 184 11301781 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 11301781 11304427 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11301781) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [11304607, 11304781, 11304961, 11305141, 11305321, 11305457, 11305631, 11305813, 11305981, 11306161, 11306329, 11306507, 11306681, 11306809, 11306993, 11307169]
theorem check13 : primorialChainCheck 4473 primorial4473 184 11304427 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 11304427 11307169 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11304427) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [11307353, 11307521, 11307691, 11307851, 11308013, 11308181, 11308361, 11308499, 11308681, 11308861, 11309033, 11309201, 11309381, 11309549, 11309707, 11309873]
theorem check14 : primorialChainCheck 4473 primorial4473 184 11307169 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 11307169 11309873 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11307169) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [11310037, 11310217, 11310391, 11310557, 11310737, 11310919, 11311087, 11311253, 11311397, 11311577, 11311759, 11311939, 11312111, 11312281, 11312453, 11312629]
theorem check15 : primorialChainCheck 4473 primorial4473 184 11309873 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 11309873 11312629 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11309873) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [11312801, 11312981, 11313139, 11313311, 11313473, 11313649, 11313833, 11314013, 11314157, 11314313, 11314487, 11314657, 11314813, 11314997, 11315177, 11315351]
theorem check16 : primorialChainCheck 4473 primorial4473 184 11312629 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 11312629 11315351 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11312629) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [11315533, 11315699, 11315873, 11316047, 11316211, 11316379, 11316553, 11316737, 11316911, 11317093, 11317277, 11317457, 11317577, 11317753, 11317931, 11318081]
theorem check17 : primorialChainCheck 4473 primorial4473 184 11315351 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 11315351 11318081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11315351) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [11318227, 11318407, 11318569, 11318743, 11318897, 11319073, 11319227, 11319409, 11319589, 11319769, 11319949, 11320129, 11320313, 11320489, 11320667, 11320847]
theorem check18 : primorialChainCheck 4473 primorial4473 184 11318081 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 11318081 11320847 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11318081) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [11321029, 11321203, 11321377, 11321561, 11321729, 11321903, 11322083, 11322257, 11322439, 11322617, 11322797, 11322977, 11323157, 11323327, 11323471, 11323643]
theorem check19 : primorialChainCheck 4473 primorial4473 184 11320847 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 11320847 11323643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11320847) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [11323789, 11323973, 11324153, 11324333, 11324507, 11324659, 11324843, 11325023, 11325187, 11325359, 11325541, 11325719, 11325889, 11326061, 11326213, 11326397]
theorem check20 : primorialChainCheck 4473 primorial4473 184 11323643 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 11323643 11326397 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11323643) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [11326571, 11326751, 11326919, 11327077, 11327243, 11327413, 11327579, 11327759, 11327929, 11328101, 11328283, 11328467, 11328643, 11328827, 11329009, 11329193]
theorem check21 : primorialChainCheck 4473 primorial4473 184 11326397 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 11326397 11329193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11326397) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [11329369, 11329553, 11329729, 11329883, 11330047, 11330197, 11330369, 11330519, 11330701, 11330827, 11331007, 11331169, 11331343, 11331521, 11331701, 11331883]
theorem check22 : primorialChainCheck 4473 primorial4473 184 11329193 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 11329193 11331883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11329193) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [11332063, 11332247, 11332429, 11332613, 11332793, 11332967, 11333131, 11333303, 11333477, 11333629, 11333813, 11333977, 11334143, 11334319, 11334503, 11334677]
theorem check23 : primorialChainCheck 4473 primorial4473 184 11331883 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 11331883 11334677 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11331883) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [11334847, 11335031, 11335213, 11335349, 11335523, 11335697, 11335879, 11336053, 11336233, 11336411, 11336557, 11336719, 11336903, 11337083, 11337259, 11337439]
theorem check24 : primorialChainCheck 4473 primorial4473 184 11334677 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 11334677 11337439 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11334677) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [11337611, 11337787, 11337967, 11338121, 11338279, 11338451, 11338601, 11338783, 11338937, 11339117, 11339287, 11339441, 11339593, 11339767, 11339947, 11340107]
theorem check25 : primorialChainCheck 4473 primorial4473 184 11337439 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 11337439 11340107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11337439) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [11340281, 11340457, 11340629, 11340757, 11340941, 11341103, 11341273, 11341439, 11341597, 11341769, 11341949, 11342119, 11342299, 11342483, 11342663, 11342843]
theorem check26 : primorialChainCheck 4473 primorial4473 184 11340107 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 11340107 11342843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11340107) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [11343001, 11343181, 11343359, 11343533, 11343713, 11343881, 11344043, 11344211, 11344391, 11344573, 11344757, 11344939, 11345093, 11345267, 11345449, 11345629]
theorem check27 : primorialChainCheck 4473 primorial4473 184 11342843 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 11342843 11345629 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11342843) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [11345801, 11345977, 11346143, 11346323, 11346493, 11346661, 11346817, 11346997, 11347153, 11347331, 11347513, 11347697, 11347879, 11348059, 11348243, 11348423]
theorem check28 : primorialChainCheck 4473 primorial4473 184 11345629 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 11345629 11348423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11345629) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [11348581, 11348749, 11348927, 11349103, 11349287, 11349451, 11349629, 11349803, 11349953, 11350133, 11350307, 11350463, 11350637, 11350813, 11350987, 11351161]
theorem check29 : primorialChainCheck 4473 primorial4473 184 11348423 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 11348423 11351161 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11348423) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [11351339, 11351521, 11351701, 11351881, 11352049, 11352233, 11352401, 11352581, 11352743, 11352917, 11353087, 11353271, 11353453, 11353627, 11353799, 11353981]
theorem check30 : primorialChainCheck 4473 primorial4473 184 11351161 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 11351161 11353981 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11351161) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [11354159, 11354333, 11354513, 11354677, 11354851, 11355023, 11355193, 11355373, 11355493, 11355667, 11355797, 11355979, 11356159, 11356337, 11356519, 11356693]
theorem check31 : primorialChainCheck 4473 primorial4473 184 11353981 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 11353981 11356693 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11353981) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 11268953 11274379 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11268953)
    (mid := 11271619) (hi := 11274379) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 11274379 11279777 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11274379)
    (mid := 11277053) (hi := 11279777) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 11279777 11285243 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11279777)
    (mid := 11282533) (hi := 11285243) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 11285243 11290817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11285243)
    (mid := 11288003) (hi := 11290817) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 11290817 11296333 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11290817)
    (mid := 11293549) (hi := 11296333) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 11296333 11301781 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11296333)
    (mid := 11299111) (hi := 11301781) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 11301781 11307169 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11301781)
    (mid := 11304427) (hi := 11307169) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 11307169 11312629 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11307169)
    (mid := 11309873) (hi := 11312629) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 11312629 11318081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11312629)
    (mid := 11315351) (hi := 11318081) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 11318081 11323643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11318081)
    (mid := 11320847) (hi := 11323643) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 11323643 11329193 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11323643)
    (mid := 11326397) (hi := 11329193) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 11329193 11334677 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11329193)
    (mid := 11331883) (hi := 11334677) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 11334677 11340107 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11334677)
    (mid := 11337439) (hi := 11340107) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 11340107 11345629 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11340107)
    (mid := 11342843) (hi := 11345629) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 11345629 11351161 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11345629)
    (mid := 11348423) (hi := 11351161) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 11351161 11356693 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11351161)
    (mid := 11353981) (hi := 11356693) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 11268953 11279777 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11268953)
    (mid := 11274379) (hi := 11279777) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 11279777 11290817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11279777)
    (mid := 11285243) (hi := 11290817) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 11290817 11301781 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11290817)
    (mid := 11296333) (hi := 11301781) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 11301781 11312629 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11301781)
    (mid := 11307169) (hi := 11312629) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 11312629 11323643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11312629)
    (mid := 11318081) (hi := 11323643) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 11323643 11334677 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11323643)
    (mid := 11329193) (hi := 11334677) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 11334677 11345629 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11334677)
    (mid := 11340107) (hi := 11345629) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 11345629 11356693 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11345629)
    (mid := 11351161) (hi := 11356693) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 11268953 11290817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11268953)
    (mid := 11279777) (hi := 11290817) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 11290817 11312629 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11290817)
    (mid := 11301781) (hi := 11312629) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 11312629 11334677 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11312629)
    (mid := 11323643) (hi := 11334677) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 11334677 11356693 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11334677)
    (mid := 11345629) (hi := 11356693) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 11268953 11312629 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11268953)
    (mid := 11290817) (hi := 11312629) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 11312629 11356693 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11312629)
    (mid := 11334677) (hi := 11356693) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 11268953 11356693 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11268953)
    (mid := 11312629) (hi := 11356693) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 11268953 11356693 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block128

#print axioms B699MiddleExtension.PrimorialBlocks.Block128.joined
