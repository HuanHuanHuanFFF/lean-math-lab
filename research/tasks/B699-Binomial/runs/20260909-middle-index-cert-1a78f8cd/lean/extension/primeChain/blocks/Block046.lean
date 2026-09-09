import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block046

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [4073039, 4073203, 4073371, 4073551, 4073731, 4073899, 4074073, 4074253, 4074437, 4074613, 4074793, 4074977, 4075147, 4075327, 4075507, 4075679]
theorem check0 : primorialChainCheck 4473 primorial4473 184 4072867 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 4072867 4075679 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4072867) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [4075831, 4076003, 4076183, 4076363, 4076537, 4076713, 4076881, 4077061, 4077239, 4077421, 4077583, 4077763, 4077947, 4078117, 4078301, 4078469]
theorem check1 : primorialChainCheck 4473 primorial4473 184 4075679 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 4075679 4078469 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4075679) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [4078651, 4078831, 4079003, 4079143, 4079297, 4079479, 4079659, 4079837, 4080007, 4080191, 4080359, 4080541, 4080719, 4080889, 4081073, 4081229]
theorem check2 : primorialChainCheck 4473 primorial4473 184 4078469 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 4078469 4081229 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4078469) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [4081397, 4081579, 4081747, 4081897, 4082053, 4082237, 4082413, 4082579, 4082761, 4082933, 4083097, 4083269, 4083437, 4083619, 4083787, 4083953]
theorem check3 : primorialChainCheck 4473 primorial4473 184 4081229 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 4081229 4083953 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4081229) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [4084109, 4084279, 4084439, 4084609, 4084771, 4084937, 4085119, 4085267, 4085447, 4085629, 4085803, 4085987, 4086167, 4086343, 4086527, 4086683]
theorem check4 : primorialChainCheck 4473 primorial4473 184 4083953 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 4083953 4086683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4083953) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [4086853, 4087037, 4087217, 4087397, 4087513, 4087673, 4087847, 4088027, 4088209, 4088387, 4088563, 4088731, 4088911, 4089089, 4089271, 4089439]
theorem check5 : primorialChainCheck 4473 primorial4473 184 4086683 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 4086683 4089439 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4086683) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [4089619, 4089779, 4089949, 4090133, 4090309, 4090451, 4090589, 4090763, 4090937, 4091083, 4091257, 4091393, 4091569, 4091753, 4091933, 4092113]
theorem check6 : primorialChainCheck 4473 primorial4473 184 4089439 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 4089439 4092113 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4089439) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [4092287, 4092469, 4092637, 4092811, 4092983, 4093163, 4093343, 4093511, 4093679, 4093861, 4094021, 4094203, 4094369, 4094549, 4094731, 4094911]
theorem check7 : primorialChainCheck 4473 primorial4473 184 4092113 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 4092113 4094911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4092113) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [4095071, 4095229, 4095401, 4095577, 4095737, 4095901, 4096073, 4096241, 4096399, 4096583, 4096753, 4096933, 4097113, 4097281, 4097453, 4097633]
theorem check8 : primorialChainCheck 4473 primorial4473 184 4094911 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 4094911 4097633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4094911) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [4097813, 4097987, 4098161, 4098337, 4098511, 4098691, 4098869, 4099049, 4099229, 4099369, 4099541, 4099723, 4099903, 4100069, 4100251, 4100423]
theorem check9 : primorialChainCheck 4473 primorial4473 184 4097633 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 4097633 4100423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4097633) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [4100597, 4100777, 4100951, 4101133, 4101313, 4101491, 4101653, 4101817, 4101991, 4102171, 4102339, 4102517, 4102699, 4102883, 4103009, 4103179]
theorem check10 : primorialChainCheck 4473 primorial4473 184 4100423 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 4100423 4103179 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4100423) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [4103353, 4103521, 4103699, 4103881, 4104053, 4104203, 4104371, 4104553, 4104733, 4104913, 4105093, 4105259, 4105399, 4105579, 4105763, 4105943]
theorem check11 : primorialChainCheck 4473 primorial4473 184 4103179 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 4103179 4105943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4103179) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [4106119, 4106303, 4106471, 4106653, 4106827, 4107007, 4107163, 4107347, 4107529, 4107707, 4107881, 4108063, 4108243, 4108397, 4108571, 4108717]
theorem check12 : primorialChainCheck 4473 primorial4473 184 4105943 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 4105943 4108717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4105943) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [4108891, 4109071, 4109251, 4109431, 4109591, 4109771, 4109953, 4110131, 4110313, 4110493, 4110677, 4110853, 4111027, 4111207, 4111379, 4111553]
theorem check13 : primorialChainCheck 4473 primorial4473 184 4108717 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 4108717 4111553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4108717) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [4111727, 4111901, 4112083, 4112263, 4112447, 4112629, 4112813, 4112989, 4113143, 4113311, 4113469, 4113647, 4113827, 4114009, 4114193, 4114373]
theorem check14 : primorialChainCheck 4473 primorial4473 184 4111553 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 4111553 4114373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4111553) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [4114519, 4114703, 4114879, 4115053, 4115213, 4115393, 4115569, 4115753, 4115933, 4116107, 4116271, 4116449, 4116617, 4116781, 4116923, 4117081]
theorem check15 : primorialChainCheck 4473 primorial4473 184 4114373 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 4114373 4117081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4114373) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [4117259, 4117441, 4117613, 4117793, 4117969, 4118143, 4118321, 4118501, 4118627, 4118809, 4118993, 4119169, 4119347, 4119527, 4119697, 4119859]
theorem check16 : primorialChainCheck 4473 primorial4473 184 4117081 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 4117081 4119859 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4117081) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [4120033, 4120211, 4120393, 4120577, 4120747, 4120931, 4121113, 4121297, 4121471, 4121647, 4121827, 4121987, 4122169, 4122343, 4122493, 4122667]
theorem check17 : primorialChainCheck 4473 primorial4473 184 4119859 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 4119859 4122667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4119859) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [4122851, 4122997, 4123181, 4123349, 4123531, 4123681, 4123849, 4124009, 4124191, 4124369, 4124509, 4124677, 4124837, 4125013, 4125181, 4125353]
theorem check18 : primorialChainCheck 4473 primorial4473 184 4122667 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 4122667 4125353 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4122667) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [4125521, 4125703, 4125853, 4126009, 4126159, 4126337, 4126513, 4126697, 4126861, 4127033, 4127191, 4127363, 4127537, 4127713, 4127897, 4128079]
theorem check19 : primorialChainCheck 4473 primorial4473 184 4125353 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 4125353 4128079 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4125353) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [4128253, 4128427, 4128601, 4128781, 4128959, 4129141, 4129319, 4129501, 4129667, 4129841, 4130023, 4130207, 4130389, 4130573, 4130741, 4130911]
theorem check20 : primorialChainCheck 4473 primorial4473 184 4128079 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 4128079 4130911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4128079) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [4131089, 4131241, 4131409, 4131583, 4131767, 4131923, 4132097, 4132279, 4132439, 4132621, 4132783, 4132967, 4133149, 4133293, 4133473, 4133641]
theorem check21 : primorialChainCheck 4473 primorial4473 184 4130911 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 4130911 4133641 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4130911) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [4133821, 4133971, 4134133, 4134311, 4134469, 4134649, 4134829, 4135003, 4135169, 4135349, 4135531, 4135627, 4135771, 4135933, 4136059, 4136239]
theorem check22 : primorialChainCheck 4473 primorial4473 184 4133641 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 4133641 4136239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4133641) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [4136411, 4136581, 4136761, 4136939, 4137121, 4137299, 4137473, 4137643, 4137823, 4137997, 4138153, 4138331, 4138513, 4138691, 4138861, 4139029]
theorem check23 : primorialChainCheck 4473 primorial4473 184 4136239 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 4136239 4139029 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4136239) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [4139209, 4139389, 4139573, 4139753, 4139923, 4140107, 4140287, 4140457, 4140641, 4140821, 4141001, 4141177, 4141349, 4141517, 4141699, 4141877]
theorem check24 : primorialChainCheck 4473 primorial4473 184 4139029 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 4139029 4141877 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4139029) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [4142059, 4142227, 4142401, 4142573, 4142753, 4142903, 4143077, 4143253, 4143421, 4143599, 4143779, 4143961, 4144121, 4144291, 4144471, 4144633]
theorem check25 : primorialChainCheck 4473 primorial4473 184 4141877 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 4141877 4144633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4141877) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [4144817, 4144981, 4145117, 4145299, 4145473, 4145653, 4145837, 4146013, 4146193, 4146377, 4146559, 4146743, 4146917, 4147093, 4147267, 4147417]
theorem check26 : primorialChainCheck 4473 primorial4473 184 4144633 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 4144633 4147417 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4144633) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [4147597, 4147771, 4147943, 4148101, 4148279, 4148461, 4148633, 4148813, 4148987, 4149161, 4149337, 4149517, 4149679, 4149839, 4150019, 4150177]
theorem check27 : primorialChainCheck 4473 primorial4473 184 4147417 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 4147417 4150177 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4147417) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [4150357, 4150529, 4150691, 4150859, 4151039, 4151219, 4151377, 4151549, 4151717, 4151887, 4152067, 4152229, 4152409, 4152587, 4152763, 4152943]
theorem check28 : primorialChainCheck 4473 primorial4473 184 4150177 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 4150177 4152943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4150177) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [4153111, 4153291, 4153469, 4153649, 4153829, 4154009, 4154177, 4154347, 4154519, 4154699, 4154879, 4155061, 4155197, 4155367, 4155551, 4155733]
theorem check29 : primorialChainCheck 4473 primorial4473 184 4152943 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 4152943 4155733 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4152943) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [4155917, 4156093, 4156277, 4156447, 4156627, 4156807, 4156981, 4157159, 4157339, 4157513, 4157693, 4157869, 4158053, 4158233, 4158409, 4158569]
theorem check30 : primorialChainCheck 4473 primorial4473 184 4155733 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 4155733 4158569 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4155733) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [4158731, 4158907, 4159091, 4159273, 4159451, 4159627, 4159807, 4159979, 4160159, 4160333, 4160509, 4160669, 4160843, 4161023, 4161197, 4161349]
theorem check31 : primorialChainCheck 4473 primorial4473 184 4158569 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 4158569 4161349 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4158569) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 4072867 4078469 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4072867)
    (mid := 4075679) (hi := 4078469) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 4078469 4083953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4078469)
    (mid := 4081229) (hi := 4083953) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 4083953 4089439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4083953)
    (mid := 4086683) (hi := 4089439) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 4089439 4094911 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4089439)
    (mid := 4092113) (hi := 4094911) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 4094911 4100423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4094911)
    (mid := 4097633) (hi := 4100423) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 4100423 4105943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4100423)
    (mid := 4103179) (hi := 4105943) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 4105943 4111553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4105943)
    (mid := 4108717) (hi := 4111553) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 4111553 4117081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4111553)
    (mid := 4114373) (hi := 4117081) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 4117081 4122667 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4117081)
    (mid := 4119859) (hi := 4122667) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 4122667 4128079 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4122667)
    (mid := 4125353) (hi := 4128079) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 4128079 4133641 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4128079)
    (mid := 4130911) (hi := 4133641) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 4133641 4139029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4133641)
    (mid := 4136239) (hi := 4139029) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 4139029 4144633 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4139029)
    (mid := 4141877) (hi := 4144633) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 4144633 4150177 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4144633)
    (mid := 4147417) (hi := 4150177) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 4150177 4155733 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4150177)
    (mid := 4152943) (hi := 4155733) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 4155733 4161349 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4155733)
    (mid := 4158569) (hi := 4161349) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 4072867 4083953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4072867)
    (mid := 4078469) (hi := 4083953) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 4083953 4094911 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4083953)
    (mid := 4089439) (hi := 4094911) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 4094911 4105943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4094911)
    (mid := 4100423) (hi := 4105943) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 4105943 4117081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4105943)
    (mid := 4111553) (hi := 4117081) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 4117081 4128079 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4117081)
    (mid := 4122667) (hi := 4128079) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 4128079 4139029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4128079)
    (mid := 4133641) (hi := 4139029) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 4139029 4150177 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4139029)
    (mid := 4144633) (hi := 4150177) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 4150177 4161349 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4150177)
    (mid := 4155733) (hi := 4161349) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 4072867 4094911 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4072867)
    (mid := 4083953) (hi := 4094911) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 4094911 4117081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4094911)
    (mid := 4105943) (hi := 4117081) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 4117081 4139029 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4117081)
    (mid := 4128079) (hi := 4139029) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 4139029 4161349 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4139029)
    (mid := 4150177) (hi := 4161349) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 4072867 4117081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4072867)
    (mid := 4094911) (hi := 4117081) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 4117081 4161349 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4117081)
    (mid := 4139029) (hi := 4161349) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 4072867 4161349 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4072867)
    (mid := 4117081) (hi := 4161349) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 4072867 4161349 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block046

#print axioms B699MiddleExtension.PrimorialBlocks.Block046.joined
