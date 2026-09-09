import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block113

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [9956161, 9956333, 9956503, 9956641, 9956819, 9957001, 9957161, 9957331, 9957511, 9957683, 9957863, 9958027, 9958199, 9958363, 9958537, 9958709]
theorem check0 : primorialChainCheck 4473 primorial4473 184 9956003 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 9956003 9958709 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9956003) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [9958873, 9959057, 9959237, 9959407, 9959581, 9959753, 9959927, 9960107, 9960281, 9960463, 9960619, 9960787, 9960971, 9961151, 9961333, 9961517]
theorem check1 : primorialChainCheck 4473 primorial4473 184 9958709 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 9958709 9961517 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9958709) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [9961687, 9961867, 9962047, 9962219, 9962401, 9962567, 9962737, 9962893, 9963077, 9963251, 9963419, 9963587, 9963769, 9963931, 9964111, 9964291]
theorem check2 : primorialChainCheck 4473 primorial4473 184 9961517 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 9961517 9964291 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9961517) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [9964469, 9964651, 9964813, 9964979, 9965161, 9965341, 9965507, 9965687, 9965869, 9966037, 9966217, 9966389, 9966559, 9966721, 9966883, 9967063]
theorem check3 : primorialChainCheck 4473 primorial4473 184 9964291 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 9964291 9967063 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9964291) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [9967189, 9967367, 9967549, 9967721, 9967891, 9968053, 9968219, 9968381, 9968551, 9968719, 9968899, 9969059, 9969233, 9969397, 9969581, 9969731]
theorem check4 : primorialChainCheck 4473 primorial4473 184 9967063 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 9967063 9969731 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9967063) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [9969913, 9970087, 9970249, 9970423, 9970607, 9970787, 9970951, 9971131, 9971303, 9971483, 9971653, 9971837, 9972007, 9972187, 9972343, 9972527]
theorem check5 : primorialChainCheck 4473 primorial4473 184 9969731 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 9969731 9972527 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9969731) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [9972691, 9972811, 9972973, 9973153, 9973331, 9973511, 9973673, 9973853, 9974021, 9974197, 9974369, 9974551, 9974711, 9974843, 9974983, 9975157]
theorem check6 : primorialChainCheck 4473 primorial4473 184 9972527 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 9972527 9975157 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9972527) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [9975337, 9975461, 9975643, 9975827, 9976003, 9976171, 9976333, 9976511, 9976693, 9976873, 9977057, 9977237, 9977411, 9977593, 9977777, 9977951]
theorem check7 : primorialChainCheck 4473 primorial4473 184 9975157 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 9975157 9977951 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9975157) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [9978131, 9978313, 9978461, 9978637, 9978821, 9978989, 9979169, 9979337, 9979513, 9979681, 9979859, 9980029, 9980209, 9980389, 9980539, 9980723]
theorem check8 : primorialChainCheck 4473 primorial4473 184 9977951 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 9977951 9980723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9977951) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [9980899, 9981079, 9981229, 9981383, 9981557, 9981739, 9981919, 9982099, 9982243, 9982381, 9982549, 9982729, 9982913, 9983033, 9983203, 9983387]
theorem check9 : primorialChainCheck 4473 primorial4473 184 9980723 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 9980723 9983387 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9980723) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [9983551, 9983723, 9983867, 9984031, 9984209, 9984383, 9984563, 9984743, 9984913, 9985093, 9985267, 9985447, 9985631, 9985799, 9985973, 9986113]
theorem check10 : primorialChainCheck 4473 primorial4473 184 9983387 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 9983387 9986113 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9983387) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [9986287, 9986467, 9986651, 9986831, 9987013, 9987191, 9987323, 9987503, 9987671, 9987853, 9988007, 9988177, 9988361, 9988519, 9988697, 9988879]
theorem check11 : primorialChainCheck 4473 primorial4473 184 9986113 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 9986113 9988879 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9986113) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [9989059, 9989237, 9989417, 9989587, 9989747, 9989927, 9990089, 9990263, 9990403, 9990569, 9990737, 9990919, 9991067, 9991211, 9991379, 9991559]
theorem check12 : primorialChainCheck 4473 primorial4473 184 9988879 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 9988879 9991559 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9988879) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [9991727, 9991879, 9992057, 9992237, 9992401, 9992569, 9992743, 9992921, 9993103, 9993271, 9993443, 9993623, 9993803, 9993967, 9994151, 9994333]
theorem check13 : primorialChainCheck 4473 primorial4473 184 9991559 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 9991559 9994333 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9991559) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [9994507, 9994681, 9994837, 9995009, 9995149, 9995333, 9995497, 9995669, 9995849, 9996011, 9996157, 9996313, 9996491, 9996673, 9996829, 9997007]
theorem check14 : primorialChainCheck 4473 primorial4473 184 9994333 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 9994333 9997007 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9994333) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [9997189, 9997367, 9997523, 9997703, 9997879, 9998033, 9998207, 9998381, 9998561, 9998743, 9998903, 9999083, 9999233, 9999401, 9999533, 9999713]
theorem check15 : primorialChainCheck 4473 primorial4473 184 9997007 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 9997007 9999713 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9997007) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [9999889, 10000019, 10000189, 10000363, 10000537, 10000721, 10000891, 10001053, 10001237, 10001419, 10001603, 10001779, 10001963, 10002133, 10002287, 10002463]
theorem check16 : primorialChainCheck 4473 primorial4473 184 9999713 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 9999713 10002463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9999713) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [10002623, 10002803, 10002983, 10003159, 10003337, 10003517, 10003699, 10003879, 10004063, 10004243, 10004411, 10004573, 10004719, 10004881, 10005053, 10005227]
theorem check17 : primorialChainCheck 4473 primorial4473 184 10002463 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 10002463 10005227 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10002463) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [10005389, 10005559, 10005731, 10005887, 10006067, 10006207, 10006351, 10006519, 10006699, 10006883, 10007051, 10007201, 10007359, 10007539, 10007719, 10007897]
theorem check18 : primorialChainCheck 4473 primorial4473 184 10005227 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 10005227 10007897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10005227) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [10008073, 10008247, 10008419, 10008599, 10008781, 10008959, 10009133, 10009313, 10009487, 10009627, 10009799, 10009981, 10010159, 10010333, 10010513, 10010687]
theorem check19 : primorialChainCheck 4473 primorial4473 184 10007897 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 10007897 10010687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10007897) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [10010851, 10011017, 10011191, 10011367, 10011539, 10011713, 10011871, 10012033, 10012217, 10012399, 10012579, 10012763, 10012931, 10013111, 10013287, 10013461]
theorem check20 : primorialChainCheck 4473 primorial4473 184 10010687 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 10010687 10013461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10010687) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [10013639, 10013819, 10013981, 10014163, 10014341, 10014517, 10014689, 10014859, 10015043, 10015217, 10015399, 10015561, 10015739, 10015919, 10016101, 10016273]
theorem check21 : primorialChainCheck 4473 primorial4473 184 10013461 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 10013461 10016273 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10013461) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [10016429, 10016563, 10016737, 10016917, 10017101, 10017263, 10017431, 10017613, 10017797, 10017979, 10018153, 10018319, 10018471, 10018651, 10018793, 10018973]
theorem check22 : primorialChainCheck 4473 primorial4473 184 10016273 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 10016273 10018973 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10016273) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [10019147, 10019309, 10019483, 10019657, 10019839, 10020013, 10020193, 10020349, 10020509, 10020691, 10020859, 10021027, 10021163, 10021331, 10021511, 10021663]
theorem check23 : primorialChainCheck 4473 primorial4473 184 10018973 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 10018973 10021663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10018973) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [10021831, 10022011, 10022191, 10022359, 10022543, 10022699, 10022869, 10023053, 10023197, 10023371, 10023553, 10023701, 10023877, 10024061, 10024243, 10024423]
theorem check24 : primorialChainCheck 4473 primorial4473 184 10021663 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 10021663 10024423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10021663) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [10024601, 10024783, 10024967, 10025131, 10025303, 10025467, 10025651, 10025833, 10026011, 10026193, 10026343, 10026493, 10026659, 10026803, 10026979, 10027159]
theorem check25 : primorialChainCheck 4473 primorial4473 184 10024423 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 10024423 10027159 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10024423) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [10027343, 10027519, 10027679, 10027837, 10028017, 10028177, 10028353, 10028527, 10028677, 10028849, 10029023, 10029203, 10029367, 10029533, 10029671, 10029839]
theorem check26 : primorialChainCheck 4473 primorial4473 184 10027159 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 10027159 10029839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10027159) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [10030003, 10030183, 10030351, 10030529, 10030703, 10030877, 10031053, 10031237, 10031407, 10031591, 10031761, 10031939, 10032119, 10032283, 10032461, 10032611]
theorem check27 : primorialChainCheck 4473 primorial4473 184 10029839 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 10029839 10032611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10029839) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [10032793, 10032977, 10033117, 10033297, 10033427, 10033579, 10033763, 10033943, 10034113, 10034293, 10034449, 10034623, 10034803, 10034987, 10035169, 10035349]
theorem check28 : primorialChainCheck 4473 primorial4473 184 10032611 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 10032611 10035349 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10032611) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [10035533, 10035703, 10035887, 10036057, 10036241, 10036421, 10036603, 10036787, 10036967, 10037147, 10037311, 10037479, 10037663, 10037843, 10038019, 10038199]
theorem check29 : primorialChainCheck 4473 primorial4473 184 10035349 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 10035349 10038199 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10035349) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [10038377, 10038559, 10038739, 10038913, 10039093, 10039273, 10039457, 10039637, 10039801, 10039973, 10040137, 10040321, 10040501, 10040671, 10040843, 10041013]
theorem check30 : primorialChainCheck 4473 primorial4473 184 10038199 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 10038199 10041013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10038199) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [10041197, 10041379, 10041529, 10041697, 10041853, 10042031, 10042199, 10042379, 10042553, 10042723, 10042897, 10043081, 10043261, 10043443, 10043623, 10043791]
theorem check31 : primorialChainCheck 4473 primorial4473 184 10041013 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 10041013 10043791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10041013) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 9956003 9961517 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9956003)
    (mid := 9958709) (hi := 9961517) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 9961517 9967063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9961517)
    (mid := 9964291) (hi := 9967063) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 9967063 9972527 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9967063)
    (mid := 9969731) (hi := 9972527) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 9972527 9977951 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9972527)
    (mid := 9975157) (hi := 9977951) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 9977951 9983387 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9977951)
    (mid := 9980723) (hi := 9983387) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 9983387 9988879 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9983387)
    (mid := 9986113) (hi := 9988879) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 9988879 9994333 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9988879)
    (mid := 9991559) (hi := 9994333) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 9994333 9999713 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9994333)
    (mid := 9997007) (hi := 9999713) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 9999713 10005227 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9999713)
    (mid := 10002463) (hi := 10005227) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 10005227 10010687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10005227)
    (mid := 10007897) (hi := 10010687) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 10010687 10016273 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10010687)
    (mid := 10013461) (hi := 10016273) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 10016273 10021663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10016273)
    (mid := 10018973) (hi := 10021663) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 10021663 10027159 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10021663)
    (mid := 10024423) (hi := 10027159) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 10027159 10032611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10027159)
    (mid := 10029839) (hi := 10032611) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 10032611 10038199 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10032611)
    (mid := 10035349) (hi := 10038199) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 10038199 10043791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10038199)
    (mid := 10041013) (hi := 10043791) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 9956003 9967063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9956003)
    (mid := 9961517) (hi := 9967063) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 9967063 9977951 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9967063)
    (mid := 9972527) (hi := 9977951) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 9977951 9988879 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9977951)
    (mid := 9983387) (hi := 9988879) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 9988879 9999713 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9988879)
    (mid := 9994333) (hi := 9999713) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 9999713 10010687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9999713)
    (mid := 10005227) (hi := 10010687) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 10010687 10021663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10010687)
    (mid := 10016273) (hi := 10021663) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 10021663 10032611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10021663)
    (mid := 10027159) (hi := 10032611) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 10032611 10043791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10032611)
    (mid := 10038199) (hi := 10043791) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 9956003 9977951 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9956003)
    (mid := 9967063) (hi := 9977951) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 9977951 9999713 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9977951)
    (mid := 9988879) (hi := 9999713) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 9999713 10021663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9999713)
    (mid := 10010687) (hi := 10021663) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 10021663 10043791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10021663)
    (mid := 10032611) (hi := 10043791) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 9956003 9999713 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9956003)
    (mid := 9977951) (hi := 9999713) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 9999713 10043791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9999713)
    (mid := 10021663) (hi := 10043791) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 9956003 10043791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9956003)
    (mid := 9999713) (hi := 10043791) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 9956003 10043791 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block113

#print axioms B699MiddleExtension.PrimorialBlocks.Block113.joined
