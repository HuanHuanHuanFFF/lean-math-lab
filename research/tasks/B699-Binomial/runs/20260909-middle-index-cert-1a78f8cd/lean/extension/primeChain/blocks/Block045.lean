import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block045

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [3984983, 3985103, 3985277, 3985451, 3985621, 3985777, 3985951, 3986113, 3986293, 3986473, 3986651, 3986813, 3986989, 3987173, 3987353, 3987523]
theorem check0 : primorialChainCheck 4473 primorial4473 184 3984823 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 3984823 3987523 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3984823) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [3987677, 3987859, 3988027, 3988151, 3988331, 3988513, 3988687, 3988823, 3989003, 3989171, 3989351, 3989533, 3989701, 3989863, 3990047, 3990187]
theorem check1 : primorialChainCheck 4473 primorial4473 184 3987523 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 3987523 3990187 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3987523) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [3990353, 3990521, 3990689, 3990863, 3991037, 3991199, 3991369, 3991543, 3991727, 3991891, 3992069, 3992251, 3992419, 3992587, 3992771, 3992951]
theorem check2 : primorialChainCheck 4473 primorial4473 184 3990187 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 3990187 3992951 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3990187) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [3993127, 3993263, 3993443, 3993617, 3993791, 3993959, 3994121, 3994279, 3994453, 3994621, 3994799, 3994961, 3995129, 3995281, 3995461, 3995639]
theorem check3 : primorialChainCheck 4473 primorial4473 184 3992951 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 3992951 3995639 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3992951) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [3995791, 3995941, 3996107, 3996283, 3996467, 3996647, 3996827, 3997003, 3997181, 3997361, 3997507, 3997673, 3997849, 3998003, 3998177, 3998353]
theorem check4 : primorialChainCheck 4473 primorial4473 184 3995639 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 3995639 3998353 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3995639) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [3998537, 3998719, 3998899, 3999067, 3999251, 3999421, 3999599, 3999781, 3999949, 4000133, 4000309, 4000489, 4000673, 4000853, 4001029, 4001213]
theorem check5 : primorialChainCheck 4473 primorial4473 184 3998353 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 3998353 4001213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 3998353) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [4001383, 4001567, 4001743, 4001891, 4002067, 4002247, 4002431, 4002611, 4002773, 4002949, 4003133, 4003297, 4003459, 4003579, 4003763, 4003939]
theorem check6 : primorialChainCheck 4473 primorial4473 184 4001213 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 4001213 4003939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4001213) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [4004089, 4004267, 4004449, 4004629, 4004807, 4004989, 4005173, 4005347, 4005527, 4005691, 4005847, 4006019, 4006201, 4006381, 4006547, 4006729]
theorem check7 : primorialChainCheck 4473 primorial4473 184 4003939 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 4003939 4006729 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4003939) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [4006913, 4007077, 4007261, 4007441, 4007623, 4007797, 4007981, 4008161, 4008317, 4008461, 4008643, 4008799, 4008971, 4009151, 4009333, 4009507]
theorem check8 : primorialChainCheck 4473 primorial4473 184 4006729 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 4006729 4009507 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4006729) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [4009679, 4009861, 4010029, 4010203, 4010371, 4010551, 4010731, 4010893, 4011061, 4011239, 4011409, 4011583, 4011767, 4011929, 4012111, 4012273]
theorem check9 : primorialChainCheck 4473 primorial4473 184 4009507 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 4009507 4012273 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4009507) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [4012457, 4012639, 4012783, 4012949, 4013111, 4013287, 4013461, 4013641, 4013783, 4013953, 4014137, 4014313, 4014497, 4014671, 4014827, 4014977]
theorem check10 : primorialChainCheck 4473 primorial4473 184 4012273 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 4012273 4014977 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4012273) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [4015159, 4015339, 4015513, 4015679, 4015841, 4016021, 4016203, 4016381, 4016563, 4016741, 4016917, 4017089, 4017271, 4017443, 4017623, 4017803]
theorem check11 : primorialChainCheck 4473 primorial4473 184 4014977 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 4014977 4017803 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4014977) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [4017977, 4018159, 4018337, 4018507, 4018649, 4018799, 4018981, 4019159, 4019341, 4019513, 4019693, 4019867, 4020031, 4020197, 4020361, 4020529]
theorem check12 : primorialChainCheck 4473 primorial4473 184 4017803 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 4017803 4020529 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4017803) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [4020713, 4020889, 4021051, 4021229, 4021411, 4021579, 4021751, 4021933, 4022113, 4022297, 4022477, 4022657, 4022831, 4023001, 4023181, 4023359]
theorem check13 : primorialChainCheck 4473 primorial4473 184 4020529 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 4020529 4023359 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4020529) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [4023533, 4023703, 4023881, 4024063, 4024211, 4024369, 4024549, 4024729, 4024879, 4025057, 4025239, 4025407, 4025551, 4025717, 4025899, 4026083]
theorem check14 : primorialChainCheck 4473 primorial4473 184 4023359 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 4023359 4026083 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4023359) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [4026259, 4026437, 4026619, 4026791, 4026973, 4027151, 4027291, 4027459, 4027643, 4027823, 4027993, 4028177, 4028347, 4028491, 4028663, 4028839]
theorem check15 : primorialChainCheck 4473 primorial4473 184 4026083 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 4026083 4028839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4026083) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [4029013, 4029161, 4029341, 4029517, 4029679, 4029863, 4030007, 4030189, 4030363, 4030541, 4030709, 4030889, 4031047, 4031231, 4031399, 4031579]
theorem check16 : primorialChainCheck 4473 primorial4473 184 4028839 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 4028839 4031579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4028839) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [4031761, 4031903, 4032071, 4032221, 4032403, 4032571, 4032733, 4032913, 4033091, 4033261, 4033423, 4033597, 4033781, 4033961, 4034143, 4034311]
theorem check17 : primorialChainCheck 4473 primorial4473 184 4031579 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 4031579 4034311 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4031579) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [4034489, 4034659, 4034827, 4035007, 4035191, 4035359, 4035539, 4035697, 4035869, 4036051, 4036229, 4036397, 4036577, 4036757, 4036933, 4037083]
theorem check18 : primorialChainCheck 4473 primorial4473 184 4034311 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 4034311 4037083 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4034311) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [4037263, 4037447, 4037617, 4037797, 4037981, 4038161, 4038323, 4038493, 4038677, 4038857, 4039037, 4039219, 4039397, 4039561, 4039741, 4039901]
theorem check19 : primorialChainCheck 4473 primorial4473 184 4037083 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 4037083 4039901 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4037083) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [4040083, 4040233, 4040411, 4040593, 4040741, 4040921, 4041101, 4041241, 4041419, 4041601, 4041781, 4041949, 4042111, 4042271, 4042433, 4042613]
theorem check20 : primorialChainCheck 4473 primorial4473 184 4039901 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 4039901 4042613 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4039901) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [4042789, 4042967, 4043129, 4043293, 4043449, 4043623, 4043777, 4043959, 4044077, 4044241, 4044421, 4044583, 4044767, 4044917, 4045091, 4045273]
theorem check21 : primorialChainCheck 4473 primorial4473 184 4042613 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 4042613 4045273 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4042613) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [4045421, 4045603, 4045787, 4045969, 4046131, 4046311, 4046489, 4046671, 4046851, 4047013, 4047157, 4047331, 4047509, 4047647, 4047829, 4048013]
theorem check22 : primorialChainCheck 4473 primorial4473 184 4045273 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 4045273 4048013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4045273) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [4048189, 4048339, 4048523, 4048697, 4048871, 4049051, 4049231, 4049401, 4049579, 4049753, 4049923, 4050089, 4050253, 4050433, 4050617, 4050793]
theorem check23 : primorialChainCheck 4473 primorial4473 184 4048013 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 4048013 4050793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4048013) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [4050941, 4051121, 4051279, 4051429, 4051613, 4051781, 4051951, 4052107, 4052261, 4052441, 4052611, 4052791, 4052969, 4053143, 4053323, 4053503]
theorem check24 : primorialChainCheck 4473 primorial4473 184 4050793 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 4050793 4053503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4050793) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [4053671, 4053851, 4054033, 4054207, 4054387, 4054559, 4054741, 4054913, 4055087, 4055267, 4055431, 4055599, 4055773, 4055957, 4056137, 4056287]
theorem check25 : primorialChainCheck 4473 primorial4473 184 4053503 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 4053503 4056287 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4053503) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [4056467, 4056641, 4056817, 4056989, 4057159, 4057343, 4057513, 4057693, 4057873, 4058029, 4058209, 4058389, 4058569, 4058749, 4058933, 4059113]
theorem check26 : primorialChainCheck 4473 primorial4473 184 4056287 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 4056287 4059113 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4056287) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [4059271, 4059443, 4059619, 4059763, 4059947, 4060123, 4060291, 4060423, 4060601, 4060769, 4060951, 4061081, 4061263, 4061429, 4061609, 4061791]
theorem check27 : primorialChainCheck 4473 primorial4473 184 4059113 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 4059113 4061791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4059113) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [4061969, 4062151, 4062319, 4062493, 4062673, 4062853, 4063021, 4063183, 4063363, 4063547, 4063723, 4063897, 4064051, 4064227, 4064407, 4064579]
theorem check28 : primorialChainCheck 4473 primorial4473 184 4061791 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 4061791 4064579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4061791) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [4064741, 4064909, 4065073, 4065241, 4065409, 4065587, 4065767, 4065947, 4066129, 4066313, 4066453, 4066619, 4066801, 4066981, 4067149, 4067321]
theorem check29 : primorialChainCheck 4473 primorial4473 184 4064579 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 4064579 4067321 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4064579) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [4067489, 4067647, 4067831, 4068011, 4068139, 4068319, 4068503, 4068683, 4068851, 4069033, 4069217, 4069397, 4069567, 4069729, 4069913, 4070093]
theorem check30 : primorialChainCheck 4473 primorial4473 184 4067321 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 4067321 4070093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4067321) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [4070267, 4070449, 4070621, 4070797, 4070981, 4071157, 4071337, 4071511, 4071679, 4071829, 4072009, 4072171, 4072337, 4072513, 4072697, 4072867]
theorem check31 : primorialChainCheck 4473 primorial4473 184 4070093 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 4070093 4072867 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 4070093) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 3984823 3990187 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3984823)
    (mid := 3987523) (hi := 3990187) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 3990187 3995639 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3990187)
    (mid := 3992951) (hi := 3995639) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 3995639 4001213 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3995639)
    (mid := 3998353) (hi := 4001213) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 4001213 4006729 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4001213)
    (mid := 4003939) (hi := 4006729) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 4006729 4012273 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4006729)
    (mid := 4009507) (hi := 4012273) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 4012273 4017803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4012273)
    (mid := 4014977) (hi := 4017803) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 4017803 4023359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4017803)
    (mid := 4020529) (hi := 4023359) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 4023359 4028839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4023359)
    (mid := 4026083) (hi := 4028839) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 4028839 4034311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4028839)
    (mid := 4031579) (hi := 4034311) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 4034311 4039901 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4034311)
    (mid := 4037083) (hi := 4039901) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 4039901 4045273 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4039901)
    (mid := 4042613) (hi := 4045273) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 4045273 4050793 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4045273)
    (mid := 4048013) (hi := 4050793) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 4050793 4056287 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4050793)
    (mid := 4053503) (hi := 4056287) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 4056287 4061791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4056287)
    (mid := 4059113) (hi := 4061791) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 4061791 4067321 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4061791)
    (mid := 4064579) (hi := 4067321) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 4067321 4072867 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4067321)
    (mid := 4070093) (hi := 4072867) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 3984823 3995639 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3984823)
    (mid := 3990187) (hi := 3995639) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 3995639 4006729 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3995639)
    (mid := 4001213) (hi := 4006729) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 4006729 4017803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4006729)
    (mid := 4012273) (hi := 4017803) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 4017803 4028839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4017803)
    (mid := 4023359) (hi := 4028839) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 4028839 4039901 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4028839)
    (mid := 4034311) (hi := 4039901) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 4039901 4050793 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4039901)
    (mid := 4045273) (hi := 4050793) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 4050793 4061791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4050793)
    (mid := 4056287) (hi := 4061791) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 4061791 4072867 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4061791)
    (mid := 4067321) (hi := 4072867) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 3984823 4006729 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3984823)
    (mid := 3995639) (hi := 4006729) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 4006729 4028839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4006729)
    (mid := 4017803) (hi := 4028839) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 4028839 4050793 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4028839)
    (mid := 4039901) (hi := 4050793) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 4050793 4072867 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4050793)
    (mid := 4061791) (hi := 4072867) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 3984823 4028839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3984823)
    (mid := 4006729) (hi := 4028839) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 4028839 4072867 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 4028839)
    (mid := 4050793) (hi := 4072867) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 3984823 4072867 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 3984823)
    (mid := 4028839) (hi := 4072867) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 3984823 4072867 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block045

#print axioms B699MiddleExtension.PrimorialBlocks.Block045.joined
