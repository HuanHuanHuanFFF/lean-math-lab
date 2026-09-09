import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block037

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [3280877, 3281059, 3281233, 3281417, 3281573, 3281723, 3281857, 3282029, 3282211, 3282379, 3282563, 3282743, 3282913, 3283097, 3283271, 3283451]
theorem check0 : primorialChainCheck 4473 primorial4473 184 3280703 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 3280703 3283451 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3280703) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [3283633, 3283817, 3283997, 3284173, 3284341, 3284521, 3284693, 3284873, 3285041, 3285203, 3285377, 3285559, 3285739, 3285923, 3286097, 3286277]
theorem check1 : primorialChainCheck 4473 primorial4473 184 3283451 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 3283451 3286277 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3283451) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [3286453, 3286607, 3286781, 3286957, 3287101, 3287267, 3287447, 3287629, 3287813, 3287989, 3288169, 3288353, 3288529, 3288713, 3288889, 3289067]
theorem check2 : primorialChainCheck 4473 primorial4473 184 3286277 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 3286277 3289067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3286277) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [3289243, 3289423, 3289597, 3289777, 3289961, 3290117, 3290281, 3290459, 3290641, 3290821, 3290983, 3291163, 3291341, 3291511, 3291689, 3291839]
theorem check3 : primorialChainCheck 4473 primorial4473 184 3289067 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 3289067 3291839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3289067) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [3292019, 3292183, 3292351, 3292511, 3292691, 3292873, 3293057, 3293239, 3293419, 3293603, 3293749, 3293923, 3294103, 3294287, 3294461, 3294631]
theorem check4 : primorialChainCheck 4473 primorial4473 184 3291839 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 3291839 3294631 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3291839) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [3294791, 3294953, 3295121, 3295291, 3295471, 3295597, 3295771, 3295939, 3296119, 3296287, 3296437, 3296603, 3296779, 3296903, 3297083, 3297263]
theorem check5 : primorialChainCheck 4473 primorial4473 184 3294631 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 3294631 3297263 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3294631) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [3297433, 3297617, 3297787, 3297937, 3298117, 3298297, 3298481, 3298657, 3298817, 3298979, 3299161, 3299323, 3299503, 3299687, 3299869, 3300041]
theorem check6 : primorialChainCheck 4473 primorial4473 184 3297263 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 3297263 3300041 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3297263) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [3300217, 3300389, 3300571, 3300749, 3300923, 3301093, 3301267, 3301427, 3301603, 3301787, 3301957, 3302137, 3302303, 3302477, 3302617, 3302797]
theorem check7 : primorialChainCheck 4473 primorial4473 184 3300041 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 3300041 3302797 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3300041) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [3302939, 3303109, 3303281, 3303449, 3303623, 3303799, 3303977, 3304153, 3304331, 3304513, 3304687, 3304871, 3305047, 3305227, 3305389, 3305573]
theorem check8 : primorialChainCheck 4473 primorial4473 184 3302797 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 3302797 3305573 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3302797) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [3305749, 3305927, 3306091, 3306271, 3306451, 3306631, 3306811, 3306991, 3307153, 3307327, 3307489, 3307663, 3307831, 3307973, 3308153, 3308323]
theorem check9 : primorialChainCheck 4473 primorial4473 184 3305573 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 3305573 3308323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3305573) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [3308507, 3308677, 3308819, 3309001, 3309179, 3309359, 3309541, 3309721, 3309869, 3310049, 3310207, 3310387, 3310547, 3310721, 3310891, 3311059]
theorem check10 : primorialChainCheck 4473 primorial4473 184 3308323 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 3308323 3311059 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3308323) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [3311233, 3311411, 3311593, 3311741, 3311921, 3312097, 3312227, 3312389, 3312571, 3312737, 3312919, 3313099, 3313267, 3313439, 3313603, 3313787]
theorem check11 : primorialChainCheck 4473 primorial4473 184 3311059 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 3311059 3313787 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3311059) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [3313969, 3314147, 3314329, 3314513, 3314687, 3314837, 3315007, 3315173, 3315353, 3315523, 3315701, 3315883, 3316067, 3316223, 3316403, 3316571]
theorem check12 : primorialChainCheck 4473 primorial4473 184 3313787 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 3313787 3316571 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3313787) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [3316723, 3316903, 3317033, 3317203, 3317357, 3317537, 3317719, 3317903, 3318083, 3318251, 3318433, 3318613, 3318793, 3318947, 3319123, 3319289]
theorem check13 : primorialChainCheck 4473 primorial4473 184 3316571 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 3316571 3319289 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3316571) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [3319447, 3319627, 3319807, 3319969, 3320143, 3320311, 3320477, 3320651, 3320833, 3320971, 3321151, 3321323, 3321503, 3321679, 3321859, 3322043]
theorem check14 : primorialChainCheck 4473 primorial4473 184 3319289 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 3319289 3322043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3319289) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [3322219, 3322399, 3322577, 3322757, 3322931, 3323113, 3323249, 3323399, 3323563, 3323731, 3323869, 3324053, 3324227, 3324407, 3324577, 3324757]
theorem check15 : primorialChainCheck 4473 primorial4473 184 3322043 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 3322043 3324757 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3322043) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [3324941, 3325123, 3325303, 3325457, 3325631, 3325811, 3325991, 3326173, 3326347, 3326507, 3326671, 3326831, 3327011, 3327193, 3327377, 3327551]
theorem check16 : primorialChainCheck 4473 primorial4473 184 3324757 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 3324757 3327551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3324757) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [3327713, 3327871, 3328049, 3328231, 3328411, 3328573, 3328747, 3328909, 3329087, 3329267, 3329449, 3329633, 3329801, 3329981, 3330139, 3330323]
theorem check17 : primorialChainCheck 4473 primorial4473 184 3327551 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 3327551 3330323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3327551) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [3330497, 3330667, 3330809, 3330983, 3331157, 3331333, 3331499, 3331673, 3331837, 3331997, 3332167, 3332341, 3332507, 3332687, 3332869, 3333053]
theorem check18 : primorialChainCheck 4473 primorial4473 184 3330323 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 3330323 3333053 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3330323) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [3333233, 3333401, 3333527, 3333703, 3333823, 3333977, 3334153, 3334337, 3334493, 3334673, 3334843, 3335021, 3335201, 3335369, 3335537, 3335707]
theorem check19 : primorialChainCheck 4473 primorial4473 184 3333053 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 3333053 3335707 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3333053) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [3335867, 3336017, 3336181, 3336341, 3336523, 3336689, 3336833, 3337013, 3337189, 3337361, 3337501, 3337669, 3337847, 3338017, 3338201, 3338371]
theorem check20 : primorialChainCheck 4473 primorial4473 184 3335707 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 3335707 3338371 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3335707) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [3338549, 3338719, 3338903, 3339067, 3339247, 3339431, 3339607, 3339751, 3339913, 3340097, 3340277, 3340459, 3340633, 3340817, 3340973, 3341113]
theorem check21 : primorialChainCheck 4473 primorial4473 184 3338371 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 3338371 3341113 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3338371) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [3341291, 3341449, 3341627, 3341801, 3341971, 3342151, 3342331, 3342509, 3342683, 3342847, 3343013, 3343147, 3343309, 3343481, 3343663, 3343831]
theorem check22 : primorialChainCheck 4473 primorial4473 184 3341113 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 3341113 3343831 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3341113) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [3343957, 3344119, 3344303, 3344449, 3344633, 3344791, 3344951, 3345127, 3345263, 3345439, 3345611, 3345781, 3345961, 3346139, 3346309, 3346493]
theorem check23 : primorialChainCheck 4473 primorial4473 184 3343831 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 3343831 3346493 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3343831) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [3346669, 3346843, 3346999, 3347171, 3347341, 3347503, 3347683, 3347867, 3348043, 3348227, 3348407, 3348581, 3348733, 3348913, 3349097, 3349279]
theorem check24 : primorialChainCheck 4473 primorial4473 184 3346493 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 3346493 3349279 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3346493) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [3349447, 3349613, 3349793, 3349939, 3350107, 3350279, 3350453, 3350629, 3350803, 3350983, 3351121, 3351301, 3351461, 3351643, 3351823, 3352003]
theorem check25 : primorialChainCheck 4473 primorial4473 184 3349279 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 3349279 3352003 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3349279) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [3352187, 3352361, 3352537, 3352711, 3352889, 3353069, 3353249, 3353429, 3353599, 3353773, 3353927, 3354097, 3354269, 3354443, 3354613, 3354787]
theorem check26 : primorialChainCheck 4473 primorial4473 184 3352003 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 3352003 3354787 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3352003) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [3354971, 3355151, 3355291, 3355459, 3355643, 3355819, 3355997, 3356173, 3356357, 3356539, 3356723, 3356893, 3357071, 3357253, 3357413, 3357593]
theorem check27 : primorialChainCheck 4473 primorial4473 184 3354787 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 3354787 3357593 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3354787) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [3357769, 3357943, 3358123, 3358301, 3358471, 3358651, 3358799, 3358973, 3359113, 3359287, 3359471, 3359641, 3359821, 3359989, 3360173, 3360347]
theorem check28 : primorialChainCheck 4473 primorial4473 184 3357593 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 3357593 3360347 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3357593) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [3360529, 3360703, 3360869, 3361049, 3361229, 3361387, 3361517, 3361679, 3361847, 3362017, 3362159, 3362329, 3362497, 3362657, 3362831, 3363011]
theorem check29 : primorialChainCheck 4473 primorial4473 184 3360347 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 3360347 3363011 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3360347) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [3363193, 3363343, 3363527, 3363691, 3363859, 3364043, 3364223, 3364397, 3364579, 3364763, 3364937, 3365111, 3365287, 3365449, 3365633, 3365809]
theorem check30 : primorialChainCheck 4473 primorial4473 184 3363011 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 3363011 3365809 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3363011) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [3365987, 3366133, 3366317, 3366497, 3366679, 3366859, 3367027, 3367211, 3367387, 3367571, 3367733, 3367909, 3368093, 3368269, 3368423, 3368593]
theorem check31 : primorialChainCheck 4473 primorial4473 184 3365809 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 3365809 3368593 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3365809) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 3280703 3286277 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3280703)
    (mid := 3283451) (hi := 3286277) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 3286277 3291839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3286277)
    (mid := 3289067) (hi := 3291839) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 3291839 3297263 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3291839)
    (mid := 3294631) (hi := 3297263) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 3297263 3302797 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3297263)
    (mid := 3300041) (hi := 3302797) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 3302797 3308323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3302797)
    (mid := 3305573) (hi := 3308323) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 3308323 3313787 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3308323)
    (mid := 3311059) (hi := 3313787) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 3313787 3319289 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3313787)
    (mid := 3316571) (hi := 3319289) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 3319289 3324757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3319289)
    (mid := 3322043) (hi := 3324757) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 3324757 3330323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3324757)
    (mid := 3327551) (hi := 3330323) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 3330323 3335707 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3330323)
    (mid := 3333053) (hi := 3335707) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 3335707 3341113 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3335707)
    (mid := 3338371) (hi := 3341113) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 3341113 3346493 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3341113)
    (mid := 3343831) (hi := 3346493) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 3346493 3352003 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3346493)
    (mid := 3349279) (hi := 3352003) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 3352003 3357593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3352003)
    (mid := 3354787) (hi := 3357593) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 3357593 3363011 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3357593)
    (mid := 3360347) (hi := 3363011) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 3363011 3368593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3363011)
    (mid := 3365809) (hi := 3368593) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 3280703 3291839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3280703)
    (mid := 3286277) (hi := 3291839) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 3291839 3302797 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3291839)
    (mid := 3297263) (hi := 3302797) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 3302797 3313787 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3302797)
    (mid := 3308323) (hi := 3313787) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 3313787 3324757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3313787)
    (mid := 3319289) (hi := 3324757) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 3324757 3335707 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3324757)
    (mid := 3330323) (hi := 3335707) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 3335707 3346493 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3335707)
    (mid := 3341113) (hi := 3346493) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 3346493 3357593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3346493)
    (mid := 3352003) (hi := 3357593) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 3357593 3368593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3357593)
    (mid := 3363011) (hi := 3368593) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 3280703 3302797 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3280703)
    (mid := 3291839) (hi := 3302797) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 3302797 3324757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3302797)
    (mid := 3313787) (hi := 3324757) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 3324757 3346493 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3324757)
    (mid := 3335707) (hi := 3346493) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 3346493 3368593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3346493)
    (mid := 3357593) (hi := 3368593) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 3280703 3324757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3280703)
    (mid := 3302797) (hi := 3324757) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 3324757 3368593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3324757)
    (mid := 3346493) (hi := 3368593) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 3280703 3368593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3280703)
    (mid := 3324757) (hi := 3368593) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 3280703 3368593 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block037

#print axioms B699MiddleExtension.PrimorialBlocks.Block037.joined
