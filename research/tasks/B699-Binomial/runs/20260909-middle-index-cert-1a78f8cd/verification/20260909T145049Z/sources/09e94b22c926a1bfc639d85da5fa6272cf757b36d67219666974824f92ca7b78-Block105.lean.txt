import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block105

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [9255241, 9255409, 9255529, 9255691, 9255853, 9256033, 9256217, 9256399, 9256573, 9256757, 9256937, 9257117, 9257291, 9257473, 9257657, 9257839]
theorem check0 : primorialChainCheck 4473 primorial4473 184 9255101 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 9255101 9257839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9255101) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [9258023, 9258191, 9258349, 9258527, 9258707, 9258869, 9259051, 9259193, 9259357, 9259531, 9259711, 9259889, 9260071, 9260231, 9260411, 9260569]
theorem check1 : primorialChainCheck 4473 primorial4473 184 9257839 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 9257839 9260569 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9257839) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [9260753, 9260921, 9261103, 9261233, 9261409, 9261559, 9261731, 9261907, 9262091, 9262259, 9262441, 9262613, 9262787, 9262963, 9263143, 9263297]
theorem check2 : primorialChainCheck 4473 primorial4473 184 9260569 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 9260569 9263297 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9260569) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [9263437, 9263599, 9263753, 9263873, 9264041, 9264223, 9264407, 9264589, 9264769, 9264919, 9265099, 9265283, 9265463, 9265637, 9265801, 9265979]
theorem check3 : primorialChainCheck 4473 primorial4473 184 9263297 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 9263297 9265979 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9263297) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [9266143, 9266311, 9266483, 9266659, 9266843, 9266987, 9267169, 9267347, 9267529, 9267707, 9267887, 9268037, 9268211, 9268387, 9268559, 9268741]
theorem check4 : primorialChainCheck 4473 primorial4473 184 9265979 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 9265979 9268741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9265979) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [9268921, 9269087, 9269269, 9269453, 9269633, 9269807, 9269971, 9270143, 9270323, 9270497, 9270647, 9270827, 9270977, 9271153, 9271337, 9271517]
theorem check5 : primorialChainCheck 4473 primorial4473 184 9268741 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 9268741 9271517 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9268741) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [9271693, 9271877, 9272041, 9272213, 9272371, 9272539, 9272713, 9272873, 9273049, 9273227, 9273391, 9273553, 9273713, 9273893, 9274063, 9274247]
theorem check6 : primorialChainCheck 4473 primorial4473 184 9271517 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 9271517 9274247 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9271517) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [9274411, 9274583, 9274747, 9274883, 9275039, 9275219, 9275393, 9275569, 9275753, 9275879, 9276023, 9276191, 9276367, 9276539, 9276689, 9276871]
theorem check7 : primorialChainCheck 4473 primorial4473 184 9274247 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 9274247 9276871 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9274247) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [9277043, 9277217, 9277399, 9277559, 9277729, 9277913, 9278069, 9278249, 9278429, 9278611, 9278791, 9278963, 9279139, 9279313, 9279493, 9279661]
theorem check8 : primorialChainCheck 4473 primorial4473 184 9276871 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 9276871 9279661 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9276871) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [9279811, 9279983, 9280163, 9280321, 9280483, 9280651, 9280829, 9281011, 9281179, 9281323, 9281497, 9281669, 9281849, 9282029, 9282211, 9282389]
theorem check9 : primorialChainCheck 4473 primorial4473 184 9279661 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 9279661 9282389 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9279661) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [9282503, 9282677, 9282839, 9282943, 9283117, 9283279, 9283447, 9283607, 9283763, 9283943, 9284117, 9284281, 9284459, 9284641, 9284813, 9284987]
theorem check10 : primorialChainCheck 4473 primorial4473 184 9282389 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 9282389 9284987 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9282389) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [9285161, 9285343, 9285503, 9285677, 9285841, 9286021, 9286169, 9286327, 9286507, 9286663, 9286847, 9287027, 9287203, 9287381, 9287543, 9287659]
theorem check11 : primorialChainCheck 4473 primorial4473 184 9284987 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 9284987 9287659 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9284987) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [9287833, 9287989, 9288151, 9288329, 9288479, 9288661, 9288823, 9288977, 9289153, 9289337, 9289517, 9289663, 9289829, 9290009, 9290189, 9290371]
theorem check12 : primorialChainCheck 4473 primorial4473 184 9287659 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 9287659 9290371 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9287659) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [9290543, 9290683, 9290863, 9291047, 9291211, 9291391, 9291553, 9291721, 9291869, 9292051, 9292211, 9292379, 9292553, 9292711, 9292879, 9293059]
theorem check13 : primorialChainCheck 4473 primorial4473 184 9290371 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 9290371 9293059 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9290371) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [9293243, 9293423, 9293591, 9293773, 9293953, 9294107, 9294283, 9294463, 9294643, 9294827, 9295007, 9295159, 9295337, 9295483, 9295661, 9295831]
theorem check14 : primorialChainCheck 4473 primorial4473 184 9293059 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 9293059 9295831 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9293059) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [9295999, 9296179, 9296351, 9296489, 9296653, 9296809, 9296983, 9297163, 9297347, 9297511, 9297677, 9297853, 9297983, 9298153, 9298321, 9298501]
theorem check15 : primorialChainCheck 4473 primorial4473 184 9295831 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 9295831 9298501 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9295831) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [9298651, 9298829, 9298979, 9299161, 9299317, 9299501, 9299671, 9299837, 9300017, 9300199, 9300373, 9300541, 9300721, 9300883, 9301043, 9301217]
theorem check16 : primorialChainCheck 4473 primorial4473 184 9298501 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 9298501 9301217 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9298501) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [9301387, 9301549, 9301709, 9301883, 9302063, 9302231, 9302413, 9302563, 9302743, 9302911, 9303089, 9303263, 9303439, 9303611, 9303773, 9303941]
theorem check17 : primorialChainCheck 4473 primorial4473 184 9301217 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 9301217 9303941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9301217) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [9304109, 9304283, 9304453, 9304609, 9304793, 9304973, 9305141, 9305299, 9305479, 9305651, 9305819, 9306001, 9306173, 9306317, 9306461, 9306643]
theorem check18 : primorialChainCheck 4473 primorial4473 184 9303941 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 9303941 9306643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9303941) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [9306797, 9306971, 9307153, 9307303, 9307447, 9307607, 9307763, 9307937, 9308113, 9308297, 9308479, 9308659, 9308839, 9309019, 9309193, 9309367]
theorem check19 : primorialChainCheck 4473 primorial4473 184 9306643 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 9306643 9309367 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9306643) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [9309511, 9309691, 9309869, 9310001, 9310181, 9310349, 9310529, 9310681, 9310843, 9311017, 9311179, 9311329, 9311503, 9311683, 9311867, 9312031]
theorem check20 : primorialChainCheck 4473 primorial4473 184 9309367 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 9309367 9312031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9309367) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [9312211, 9312389, 9312559, 9312739, 9312917, 9313099, 9313279, 9313463, 9313639, 9313823, 9314003, 9314141, 9314323, 9314489, 9314633, 9314801]
theorem check21 : primorialChainCheck 4473 primorial4473 184 9312031 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 9312031 9314801 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9312031) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [9314983, 9315143, 9315307, 9315461, 9315637, 9315811, 9315991, 9316147, 9316331, 9316457, 9316639, 9316823, 9316997, 9317179, 9317359, 9317519]
theorem check22 : primorialChainCheck 4473 primorial4473 184 9314801 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 9314801 9317519 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9314801) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [9317687, 9317851, 9318031, 9318209, 9318391, 9318553, 9318733, 9318913, 9319091, 9319249, 9319403, 9319571, 9319753, 9319897, 9320033, 9320191]
theorem check23 : primorialChainCheck 4473 primorial4473 184 9317519 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 9317519 9320191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9317519) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [9320371, 9320537, 9320719, 9320891, 9321073, 9321251, 9321407, 9321581, 9321751, 9321929, 9322109, 9322279, 9322399, 9322583, 9322741, 9322921]
theorem check24 : primorialChainCheck 4473 primorial4473 184 9320191 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 9320191 9322921 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9320191) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [9323101, 9323267, 9323449, 9323617, 9323801, 9323983, 9324157, 9324317, 9324473, 9324641, 9324817, 9324989, 9325171, 9325319, 9325499, 9325661]
theorem check25 : primorialChainCheck 4473 primorial4473 184 9322921 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 9322921 9325661 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9322921) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [9325829, 9326011, 9326173, 9326329, 9326509, 9326689, 9326861, 9326981, 9327161, 9327343, 9327503, 9327671, 9327853, 9328027, 9328211, 9328391]
theorem check26 : primorialChainCheck 4473 primorial4473 184 9325661 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 9325661 9328391 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9325661) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [9328567, 9328747, 9328883, 9329063, 9329239, 9329417, 9329597, 9329773, 9329953, 9330119, 9330289, 9330469, 9330649, 9330833, 9331013, 9331183]
theorem check27 : primorialChainCheck 4473 primorial4473 184 9328391 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 9328391 9331183 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9328391) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [9331367, 9331547, 9331711, 9331891, 9332039, 9332203, 9332383, 9332563, 9332747, 9332927, 9333109, 9333293, 9333473, 9333647, 9333829, 9334009]
theorem check28 : primorialChainCheck 4473 primorial4473 184 9331183 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 9331183 9334009 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9331183) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [9334177, 9334357, 9334537, 9334709, 9334889, 9335069, 9335233, 9335411, 9335587, 9335759, 9335933, 9336097, 9336263, 9336433, 9336589, 9336749]
theorem check29 : primorialChainCheck 4473 primorial4473 184 9334009 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 9334009 9336749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9334009) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [9336917, 9337099, 9337253, 9337429, 9337597, 9337771, 9337943, 9338111, 9338281, 9338453, 9338629, 9338809, 9338983, 9339163, 9339313, 9339467]
theorem check30 : primorialChainCheck 4473 primorial4473 184 9336749 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 9336749 9339467 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9336749) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [9339623, 9339791, 9339973, 9340147, 9340307, 9340481, 9340657, 9340841, 9341023, 9341201, 9341377, 9341561, 9341729, 9341911, 9342083, 9342239]
theorem check31 : primorialChainCheck 4473 primorial4473 184 9339467 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 9339467 9342239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9339467) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 9255101 9260569 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9255101)
    (mid := 9257839) (hi := 9260569) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 9260569 9265979 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9260569)
    (mid := 9263297) (hi := 9265979) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 9265979 9271517 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9265979)
    (mid := 9268741) (hi := 9271517) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 9271517 9276871 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9271517)
    (mid := 9274247) (hi := 9276871) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 9276871 9282389 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9276871)
    (mid := 9279661) (hi := 9282389) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 9282389 9287659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9282389)
    (mid := 9284987) (hi := 9287659) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 9287659 9293059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9287659)
    (mid := 9290371) (hi := 9293059) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 9293059 9298501 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9293059)
    (mid := 9295831) (hi := 9298501) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 9298501 9303941 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9298501)
    (mid := 9301217) (hi := 9303941) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 9303941 9309367 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9303941)
    (mid := 9306643) (hi := 9309367) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 9309367 9314801 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9309367)
    (mid := 9312031) (hi := 9314801) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 9314801 9320191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9314801)
    (mid := 9317519) (hi := 9320191) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 9320191 9325661 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9320191)
    (mid := 9322921) (hi := 9325661) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 9325661 9331183 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9325661)
    (mid := 9328391) (hi := 9331183) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 9331183 9336749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9331183)
    (mid := 9334009) (hi := 9336749) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 9336749 9342239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9336749)
    (mid := 9339467) (hi := 9342239) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 9255101 9265979 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9255101)
    (mid := 9260569) (hi := 9265979) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 9265979 9276871 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9265979)
    (mid := 9271517) (hi := 9276871) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 9276871 9287659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9276871)
    (mid := 9282389) (hi := 9287659) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 9287659 9298501 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9287659)
    (mid := 9293059) (hi := 9298501) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 9298501 9309367 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9298501)
    (mid := 9303941) (hi := 9309367) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 9309367 9320191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9309367)
    (mid := 9314801) (hi := 9320191) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 9320191 9331183 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9320191)
    (mid := 9325661) (hi := 9331183) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 9331183 9342239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9331183)
    (mid := 9336749) (hi := 9342239) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 9255101 9276871 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9255101)
    (mid := 9265979) (hi := 9276871) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 9276871 9298501 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9276871)
    (mid := 9287659) (hi := 9298501) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 9298501 9320191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9298501)
    (mid := 9309367) (hi := 9320191) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 9320191 9342239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9320191)
    (mid := 9331183) (hi := 9342239) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 9255101 9298501 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9255101)
    (mid := 9276871) (hi := 9298501) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 9298501 9342239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9298501)
    (mid := 9320191) (hi := 9342239) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 9255101 9342239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9255101)
    (mid := 9298501) (hi := 9342239) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 9255101 9342239 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block105

#print axioms B699MiddleExtension.PrimorialBlocks.Block105.joined
