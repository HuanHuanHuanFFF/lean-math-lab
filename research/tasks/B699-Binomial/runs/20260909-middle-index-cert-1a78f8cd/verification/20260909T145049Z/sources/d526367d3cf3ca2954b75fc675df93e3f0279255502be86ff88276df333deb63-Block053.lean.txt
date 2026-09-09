import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block053

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [4689481, 4689661, 4689829, 4690001, 4690123, 4690307, 4690481, 4690661, 4690843, 4691009, 4691191, 4691369, 4691539, 4691717, 4691899, 4692071]
theorem check0 : primorialChainCheck 4473 primorial4473 184 4689359 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 4689359 4692071 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4689359) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [4692251, 4692431, 4692593, 4692773, 4692953, 4693123, 4693303, 4693477, 4693651, 4693831, 4694003, 4694171, 4694341, 4694519, 4694699, 4694863]
theorem check1 : primorialChainCheck 4473 primorial4473 184 4692071 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 4692071 4694863 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4692071) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [4695029, 4695203, 4695377, 4695547, 4695731, 4695913, 4696093, 4696273, 4696457, 4696639, 4696823, 4697003, 4697179, 4697347, 4697531, 4697711]
theorem check2 : primorialChainCheck 4473 primorial4473 184 4694863 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 4694863 4697711 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4694863) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [4697881, 4698059, 4698193, 4698361, 4698541, 4698721, 4698893, 4699043, 4699217, 4699399, 4699579, 4699757, 4699931, 4700107, 4700261, 4700419]
theorem check3 : primorialChainCheck 4473 primorial4473 184 4697711 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 4697711 4700419 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4697711) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [4700603, 4700783, 4700963, 4701143, 4701317, 4701467, 4701643, 4701811, 4701971, 4702153, 4702337, 4702513, 4702681, 4702853, 4703021, 4703189]
theorem check4 : primorialChainCheck 4473 primorial4473 184 4700419 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 4700419 4703189 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4700419) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [4703371, 4703533, 4703717, 4703879, 4704031, 4704211, 4704391, 4704551, 4704697, 4704871, 4705049, 4705219, 4705403, 4705579, 4705759, 4705931]
theorem check5 : primorialChainCheck 4473 primorial4473 184 4703189 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 4703189 4705931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4703189) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [4706101, 4706279, 4706419, 4706599, 4706783, 4706959, 4707127, 4707281, 4707449, 4707613, 4707779, 4707949, 4708129, 4708313, 4708493, 4708631]
theorem check6 : primorialChainCheck 4473 primorial4473 184 4705931 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 4705931 4708631 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4705931) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [4708811, 4708969, 4709149, 4709333, 4709491, 4709659, 4709839, 4709987, 4710161, 4710341, 4710523, 4710701, 4710869, 4711051, 4711229, 4711409]
theorem check7 : primorialChainCheck 4473 primorial4473 184 4708631 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 4708631 4711409 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4708631) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [4711591, 4711741, 4711921, 4712087, 4712261, 4712443, 4712599, 4712783, 4712959, 4713139, 4713323, 4713493, 4713659, 4713791, 4713971, 4714097]
theorem check8 : primorialChainCheck 4473 primorial4473 184 4711409 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 4711409 4714097 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4711409) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [4714279, 4714459, 4714643, 4714823, 4714999, 4715177, 4715329, 4715507, 4715657, 4715801, 4715969, 4716149, 4716329, 4716511, 4716689, 4716869]
theorem check9 : primorialChainCheck 4473 primorial4473 184 4714097 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 4714097 4716869 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4714097) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [4717049, 4717217, 4717397, 4717577, 4717753, 4717927, 4718111, 4718281, 4718449, 4718627, 4718773, 4718951, 4719133, 4719311, 4719493, 4719677]
theorem check10 : primorialChainCheck 4473 primorial4473 184 4716869 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 4716869 4719677 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4716869) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [4719857, 4720039, 4720223, 4720403, 4720561, 4720741, 4720921, 4721077, 4721261, 4721441, 4721617, 4721791, 4721963, 4722121, 4722299, 4722479]
theorem check11 : primorialChainCheck 4473 primorial4473 184 4719677 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 4719677 4722479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4719677) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [4722661, 4722841, 4723021, 4723193, 4723373, 4723517, 4723699, 4723879, 4724063, 4724243, 4724383, 4724561, 4724723, 4724903, 4725067, 4725247]
theorem check12 : primorialChainCheck 4473 primorial4473 184 4722479 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 4722479 4725247 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4722479) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [4725431, 4725613, 4725781, 4725953, 4726133, 4726303, 4726483, 4726619, 4726793, 4726963, 4727147, 4727329, 4727501, 4727647, 4727813, 4727993]
theorem check13 : primorialChainCheck 4473 primorial4473 184 4725247 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 4725247 4727993 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4725247) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [4728173, 4728349, 4728527, 4728697, 4728799, 4728973, 4729139, 4729321, 4729481, 4729663, 4729843, 4730027, 4730179, 4730359, 4730533, 4730717]
theorem check14 : primorialChainCheck 4473 primorial4473 184 4727993 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 4727993 4730717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4727993) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [4730897, 4731061, 4731241, 4731409, 4731577, 4731751, 4731929, 4732109, 4732271, 4732447, 4732621, 4732769, 4732927, 4733093, 4733273, 4733441]
theorem check15 : primorialChainCheck 4473 primorial4473 184 4730717 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 4730717 4733441 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4730717) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [4733623, 4733797, 4733969, 4734151, 4734329, 4734503, 4734679, 4734841, 4734997, 4735177, 4735361, 4735531, 4735711, 4735879, 4736057, 4736231]
theorem check16 : primorialChainCheck 4473 primorial4473 184 4733441 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 4733441 4736231 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4733441) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [4736401, 4736581, 4736759, 4736939, 4737119, 4737301, 4737461, 4737619, 4737797, 4737979, 4738157, 4738303, 4738477, 4738651, 4738831, 4738991]
theorem check17 : primorialChainCheck 4473 primorial4473 184 4736231 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 4736231 4738991 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4736231) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [4739171, 4739327, 4739509, 4739689, 4739857, 4740037, 4740217, 4740397, 4740559, 4740731, 4740907, 4741081, 4741259, 4741441, 4741613, 4741787]
theorem check18 : primorialChainCheck 4473 primorial4473 184 4738991 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 4738991 4741787 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4738991) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [4741969, 4742147, 4742329, 4742489, 4742671, 4742831, 4743007, 4743191, 4743337, 4743509, 4743691, 4743859, 4744027, 4744211, 4744393, 4744573]
theorem check19 : primorialChainCheck 4473 primorial4473 184 4741787 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 4741787 4744573 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4741787) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [4744741, 4744913, 4745089, 4745267, 4745441, 4745623, 4745773, 4745957, 4746139, 4746311, 4746493, 4746673, 4746823, 4746997, 4747181, 4747357]
theorem check20 : primorialChainCheck 4473 primorial4473 184 4744573 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 4744573 4747357 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4744573) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [4747537, 4747703, 4747871, 4748047, 4748231, 4748413, 4748591, 4748771, 4748941, 4749097, 4749271, 4749427, 4749607, 4749781, 4749911, 4750091]
theorem check21 : primorialChainCheck 4473 primorial4473 184 4747357 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 4747357 4750091 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4747357) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [4750241, 4750423, 4750579, 4750729, 4750891, 4751057, 4751237, 4751393, 4751567, 4751749, 4751917, 4752091, 4752263, 4752443, 4752623, 4752791]
theorem check22 : primorialChainCheck 4473 primorial4473 184 4750091 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 4750091 4752791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4750091) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [4752949, 4753127, 4753289, 4753459, 4753643, 4753823, 4753997, 4754177, 4754359, 4754531, 4754681, 4754863, 4755031, 4755211, 4755389, 4755571]
theorem check23 : primorialChainCheck 4473 primorial4473 184 4752791 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 4752791 4755571 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4752791) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [4755703, 4755857, 4756033, 4756183, 4756357, 4756537, 4756711, 4756891, 4757057, 4757231, 4757411, 4757593, 4757777, 4757957, 4758121, 4758301]
theorem check24 : primorialChainCheck 4473 primorial4473 184 4755571 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 4755571 4758301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4755571) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [4758449, 4758629, 4758811, 4758991, 4759171, 4759351, 4759493, 4759663, 4759841, 4760023, 4760201, 4760369, 4760543, 4760719, 4760893, 4761061]
theorem check25 : primorialChainCheck 4473 primorial4473 184 4758301 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 4758301 4761061 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4758301) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [4761223, 4761403, 4761583, 4761763, 4761947, 4762117, 4762271, 4762451, 4762613, 4762783, 4762957, 4763137, 4763321, 4763477, 4763659, 4763839]
theorem check26 : primorialChainCheck 4473 primorial4473 184 4761061 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 4761061 4763839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4761061) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [4763981, 4764143, 4764317, 4764493, 4764673, 4764857, 4765039, 4765223, 4765399, 4765583, 4765759, 4765939, 4766123, 4766299, 4766459, 4766633]
theorem check27 : primorialChainCheck 4473 primorial4473 184 4763839 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 4763839 4766633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4763839) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [4766807, 4766981, 4767151, 4767331, 4767493, 4767673, 4767853, 4768033, 4768207, 4768391, 4768549, 4768727, 4768909, 4769081, 4769239, 4769377]
theorem check28 : primorialChainCheck 4473 primorial4473 184 4766633 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 4766633 4769377 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4766633) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [4769549, 4769719, 4769903, 4770079, 4770263, 4770443, 4770611, 4770793, 4770977, 4771159, 4771331, 4771493, 4771633, 4771817, 4771999, 4772179]
theorem check29 : primorialChainCheck 4473 primorial4473 184 4769377 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 4769377 4772179 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4769377) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [4772353, 4772531, 4772683, 4772863, 4773019, 4773203, 4773383, 4773557, 4773739, 4773913, 4774069, 4774249, 4774423, 4774597, 4774769, 4774951]
theorem check30 : primorialChainCheck 4473 primorial4473 184 4772179 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 4772179 4774951 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4772179) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [4775131, 4775299, 4775461, 4775621, 4775791, 4775959, 4776143, 4776323, 4776491, 4776671, 4776853, 4777027, 4777211, 4777363, 4777523, 4777681]
theorem check31 : primorialChainCheck 4473 primorial4473 184 4774951 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 4774951 4777681 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4774951) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 4689359 4694863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4689359)
    (mid := 4692071) (hi := 4694863) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 4694863 4700419 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4694863)
    (mid := 4697711) (hi := 4700419) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 4700419 4705931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4700419)
    (mid := 4703189) (hi := 4705931) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 4705931 4711409 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4705931)
    (mid := 4708631) (hi := 4711409) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 4711409 4716869 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4711409)
    (mid := 4714097) (hi := 4716869) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 4716869 4722479 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4716869)
    (mid := 4719677) (hi := 4722479) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 4722479 4727993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4722479)
    (mid := 4725247) (hi := 4727993) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 4727993 4733441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4727993)
    (mid := 4730717) (hi := 4733441) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 4733441 4738991 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4733441)
    (mid := 4736231) (hi := 4738991) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 4738991 4744573 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4738991)
    (mid := 4741787) (hi := 4744573) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 4744573 4750091 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4744573)
    (mid := 4747357) (hi := 4750091) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 4750091 4755571 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4750091)
    (mid := 4752791) (hi := 4755571) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 4755571 4761061 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4755571)
    (mid := 4758301) (hi := 4761061) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 4761061 4766633 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4761061)
    (mid := 4763839) (hi := 4766633) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 4766633 4772179 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4766633)
    (mid := 4769377) (hi := 4772179) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 4772179 4777681 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4772179)
    (mid := 4774951) (hi := 4777681) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 4689359 4700419 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4689359)
    (mid := 4694863) (hi := 4700419) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 4700419 4711409 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4700419)
    (mid := 4705931) (hi := 4711409) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 4711409 4722479 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4711409)
    (mid := 4716869) (hi := 4722479) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 4722479 4733441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4722479)
    (mid := 4727993) (hi := 4733441) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 4733441 4744573 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4733441)
    (mid := 4738991) (hi := 4744573) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 4744573 4755571 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4744573)
    (mid := 4750091) (hi := 4755571) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 4755571 4766633 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4755571)
    (mid := 4761061) (hi := 4766633) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 4766633 4777681 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4766633)
    (mid := 4772179) (hi := 4777681) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 4689359 4711409 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4689359)
    (mid := 4700419) (hi := 4711409) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 4711409 4733441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4711409)
    (mid := 4722479) (hi := 4733441) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 4733441 4755571 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4733441)
    (mid := 4744573) (hi := 4755571) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 4755571 4777681 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4755571)
    (mid := 4766633) (hi := 4777681) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 4689359 4733441 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4689359)
    (mid := 4711409) (hi := 4733441) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 4733441 4777681 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4733441)
    (mid := 4755571) (hi := 4777681) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 4689359 4777681 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4689359)
    (mid := 4733441) (hi := 4777681) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 4689359 4777681 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block053

#print axioms B699MiddleExtension.PrimorialBlocks.Block053.joined
