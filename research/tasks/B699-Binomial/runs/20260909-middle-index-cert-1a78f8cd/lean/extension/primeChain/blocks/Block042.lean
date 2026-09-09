import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block042

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [3721129, 3721303, 3721477, 3721631, 3721813, 3721981, 3722149, 3722293, 3722443, 3722623, 3722801, 3722951, 3723121, 3723299, 3723469, 3723649]
theorem check0 : primorialChainCheck 4473 primorial4473 184 3720947 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 3720947 3723649 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3720947) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [3723809, 3723959, 3724129, 3724313, 3724489, 3724667, 3724849, 3725027, 3725207, 3725389, 3725573, 3725753, 3725933, 3726103, 3726277, 3726461]
theorem check1 : primorialChainCheck 4473 primorial4473 184 3723649 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 3723649 3726461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3723649) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [3726631, 3726809, 3726991, 3727169, 3727313, 3727489, 3727663, 3727847, 3728017, 3728189, 3728371, 3728537, 3728719, 3728891, 3729071, 3729241]
theorem check2 : primorialChainCheck 4473 primorial4473 184 3726461 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 3726461 3729241 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3726461) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [3729419, 3729589, 3729767, 3729931, 3730093, 3730277, 3730457, 3730619, 3730801, 3730967, 3731141, 3731311, 3731491, 3731627, 3731803, 3731983]
theorem check3 : primorialChainCheck 4473 primorial4473 184 3729241 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 3729241 3731983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3729241) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [3732167, 3732349, 3732511, 3732691, 3732857, 3733031, 3733211, 3733381, 3733549, 3733729, 3733913, 3734083, 3734261, 3734443, 3734617, 3734779]
theorem check4 : primorialChainCheck 4473 primorial4473 184 3731983 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 3731983 3734779 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3731983) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [3734957, 3735139, 3735323, 3735497, 3735679, 3735863, 3736037, 3736219, 3736393, 3736573, 3736739, 3736877, 3737057, 3737233, 3737417, 3737599]
theorem check5 : primorialChainCheck 4473 primorial4473 184 3734779 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 3734779 3737599 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3734779) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [3737749, 3737933, 3738107, 3738289, 3738457, 3738617, 3738781, 3738947, 3739129, 3739301, 3739481, 3739663, 3739843, 3740021, 3740201, 3740371]
theorem check6 : primorialChainCheck 4473 primorial4473 184 3737599 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 3737599 3740371 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3737599) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [3740537, 3740707, 3740879, 3741053, 3741223, 3741407, 3741589, 3741767, 3741943, 3742127, 3742301, 3742477, 3742649, 3742793, 3742961, 3743141]
theorem check7 : primorialChainCheck 4473 primorial4473 184 3740371 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 3740371 3743141 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3740371) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [3743321, 3743497, 3743681, 3743863, 3744031, 3744187, 3744371, 3744551, 3744731, 3744869, 3745051, 3745229, 3745397, 3745543, 3745723, 3745897]
theorem check8 : primorialChainCheck 4473 primorial4473 184 3743141 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 3743141 3745897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3743141) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [3746081, 3746233, 3746399, 3746581, 3746747, 3746929, 3747097, 3747241, 3747391, 3747547, 3747727, 3747899, 3748079, 3748243, 3748417, 3748597]
theorem check9 : primorialChainCheck 4473 primorial4473 184 3745897 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 3745897 3748597 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3745897) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [3748781, 3748963, 3749117, 3749293, 3749477, 3749657, 3749833, 3750017, 3750199, 3750379, 3750563, 3750739, 3750919, 3751103, 3751283, 3751463]
theorem check10 : primorialChainCheck 4473 primorial4473 184 3748597 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 3748597 3751463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3748597) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [3751639, 3751823, 3751919, 3752093, 3752261, 3752431, 3752591, 3752773, 3752939, 3753109, 3753289, 3753457, 3753611, 3753793, 3753961, 3754141]
theorem check11 : primorialChainCheck 4473 primorial4473 184 3751463 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 3751463 3754141 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3751463) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [3754321, 3754469, 3754607, 3754789, 3754973, 3755153, 3755333, 3755513, 3755677, 3755849, 3756029, 3756211, 3756391, 3756559, 3756733, 3756917]
theorem check12 : primorialChainCheck 4473 primorial4473 184 3754141 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 3754141 3756917 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3754141) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [3757097, 3757279, 3757463, 3757643, 3757823, 3757981, 3758159, 3758341, 3758509, 3758693, 3758861, 3759037, 3759221, 3759377, 3759527, 3759683]
theorem check13 : primorialChainCheck 4473 primorial4473 184 3756917 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 3756917 3759683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3756917) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [3759863, 3760039, 3760193, 3760363, 3760541, 3760693, 3760871, 3761047, 3761231, 3761413, 3761591, 3761773, 3761929, 3762103, 3762277, 3762461]
theorem check14 : primorialChainCheck 4473 primorial4473 184 3759683 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 3759683 3762461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3759683) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [3762631, 3762799, 3762977, 3763153, 3763327, 3763483, 3763667, 3763831, 3764009, 3764149, 3764329, 3764503, 3764687, 3764863, 3765023, 3765197]
theorem check15 : primorialChainCheck 4473 primorial4473 184 3762461 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 3762461 3765197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3762461) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [3765373, 3765547, 3765709, 3765893, 3766073, 3766253, 3766421, 3766601, 3766783, 3766943, 3767123, 3767297, 3767471, 3767633, 3767809, 3767987]
theorem check16 : primorialChainCheck 4473 primorial4473 184 3765197 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 3765197 3767987 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3765197) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [3768139, 3768311, 3768493, 3768673, 3768847, 3769027, 3769193, 3769361, 3769531, 3769709, 3769891, 3770071, 3770233, 3770381, 3770539, 3770717]
theorem check17 : primorialChainCheck 4473 primorial4473 184 3767987 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 3767987 3770717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3767987) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [3770891, 3771071, 3771211, 3771377, 3771529, 3771707, 3771881, 3772031, 3772193, 3772343, 3772493, 3772633, 3772801, 3772981, 3773137, 3773321]
theorem check18 : primorialChainCheck 4473 primorial4473 184 3770717 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 3770717 3773321 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3770717) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [3773503, 3773657, 3773839, 3774019, 3774203, 3774373, 3774517, 3774689, 3774871, 3775043, 3775201, 3775367, 3775549, 3775729, 3775913, 3776093]
theorem check19 : primorialChainCheck 4473 primorial4473 184 3773321 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 3773321 3776093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3773321) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [3776273, 3776441, 3776609, 3776789, 3776957, 3777139, 3777317, 3777491, 3777671, 3777853, 3778007, 3778163, 3778343, 3778517, 3778681, 3778861]
theorem check20 : primorialChainCheck 4473 primorial4473 184 3776093 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 3776093 3778861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3776093) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [3779033, 3779213, 3779387, 3779539, 3779707, 3779891, 3780067, 3780251, 3780433, 3780611, 3780793, 3780971, 3781153, 3781313, 3781489, 3781669]
theorem check21 : primorialChainCheck 4473 primorial4473 184 3778861 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 3778861 3781669 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3778861) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [3781853, 3782021, 3782201, 3782377, 3782561, 3782699, 3782869, 3783053, 3783211, 3783391, 3783551, 3783733, 3783893, 3784073, 3784241, 3784411]
theorem check22 : primorialChainCheck 4473 primorial4473 184 3781669 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 3781669 3784411 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3781669) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [3784577, 3784757, 3784927, 3785083, 3785261, 3785417, 3785569, 3785753, 3785927, 3786109, 3786287, 3786463, 3786647, 3786829, 3786989, 3787163]
theorem check23 : primorialChainCheck 4473 primorial4473 184 3784411 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 3784411 3787163 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3784411) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [3787321, 3787501, 3787657, 3787811, 3787981, 3788159, 3788333, 3788509, 3788683, 3788861, 3789029, 3789197, 3789377, 3789529, 3789713, 3789893]
theorem check24 : primorialChainCheck 4473 primorial4473 184 3787163 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 3787163 3789893 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3787163) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [3790069, 3790247, 3790393, 3790571, 3790753, 3790933, 3791107, 3791273, 3791453, 3791569, 3791741, 3791911, 3792091, 3792259, 3792443, 3792599]
theorem check25 : primorialChainCheck 4473 primorial4473 184 3789893 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 3789893 3792599 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3789893) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [3792781, 3792959, 3793133, 3793313, 3793487, 3793649, 3793819, 3794003, 3794171, 3794353, 3794537, 3794719, 3794899, 3795073, 3795251, 3795427]
theorem check26 : primorialChainCheck 4473 primorial4473 184 3792599 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 3792599 3795427 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3792599) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [3795593, 3795773, 3795937, 3796109, 3796283, 3796453, 3796621, 3796799, 3796963, 3797141, 3797281, 3797447, 3797623, 3797797, 3797957, 3798131]
theorem check27 : primorialChainCheck 4473 primorial4473 184 3795427 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 3795427 3798131 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3795427) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [3798299, 3798481, 3798659, 3798829, 3799013, 3799193, 3799349, 3799513, 3799681, 3799837, 3800021, 3800201, 3800371, 3800549, 3800723, 3800887]
theorem check28 : primorialChainCheck 4473 primorial4473 184 3798131 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 3798131 3800887 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3798131) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [3801067, 3801247, 3801431, 3801599, 3801779, 3801953, 3802133, 3802283, 3802417, 3802583, 3802763, 3802919, 3803077, 3803251, 3803419, 3803603]
theorem check29 : primorialChainCheck 4473 primorial4473 184 3800887 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 3800887 3803603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3800887) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [3803783, 3803951, 3804121, 3804301, 3804473, 3804653, 3804811, 3804989, 3805171, 3805313, 3805489, 3805673, 3805853, 3806029, 3806207, 3806347]
theorem check30 : primorialChainCheck 4473 primorial4473 184 3803603 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 3803603 3806347 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3803603) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [3806527, 3806711, 3806867, 3806981, 3807119, 3807289, 3807457, 3807593, 3807757, 3807941, 3808109, 3808283, 3808429, 3808591, 3808757, 3808913]
theorem check31 : primorialChainCheck 4473 primorial4473 184 3806347 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 3806347 3808913 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3806347) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 3720947 3726461 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3720947)
    (mid := 3723649) (hi := 3726461) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 3726461 3731983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3726461)
    (mid := 3729241) (hi := 3731983) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 3731983 3737599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3731983)
    (mid := 3734779) (hi := 3737599) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 3737599 3743141 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3737599)
    (mid := 3740371) (hi := 3743141) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 3743141 3748597 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3743141)
    (mid := 3745897) (hi := 3748597) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 3748597 3754141 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3748597)
    (mid := 3751463) (hi := 3754141) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 3754141 3759683 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3754141)
    (mid := 3756917) (hi := 3759683) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 3759683 3765197 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3759683)
    (mid := 3762461) (hi := 3765197) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 3765197 3770717 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3765197)
    (mid := 3767987) (hi := 3770717) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 3770717 3776093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3770717)
    (mid := 3773321) (hi := 3776093) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 3776093 3781669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3776093)
    (mid := 3778861) (hi := 3781669) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 3781669 3787163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3781669)
    (mid := 3784411) (hi := 3787163) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 3787163 3792599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3787163)
    (mid := 3789893) (hi := 3792599) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 3792599 3798131 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3792599)
    (mid := 3795427) (hi := 3798131) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 3798131 3803603 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3798131)
    (mid := 3800887) (hi := 3803603) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 3803603 3808913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3803603)
    (mid := 3806347) (hi := 3808913) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 3720947 3731983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3720947)
    (mid := 3726461) (hi := 3731983) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 3731983 3743141 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3731983)
    (mid := 3737599) (hi := 3743141) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 3743141 3754141 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3743141)
    (mid := 3748597) (hi := 3754141) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 3754141 3765197 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3754141)
    (mid := 3759683) (hi := 3765197) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 3765197 3776093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3765197)
    (mid := 3770717) (hi := 3776093) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 3776093 3787163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3776093)
    (mid := 3781669) (hi := 3787163) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 3787163 3798131 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3787163)
    (mid := 3792599) (hi := 3798131) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 3798131 3808913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3798131)
    (mid := 3803603) (hi := 3808913) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 3720947 3743141 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3720947)
    (mid := 3731983) (hi := 3743141) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 3743141 3765197 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3743141)
    (mid := 3754141) (hi := 3765197) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 3765197 3787163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3765197)
    (mid := 3776093) (hi := 3787163) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 3787163 3808913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3787163)
    (mid := 3798131) (hi := 3808913) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 3720947 3765197 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3720947)
    (mid := 3743141) (hi := 3765197) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 3765197 3808913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3765197)
    (mid := 3787163) (hi := 3808913) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 3720947 3808913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3720947)
    (mid := 3765197) (hi := 3808913) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 3720947 3808913 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block042

#print axioms B699MiddleExtension.PrimorialBlocks.Block042.joined
