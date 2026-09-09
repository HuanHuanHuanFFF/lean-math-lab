import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block186

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [16343699, 16343881, 16344059, 16344241, 16344397, 16344569, 16344751, 16344929, 16345103, 16345283, 16345451, 16345631, 16345807, 16345981, 16346159, 16346339]
theorem check0 : primorialChainCheck 4473 primorial4473 184 16343519 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 16343519 16346339 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16343519) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [16346513, 16346689, 16346873, 16347053, 16347209, 16347367, 16347497, 16347671, 16347853, 16348019, 16348187, 16348363, 16348529, 16348697, 16348879, 16349057]
theorem check1 : primorialChainCheck 4473 primorial4473 184 16346339 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 16346339 16349057 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16346339) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [16349239, 16349419, 16349587, 16349771, 16349953, 16350133, 16350307, 16350491, 16350667, 16350839, 16351009, 16351187, 16351351, 16351493, 16351651, 16351823]
theorem check2 : primorialChainCheck 4473 primorial4473 184 16349057 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 16349057 16351823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16349057) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [16351991, 16352137, 16352321, 16352503, 16352681, 16352801, 16352983, 16353121, 16353289, 16353457, 16353641, 16353823, 16354007, 16354189, 16354363, 16354537]
theorem check3 : primorialChainCheck 4473 primorial4473 184 16351823 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 16351823 16354537 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16351823) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [16354721, 16354903, 16355083, 16355239, 16355413, 16355557, 16355719, 16355893, 16356071, 16356217, 16356391, 16356569, 16356751, 16356877, 16357031, 16357177]
theorem check4 : primorialChainCheck 4473 primorial4473 184 16354537 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 16354537 16357177 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16354537) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [16357361, 16357543, 16357717, 16357883, 16358039, 16358213, 16358389, 16358569, 16358747, 16358899, 16359067, 16359223, 16359403, 16359523, 16359667, 16359841]
theorem check5 : primorialChainCheck 4473 primorial4473 184 16357177 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 16357177 16359841 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16357177) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [16360021, 16360187, 16360369, 16360543, 16360679, 16360859, 16361011, 16361179, 16361353, 16361519, 16361699, 16361867, 16362043, 16362217, 16362373, 16362557]
theorem check6 : primorialChainCheck 4473 primorial4473 184 16359841 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 16359841 16362557 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16359841) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [16362727, 16362901, 16363073, 16363253, 16363423, 16363601, 16363771, 16363937, 16364119, 16364303, 16364479, 16364641, 16364791, 16364941, 16365119, 16365299]
theorem check7 : primorialChainCheck 4473 primorial4473 184 16362557 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 16362557 16365299 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16362557) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [16365469, 16365653, 16365827, 16366001, 16366183, 16366367, 16366523, 16366697, 16366841, 16367003, 16367179, 16367359, 16367539, 16367693, 16367867, 16368041]
theorem check8 : primorialChainCheck 4473 primorial4473 184 16365299 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 16365299 16368041 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16365299) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [16368221, 16368397, 16368529, 16368701, 16368883, 16369063, 16369237, 16369417, 16369579, 16369763, 16369943, 16370117, 16370281, 16370461, 16370633, 16370797]
theorem check9 : primorialChainCheck 4473 primorial4473 184 16368041 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 16368041 16370797 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16368041) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [16370969, 16371151, 16371319, 16371499, 16371683, 16371857, 16372033, 16372199, 16372381, 16372561, 16372739, 16372903, 16373087, 16373219, 16373369, 16373551]
theorem check10 : primorialChainCheck 4473 primorial4473 184 16370797 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 16370797 16373551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16370797) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [16373717, 16373899, 16374073, 16374227, 16374389, 16374571, 16374749, 16374931, 16375087, 16375259, 16375439, 16375603, 16375763, 16375943, 16376123, 16376303]
theorem check11 : primorialChainCheck 4473 primorial4473 184 16373551 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 16373551 16376303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16373551) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [16376467, 16376639, 16376791, 16376957, 16377139, 16377301, 16377469, 16377653, 16377833, 16378009, 16378189, 16378367, 16378543, 16378727, 16378907, 16379081]
theorem check12 : primorialChainCheck 4473 primorial4473 184 16376303 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 16376303 16379081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16376303) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [16379263, 16379443, 16379609, 16379777, 16379953, 16380107, 16380289, 16380473, 16380649, 16380799, 16380971, 16381153, 16381331, 16381513, 16381691, 16381853]
theorem check13 : primorialChainCheck 4473 primorial4473 184 16379081 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 16379081 16381853 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16379081) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [16382027, 16382209, 16382393, 16382567, 16382719, 16382887, 16383007, 16383151, 16383331, 16383509, 16383677, 16383839, 16384003, 16384187, 16384343, 16384513]
theorem check14 : primorialChainCheck 4473 primorial4473 184 16381853 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 16381853 16384513 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16381853) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [16384691, 16384873, 16385053, 16385233, 16385401, 16385573, 16385753, 16385927, 16386107, 16386289, 16386457, 16386641, 16386803, 16386919, 16387103, 16387243]
theorem check15 : primorialChainCheck 4473 primorial4473 184 16384513 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 16384513 16387243 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16384513) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [16387409, 16387583, 16387757, 16387919, 16388093, 16388263, 16388419, 16388597, 16388777, 16388951, 16389127, 16389311, 16389491, 16389673, 16389833, 16390013]
theorem check16 : primorialChainCheck 4473 primorial4473 184 16387243 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 16387243 16390013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16387243) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [16390183, 16390343, 16390489, 16390637, 16390819, 16390993, 16391161, 16391339, 16391491, 16391671, 16391833, 16392011, 16392179, 16392361, 16392487, 16392671]
theorem check17 : primorialChainCheck 4473 primorial4473 184 16390013 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 16390013 16392671 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16390013) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [16392853, 16393037, 16393213, 16393397, 16393571, 16393753, 16393913, 16394089, 16394269, 16394449, 16394617, 16394759, 16394941, 16395109, 16395287, 16395439]
theorem check18 : primorialChainCheck 4473 primorial4473 184 16392671 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 16392671 16395439 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16392671) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [16395607, 16395787, 16395971, 16396147, 16396327, 16396511, 16396693, 16396871, 16397053, 16397207, 16397389, 16397567, 16397747, 16397903, 16398017, 16398191]
theorem check19 : primorialChainCheck 4473 primorial4473 184 16395439 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 16395439 16398191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16395439) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [16398341, 16398521, 16398671, 16398847, 16399027, 16399183, 16399363, 16399541, 16399681, 16399853, 16400017, 16400201, 16400383, 16400567, 16400737, 16400851]
theorem check20 : primorialChainCheck 4473 primorial4473 184 16398191 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 16398191 16400851 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16398191) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [16401031, 16401197, 16401377, 16401551, 16401727, 16401911, 16402079, 16402259, 16402439, 16402621, 16402781, 16402949, 16403131, 16403311, 16403461, 16403609]
theorem check21 : primorialChainCheck 4473 primorial4473 184 16400851 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 16400851 16403609 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16400851) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [16403791, 16403971, 16404139, 16404307, 16404461, 16404637, 16404821, 16404989, 16405163, 16405343, 16405507, 16405681, 16405861, 16406023, 16406197, 16406363]
theorem check22 : primorialChainCheck 4473 primorial4473 184 16403609 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 16403609 16406363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16403609) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [16406501, 16406653, 16406827, 16406993, 16407173, 16407343, 16407527, 16407683, 16407863, 16408037, 16408211, 16408351, 16408529, 16408709, 16408891, 16409039]
theorem check23 : primorialChainCheck 4473 primorial4473 184 16406363 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 16406363 16409039 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16406363) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [16409213, 16409387, 16409567, 16409719, 16409893, 16410077, 16410257, 16410421, 16410599, 16410767, 16410949, 16411127, 16411309, 16411487, 16411663, 16411841]
theorem check24 : primorialChainCheck 4473 primorial4473 184 16409039 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 16409039 16411841 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16409039) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [16412017, 16412167, 16412339, 16412519, 16412681, 16412863, 16413037, 16413197, 16413373, 16413541, 16413707, 16413889, 16414037, 16414219, 16414403, 16414579]
theorem check25 : primorialChainCheck 4473 primorial4473 184 16411841 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 16411841 16414579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16411841) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [16414747, 16414919, 16415057, 16415239, 16415423, 16415579, 16415731, 16415891, 16416073, 16416241, 16416409, 16416593, 16416761, 16416941, 16417123, 16417279]
theorem check26 : primorialChainCheck 4473 primorial4473 184 16414579 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 16414579 16417279 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16414579) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [16417411, 16417591, 16417771, 16417909, 16418093, 16418267, 16418449, 16418627, 16418797, 16418981, 16419149, 16419323, 16419503, 16419661, 16419839, 16420007]
theorem check27 : primorialChainCheck 4473 primorial4473 184 16417279 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 16417279 16420007 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16417279) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [16420189, 16420373, 16420553, 16420721, 16420897, 16421071, 16421239, 16421417, 16421597, 16421777, 16421897, 16422079, 16422257, 16422409, 16422587, 16422767]
theorem check28 : primorialChainCheck 4473 primorial4473 184 16420007 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 16420007 16422767 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16420007) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [16422941, 16423117, 16423289, 16423469, 16423637, 16423811, 16423991, 16424171, 16424297, 16424467, 16424651, 16424831, 16425007, 16425191, 16425337, 16425503]
theorem check29 : primorialChainCheck 4473 primorial4473 184 16422767 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 16422767 16425503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16422767) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [16425683, 16425853, 16426031, 16426213, 16426381, 16426517, 16426687, 16426867, 16427029, 16427209, 16427377, 16427557, 16427731, 16427897, 16428073, 16428229]
theorem check30 : primorialChainCheck 4473 primorial4473 184 16425503 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 16425503 16428229 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16425503) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [16428403, 16428583, 16428757, 16428941, 16429117, 16429297, 16429481, 16429663, 16429823, 16429991, 16430149, 16430311, 16430489, 16430641, 16430807, 16430989]
theorem check31 : primorialChainCheck 4473 primorial4473 184 16428229 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 16428229 16430989 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16428229) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 16343519 16349057 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16343519)
    (mid := 16346339) (hi := 16349057) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 16349057 16354537 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16349057)
    (mid := 16351823) (hi := 16354537) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 16354537 16359841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16354537)
    (mid := 16357177) (hi := 16359841) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 16359841 16365299 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16359841)
    (mid := 16362557) (hi := 16365299) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 16365299 16370797 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16365299)
    (mid := 16368041) (hi := 16370797) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 16370797 16376303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16370797)
    (mid := 16373551) (hi := 16376303) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 16376303 16381853 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16376303)
    (mid := 16379081) (hi := 16381853) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 16381853 16387243 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16381853)
    (mid := 16384513) (hi := 16387243) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 16387243 16392671 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16387243)
    (mid := 16390013) (hi := 16392671) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 16392671 16398191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16392671)
    (mid := 16395439) (hi := 16398191) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 16398191 16403609 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16398191)
    (mid := 16400851) (hi := 16403609) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 16403609 16409039 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16403609)
    (mid := 16406363) (hi := 16409039) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 16409039 16414579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16409039)
    (mid := 16411841) (hi := 16414579) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 16414579 16420007 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16414579)
    (mid := 16417279) (hi := 16420007) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 16420007 16425503 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16420007)
    (mid := 16422767) (hi := 16425503) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 16425503 16430989 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16425503)
    (mid := 16428229) (hi := 16430989) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 16343519 16354537 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16343519)
    (mid := 16349057) (hi := 16354537) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 16354537 16365299 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16354537)
    (mid := 16359841) (hi := 16365299) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 16365299 16376303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16365299)
    (mid := 16370797) (hi := 16376303) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 16376303 16387243 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16376303)
    (mid := 16381853) (hi := 16387243) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 16387243 16398191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16387243)
    (mid := 16392671) (hi := 16398191) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 16398191 16409039 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16398191)
    (mid := 16403609) (hi := 16409039) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 16409039 16420007 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16409039)
    (mid := 16414579) (hi := 16420007) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 16420007 16430989 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16420007)
    (mid := 16425503) (hi := 16430989) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 16343519 16365299 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16343519)
    (mid := 16354537) (hi := 16365299) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 16365299 16387243 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16365299)
    (mid := 16376303) (hi := 16387243) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 16387243 16409039 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16387243)
    (mid := 16398191) (hi := 16409039) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 16409039 16430989 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16409039)
    (mid := 16420007) (hi := 16430989) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 16343519 16387243 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16343519)
    (mid := 16365299) (hi := 16387243) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 16387243 16430989 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16387243)
    (mid := 16409039) (hi := 16430989) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 16343519 16430989 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16343519)
    (mid := 16387243) (hi := 16430989) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 16343519 16430989 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block186

#print axioms B699MiddleExtension.PrimorialBlocks.Block186.joined
