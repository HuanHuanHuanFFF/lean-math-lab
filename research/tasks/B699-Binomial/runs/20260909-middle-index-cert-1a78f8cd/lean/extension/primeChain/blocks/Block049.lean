import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block049

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [4337569, 4337741, 4337911, 4338083, 4338239, 4338407, 4338577, 4338721, 4338883, 4339043, 4339217, 4339367, 4339547, 4339703, 4339883, 4340057]
theorem check0 : primorialChainCheck 4473 primorial4473 184 4337393 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 4337393 4340057 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4337393) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [4340239, 4340419, 4340599, 4340783, 4340939, 4341107, 4341277, 4341461, 4341637, 4341803, 4341983, 4342153, 4342333, 4342517, 4342687, 4342861]
theorem check1 : primorialChainCheck 4473 primorial4473 184 4340057 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 4340057 4342861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4340057) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [4343029, 4343203, 4343377, 4343561, 4343701, 4343873, 4344037, 4344187, 4344349, 4344523, 4344689, 4344871, 4345049, 4345223, 4345403, 4345577]
theorem check2 : primorialChainCheck 4473 primorial4473 184 4342861 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 4342861 4345577 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4342861) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [4345751, 4345903, 4346087, 4346267, 4346437, 4346581, 4346761, 4346941, 4347103, 4347281, 4347407, 4347589, 4347757, 4347929, 4348109, 4348271]
theorem check3 : primorialChainCheck 4473 primorial4473 184 4345577 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 4345577 4348271 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4345577) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [4348441, 4348621, 4348793, 4348973, 4349153, 4349311, 4349489, 4349669, 4349843, 4350023, 4350173, 4350347, 4350527, 4350707, 4350889, 4351063]
theorem check4 : primorialChainCheck 4473 primorial4473 184 4348271 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 4348271 4351063 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4348271) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [4351231, 4351411, 4351579, 4351759, 4351933, 4352113, 4352279, 4352461, 4352641, 4352807, 4352983, 4353163, 4353347, 4353529, 4353709, 4353889]
theorem check5 : primorialChainCheck 4473 primorial4473 184 4351063 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 4351063 4353889 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4351063) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [4354067, 4354213, 4354391, 4354573, 4354747, 4354921, 4355059, 4355243, 4355411, 4355581, 4355759, 4355941, 4356109, 4356277, 4356449, 4356563]
theorem check6 : primorialChainCheck 4473 primorial4473 184 4353889 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 4353889 4356563 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4353889) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [4356739, 4356923, 4357103, 4357277, 4357459, 4357637, 4357811, 4357993, 4358161, 4358329, 4358503, 4358687, 4358863, 4359031, 4359209, 4359389]
theorem check7 : primorialChainCheck 4473 primorial4473 184 4356563 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 4356563 4359389 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4356563) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [4359557, 4359739, 4359863, 4360033, 4360207, 4360373, 4360549, 4360717, 4360849, 4361011, 4361183, 4361363, 4361519, 4361699, 4361837, 4362011]
theorem check8 : primorialChainCheck 4473 primorial4473 184 4359389 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 4359389 4362011 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4359389) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [4362181, 4362361, 4362521, 4362689, 4362859, 4362997, 4363159, 4363327, 4363493, 4363663, 4363837, 4364021, 4364203, 4364383, 4364567, 4364747]
theorem check9 : primorialChainCheck 4473 primorial4473 184 4362011 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 4362011 4364747 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4362011) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [4364911, 4365089, 4365271, 4365443, 4365623, 4365793, 4365961, 4366123, 4366303, 4366477, 4366643, 4366823, 4366981, 4367159, 4367329, 4367507]
theorem check10 : primorialChainCheck 4473 primorial4473 184 4364747 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 4364747 4367507 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4364747) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [4367681, 4367863, 4368029, 4368197, 4368379, 4368527, 4368709, 4368863, 4369039, 4369213, 4369397, 4369579, 4369763, 4369933, 4370111, 4370281]
theorem check11 : primorialChainCheck 4473 primorial4473 184 4367507 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 4367507 4370281 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4367507) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [4370461, 4370633, 4370813, 4370987, 4371163, 4371347, 4371529, 4371701, 4371877, 4372061, 4372241, 4372421, 4372597, 4372777, 4372957, 4373137]
theorem check12 : primorialChainCheck 4473 primorial4473 184 4370281 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 4370281 4373137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4370281) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [4373321, 4373489, 4373653, 4373833, 4374001, 4374179, 4374361, 4374527, 4374701, 4374869, 4375051, 4375193, 4375367, 4375537, 4375717, 4375883]
theorem check13 : primorialChainCheck 4473 primorial4473 184 4373137 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 4373137 4375883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4373137) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [4376063, 4376243, 4376413, 4376597, 4376759, 4376929, 4377101, 4377257, 4377427, 4377601, 4377757, 4377929, 4378093, 4378273, 4378453, 4378631]
theorem check14 : primorialChainCheck 4473 primorial4473 184 4375883 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 4375883 4378631 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4375883) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [4378813, 4378981, 4379161, 4379327, 4379509, 4379689, 4379873, 4380049, 4380223, 4380403, 4380559, 4380737, 4380919, 4381093, 4381271, 4381453]
theorem check15 : primorialChainCheck 4473 primorial4473 184 4378631 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 4378631 4381453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4378631) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [4381607, 4381787, 4381967, 4382149, 4382309, 4382471, 4382647, 4382813, 4382953, 4383109, 4383293, 4383461, 4383629, 4383791, 4383949, 4384129]
theorem check16 : primorialChainCheck 4473 primorial4473 184 4381453 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 4381453 4384129 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4381453) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [4384313, 4384493, 4384673, 4384847, 4385027, 4385209, 4385393, 4385569, 4385743, 4385923, 4386101, 4386271, 4386443, 4386623, 4386803, 4386973]
theorem check17 : primorialChainCheck 4473 primorial4473 184 4384129 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 4384129 4386973 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4384129) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [4387153, 4387301, 4387483, 4387661, 4387837, 4388017, 4388201, 4388381, 4388557, 4388731, 4388911, 4389083, 4389263, 4389443, 4389611, 4389769]
theorem check18 : primorialChainCheck 4473 primorial4473 184 4386973 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 4386973 4389769 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4386973) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [4389947, 4390117, 4390291, 4390469, 4390651, 4390829, 4391011, 4391161, 4391341, 4391521, 4391687, 4391867, 4392013, 4392181, 4392343, 4392523]
theorem check19 : primorialChainCheck 4473 primorial4473 184 4389769 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 4389769 4392523 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4389769) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [4392691, 4392853, 4393031, 4393201, 4393369, 4393549, 4393729, 4393903, 4394063, 4394237, 4394419, 4394603, 4394783, 4394927, 4395109, 4395283]
theorem check20 : primorialChainCheck 4473 primorial4473 184 4392523 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 4392523 4395283 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4392523) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [4395463, 4395641, 4395817, 4396001, 4396181, 4396361, 4396537, 4396687, 4396871, 4397053, 4397233, 4397399, 4397581, 4397737, 4397909, 4398091]
theorem check21 : primorialChainCheck 4473 primorial4473 184 4395283 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 4395283 4398091 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4395283) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [4398263, 4398431, 4398577, 4398743, 4398887, 4399067, 4399237, 4399399, 4399573, 4399729, 4399907, 4400069, 4400213, 4400393, 4400551, 4400731]
theorem check22 : primorialChainCheck 4473 primorial4473 184 4398091 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 4398091 4400731 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4398091) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [4400897, 4401071, 4401251, 4401433, 4401601, 4401767, 4401949, 4402081, 4402259, 4402441, 4402613, 4402789, 4402933, 4403093, 4403257, 4403431]
theorem check23 : primorialChainCheck 4473 primorial4473 184 4400731 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 4400731 4403431 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4400731) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [4403569, 4403753, 4403923, 4404107, 4404287, 4404469, 4404643, 4404817, 4404977, 4405157, 4405333, 4405517, 4405699, 4405879, 4406023, 4406201]
theorem check24 : primorialChainCheck 4473 primorial4473 184 4403431 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 4403431 4406201 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4403431) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [4406359, 4406539, 4406713, 4406891, 4407071, 4407211, 4407367, 4407523, 4407691, 4407857, 4408039, 4408199, 4408363, 4408517, 4408697, 4408867]
theorem check25 : primorialChainCheck 4473 primorial4473 184 4406201 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 4406201 4408867 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4406201) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [4409033, 4409183, 4409333, 4409513, 4409687, 4409849, 4410019, 4410199, 4410379, 4410551, 4410719, 4410893, 4411073, 4411247, 4411427, 4411601]
theorem check26 : primorialChainCheck 4473 primorial4473 184 4408867 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 4408867 4411601 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4408867) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [4411747, 4411877, 4412059, 4412227, 4412411, 4412593, 4412773, 4412927, 4413091, 4413271, 4413443, 4413623, 4413797, 4413973, 4414153, 4414313]
theorem check27 : primorialChainCheck 4473 primorial4473 184 4411601 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 4411601 4414313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4411601) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [4414463, 4414637, 4414807, 4414961, 4415143, 4415303, 4415473, 4415641, 4415819, 4415993, 4416163, 4416343, 4416527, 4416703, 4416877, 4417051]
theorem check28 : primorialChainCheck 4473 primorial4473 184 4414313 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 4414313 4417051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4414313) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [4417223, 4417397, 4417537, 4417703, 4417883, 4418041, 4418221, 4418389, 4418567, 4418749, 4418917, 4419101, 4419271, 4419451, 4419601, 4419773]
theorem check29 : primorialChainCheck 4473 primorial4473 184 4417051 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 4417051 4419773 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4417051) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [4419953, 4420127, 4420309, 4420469, 4420639, 4420813, 4420993, 4421177, 4421353, 4421533, 4421693, 4421869, 4422043, 4422221, 4422403, 4422577]
theorem check30 : primorialChainCheck 4473 primorial4473 184 4419773 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 4419773 4422577 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4419773) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [4422757, 4422931, 4423063, 4423231, 4423411, 4423583, 4423733, 4423907, 4424087, 4424261, 4424429, 4424569, 4424729, 4424887, 4425053, 4425229]
theorem check31 : primorialChainCheck 4473 primorial4473 184 4422577 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 4422577 4425229 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4422577) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 4337393 4342861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4337393)
    (mid := 4340057) (hi := 4342861) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 4342861 4348271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4342861)
    (mid := 4345577) (hi := 4348271) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 4348271 4353889 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4348271)
    (mid := 4351063) (hi := 4353889) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 4353889 4359389 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4353889)
    (mid := 4356563) (hi := 4359389) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 4359389 4364747 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4359389)
    (mid := 4362011) (hi := 4364747) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 4364747 4370281 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4364747)
    (mid := 4367507) (hi := 4370281) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 4370281 4375883 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4370281)
    (mid := 4373137) (hi := 4375883) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 4375883 4381453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4375883)
    (mid := 4378631) (hi := 4381453) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 4381453 4386973 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4381453)
    (mid := 4384129) (hi := 4386973) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 4386973 4392523 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4386973)
    (mid := 4389769) (hi := 4392523) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 4392523 4398091 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4392523)
    (mid := 4395283) (hi := 4398091) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 4398091 4403431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4398091)
    (mid := 4400731) (hi := 4403431) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 4403431 4408867 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4403431)
    (mid := 4406201) (hi := 4408867) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 4408867 4414313 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4408867)
    (mid := 4411601) (hi := 4414313) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 4414313 4419773 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4414313)
    (mid := 4417051) (hi := 4419773) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 4419773 4425229 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4419773)
    (mid := 4422577) (hi := 4425229) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 4337393 4348271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4337393)
    (mid := 4342861) (hi := 4348271) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 4348271 4359389 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4348271)
    (mid := 4353889) (hi := 4359389) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 4359389 4370281 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4359389)
    (mid := 4364747) (hi := 4370281) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 4370281 4381453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4370281)
    (mid := 4375883) (hi := 4381453) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 4381453 4392523 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4381453)
    (mid := 4386973) (hi := 4392523) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 4392523 4403431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4392523)
    (mid := 4398091) (hi := 4403431) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 4403431 4414313 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4403431)
    (mid := 4408867) (hi := 4414313) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 4414313 4425229 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4414313)
    (mid := 4419773) (hi := 4425229) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 4337393 4359389 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4337393)
    (mid := 4348271) (hi := 4359389) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 4359389 4381453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4359389)
    (mid := 4370281) (hi := 4381453) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 4381453 4403431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4381453)
    (mid := 4392523) (hi := 4403431) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 4403431 4425229 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4403431)
    (mid := 4414313) (hi := 4425229) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 4337393 4381453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4337393)
    (mid := 4359389) (hi := 4381453) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 4381453 4425229 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4381453)
    (mid := 4403431) (hi := 4425229) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 4337393 4425229 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4337393)
    (mid := 4381453) (hi := 4425229) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 4337393 4425229 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block049

#print axioms B699MiddleExtension.PrimorialBlocks.Block049.joined
