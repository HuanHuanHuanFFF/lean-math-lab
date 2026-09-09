import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block044

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [3896947, 3897121, 3897269, 3897449, 3897631, 3897799, 3897973, 3898123, 3898303, 3898487, 3898651, 3898771, 3898943, 3899117, 3899299, 3899471]
theorem check0 : primorialChainCheck 4473 primorial4473 184 3896777 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 3896777 3899471 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3896777) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [3899653, 3899827, 3899989, 3900167, 3900349, 3900517, 3900697, 3900881, 3901043, 3901223, 3901397, 3901571, 3901741, 3901907, 3902071, 3902243]
theorem check1 : primorialChainCheck 4473 primorial4473 184 3899471 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 3899471 3902243 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3899471) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [3902419, 3902579, 3902747, 3902929, 3903101, 3903281, 3903461, 3903643, 3903787, 3903947, 3904127, 3904309, 3904493, 3904673, 3904829, 3905003]
theorem check2 : primorialChainCheck 4473 primorial4473 184 3902243 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 3902243 3905003 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3902243) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [3905177, 3905357, 3905533, 3905717, 3905879, 3906061, 3906187, 3906367, 3906547, 3906731, 3906911, 3907091, 3907249, 3907417, 3907601, 3907781]
theorem check3 : primorialChainCheck 4473 primorial4473 184 3905003 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 3905003 3907781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3905003) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [3907963, 3908131, 3908309, 3908491, 3908659, 3908837, 3909019, 3909179, 3909361, 3909533, 3909709, 3909889, 3910063, 3910243, 3910427, 3910597]
theorem check4 : primorialChainCheck 4473 primorial4473 184 3907781 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 3907781 3910597 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3907781) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [3910763, 3910919, 3911099, 3911279, 3911459, 3911627, 3911807, 3911977, 3912131, 3912263, 3912443, 3912611, 3912781, 3912959, 3913139, 3913319]
theorem check5 : primorialChainCheck 4473 primorial4473 184 3910597 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 3910597 3913319 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3910597) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [3913501, 3913673, 3913837, 3914011, 3914189, 3914359, 3914509, 3914689, 3914873, 3915047, 3915187, 3915371, 3915553, 3915731, 3915907, 3916091]
theorem check6 : primorialChainCheck 4473 primorial4473 184 3913319 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 3913319 3916091 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3913319) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [3916271, 3916453, 3916637, 3916813, 3916981, 3917161, 3917323, 3917491, 3917623, 3917801, 3917923, 3918071, 3918251, 3918413, 3918589, 3918757]
theorem check7 : primorialChainCheck 4473 primorial4473 184 3916091 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 3916091 3918757 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3916091) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [3918923, 3919099, 3919277, 3919457, 3919627, 3919807, 3919973, 3920153, 3920311, 3920471, 3920629, 3920797, 3920981, 3921161, 3921343, 3921521]
theorem check8 : primorialChainCheck 4473 primorial4473 184 3918757 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 3918757 3921521 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3918757) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [3921689, 3921859, 3922033, 3922207, 3922367, 3922543, 3922717, 3922871, 3923047, 3923203, 3923357, 3923539, 3923723, 3923897, 3924079, 3924253]
theorem check9 : primorialChainCheck 4473 primorial4473 184 3921521 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 3921521 3924253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3921521) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [3924413, 3924593, 3924761, 3924937, 3925109, 3925279, 3925459, 3925637, 3925807, 3925981, 3926147, 3926323, 3926501, 3926651, 3926827, 3926963]
theorem check10 : primorialChainCheck 4473 primorial4473 184 3924253 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 3924253 3926963 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3924253) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [3927139, 3927307, 3927479, 3927647, 3927829, 3928013, 3928189, 3928373, 3928553, 3928733, 3928913, 3929063, 3929221, 3929369, 3929551, 3929729]
theorem check11 : primorialChainCheck 4473 primorial4473 184 3926963 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 3926963 3929729 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3926963) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [3929879, 3930061, 3930229, 3930391, 3930571, 3930743, 3930923, 3931093, 3931273, 3931457, 3931639, 3931817, 3931997, 3932179, 3932347, 3932521]
theorem check12 : primorialChainCheck 4473 primorial4473 184 3929729 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 3929729 3932521 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3929729) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [3932689, 3932869, 3933053, 3933233, 3933379, 3933557, 3933733, 3933907, 3934087, 3934267, 3934451, 3934631, 3934813, 3934993, 3935161, 3935333]
theorem check13 : primorialChainCheck 4473 primorial4473 184 3932521 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 3932521 3935333 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3932521) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [3935509, 3935683, 3935861, 3936043, 3936227, 3936353, 3936523, 3936683, 3936839, 3937019, 3937201, 3937369, 3937537, 3937721, 3937903, 3938087]
theorem check14 : primorialChainCheck 4473 primorial4473 184 3935333 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 3935333 3938087 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3935333) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [3938257, 3938437, 3938609, 3938791, 3938971, 3939149, 3939277, 3939457, 3939641, 3939811, 3939989, 3940171, 3940351, 3940523, 3940697, 3940841]
theorem check15 : primorialChainCheck 4473 primorial4473 184 3938087 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 3938087 3940841 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3938087) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [3941017, 3941183, 3941363, 3941537, 3941719, 3941891, 3942067, 3942241, 3942413, 3942581, 3942751, 3942931, 3943111, 3943283, 3943451, 3943633]
theorem check16 : primorialChainCheck 4473 primorial4473 184 3940841 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 3940841 3943633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3940841) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [3943799, 3943967, 3944141, 3944309, 3944483, 3944627, 3944807, 3944987, 3945163, 3945341, 3945467, 3945647, 3945803, 3945983, 3946157, 3946339]
theorem check17 : primorialChainCheck 4473 primorial4473 184 3943633 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 3943633 3946339 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3943633) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [3946511, 3946681, 3946853, 3947023, 3947189, 3947369, 3947549, 3947693, 3947861, 3947987, 3948163, 3948317, 3948493, 3948673, 3948853, 3949037]
theorem check18 : primorialChainCheck 4473 primorial4473 184 3946339 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 3946339 3949037 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3946339) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [3949217, 3949391, 3949541, 3949723, 3949903, 3950041, 3950213, 3950393, 3950563, 3950731, 3950911, 3951083, 3951263, 3951443, 3951611, 3951793]
theorem check19 : primorialChainCheck 4473 primorial4473 184 3949037 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 3949037 3951793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3949037) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [3951977, 3952127, 3952309, 3952493, 3952651, 3952813, 3952997, 3953161, 3953317, 3953497, 3953669, 3953849, 3954017, 3954199, 3954373, 3954547]
theorem check20 : primorialChainCheck 4473 primorial4473 184 3951793 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 3951793 3954547 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3951793) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [3954719, 3954889, 3955069, 3955243, 3955421, 3955603, 3955771, 3955949, 3956119, 3956297, 3956471, 3956651, 3956833, 3957017, 3957179, 3957341]
theorem check21 : primorialChainCheck 4473 primorial4473 184 3954547 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 3954547 3957341 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3954547) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [3957521, 3957703, 3957883, 3958063, 3958243, 3958397, 3958543, 3958727, 3958891, 3959063, 3959237, 3959393, 3959551, 3959729, 3959911, 3960083]
theorem check22 : primorialChainCheck 4473 primorial4473 184 3957341 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 3957341 3960083 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3957341) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [3960263, 3960433, 3960613, 3960769, 3960941, 3961121, 3961283, 3961457, 3961631, 3961813, 3961987, 3962143, 3962323, 3962489, 3962671, 3962851]
theorem check23 : primorialChainCheck 4473 primorial4473 184 3960083 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 3960083 3962851 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3960083) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [3963031, 3963209, 3963391, 3963569, 3963721, 3963899, 3964061, 3964237, 3964421, 3964603, 3964783, 3964963, 3965147, 3965317, 3965483, 3965659]
theorem check24 : primorialChainCheck 4473 primorial4473 184 3962851 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 3962851 3965659 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3962851) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [3965839, 3966007, 3966173, 3966349, 3966517, 3966701, 3966883, 3967057, 3967241, 3967417, 3967571, 3967741, 3967913, 3968077, 3968231, 3968411]
theorem check25 : primorialChainCheck 4473 primorial4473 184 3965659 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 3965659 3968411 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3965659) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [3968567, 3968743, 3968917, 3969071, 3969253, 3969437, 3969611, 3969793, 3969971, 3970151, 3970331, 3970493, 3970657, 3970831, 3970997, 3971167]
theorem check26 : primorialChainCheck 4473 primorial4473 184 3968411 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 3968411 3971167 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3968411) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [3971333, 3971501, 3971677, 3971861, 3972037, 3972193, 3972377, 3972541, 3972697, 3972877, 3973061, 3973241, 3973421, 3973579, 3973757, 3973933]
theorem check27 : primorialChainCheck 4473 primorial4473 184 3971167 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 3971167 3973933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3971167) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [3974093, 3974261, 3974441, 3974623, 3974801, 3974981, 3975163, 3975341, 3975511, 3975677, 3975857, 3976031, 3976207, 3976391, 3976573, 3976733]
theorem check28 : primorialChainCheck 4473 primorial4473 184 3973933 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 3973933 3976733 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3973933) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [3976913, 3977087, 3977243, 3977419, 3977599, 3977777, 3977947, 3978113, 3978283, 3978451, 3978593, 3978773, 3978917, 3979043, 3979219, 3979363]
theorem check29 : primorialChainCheck 4473 primorial4473 184 3976733 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 3976733 3979363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3976733) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [3979543, 3979711, 3979891, 3980071, 3980231, 3980407, 3980591, 3980761, 3980891, 3981071, 3981253, 3981421, 3981589, 3981767, 3981937, 3982117]
theorem check30 : primorialChainCheck 4473 primorial4473 184 3979363 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 3979363 3982117 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3979363) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [3982283, 3982417, 3982597, 3982763, 3982931, 3983093, 3983263, 3983443, 3983587, 3983747, 3983927, 3984109, 3984293, 3984473, 3984653, 3984823]
theorem check31 : primorialChainCheck 4473 primorial4473 184 3982117 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 3982117 3984823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3982117) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 3896777 3902243 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3896777)
    (mid := 3899471) (hi := 3902243) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 3902243 3907781 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3902243)
    (mid := 3905003) (hi := 3907781) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 3907781 3913319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3907781)
    (mid := 3910597) (hi := 3913319) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 3913319 3918757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3913319)
    (mid := 3916091) (hi := 3918757) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 3918757 3924253 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3918757)
    (mid := 3921521) (hi := 3924253) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 3924253 3929729 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3924253)
    (mid := 3926963) (hi := 3929729) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 3929729 3935333 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3929729)
    (mid := 3932521) (hi := 3935333) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 3935333 3940841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3935333)
    (mid := 3938087) (hi := 3940841) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 3940841 3946339 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3940841)
    (mid := 3943633) (hi := 3946339) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 3946339 3951793 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3946339)
    (mid := 3949037) (hi := 3951793) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 3951793 3957341 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3951793)
    (mid := 3954547) (hi := 3957341) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 3957341 3962851 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3957341)
    (mid := 3960083) (hi := 3962851) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 3962851 3968411 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3962851)
    (mid := 3965659) (hi := 3968411) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 3968411 3973933 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3968411)
    (mid := 3971167) (hi := 3973933) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 3973933 3979363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3973933)
    (mid := 3976733) (hi := 3979363) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 3979363 3984823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3979363)
    (mid := 3982117) (hi := 3984823) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 3896777 3907781 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3896777)
    (mid := 3902243) (hi := 3907781) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 3907781 3918757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3907781)
    (mid := 3913319) (hi := 3918757) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 3918757 3929729 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3918757)
    (mid := 3924253) (hi := 3929729) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 3929729 3940841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3929729)
    (mid := 3935333) (hi := 3940841) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 3940841 3951793 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3940841)
    (mid := 3946339) (hi := 3951793) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 3951793 3962851 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3951793)
    (mid := 3957341) (hi := 3962851) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 3962851 3973933 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3962851)
    (mid := 3968411) (hi := 3973933) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 3973933 3984823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3973933)
    (mid := 3979363) (hi := 3984823) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 3896777 3918757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3896777)
    (mid := 3907781) (hi := 3918757) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 3918757 3940841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3918757)
    (mid := 3929729) (hi := 3940841) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 3940841 3962851 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3940841)
    (mid := 3951793) (hi := 3962851) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 3962851 3984823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3962851)
    (mid := 3973933) (hi := 3984823) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 3896777 3940841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3896777)
    (mid := 3918757) (hi := 3940841) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 3940841 3984823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3940841)
    (mid := 3962851) (hi := 3984823) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 3896777 3984823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3896777)
    (mid := 3940841) (hi := 3984823) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 3896777 3984823 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block044

#print axioms B699MiddleExtension.PrimorialBlocks.Block044.joined
