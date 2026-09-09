import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block041

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [3633083, 3633263, 3633431, 3633583, 3633743, 3633923, 3634097, 3634271, 3634439, 3634619, 3634801, 3634963, 3635147, 3635321, 3635459, 3635623]
theorem check0 : primorialChainCheck 4473 primorial4473 184 3632903 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 3632903 3635623 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3632903) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [3635803, 3635987, 3636169, 3636341, 3636511, 3636683, 3636839, 3636991, 3637171, 3637343, 3637523, 3637693, 3637859, 3638039, 3638213, 3638351]
theorem check1 : primorialChainCheck 4473 primorial4473 184 3635623 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 3635623 3638351 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3635623) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [3638521, 3638699, 3638879, 3639043, 3639217, 3639397, 3639577, 3639743, 3639919, 3640081, 3640249, 3640409, 3640591, 3640753, 3640937, 3641119]
theorem check2 : primorialChainCheck 4473 primorial4473 184 3638351 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 3638351 3641119 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3638351) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [3641263, 3641441, 3641623, 3641801, 3641951, 3642101, 3642269, 3642451, 3642631, 3642791, 3642971, 3643147, 3643331, 3643513, 3643681, 3643859]
theorem check3 : primorialChainCheck 4473 primorial4473 184 3641119 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 3641119 3643859 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3641119) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [3644023, 3644183, 3644357, 3644513, 3644659, 3644831, 3645013, 3645193, 3645377, 3645559, 3645737, 3645913, 3646079, 3646261, 3646441, 3646603]
theorem check4 : primorialChainCheck 4473 primorial4473 184 3643859 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 3643859 3646603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3643859) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [3646781, 3646963, 3647101, 3647263, 3647431, 3647599, 3647779, 3647953, 3648137, 3648317, 3648493, 3648661, 3648833, 3649003, 3649181, 3649363]
theorem check5 : primorialChainCheck 4473 primorial4473 184 3646603 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 3646603 3649363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3646603) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [3649531, 3649699, 3649871, 3650051, 3650233, 3650369, 3650533, 3650707, 3650887, 3651023, 3651191, 3651341, 3651497, 3651673, 3651847, 3652031]
theorem check6 : primorialChainCheck 4473 primorial4473 184 3649363 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 3649363 3652031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3649363) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [3652211, 3652391, 3652573, 3652757, 3652939, 3653081, 3653227, 3653401, 3653579, 3653761, 3653911, 3654089, 3654227, 3654397, 3654577, 3654757]
theorem check7 : primorialChainCheck 4473 primorial4473 184 3652031 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 3652031 3654757 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3652031) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [3654929, 3655111, 3655279, 3655451, 3655633, 3655807, 3655987, 3656141, 3656321, 3656491, 3656669, 3656843, 3657013, 3657187, 3657361, 3657539]
theorem check8 : primorialChainCheck 4473 primorial4473 184 3654757 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 3654757 3657539 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3654757) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [3657691, 3657859, 3658021, 3658201, 3658381, 3658547, 3658729, 3658891, 3659069, 3659237, 3659401, 3659567, 3659717, 3659861, 3660037, 3660221]
theorem check9 : primorialChainCheck 4473 primorial4473 184 3657539 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 3657539 3660221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3657539) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [3660403, 3660581, 3660739, 3660919, 3661093, 3661277, 3661457, 3661633, 3661781, 3661963, 3662137, 3662311, 3662473, 3662657, 3662833, 3663017]
theorem check10 : primorialChainCheck 4473 primorial4473 184 3660221 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 3660221 3663017 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3660221) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [3663199, 3663383, 3663563, 3663743, 3663917, 3664091, 3664273, 3664447, 3664631, 3664811, 3664963, 3665147, 3665329, 3665509, 3665677, 3665839]
theorem check11 : primorialChainCheck 4473 primorial4473 184 3663017 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 3663017 3665839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3663017) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [3666023, 3666197, 3666371, 3666539, 3666703, 3666881, 3667063, 3667243, 3667387, 3667567, 3667751, 3667919, 3668099, 3668279, 3668461, 3668629]
theorem check12 : primorialChainCheck 4473 primorial4473 184 3665839 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 3665839 3668629 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3665839) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [3668807, 3668989, 3669173, 3669353, 3669529, 3669709, 3669893, 3670063, 3670243, 3670423, 3670603, 3670783, 3670967, 3671149, 3671333, 3671501]
theorem check13 : primorialChainCheck 4473 primorial4473 184 3668629 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 3668629 3671501 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3668629) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [3671669, 3671851, 3672029, 3672209, 3672379, 3672563, 3672737, 3672919, 3673093, 3673277, 3673457, 3673639, 3673793, 3673961, 3674129, 3674303]
theorem check14 : primorialChainCheck 4473 primorial4473 184 3671501 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 3671501 3674303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3671501) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [3674459, 3674639, 3674819, 3674989, 3675149, 3675313, 3675481, 3675649, 3675829, 3675989, 3676163, 3676339, 3676513, 3676667, 3676847, 3677029]
theorem check15 : primorialChainCheck 4473 primorial4473 184 3674303 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 3674303 3677029 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3674303) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [3677209, 3677383, 3677567, 3677743, 3677923, 3678107, 3678289, 3678461, 3678617, 3678797, 3678979, 3679163, 3679339, 3679519, 3679693, 3679877]
theorem check16 : primorialChainCheck 4473 primorial4473 184 3677029 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 3677029 3679877 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3677029) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [3680059, 3680213, 3680371, 3680549, 3680681, 3680863, 3681043, 3681217, 3681373, 3681553, 3681731, 3681889, 3682061, 3682243, 3682381, 3682543]
theorem check17 : primorialChainCheck 4473 primorial4473 184 3679877 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 3679877 3682543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3679877) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [3682709, 3682891, 3683027, 3683209, 3683357, 3683527, 3683677, 3683839, 3684013, 3684193, 3684371, 3684553, 3684721, 3684881, 3685051, 3685219]
theorem check18 : primorialChainCheck 4473 primorial4473 184 3682543 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 3682543 3685219 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3682543) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [3685403, 3685571, 3685751, 3685883, 3686063, 3686239, 3686411, 3686591, 3686747, 3686929, 3687097, 3687251, 3687433, 3687583, 3687763, 3687941]
theorem check19 : primorialChainCheck 4473 primorial4473 184 3685219 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 3685219 3687941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3685219) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [3688117, 3688301, 3688469, 3688649, 3688801, 3688981, 3689149, 3689327, 3689507, 3689689, 3689869, 3690053, 3690233, 3690397, 3690571, 3690737]
theorem check20 : primorialChainCheck 4473 primorial4473 184 3687941 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 3687941 3690737 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3687941) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [3690899, 3691043, 3691223, 3691403, 3691577, 3691747, 3691921, 3692081, 3692263, 3692431, 3692573, 3692737, 3692873, 3693043, 3693211, 3693373]
theorem check21 : primorialChainCheck 4473 primorial4473 184 3690737 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 3690737 3693373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3690737) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [3693511, 3693691, 3693863, 3694039, 3694217, 3694393, 3694573, 3694741, 3694913, 3695089, 3695261, 3695437, 3695611, 3695773, 3695957, 3696139]
theorem check22 : primorialChainCheck 4473 primorial4473 184 3693373 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 3693373 3696139 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3693373) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [3696313, 3696493, 3696643, 3696827, 3697009, 3697163, 3697321, 3697487, 3697657, 3697787, 3697949, 3698131, 3698311, 3698489, 3698671, 3698839]
theorem check23 : primorialChainCheck 4473 primorial4473 184 3696139 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 3696139 3698839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3696139) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [3699023, 3699203, 3699379, 3699533, 3699701, 3699869, 3700051, 3700187, 3700369, 3700549, 3700727, 3700909, 3701077, 3701251, 3701429, 3701587]
theorem check24 : primorialChainCheck 4473 primorial4473 184 3698839 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 3698839 3701587 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3698839) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [3701759, 3701939, 3702119, 3702301, 3702467, 3702649, 3702823, 3703001, 3703171, 3703351, 3703507, 3703691, 3703871, 3704053, 3704237, 3704417]
theorem check25 : primorialChainCheck 4473 primorial4473 184 3701587 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 3701587 3704417 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3701587) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [3704599, 3704761, 3704941, 3705113, 3705287, 3705469, 3705629, 3705799, 3705959, 3706141, 3706309, 3706489, 3706669, 3706837, 3707021, 3707203]
theorem check26 : primorialChainCheck 4473 primorial4473 184 3704417 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 3704417 3707203 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3704417) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [3707381, 3707537, 3707719, 3707867, 3708049, 3708223, 3708371, 3708539, 3708709, 3708893, 3709073, 3709249, 3709423, 3709577, 3709759, 3709943]
theorem check27 : primorialChainCheck 4473 primorial4473 184 3707203 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 3707203 3709943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3707203) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [3710123, 3710303, 3710467, 3710647, 3710831, 3710963, 3711139, 3711319, 3711497, 3711679, 3711863, 3712043, 3712207, 3712381, 3712559, 3712739]
theorem check28 : primorialChainCheck 4473 primorial4473 184 3709943 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 3709943 3712739 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3709943) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [3712909, 3713081, 3713263, 3713447, 3713627, 3713807, 3713929, 3714103, 3714259, 3714439, 3714617, 3714797, 3714979, 3715111, 3715253, 3715433]
theorem check29 : primorialChainCheck 4473 primorial4473 184 3712739 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 3712739 3715433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3712739) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [3715601, 3715783, 3715967, 3716143, 3716309, 3716483, 3716663, 3716833, 3717011, 3717173, 3717341, 3717499, 3717683, 3717859, 3718037, 3718207]
theorem check30 : primorialChainCheck 4473 primorial4473 184 3715433 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 3715433 3718207 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3715433) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [3718381, 3718553, 3718681, 3718861, 3719029, 3719207, 3719389, 3719567, 3719747, 3719921, 3720103, 3720253, 3720427, 3720583, 3720767, 3720947]
theorem check31 : primorialChainCheck 4473 primorial4473 184 3718207 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 3718207 3720947 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3718207) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 3632903 3638351 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3632903)
    (mid := 3635623) (hi := 3638351) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 3638351 3643859 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3638351)
    (mid := 3641119) (hi := 3643859) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 3643859 3649363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3643859)
    (mid := 3646603) (hi := 3649363) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 3649363 3654757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3649363)
    (mid := 3652031) (hi := 3654757) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 3654757 3660221 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3654757)
    (mid := 3657539) (hi := 3660221) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 3660221 3665839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3660221)
    (mid := 3663017) (hi := 3665839) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 3665839 3671501 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3665839)
    (mid := 3668629) (hi := 3671501) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 3671501 3677029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3671501)
    (mid := 3674303) (hi := 3677029) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 3677029 3682543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3677029)
    (mid := 3679877) (hi := 3682543) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 3682543 3687941 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3682543)
    (mid := 3685219) (hi := 3687941) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 3687941 3693373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3687941)
    (mid := 3690737) (hi := 3693373) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 3693373 3698839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3693373)
    (mid := 3696139) (hi := 3698839) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 3698839 3704417 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3698839)
    (mid := 3701587) (hi := 3704417) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 3704417 3709943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3704417)
    (mid := 3707203) (hi := 3709943) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 3709943 3715433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3709943)
    (mid := 3712739) (hi := 3715433) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 3715433 3720947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3715433)
    (mid := 3718207) (hi := 3720947) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 3632903 3643859 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3632903)
    (mid := 3638351) (hi := 3643859) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 3643859 3654757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3643859)
    (mid := 3649363) (hi := 3654757) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 3654757 3665839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3654757)
    (mid := 3660221) (hi := 3665839) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 3665839 3677029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3665839)
    (mid := 3671501) (hi := 3677029) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 3677029 3687941 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3677029)
    (mid := 3682543) (hi := 3687941) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 3687941 3698839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3687941)
    (mid := 3693373) (hi := 3698839) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 3698839 3709943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3698839)
    (mid := 3704417) (hi := 3709943) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 3709943 3720947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3709943)
    (mid := 3715433) (hi := 3720947) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 3632903 3654757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3632903)
    (mid := 3643859) (hi := 3654757) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 3654757 3677029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3654757)
    (mid := 3665839) (hi := 3677029) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 3677029 3698839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3677029)
    (mid := 3687941) (hi := 3698839) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 3698839 3720947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3698839)
    (mid := 3709943) (hi := 3720947) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 3632903 3677029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3632903)
    (mid := 3654757) (hi := 3677029) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 3677029 3720947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3677029)
    (mid := 3698839) (hi := 3720947) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 3632903 3720947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3632903)
    (mid := 3677029) (hi := 3720947) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 3632903 3720947 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block041

#print axioms B699MiddleExtension.PrimorialBlocks.Block041.joined
