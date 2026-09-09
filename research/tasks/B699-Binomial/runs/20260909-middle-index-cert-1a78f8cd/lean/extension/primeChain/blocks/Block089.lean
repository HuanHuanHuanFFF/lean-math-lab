import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block089

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [7853687, 7853831, 7853999, 7854179, 7854361, 7854541, 7854703, 7854887, 7855061, 7855223, 7855403, 7855583, 7855747, 7855931, 7856089, 7856269]
theorem check0 : primorialChainCheck 4473 primorial4473 184 7853513 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 7853513 7856269 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7853513) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [7856447, 7856603, 7856759, 7856939, 7857107, 7857287, 7857461, 7857643, 7857823, 7858003, 7858181, 7858349, 7858483, 7858651, 7858831, 7858997]
theorem check1 : primorialChainCheck 4473 primorial4473 184 7856269 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 7856269 7858997 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7856269) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [7859171, 7859347, 7859531, 7859699, 7859879, 7860049, 7860217, 7860401, 7860581, 7860757, 7860913, 7861093, 7861241, 7861417, 7861591, 7861757]
theorem check2 : primorialChainCheck 4473 primorial4473 184 7858997 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 7858997 7861757 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7858997) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [7861933, 7862111, 7862287, 7862453, 7862609, 7862737, 7862909, 7863067, 7863227, 7863407, 7863577, 7863761, 7863941, 7864123, 7864301, 7864477]
theorem check3 : primorialChainCheck 4473 primorial4473 184 7861757 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 7861757 7864477 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7861757) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [7864639, 7864823, 7864991, 7865171, 7865353, 7865527, 7865707, 7865881, 7866059, 7866239, 7866413, 7866571, 7866751, 7866923, 7867103, 7867271]
theorem check4 : primorialChainCheck 4473 primorial4473 184 7864477 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 7864477 7867271 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7864477) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [7867441, 7867619, 7867793, 7867973, 7868153, 7868293, 7868477, 7868647, 7868821, 7868999, 7869167, 7869343, 7869523, 7869683, 7869791, 7869941]
theorem check5 : primorialChainCheck 4473 primorial4473 184 7867271 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 7867271 7869941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7867271) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [7870097, 7870277, 7870459, 7870633, 7870817, 7870957, 7871141, 7871317, 7871483, 7871651, 7871827, 7872001, 7872181, 7872353, 7872521, 7872679]
theorem check6 : primorialChainCheck 4473 primorial4473 184 7869941 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 7869941 7872679 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7869941) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [7872863, 7873031, 7873213, 7873387, 7873559, 7873739, 7873913, 7874089, 7874261, 7874431, 7874609, 7874777, 7874959, 7875137, 7875317, 7875467]
theorem check7 : primorialChainCheck 4473 primorial4473 184 7872679 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 7872679 7875467 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7872679) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [7875631, 7875799, 7875983, 7876147, 7876331, 7876501, 7876679, 7876859, 7876997, 7877179, 7877351, 7877509, 7877693, 7877873, 7878047, 7878229]
theorem check8 : primorialChainCheck 4473 primorial4473 184 7875467 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 7875467 7878229 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7875467) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [7878413, 7878571, 7878721, 7878887, 7879061, 7879237, 7879411, 7879589, 7879757, 7879931, 7880113, 7880291, 7880471, 7880641, 7880797, 7880969]
theorem check9 : primorialChainCheck 4473 primorial4473 184 7878229 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 7878229 7880969 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7878229) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [7881151, 7881331, 7881509, 7881689, 7881859, 7882037, 7882219, 7882367, 7882529, 7882709, 7882879, 7883063, 7883237, 7883419, 7883599, 7883773]
theorem check10 : primorialChainCheck 4473 primorial4473 184 7880969 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 7880969 7883773 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7880969) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [7883933, 7884113, 7884269, 7884431, 7884593, 7884739, 7884913, 7885091, 7885261, 7885411, 7885567, 7885733, 7885903, 7886077, 7886261, 7886441]
theorem check11 : primorialChainCheck 4473 primorial4473 184 7883773 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 7883773 7886441 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7883773) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [7886621, 7886797, 7886959, 7887097, 7887263, 7887427, 7887611, 7887773, 7887953, 7888117, 7888301, 7888483, 7888649, 7888817, 7888999, 7889149]
theorem check12 : primorialChainCheck 4473 primorial4473 184 7886441 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 7886441 7889149 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7886441) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [7889293, 7889477, 7889659, 7889837, 7890013, 7890191, 7890373, 7890557, 7890739, 7890923, 7891069, 7891237, 7891421, 7891603, 7891787, 7891969]
theorem check13 : primorialChainCheck 4473 primorial4473 184 7889149 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 7889149 7891969 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7889149) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [7892153, 7892329, 7892513, 7892681, 7892849, 7893031, 7893211, 7893373, 7893533, 7893707, 7893883, 7894043, 7894219, 7894387, 7894547, 7894723]
theorem check14 : primorialChainCheck 4473 primorial4473 184 7891969 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 7891969 7894723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7891969) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [7894907, 7895087, 7895269, 7895449, 7895623, 7895807, 7895989, 7896157, 7896341, 7896491, 7896631, 7896809, 7896991, 7897147, 7897321, 7897499]
theorem check15 : primorialChainCheck 4473 primorial4473 184 7894723 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 7894723 7897499 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7894723) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [7897667, 7897849, 7898029, 7898213, 7898393, 7898567, 7898747, 7898929, 7899113, 7899253, 7899413, 7899589, 7899751, 7899929, 7900103, 7900283]
theorem check16 : primorialChainCheck 4473 primorial4473 184 7897499 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 7897499 7900283 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7897499) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [7900457, 7900609, 7900793, 7900969, 7901149, 7901303, 7901483, 7901603, 7901783, 7901947, 7902131, 7902287, 7902443, 7902619, 7902787, 7902959]
theorem check17 : primorialChainCheck 4473 primorial4473 184 7900283 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 7900283 7902959 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7900283) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [7903141, 7903319, 7903471, 7903633, 7903813, 7903993, 7904177, 7904333, 7904509, 7904683, 7904867, 7905049, 7905229, 7905407, 7905571, 7905739]
theorem check18 : primorialChainCheck 4473 primorial4473 184 7902959 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 7902959 7905739 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7902959) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [7905889, 7906069, 7906253, 7906433, 7906601, 7906783, 7906961, 7907143, 7907323, 7907507, 7907689, 7907863, 7908029, 7908209, 7908371, 7908533]
theorem check19 : primorialChainCheck 4473 primorial4473 184 7905739 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 7905739 7908533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7905739) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [7908709, 7908889, 7909067, 7909219, 7909399, 7909553, 7909729, 7909903, 7910081, 7910263, 7910443, 7910599, 7910741, 7910923, 7911089, 7911227]
theorem check20 : primorialChainCheck 4473 primorial4473 184 7908533 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 7908533 7911227 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7908533) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [7911383, 7911551, 7911713, 7911881, 7912061, 7912237, 7912363, 7912547, 7912717, 7912889, 7913071, 7913251, 7913431, 7913603, 7913783, 7913953]
theorem check21 : primorialChainCheck 4473 primorial4473 184 7911227 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 7911227 7913953 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7911227) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [7914131, 7914307, 7914481, 7914653, 7914793, 7914961, 7915133, 7915283, 7915423, 7915601, 7915781, 7915903, 7916081, 7916263, 7916423, 7916593]
theorem check22 : primorialChainCheck 4473 primorial4473 184 7913953 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 7913953 7916593 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7913953) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [7916771, 7916947, 7917113, 7917277, 7917449, 7917607, 7917781, 7917953, 7918129, 7918291, 7918457, 7918637, 7918811, 7918987, 7919129, 7919311]
theorem check23 : primorialChainCheck 4473 primorial4473 184 7916593 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 7916593 7919311 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7916593) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [7919491, 7919669, 7919851, 7920019, 7920203, 7920371, 7920551, 7920727, 7920893, 7921061, 7921237, 7921411, 7921579, 7921759, 7921943, 7922113]
theorem check24 : primorialChainCheck 4473 primorial4473 184 7919311 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 7919311 7922113 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7919311) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [7922293, 7922443, 7922627, 7922809, 7922987, 7923161, 7923337, 7923521, 7923691, 7923869, 7924051, 7924229, 7924403, 7924541, 7924711, 7924883]
theorem check25 : primorialChainCheck 4473 primorial4473 184 7922113 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 7922113 7924883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7922113) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [7925053, 7925237, 7925389, 7925557, 7925741, 7925917, 7926091, 7926271, 7926449, 7926619, 7926803, 7926977, 7927159, 7927343, 7927511, 7927681]
theorem check26 : primorialChainCheck 4473 primorial4473 184 7924883 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 7924883 7927681 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7924883) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [7927859, 7928023, 7928201, 7928369, 7928549, 7928717, 7928897, 7929079, 7929263, 7929443, 7929619, 7929799, 7929983, 7930159, 7930339, 7930471]
theorem check27 : primorialChainCheck 4473 primorial4473 184 7927681 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 7927681 7930471 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7927681) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [7930651, 7930829, 7931003, 7931179, 7931353, 7931533, 7931713, 7931893, 7932053, 7932209, 7932377, 7932553, 7932703, 7932887, 7933069, 7933243]
theorem check28 : primorialChainCheck 4473 primorial4473 184 7930471 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 7930471 7933243 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7930471) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [7933399, 7933573, 7933711, 7933867, 7934029, 7934203, 7934387, 7934557, 7934741, 7934923, 7935071, 7935229, 7935409, 7935569, 7935727, 7935899]
theorem check29 : primorialChainCheck 4473 primorial4473 184 7933243 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 7933243 7935899 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7933243) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [7936079, 7936259, 7936441, 7936613, 7936769, 7936949, 7937123, 7937299, 7937483, 7937659, 7937837, 7937987, 7938163, 7938317, 7938481, 7938649]
theorem check30 : primorialChainCheck 4473 primorial4473 184 7935899 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 7935899 7938649 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7935899) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [7938811, 7938991, 7939171, 7939339, 7939523, 7939703, 7939861, 7940021, 7940197, 7940381, 7940549, 7940719, 7940893, 7941061, 7941229, 7941391]
theorem check31 : primorialChainCheck 4473 primorial4473 184 7938649 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 7938649 7941391 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 7938649) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 7853513 7858997 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7853513)
    (mid := 7856269) (hi := 7858997) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 7858997 7864477 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7858997)
    (mid := 7861757) (hi := 7864477) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 7864477 7869941 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7864477)
    (mid := 7867271) (hi := 7869941) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 7869941 7875467 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7869941)
    (mid := 7872679) (hi := 7875467) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 7875467 7880969 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7875467)
    (mid := 7878229) (hi := 7880969) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 7880969 7886441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7880969)
    (mid := 7883773) (hi := 7886441) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 7886441 7891969 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7886441)
    (mid := 7889149) (hi := 7891969) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 7891969 7897499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7891969)
    (mid := 7894723) (hi := 7897499) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 7897499 7902959 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7897499)
    (mid := 7900283) (hi := 7902959) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 7902959 7908533 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7902959)
    (mid := 7905739) (hi := 7908533) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 7908533 7913953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7908533)
    (mid := 7911227) (hi := 7913953) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 7913953 7919311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7913953)
    (mid := 7916593) (hi := 7919311) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 7919311 7924883 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7919311)
    (mid := 7922113) (hi := 7924883) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 7924883 7930471 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7924883)
    (mid := 7927681) (hi := 7930471) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 7930471 7935899 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7930471)
    (mid := 7933243) (hi := 7935899) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 7935899 7941391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7935899)
    (mid := 7938649) (hi := 7941391) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 7853513 7864477 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7853513)
    (mid := 7858997) (hi := 7864477) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 7864477 7875467 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7864477)
    (mid := 7869941) (hi := 7875467) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 7875467 7886441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7875467)
    (mid := 7880969) (hi := 7886441) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 7886441 7897499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7886441)
    (mid := 7891969) (hi := 7897499) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 7897499 7908533 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7897499)
    (mid := 7902959) (hi := 7908533) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 7908533 7919311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7908533)
    (mid := 7913953) (hi := 7919311) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 7919311 7930471 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7919311)
    (mid := 7924883) (hi := 7930471) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 7930471 7941391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7930471)
    (mid := 7935899) (hi := 7941391) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 7853513 7875467 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7853513)
    (mid := 7864477) (hi := 7875467) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 7875467 7897499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7875467)
    (mid := 7886441) (hi := 7897499) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 7897499 7919311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7897499)
    (mid := 7908533) (hi := 7919311) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 7919311 7941391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7919311)
    (mid := 7930471) (hi := 7941391) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 7853513 7897499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7853513)
    (mid := 7875467) (hi := 7897499) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 7897499 7941391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7897499)
    (mid := 7919311) (hi := 7941391) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 7853513 7941391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 7853513)
    (mid := 7897499) (hi := 7941391) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 7853513 7941391 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block089

#print axioms B699MiddleExtension.PrimorialBlocks.Block089.joined
