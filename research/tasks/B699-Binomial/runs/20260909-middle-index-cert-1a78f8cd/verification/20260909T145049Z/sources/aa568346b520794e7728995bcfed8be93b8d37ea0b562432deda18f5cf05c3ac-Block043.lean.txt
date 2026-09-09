import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block043

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [3809089, 3809257, 3809431, 3809599, 3809777, 3809959, 3810143, 3810319, 3810503, 3810679, 3810841, 3811013, 3811193, 3811373, 3811547, 3811711]
theorem check0 : primorialChainCheck 4473 primorial4473 184 3808913 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 3808913 3811711 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3808913) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [3811891, 3812071, 3812219, 3812399, 3812581, 3812759, 3812923, 3813097, 3813233, 3813401, 3813581, 3813757, 3813941, 3814123, 3814301, 3814483]
theorem check1 : primorialChainCheck 4473 primorial4473 184 3811711 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 3811711 3814483 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3811711) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [3814667, 3814841, 3814997, 3815179, 3815363, 3815533, 3815711, 3815893, 3816073, 3816233, 3816391, 3816563, 3816737, 3816913, 3817063, 3817237]
theorem check2 : primorialChainCheck 4473 primorial4473 184 3814483 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 3814483 3817237 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3814483) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [3817397, 3817579, 3817757, 3817939, 3818123, 3818293, 3818473, 3818651, 3818831, 3819007, 3819187, 3819371, 3819527, 3819709, 3819877, 3820057]
theorem check3 : primorialChainCheck 4473 primorial4473 184 3817237 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 3817237 3820057 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3817237) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [3820237, 3820391, 3820571, 3820727, 3820891, 3821057, 3821239, 3821423, 3821581, 3821737, 3821911, 3822073, 3822253, 3822421, 3822601, 3822779]
theorem check4 : primorialChainCheck 4473 primorial4473 184 3820057 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 3820057 3822779 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3820057) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [3822947, 3823117, 3823301, 3823459, 3823627, 3823811, 3823991, 3824173, 3824347, 3824519, 3824683, 3824867, 3825049, 3825229, 3825413, 3825559]
theorem check5 : primorialChainCheck 4473 primorial4473 184 3822779 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 3822779 3825559 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3822779) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [3825743, 3825923, 3826019, 3826187, 3826367, 3826541, 3826723, 3826897, 3827071, 3827249, 3827429, 3827611, 3827783, 3827953, 3828133, 3828311]
theorem check6 : primorialChainCheck 4473 primorial4473 184 3825559 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 3825559 3828311 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3825559) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [3828467, 3828637, 3828821, 3828973, 3829157, 3829333, 3829499, 3829681, 3829853, 3830033, 3830207, 3830377, 3830557, 3830737, 3830909, 3831067]
theorem check7 : primorialChainCheck 4473 primorial4473 184 3828311 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 3828311 3831067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3828311) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [3831221, 3831379, 3831557, 3831733, 3831917, 3832097, 3832273, 3832417, 3832597, 3832757, 3832937, 3833107, 3833281, 3833443, 3833591, 3833747]
theorem check8 : primorialChainCheck 4473 primorial4473 184 3831067 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 3831067 3833747 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3831067) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [3833927, 3834109, 3834287, 3834451, 3834631, 3834797, 3834967, 3835123, 3835303, 3835487, 3835669, 3835831, 3835991, 3836171, 3836341, 3836519]
theorem check9 : primorialChainCheck 4473 primorial4473 184 3833747 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 3833747 3836519 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3833747) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [3836683, 3836867, 3837049, 3837217, 3837401, 3837577, 3837749, 3837923, 3838103, 3838283, 3838441, 3838621, 3838801, 3838981, 3839153, 3839327]
theorem check10 : primorialChainCheck 4473 primorial4473 184 3836519 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 3836519 3839327 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3836519) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [3839509, 3839683, 3839851, 3840017, 3840191, 3840359, 3840541, 3840721, 3840853, 3841027, 3841199, 3841381, 3841561, 3841729, 3841913, 3842089]
theorem check11 : primorialChainCheck 4473 primorial4473 184 3839327 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 3839327 3842089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3839327) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [3842269, 3842431, 3842603, 3842779, 3842963, 3843137, 3843317, 3843467, 3843629, 3843781, 3843943, 3844121, 3844303, 3844469, 3844649, 3844829]
theorem check12 : primorialChainCheck 4473 primorial4473 184 3842089 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 3842089 3844829 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3842089) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [3844999, 3845183, 3845363, 3845539, 3845717, 3845887, 3846023, 3846203, 3846373, 3846541, 3846707, 3846877, 3847061, 3847243, 3847421, 3847603]
theorem check13 : primorialChainCheck 4473 primorial4473 184 3844829 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 3844829 3847603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3844829) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [3847783, 3847939, 3848101, 3848269, 3848447, 3848623, 3848791, 3848969, 3849151, 3849319, 3849499, 3849683, 3849863, 3850043, 3850219, 3850403]
theorem check14 : primorialChainCheck 4473 primorial4473 184 3847603 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 3847603 3850403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3847603) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [3850571, 3850723, 3850883, 3851063, 3851213, 3851389, 3851459, 3851641, 3851819, 3852001, 3852151, 3852323, 3852503, 3852683, 3852809, 3852973]
theorem check15 : primorialChainCheck 4473 primorial4473 184 3850403 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 3850403 3852973 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3850403) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [3853151, 3853321, 3853501, 3853669, 3853853, 3854029, 3854203, 3854387, 3854551, 3854729, 3854899, 3855083, 3855239, 3855419, 3855581, 3855757]
theorem check16 : primorialChainCheck 4473 primorial4473 184 3852973 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 3852973 3855757 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3852973) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [3855937, 3856109, 3856289, 3856469, 3856631, 3856813, 3856997, 3857179, 3857341, 3857519, 3857683, 3857863, 3858037, 3858199, 3858367, 3858529]
theorem check17 : primorialChainCheck 4473 primorial4473 184 3855757 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 3855757 3858529 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3855757) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [3858671, 3858851, 3859027, 3859201, 3859381, 3859529, 3859693, 3859847, 3860029, 3860209, 3860387, 3860561, 3860737, 3860917, 3861083, 3861259]
theorem check18 : primorialChainCheck 4473 primorial4473 184 3858529 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 3858529 3861259 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3858529) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [3861439, 3861607, 3861751, 3861929, 3862109, 3862291, 3862447, 3862609, 3862787, 3862939, 3863107, 3863291, 3863473, 3863611, 3863789, 3863971]
theorem check19 : primorialChainCheck 4473 primorial4473 184 3861259 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 3861259 3863971 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3861259) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [3864139, 3864319, 3864499, 3864683, 3864841, 3865019, 3865187, 3865363, 3865529, 3865691, 3865867, 3866039, 3866201, 3866333, 3866479, 3866651]
theorem check20 : primorialChainCheck 4473 primorial4473 184 3863971 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 3863971 3866651 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3863971) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [3866809, 3866983, 3867163, 3867337, 3867503, 3867683, 3867859, 3868043, 3868219, 3868399, 3868567, 3868751, 3868933, 3869113, 3869297, 3869473]
theorem check21 : primorialChainCheck 4473 primorial4473 184 3866651 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 3866651 3869473 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3866651) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [3869653, 3869807, 3869989, 3870173, 3870337, 3870499, 3870667, 3870847, 3871013, 3871177, 3871339, 3871523, 3871691, 3871871, 3872047, 3872221]
theorem check22 : primorialChainCheck 4473 primorial4473 184 3869473 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 3869473 3872221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3869473) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [3872389, 3872567, 3872731, 3872899, 3873071, 3873239, 3873413, 3873577, 3873743, 3873911, 3874093, 3874243, 3874417, 3874583, 3874763, 3874939]
theorem check23 : primorialChainCheck 4473 primorial4473 184 3872221 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 3872221 3874939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3872221) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [3875101, 3875281, 3875453, 3875629, 3875803, 3875987, 3876161, 3876329, 3876497, 3876679, 3876827, 3876997, 3877151, 3877331, 3877507, 3877681]
theorem check24 : primorialChainCheck 4473 primorial4473 184 3874939 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 3874939 3877681 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3874939) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [3877849, 3878003, 3878183, 3878359, 3878543, 3878713, 3878893, 3879067, 3879221, 3879397, 3879581, 3879751, 3879923, 3880099, 3880259, 3880441]
theorem check25 : primorialChainCheck 4473 primorial4473 184 3877681 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 3877681 3880441 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3877681) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [3880603, 3880781, 3880949, 3881131, 3881303, 3881467, 3881611, 3881743, 3881887, 3882071, 3882233, 3882407, 3882587, 3882763, 3882947, 3883127]
theorem check26 : primorialChainCheck 4473 primorial4473 184 3880441 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 3880441 3883127 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3880441) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [3883309, 3883493, 3883669, 3883843, 3884011, 3884183, 3884333, 3884497, 3884659, 3884843, 3885019, 3885187, 3885361, 3885533, 3885697, 3885859]
theorem check27 : primorialChainCheck 4473 primorial4473 184 3883127 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 3883127 3885859 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3883127) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [3886037, 3886199, 3886361, 3886537, 3886717, 3886889, 3887057, 3887239, 3887399, 3887581, 3887753, 3887911, 3888091, 3888271, 3888431, 3888611]
theorem check28 : primorialChainCheck 4473 primorial4473 184 3885859 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 3885859 3888611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3885859) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [3888763, 3888931, 3889079, 3889261, 3889441, 3889621, 3889801, 3889969, 3890149, 3890333, 3890507, 3890659, 3890833, 3890981, 3891161, 3891343]
theorem check29 : primorialChainCheck 4473 primorial4473 184 3888611 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 3888611 3891343 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3888611) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [3891527, 3891707, 3891883, 3892051, 3892219, 3892393, 3892573, 3892753, 3892921, 3893101, 3893273, 3893431, 3893609, 3893759, 3893933, 3894113]
theorem check30 : primorialChainCheck 4473 primorial4473 184 3891343 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 3891343 3894113 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3891343) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [3894269, 3894433, 3894593, 3894763, 3894923, 3895097, 3895231, 3895403, 3895583, 3895747, 3895921, 3896099, 3896257, 3896413, 3896597, 3896777]
theorem check31 : primorialChainCheck 4473 primorial4473 184 3894113 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 3894113 3896777 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3894113) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 3808913 3814483 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3808913)
    (mid := 3811711) (hi := 3814483) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 3814483 3820057 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3814483)
    (mid := 3817237) (hi := 3820057) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 3820057 3825559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3820057)
    (mid := 3822779) (hi := 3825559) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 3825559 3831067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3825559)
    (mid := 3828311) (hi := 3831067) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 3831067 3836519 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3831067)
    (mid := 3833747) (hi := 3836519) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 3836519 3842089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3836519)
    (mid := 3839327) (hi := 3842089) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 3842089 3847603 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3842089)
    (mid := 3844829) (hi := 3847603) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 3847603 3852973 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3847603)
    (mid := 3850403) (hi := 3852973) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 3852973 3858529 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3852973)
    (mid := 3855757) (hi := 3858529) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 3858529 3863971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3858529)
    (mid := 3861259) (hi := 3863971) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 3863971 3869473 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3863971)
    (mid := 3866651) (hi := 3869473) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 3869473 3874939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3869473)
    (mid := 3872221) (hi := 3874939) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 3874939 3880441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3874939)
    (mid := 3877681) (hi := 3880441) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 3880441 3885859 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3880441)
    (mid := 3883127) (hi := 3885859) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 3885859 3891343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3885859)
    (mid := 3888611) (hi := 3891343) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 3891343 3896777 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3891343)
    (mid := 3894113) (hi := 3896777) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 3808913 3820057 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3808913)
    (mid := 3814483) (hi := 3820057) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 3820057 3831067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3820057)
    (mid := 3825559) (hi := 3831067) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 3831067 3842089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3831067)
    (mid := 3836519) (hi := 3842089) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 3842089 3852973 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3842089)
    (mid := 3847603) (hi := 3852973) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 3852973 3863971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3852973)
    (mid := 3858529) (hi := 3863971) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 3863971 3874939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3863971)
    (mid := 3869473) (hi := 3874939) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 3874939 3885859 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3874939)
    (mid := 3880441) (hi := 3885859) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 3885859 3896777 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3885859)
    (mid := 3891343) (hi := 3896777) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 3808913 3831067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3808913)
    (mid := 3820057) (hi := 3831067) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 3831067 3852973 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3831067)
    (mid := 3842089) (hi := 3852973) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 3852973 3874939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3852973)
    (mid := 3863971) (hi := 3874939) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 3874939 3896777 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3874939)
    (mid := 3885859) (hi := 3896777) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 3808913 3852973 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3808913)
    (mid := 3831067) (hi := 3852973) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 3852973 3896777 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3852973)
    (mid := 3874939) (hi := 3896777) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 3808913 3896777 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3808913)
    (mid := 3852973) (hi := 3896777) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 3808913 3896777 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block043

#print axioms B699MiddleExtension.PrimorialBlocks.Block043.joined
