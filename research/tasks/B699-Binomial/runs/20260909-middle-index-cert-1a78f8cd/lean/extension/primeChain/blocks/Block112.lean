import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block112

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [9868421, 9868597, 9868777, 9868951, 9869117, 9869267, 9869449, 9869633, 9869801, 9869969, 9870143, 9870323, 9870503, 9870683, 9870859, 9871039]
theorem check0 : primorialChainCheck 4473 primorial4473 184 9868237 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 9868237 9871039 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9868237) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [9871219, 9871403, 9871573, 9871753, 9871931, 9872113, 9872281, 9872449, 9872623, 9872791, 9872939, 9873121, 9873299, 9873467, 9873649, 9873817]
theorem check1 : primorialChainCheck 4473 primorial4473 184 9871039 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 9871039 9873817 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9871039) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [9873979, 9874157, 9874339, 9874517, 9874693, 9874853, 9875023, 9875171, 9875347, 9875519, 9875699, 9875821, 9875981, 9876161, 9876341, 9876511]
theorem check2 : primorialChainCheck 4473 primorial4473 184 9873817 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 9873817 9876511 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9873817) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [9876673, 9876857, 9877033, 9877213, 9877393, 9877577, 9877753, 9877937, 9878117, 9878291, 9878471, 9878611, 9878773, 9878929, 9879101, 9879283]
theorem check3 : primorialChainCheck 4473 primorial4473 184 9876511 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 9876511 9879283 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9876511) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [9879439, 9879599, 9879781, 9879959, 9880127, 9880307, 9880489, 9880667, 9880837, 9881009, 9881171, 9881321, 9881503, 9881687, 9881869, 9882029]
theorem check4 : primorialChainCheck 4473 primorial4473 184 9879283 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 9879283 9882029 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9879283) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [9882181, 9882343, 9882511, 9882683, 9882863, 9883007, 9883189, 9883351, 9883499, 9883673, 9883849, 9884033, 9884209, 9884383, 9884561, 9884741]
theorem check5 : primorialChainCheck 4473 primorial4473 184 9882029 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 9882029 9884741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9882029) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [9884923, 9885103, 9885287, 9885443, 9885611, 9885773, 9885913, 9886091, 9886271, 9886451, 9886633, 9886817, 9886997, 9887179, 9887363, 9887509]
theorem check6 : primorialChainCheck 4473 primorial4473 184 9884741 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 9884741 9887509 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9884741) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [9887687, 9887851, 9888031, 9888209, 9888353, 9888533, 9888661, 9888841, 9889013, 9889193, 9889357, 9889541, 9889723, 9889889, 9890057, 9890239]
theorem check7 : primorialChainCheck 4473 primorial4473 184 9887509 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 9887509 9890239 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9887509) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [9890423, 9890603, 9890761, 9890941, 9891121, 9891293, 9891473, 9891653, 9891823, 9891997, 9892159, 9892343, 9892523, 9892703, 9892879, 9893057]
theorem check8 : primorialChainCheck 4473 primorial4473 184 9890239 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 9890239 9893057 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9890239) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [9893239, 9893419, 9893573, 9893753, 9893899, 9894083, 9894259, 9894427, 9894607, 9894791, 9894971, 9895141, 9895321, 9895493, 9895667, 9895829]
theorem check9 : primorialChainCheck 4473 primorial4473 184 9893057 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 9893057 9895829 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9893057) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [9895993, 9896171, 9896351, 9896527, 9896699, 9896881, 9897059, 9897227, 9897397, 9897581, 9897761, 9897941, 9898123, 9898307, 9898481, 9898649]
theorem check10 : primorialChainCheck 4473 primorial4473 184 9895829 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 9895829 9898649 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9895829) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [9898807, 9898979, 9899147, 9899303, 9899467, 9899651, 9899833, 9899999, 9900181, 9900343, 9900509, 9900689, 9900859, 9901037, 9901219, 9901403]
theorem check11 : primorialChainCheck 4473 primorial4473 184 9898649 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 9898649 9901403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9898649) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [9901571, 9901751, 9901901, 9902047, 9902219, 9902359, 9902539, 9902723, 9902897, 9903077, 9903259, 9903431, 9903589, 9903767, 9903947, 9904117]
theorem check12 : primorialChainCheck 4473 primorial4473 184 9901403 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 9901403 9904117 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9901403) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [9904291, 9904471, 9904649, 9904823, 9905003, 9905183, 9905293, 9905473, 9905657, 9905839, 9906007, 9906187, 9906367, 9906527, 9906703, 9906877]
theorem check13 : primorialChainCheck 4473 primorial4473 184 9904117 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 9904117 9906877 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9904117) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [9907057, 9907229, 9907367, 9907529, 9907699, 9907867, 9908051, 9908231, 9908411, 9908551, 9908729, 9908911, 9909091, 9909253, 9909437, 9909611]
theorem check14 : primorialChainCheck 4473 primorial4473 184 9906877 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 9906877 9909611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9906877) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [9909791, 9909961, 9910129, 9910301, 9910469, 9910627, 9910811, 9910993, 9911173, 9911353, 9911519, 9911701, 9911861, 9912043, 9912211, 9912391]
theorem check15 : primorialChainCheck 4473 primorial4473 184 9909611 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 9909611 9912391 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9909611) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [9912557, 9912719, 9912899, 9913081, 9913219, 9913403, 9913571, 9913753, 9913933, 9914117, 9914297, 9914479, 9914659, 9914843, 9914987, 9915161]
theorem check16 : primorialChainCheck 4473 primorial4473 184 9912391 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 9912391 9915161 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9912391) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [9915343, 9915509, 9915683, 9915859, 9916031, 9916211, 9916391, 9916573, 9916741, 9916903, 9917087, 9917267, 9917447, 9917627, 9917779, 9917939]
theorem check17 : primorialChainCheck 4473 primorial4473 184 9915161 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 9915161 9917939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9915161) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [9918121, 9918289, 9918421, 9918593, 9918763, 9918941, 9919097, 9919277, 9919447, 9919607, 9919727, 9919883, 9920047, 9920219, 9920399, 9920579]
theorem check18 : primorialChainCheck 4473 primorial4473 184 9917939 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 9917939 9920579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9917939) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [9920749, 9920923, 9921053, 9921227, 9921409, 9921577, 9921733, 9921917, 9922063, 9922247, 9922403, 9922571, 9922741, 9922909, 9923083, 9923261]
theorem check19 : primorialChainCheck 4473 primorial4473 184 9920579 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 9920579 9923261 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9920579) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [9923429, 9923611, 9923791, 9923941, 9924121, 9924287, 9924469, 9924653, 9924823, 9924997, 9925171, 9925309, 9925471, 9925633, 9925793, 9925973]
theorem check20 : primorialChainCheck 4473 primorial4473 184 9923261 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 9923261 9925973 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9923261) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [9926143, 9926311, 9926491, 9926669, 9926837, 9927017, 9927179, 9927361, 9927521, 9927703, 9927833, 9928007, 9928169, 9928351, 9928487, 9928669]
theorem check21 : primorialChainCheck 4473 primorial4473 184 9925973 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 9925973 9928669 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9925973) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [9928843, 9929009, 9929189, 9929371, 9929551, 9929729, 9929903, 9930083, 9930247, 9930419, 9930589, 9930773, 9930953, 9931123, 9931301, 9931463]
theorem check22 : primorialChainCheck 4473 primorial4473 184 9928669 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 9928669 9931463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9928669) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [9931639, 9931807, 9931951, 9932129, 9932309, 9932491, 9932669, 9932851, 9933019, 9933199, 9933377, 9933551, 9933727, 9933887, 9934063, 9934237]
theorem check23 : primorialChainCheck 4473 primorial4473 184 9931463 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 9931463 9934237 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9931463) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [9934411, 9934583, 9934741, 9934901, 9935077, 9935257, 9935437, 9935621, 9935801, 9935969, 9936133, 9936293, 9936467, 9936649, 9936803, 9936977]
theorem check24 : primorialChainCheck 4473 primorial4473 184 9934237 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 9934237 9936977 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9934237) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [9937141, 9937321, 9937493, 9937663, 9937831, 9937997, 9938179, 9938347, 9938531, 9938701, 9938869, 9939053, 9939229, 9939403, 9939583, 9939763]
theorem check25 : primorialChainCheck 4473 primorial4473 184 9936977 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 9936977 9939763 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9936977) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [9939947, 9940129, 9940313, 9940471, 9940643, 9940813, 9940963, 9941143, 9941317, 9941479, 9941653, 9941779, 9941951, 9942133, 9942311, 9942481]
theorem check26 : primorialChainCheck 4473 primorial4473 184 9939763 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 9939763 9942481 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9939763) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [9942659, 9942797, 9942941, 9943123, 9943303, 9943481, 9943663, 9943819, 9943993, 9944177, 9944357, 9944531, 9944689, 9944849, 9944953, 9945137]
theorem check27 : primorialChainCheck 4473 primorial4473 184 9942481 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 9942481 9945137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9942481) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [9945317, 9945461, 9945631, 9945781, 9945961, 9946109, 9946273, 9946441, 9946609, 9946789, 9946973, 9947153, 9947323, 9947501, 9947671, 9947851]
theorem check28 : primorialChainCheck 4473 primorial4473 184 9945137 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 9945137 9947851 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9945137) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [9948013, 9948173, 9948347, 9948517, 9948677, 9948847, 9949021, 9949169, 9949321, 9949487, 9949663, 9949831, 9949967, 9950147, 9950327, 9950489]
theorem check29 : primorialChainCheck 4473 primorial4473 184 9947851 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 9947851 9950489 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9947851) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [9950657, 9950833, 9951013, 9951191, 9951371, 9951547, 9951731, 9951913, 9952093, 9952277, 9952441, 9952589, 9952757, 9952931, 9953113, 9953291]
theorem check30 : primorialChainCheck 4473 primorial4473 184 9950489 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 9950489 9953291 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9950489) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [9953429, 9953579, 9953753, 9953927, 9954097, 9954281, 9954463, 9954617, 9954787, 9954949, 9955093, 9955277, 9955459, 9955643, 9955823, 9956003]
theorem check31 : primorialChainCheck 4473 primorial4473 184 9953291 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 9953291 9956003 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9953291) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 9868237 9873817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9868237)
    (mid := 9871039) (hi := 9873817) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 9873817 9879283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9873817)
    (mid := 9876511) (hi := 9879283) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 9879283 9884741 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9879283)
    (mid := 9882029) (hi := 9884741) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 9884741 9890239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9884741)
    (mid := 9887509) (hi := 9890239) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 9890239 9895829 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9890239)
    (mid := 9893057) (hi := 9895829) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 9895829 9901403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9895829)
    (mid := 9898649) (hi := 9901403) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 9901403 9906877 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9901403)
    (mid := 9904117) (hi := 9906877) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 9906877 9912391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9906877)
    (mid := 9909611) (hi := 9912391) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 9912391 9917939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9912391)
    (mid := 9915161) (hi := 9917939) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 9917939 9923261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9917939)
    (mid := 9920579) (hi := 9923261) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 9923261 9928669 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9923261)
    (mid := 9925973) (hi := 9928669) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 9928669 9934237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9928669)
    (mid := 9931463) (hi := 9934237) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 9934237 9939763 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9934237)
    (mid := 9936977) (hi := 9939763) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 9939763 9945137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9939763)
    (mid := 9942481) (hi := 9945137) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 9945137 9950489 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9945137)
    (mid := 9947851) (hi := 9950489) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 9950489 9956003 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9950489)
    (mid := 9953291) (hi := 9956003) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 9868237 9879283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9868237)
    (mid := 9873817) (hi := 9879283) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 9879283 9890239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9879283)
    (mid := 9884741) (hi := 9890239) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 9890239 9901403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9890239)
    (mid := 9895829) (hi := 9901403) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 9901403 9912391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9901403)
    (mid := 9906877) (hi := 9912391) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 9912391 9923261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9912391)
    (mid := 9917939) (hi := 9923261) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 9923261 9934237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9923261)
    (mid := 9928669) (hi := 9934237) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 9934237 9945137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9934237)
    (mid := 9939763) (hi := 9945137) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 9945137 9956003 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9945137)
    (mid := 9950489) (hi := 9956003) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 9868237 9890239 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9868237)
    (mid := 9879283) (hi := 9890239) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 9890239 9912391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9890239)
    (mid := 9901403) (hi := 9912391) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 9912391 9934237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9912391)
    (mid := 9923261) (hi := 9934237) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 9934237 9956003 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9934237)
    (mid := 9945137) (hi := 9956003) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 9868237 9912391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9868237)
    (mid := 9890239) (hi := 9912391) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 9912391 9956003 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9912391)
    (mid := 9934237) (hi := 9956003) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 9868237 9956003 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9868237)
    (mid := 9912391) (hi := 9956003) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 9868237 9956003 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block112

#print axioms B699MiddleExtension.PrimorialBlocks.Block112.joined
