import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block131

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [11532841, 11533007, 11533183, 11533363, 11533547, 11533729, 11533889, 11534059, 11534213, 11534371, 11534543, 11534723, 11534903, 11535077, 11535247, 11535427]
theorem check0 : primorialChainCheck 4473 primorial4473 184 11532659 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 11532659 11535427 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11532659) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [11535607, 11535787, 11535941, 11536121, 11536297, 11536471, 11536649, 11536813, 11536997, 11537179, 11537353, 11537531, 11537711, 11537893, 11538067, 11538239]
theorem check1 : primorialChainCheck 4473 primorial4473 184 11535427 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 11535427 11538239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11535427) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [11538421, 11538601, 11538763, 11538911, 11539069, 11539249, 11539433, 11539613, 11539793, 11539963, 11540143, 11540327, 11540491, 11540653, 11540833, 11541001]
theorem check2 : primorialChainCheck 4473 primorial4473 184 11538239 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 11538239 11541001 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11538239) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [11541149, 11541323, 11541499, 11541679, 11541857, 11542007, 11542183, 11542357, 11542523, 11542681, 11542859, 11543041, 11543167, 11543351, 11543503, 11543683]
theorem check3 : primorialChainCheck 4473 primorial4473 184 11541001 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 11541001 11543683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11541001) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [11543843, 11544011, 11544163, 11544347, 11544521, 11544653, 11544829, 11545003, 11545187, 11545367, 11545537, 11545663, 11545843, 11546027, 11546203, 11546377]
theorem check4 : primorialChainCheck 4473 primorial4473 184 11543683 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 11543683 11546377 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11543683) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [11546531, 11546693, 11546839, 11547023, 11547203, 11547379, 11547563, 11547721, 11547881, 11548063, 11548193, 11548367, 11548519, 11548697, 11548879, 11549063]
theorem check5 : primorialChainCheck 4473 primorial4473 184 11546377 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 11546377 11549063 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11546377) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [11549233, 11549411, 11549591, 11549773, 11549947, 11550113, 11550283, 11550467, 11550641, 11550823, 11550997, 11551181, 11551357, 11551531, 11551699, 11551879]
theorem check6 : primorialChainCheck 4473 primorial4473 184 11549063 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 11549063 11551879 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11549063) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [11552053, 11552227, 11552393, 11552561, 11552719, 11552903, 11553079, 11553259, 11553433, 11553601, 11553779, 11553943, 11554121, 11554297, 11554481, 11554663]
theorem check7 : primorialChainCheck 4473 primorial4473 184 11551879 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 11551879 11554663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11551879) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [11554819, 11554999, 11555183, 11555339, 11555501, 11555669, 11555783, 11555953, 11556113, 11556283, 11556451, 11556631, 11556803, 11556983, 11557163, 11557319]
theorem check8 : primorialChainCheck 4473 primorial4473 184 11554663 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 11554663 11557319 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11554663) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [11557471, 11557633, 11557789, 11557963, 11558101, 11558273, 11558429, 11558609, 11558779, 11558957, 11559137, 11559319, 11559491, 11559637, 11559803, 11559973]
theorem check9 : primorialChainCheck 4473 primorial4473 184 11557319 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 11557319 11559973 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11557319) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [11560141, 11560313, 11560487, 11560643, 11560819, 11560981, 11561161, 11561321, 11561489, 11561653, 11561833, 11562017, 11562197, 11562377, 11562547, 11562709]
theorem check10 : primorialChainCheck 4473 primorial4473 184 11559973 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 11559973 11562709 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11559973) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [11562871, 11563051, 11563231, 11563397, 11563567, 11563751, 11563933, 11564107, 11564269, 11564447, 11564629, 11564801, 11564983, 11565161, 11565341, 11565487]
theorem check11 : primorialChainCheck 4473 primorial4473 184 11562709 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 11562709 11565487 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11562709) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [11565647, 11565823, 11565979, 11566129, 11566283, 11566463, 11566619, 11566781, 11566949, 11567131, 11567291, 11567467, 11567641, 11567821, 11568001, 11568181]
theorem check12 : primorialChainCheck 4473 primorial4473 184 11565487 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 11565487 11568181 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11565487) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [11568353, 11568499, 11568671, 11568829, 11569013, 11569177, 11569361, 11569531, 11569711, 11569891, 11570071, 11570249, 11570423, 11570597, 11570773, 11570953]
theorem check13 : primorialChainCheck 4473 primorial4473 184 11568181 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 11568181 11570953 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11568181) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [11571107, 11571289, 11571473, 11571653, 11571811, 11571983, 11572163, 11572343, 11572523, 11572679, 11572861, 11573021, 11573203, 11573377, 11573539, 11573701]
theorem check14 : primorialChainCheck 4473 primorial4473 184 11570953 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 11570953 11573701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11570953) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [11573867, 11574047, 11574217, 11574373, 11574557, 11574733, 11574889, 11575063, 11575219, 11575397, 11575567, 11575747, 11575903, 11576087, 11576261, 11576407]
theorem check15 : primorialChainCheck 4473 primorial4473 184 11573701 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 11573701 11576407 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11573701) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [11576573, 11576753, 11576927, 11577109, 11577287, 11577439, 11577613, 11577779, 11577961, 11578129, 11578313, 11578493, 11578673, 11578849, 11579021, 11579173]
theorem check16 : primorialChainCheck 4473 primorial4473 184 11576407 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 11576407 11579173 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11576407) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [11579353, 11579527, 11579707, 11579881, 11580053, 11580227, 11580337, 11580509, 11580691, 11580851, 11581027, 11581177, 11581357, 11581529, 11581711, 11581853]
theorem check17 : primorialChainCheck 4473 primorial4473 184 11579173 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 11579173 11581853 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11579173) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [11582033, 11582209, 11582393, 11582563, 11582737, 11582917, 11583079, 11583263, 11583433, 11583601, 11583779, 11583917, 11584081, 11584241, 11584409, 11584579]
theorem check18 : primorialChainCheck 4473 primorial4473 184 11581853 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 11581853 11584579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11581853) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [11584763, 11584943, 11585081, 11585257, 11585437, 11585617, 11585759, 11585941, 11586119, 11586301, 11586433, 11586613, 11586797, 11586977, 11587157, 11587313]
theorem check19 : primorialChainCheck 4473 primorial4473 184 11584579 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 11584579 11587313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11584579) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [11587481, 11587661, 11587843, 11588009, 11588189, 11588351, 11588519, 11588701, 11588873, 11589049, 11589229, 11589397, 11589559, 11589731, 11589913, 11590087]
theorem check20 : primorialChainCheck 4473 primorial4473 184 11587313 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 11587313 11590087 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11587313) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [11590261, 11590417, 11590591, 11590769, 11590949, 11591131, 11591299, 11591473, 11591651, 11591831, 11591953, 11592121, 11592293, 11592439, 11592617, 11592799]
theorem check21 : primorialChainCheck 4473 primorial4473 184 11590087 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 11590087 11592799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11590087) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [11592979, 11593159, 11593333, 11593511, 11593663, 11593831, 11593991, 11594159, 11594339, 11594521, 11594683, 11594777, 11594951, 11595131, 11595299, 11595449]
theorem check22 : primorialChainCheck 4473 primorial4473 184 11592799 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 11592799 11595449 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11592799) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [11595631, 11595809, 11595971, 11596147, 11596307, 11596471, 11596633, 11596817, 11596993, 11597167, 11597351, 11597533, 11597717, 11597899, 11598077, 11598253]
theorem check23 : primorialChainCheck 4473 primorial4473 184 11595449 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 11595449 11598253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11595449) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [11598413, 11598589, 11598761, 11598943, 11599127, 11599309, 11599409, 11599589, 11599771, 11599897, 11600081, 11600263, 11600437, 11600591, 11600753, 11600923]
theorem check24 : primorialChainCheck 4473 primorial4473 184 11598253 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 11598253 11600923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11598253) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [11601101, 11601283, 11601467, 11601643, 11601791, 11601949, 11602111, 11602273, 11602453, 11602637, 11602807, 11602979, 11603153, 11603329, 11603461, 11603621]
theorem check25 : primorialChainCheck 4473 primorial4473 184 11600923 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 11600923 11603621 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11600923) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [11603791, 11603953, 11604119, 11604301, 11604473, 11604653, 11604821, 11604961, 11605127, 11605301, 11605483, 11605661, 11605817, 11605987, 11606159, 11606339]
theorem check26 : primorialChainCheck 4473 primorial4473 184 11603621 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 11603621 11606339 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11603621) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [11606521, 11606687, 11606857, 11607023, 11607199, 11607383, 11607559, 11607703, 11607881, 11608063, 11608217, 11608397, 11608579, 11608741, 11608921, 11609069]
theorem check27 : primorialChainCheck 4473 primorial4473 184 11606339 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 11606339 11609069 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11606339) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [11609203, 11609387, 11609567, 11609747, 11609921, 11610103, 11610281, 11610449, 11610629, 11610811, 11610961, 11611133, 11611309, 11611477, 11611637, 11611813]
theorem check28 : primorialChainCheck 4473 primorial4473 184 11609069 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 11609069 11611813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11609069) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [11611981, 11612147, 11612327, 11612501, 11612681, 11612863, 11613011, 11613191, 11613359, 11613527, 11613691, 11613803, 11613983, 11614159, 11614321, 11614487]
theorem check29 : primorialChainCheck 4473 primorial4473 184 11611813 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 11611813 11614487 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11611813) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [11614667, 11614843, 11615027, 11615159, 11615323, 11615497, 11615677, 11615843, 11616023, 11616203, 11616383, 11616551, 11616721, 11616887, 11617057, 11617241]
theorem check30 : primorialChainCheck 4473 primorial4473 184 11614487 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 11614487 11617241 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11614487) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [11617423, 11617597, 11617751, 11617933, 11618107, 11618281, 11618449, 11618623, 11618807, 11618989, 11619173, 11619353, 11619529, 11619703, 11619871, 11620051]
theorem check31 : primorialChainCheck 4473 primorial4473 184 11617241 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 11617241 11620051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11617241) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 11532659 11538239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11532659)
    (mid := 11535427) (hi := 11538239) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 11538239 11543683 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11538239)
    (mid := 11541001) (hi := 11543683) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 11543683 11549063 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11543683)
    (mid := 11546377) (hi := 11549063) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 11549063 11554663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11549063)
    (mid := 11551879) (hi := 11554663) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 11554663 11559973 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11554663)
    (mid := 11557319) (hi := 11559973) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 11559973 11565487 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11559973)
    (mid := 11562709) (hi := 11565487) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 11565487 11570953 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11565487)
    (mid := 11568181) (hi := 11570953) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 11570953 11576407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11570953)
    (mid := 11573701) (hi := 11576407) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 11576407 11581853 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11576407)
    (mid := 11579173) (hi := 11581853) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 11581853 11587313 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11581853)
    (mid := 11584579) (hi := 11587313) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 11587313 11592799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11587313)
    (mid := 11590087) (hi := 11592799) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 11592799 11598253 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11592799)
    (mid := 11595449) (hi := 11598253) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 11598253 11603621 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11598253)
    (mid := 11600923) (hi := 11603621) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 11603621 11609069 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11603621)
    (mid := 11606339) (hi := 11609069) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 11609069 11614487 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11609069)
    (mid := 11611813) (hi := 11614487) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 11614487 11620051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11614487)
    (mid := 11617241) (hi := 11620051) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 11532659 11543683 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11532659)
    (mid := 11538239) (hi := 11543683) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 11543683 11554663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11543683)
    (mid := 11549063) (hi := 11554663) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 11554663 11565487 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11554663)
    (mid := 11559973) (hi := 11565487) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 11565487 11576407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11565487)
    (mid := 11570953) (hi := 11576407) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 11576407 11587313 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11576407)
    (mid := 11581853) (hi := 11587313) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 11587313 11598253 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11587313)
    (mid := 11592799) (hi := 11598253) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 11598253 11609069 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11598253)
    (mid := 11603621) (hi := 11609069) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 11609069 11620051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11609069)
    (mid := 11614487) (hi := 11620051) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 11532659 11554663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11532659)
    (mid := 11543683) (hi := 11554663) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 11554663 11576407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11554663)
    (mid := 11565487) (hi := 11576407) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 11576407 11598253 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11576407)
    (mid := 11587313) (hi := 11598253) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 11598253 11620051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11598253)
    (mid := 11609069) (hi := 11620051) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 11532659 11576407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11532659)
    (mid := 11554663) (hi := 11576407) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 11576407 11620051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11576407)
    (mid := 11598253) (hi := 11620051) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 11532659 11620051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11532659)
    (mid := 11576407) (hi := 11620051) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 11532659 11620051 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block131

#print axioms B699MiddleExtension.PrimorialBlocks.Block131.joined
