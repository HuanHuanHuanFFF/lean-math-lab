import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block036

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [3193049, 3193213, 3193397, 3193559, 3193717, 3193901, 3194069, 3194227, 3194393, 3194573, 3194743, 3194927, 3195109, 3195271, 3195433, 3195611]
theorem check0 : primorialChainCheck 4473 primorial4473 184 3192887 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 3192887 3195611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3192887) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [3195791, 3195961, 3196133, 3196307, 3196489, 3196651, 3196819, 3196981, 3197143, 3197323, 3197501, 3197669, 3197849, 3198031, 3198199, 3198359]
theorem check1 : primorialChainCheck 4473 primorial4473 184 3195611 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 3195611 3198359 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3195611) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [3198523, 3198683, 3198841, 3199013, 3199187, 3199333, 3199463, 3199643, 3199813, 3199997, 3200177, 3200359, 3200543, 3200689, 3200861, 3201043]
theorem check2 : primorialChainCheck 4473 primorial4473 184 3198359 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 3198359 3201043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3198359) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [3201199, 3201379, 3201551, 3201727, 3201911, 3202079, 3202259, 3202429, 3202607, 3202777, 3202943, 3203117, 3203281, 3203461, 3203639, 3203807]
theorem check3 : primorialChainCheck 4473 primorial4473 184 3201043 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 3201043 3203807 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3201043) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [3203957, 3204139, 3204307, 3204473, 3204647, 3204827, 3205009, 3205141, 3205297, 3205459, 3205637, 3205793, 3205973, 3206143, 3206321, 3206477]
theorem check4 : primorialChainCheck 4473 primorial4473 184 3203807 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 3203807 3206477 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3203807) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [3206653, 3206837, 3207019, 3207199, 3207377, 3207551, 3207733, 3207913, 3208091, 3208253, 3208421, 3208573, 3208729, 3208913, 3209083, 3209267]
theorem check5 : primorialChainCheck 4473 primorial4473 184 3206477 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 3206477 3209267 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3206477) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [3209449, 3209623, 3209797, 3209971, 3210121, 3210301, 3210479, 3210661, 3210827, 3211009, 3211189, 3211367, 3211531, 3211673, 3211843, 3212023]
theorem check6 : primorialChainCheck 4473 primorial4473 184 3209267 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 3209267 3212023 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3209267) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [3212191, 3212353, 3212527, 3212689, 3212863, 3213029, 3213163, 3213283, 3213439, 3213619, 3213803, 3213979, 3214147, 3214327, 3214499, 3214681]
theorem check7 : primorialChainCheck 4473 primorial4473 184 3212023 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 3212023 3214681 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3212023) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [3214837, 3215021, 3215197, 3215369, 3215543, 3215713, 3215893, 3216061, 3216233, 3216413, 3216583, 3216751, 3216931, 3217091, 3217243, 3217421]
theorem check8 : primorialChainCheck 4473 primorial4473 184 3214681 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 3214681 3217421 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3214681) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [3217559, 3217741, 3217891, 3218069, 3218233, 3218417, 3218587, 3218767, 3218939, 3219121, 3219301, 3219479, 3219659, 3219787, 3219967, 3220127]
theorem check9 : primorialChainCheck 4473 primorial4473 184 3217421 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 3217421 3220127 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3217421) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [3220309, 3220471, 3220639, 3220817, 3220967, 3221137, 3221321, 3221503, 3221677, 3221819, 3221983, 3222151, 3222301, 3222467, 3222643, 3222823]
theorem check10 : primorialChainCheck 4473 primorial4473 184 3220127 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 3220127 3222823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3220127) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [3223007, 3223189, 3223373, 3223547, 3223729, 3223903, 3224077, 3224261, 3224413, 3224593, 3224743, 3224909, 3225091, 3225259, 3225437, 3225539]
theorem check11 : primorialChainCheck 4473 primorial4473 184 3222823 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 3222823 3225539 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3222823) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [3225679, 3225853, 3226031, 3226207, 3226357, 3226541, 3226711, 3226891, 3227041, 3227221, 3227369, 3227551, 3227723, 3227899, 3228047, 3228227]
theorem check12 : primorialChainCheck 4473 primorial4473 184 3225539 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 3225539 3228227 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3225539) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [3228403, 3228581, 3228751, 3228899, 3229081, 3229243, 3229409, 3229579, 3229741, 3229909, 3230093, 3230273, 3230449, 3230599, 3230749, 3230881]
theorem check13 : primorialChainCheck 4473 primorial4473 184 3228227 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 3228227 3230881 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3228227) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [3231049, 3231233, 3231413, 3231593, 3231773, 3231953, 3232129, 3232301, 3232477, 3232661, 3232837, 3233011, 3233149, 3233333, 3233509, 3233687]
theorem check14 : primorialChainCheck 4473 primorial4473 184 3230881 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 3230881 3233687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3230881) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [3233863, 3234041, 3234221, 3234383, 3234551, 3234733, 3234901, 3235069, 3235247, 3235411, 3235591, 3235769, 3235901, 3236083, 3236267, 3236449]
theorem check15 : primorialChainCheck 4473 primorial4473 184 3233687 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 3233687 3236449 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3233687) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [3236633, 3236791, 3236969, 3237139, 3237317, 3237491, 3237659, 3237827, 3237991, 3238171, 3238349, 3238513, 3238681, 3238861, 3239023, 3239191]
theorem check16 : primorialChainCheck 4473 primorial4473 184 3236449 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 3236449 3239191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3236449) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [3239351, 3239507, 3239681, 3239857, 3240037, 3240197, 3240371, 3240553, 3240737, 3240917, 3241097, 3241253, 3241429, 3241573, 3241757, 3241937]
theorem check17 : primorialChainCheck 4473 primorial4473 184 3239191 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 3239191 3241937 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3239191) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [3242111, 3242279, 3242431, 3242579, 3242753, 3242929, 3243113, 3243293, 3243473, 3243649, 3243833, 3244013, 3244187, 3244369, 3244543, 3244721]
theorem check18 : primorialChainCheck 4473 primorial4473 184 3241937 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 3241937 3244721 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3241937) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [3244889, 3245063, 3245239, 3245423, 3245591, 3245771, 3245951, 3246127, 3246307, 3246479, 3246653, 3246799, 3246977, 3247147, 3247331, 3247513]
theorem check19 : primorialChainCheck 4473 primorial4473 184 3244721 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 3244721 3247513 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3244721) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [3247687, 3247847, 3248027, 3248209, 3248393, 3248561, 3248743, 3248909, 3249083, 3249263, 3249443, 3249613, 3249793, 3249977, 3250157, 3250333]
theorem check20 : primorialChainCheck 4473 primorial4473 184 3247513 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 3247513 3250333 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3247513) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [3250517, 3250693, 3250853, 3251023, 3251207, 3251389, 3251569, 3251749, 3251933, 3252091, 3252217, 3252397, 3252577, 3252761, 3252943, 3253127]
theorem check21 : primorialChainCheck 4473 primorial4473 184 3250333 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 3250333 3253127 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3250333) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [3253301, 3253469, 3253631, 3253813, 3253981, 3254159, 3254341, 3254521, 3254689, 3254869, 3254959, 3255139, 3255319, 3255493, 3255671, 3255853]
theorem check22 : primorialChainCheck 4473 primorial4473 184 3253127 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 3253127 3255853 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3253127) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [3256031, 3256181, 3256361, 3256531, 3256711, 3256889, 3257069, 3257239, 3257413, 3257549, 3257731, 3257879, 3258053, 3258223, 3258391, 3258569]
theorem check23 : primorialChainCheck 4473 primorial4473 184 3255853 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 3255853 3258569 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3255853) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [3258743, 3258919, 3259097, 3259253, 3259429, 3259609, 3259793, 3259973, 3260149, 3260321, 3260501, 3260683, 3260867, 3261029, 3261211, 3261373]
theorem check24 : primorialChainCheck 4473 primorial4473 184 3258569 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 3258569 3261373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3258569) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [3261553, 3261737, 3261911, 3262081, 3262241, 3262421, 3262601, 3262769, 3262949, 3263131, 3263297, 3263471, 3263647, 3263831, 3264011, 3264193]
theorem check25 : primorialChainCheck 4473 primorial4473 184 3261373 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 3261373 3264193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3261373) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [3264343, 3264491, 3264649, 3264829, 3265007, 3265187, 3265369, 3265543, 3265727, 3265907, 3266089, 3266269, 3266447, 3266617, 3266801, 3266957]
theorem check26 : primorialChainCheck 4473 primorial4473 184 3264193 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 3264193 3266957 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3264193) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [3267139, 3267317, 3267499, 3267647, 3267809, 3267973, 3268157, 3268339, 3268523, 3268693, 3268871, 3269047, 3269213, 3269393, 3269561, 3269723]
theorem check27 : primorialChainCheck 4473 primorial4473 184 3266957 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 3266957 3269723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3266957) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [3269897, 3270073, 3270257, 3270433, 3270607, 3270769, 3270929, 3271111, 3271277, 3271459, 3271601, 3271753, 3271927, 3272089, 3272239, 3272419]
theorem check28 : primorialChainCheck 4473 primorial4473 184 3269723 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 3269723 3272419 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3269723) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [3272587, 3272747, 3272903, 3273079, 3273239, 3273421, 3273601, 3273773, 3273937, 3274121, 3274291, 3274459, 3274643, 3274823, 3275003, 3275179]
theorem check29 : primorialChainCheck 4473 primorial4473 184 3272419 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 3272419 3275179 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3272419) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [3275359, 3275537, 3275719, 3275903, 3276083, 3276263, 3276409, 3276587, 3276719, 3276883, 3277067, 3277217, 3277399, 3277579, 3277763, 3277943]
theorem check30 : primorialChainCheck 4473 primorial4473 184 3275179 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 3275179 3277943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3275179) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [3278117, 3278299, 3278477, 3278651, 3278833, 3279007, 3279187, 3279361, 3279541, 3279709, 3279841, 3280009, 3280187, 3280367, 3280549, 3280703]
theorem check31 : primorialChainCheck 4473 primorial4473 184 3277943 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 3277943 3280703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3277943) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 3192887 3198359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3192887)
    (mid := 3195611) (hi := 3198359) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 3198359 3203807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3198359)
    (mid := 3201043) (hi := 3203807) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 3203807 3209267 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3203807)
    (mid := 3206477) (hi := 3209267) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 3209267 3214681 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3209267)
    (mid := 3212023) (hi := 3214681) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 3214681 3220127 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3214681)
    (mid := 3217421) (hi := 3220127) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 3220127 3225539 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3220127)
    (mid := 3222823) (hi := 3225539) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 3225539 3230881 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3225539)
    (mid := 3228227) (hi := 3230881) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 3230881 3236449 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3230881)
    (mid := 3233687) (hi := 3236449) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 3236449 3241937 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3236449)
    (mid := 3239191) (hi := 3241937) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 3241937 3247513 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3241937)
    (mid := 3244721) (hi := 3247513) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 3247513 3253127 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3247513)
    (mid := 3250333) (hi := 3253127) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 3253127 3258569 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3253127)
    (mid := 3255853) (hi := 3258569) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 3258569 3264193 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3258569)
    (mid := 3261373) (hi := 3264193) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 3264193 3269723 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3264193)
    (mid := 3266957) (hi := 3269723) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 3269723 3275179 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3269723)
    (mid := 3272419) (hi := 3275179) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 3275179 3280703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3275179)
    (mid := 3277943) (hi := 3280703) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 3192887 3203807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3192887)
    (mid := 3198359) (hi := 3203807) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 3203807 3214681 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3203807)
    (mid := 3209267) (hi := 3214681) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 3214681 3225539 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3214681)
    (mid := 3220127) (hi := 3225539) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 3225539 3236449 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3225539)
    (mid := 3230881) (hi := 3236449) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 3236449 3247513 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3236449)
    (mid := 3241937) (hi := 3247513) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 3247513 3258569 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3247513)
    (mid := 3253127) (hi := 3258569) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 3258569 3269723 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3258569)
    (mid := 3264193) (hi := 3269723) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 3269723 3280703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3269723)
    (mid := 3275179) (hi := 3280703) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 3192887 3214681 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3192887)
    (mid := 3203807) (hi := 3214681) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 3214681 3236449 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3214681)
    (mid := 3225539) (hi := 3236449) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 3236449 3258569 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3236449)
    (mid := 3247513) (hi := 3258569) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 3258569 3280703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3258569)
    (mid := 3269723) (hi := 3280703) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 3192887 3236449 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3192887)
    (mid := 3214681) (hi := 3236449) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 3236449 3280703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3236449)
    (mid := 3258569) (hi := 3280703) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 3192887 3280703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3192887)
    (mid := 3236449) (hi := 3280703) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 3192887 3280703 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block036

#print axioms B699MiddleExtension.PrimorialBlocks.Block036.joined
