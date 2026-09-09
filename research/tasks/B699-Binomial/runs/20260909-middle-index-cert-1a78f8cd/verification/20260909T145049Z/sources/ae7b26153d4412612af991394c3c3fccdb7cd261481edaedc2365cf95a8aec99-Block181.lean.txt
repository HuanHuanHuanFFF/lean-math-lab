import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block181

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [15907751, 15907907, 15908089, 15908273, 15908449, 15908623, 15908773, 15908953, 15909079, 15909259, 15909427, 15909601, 15909781, 15909961, 15910133, 15910309]
theorem check0 : primorialChainCheck 4473 primorial4473 184 15907571 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 15907571 15910309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15907571) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [15910463, 15910627, 15910789, 15910949, 15911087, 15911261, 15911429, 15911611, 15911771, 15911953, 15912131, 15912313, 15912431, 15912601, 15912781, 15912913]
theorem check1 : primorialChainCheck 4473 primorial4473 184 15910309 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 15910309 15912913 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15910309) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [15913097, 15913243, 15913399, 15913577, 15913759, 15913841, 15914021, 15914177, 15914347, 15914531, 15914659, 15914809, 15914993, 15915169, 15915353, 15915491]
theorem check2 : primorialChainCheck 4473 primorial4473 184 15912913 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 15912913 15915491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15912913) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [15915671, 15915841, 15916013, 15916193, 15916349, 15916531, 15916711, 15916891, 15917063, 15917243, 15917411, 15917591, 15917773, 15917879, 15918043, 15918223]
theorem check3 : primorialChainCheck 4473 primorial4473 184 15915491 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 15915491 15918223 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15915491) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [15918401, 15918583, 15918761, 15918911, 15919087, 15919271, 15919441, 15919619, 15919763, 15919921, 15920089, 15920257, 15920441, 15920609, 15920783, 15920953]
theorem check4 : primorialChainCheck 4473 primorial4473 184 15918223 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 15918223 15920953 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15918223) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [15921133, 15921317, 15921473, 15921643, 15921827, 15922001, 15922177, 15922351, 15922493, 15922663, 15922847, 15923023, 15923207, 15923389, 15923573, 15923753]
theorem check5 : primorialChainCheck 4473 primorial4473 184 15920953 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 15920953 15923753 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15920953) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [15923927, 15924107, 15924289, 15924473, 15924647, 15924787, 15924967, 15925123, 15925267, 15925423, 15925601, 15925769, 15925907, 15926089, 15926269, 15926453]
theorem check6 : primorialChainCheck 4473 primorial4473 184 15923753 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 15923753 15926453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15923753) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [15926633, 15926797, 15926951, 15927133, 15927287, 15927469, 15927629, 15927809, 15927991, 15928169, 15928321, 15928499, 15928681, 15928841, 15929021, 15929191]
theorem check7 : primorialChainCheck 4473 primorial4473 184 15926453 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 15926453 15929191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15926453) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [15929371, 15929533, 15929713, 15929897, 15930073, 15930247, 15930403, 15930557, 15930731, 15930913, 15931093, 15931273, 15931453, 15931631, 15931807, 15931987]
theorem check8 : primorialChainCheck 4473 primorial4473 184 15929191 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 15929191 15931987 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15929191) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [15932129, 15932299, 15932473, 15932633, 15932797, 15932971, 15933149, 15933311, 15933479, 15933653, 15933833, 15934003, 15934169, 15934351, 15934493, 15934663]
theorem check9 : primorialChainCheck 4473 primorial4473 184 15931987 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 15931987 15934663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15931987) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [15934801, 15934981, 15935141, 15935317, 15935497, 15935663, 15935837, 15936007, 15936169, 15936343, 15936521, 15936647, 15936829, 15937001, 15937169, 15937351]
theorem check10 : primorialChainCheck 4473 primorial4473 184 15934663 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 15934663 15937351 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15934663) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [15937513, 15937693, 15937877, 15938059, 15938239, 15938413, 15938591, 15938761, 15938933, 15939109, 15939257, 15939433, 15939601, 15939779, 15939961, 15940109]
theorem check11 : primorialChainCheck 4473 primorial4473 184 15937351 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 15937351 15940109 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15937351) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [15940289, 15940471, 15940643, 15940819, 15940999, 15941179, 15941363, 15941543, 15941713, 15941881, 15942053, 15942229, 15942403, 15942571, 15942739, 15942907]
theorem check12 : primorialChainCheck 4473 primorial4473 184 15940109 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 15940109 15942907 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15940109) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [15943091, 15943271, 15943441, 15943621, 15943787, 15943969, 15944143, 15944321, 15944501, 15944647, 15944813, 15944989, 15945119, 15945301, 15945437, 15945619]
theorem check13 : primorialChainCheck 4473 primorial4473 184 15942907 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 15942907 15945619 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15942907) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [15945803, 15945977, 15946109, 15946279, 15946457, 15946633, 15946817, 15946979, 15947161, 15947341, 15947521, 15947699, 15947843, 15948019, 15948197, 15948379]
theorem check14 : primorialChainCheck 4473 primorial4473 184 15945619 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 15945619 15948379 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15945619) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [15948563, 15948727, 15948901, 15949081, 15949261, 15949441, 15949589, 15949771, 15949933, 15950117, 15950299, 15950479, 15950659, 15950839, 15950999, 15951163]
theorem check15 : primorialChainCheck 4473 primorial4473 184 15948379 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 15948379 15951163 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15948379) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [15951347, 15951503, 15951679, 15951863, 15952043, 15952219, 15952399, 15952583, 15952759, 15952943, 15953111, 15953291, 15953471, 15953647, 15953831, 15953999]
theorem check16 : primorialChainCheck 4473 primorial4473 184 15951163 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 15951163 15953999 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15951163) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [15954179, 15954361, 15954539, 15954707, 15954871, 15955019, 15955201, 15955369, 15955553, 15955729, 15955913, 15956071, 15956231, 15956393, 15956573, 15956747]
theorem check17 : primorialChainCheck 4473 primorial4473 184 15953999 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 15953999 15956747 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15953999) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [15956911, 15957089, 15957269, 15957451, 15957629, 15957803, 15957971, 15958153, 15958337, 15958517, 15958643, 15958823, 15958981, 15959161, 15959303, 15959473]
theorem check18 : primorialChainCheck 4473 primorial4473 184 15956747 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 15956747 15959473 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15956747) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [15959653, 15959813, 15959969, 15960097, 15960277, 15960457, 15960631, 15960811, 15960961, 15961139, 15961313, 15961493, 15961651, 15961823, 15962003, 15962173]
theorem check19 : primorialChainCheck 4473 primorial4473 184 15959473 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 15959473 15962173 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15959473) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [15962357, 15962539, 15962707, 15962879, 15963061, 15963239, 15963407, 15963583, 15963763, 15963947, 15964121, 15964283, 15964451, 15964609, 15964771, 15964951]
theorem check20 : primorialChainCheck 4473 primorial4473 184 15962173 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 15962173 15964951 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15962173) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [15965129, 15965311, 15965489, 15965671, 15965827, 15966007, 15966187, 15966371, 15966539, 15966659, 15966823, 15967001, 15967183, 15967361, 15967541, 15967703]
theorem check21 : primorialChainCheck 4473 primorial4473 184 15964951 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 15964951 15967703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15964951) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [15967877, 15968059, 15968231, 15968413, 15968597, 15968779, 15968963, 15969091, 15969259, 15969439, 15969601, 15969769, 15969931, 15970111, 15970291, 15970457]
theorem check22 : primorialChainCheck 4473 primorial4473 184 15967703 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 15967703 15970457 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15967703) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [15970639, 15970813, 15970979, 15971129, 15971299, 15971471, 15971639, 15971819, 15971987, 15972157, 15972317, 15972497, 15972661, 15972841, 15973021, 15973169]
theorem check23 : primorialChainCheck 4473 primorial4473 184 15970457 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 15970457 15973169 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15970457) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [15973327, 15973499, 15973681, 15973849, 15974017, 15974201, 15974377, 15974561, 15974723, 15974897, 15975079, 15975263, 15975437, 15975613, 15975797, 15975931]
theorem check24 : primorialChainCheck 4473 primorial4473 184 15973169 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 15973169 15975931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15973169) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [15976097, 15976231, 15976391, 15976573, 15976721, 15976879, 15977063, 15977243, 15977393, 15977573, 15977737, 15977921, 15978097, 15978271, 15978433, 15978617]
theorem check25 : primorialChainCheck 4473 primorial4473 184 15975931 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 15975931 15978617 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15975931) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [15978779, 15978923, 15979097, 15979279, 15979451, 15979631, 15979811, 15979981, 15980149, 15980333, 15980473, 15980651, 15980819, 15980999, 15981181, 15981359]
theorem check26 : primorialChainCheck 4473 primorial4473 184 15978617 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 15978617 15981359 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15978617) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [15981541, 15981701, 15981883, 15982049, 15982229, 15982367, 15982537, 15982721, 15982903, 15983063, 15983239, 15983419, 15983549, 15983729, 15983911, 15984083]
theorem check27 : primorialChainCheck 4473 primorial4473 184 15981359 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 15981359 15984083 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15981359) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [15984239, 15984421, 15984593, 15984763, 15984937, 15985091, 15985267, 15985451, 15985633, 15985817, 15985979, 15986161, 15986339, 15986513, 15986693, 15986869]
theorem check28 : primorialChainCheck 4473 primorial4473 184 15984083 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 15984083 15986869 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15984083) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [15987043, 15987173, 15987343, 15987527, 15987677, 15987857, 15988003, 15988183, 15988363, 15988547, 15988727, 15988897, 15989021, 15989201, 15989341, 15989509]
theorem check29 : primorialChainCheck 4473 primorial4473 184 15986869 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 15986869 15989509 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15986869) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [15989693, 15989873, 15990053, 15990197, 15990361, 15990529, 15990701, 15990881, 15991037, 15991219, 15991403, 15991583, 15991751, 15991933, 15992117, 15992287]
theorem check30 : primorialChainCheck 4473 primorial4473 184 15989509 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 15989509 15992287 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15989509) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [15992467, 15992651, 15992827, 15993011, 15993191, 15993323, 15993499, 15993647, 15993827, 15994007, 15994189, 15994367, 15994549, 15994721, 15994883, 15995059]
theorem check31 : primorialChainCheck 4473 primorial4473 184 15992287 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 15992287 15995059 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15992287) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 15907571 15912913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15907571)
    (mid := 15910309) (hi := 15912913) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 15912913 15918223 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15912913)
    (mid := 15915491) (hi := 15918223) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 15918223 15923753 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15918223)
    (mid := 15920953) (hi := 15923753) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 15923753 15929191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15923753)
    (mid := 15926453) (hi := 15929191) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 15929191 15934663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15929191)
    (mid := 15931987) (hi := 15934663) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 15934663 15940109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15934663)
    (mid := 15937351) (hi := 15940109) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 15940109 15945619 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15940109)
    (mid := 15942907) (hi := 15945619) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 15945619 15951163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15945619)
    (mid := 15948379) (hi := 15951163) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 15951163 15956747 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15951163)
    (mid := 15953999) (hi := 15956747) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 15956747 15962173 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15956747)
    (mid := 15959473) (hi := 15962173) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 15962173 15967703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15962173)
    (mid := 15964951) (hi := 15967703) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 15967703 15973169 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15967703)
    (mid := 15970457) (hi := 15973169) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 15973169 15978617 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15973169)
    (mid := 15975931) (hi := 15978617) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 15978617 15984083 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15978617)
    (mid := 15981359) (hi := 15984083) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 15984083 15989509 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15984083)
    (mid := 15986869) (hi := 15989509) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 15989509 15995059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15989509)
    (mid := 15992287) (hi := 15995059) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 15907571 15918223 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15907571)
    (mid := 15912913) (hi := 15918223) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 15918223 15929191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15918223)
    (mid := 15923753) (hi := 15929191) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 15929191 15940109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15929191)
    (mid := 15934663) (hi := 15940109) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 15940109 15951163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15940109)
    (mid := 15945619) (hi := 15951163) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 15951163 15962173 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15951163)
    (mid := 15956747) (hi := 15962173) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 15962173 15973169 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15962173)
    (mid := 15967703) (hi := 15973169) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 15973169 15984083 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15973169)
    (mid := 15978617) (hi := 15984083) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 15984083 15995059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15984083)
    (mid := 15989509) (hi := 15995059) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 15907571 15929191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15907571)
    (mid := 15918223) (hi := 15929191) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 15929191 15951163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15929191)
    (mid := 15940109) (hi := 15951163) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 15951163 15973169 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15951163)
    (mid := 15962173) (hi := 15973169) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 15973169 15995059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15973169)
    (mid := 15984083) (hi := 15995059) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 15907571 15951163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15907571)
    (mid := 15929191) (hi := 15951163) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 15951163 15995059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15951163)
    (mid := 15973169) (hi := 15995059) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 15907571 15995059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15907571)
    (mid := 15951163) (hi := 15995059) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 15907571 15995059 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block181

#print axioms B699MiddleExtension.PrimorialBlocks.Block181.joined
