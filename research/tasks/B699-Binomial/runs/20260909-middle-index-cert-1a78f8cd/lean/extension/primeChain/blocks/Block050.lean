import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block050

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [4425409, 4425587, 4425749, 4425931, 4426109, 4426283, 4426451, 4426627, 4426781, 4426957, 4427131, 4427299, 4427443, 4427623, 4427789, 4427971]
theorem check0 : primorialChainCheck 4473 primorial4473 184 4425229 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 4425229 4427971 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4425229) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [4428139, 4428323, 4428497, 4428643, 4428821, 4428971, 4429093, 4429277, 4429459, 4429643, 4429819, 4429991, 4430171, 4430351, 4430507, 4430689]
theorem check1 : primorialChainCheck 4473 primorial4473 184 4427971 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 4427971 4430689 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4427971) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [4430869, 4431029, 4431187, 4431367, 4431551, 4431733, 4431901, 4432081, 4432249, 4432391, 4432559, 4432739, 4432889, 4433069, 4433249, 4433423]
theorem check2 : primorialChainCheck 4473 primorial4473 184 4430689 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 4430689 4433423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4430689) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [4433603, 4433771, 4433953, 4434119, 4434299, 4434473, 4434631, 4434811, 4434979, 4435133, 4435313, 4435477, 4435661, 4435817, 4435993, 4436143]
theorem check3 : primorialChainCheck 4473 primorial4473 184 4433423 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 4433423 4436143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4433423) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [4436321, 4436501, 4436669, 4436827, 4437011, 4437179, 4437361, 4437539, 4437721, 4437883, 4438067, 4438237, 4438397, 4438573, 4438741, 4438919]
theorem check4 : primorialChainCheck 4473 primorial4473 184 4436143 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 4436143 4438919 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4436143) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [4439087, 4439269, 4439453, 4439627, 4439807, 4439971, 4440133, 4440257, 4440439, 4440619, 4440803, 4440959, 4441133, 4441313, 4441483, 4441667]
theorem check5 : primorialChainCheck 4473 primorial4473 184 4438919 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 4438919 4441667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4438919) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [4441849, 4442027, 4442209, 4442387, 4442551, 4442689, 4442869, 4443041, 4443221, 4443403, 4443581, 4443743, 4443893, 4444049, 4444229, 4444409]
theorem check6 : primorialChainCheck 4473 primorial4473 184 4441667 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 4441667 4444409 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4441667) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [4444591, 4444771, 4444949, 4445113, 4445281, 4445459, 4445633, 4445797, 4445953, 4446137, 4446319, 4446499, 4446683, 4446863, 4447033, 4447207]
theorem check7 : primorialChainCheck 4473 primorial4473 184 4444409 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 4444409 4447207 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4444409) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [4447321, 4447493, 4447649, 4447823, 4447997, 4448179, 4448359, 4448539, 4448723, 4448881, 4449037, 4449163, 4449343, 4449527, 4449701, 4449883]
theorem check8 : primorialChainCheck 4473 primorial4473 184 4447207 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 4447207 4449883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4447207) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [4450057, 4450213, 4450373, 4450553, 4450729, 4450913, 4451087, 4451269, 4451449, 4451633, 4451813, 4451983, 4452157, 4452337, 4452509, 4452683]
theorem check9 : primorialChainCheck 4473 primorial4473 184 4449883 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 4449883 4452683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4449883) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [4452857, 4453013, 4453187, 4453349, 4453517, 4453693, 4453877, 4454059, 4454239, 4454423, 4454599, 4454783, 4454963, 4455119, 4455301, 4455469]
theorem check10 : primorialChainCheck 4473 primorial4473 184 4452683 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 4452683 4455469 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4452683) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [4455641, 4455797, 4455977, 4456147, 4456327, 4456511, 4456693, 4456877, 4456997, 4457171, 4457347, 4457507, 4457683, 4457867, 4458043, 4458193]
theorem check11 : primorialChainCheck 4473 primorial4473 184 4455469 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 4455469 4458193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4455469) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [4458371, 4458533, 4458697, 4458877, 4459027, 4459211, 4459379, 4459561, 4459739, 4459921, 4460083, 4460251, 4460429, 4460593, 4460773, 4460941]
theorem check12 : primorialChainCheck 4473 primorial4473 184 4458193 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 4458193 4460941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4458193) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [4461109, 4461283, 4461461, 4461643, 4461823, 4461971, 4462151, 4462331, 4462489, 4462673, 4462837, 4463009, 4463191, 4463369, 4463551, 4463729]
theorem check13 : primorialChainCheck 4473 primorial4473 184 4460941 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 4460941 4463729 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4460941) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [4463903, 4464079, 4464253, 4464413, 4464587, 4464767, 4464949, 4465127, 4465301, 4465471, 4465639, 4465819, 4465973, 4466149, 4466327, 4466507]
theorem check14 : primorialChainCheck 4473 primorial4473 184 4463729 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 4463729 4466507 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4463729) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [4466641, 4466789, 4466963, 4467139, 4467301, 4467469, 4467649, 4467833, 4468007, 4468183, 4468367, 4468547, 4468729, 4468903, 4469083, 4469261]
theorem check15 : primorialChainCheck 4473 primorial4473 184 4466507 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 4466507 4469261 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4466507) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [4469431, 4469609, 4469767, 4469951, 4470121, 4470289, 4470469, 4470649, 4470811, 4470989, 4471171, 4471349, 4471529, 4471711, 4471891, 4472021]
theorem check16 : primorialChainCheck 4473 primorial4473 184 4469261 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 4469261 4472021 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4469261) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [4472203, 4472371, 4472551, 4472701, 4472869, 4473019, 4473181, 4473361, 4473541, 4473713, 4473881, 4474039, 4474219, 4474399, 4474573, 4474741]
theorem check17 : primorialChainCheck 4473 primorial4473 184 4472021 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 4472021 4474741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4472021) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [4474919, 4475083, 4475257, 4475423, 4475579, 4475747, 4475893, 4476067, 4476247, 4476427, 4476599, 4476781, 4476961, 4477139, 4477313, 4477489]
theorem check18 : primorialChainCheck 4473 primorial4473 184 4474741 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 4474741 4477489 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4474741) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [4477667, 4477849, 4478017, 4478197, 4478381, 4478563, 4478741, 4478917, 4479073, 4479247, 4479389, 4479509, 4479691, 4479863, 4480043, 4480211]
theorem check19 : primorialChainCheck 4473 primorial4473 184 4477489 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 4477489 4480211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4477489) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [4480379, 4480559, 4480691, 4480871, 4481041, 4481201, 4481383, 4481567, 4481723, 4481899, 4482059, 4482239, 4482409, 4482593, 4482767, 4482943]
theorem check20 : primorialChainCheck 4473 primorial4473 184 4480211 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 4480211 4482943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4480211) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [4483123, 4483307, 4483489, 4483663, 4483837, 4484021, 4484203, 4484387, 4484569, 4484749, 4484933, 4485109, 4485223, 4485389, 4485557, 4485737]
theorem check21 : primorialChainCheck 4473 primorial4473 184 4482943 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 4482943 4485737 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4482943) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [4485907, 4486087, 4486259, 4486429, 4486607, 4486787, 4486961, 4487111, 4487243, 4487423, 4487597, 4487761, 4487939, 4488103, 4488283, 4488461]
theorem check22 : primorialChainCheck 4473 primorial4473 184 4485737 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 4485737 4488461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4485737) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [4488643, 4488817, 4488983, 4489159, 4489319, 4489493, 4489663, 4489847, 4490029, 4490207, 4490377, 4490509, 4490687, 4490867, 4491037, 4491217]
theorem check23 : primorialChainCheck 4473 primorial4473 184 4488461 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 4488461 4491217 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4488461) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [4491401, 4491569, 4491749, 4491913, 4492087, 4492259, 4492441, 4492603, 4492753, 4492927, 4493081, 4493261, 4493417, 4493597, 4493779, 4493939]
theorem check24 : primorialChainCheck 4473 primorial4473 184 4491217 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 4491217 4493939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4491217) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [4494121, 4494299, 4494481, 4494653, 4494793, 4494977, 4495133, 4495313, 4495481, 4495663, 4495817, 4495993, 4496171, 4496353, 4496533, 4496717]
theorem check25 : primorialChainCheck 4473 primorial4473 184 4493939 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 4493939 4496717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4493939) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [4496881, 4497049, 4497223, 4497403, 4497583, 4497761, 4497943, 4498111, 4498283, 4498463, 4498633, 4498817, 4498987, 4499171, 4499351, 4499531]
theorem check26 : primorialChainCheck 4473 primorial4473 184 4496717 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 4496717 4499531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4496717) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [4499689, 4499863, 4500047, 4500229, 4500409, 4500589, 4500757, 4500917, 4501099, 4501279, 4501459, 4501621, 4501781, 4501963, 4502137, 4502321]
theorem check27 : primorialChainCheck 4473 primorial4473 184 4499531 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 4499531 4502321 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4499531) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [4502489, 4502653, 4502809, 4502983, 4503157, 4503341, 4503517, 4503689, 4503839, 4504013, 4504189, 4504369, 4504537, 4504699, 4504883, 4505057]
theorem check28 : primorialChainCheck 4473 primorial4473 184 4502321 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 4502321 4505057 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4502321) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [4505233, 4505393, 4505569, 4505741, 4505899, 4506053, 4506233, 4506389, 4506569, 4506739, 4506917, 4507099, 4507277, 4507453, 4507637, 4507799]
theorem check29 : primorialChainCheck 4473 primorial4473 184 4505057 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 4505057 4507799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4505057) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [4507981, 4508129, 4508303, 4508461, 4508641, 4508821, 4508983, 4509163, 4509343, 4509503, 4509667, 4509851, 4510021, 4510153, 4510333, 4510501]
theorem check30 : primorialChainCheck 4473 primorial4473 184 4507799 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 4507799 4510501 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4507799) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [4510669, 4510853, 4511029, 4511209, 4511387, 4511543, 4511711, 4511893, 4512077, 4512241, 4512407, 4512589, 4512751, 4512931, 4513111, 4513283]
theorem check31 : primorialChainCheck 4473 primorial4473 184 4510501 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 4510501 4513283 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4510501) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 4425229 4430689 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4425229)
    (mid := 4427971) (hi := 4430689) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 4430689 4436143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4430689)
    (mid := 4433423) (hi := 4436143) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 4436143 4441667 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4436143)
    (mid := 4438919) (hi := 4441667) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 4441667 4447207 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4441667)
    (mid := 4444409) (hi := 4447207) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 4447207 4452683 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4447207)
    (mid := 4449883) (hi := 4452683) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 4452683 4458193 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4452683)
    (mid := 4455469) (hi := 4458193) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 4458193 4463729 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4458193)
    (mid := 4460941) (hi := 4463729) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 4463729 4469261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4463729)
    (mid := 4466507) (hi := 4469261) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 4469261 4474741 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4469261)
    (mid := 4472021) (hi := 4474741) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 4474741 4480211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4474741)
    (mid := 4477489) (hi := 4480211) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 4480211 4485737 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4480211)
    (mid := 4482943) (hi := 4485737) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 4485737 4491217 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4485737)
    (mid := 4488461) (hi := 4491217) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 4491217 4496717 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4491217)
    (mid := 4493939) (hi := 4496717) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 4496717 4502321 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4496717)
    (mid := 4499531) (hi := 4502321) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 4502321 4507799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4502321)
    (mid := 4505057) (hi := 4507799) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 4507799 4513283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4507799)
    (mid := 4510501) (hi := 4513283) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 4425229 4436143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4425229)
    (mid := 4430689) (hi := 4436143) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 4436143 4447207 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4436143)
    (mid := 4441667) (hi := 4447207) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 4447207 4458193 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4447207)
    (mid := 4452683) (hi := 4458193) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 4458193 4469261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4458193)
    (mid := 4463729) (hi := 4469261) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 4469261 4480211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4469261)
    (mid := 4474741) (hi := 4480211) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 4480211 4491217 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4480211)
    (mid := 4485737) (hi := 4491217) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 4491217 4502321 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4491217)
    (mid := 4496717) (hi := 4502321) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 4502321 4513283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4502321)
    (mid := 4507799) (hi := 4513283) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 4425229 4447207 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4425229)
    (mid := 4436143) (hi := 4447207) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 4447207 4469261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4447207)
    (mid := 4458193) (hi := 4469261) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 4469261 4491217 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4469261)
    (mid := 4480211) (hi := 4491217) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 4491217 4513283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4491217)
    (mid := 4502321) (hi := 4513283) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 4425229 4469261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4425229)
    (mid := 4447207) (hi := 4469261) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 4469261 4513283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4469261)
    (mid := 4491217) (hi := 4513283) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 4425229 4513283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4425229)
    (mid := 4469261) (hi := 4513283) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 4425229 4513283 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block050

#print axioms B699MiddleExtension.PrimorialBlocks.Block050.joined
