import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block091

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [8029421, 8029597, 8029771, 8029943, 8030123, 8030291, 8030461, 8030623, 8030777, 8030929, 8031097, 8031269, 8031451, 8031619, 8031799, 8031979]
theorem check0 : primorialChainCheck 4473 primorial4473 184 8029271 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 8029271 8031979 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8029271) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [8032163, 8032337, 8032513, 8032691, 8032859, 8033041, 8033213, 8033383, 8033539, 8033719, 8033891, 8034067, 8034241, 8034373, 8034553, 8034709]
theorem check1 : primorialChainCheck 4473 primorial4473 184 8031979 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 8031979 8034709 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8031979) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [8034881, 8035063, 8035241, 8035369, 8035553, 8035733, 8035903, 8036081, 8036261, 8036429, 8036599, 8036771, 8036947, 8037131, 8037313, 8037461]
theorem check2 : primorialChainCheck 4473 primorial4473 184 8034709 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 8034709 8037461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8034709) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [8037643, 8037793, 8037973, 8038141, 8038319, 8038483, 8038663, 8038837, 8038991, 8039173, 8039333, 8039501, 8039683, 8039851, 8040029, 8040169]
theorem check3 : primorialChainCheck 4473 primorial4473 184 8037461 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 8037461 8040169 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8037461) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [8040341, 8040517, 8040701, 8040863, 8041037, 8041219, 8041403, 8041577, 8041757, 8041907, 8042081, 8042239, 8042413, 8042569, 8042737, 8042917]
theorem check4 : primorialChainCheck 4473 primorial4473 184 8040169 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 8040169 8042917 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8040169) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [8043089, 8043271, 8043449, 8043611, 8043781, 8043949, 8044123, 8044303, 8044453, 8044633, 8044789, 8044951, 8045119, 8045287, 8045447, 8045629]
theorem check5 : primorialChainCheck 4473 primorial4473 184 8042917 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 8042917 8045629 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8042917) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [8045809, 8045971, 8046121, 8046299, 8046433, 8046613, 8046791, 8046953, 8047133, 8047271, 8047453, 8047601, 8047771, 8047939, 8048119, 8048303]
theorem check6 : primorialChainCheck 4473 primorial4473 184 8045629 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 8045629 8048303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8045629) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [8048483, 8048659, 8048819, 8049001, 8049169, 8049317, 8049487, 8049611, 8049779, 8049953, 8050103, 8050279, 8050457, 8050633, 8050817, 8050997]
theorem check7 : primorialChainCheck 4473 primorial4473 184 8048303 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 8048303 8050997 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8048303) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [8051171, 8051339, 8051509, 8051677, 8051851, 8052019, 8052193, 8052367, 8052521, 8052683, 8052857, 8053021, 8053193, 8053373, 8053553, 8053693]
theorem check8 : primorialChainCheck 4473 primorial4473 184 8050997 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 8050997 8053693 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8050997) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [8053861, 8054023, 8054191, 8054369, 8054551, 8054731, 8054903, 8055049, 8055227, 8055409, 8055587, 8055713, 8055893, 8056067, 8056241, 8056423]
theorem check9 : primorialChainCheck 4473 primorial4473 184 8053693 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 8053693 8056423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8053693) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [8056603, 8056777, 8056957, 8057141, 8057323, 8057503, 8057683, 8057867, 8058049, 8058227, 8058409, 8058593, 8058769, 8058937, 8059087, 8059267]
theorem check10 : primorialChainCheck 4473 primorial4473 184 8056423 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 8056423 8059267 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8056423) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [8059433, 8059603, 8059759, 8059943, 8060099, 8060267, 8060443, 8060609, 8060791, 8060963, 8061143, 8061323, 8061503, 8061679, 8061847, 8062013]
theorem check11 : primorialChainCheck 4473 primorial4473 184 8059267 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 8059267 8062013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8059267) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [8062183, 8062367, 8062541, 8062721, 8062891, 8063053, 8063233, 8063417, 8063599, 8063761, 8063927, 8064107, 8064271, 8064449, 8064601, 8064781]
theorem check12 : primorialChainCheck 4473 primorial4473 184 8062013 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 8062013 8064781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8062013) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [8064943, 8065121, 8065289, 8065471, 8065649, 8065829, 8065987, 8066171, 8066351, 8066533, 8066717, 8066897, 8067079, 8067263, 8067431, 8067613]
theorem check13 : primorialChainCheck 4473 primorial4473 184 8064781 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 8064781 8067613 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8064781) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [8067769, 8067953, 8068127, 8068303, 8068481, 8068633, 8068817, 8068969, 8069153, 8069311, 8069491, 8069671, 8069797, 8069977, 8070157, 8070331]
theorem check14 : primorialChainCheck 4473 primorial4473 184 8067613 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 8067613 8070331 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8067613) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [8070487, 8070659, 8070827, 8071009, 8071187, 8071369, 8071519, 8071669, 8071823, 8071981, 8072159, 8072329, 8072513, 8072693, 8072843, 8073001]
theorem check15 : primorialChainCheck 4473 primorial4473 184 8070331 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 8070331 8073001 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8070331) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [8073151, 8073323, 8073503, 8073647, 8073829, 8074013, 8074159, 8074309, 8074483, 8074657, 8074837, 8075009, 8075173, 8075341, 8075521, 8075693]
theorem check16 : primorialChainCheck 4473 primorial4473 184 8073001 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 8073001 8075693 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8073001) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [8075863, 8076041, 8076203, 8076379, 8076557, 8076737, 8076911, 8077079, 8077259, 8077427, 8077607, 8077789, 8077973, 8078143, 8078299, 8078471]
theorem check17 : primorialChainCheck 4473 primorial4473 184 8075693 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 8075693 8078471 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8075693) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [8078647, 8078831, 8079007, 8079133, 8079307, 8079481, 8079649, 8079833, 8079989, 8080159, 8080343, 8080507, 8080679, 8080859, 8081041, 8081221]
theorem check18 : primorialChainCheck 4473 primorial4473 184 8078471 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 8078471 8081221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8078471) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [8081399, 8081581, 8081753, 8081929, 8082079, 8082257, 8082421, 8082563, 8082691, 8082869, 8083021, 8083147, 8083321, 8083477, 8083661, 8083841]
theorem check19 : primorialChainCheck 4473 primorial4473 184 8081221 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 8081221 8083841 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8081221) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [8084023, 8084207, 8084383, 8084509, 8084669, 8084837, 8085019, 8085199, 8085379, 8085563, 8085743, 8085919, 8086063, 8086223, 8086399, 8086583]
theorem check20 : primorialChainCheck 4473 primorial4473 184 8083841 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 8083841 8086583 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8083841) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [8086751, 8086931, 8087089, 8087269, 8087449, 8087633, 8087813, 8087983, 8088161, 8088331, 8088499, 8088679, 8088863, 8089043, 8089219, 8089397]
theorem check21 : primorialChainCheck 4473 primorial4473 184 8086583 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 8086583 8089397 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8086583) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [8089561, 8089727, 8089901, 8090083, 8090267, 8090443, 8090603, 8090777, 8090939, 8091119, 8091289, 8091451, 8091617, 8091773, 8091931, 8092111]
theorem check22 : primorialChainCheck 4473 primorial4473 184 8089397 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 8089397 8092111 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8089397) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [8092291, 8092463, 8092633, 8092817, 8092991, 8093143, 8093303, 8093483, 8093651, 8093809, 8093993, 8094169, 8094353, 8094523, 8094679, 8094833]
theorem check23 : primorialChainCheck 4473 primorial4473 184 8092111 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 8092111 8094833 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8092111) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [8095013, 8095187, 8095369, 8095547, 8095709, 8095889, 8096041, 8096219, 8096383, 8096533, 8096657, 8096839, 8097007, 8097163, 8097347, 8097527]
theorem check24 : primorialChainCheck 4473 primorial4473 184 8094833 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 8094833 8097527 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8094833) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [8097697, 8097871, 8098049, 8098219, 8098379, 8098561, 8098729, 8098913, 8099083, 8099257, 8099431, 8099603, 8099771, 8099921, 8100097, 8100263]
theorem check25 : primorialChainCheck 4473 primorial4473 184 8097527 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 8097527 8100263 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8097527) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [8100437, 8100607, 8100767, 8100943, 8101127, 8101297, 8101481, 8101661, 8101831, 8102009, 8102177, 8102357, 8102537, 8102713, 8102879, 8103031]
theorem check26 : primorialChainCheck 4473 primorial4473 184 8100263 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 8100263 8103031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8100263) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [8103187, 8103353, 8103523, 8103661, 8103841, 8104007, 8104169, 8104337, 8104483, 8104667, 8104843, 8105021, 8105189, 8105369, 8105551, 8105731]
theorem check27 : primorialChainCheck 4473 primorial4473 184 8103031 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 8103031 8105731 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8103031) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [8105899, 8106083, 8106257, 8106421, 8106601, 8106767, 8106947, 8107123, 8107303, 8107483, 8107651, 8107831, 8108011, 8108173, 8108357, 8108539]
theorem check28 : primorialChainCheck 4473 primorial4473 184 8105731 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 8105731 8108539 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8105731) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [8108713, 8108869, 8109007, 8109191, 8109359, 8109539, 8109719, 8109887, 8110043, 8110213, 8110393, 8110577, 8110741, 8110919, 8111101, 8111281]
theorem check29 : primorialChainCheck 4473 primorial4473 184 8108539 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 8108539 8111281 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8108539) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [8111459, 8111639, 8111791, 8111953, 8112133, 8112283, 8112463, 8112619, 8112803, 8112977, 8113153, 8113337, 8113519, 8113691, 8113867, 8114039]
theorem check30 : primorialChainCheck 4473 primorial4473 184 8111281 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 8111281 8114039 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8111281) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [8114213, 8114383, 8114567, 8114749, 8114893, 8115053, 8115227, 8115407, 8115587, 8115763, 8115937, 8116117, 8116301, 8116481, 8116643, 8116817]
theorem check31 : primorialChainCheck 4473 primorial4473 184 8114039 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 8114039 8116817 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8114039) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 8029271 8034709 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8029271)
    (mid := 8031979) (hi := 8034709) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 8034709 8040169 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8034709)
    (mid := 8037461) (hi := 8040169) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 8040169 8045629 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8040169)
    (mid := 8042917) (hi := 8045629) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 8045629 8050997 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8045629)
    (mid := 8048303) (hi := 8050997) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 8050997 8056423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8050997)
    (mid := 8053693) (hi := 8056423) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 8056423 8062013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8056423)
    (mid := 8059267) (hi := 8062013) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 8062013 8067613 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8062013)
    (mid := 8064781) (hi := 8067613) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 8067613 8073001 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8067613)
    (mid := 8070331) (hi := 8073001) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 8073001 8078471 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8073001)
    (mid := 8075693) (hi := 8078471) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 8078471 8083841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8078471)
    (mid := 8081221) (hi := 8083841) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 8083841 8089397 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8083841)
    (mid := 8086583) (hi := 8089397) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 8089397 8094833 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8089397)
    (mid := 8092111) (hi := 8094833) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 8094833 8100263 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8094833)
    (mid := 8097527) (hi := 8100263) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 8100263 8105731 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8100263)
    (mid := 8103031) (hi := 8105731) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 8105731 8111281 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8105731)
    (mid := 8108539) (hi := 8111281) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 8111281 8116817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8111281)
    (mid := 8114039) (hi := 8116817) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 8029271 8040169 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8029271)
    (mid := 8034709) (hi := 8040169) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 8040169 8050997 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8040169)
    (mid := 8045629) (hi := 8050997) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 8050997 8062013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8050997)
    (mid := 8056423) (hi := 8062013) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 8062013 8073001 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8062013)
    (mid := 8067613) (hi := 8073001) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 8073001 8083841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8073001)
    (mid := 8078471) (hi := 8083841) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 8083841 8094833 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8083841)
    (mid := 8089397) (hi := 8094833) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 8094833 8105731 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8094833)
    (mid := 8100263) (hi := 8105731) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 8105731 8116817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8105731)
    (mid := 8111281) (hi := 8116817) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 8029271 8050997 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8029271)
    (mid := 8040169) (hi := 8050997) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 8050997 8073001 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8050997)
    (mid := 8062013) (hi := 8073001) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 8073001 8094833 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8073001)
    (mid := 8083841) (hi := 8094833) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 8094833 8116817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8094833)
    (mid := 8105731) (hi := 8116817) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 8029271 8073001 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8029271)
    (mid := 8050997) (hi := 8073001) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 8073001 8116817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8073001)
    (mid := 8094833) (hi := 8116817) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 8029271 8116817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8029271)
    (mid := 8073001) (hi := 8116817) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 8029271 8116817 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block091

#print axioms B699MiddleExtension.PrimorialBlocks.Block091.joined
