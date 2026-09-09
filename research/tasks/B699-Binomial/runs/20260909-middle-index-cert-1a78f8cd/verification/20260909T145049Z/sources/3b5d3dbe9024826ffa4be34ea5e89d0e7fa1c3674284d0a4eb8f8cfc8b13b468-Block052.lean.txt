import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block052

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [4601417, 4601599, 4601759, 4601939, 4602113, 4602293, 4602463, 4602629, 4602811, 4602989, 4603171, 4603351, 4603517, 4603699, 4603867, 4603999]
theorem check0 : primorialChainCheck 4473 primorial4473 184 4601239 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 4601239 4603999 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4601239) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [4604147, 4604323, 4604507, 4604689, 4604857, 4605031, 4605199, 4605383, 4605553, 4605737, 4605917, 4606079, 4606249, 4606429, 4606597, 4606769]
theorem check1 : primorialChainCheck 4473 primorial4473 184 4603999 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 4603999 4606769 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4603999) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [4606939, 4607093, 4607257, 4607431, 4607611, 4607789, 4607963, 4608143, 4608319, 4608493, 4608661, 4608841, 4609013, 4609169, 4609351, 4609531]
theorem check2 : primorialChainCheck 4473 primorial4473 184 4606769 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 4606769 4609531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4606769) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [4609699, 4609849, 4610033, 4610173, 4610357, 4610531, 4610707, 4610869, 4611041, 4611221, 4611391, 4611571, 4611749, 4611931, 4612103, 4612277]
theorem check3 : primorialChainCheck 4473 primorial4473 184 4609531 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 4609531 4612277 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4609531) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [4612451, 4612633, 4612813, 4612987, 4613113, 4613293, 4613471, 4613629, 4613803, 4613981, 4614163, 4614347, 4614523, 4614689, 4614839, 4615003]
theorem check4 : primorialChainCheck 4473 primorial4473 184 4612277 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 4612277 4615003 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4612277) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [4615183, 4615367, 4615549, 4615703, 4615867, 4616039, 4616189, 4616371, 4616531, 4616693, 4616863, 4617001, 4617161, 4617337, 4617521, 4617671]
theorem check5 : primorialChainCheck 4473 primorial4473 184 4615003 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 4615003 4617671 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4615003) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [4617839, 4618001, 4618183, 4618357, 4618541, 4618723, 4618879, 4619063, 4619233, 4619399, 4619579, 4619749, 4619929, 4620103, 4620283, 4620463]
theorem check6 : primorialChainCheck 4473 primorial4473 184 4617671 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 4617671 4620463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4617671) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [4620611, 4620793, 4620977, 4621159, 4621343, 4621517, 4621691, 4621867, 4622047, 4622213, 4622389, 4622573, 4622753, 4622911, 4623053, 4623217]
theorem check7 : primorialChainCheck 4473 primorial4473 184 4620463 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 4620463 4623217 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4620463) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [4623401, 4623581, 4623761, 4623911, 4624093, 4624261, 4624441, 4624603, 4624787, 4624967, 4625141, 4625321, 4625459, 4625641, 4625807, 4625939]
theorem check8 : primorialChainCheck 4473 primorial4473 184 4623217 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 4623217 4625939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4623217) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [4626121, 4626299, 4626469, 4626653, 4626833, 4627003, 4627177, 4627361, 4627529, 4627699, 4627879, 4628051, 4628227, 4628411, 4628581, 4628759]
theorem check9 : primorialChainCheck 4473 primorial4473 184 4625939 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 4625939 4628759 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4625939) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [4628929, 4629101, 4629283, 4629467, 4629631, 4629809, 4629991, 4630139, 4630313, 4630469, 4630651, 4630831, 4630999, 4631171, 4631353, 4631537]
theorem check10 : primorialChainCheck 4473 primorial4473 184 4628759 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 4628759 4631537 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4628759) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [4631719, 4631903, 4632077, 4632247, 4632403, 4632577, 4632757, 4632917, 4633067, 4633219, 4633403, 4633583, 4633763, 4633931, 4634111, 4634291]
theorem check11 : primorialChainCheck 4473 primorial4473 184 4631537 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 4631537 4634291 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4631537) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [4634473, 4634639, 4634821, 4634977, 4635161, 4635343, 4635517, 4635649, 4635821, 4636003, 4636169, 4636351, 4636531, 4636711, 4636883, 4637041]
theorem check12 : primorialChainCheck 4473 primorial4473 184 4634291 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 4634291 4637041 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4634291) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [4637201, 4637371, 4637519, 4637687, 4637833, 4638017, 4638199, 4638377, 4638553, 4638737, 4638911, 4639081, 4639259, 4639423, 4639597, 4639771]
theorem check13 : primorialChainCheck 4473 primorial4473 184 4637041 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 4637041 4639771 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4637041) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [4639939, 4640117, 4640287, 4640443, 4640599, 4640777, 4640953, 4641137, 4641293, 4641473, 4641647, 4641829, 4642013, 4642181, 4642361, 4642541]
theorem check14 : primorialChainCheck 4473 primorial4473 184 4639771 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 4639771 4642541 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4639771) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [4642721, 4642889, 4643069, 4643251, 4643417, 4643593, 4643761, 4643939, 4644097, 4644259, 4644433, 4644617, 4644799, 4644971, 4645153, 4645309]
theorem check15 : primorialChainCheck 4473 primorial4473 184 4642541 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 4642541 4645309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4642541) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [4645489, 4645651, 4645813, 4645987, 4646171, 4646347, 4646527, 4646711, 4646891, 4647073, 4647211, 4647373, 4647557, 4647733, 4647893, 4648069]
theorem check16 : primorialChainCheck 4473 primorial4473 184 4645309 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 4645309 4648069 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4645309) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [4648243, 4648417, 4648591, 4648757, 4648937, 4649119, 4649303, 4649467, 4649651, 4649819, 4649971, 4650137, 4650311, 4650491, 4650661, 4650827]
theorem check17 : primorialChainCheck 4473 primorial4473 184 4648069 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 4648069 4650827 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4648069) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [4651007, 4651187, 4651369, 4651553, 4651733, 4651909, 4652029, 4652189, 4652353, 4652533, 4652699, 4652881, 4653059, 4653221, 4653403, 4653587]
theorem check18 : primorialChainCheck 4473 primorial4473 184 4650827 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 4650827 4653587 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4650827) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [4653763, 4653941, 4654109, 4654291, 4654469, 4654649, 4654817, 4654963, 4655143, 4655317, 4655473, 4655657, 4655831, 4655971, 4656151, 4656331]
theorem check19 : primorialChainCheck 4473 primorial4473 184 4653587 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 4653587 4656331 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4653587) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [4656503, 4656661, 4656823, 4657007, 4657189, 4657363, 4657547, 4657729, 4657909, 4658053, 4658237, 4658419, 4658603, 4658779, 4658963, 4659131]
theorem check20 : primorialChainCheck 4473 primorial4473 184 4656331 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 4656331 4659131 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4656331) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [4659311, 4659493, 4659673, 4659857, 4660009, 4660189, 4660361, 4660543, 4660723, 4660889, 4661057, 4661233, 4661399, 4661581, 4661747, 4661911]
theorem check21 : primorialChainCheck 4473 primorial4473 184 4659131 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 4659131 4661911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4659131) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [4662083, 4662263, 4662433, 4662611, 4662773, 4662919, 4663079, 4663259, 4663441, 4663621, 4663801, 4663979, 4664141, 4664323, 4664507, 4664687]
theorem check22 : primorialChainCheck 4473 primorial4473 184 4661911 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 4661911 4664687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4661911) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [4664867, 4665049, 4665209, 4665379, 4665553, 4665733, 4665917, 4666069, 4666253, 4666433, 4666589, 4666741, 4666903, 4667063, 4667209, 4667393]
theorem check23 : primorialChainCheck 4473 primorial4473 184 4664687 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 4664687 4667393 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4664687) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [4667573, 4667743, 4667921, 4668071, 4668247, 4668431, 4668589, 4668773, 4668953, 4669111, 4669283, 4669463, 4669627, 4669811, 4669979, 4670129]
theorem check24 : primorialChainCheck 4473 primorial4473 184 4667393 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 4667393 4670129 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4667393) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [4670297, 4670459, 4670641, 4670819, 4670999, 4671167, 4671347, 4671529, 4671713, 4671893, 4672049, 4672231, 4672373, 4672553, 4672709, 4672891]
theorem check25 : primorialChainCheck 4473 primorial4473 184 4670129 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 4670129 4672891 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4670129) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [4673051, 4673191, 4673353, 4673527, 4673707, 4673863, 4674023, 4674199, 4674377, 4674557, 4674739, 4674919, 4675103, 4675277, 4675453, 4675633]
theorem check26 : primorialChainCheck 4473 primorial4473 184 4672891 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 4672891 4675633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4672891) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [4675817, 4675963, 4676141, 4676323, 4676491, 4676671, 4676851, 4677031, 4677199, 4677383, 4677529, 4677713, 4677889, 4678073, 4678249, 4678397]
theorem check27 : primorialChainCheck 4473 primorial4473 184 4675633 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 4675633 4678397 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4675633) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [4678567, 4678741, 4678907, 4679089, 4679221, 4679401, 4679581, 4679761, 4679929, 4680097, 4680211, 4680383, 4680563, 4680743, 4680913, 4681097]
theorem check28 : primorialChainCheck 4473 primorial4473 184 4678397 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 4678397 4681097 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4678397) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [4681253, 4681433, 4681609, 4681793, 4681973, 4682149, 4682309, 4682479, 4682647, 4682807, 4682989, 4683167, 4683337, 4683521, 4683667, 4683851]
theorem check29 : primorialChainCheck 4473 primorial4473 184 4681097 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 4681097 4683851 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4681097) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [4684003, 4684181, 4684357, 4684529, 4684703, 4684879, 4685063, 4685231, 4685413, 4685579, 4685749, 4685927, 4686083, 4686257, 4686431, 4686601]
theorem check30 : primorialChainCheck 4473 primorial4473 184 4683851 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 4683851 4686601 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4683851) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [4686709, 4686881, 4687063, 4687247, 4687421, 4687601, 4687783, 4687967, 4688149, 4688329, 4688503, 4688683, 4688867, 4689043, 4689197, 4689359]
theorem check31 : primorialChainCheck 4473 primorial4473 184 4686601 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 4686601 4689359 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4686601) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 4601239 4606769 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4601239)
    (mid := 4603999) (hi := 4606769) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 4606769 4612277 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4606769)
    (mid := 4609531) (hi := 4612277) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 4612277 4617671 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4612277)
    (mid := 4615003) (hi := 4617671) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 4617671 4623217 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4617671)
    (mid := 4620463) (hi := 4623217) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 4623217 4628759 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4623217)
    (mid := 4625939) (hi := 4628759) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 4628759 4634291 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4628759)
    (mid := 4631537) (hi := 4634291) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 4634291 4639771 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4634291)
    (mid := 4637041) (hi := 4639771) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 4639771 4645309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4639771)
    (mid := 4642541) (hi := 4645309) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 4645309 4650827 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4645309)
    (mid := 4648069) (hi := 4650827) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 4650827 4656331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4650827)
    (mid := 4653587) (hi := 4656331) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 4656331 4661911 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4656331)
    (mid := 4659131) (hi := 4661911) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 4661911 4667393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4661911)
    (mid := 4664687) (hi := 4667393) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 4667393 4672891 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4667393)
    (mid := 4670129) (hi := 4672891) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 4672891 4678397 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4672891)
    (mid := 4675633) (hi := 4678397) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 4678397 4683851 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4678397)
    (mid := 4681097) (hi := 4683851) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 4683851 4689359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4683851)
    (mid := 4686601) (hi := 4689359) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 4601239 4612277 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4601239)
    (mid := 4606769) (hi := 4612277) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 4612277 4623217 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4612277)
    (mid := 4617671) (hi := 4623217) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 4623217 4634291 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4623217)
    (mid := 4628759) (hi := 4634291) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 4634291 4645309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4634291)
    (mid := 4639771) (hi := 4645309) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 4645309 4656331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4645309)
    (mid := 4650827) (hi := 4656331) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 4656331 4667393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4656331)
    (mid := 4661911) (hi := 4667393) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 4667393 4678397 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4667393)
    (mid := 4672891) (hi := 4678397) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 4678397 4689359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4678397)
    (mid := 4683851) (hi := 4689359) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 4601239 4623217 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4601239)
    (mid := 4612277) (hi := 4623217) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 4623217 4645309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4623217)
    (mid := 4634291) (hi := 4645309) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 4645309 4667393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4645309)
    (mid := 4656331) (hi := 4667393) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 4667393 4689359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4667393)
    (mid := 4678397) (hi := 4689359) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 4601239 4645309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4601239)
    (mid := 4623217) (hi := 4645309) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 4645309 4689359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4645309)
    (mid := 4667393) (hi := 4689359) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 4601239 4689359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4601239)
    (mid := 4645309) (hi := 4689359) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 4601239 4689359 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block052

#print axioms B699MiddleExtension.PrimorialBlocks.Block052.joined
