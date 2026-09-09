import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block150

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [13195631, 13195811, 13195981, 13196159, 13196329, 13196473, 13196647, 13196819, 13196999, 13197169, 13197337, 13197497, 13197659, 13197841, 13198019, 13198147]
theorem check0 : primorialChainCheck 4473 primorial4473 184 13195447 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 13195447 13198147 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13195447) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [13198321, 13198501, 13198667, 13198819, 13199003, 13199183, 13199359, 13199507, 13199689, 13199867, 13200001, 13200179, 13200359, 13200503, 13200679, 13200853]
theorem check1 : primorialChainCheck 4473 primorial4473 184 13198147 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 13198147 13200853 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13198147) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [13201037, 13201217, 13201373, 13201541, 13201723, 13201907, 13202051, 13202227, 13202411, 13202543, 13202711, 13202881, 13203031, 13203209, 13203361, 13203527]
theorem check2 : primorialChainCheck 4473 primorial4473 184 13200853 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 13200853 13203527 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13200853) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [13203691, 13203871, 13204043, 13204211, 13204381, 13204559, 13204727, 13204907, 13205089, 13205273, 13205419, 13205603, 13205737, 13205891, 13206043, 13206227]
theorem check3 : primorialChainCheck 4473 primorial4473 184 13203527 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 13203527 13206227 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13203527) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [13206407, 13206581, 13206757, 13206931, 13207099, 13207279, 13207463, 13207613, 13207787, 13207951, 13208131, 13208309, 13208483, 13208651, 13208827, 13208981]
theorem check4 : primorialChainCheck 4473 primorial4473 184 13206227 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 13206227 13208981 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13206227) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [13209151, 13209331, 13209467, 13209649, 13209829, 13210013, 13210177, 13210361, 13210543, 13210669, 13210823, 13210937, 13211113, 13211273, 13211437, 13211603]
theorem check5 : primorialChainCheck 4473 primorial4473 184 13208981 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 13208981 13211603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13208981) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [13211767, 13211951, 13212131, 13212307, 13212491, 13212643, 13212827, 13213001, 13213159, 13213331, 13213507, 13213691, 13213867, 13214041, 13214221, 13214371]
theorem check6 : primorialChainCheck 4473 primorial4473 184 13211603 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 13211603 13214371 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13211603) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [13214527, 13214693, 13214863, 13215047, 13215229, 13215383, 13215541, 13215721, 13215901, 13216081, 13216249, 13216433, 13216613, 13216793, 13216969, 13217137]
theorem check7 : primorialChainCheck 4473 primorial4473 184 13214371 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 13214371 13217137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13214371) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [13217311, 13217467, 13217647, 13217821, 13217969, 13218131, 13218313, 13218487, 13218671, 13218847, 13218977, 13219159, 13219337, 13219519, 13219699, 13219883]
theorem check8 : primorialChainCheck 4473 primorial4473 184 13217137 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 13217137 13219883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13217137) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [13220057, 13220231, 13220411, 13220587, 13220749, 13220899, 13221083, 13221233, 13221413, 13221583, 13221749, 13221931, 13222109, 13222273, 13222453, 13222633]
theorem check9 : primorialChainCheck 4473 primorial4473 184 13219883 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 13219883 13222633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13219883) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [13222789, 13222967, 13223123, 13223299, 13223473, 13223647, 13223831, 13223957, 13224139, 13224313, 13224469, 13224647, 13224829, 13224989, 13225171, 13225351]
theorem check10 : primorialChainCheck 4473 primorial4473 184 13222633 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 13222633 13225351 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13222633) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [13225517, 13225699, 13225873, 13226041, 13226197, 13226371, 13226531, 13226713, 13226897, 13227077, 13227251, 13227433, 13227601, 13227757, 13227941, 13228121]
theorem check11 : primorialChainCheck 4473 primorial4473 184 13225351 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 13225351 13228121 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13225351) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [13228301, 13228441, 13228619, 13228801, 13228973, 13229147, 13229329, 13229479, 13229663, 13229837, 13230013, 13230179, 13230361, 13230527, 13230689, 13230863]
theorem check12 : primorialChainCheck 4473 primorial4473 184 13228121 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 13228121 13230863 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13228121) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [13231027, 13231189, 13231373, 13231553, 13231721, 13231901, 13232041, 13232213, 13232389, 13232573, 13232731, 13232899, 13233083, 13233263, 13233433, 13233607]
theorem check13 : primorialChainCheck 4473 primorial4473 184 13230863 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 13230863 13233607 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13230863) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [13233757, 13233919, 13234099, 13234261, 13234439, 13234609, 13234787, 13234967, 13235147, 13235317, 13235501, 13235681, 13235863, 13236043, 13236227, 13236409]
theorem check14 : primorialChainCheck 4473 primorial4473 184 13233607 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 13233607 13236409 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13233607) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [13236593, 13236767, 13236947, 13237117, 13237297, 13237481, 13237657, 13237831, 13238011, 13238177, 13238347, 13238527, 13238689, 13238857, 13239001, 13239137]
theorem check15 : primorialChainCheck 4473 primorial4473 184 13236409 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 13236409 13239137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13236409) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [13239301, 13239469, 13239649, 13239833, 13239997, 13240181, 13240363, 13240543, 13240697, 13240879, 13241057, 13241219, 13241387, 13241551, 13241731, 13241911]
theorem check16 : primorialChainCheck 4473 primorial4473 184 13239137 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 13239137 13241911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13239137) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [13242079, 13242253, 13242407, 13242587, 13242769, 13242923, 13243091, 13243273, 13243453, 13243631, 13243793, 13243973, 13244149, 13244327, 13244467, 13244641]
theorem check17 : primorialChainCheck 4473 primorial4473 184 13241911 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 13241911 13244641 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13241911) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [13244821, 13244993, 13245151, 13245317, 13245473, 13245647, 13245823, 13246003, 13246171, 13246319, 13246489, 13246669, 13246843, 13247023, 13247207, 13247371]
theorem check18 : primorialChainCheck 4473 primorial4473 184 13244641 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 13244641 13247371 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13244641) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [13247537, 13247711, 13247893, 13248071, 13248247, 13248421, 13248583, 13248751, 13248929, 13249111, 13249283, 13249463, 13249609, 13249793, 13249967, 13250147]
theorem check19 : primorialChainCheck 4473 primorial4473 184 13247371 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 13247371 13250147 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13247371) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [13250311, 13250443, 13250621, 13250789, 13250959, 13251137, 13251319, 13251499, 13251659, 13251839, 13251989, 13252157, 13252331, 13252489, 13252663, 13252847]
theorem check20 : primorialChainCheck 4473 primorial4473 184 13250147 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 13250147 13252847 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13250147) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [13253017, 13253197, 13253381, 13253561, 13253743, 13253923, 13254107, 13254281, 13254443, 13254617, 13254743, 13254911, 13255093, 13255273, 13255409, 13255579]
theorem check21 : primorialChainCheck 4473 primorial4473 184 13252847 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 13252847 13255579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13252847) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [13255763, 13255873, 13256057, 13256239, 13256423, 13256597, 13256777, 13256959, 13257143, 13257323, 13257493, 13257659, 13257833, 13257971, 13258153, 13258313]
theorem check22 : primorialChainCheck 4473 primorial4473 184 13255579 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 13255579 13258313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13255579) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [13258489, 13258667, 13258849, 13258991, 13259173, 13259347, 13259527, 13259693, 13259849, 13260019, 13260193, 13260371, 13260551, 13260713, 13260881, 13261063]
theorem check23 : primorialChainCheck 4473 primorial4473 184 13258313 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 13258313 13261063 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13258313) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [13261231, 13261403, 13261579, 13261757, 13261907, 13262083, 13262257, 13262429, 13262611, 13262759, 13262933, 13263113, 13263251, 13263407, 13263563, 13263743]
theorem check24 : primorialChainCheck 4473 primorial4473 184 13261063 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 13261063 13263743 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13261063) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [13263911, 13264091, 13264271, 13264453, 13264609, 13264789, 13264963, 13265137, 13265293, 13265471, 13265639, 13265773, 13265957, 13266119, 13266301, 13266479]
theorem check25 : primorialChainCheck 4473 primorial4473 184 13263743 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 13263743 13266479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13263743) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [13266641, 13266793, 13266937, 13267117, 13267283, 13267459, 13267637, 13267801, 13267981, 13268159, 13268329, 13268509, 13268683, 13268867, 13269043, 13269227]
theorem check26 : primorialChainCheck 4473 primorial4473 184 13266479 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 13266479 13269227 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13266479) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [13269407, 13269589, 13269761, 13269943, 13270109, 13270291, 13270441, 13270619, 13270801, 13270979, 13271149, 13271311, 13271491, 13271669, 13271833, 13271981]
theorem check27 : primorialChainCheck 4473 primorial4473 184 13269227 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 13269227 13271981 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13269227) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [13272157, 13272341, 13272491, 13272673, 13272841, 13273021, 13273201, 13273361, 13273543, 13273721, 13273901, 13274081, 13274251, 13274423, 13274593, 13274761]
theorem check28 : primorialChainCheck 4473 primorial4473 184 13271981 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 13271981 13274761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13271981) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [13274903, 13275077, 13275257, 13275421, 13275571, 13275749, 13275931, 13276111, 13276283, 13276433, 13276591, 13276771, 13276937, 13277113, 13277291, 13277471]
theorem check29 : primorialChainCheck 4473 primorial4473 184 13274761 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 13274761 13277471 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13274761) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [13277633, 13277807, 13277987, 13278163, 13278347, 13278497, 13278677, 13278851, 13279033, 13279207, 13279391, 13279571, 13279753, 13279913, 13280093, 13280257]
theorem check30 : primorialChainCheck 4473 primorial4473 184 13277471 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 13277471 13280257 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13277471) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [13280441, 13280599, 13280783, 13280951, 13281091, 13281271, 13281451, 13281629, 13281799, 13281973, 13282123, 13282303, 13282487, 13282649, 13282769, 13282949]
theorem check31 : primorialChainCheck 4473 primorial4473 184 13280257 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 13280257 13282949 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13280257) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 13195447 13200853 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13195447)
    (mid := 13198147) (hi := 13200853) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 13200853 13206227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13200853)
    (mid := 13203527) (hi := 13206227) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 13206227 13211603 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13206227)
    (mid := 13208981) (hi := 13211603) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 13211603 13217137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13211603)
    (mid := 13214371) (hi := 13217137) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 13217137 13222633 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13217137)
    (mid := 13219883) (hi := 13222633) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 13222633 13228121 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13222633)
    (mid := 13225351) (hi := 13228121) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 13228121 13233607 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13228121)
    (mid := 13230863) (hi := 13233607) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 13233607 13239137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13233607)
    (mid := 13236409) (hi := 13239137) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 13239137 13244641 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13239137)
    (mid := 13241911) (hi := 13244641) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 13244641 13250147 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13244641)
    (mid := 13247371) (hi := 13250147) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 13250147 13255579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13250147)
    (mid := 13252847) (hi := 13255579) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 13255579 13261063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13255579)
    (mid := 13258313) (hi := 13261063) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 13261063 13266479 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13261063)
    (mid := 13263743) (hi := 13266479) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 13266479 13271981 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13266479)
    (mid := 13269227) (hi := 13271981) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 13271981 13277471 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13271981)
    (mid := 13274761) (hi := 13277471) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 13277471 13282949 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13277471)
    (mid := 13280257) (hi := 13282949) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 13195447 13206227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13195447)
    (mid := 13200853) (hi := 13206227) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 13206227 13217137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13206227)
    (mid := 13211603) (hi := 13217137) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 13217137 13228121 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13217137)
    (mid := 13222633) (hi := 13228121) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 13228121 13239137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13228121)
    (mid := 13233607) (hi := 13239137) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 13239137 13250147 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13239137)
    (mid := 13244641) (hi := 13250147) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 13250147 13261063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13250147)
    (mid := 13255579) (hi := 13261063) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 13261063 13271981 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13261063)
    (mid := 13266479) (hi := 13271981) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 13271981 13282949 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13271981)
    (mid := 13277471) (hi := 13282949) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 13195447 13217137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13195447)
    (mid := 13206227) (hi := 13217137) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 13217137 13239137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13217137)
    (mid := 13228121) (hi := 13239137) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 13239137 13261063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13239137)
    (mid := 13250147) (hi := 13261063) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 13261063 13282949 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13261063)
    (mid := 13271981) (hi := 13282949) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 13195447 13239137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13195447)
    (mid := 13217137) (hi := 13239137) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 13239137 13282949 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13239137)
    (mid := 13261063) (hi := 13282949) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 13195447 13282949 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13195447)
    (mid := 13239137) (hi := 13282949) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 13195447 13282949 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block150

#print axioms B699MiddleExtension.PrimorialBlocks.Block150.joined
