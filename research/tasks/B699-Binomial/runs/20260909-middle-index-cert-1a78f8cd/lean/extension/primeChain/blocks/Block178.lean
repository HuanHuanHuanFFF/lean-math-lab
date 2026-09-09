import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block178

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [15645361, 15645541, 15645719, 15645893, 15646067, 15646243, 15646403, 15646583, 15646753, 15646933, 15647111, 15647273, 15647447, 15647629, 15647771, 15647941]
theorem check0 : primorialChainCheck 4473 primorial4473 184 15645211 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 15645211 15647941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15645211) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [15648121, 15648293, 15648467, 15648649, 15648827, 15648977, 15649159, 15649307, 15649477, 15649657, 15649841, 15650023, 15650203, 15650359, 15650533, 15650717]
theorem check1 : primorialChainCheck 4473 primorial4473 184 15647941 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 15647941 15650717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15647941) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [15650891, 15651071, 15651253, 15651437, 15651593, 15651773, 15651949, 15652127, 15652271, 15652453, 15652619, 15652787, 15652943, 15653119, 15653293, 15653471]
theorem check2 : primorialChainCheck 4473 primorial4473 184 15650717 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 15650717 15653471 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15650717) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [15653653, 15653809, 15653969, 15654139, 15654323, 15654469, 15654649, 15654829, 15655007, 15655187, 15655369, 15655553, 15655729, 15655889, 15656059, 15656233]
theorem check3 : primorialChainCheck 4473 primorial4473 184 15653471 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 15653471 15656233 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15653471) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [15656413, 15656591, 15656759, 15656939, 15657097, 15657241, 15657407, 15657589, 15657769, 15657953, 15658117, 15658301, 15658483, 15658667, 15658847, 15659027]
theorem check4 : primorialChainCheck 4473 primorial4473 184 15656233 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 15656233 15659027 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15656233) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [15659209, 15659393, 15659563, 15659731, 15659893, 15660031, 15660187, 15660367, 15660527, 15660691, 15660871, 15661033, 15661213, 15661391, 15661571, 15661741]
theorem check5 : primorialChainCheck 4473 primorial4473 184 15659027 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 15659027 15661741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15659027) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [15661907, 15662089, 15662261, 15662431, 15662611, 15662743, 15662923, 15663083, 15663259, 15663433, 15663611, 15663757, 15663941, 15664093, 15664273, 15664457]
theorem check6 : primorialChainCheck 4473 primorial4473 184 15661741 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 15661741 15664457 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15661741) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [15664637, 15664813, 15664967, 15665141, 15665317, 15665491, 15665659, 15665843, 15666023, 15666199, 15666379, 15666533, 15666701, 15666883, 15667061, 15667241]
theorem check7 : primorialChainCheck 4473 primorial4473 184 15664457 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 15664457 15667241 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15664457) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [15667417, 15667601, 15667763, 15667919, 15668089, 15668269, 15668449, 15668633, 15668801, 15668969, 15669149, 15669307, 15669457, 15669617, 15669793, 15669977]
theorem check8 : primorialChainCheck 4473 primorial4473 184 15667241 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 15667241 15669977 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15667241) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [15670157, 15670313, 15670493, 15670673, 15670847, 15671009, 15671177, 15671353, 15671527, 15671699, 15671879, 15672061, 15672233, 15672413, 15672593, 15672773]
theorem check9 : primorialChainCheck 4473 primorial4473 184 15669977 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 15669977 15672773 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15669977) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [15672931, 15673103, 15673277, 15673433, 15673589, 15673771, 15673943, 15674111, 15674287, 15674443, 15674611, 15674783, 15674959, 15675097, 15675251, 15675433]
theorem check10 : primorialChainCheck 4473 primorial4473 184 15672773 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 15672773 15675433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15672773) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [15675601, 15675767, 15675929, 15676103, 15676279, 15676433, 15676597, 15676781, 15676963, 15677131, 15677309, 15677491, 15677663, 15677839, 15678017, 15678193]
theorem check11 : primorialChainCheck 4473 primorial4473 184 15675433 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 15675433 15678193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15675433) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [15678373, 15678547, 15678731, 15678911, 15679091, 15679249, 15679429, 15679607, 15679777, 15679957, 15680117, 15680297, 15680471, 15680653, 15680837, 15681019]
theorem check12 : primorialChainCheck 4473 primorial4473 184 15678193 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 15678193 15681019 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15678193) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [15681181, 15681359, 15681529, 15681703, 15681881, 15682061, 15682237, 15682411, 15682577, 15682747, 15682903, 15683081, 15683257, 15683441, 15683621, 15683803]
theorem check13 : primorialChainCheck 4473 primorial4473 184 15681019 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 15681019 15683803 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15681019) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [15683959, 15684127, 15684311, 15684491, 15684653, 15684833, 15684983, 15685157, 15685321, 15685489, 15685667, 15685847, 15686009, 15686173, 15686353, 15686537]
theorem check14 : primorialChainCheck 4473 primorial4473 184 15683803 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 15683803 15686537 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15683803) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [15686717, 15686893, 15687071, 15687253, 15687437, 15687601, 15687781, 15687961, 15688133, 15688313, 15688493, 15688669, 15688843, 15689027, 15689209, 15689389]
theorem check15 : primorialChainCheck 4473 primorial4473 184 15686537 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 15686537 15689389 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15686537) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [15689567, 15689747, 15689911, 15690089, 15690271, 15690449, 15690613, 15690793, 15690973, 15691147, 15691327, 15691499, 15691661, 15691831, 15692011, 15692191]
theorem check16 : primorialChainCheck 4473 primorial4473 184 15689389 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 15689389 15692191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15689389) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [15692363, 15692533, 15692713, 15692891, 15693047, 15693211, 15693361, 15693541, 15693721, 15693893, 15694069, 15694243, 15694421, 15694577, 15694753, 15694937]
theorem check17 : primorialChainCheck 4473 primorial4473 184 15692191 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 15692191 15694937 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15692191) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [15695111, 15695291, 15695443, 15695627, 15695747, 15695929, 15696113, 15696283, 15696437, 15696617, 15696781, 15696949, 15697111, 15697291, 15697469, 15697651]
theorem check18 : primorialChainCheck 4473 primorial4473 184 15694937 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 15694937 15697651 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15694937) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [15697813, 15697991, 15698173, 15698357, 15698519, 15698699, 15698867, 15699049, 15699223, 15699403, 15699587, 15699769, 15699949, 15700133, 15700273, 15700453]
theorem check19 : primorialChainCheck 4473 primorial4473 184 15697651 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 15697651 15700453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15697651) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [15700613, 15700771, 15700943, 15701117, 15701297, 15701453, 15701633, 15701813, 15701989, 15702161, 15702343, 15702527, 15702677, 15702851, 15703033, 15703201]
theorem check20 : primorialChainCheck 4473 primorial4473 184 15700453 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 15700453 15703201 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15700453) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [15703361, 15703543, 15703717, 15703879, 15704057, 15704237, 15704407, 15704587, 15704771, 15704951, 15705133, 15705301, 15705461, 15705629, 15705787, 15705971]
theorem check21 : primorialChainCheck 4473 primorial4473 184 15703201 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 15703201 15705971 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15703201) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [15706153, 15706333, 15706513, 15706697, 15706879, 15707047, 15707221, 15707383, 15707563, 15707743, 15707911, 15708071, 15708247, 15708419, 15708593, 15708769]
theorem check22 : primorialChainCheck 4473 primorial4473 184 15705971 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 15705971 15708769 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15705971) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [15708937, 15709117, 15709279, 15709433, 15709607, 15709787, 15709961, 15710143, 15710327, 15710509, 15710689, 15710861, 15711041, 15711217, 15711401, 15711547]
theorem check23 : primorialChainCheck 4473 primorial4473 184 15708769 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 15708769 15711547 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15708769) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [15711721, 15711887, 15712057, 15712223, 15712399, 15712583, 15712757, 15712927, 15713107, 15713279, 15713459, 15713639, 15713821, 15713983, 15714163, 15714343]
theorem check24 : primorialChainCheck 4473 primorial4473 184 15711547 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 15711547 15714343 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15711547) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [15714527, 15714703, 15714877, 15715057, 15715241, 15715421, 15715577, 15715759, 15715933, 15716117, 15716293, 15716447, 15716627, 15716807, 15716989, 15717157]
theorem check25 : primorialChainCheck 4473 primorial4473 184 15714343 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 15714343 15717157 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15714343) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [15717323, 15717451, 15717619, 15717803, 15717973, 15718151, 15718289, 15718463, 15718627, 15718771, 15718943, 15719089, 15719257, 15719437, 15719621, 15719789]
theorem check26 : primorialChainCheck 4473 primorial4473 184 15717157 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 15717157 15719789 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15717157) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [15719953, 15720101, 15720281, 15720457, 15720641, 15720823, 15721003, 15721183, 15721367, 15721543, 15721697, 15721879, 15722011, 15722183, 15722353, 15722537]
theorem check27 : primorialChainCheck 4473 primorial4473 184 15719789 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 15719789 15722537 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15719789) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [15722719, 15722897, 15723077, 15723233, 15723413, 15723569, 15723749, 15723919, 15724103, 15724271, 15724451, 15724619, 15724789, 15724957, 15725107, 15725287]
theorem check28 : primorialChainCheck 4473 primorial4473 184 15722537 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 15722537 15725287 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15722537) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [15725467, 15725639, 15725803, 15725987, 15726079, 15726257, 15726427, 15726583, 15726701, 15726883, 15727043, 15727223, 15727403, 15727583, 15727739, 15727903]
theorem check29 : primorialChainCheck 4473 primorial4473 184 15725287 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 15725287 15727903 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15725287) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [15728087, 15728269, 15728429, 15728611, 15728773, 15728939, 15729113, 15729293, 15729457, 15729619, 15729799, 15729943, 15730111, 15730283, 15730433, 15730591]
theorem check30 : primorialChainCheck 4473 primorial4473 184 15727903 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 15727903 15730591 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15727903) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [15730747, 15730931, 15731101, 15731269, 15731453, 15731629, 15731813, 15731959, 15732137, 15732287, 15732421, 15732601, 15732757, 15732919, 15733097, 15733261]
theorem check31 : primorialChainCheck 4473 primorial4473 184 15730591 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 15730591 15733261 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15730591) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 15645211 15650717 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15645211)
    (mid := 15647941) (hi := 15650717) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 15650717 15656233 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15650717)
    (mid := 15653471) (hi := 15656233) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 15656233 15661741 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15656233)
    (mid := 15659027) (hi := 15661741) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 15661741 15667241 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15661741)
    (mid := 15664457) (hi := 15667241) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 15667241 15672773 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15667241)
    (mid := 15669977) (hi := 15672773) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 15672773 15678193 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15672773)
    (mid := 15675433) (hi := 15678193) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 15678193 15683803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15678193)
    (mid := 15681019) (hi := 15683803) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 15683803 15689389 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15683803)
    (mid := 15686537) (hi := 15689389) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 15689389 15694937 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15689389)
    (mid := 15692191) (hi := 15694937) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 15694937 15700453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15694937)
    (mid := 15697651) (hi := 15700453) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 15700453 15705971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15700453)
    (mid := 15703201) (hi := 15705971) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 15705971 15711547 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15705971)
    (mid := 15708769) (hi := 15711547) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 15711547 15717157 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15711547)
    (mid := 15714343) (hi := 15717157) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 15717157 15722537 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15717157)
    (mid := 15719789) (hi := 15722537) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 15722537 15727903 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15722537)
    (mid := 15725287) (hi := 15727903) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 15727903 15733261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15727903)
    (mid := 15730591) (hi := 15733261) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 15645211 15656233 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15645211)
    (mid := 15650717) (hi := 15656233) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 15656233 15667241 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15656233)
    (mid := 15661741) (hi := 15667241) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 15667241 15678193 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15667241)
    (mid := 15672773) (hi := 15678193) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 15678193 15689389 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15678193)
    (mid := 15683803) (hi := 15689389) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 15689389 15700453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15689389)
    (mid := 15694937) (hi := 15700453) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 15700453 15711547 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15700453)
    (mid := 15705971) (hi := 15711547) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 15711547 15722537 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15711547)
    (mid := 15717157) (hi := 15722537) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 15722537 15733261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15722537)
    (mid := 15727903) (hi := 15733261) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 15645211 15667241 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15645211)
    (mid := 15656233) (hi := 15667241) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 15667241 15689389 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15667241)
    (mid := 15678193) (hi := 15689389) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 15689389 15711547 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15689389)
    (mid := 15700453) (hi := 15711547) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 15711547 15733261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15711547)
    (mid := 15722537) (hi := 15733261) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 15645211 15689389 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15645211)
    (mid := 15667241) (hi := 15689389) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 15689389 15733261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15689389)
    (mid := 15711547) (hi := 15733261) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 15645211 15733261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15645211)
    (mid := 15689389) (hi := 15733261) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 15645211 15733261 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block178

#print axioms B699MiddleExtension.PrimorialBlocks.Block178.joined
