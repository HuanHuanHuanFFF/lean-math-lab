import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block107

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [9430097, 9430277, 9430457, 9430633, 9430793, 9430969, 9431117, 9431299, 9431479, 9431647, 9431803, 9431977, 9432149, 9432317, 9432497, 9432667]
theorem check0 : primorialChainCheck 4473 primorial4473 184 9429913 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 9429913 9432667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9429913) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [9432833, 9433009, 9433183, 9433349, 9433493, 9433661, 9433843, 9434023, 9434207, 9434377, 9434561, 9434743, 9434927, 9435091, 9435271, 9435421]
theorem check1 : primorialChainCheck 4473 primorial4473 184 9432667 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 9432667 9435421 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9432667) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [9435583, 9435763, 9435947, 9436129, 9436303, 9436487, 9436667, 9436841, 9437009, 9437191, 9437353, 9437489, 9437639, 9437807, 9437977, 9438151]
theorem check2 : primorialChainCheck 4473 primorial4473 184 9435421 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 9435421 9438151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9435421) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [9438301, 9438479, 9438661, 9438829, 9438983, 9439153, 9439337, 9439517, 9439691, 9439873, 9440047, 9440227, 9440407, 9440591, 9440723, 9440897]
theorem check3 : primorialChainCheck 4473 primorial4473 184 9438151 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 9438151 9440897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9438151) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [9441073, 9441227, 9441389, 9441571, 9441739, 9441889, 9442063, 9442247, 9442417, 9442597, 9442781, 9442963, 9443141, 9443321, 9443479, 9443633]
theorem check4 : primorialChainCheck 4473 primorial4473 184 9440897 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 9440897 9443633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9440897) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [9443807, 9443977, 9444151, 9444319, 9444497, 9444671, 9444847, 9445021, 9445193, 9445357, 9445537, 9445721, 9445901, 9446081, 9446231, 9446329]
theorem check5 : primorialChainCheck 4473 primorial4473 184 9443633 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 9443633 9446329 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9443633) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [9446513, 9446683, 9446867, 9447041, 9447211, 9447391, 9447569, 9447751, 9447887, 9448069, 9448253, 9448429, 9448613, 9448793, 9448973, 9449131]
theorem check6 : primorialChainCheck 4473 primorial4473 184 9446329 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 9446329 9449131 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9446329) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [9449309, 9449483, 9449663, 9449831, 9450013, 9450173, 9450349, 9450523, 9450689, 9450853, 9451019, 9451199, 9451381, 9451553, 9451697, 9451879]
theorem check7 : primorialChainCheck 4473 primorial4473 184 9449131 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 9449131 9451879 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9449131) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [9452039, 9452197, 9452369, 9452543, 9452719, 9452897, 9453079, 9453221, 9453401, 9453569, 9453749, 9453923, 9454103, 9454253, 9454421, 9454603]
theorem check8 : primorialChainCheck 4473 primorial4473 184 9451879 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 9451879 9454603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9451879) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [9454751, 9454931, 9455101, 9455261, 9455441, 9455623, 9455807, 9455969, 9456137, 9456311, 9456487, 9456659, 9456833, 9457009, 9457181, 9457361]
theorem check9 : primorialChainCheck 4473 primorial4473 184 9454603 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 9454603 9457361 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9454603) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [9457541, 9457709, 9457891, 9458041, 9458209, 9458389, 9458563, 9458723, 9458899, 9459077, 9459251, 9459421, 9459589, 9459767, 9459949, 9460127]
theorem check10 : primorialChainCheck 4473 primorial4473 184 9457361 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 9457361 9460127 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9457361) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [9460303, 9460471, 9460643, 9460813, 9460987, 9461171, 9461341, 9461521, 9461681, 9461861, 9462029, 9462199, 9462379, 9462539, 9462707, 9462889]
theorem check11 : primorialChainCheck 4473 primorial4473 184 9460127 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 9460127 9462889 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9460127) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [9463073, 9463253, 9463429, 9463609, 9463789, 9463973, 9464149, 9464327, 9464479, 9464659, 9464837, 9465017, 9465161, 9465331, 9465503, 9465683]
theorem check12 : primorialChainCheck 4473 primorial4473 184 9462889 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 9462889 9465683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9462889) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [9465839, 9466021, 9466189, 9466361, 9466543, 9466711, 9466879, 9467057, 9467233, 9467417, 9467599, 9467753, 9467917, 9468097, 9468271, 9468451]
theorem check13 : primorialChainCheck 4473 primorial4473 184 9465683 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 9465683 9468451 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9465683) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [9468629, 9468793, 9468971, 9469133, 9469309, 9469489, 9469661, 9469843, 9470017, 9470183, 9470347, 9470519, 9470701, 9470863, 9471037, 9471191]
theorem check14 : primorialChainCheck 4473 primorial4473 184 9468451 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 9468451 9471191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9468451) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [9471373, 9471551, 9471733, 9471901, 9472063, 9472237, 9472387, 9472571, 9472747, 9472913, 9473083, 9473257, 9473441, 9473623, 9473801, 9473983]
theorem check15 : primorialChainCheck 4473 primorial4473 184 9471191 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 9471191 9473983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9471191) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [9474163, 9474347, 9474523, 9474697, 9474859, 9475019, 9475201, 9475381, 9475561, 9475693, 9475871, 9476009, 9476171, 9476339, 9476501, 9476683]
theorem check16 : primorialChainCheck 4473 primorial4473 184 9473983 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 9473983 9476683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9473983) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [9476849, 9477031, 9477199, 9477383, 9477539, 9477707, 9477889, 9478069, 9478237, 9478387, 9478559, 9478727, 9478897, 9479051, 9479219, 9479377]
theorem check17 : primorialChainCheck 4473 primorial4473 184 9476683 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 9476683 9479377 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9476683) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [9479539, 9479711, 9479891, 9480073, 9480257, 9480409, 9480589, 9480749, 9480923, 9481099, 9481279, 9481447, 9481621, 9481799, 9481963, 9482147]
theorem check18 : primorialChainCheck 4473 primorial4473 184 9479377 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 9479377 9482147 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9479377) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [9482299, 9482479, 9482659, 9482791, 9482933, 9483101, 9483283, 9483457, 9483631, 9483809, 9483959, 9484129, 9484291, 9484457, 9484637, 9484799]
theorem check19 : primorialChainCheck 4473 primorial4473 184 9482147 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 9482147 9484799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9482147) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [9484973, 9485143, 9485321, 9485501, 9485627, 9485809, 9485989, 9486173, 9486353, 9486497, 9486677, 9486853, 9487013, 9487187, 9487363, 9487529]
theorem check20 : primorialChainCheck 4473 primorial4473 184 9484799 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 9484799 9487529 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9484799) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [9487711, 9487871, 9488053, 9488233, 9488417, 9488587, 9488711, 9488891, 9489049, 9489229, 9489407, 9489581, 9489763, 9489943, 9490087, 9490249]
theorem check21 : primorialChainCheck 4473 primorial4473 184 9487529 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 9487529 9490249 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9487529) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [9490423, 9490601, 9490717, 9490889, 9491047, 9491231, 9491401, 9491579, 9491737, 9491917, 9492089, 9492269, 9492421, 9492601, 9492779, 9492949]
theorem check22 : primorialChainCheck 4473 primorial4473 184 9490249 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 9490249 9492949 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9490249) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [9493117, 9493271, 9493453, 9493619, 9493753, 9493937, 9494113, 9494297, 9494461, 9494633, 9494783, 9494957, 9495139, 9495293, 9495433, 9495613]
theorem check23 : primorialChainCheck 4473 primorial4473 184 9492949 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 9492949 9495613 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9492949) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [9495769, 9495949, 9496127, 9496273, 9496453, 9496621, 9496787, 9496967, 9497141, 9497303, 9497483, 9497651, 9497783, 9497959, 9498133, 9498301]
theorem check24 : primorialChainCheck 4473 primorial4473 184 9495613 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 9495613 9498301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9495613) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [9498479, 9498661, 9498817, 9498967, 9499129, 9499313, 9499489, 9499673, 9499817, 9499967, 9500143, 9500327, 9500507, 9500677, 9500861, 9501043]
theorem check25 : primorialChainCheck 4473 primorial4473 184 9498301 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 9498301 9501043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9498301) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [9501211, 9501391, 9501571, 9501749, 9501913, 9502093, 9502277, 9502433, 9502589, 9502769, 9502951, 9503107, 9503281, 9503449, 9503609, 9503777]
theorem check26 : primorialChainCheck 4473 primorial4473 184 9501043 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 9501043 9503777 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9501043) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [9503959, 9504113, 9504289, 9504457, 9504641, 9504823, 9504991, 9505169, 9505333, 9505513, 9505679, 9505849, 9506011, 9506131, 9506309, 9506489]
theorem check27 : primorialChainCheck 4473 primorial4473 184 9503777 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 9503777 9506489 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9503777) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [9506657, 9506837, 9507007, 9507191, 9507361, 9507527, 9507703, 9507881, 9508063, 9508217, 9508393, 9508567, 9508747, 9508927, 9509099, 9509267]
theorem check28 : primorialChainCheck 4473 primorial4473 184 9506489 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 9506489 9509267 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9506489) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [9509449, 9509611, 9509791, 9509959, 9510143, 9510313, 9510493, 9510673, 9510857, 9511027, 9511207, 9511379, 9511559, 9511727, 9511871, 9512051]
theorem check29 : primorialChainCheck 4473 primorial4473 184 9509267 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 9509267 9512051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9509267) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [9512221, 9512389, 9512561, 9512729, 9512903, 9513079, 9513253, 9513437, 9513619, 9513739, 9513923, 9514093, 9514273, 9514429, 9514607, 9514789]
theorem check30 : primorialChainCheck 4473 primorial4473 184 9512051 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 9512051 9514789 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9512051) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [9514961, 9515141, 9515323, 9515497, 9515669, 9515851, 9516019, 9516197, 9516361, 9516541, 9516709, 9516887, 9517033, 9517213, 9517381, 9517559]
theorem check31 : primorialChainCheck 4473 primorial4473 184 9514789 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 9514789 9517559 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9514789) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 9429913 9435421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9429913)
    (mid := 9432667) (hi := 9435421) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 9435421 9440897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9435421)
    (mid := 9438151) (hi := 9440897) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 9440897 9446329 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9440897)
    (mid := 9443633) (hi := 9446329) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 9446329 9451879 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9446329)
    (mid := 9449131) (hi := 9451879) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 9451879 9457361 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9451879)
    (mid := 9454603) (hi := 9457361) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 9457361 9462889 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9457361)
    (mid := 9460127) (hi := 9462889) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 9462889 9468451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9462889)
    (mid := 9465683) (hi := 9468451) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 9468451 9473983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9468451)
    (mid := 9471191) (hi := 9473983) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 9473983 9479377 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9473983)
    (mid := 9476683) (hi := 9479377) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 9479377 9484799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9479377)
    (mid := 9482147) (hi := 9484799) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 9484799 9490249 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9484799)
    (mid := 9487529) (hi := 9490249) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 9490249 9495613 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9490249)
    (mid := 9492949) (hi := 9495613) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 9495613 9501043 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9495613)
    (mid := 9498301) (hi := 9501043) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 9501043 9506489 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9501043)
    (mid := 9503777) (hi := 9506489) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 9506489 9512051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9506489)
    (mid := 9509267) (hi := 9512051) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 9512051 9517559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9512051)
    (mid := 9514789) (hi := 9517559) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 9429913 9440897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9429913)
    (mid := 9435421) (hi := 9440897) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 9440897 9451879 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9440897)
    (mid := 9446329) (hi := 9451879) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 9451879 9462889 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9451879)
    (mid := 9457361) (hi := 9462889) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 9462889 9473983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9462889)
    (mid := 9468451) (hi := 9473983) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 9473983 9484799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9473983)
    (mid := 9479377) (hi := 9484799) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 9484799 9495613 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9484799)
    (mid := 9490249) (hi := 9495613) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 9495613 9506489 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9495613)
    (mid := 9501043) (hi := 9506489) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 9506489 9517559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9506489)
    (mid := 9512051) (hi := 9517559) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 9429913 9451879 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9429913)
    (mid := 9440897) (hi := 9451879) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 9451879 9473983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9451879)
    (mid := 9462889) (hi := 9473983) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 9473983 9495613 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9473983)
    (mid := 9484799) (hi := 9495613) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 9495613 9517559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9495613)
    (mid := 9506489) (hi := 9517559) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 9429913 9473983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9429913)
    (mid := 9451879) (hi := 9473983) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 9473983 9517559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9473983)
    (mid := 9495613) (hi := 9517559) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 9429913 9517559 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9429913)
    (mid := 9473983) (hi := 9517559) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 9429913 9517559 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block107

#print axioms B699MiddleExtension.PrimorialBlocks.Block107.joined
