import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block154

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [13545971, 13546153, 13546321, 13546499, 13546667, 13546823, 13547003, 13547173, 13547353, 13547531, 13547711, 13547873, 13548047, 13548221, 13548391, 13548553]
theorem check0 : primorialChainCheck 4473 primorial4473 184 13545799 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 13545799 13548553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13545799) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [13548721, 13548883, 13549037, 13549219, 13549379, 13549559, 13549741, 13549919, 13550093, 13550269, 13550447, 13550599, 13550777, 13550959, 13551143, 13551319]
theorem check1 : primorialChainCheck 4473 primorial4473 184 13548553 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 13548553 13551319 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13548553) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [13551481, 13551661, 13551823, 13552001, 13552171, 13552351, 13552531, 13552691, 13552853, 13553021, 13553203, 13553381, 13553549, 13553731, 13553909, 13554091]
theorem check2 : primorialChainCheck 4473 primorial4473 184 13551319 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 13551319 13554091 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13551319) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [13554271, 13554451, 13554631, 13554787, 13554949, 13555123, 13555301, 13555471, 13555639, 13555823, 13555999, 13556183, 13556341, 13556507, 13556687, 13556857]
theorem check3 : primorialChainCheck 4473 primorial4473 184 13554091 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 13554091 13556857 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13554091) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [13557023, 13557191, 13557367, 13557547, 13557727, 13557899, 13558033, 13558213, 13558387, 13558561, 13558739, 13558907, 13559089, 13559267, 13559449, 13559603]
theorem check4 : primorialChainCheck 4473 primorial4473 184 13556857 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 13556857 13559603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13556857) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [13559779, 13559963, 13560137, 13560301, 13560467, 13560647, 13560803, 13560983, 13561157, 13561321, 13561487, 13561657, 13561841, 13562023, 13562183, 13562359]
theorem check5 : primorialChainCheck 4473 primorial4473 184 13559603 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 13559603 13562359 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13559603) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [13562539, 13562723, 13562897, 13563079, 13563257, 13563439, 13563623, 13563779, 13563961, 13564139, 13564303, 13564483, 13564609, 13564729, 13564913, 13565089]
theorem check6 : primorialChainCheck 4473 primorial4473 184 13562359 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 13562359 13565089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13562359) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [13565267, 13565441, 13565611, 13565789, 13565971, 13566109, 13566281, 13566451, 13566617, 13566797, 13566953, 13567133, 13567297, 13567481, 13567643, 13567811]
theorem check7 : primorialChainCheck 4473 primorial4473 184 13565089 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 13565089 13567811 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13565089) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [13567979, 13568161, 13568341, 13568507, 13568627, 13568791, 13568969, 13569151, 13569331, 13569509, 13569691, 13569869, 13570049, 13570229, 13570399, 13570567]
theorem check8 : primorialChainCheck 4473 primorial4473 184 13567811 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 13567811 13570567 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13567811) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [13570751, 13570903, 13571071, 13571249, 13571431, 13571609, 13571783, 13571939, 13572101, 13572263, 13572407, 13572583, 13572751, 13572931, 13573099, 13573267]
theorem check9 : primorialChainCheck 4473 primorial4473 184 13570567 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 13570567 13573267 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13570567) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [13573451, 13573627, 13573801, 13573981, 13574161, 13574339, 13574507, 13574689, 13574863, 13575031, 13575173, 13575347, 13575521, 13575703, 13575871, 13576037]
theorem check10 : primorialChainCheck 4473 primorial4473 184 13573267 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 13573267 13576037 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13573267) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [13576219, 13576403, 13576579, 13576757, 13576939, 13577119, 13577303, 13577471, 13577653, 13577819, 13577987, 13578167, 13578343, 13578517, 13578701, 13578857]
theorem check11 : primorialChainCheck 4473 primorial4473 184 13576037 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 13576037 13578857 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13576037) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [13579031, 13579213, 13579343, 13579523, 13579697, 13579877, 13580057, 13580233, 13580417, 13580587, 13580767, 13580939, 13581121, 13581301, 13581481, 13581643]
theorem check12 : primorialChainCheck 4473 primorial4473 184 13578857 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 13578857 13581643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13578857) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [13581823, 13582007, 13582187, 13582297, 13582463, 13582637, 13582819, 13582993, 13583149, 13583327, 13583509, 13583681, 13583839, 13584023, 13584203, 13584379]
theorem check13 : primorialChainCheck 4473 primorial4473 184 13581643 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 13581643 13584379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13581643) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [13584553, 13584737, 13584917, 13585097, 13585279, 13585459, 13585643, 13585823, 13585991, 13586173, 13586357, 13586513, 13586681, 13586861, 13587037, 13587221]
theorem check14 : primorialChainCheck 4473 primorial4473 184 13584379 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 13584379 13587221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13584379) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [13587401, 13587551, 13587731, 13587887, 13588061, 13588241, 13588417, 13588579, 13588759, 13588931, 13589111, 13589281, 13589453, 13589629, 13589813, 13589993]
theorem check15 : primorialChainCheck 4473 primorial4473 184 13587221 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 13587221 13589993 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13587221) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [13590173, 13590277, 13590457, 13590641, 13590817, 13590979, 13591157, 13591339, 13591519, 13591693, 13591867, 13592041, 13592219, 13592399, 13592549, 13592731]
theorem check16 : primorialChainCheck 4473 primorial4473 184 13589993 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 13589993 13592731 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13589993) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [13592899, 13593079, 13593241, 13593413, 13593583, 13593737, 13593913, 13594093, 13594223, 13594397, 13594573, 13594753, 13594927, 13595063, 13595237, 13595419]
theorem check17 : primorialChainCheck 4473 primorial4473 184 13592731 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 13592731 13595419 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13592731) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [13595581, 13595759, 13595929, 13596083, 13596257, 13596439, 13596623, 13596773, 13596943, 13597123, 13597303, 13597487, 13597663, 13597823, 13597963, 13598131]
theorem check18 : primorialChainCheck 4473 primorial4473 184 13595419 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 13595419 13598131 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13595419) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [13598297, 13598479, 13598653, 13598833, 13599013, 13599169, 13599317, 13599499, 13599673, 13599857, 13600019, 13600193, 13600373, 13600553, 13600711, 13600871]
theorem check19 : primorialChainCheck 4473 primorial4473 184 13598131 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 13598131 13600871 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13598131) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [13601051, 13601227, 13601407, 13601563, 13601723, 13601897, 13602059, 13602229, 13602403, 13602587, 13602767, 13602949, 13603129, 13603307, 13603489, 13603663]
theorem check20 : primorialChainCheck 4473 primorial4473 184 13600871 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 13600871 13603663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13600871) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [13603847, 13604023, 13604191, 13604363, 13604533, 13604713, 13604897, 13605079, 13605247, 13605421, 13605601, 13605769, 13605953, 13606123, 13606297, 13606471]
theorem check21 : primorialChainCheck 4473 primorial4473 184 13603663 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 13603663 13606471 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13603663) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [13606651, 13606819, 13606997, 13607149, 13607333, 13607509, 13607689, 13607861, 13608031, 13608209, 13608391, 13608533, 13608697, 13608853, 13609019, 13609159]
theorem check22 : primorialChainCheck 4473 primorial4473 184 13606471 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 13606471 13609159 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13606471) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [13609319, 13609501, 13609669, 13609853, 13610033, 13610161, 13610329, 13610501, 13610633, 13610809, 13610969, 13611151, 13611319, 13611497, 13611673, 13611839]
theorem check23 : primorialChainCheck 4473 primorial4473 184 13609159 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 13609159 13611839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13609159) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [13612013, 13612169, 13612351, 13612507, 13612691, 13612867, 13613051, 13613233, 13613393, 13613569, 13613741, 13613921, 13614103, 13614287, 13614449, 13614607]
theorem check24 : primorialChainCheck 4473 primorial4473 184 13611839 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 13611839 13614607 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13611839) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [13614767, 13614941, 13615111, 13615291, 13615451, 13615633, 13615801, 13615981, 13616153, 13616329, 13616503, 13616671, 13616833, 13617011, 13617181, 13617337]
theorem check25 : primorialChainCheck 4473 primorial4473 184 13614607 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 13614607 13617337 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13614607) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [13617521, 13617689, 13617859, 13618043, 13618217, 13618399, 13618571, 13618747, 13618909, 13619087, 13619269, 13619453, 13619609, 13619779, 13619953, 13620133]
theorem check26 : primorialChainCheck 4473 primorial4473 184 13617337 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 13617337 13620133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13617337) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [13620317, 13620493, 13620671, 13620839, 13621019, 13621193, 13621373, 13621549, 13621723, 13621903, 13622087, 13622269, 13622447, 13622597, 13622773, 13622897]
theorem check27 : primorialChainCheck 4473 primorial4473 184 13620133 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 13620133 13622897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13620133) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [13623073, 13623257, 13623431, 13623593, 13623773, 13623949, 13624133, 13624267, 13624451, 13624627, 13624789, 13624951, 13625123, 13625291, 13625473, 13625639]
theorem check28 : primorialChainCheck 4473 primorial4473 184 13622897 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 13622897 13625639 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13622897) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [13625819, 13626001, 13626181, 13626257, 13626413, 13626559, 13626731, 13626913, 13627079, 13627261, 13627441, 13627619, 13627793, 13627973, 13628137, 13628311]
theorem check29 : primorialChainCheck 4473 primorial4473 184 13625639 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 13625639 13628311 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13625639) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [13628471, 13628653, 13628831, 13628999, 13629167, 13629349, 13629523, 13629697, 13629871, 13630037, 13630219, 13630403, 13630579, 13630741, 13630919, 13631099]
theorem check30 : primorialChainCheck 4473 primorial4473 184 13628311 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 13628311 13631099 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13628311) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [13631279, 13631459, 13631641, 13631819, 13631999, 13632173, 13632337, 13632511, 13632683, 13632863, 13633027, 13633199, 13633381, 13633547, 13633717, 13633891]
theorem check31 : primorialChainCheck 4473 primorial4473 184 13631099 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 13631099 13633891 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13631099) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 13545799 13551319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13545799)
    (mid := 13548553) (hi := 13551319) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 13551319 13556857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13551319)
    (mid := 13554091) (hi := 13556857) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 13556857 13562359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13556857)
    (mid := 13559603) (hi := 13562359) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 13562359 13567811 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13562359)
    (mid := 13565089) (hi := 13567811) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 13567811 13573267 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13567811)
    (mid := 13570567) (hi := 13573267) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 13573267 13578857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13573267)
    (mid := 13576037) (hi := 13578857) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 13578857 13584379 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13578857)
    (mid := 13581643) (hi := 13584379) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 13584379 13589993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13584379)
    (mid := 13587221) (hi := 13589993) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 13589993 13595419 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13589993)
    (mid := 13592731) (hi := 13595419) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 13595419 13600871 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13595419)
    (mid := 13598131) (hi := 13600871) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 13600871 13606471 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13600871)
    (mid := 13603663) (hi := 13606471) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 13606471 13611839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13606471)
    (mid := 13609159) (hi := 13611839) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 13611839 13617337 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13611839)
    (mid := 13614607) (hi := 13617337) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 13617337 13622897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13617337)
    (mid := 13620133) (hi := 13622897) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 13622897 13628311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13622897)
    (mid := 13625639) (hi := 13628311) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 13628311 13633891 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13628311)
    (mid := 13631099) (hi := 13633891) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 13545799 13556857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13545799)
    (mid := 13551319) (hi := 13556857) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 13556857 13567811 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13556857)
    (mid := 13562359) (hi := 13567811) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 13567811 13578857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13567811)
    (mid := 13573267) (hi := 13578857) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 13578857 13589993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13578857)
    (mid := 13584379) (hi := 13589993) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 13589993 13600871 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13589993)
    (mid := 13595419) (hi := 13600871) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 13600871 13611839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13600871)
    (mid := 13606471) (hi := 13611839) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 13611839 13622897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13611839)
    (mid := 13617337) (hi := 13622897) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 13622897 13633891 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13622897)
    (mid := 13628311) (hi := 13633891) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 13545799 13567811 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13545799)
    (mid := 13556857) (hi := 13567811) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 13567811 13589993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13567811)
    (mid := 13578857) (hi := 13589993) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 13589993 13611839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13589993)
    (mid := 13600871) (hi := 13611839) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 13611839 13633891 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13611839)
    (mid := 13622897) (hi := 13633891) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 13545799 13589993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13545799)
    (mid := 13567811) (hi := 13589993) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 13589993 13633891 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13589993)
    (mid := 13611839) (hi := 13633891) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 13545799 13633891 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13545799)
    (mid := 13589993) (hi := 13633891) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 13545799 13633891 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block154

#print axioms B699MiddleExtension.PrimorialBlocks.Block154.joined
