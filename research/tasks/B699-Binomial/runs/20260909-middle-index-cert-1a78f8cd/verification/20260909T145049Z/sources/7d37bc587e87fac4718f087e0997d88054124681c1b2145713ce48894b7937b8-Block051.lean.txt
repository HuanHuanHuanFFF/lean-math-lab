import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block051

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [4513463, 4513643, 4513807, 4513987, 4514137, 4514317, 4514501, 4514681, 4514863, 4515041, 4515209, 4515361, 4515541, 4515697, 4515881, 4516051]
theorem check0 : primorialChainCheck 4473 primorial4473 184 4513283 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 4513283 4516051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4513283) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [4516231, 4516411, 4516573, 4516751, 4516931, 4517113, 4517281, 4517437, 4517603, 4517783, 4517957, 4518133, 4518313, 4518491, 4518667, 4518823]
theorem check1 : primorialChainCheck 4473 primorial4473 184 4516051 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 4516051 4518823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4516051) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [4519007, 4519189, 4519373, 4519547, 4519727, 4519901, 4520071, 4520239, 4520407, 4520587, 4520767, 4520911, 4521079, 4521241, 4521421, 4521599]
theorem check2 : primorialChainCheck 4473 primorial4473 184 4518823 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 4518823 4521599 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4518823) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [4521773, 4521929, 4522097, 4522261, 4522411, 4522591, 4522747, 4522883, 4523063, 4523231, 4523399, 4523579, 4523747, 4523917, 4524097, 4524277]
theorem check3 : primorialChainCheck 4473 primorial4473 184 4521599 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 4521599 4524277 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4521599) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [4524449, 4524631, 4524803, 4524959, 4525139, 4525321, 4525501, 4525663, 4525847, 4526003, 4526177, 4526339, 4526521, 4526701, 4526881, 4527053]
theorem check4 : primorialChainCheck 4473 primorial4473 184 4524277 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 4524277 4527053 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4524277) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [4527233, 4527403, 4527563, 4527739, 4527923, 4528093, 4528253, 4528429, 4528609, 4528787, 4528961, 4529141, 4529323, 4529471, 4529653, 4529783]
theorem check5 : primorialChainCheck 4473 primorial4473 184 4527053 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 4527053 4529783 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4527053) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [4529957, 4530121, 4530301, 4530481, 4530649, 4530833, 4531003, 4531171, 4531339, 4531517, 4531663, 4531847, 4532023, 4532201, 4532377, 4532531]
theorem check6 : primorialChainCheck 4473 primorial4473 184 4529783 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 4529783 4532531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4529783) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [4532707, 4532831, 4533007, 4533187, 4533371, 4533547, 4533701, 4533853, 4534037, 4534199, 4534367, 4534549, 4534729, 4534891, 4535017, 4535197]
theorem check7 : primorialChainCheck 4473 primorial4473 184 4532531 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 4532531 4535197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4532531) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [4535371, 4535539, 4535717, 4535893, 4536073, 4536179, 4536361, 4536529, 4536703, 4536871, 4537033, 4537213, 4537391, 4537571, 4537733, 4537909]
theorem check8 : primorialChainCheck 4473 primorial4473 184 4535197 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 4535197 4537909 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4535197) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [4538089, 4538267, 4538447, 4538627, 4538791, 4538969, 4539149, 4539331, 4539511, 4539679, 4539859, 4540027, 4540201, 4540369, 4540541, 4540687]
theorem check9 : primorialChainCheck 4473 primorial4473 184 4537909 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 4537909 4540687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4537909) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [4540807, 4540979, 4541153, 4541333, 4541503, 4541681, 4541851, 4542029, 4542211, 4542389, 4542547, 4542719, 4542887, 4543051, 4543207, 4543387]
theorem check10 : primorialChainCheck 4473 primorial4473 184 4540687 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 4540687 4543387 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4540687) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [4543571, 4543753, 4543937, 4544119, 4544297, 4544479, 4544663, 4544833, 4545017, 4545197, 4545379, 4545557, 4545733, 4545913, 4546081, 4546253]
theorem check11 : primorialChainCheck 4473 primorial4473 184 4543387 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 4543387 4546253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4543387) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [4546427, 4546609, 4546793, 4546963, 4547129, 4547311, 4547467, 4547581, 4547749, 4547923, 4548107, 4548287, 4548443, 4548611, 4548793, 4548967]
theorem check12 : primorialChainCheck 4473 primorial4473 184 4546253 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 4546253 4548967 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4546253) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [4549133, 4549309, 4549487, 4549669, 4549849, 4550027, 4550207, 4550387, 4550569, 4550737, 4550921, 4551103, 4551233, 4551413, 4551571, 4551737]
theorem check13 : primorialChainCheck 4473 primorial4473 184 4548967 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 4548967 4551737 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4548967) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [4551917, 4552087, 4552259, 4552441, 4552619, 4552789, 4552967, 4553147, 4553327, 4553509, 4553687, 4553851, 4554031, 4554211, 4554359, 4554541]
theorem check14 : primorialChainCheck 4473 primorial4473 184 4551737 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 4551737 4554541 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4551737) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [4554707, 4554881, 4555051, 4555211, 4555391, 4555561, 4555741, 4555913, 4556089, 4556269, 4556437, 4556621, 4556779, 4556953, 4557103, 4557271]
theorem check15 : primorialChainCheck 4473 primorial4473 184 4554541 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 4554541 4557271 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4554541) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [4557439, 4557607, 4557781, 4557941, 4558109, 4558291, 4558451, 4558633, 4558811, 4558973, 4559153, 4559311, 4559491, 4559669, 4559837, 4560013]
theorem check16 : primorialChainCheck 4473 primorial4473 184 4557271 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 4557271 4560013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4557271) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [4560181, 4560331, 4560497, 4560667, 4560851, 4561009, 4561181, 4561363, 4561547, 4561727, 4561901, 4562083, 4562227, 4562401, 4562567, 4562743]
theorem check17 : primorialChainCheck 4473 primorial4473 184 4560013 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 4560013 4562743 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4560013) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [4562923, 4563103, 4563271, 4563421, 4563583, 4563763, 4563931, 4564111, 4564271, 4564423, 4564607, 4564759, 4564939, 4565107, 4565291, 4565471]
theorem check18 : primorialChainCheck 4473 primorial4473 184 4562743 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 4562743 4565471 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4562743) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [4565653, 4565831, 4566007, 4566181, 4566361, 4566491, 4566671, 4566853, 4566997, 4567177, 4567357, 4567531, 4567691, 4567873, 4568033, 4568209]
theorem check19 : primorialChainCheck 4473 primorial4473 184 4565471 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 4565471 4568209 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4565471) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [4568387, 4568567, 4568741, 4568923, 4569049, 4569217, 4569401, 4569577, 4569743, 4569853, 4570037, 4570219, 4570403, 4570571, 4570751, 4570927]
theorem check20 : primorialChainCheck 4473 primorial4473 184 4568209 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 4568209 4570927 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4568209) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [4571107, 4571263, 4571447, 4571629, 4571813, 4571971, 4572131, 4572307, 4572487, 4572671, 4572833, 4573001, 4573183, 4573367, 4573537, 4573717]
theorem check21 : primorialChainCheck 4473 primorial4473 184 4570927 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 4570927 4573717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4570927) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [4573897, 4574077, 4574261, 4574443, 4574599, 4574783, 4574963, 4575139, 4575323, 4575503, 4575661, 4575841, 4576001, 4576177, 4576331, 4576501]
theorem check22 : primorialChainCheck 4473 primorial4473 184 4573717 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 4573717 4576501 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4573717) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [4576681, 4576849, 4576997, 4577179, 4577329, 4577513, 4577693, 4577861, 4578037, 4578199, 4578383, 4578547, 4578727, 4578907, 4579073, 4579213]
theorem check23 : primorialChainCheck 4473 primorial4473 184 4576501 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 4576501 4579213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4576501) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [4579397, 4579567, 4579733, 4579903, 4580077, 4580227, 4580399, 4580557, 4580731, 4580911, 4581079, 4581251, 4581433, 4581617, 4581781, 4581947]
theorem check24 : primorialChainCheck 4473 primorial4473 184 4579213 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 4579213 4581947 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4579213) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [4582103, 4582273, 4582441, 4582621, 4582789, 4582973, 4583147, 4583329, 4583507, 4583681, 4583861, 4584043, 4584227, 4584409, 4584589, 4584773]
theorem check25 : primorialChainCheck 4473 primorial4473 184 4581947 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 4581947 4584773 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4581947) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [4584913, 4585069, 4585249, 4585433, 4585583, 4585751, 4585927, 4586111, 4586293, 4586459, 4586633, 4586797, 4586969, 4587137, 4587313, 4587497]
theorem check26 : primorialChainCheck 4473 primorial4473 184 4584773 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 4584773 4587497 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4584773) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [4587679, 4587853, 4588021, 4588193, 4588373, 4588543, 4588711, 4588889, 4589071, 4589243, 4589423, 4589593, 4589771, 4589951, 4590107, 4590283]
theorem check27 : primorialChainCheck 4473 primorial4473 184 4587497 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 4587497 4590283 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4587497) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [4590461, 4590643, 4590797, 4590977, 4591159, 4591333, 4591511, 4591687, 4591871, 4592051, 4592233, 4592389, 4592569, 4592741, 4592911, 4593089]
theorem check28 : primorialChainCheck 4473 primorial4473 184 4590283 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 4590283 4593089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4590283) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [4593229, 4593409, 4593569, 4593737, 4593907, 4594049, 4594229, 4594399, 4594567, 4594739, 4594921, 4595089, 4595263, 4595443, 4595621, 4595737]
theorem check29 : primorialChainCheck 4473 primorial4473 184 4593089 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 4593089 4595737 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4593089) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [4595897, 4596079, 4596247, 4596419, 4596589, 4596731, 4596901, 4597081, 4597253, 4597427, 4597609, 4597793, 4597961, 4598141, 4598311, 4598491]
theorem check30 : primorialChainCheck 4473 primorial4473 184 4595737 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 4595737 4598491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4595737) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [4598647, 4598831, 4598999, 4599173, 4599341, 4599509, 4599677, 4599857, 4600027, 4600199, 4600373, 4600553, 4600721, 4600901, 4601057, 4601239]
theorem check31 : primorialChainCheck 4473 primorial4473 184 4598491 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 4598491 4601239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4598491) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 4513283 4518823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4513283)
    (mid := 4516051) (hi := 4518823) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 4518823 4524277 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4518823)
    (mid := 4521599) (hi := 4524277) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 4524277 4529783 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4524277)
    (mid := 4527053) (hi := 4529783) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 4529783 4535197 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4529783)
    (mid := 4532531) (hi := 4535197) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 4535197 4540687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4535197)
    (mid := 4537909) (hi := 4540687) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 4540687 4546253 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4540687)
    (mid := 4543387) (hi := 4546253) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 4546253 4551737 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4546253)
    (mid := 4548967) (hi := 4551737) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 4551737 4557271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4551737)
    (mid := 4554541) (hi := 4557271) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 4557271 4562743 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4557271)
    (mid := 4560013) (hi := 4562743) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 4562743 4568209 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4562743)
    (mid := 4565471) (hi := 4568209) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 4568209 4573717 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4568209)
    (mid := 4570927) (hi := 4573717) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 4573717 4579213 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4573717)
    (mid := 4576501) (hi := 4579213) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 4579213 4584773 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4579213)
    (mid := 4581947) (hi := 4584773) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 4584773 4590283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4584773)
    (mid := 4587497) (hi := 4590283) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 4590283 4595737 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4590283)
    (mid := 4593089) (hi := 4595737) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 4595737 4601239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4595737)
    (mid := 4598491) (hi := 4601239) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 4513283 4524277 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4513283)
    (mid := 4518823) (hi := 4524277) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 4524277 4535197 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4524277)
    (mid := 4529783) (hi := 4535197) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 4535197 4546253 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4535197)
    (mid := 4540687) (hi := 4546253) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 4546253 4557271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4546253)
    (mid := 4551737) (hi := 4557271) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 4557271 4568209 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4557271)
    (mid := 4562743) (hi := 4568209) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 4568209 4579213 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4568209)
    (mid := 4573717) (hi := 4579213) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 4579213 4590283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4579213)
    (mid := 4584773) (hi := 4590283) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 4590283 4601239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4590283)
    (mid := 4595737) (hi := 4601239) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 4513283 4535197 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4513283)
    (mid := 4524277) (hi := 4535197) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 4535197 4557271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4535197)
    (mid := 4546253) (hi := 4557271) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 4557271 4579213 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4557271)
    (mid := 4568209) (hi := 4579213) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 4579213 4601239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4579213)
    (mid := 4590283) (hi := 4601239) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 4513283 4557271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4513283)
    (mid := 4535197) (hi := 4557271) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 4557271 4601239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4557271)
    (mid := 4579213) (hi := 4601239) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 4513283 4601239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4513283)
    (mid := 4557271) (hi := 4601239) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 4513283 4601239 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block051

#print axioms B699MiddleExtension.PrimorialBlocks.Block051.joined
