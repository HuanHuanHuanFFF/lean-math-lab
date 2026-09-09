import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block124

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [10919383, 10919561, 10919731, 10919903, 10920073, 10920241, 10920367, 10920541, 10920673, 10920853, 10921033, 10921217, 10921373, 10921541, 10921709, 10921891]
theorem check0 : primorialChainCheck 4473 primorial4473 184 10919201 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 10919201 10921891 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10919201) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [10922071, 10922237, 10922419, 10922603, 10922783, 10922963, 10923139, 10923323, 10923487, 10923659, 10923839, 10924009, 10924189, 10924363, 10924541, 10924723]
theorem check1 : primorialChainCheck 4473 primorial4473 184 10921891 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 10921891 10924723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10921891) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [10924891, 10925063, 10925227, 10925389, 10925567, 10925749, 10925927, 10926107, 10926287, 10926467, 10926647, 10926821, 10927003, 10927187, 10927363, 10927541]
theorem check2 : primorialChainCheck 4473 primorial4473 184 10924723 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 10924723 10927541 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10924723) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [10927703, 10927877, 10928053, 10928233, 10928417, 10928587, 10928761, 10928941, 10929119, 10929277, 10929437, 10929601, 10929767, 10929931, 10930109, 10930289]
theorem check3 : primorialChainCheck 4473 primorial4473 184 10927541 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 10927541 10930289 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10927541) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [10930457, 10930637, 10930807, 10930991, 10931161, 10931341, 10931513, 10931671, 10931849, 10931989, 10932167, 10932331, 10932503, 10932679, 10932841, 10932997]
theorem check4 : primorialChainCheck 4473 primorial4473 184 10930289 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 10930289 10932997 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10930289) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [10933171, 10933339, 10933519, 10933687, 10933861, 10934017, 10934201, 10934369, 10934551, 10934719, 10934887, 10935049, 10935229, 10935413, 10935593, 10935767]
theorem check5 : primorialChainCheck 4473 primorial4473 184 10932997 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 10932997 10935767 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10932997) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [10935937, 10936111, 10936291, 10936441, 10936619, 10936789, 10936969, 10937153, 10937317, 10937501, 10937677, 10937821, 10937921, 10938023, 10938197, 10938341]
theorem check6 : primorialChainCheck 4473 primorial4473 184 10935767 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 10935767 10938341 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10935767) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [10938523, 10938689, 10938853, 10939031, 10939207, 10939363, 10939547, 10939727, 10939883, 10940063, 10940243, 10940417, 10940597, 10940731, 10940879, 10941061]
theorem check7 : primorialChainCheck 4473 primorial4473 184 10938341 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 10938341 10941061 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10938341) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [10941241, 10941409, 10941559, 10941743, 10941923, 10942103, 10942259, 10942427, 10942609, 10942753, 10942937, 10943111, 10943287, 10943437, 10943617, 10943797]
theorem check8 : primorialChainCheck 4473 primorial4473 184 10941061 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 10941061 10943797 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10941061) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [10943963, 10944137, 10944319, 10944473, 10944653, 10944823, 10944979, 10945163, 10945343, 10945489, 10945663, 10945829, 10946009, 10946189, 10946371, 10946539]
theorem check9 : primorialChainCheck 4473 primorial4473 184 10943797 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 10943797 10946539 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10943797) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [10946693, 10946867, 10947049, 10947229, 10947403, 10947581, 10947751, 10947889, 10948061, 10948243, 10948409, 10948589, 10948771, 10948937, 10949119, 10949303]
theorem check10 : primorialChainCheck 4473 primorial4473 184 10946539 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 10946539 10949303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10946539) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [10949483, 10949663, 10949837, 10950007, 10950169, 10950349, 10950529, 10950713, 10950889, 10951069, 10951249, 10951411, 10951579, 10951747, 10951931, 10952107]
theorem check11 : primorialChainCheck 4473 primorial4473 184 10949303 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 10949303 10952107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10949303) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [10952287, 10952387, 10952567, 10952741, 10952897, 10953077, 10953259, 10953421, 10953583, 10953751, 10953931, 10954057, 10954231, 10954403, 10954577, 10954733]
theorem check12 : primorialChainCheck 4473 primorial4473 184 10952107 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 10952107 10954733 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10952107) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [10954907, 10955081, 10955261, 10955443, 10955611, 10955731, 10955911, 10956089, 10956269, 10956433, 10956611, 10956793, 10956973, 10957117, 10957283, 10957459]
theorem check13 : primorialChainCheck 4473 primorial4473 184 10954733 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 10954733 10957459 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10954733) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [10957633, 10957801, 10957967, 10958147, 10958329, 10958513, 10958683, 10958819, 10958977, 10959149, 10959323, 10959497, 10959667, 10959847, 10960031, 10960193]
theorem check14 : primorialChainCheck 4473 primorial4473 184 10957459 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 10957459 10960193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10957459) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [10960373, 10960531, 10960693, 10960871, 10961033, 10961207, 10961389, 10961563, 10961747, 10961927, 10962109, 10962271, 10962443, 10962617, 10962799, 10962983]
theorem check15 : primorialChainCheck 4473 primorial4473 184 10960193 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 10960193 10962983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10960193) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [10963163, 10963339, 10963517, 10963669, 10963811, 10963991, 10964153, 10964333, 10964509, 10964663, 10964827, 10964981, 10965151, 10965281, 10965433, 10965613]
theorem check16 : primorialChainCheck 4473 primorial4473 184 10962983 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 10962983 10965613 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10962983) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [10965769, 10965943, 10966117, 10966301, 10966481, 10966663, 10966829, 10967003, 10967171, 10967353, 10967519, 10967701, 10967857, 10968029, 10968211, 10968379]
theorem check17 : primorialChainCheck 4473 primorial4473 184 10965613 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 10965613 10968379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10965613) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [10968563, 10968739, 10968911, 10969069, 10969253, 10969391, 10969561, 10969733, 10969909, 10970081, 10970263, 10970447, 10970569, 10970723, 10970879, 10971047]
theorem check18 : primorialChainCheck 4473 primorial4473 184 10968379 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 10968379 10971047 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10968379) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [10971217, 10971383, 10971563, 10971743, 10971899, 10972079, 10972229, 10972399, 10972583, 10972733, 10972903, 10973087, 10973269, 10973447, 10973617, 10973797]
theorem check19 : primorialChainCheck 4473 primorial4473 184 10971047 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 10971047 10973797 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10971047) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [10973981, 10974149, 10974319, 10974493, 10974661, 10974833, 10975001, 10975177, 10975361, 10975541, 10975709, 10975883, 10976059, 10976227, 10976411, 10976593]
theorem check20 : primorialChainCheck 4473 primorial4473 184 10973797 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 10973797 10976593 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10973797) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [10976741, 10976923, 10977103, 10977259, 10977443, 10977623, 10977797, 10977977, 10978139, 10978321, 10978483, 10978663, 10978823, 10978999, 10979173, 10979327]
theorem check21 : primorialChainCheck 4473 primorial4473 184 10976593 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 10976593 10979327 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10976593) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [10979509, 10979693, 10979867, 10980049, 10980199, 10980383, 10980539, 10980721, 10980889, 10981067, 10981247, 10981429, 10981591, 10981771, 10981951, 10982117]
theorem check22 : primorialChainCheck 4473 primorial4473 184 10979327 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 10979327 10982117 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10979327) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [10982297, 10982479, 10982651, 10982831, 10983013, 10983169, 10983353, 10983529, 10983697, 10983839, 10984021, 10984189, 10984373, 10984553, 10984711, 10984891]
theorem check23 : primorialChainCheck 4473 primorial4473 184 10982117 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 10982117 10984891 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10982117) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [10985057, 10985209, 10985389, 10985567, 10985731, 10985911, 10986067, 10986251, 10986413, 10986589, 10986761, 10986931, 10987099, 10987279, 10987447, 10987621]
theorem check24 : primorialChainCheck 4473 primorial4473 184 10984891 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 10984891 10987621 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10984891) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [10987787, 10987969, 10988147, 10988317, 10988501, 10988671, 10988837, 10989001, 10989151, 10989323, 10989499, 10989673, 10989857, 10990033, 10990183, 10990367]
theorem check25 : primorialChainCheck 4473 primorial4473 184 10987621 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 10987621 10990367 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10987621) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [10990547, 10990703, 10990853, 10991023, 10991207, 10991381, 10991509, 10991693, 10991873, 10992053, 10992209, 10992389, 10992547, 10992721, 10992901, 10993069]
theorem check26 : primorialChainCheck 4473 primorial4473 184 10990367 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 10990367 10993069 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10990367) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [10993217, 10993399, 10993583, 10993753, 10993937, 10994107, 10994281, 10994449, 10994611, 10994791, 10994969, 10995139, 10995323, 10995499, 10995643, 10995827]
theorem check27 : primorialChainCheck 4473 primorial4473 184 10993069 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 10993069 10995827 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10993069) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [10995989, 10996163, 10996339, 10996477, 10996639, 10996823, 10996969, 10997153, 10997309, 10997491, 10997647, 10997821, 10997999, 10998179, 10998311, 10998487]
theorem check28 : primorialChainCheck 4473 primorial4473 184 10995827 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 10995827 10998487 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10995827) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [10998671, 10998833, 10998997, 10999181, 10999333, 10999507, 10999691, 10999871, 11000053, 11000189, 11000369, 11000537, 11000719, 11000879, 11001049, 11001217]
theorem check29 : primorialChainCheck 4473 primorial4473 184 10998487 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 10998487 11001217 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10998487) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [11001391, 11001569, 11001743, 11001923, 11002081, 11002259, 11002423, 11002603, 11002781, 11002939, 11003107, 11003287, 11003459, 11003639, 11003809, 11003957]
theorem check30 : primorialChainCheck 4473 primorial4473 184 11001217 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 11001217 11003957 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11001217) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [11004127, 11004307, 11004479, 11004647, 11004809, 11004979, 11005157, 11005327, 11005493, 11005669, 11005853, 11006027, 11006161, 11006329, 11006503, 11006659]
theorem check31 : primorialChainCheck 4473 primorial4473 184 11003957 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 11003957 11006659 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11003957) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 10919201 10924723 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10919201)
    (mid := 10921891) (hi := 10924723) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 10924723 10930289 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10924723)
    (mid := 10927541) (hi := 10930289) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 10930289 10935767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10930289)
    (mid := 10932997) (hi := 10935767) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 10935767 10941061 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10935767)
    (mid := 10938341) (hi := 10941061) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 10941061 10946539 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10941061)
    (mid := 10943797) (hi := 10946539) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 10946539 10952107 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10946539)
    (mid := 10949303) (hi := 10952107) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 10952107 10957459 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10952107)
    (mid := 10954733) (hi := 10957459) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 10957459 10962983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10957459)
    (mid := 10960193) (hi := 10962983) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 10962983 10968379 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10962983)
    (mid := 10965613) (hi := 10968379) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 10968379 10973797 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10968379)
    (mid := 10971047) (hi := 10973797) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 10973797 10979327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10973797)
    (mid := 10976593) (hi := 10979327) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 10979327 10984891 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10979327)
    (mid := 10982117) (hi := 10984891) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 10984891 10990367 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10984891)
    (mid := 10987621) (hi := 10990367) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 10990367 10995827 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10990367)
    (mid := 10993069) (hi := 10995827) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 10995827 11001217 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10995827)
    (mid := 10998487) (hi := 11001217) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 11001217 11006659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11001217)
    (mid := 11003957) (hi := 11006659) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 10919201 10930289 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10919201)
    (mid := 10924723) (hi := 10930289) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 10930289 10941061 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10930289)
    (mid := 10935767) (hi := 10941061) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 10941061 10952107 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10941061)
    (mid := 10946539) (hi := 10952107) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 10952107 10962983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10952107)
    (mid := 10957459) (hi := 10962983) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 10962983 10973797 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10962983)
    (mid := 10968379) (hi := 10973797) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 10973797 10984891 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10973797)
    (mid := 10979327) (hi := 10984891) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 10984891 10995827 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10984891)
    (mid := 10990367) (hi := 10995827) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 10995827 11006659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10995827)
    (mid := 11001217) (hi := 11006659) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 10919201 10941061 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10919201)
    (mid := 10930289) (hi := 10941061) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 10941061 10962983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10941061)
    (mid := 10952107) (hi := 10962983) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 10962983 10984891 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10962983)
    (mid := 10973797) (hi := 10984891) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 10984891 11006659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10984891)
    (mid := 10995827) (hi := 11006659) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 10919201 10962983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10919201)
    (mid := 10941061) (hi := 10962983) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 10962983 11006659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10962983)
    (mid := 10984891) (hi := 11006659) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 10919201 11006659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10919201)
    (mid := 10962983) (hi := 11006659) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 10919201 11006659 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block124

#print axioms B699MiddleExtension.PrimorialBlocks.Block124.joined
