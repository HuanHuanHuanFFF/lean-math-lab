import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block047

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [4161527, 4161701, 4161881, 4162063, 4162247, 4162423, 4162591, 4162757, 4162937, 4163077, 4163251, 4163429, 4163611, 4163773, 4163953, 4164131]
theorem check0 : primorialChainCheck 4473 primorial4473 184 4161349 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 4161349 4164131 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4161349) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [4164299, 4164481, 4164637, 4164803, 4164977, 4165157, 4165339, 4165523, 4165699, 4165849, 4166027, 4166203, 4166363, 4166531, 4166693, 4166873]
theorem check1 : primorialChainCheck 4473 primorial4473 184 4164131 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 4164131 4166873 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4164131) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [4167049, 4167223, 4167407, 4167587, 4167767, 4167949, 4168133, 4168303, 4168469, 4168651, 4168831, 4168987, 4169171, 4169329, 4169513, 4169689]
theorem check2 : primorialChainCheck 4473 primorial4473 184 4166873 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 4166873 4169689 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4166873) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [4169849, 4170031, 4170211, 4170379, 4170547, 4170731, 4170913, 4171093, 4171261, 4171429, 4171591, 4171771, 4171943, 4172117, 4172279, 4172431]
theorem check3 : primorialChainCheck 4473 primorial4473 184 4169689 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 4169689 4172431 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4169689) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [4172579, 4172759, 4172929, 4173089, 4173269, 4173413, 4173577, 4173761, 4173943, 4174111, 4174283, 4174453, 4174631, 4174789, 4174967, 4175141]
theorem check4 : primorialChainCheck 4473 primorial4473 184 4172431 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 4172431 4175141 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4172431) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [4175321, 4175503, 4175683, 4175867, 4176049, 4176233, 4176397, 4176569, 4176743, 4176919, 4177081, 4177231, 4177409, 4177573, 4177753, 4177931]
theorem check5 : primorialChainCheck 4473 primorial4473 184 4175141 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 4175141 4177931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4175141) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [4178113, 4178287, 4178453, 4178633, 4178809, 4178983, 4179163, 4179347, 4179521, 4179701, 4179881, 4180051, 4180229, 4180387, 4180541, 4180723]
theorem check6 : primorialChainCheck 4473 primorial4473 184 4177931 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 4177931 4180723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4177931) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [4180849, 4180987, 4181171, 4181351, 4181533, 4181717, 4181899, 4182083, 4182263, 4182433, 4182611, 4182791, 4182949, 4183133, 4183303, 4183457]
theorem check7 : primorialChainCheck 4473 primorial4473 184 4180723 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 4180723 4183457 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4180723) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [4183639, 4183813, 4183973, 4184153, 4184311, 4184443, 4184603, 4184773, 4184909, 4185067, 4185229, 4185413, 4185593, 4185767, 4185949, 4186129]
theorem check8 : primorialChainCheck 4473 primorial4473 184 4183457 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 4183457 4186129 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4183457) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [4186313, 4186493, 4186673, 4186849, 4187023, 4187189, 4187369, 4187537, 4187719, 4187891, 4188059, 4188221, 4188403, 4188577, 4188739, 4188901]
theorem check9 : primorialChainCheck 4473 primorial4473 184 4186129 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 4186129 4188901 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4186129) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [4189069, 4189223, 4189403, 4189583, 4189763, 4189903, 4190083, 4190261, 4190429, 4190573, 4190729, 4190903, 4191073, 4191233, 4191403, 4191581]
theorem check10 : primorialChainCheck 4473 primorial4473 184 4188901 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 4188901 4191581 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4188901) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [4191763, 4191947, 4192129, 4192301, 4192477, 4192637, 4192789, 4192963, 4193141, 4193309, 4193459, 4193633, 4193807, 4193977, 4194143, 4194319]
theorem check11 : primorialChainCheck 4473 primorial4473 184 4191581 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 4191581 4194319 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4191581) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [4194503, 4194679, 4194863, 4195033, 4195211, 4195357, 4195531, 4195703, 4195883, 4196057, 4196239, 4196417, 4196581, 4196747, 4196923, 4197107]
theorem check12 : primorialChainCheck 4473 primorial4473 184 4194319 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 4194319 4197107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4194319) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [4197253, 4197409, 4197587, 4197769, 4197923, 4198097, 4198261, 4198433, 4198583, 4198763, 4198937, 4199077, 4199257, 4199441, 4199609, 4199791]
theorem check13 : primorialChainCheck 4473 primorial4473 184 4197107 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 4197107 4199791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4197107) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [4199971, 4200149, 4200319, 4200487, 4200671, 4200827, 4201007, 4201181, 4201357, 4201537, 4201711, 4201891, 4202069, 4202227, 4202389, 4202567]
theorem check14 : primorialChainCheck 4473 primorial4473 184 4199791 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 4199791 4202567 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4199791) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [4202729, 4202911, 4203071, 4203247, 4203431, 4203613, 4203791, 4203973, 4204157, 4204337, 4204511, 4204687, 4204859, 4205041, 4205219, 4205393]
theorem check15 : primorialChainCheck 4473 primorial4473 184 4202567 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 4202567 4205393 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4202567) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [4205569, 4205743, 4205923, 4206107, 4206283, 4206443, 4206613, 4206791, 4206971, 4207141, 4207319, 4207481, 4207663, 4207843, 4207991, 4208173]
theorem check16 : primorialChainCheck 4473 primorial4473 184 4205393 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 4205393 4208173 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4205393) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [4208357, 4208507, 4208689, 4208863, 4209017, 4209187, 4209371, 4209539, 4209719, 4209899, 4210069, 4210253, 4210433, 4210607, 4210783, 4210967]
theorem check17 : primorialChainCheck 4473 primorial4473 184 4208173 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 4208173 4210967 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4208173) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [4211149, 4211321, 4211497, 4211681, 4211861, 4212029, 4212211, 4212371, 4212529, 4212713, 4212883, 4213063, 4213217, 4213397, 4213567, 4213747]
theorem check18 : primorialChainCheck 4473 primorial4473 184 4210967 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 4210967 4213747 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4210967) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [4213907, 4214087, 4214269, 4214437, 4214611, 4214779, 4214953, 4215103, 4215259, 4215443, 4215619, 4215803, 4215979, 4216133, 4216297, 4216469]
theorem check19 : primorialChainCheck 4473 primorial4473 184 4213747 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 4213747 4216469 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4213747) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [4216633, 4216813, 4216963, 4217141, 4217321, 4217503, 4217669, 4217849, 4218031, 4218199, 4218377, 4218547, 4218713, 4218869, 4219027, 4219211]
theorem check20 : primorialChainCheck 4473 primorial4473 184 4216469 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 4216469 4219211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4216469) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [4219363, 4219513, 4219697, 4219871, 4220053, 4220207, 4220387, 4220563, 4220731, 4220911, 4221047, 4221229, 4221409, 4221583, 4221761, 4221941]
theorem check21 : primorialChainCheck 4473 primorial4473 184 4219211 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 4219211 4221941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4219211) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [4222117, 4222297, 4222399, 4222577, 4222759, 4222937, 4223117, 4223267, 4223441, 4223617, 4223801, 4223983, 4224167, 4224331, 4224511, 4224679]
theorem check22 : primorialChainCheck 4473 primorial4473 184 4221941 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 4221941 4224679 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4221941) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [4224851, 4225019, 4225189, 4225373, 4225549, 4225729, 4225901, 4226077, 4226249, 4226429, 4226611, 4226791, 4226939, 4227109, 4227283, 4227451]
theorem check23 : primorialChainCheck 4473 primorial4473 184 4224679 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 4224679 4227451 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4224679) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [4227599, 4227761, 4227931, 4228111, 4228271, 4228429, 4228613, 4228793, 4228951, 4229129, 4229287, 4229461, 4229639, 4229809, 4229993, 4230169]
theorem check24 : primorialChainCheck 4473 primorial4473 184 4227451 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 4227451 4230169 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4227451) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [4230337, 4230493, 4230661, 4230817, 4230997, 4231177, 4231321, 4231483, 4231663, 4231837, 4232009, 4232191, 4232357, 4232539, 4232707, 4232887]
theorem check25 : primorialChainCheck 4473 primorial4473 184 4230169 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 4230169 4232887 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4230169) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [4233071, 4233247, 4233421, 4233601, 4233773, 4233937, 4234103, 4234273, 4234453, 4234537, 4234721, 4234877, 4235041, 4235201, 4235383, 4235563]
theorem check26 : primorialChainCheck 4473 primorial4473 184 4232887 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 4232887 4235563 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4232887) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [4235741, 4235923, 4236103, 4236283, 4236461, 4236643, 4236821, 4236997, 4237153, 4237333, 4237507, 4237687, 4237867, 4238033, 4238189, 4238309]
theorem check27 : primorialChainCheck 4473 primorial4473 184 4235563 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 4235563 4238309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4235563) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [4238459, 4238617, 4238791, 4238963, 4239121, 4239293, 4239463, 4239611, 4239761, 4239931, 4240111, 4240289, 4240469, 4240627, 4240811, 4240991]
theorem check28 : primorialChainCheck 4473 primorial4473 184 4238309 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 4238309 4240991 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4238309) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [4241173, 4241357, 4241539, 4241723, 4241903, 4242059, 4242241, 4242421, 4242593, 4242761, 4242941, 4243121, 4243297, 4243469, 4243649, 4243823]
theorem check29 : primorialChainCheck 4473 primorial4473 184 4240991 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 4240991 4243823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4240991) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [4244003, 4244183, 4244363, 4244533, 4244707, 4244881, 4245029, 4245209, 4245361, 4245541, 4245679, 4245851, 4246019, 4246199, 4246373, 4246553]
theorem check30 : primorialChainCheck 4473 primorial4473 184 4243823 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 4243823 4246553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4243823) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [4246727, 4246883, 4247057, 4247227, 4247407, 4247567, 4247743, 4247923, 4248103, 4248287, 4248463, 4248631, 4248809, 4248991, 4249163, 4249327]
theorem check31 : primorialChainCheck 4473 primorial4473 184 4246553 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 4246553 4249327 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4246553) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 4161349 4166873 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4161349)
    (mid := 4164131) (hi := 4166873) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 4166873 4172431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4166873)
    (mid := 4169689) (hi := 4172431) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 4172431 4177931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4172431)
    (mid := 4175141) (hi := 4177931) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 4177931 4183457 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4177931)
    (mid := 4180723) (hi := 4183457) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 4183457 4188901 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4183457)
    (mid := 4186129) (hi := 4188901) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 4188901 4194319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4188901)
    (mid := 4191581) (hi := 4194319) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 4194319 4199791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4194319)
    (mid := 4197107) (hi := 4199791) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 4199791 4205393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4199791)
    (mid := 4202567) (hi := 4205393) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 4205393 4210967 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4205393)
    (mid := 4208173) (hi := 4210967) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 4210967 4216469 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4210967)
    (mid := 4213747) (hi := 4216469) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 4216469 4221941 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4216469)
    (mid := 4219211) (hi := 4221941) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 4221941 4227451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4221941)
    (mid := 4224679) (hi := 4227451) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 4227451 4232887 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4227451)
    (mid := 4230169) (hi := 4232887) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 4232887 4238309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4232887)
    (mid := 4235563) (hi := 4238309) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 4238309 4243823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4238309)
    (mid := 4240991) (hi := 4243823) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 4243823 4249327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4243823)
    (mid := 4246553) (hi := 4249327) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 4161349 4172431 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4161349)
    (mid := 4166873) (hi := 4172431) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 4172431 4183457 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4172431)
    (mid := 4177931) (hi := 4183457) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 4183457 4194319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4183457)
    (mid := 4188901) (hi := 4194319) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 4194319 4205393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4194319)
    (mid := 4199791) (hi := 4205393) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 4205393 4216469 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4205393)
    (mid := 4210967) (hi := 4216469) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 4216469 4227451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4216469)
    (mid := 4221941) (hi := 4227451) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 4227451 4238309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4227451)
    (mid := 4232887) (hi := 4238309) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 4238309 4249327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4238309)
    (mid := 4243823) (hi := 4249327) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 4161349 4183457 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4161349)
    (mid := 4172431) (hi := 4183457) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 4183457 4205393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4183457)
    (mid := 4194319) (hi := 4205393) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 4205393 4227451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4205393)
    (mid := 4216469) (hi := 4227451) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 4227451 4249327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4227451)
    (mid := 4238309) (hi := 4249327) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 4161349 4205393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4161349)
    (mid := 4183457) (hi := 4205393) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 4205393 4249327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4205393)
    (mid := 4227451) (hi := 4249327) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 4161349 4249327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4161349)
    (mid := 4205393) (hi := 4249327) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 4161349 4249327 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block047

#print axioms B699MiddleExtension.PrimorialBlocks.Block047.joined
