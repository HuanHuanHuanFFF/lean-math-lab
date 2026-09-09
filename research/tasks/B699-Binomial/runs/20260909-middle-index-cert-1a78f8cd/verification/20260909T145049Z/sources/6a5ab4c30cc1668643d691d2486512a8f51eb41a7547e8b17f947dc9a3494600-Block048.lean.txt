import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block048

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [4249501, 4249669, 4249853, 4250027, 4250209, 4250387, 4250569, 4250749, 4250933, 4251073, 4251253, 4251419, 4251601, 4251773, 4251931, 4252111]
theorem check0 : primorialChainCheck 4473 primorial4473 184 4249327 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 4249327 4252111 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4249327) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [4252279, 4252463, 4252583, 4252757, 4252939, 4253101, 4253273, 4253449, 4253617, 4253759, 4253941, 4254113, 4254277, 4254451, 4254629, 4254799]
theorem check1 : primorialChainCheck 4473 primorial4473 184 4252111 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 4252111 4254799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4252111) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [4254983, 4255157, 4255313, 4255477, 4255637, 4255817, 4255997, 4256167, 4256347, 4256509, 4256671, 4256839, 4257023, 4257203, 4257371, 4257551]
theorem check2 : primorialChainCheck 4473 primorial4473 184 4254799 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 4254799 4257551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4254799) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [4257733, 4257899, 4258081, 4258259, 4258411, 4258571, 4258753, 4258937, 4259119, 4259303, 4259483, 4259653, 4259837, 4260019, 4260173, 4260343]
theorem check3 : primorialChainCheck 4473 primorial4473 184 4257551 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 4257551 4260343 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4257551) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [4260527, 4260703, 4260877, 4261051, 4261223, 4261391, 4261553, 4261727, 4261903, 4262077, 4262261, 4262431, 4262611, 4262777, 4262941, 4263121]
theorem check4 : primorialChainCheck 4473 primorial4473 184 4260343 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 4260343 4263121 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4260343) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [4263299, 4263449, 4263607, 4263781, 4263953, 4264109, 4264289, 4264471, 4264651, 4264831, 4265003, 4265179, 4265363, 4265537, 4265719, 4265903]
theorem check5 : primorialChainCheck 4473 primorial4473 184 4263121 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 4263121 4265903 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4263121) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [4266061, 4266221, 4266397, 4266557, 4266733, 4266907, 4267091, 4267261, 4267441, 4267619, 4267787, 4267937, 4268107, 4268287, 4268471, 4268651]
theorem check6 : primorialChainCheck 4473 primorial4473 184 4265903 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 4265903 4268651 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4265903) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [4268813, 4268993, 4269157, 4269313, 4269497, 4269679, 4269841, 4269983, 4270139, 4270319, 4270501, 4270667, 4270841, 4271017, 4271177, 4271357]
theorem check7 : primorialChainCheck 4473 primorial4473 184 4268651 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 4268651 4271357 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4268651) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [4271489, 4271627, 4271809, 4271963, 4272139, 4272311, 4272481, 4272659, 4272841, 4272973, 4273153, 4273301, 4273483, 4273667, 4273849, 4274029]
theorem check8 : primorialChainCheck 4473 primorial4473 184 4271357 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 4271357 4274029 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4271357) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [4274213, 4274393, 4274551, 4274731, 4274911, 4275083, 4275259, 4275419, 4275571, 4275751, 4275883, 4276067, 4276247, 4276429, 4276607, 4276787]
theorem check9 : primorialChainCheck 4473 primorial4473 184 4274029 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 4274029 4276787 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4274029) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [4276967, 4277113, 4277293, 4277477, 4277639, 4277813, 4277989, 4278143, 4278289, 4278467, 4278649, 4278829, 4279007, 4279159, 4279343, 4279523]
theorem check10 : primorialChainCheck 4473 primorial4473 184 4276787 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 4276787 4279523 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4276787) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [4279687, 4279871, 4280053, 4280203, 4280383, 4280561, 4280741, 4280917, 4281091, 4281271, 4281449, 4281619, 4281803, 4281971, 4282151, 4282331]
theorem check11 : primorialChainCheck 4473 primorial4473 184 4279523 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 4279523 4282331 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4279523) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [4282513, 4282693, 4282849, 4283029, 4283203, 4283369, 4283537, 4283707, 4283869, 4284041, 4284223, 4284389, 4284569, 4284743, 4284919, 4285087]
theorem check12 : primorialChainCheck 4473 primorial4473 184 4282331 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 4282331 4285087 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4282331) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [4285249, 4285427, 4285609, 4285793, 4285961, 4286131, 4286311, 4286489, 4286663, 4286833, 4286987, 4287137, 4287319, 4287473, 4287643, 4287823]
theorem check13 : primorialChainCheck 4473 primorial4473 184 4285087 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 4285087 4287823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4285087) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [4287991, 4288171, 4288321, 4288489, 4288637, 4288807, 4288979, 4289149, 4289317, 4289489, 4289657, 4289837, 4290017, 4290193, 4290373, 4290553]
theorem check14 : primorialChainCheck 4473 primorial4473 184 4287823 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 4287823 4290553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4287823) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [4290701, 4290833, 4290997, 4291181, 4291337, 4291499, 4291673, 4291843, 4292027, 4292209, 4292383, 4292567, 4292749, 4292923, 4293101, 4293269]
theorem check15 : primorialChainCheck 4473 primorial4473 184 4290553 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 4290553 4293269 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4290553) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [4293451, 4293631, 4293811, 4293941, 4294099, 4294259, 4294441, 4294607, 4294783, 4294967, 4295149, 4295323, 4295507, 4295689, 4295861, 4296043]
theorem check16 : primorialChainCheck 4473 primorial4473 184 4293269 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 4293269 4296043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4293269) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [4296221, 4296401, 4296581, 4296757, 4296917, 4297093, 4297261, 4297429, 4297613, 4297793, 4297963, 4298143, 4298299, 4298477, 4298647, 4298821]
theorem check17 : primorialChainCheck 4473 primorial4473 184 4296043 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 4296043 4298821 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4296043) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [4298981, 4299157, 4299329, 4299509, 4299683, 4299863, 4300013, 4300189, 4300369, 4300553, 4300717, 4300871, 4301053, 4301237, 4301417, 4301593]
theorem check18 : primorialChainCheck 4473 primorial4473 184 4298821 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 4298821 4301593 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4298821) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [4301747, 4301929, 4302097, 4302257, 4302439, 4302601, 4302773, 4302937, 4303121, 4303303, 4303487, 4303667, 4303813, 4303997, 4304161, 4304327]
theorem check19 : primorialChainCheck 4473 primorial4473 184 4301593 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 4301593 4304327 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4301593) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [4304497, 4304669, 4304851, 4305017, 4305179, 4305361, 4305527, 4305703, 4305881, 4306061, 4306231, 4306399, 4306583, 4306747, 4306921, 4307099]
theorem check20 : primorialChainCheck 4473 primorial4473 184 4304327 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 4304327 4307099 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4304327) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [4307263, 4307437, 4307603, 4307761, 4307939, 4308103, 4308277, 4308461, 4308637, 4308817, 4309001, 4309169, 4309343, 4309519, 4309693, 4309873]
theorem check21 : primorialChainCheck 4473 primorial4473 184 4307099 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 4307099 4309873 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4307099) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [4310057, 4310237, 4310393, 4310573, 4310753, 4310927, 4311107, 4311283, 4311467, 4311631, 4311809, 4311977, 4312157, 4312337, 4312519, 4312703]
theorem check22 : primorialChainCheck 4473 primorial4473 184 4309873 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 4309873 4312703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4309873) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [4312879, 4313041, 4313219, 4313389, 4313539, 4313713, 4313891, 4314059, 4314241, 4314419, 4314587, 4314769, 4314953, 4315123, 4315303, 4315481]
theorem check23 : primorialChainCheck 4473 primorial4473 184 4312703 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 4312703 4315481 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4312703) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [4315607, 4315777, 4315931, 4316107, 4316251, 4316423, 4316593, 4316777, 4316959, 4317139, 4317323, 4317497, 4317667, 4317827, 4317991, 4318163]
theorem check24 : primorialChainCheck 4473 primorial4473 184 4315481 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 4315481 4318163 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4315481) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [4318337, 4318513, 4318673, 4318849, 4319027, 4319209, 4319383, 4319563, 4319743, 4319893, 4320061, 4320241, 4320419, 4320593, 4320761, 4320929]
theorem check25 : primorialChainCheck 4473 primorial4473 184 4318163 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 4318163 4320929 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4318163) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [4321103, 4321259, 4321439, 4321613, 4321787, 4321931, 4322089, 4322243, 4322419, 4322603, 4322783, 4322963, 4323101, 4323283, 4323467, 4323647]
theorem check26 : primorialChainCheck 4473 primorial4473 184 4320929 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 4320929 4323647 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4320929) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [4323817, 4323997, 4324157, 4324339, 4324519, 4324699, 4324861, 4325039, 4325207, 4325389, 4325569, 4325743, 4325921, 4326083, 4326263, 4326437]
theorem check27 : primorialChainCheck 4473 primorial4473 184 4323647 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 4323647 4326437 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4323647) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [4326611, 4326769, 4326947, 4327123, 4327283, 4327451, 4327633, 4327793, 4327963, 4328147, 4328327, 4328497, 4328677, 4328861, 4329043, 4329211]
theorem check28 : primorialChainCheck 4473 primorial4473 184 4326437 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 4326437 4329211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4326437) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [4329389, 4329551, 4329733, 4329907, 4330037, 4330201, 4330373, 4330523, 4330687, 4330867, 4331051, 4331219, 4331389, 4331573, 4331749, 4331917]
theorem check29 : primorialChainCheck 4473 primorial4473 184 4329211 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 4329211 4331917 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4329211) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [4332091, 4332259, 4332443, 4332619, 4332793, 4332973, 4333129, 4333279, 4333457, 4333633, 4333753, 4333933, 4334107, 4334279, 4334459, 4334597]
theorem check30 : primorialChainCheck 4473 primorial4473 184 4331917 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 4331917 4334597 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4331917) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [4334777, 4334933, 4335103, 4335281, 4335437, 4335619, 4335787, 4335967, 4336151, 4336333, 4336487, 4336663, 4336847, 4337027, 4337209, 4337393]
theorem check31 : primorialChainCheck 4473 primorial4473 184 4334597 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 4334597 4337393 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4334597) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 4249327 4254799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4249327)
    (mid := 4252111) (hi := 4254799) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 4254799 4260343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4254799)
    (mid := 4257551) (hi := 4260343) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 4260343 4265903 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4260343)
    (mid := 4263121) (hi := 4265903) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 4265903 4271357 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4265903)
    (mid := 4268651) (hi := 4271357) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 4271357 4276787 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4271357)
    (mid := 4274029) (hi := 4276787) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 4276787 4282331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4276787)
    (mid := 4279523) (hi := 4282331) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 4282331 4287823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4282331)
    (mid := 4285087) (hi := 4287823) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 4287823 4293269 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4287823)
    (mid := 4290553) (hi := 4293269) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 4293269 4298821 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4293269)
    (mid := 4296043) (hi := 4298821) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 4298821 4304327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4298821)
    (mid := 4301593) (hi := 4304327) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 4304327 4309873 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4304327)
    (mid := 4307099) (hi := 4309873) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 4309873 4315481 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4309873)
    (mid := 4312703) (hi := 4315481) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 4315481 4320929 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4315481)
    (mid := 4318163) (hi := 4320929) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 4320929 4326437 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4320929)
    (mid := 4323647) (hi := 4326437) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 4326437 4331917 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4326437)
    (mid := 4329211) (hi := 4331917) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 4331917 4337393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4331917)
    (mid := 4334597) (hi := 4337393) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 4249327 4260343 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4249327)
    (mid := 4254799) (hi := 4260343) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 4260343 4271357 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4260343)
    (mid := 4265903) (hi := 4271357) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 4271357 4282331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4271357)
    (mid := 4276787) (hi := 4282331) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 4282331 4293269 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4282331)
    (mid := 4287823) (hi := 4293269) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 4293269 4304327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4293269)
    (mid := 4298821) (hi := 4304327) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 4304327 4315481 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4304327)
    (mid := 4309873) (hi := 4315481) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 4315481 4326437 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4315481)
    (mid := 4320929) (hi := 4326437) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 4326437 4337393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4326437)
    (mid := 4331917) (hi := 4337393) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 4249327 4271357 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4249327)
    (mid := 4260343) (hi := 4271357) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 4271357 4293269 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4271357)
    (mid := 4282331) (hi := 4293269) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 4293269 4315481 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4293269)
    (mid := 4304327) (hi := 4315481) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 4315481 4337393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4315481)
    (mid := 4326437) (hi := 4337393) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 4249327 4293269 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4249327)
    (mid := 4271357) (hi := 4293269) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 4293269 4337393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4293269)
    (mid := 4315481) (hi := 4337393) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 4249327 4337393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4249327)
    (mid := 4293269) (hi := 4337393) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 4249327 4337393 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block048

#print axioms B699MiddleExtension.PrimorialBlocks.Block048.joined
