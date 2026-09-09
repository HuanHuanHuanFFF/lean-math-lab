import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block189

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [16605629, 16605803, 16605973, 16606153, 16606321, 16606493, 16606661, 16606831, 16606991, 16607167, 16607341, 16607509, 16607687, 16607869, 16608041, 16608211]
theorem check0 : primorialChainCheck 4473 primorial4473 184 16605467 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 16605467 16608211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16605467) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [16608377, 16608547, 16608727, 16608899, 16609069, 16609253, 16609429, 16609613, 16609793, 16609973, 16610149, 16610333, 16610509, 16610653, 16610827, 16611011]
theorem check1 : primorialChainCheck 4473 primorial4473 184 16608211 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 16608211 16611011 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16608211) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [16611181, 16611341, 16611523, 16611701, 16611851, 16612031, 16612171, 16612333, 16612513, 16612697, 16612879, 16613059, 16613243, 16613347, 16613501, 16613677]
theorem check2 : primorialChainCheck 4473 primorial4473 184 16611011 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 16611011 16613677 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16611011) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [16613837, 16614011, 16614181, 16614343, 16614527, 16614677, 16614859, 16615037, 16615217, 16615399, 16615567, 16615727, 16615897, 16616081, 16616251, 16616423]
theorem check3 : primorialChainCheck 4473 primorial4473 184 16613677 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 16613677 16616423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16613677) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [16616597, 16616759, 16616933, 16617113, 16617287, 16617463, 16617637, 16617787, 16617971, 16618111, 16618289, 16618463, 16618633, 16618813, 16618997, 16619177]
theorem check4 : primorialChainCheck 4473 primorial4473 184 16616423 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 16616423 16619177 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16616423) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [16619329, 16619507, 16619677, 16619857, 16620017, 16620173, 16620353, 16620529, 16620707, 16620847, 16621021, 16621193, 16621361, 16621543, 16621723, 16621897]
theorem check5 : primorialChainCheck 4473 primorial4473 184 16619177 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 16619177 16621897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16619177) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [16622071, 16622237, 16622407, 16622581, 16622747, 16622899, 16623077, 16623247, 16623419, 16623587, 16623751, 16623913, 16624093, 16624271, 16624451, 16624631]
theorem check6 : primorialChainCheck 4473 primorial4473 184 16621897 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 16621897 16624631 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16621897) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [16624807, 16624939, 16625071, 16625243, 16625419, 16625597, 16625773, 16625957, 16626107, 16626287, 16626469, 16626641, 16626823, 16626989, 16627153, 16627301]
theorem check7 : primorialChainCheck 4473 primorial4473 184 16624631 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 16624631 16627301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16624631) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [16627463, 16627607, 16627789, 16627973, 16628111, 16628263, 16628399, 16628581, 16628761, 16628893, 16629071, 16629251, 16629413, 16629593, 16629763, 16629947]
theorem check8 : primorialChainCheck 4473 primorial4473 184 16627301 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 16627301 16629947 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16627301) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [16630123, 16630307, 16630489, 16630657, 16630829, 16631011, 16631191, 16631311, 16631449, 16631621, 16631803, 16631977, 16632149, 16632331, 16632509, 16632667]
theorem check9 : primorialChainCheck 4473 primorial4473 184 16629947 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 16629947 16632667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16629947) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [16632827, 16632997, 16633181, 16633363, 16633543, 16633717, 16633901, 16634071, 16634237, 16634417, 16634581, 16634759, 16634939, 16635119, 16635293, 16635461]
theorem check10 : primorialChainCheck 4473 primorial4473 184 16632667 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 16632667 16635461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16632667) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [16635643, 16635823, 16636007, 16636187, 16636369, 16636519, 16636699, 16636883, 16637063, 16637221, 16637371, 16637549, 16637681, 16637857, 16638023, 16638203]
theorem check11 : primorialChainCheck 4473 primorial4473 184 16635461 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 16635461 16638203 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16635461) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [16638371, 16638553, 16638731, 16638883, 16639067, 16639247, 16639429, 16639607, 16639789, 16639969, 16640123, 16640249, 16640413, 16640593, 16640777, 16640951]
theorem check12 : primorialChainCheck 4473 primorial4473 184 16638203 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 16638203 16640951 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16638203) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [16641133, 16641307, 16641491, 16641649, 16641829, 16642013, 16642177, 16642361, 16642529, 16642709, 16642889, 16643023, 16643201, 16643383, 16643567, 16643729]
theorem check13 : primorialChainCheck 4473 primorial4473 184 16640951 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 16640951 16643729 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16640951) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [16643899, 16644083, 16644259, 16644443, 16644623, 16644769, 16644919, 16645087, 16645271, 16645427, 16645591, 16645751, 16645931, 16646099, 16646269, 16646453]
theorem check14 : primorialChainCheck 4473 primorial4473 184 16643729 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 16643729 16646453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16643729) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [16646573, 16646743, 16646923, 16647089, 16647251, 16647419, 16647593, 16647767, 16647949, 16648129, 16648283, 16648441, 16648613, 16648787, 16648949, 16649131]
theorem check15 : primorialChainCheck 4473 primorial4473 184 16646453 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 16646453 16649131 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16646453) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [16649293, 16649467, 16649651, 16649807, 16649989, 16650169, 16650349, 16650527, 16650691, 16650863, 16651021, 16651199, 16651357, 16651529, 16651697, 16651861]
theorem check16 : primorialChainCheck 4473 primorial4473 184 16649131 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 16649131 16651861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16649131) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [16652029, 16652203, 16652387, 16652563, 16652737, 16652869, 16653031, 16653211, 16653379, 16653551, 16653733, 16653893, 16654073, 16654249, 16654433, 16654601]
theorem check17 : primorialChainCheck 4473 primorial4473 184 16651861 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 16651861 16654601 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16651861) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [16654753, 16654867, 16655047, 16655159, 16655293, 16655477, 16655651, 16655827, 16655993, 16656173, 16656329, 16656463, 16656631, 16656799, 16656979, 16657163]
theorem check18 : primorialChainCheck 4473 primorial4473 184 16654601 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 16654601 16657163 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16654601) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [16657337, 16657517, 16657691, 16657871, 16658053, 16658221, 16658401, 16658561, 16658729, 16658909, 16659077, 16659259, 16659413, 16659581, 16659743, 16659919]
theorem check19 : primorialChainCheck 4473 primorial4473 184 16657163 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 16657163 16659919 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16657163) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [16660103, 16660277, 16660453, 16660621, 16660793, 16660961, 16661143, 16661321, 16661483, 16661629, 16661809, 16661987, 16662169, 16662343, 16662517, 16662697]
theorem check20 : primorialChainCheck 4473 primorial4473 184 16659919 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 16659919 16662697 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16659919) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [16662859, 16663037, 16663219, 16663397, 16663541, 16663697, 16663873, 16664057, 16664239, 16664411, 16664587, 16664761, 16664939, 16665043, 16665221, 16665403]
theorem check21 : primorialChainCheck 4473 primorial4473 184 16662697 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 16662697 16665403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16662697) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [16665581, 16665751, 16665911, 16666093, 16666267, 16666423, 16666607, 16666711, 16666891, 16667071, 16667173, 16667347, 16667527, 16667699, 16667879, 16668037]
theorem check22 : primorialChainCheck 4473 primorial4473 184 16665403 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 16665403 16668037 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16665403) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [16668209, 16668361, 16668541, 16668713, 16668887, 16669057, 16669223, 16669397, 16669567, 16669703, 16669883, 16670063, 16670243, 16670413, 16670597, 16670767]
theorem check23 : primorialChainCheck 4473 primorial4473 184 16668037 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 16668037 16670767 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16668037) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [16670939, 16671121, 16671301, 16671469, 16671653, 16671827, 16672009, 16672193, 16672349, 16672517, 16672693, 16672867, 16673011, 16673161, 16673339, 16673519]
theorem check24 : primorialChainCheck 4473 primorial4473 184 16670767 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 16670767 16673519 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16670767) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [16673681, 16673863, 16674041, 16674221, 16674389, 16674557, 16674727, 16674907, 16675091, 16675259, 16675433, 16675601, 16675751, 16675927, 16676087, 16676263]
theorem check25 : primorialChainCheck 4473 primorial4473 184 16673519 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 16673519 16676263 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16673519) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [16676447, 16676629, 16676809, 16676971, 16677131, 16677299, 16677481, 16677643, 16677811, 16677979, 16678163, 16678331, 16678483, 16678663, 16678817, 16678999]
theorem check26 : primorialChainCheck 4473 primorial4473 184 16676263 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 16676263 16678999 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16676263) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [16679177, 16679323, 16679503, 16679687, 16679869, 16680047, 16680227, 16680403, 16680583, 16680767, 16680943, 16681123, 16681307, 16681481, 16681661, 16681843]
theorem check27 : primorialChainCheck 4473 primorial4473 184 16678999 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 16678999 16681843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16678999) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [16682021, 16682201, 16682381, 16682543, 16682711, 16682891, 16683061, 16683229, 16683397, 16683571, 16683739, 16683893, 16684069, 16684211, 16684331, 16684513]
theorem check28 : primorialChainCheck 4473 primorial4473 184 16681843 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 16681843 16684513 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16681843) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [16684691, 16684853, 16685033, 16685197, 16685359, 16685521, 16685681, 16685861, 16685989, 16686169, 16686353, 16686517, 16686697, 16686869, 16687051, 16687211]
theorem check29 : primorialChainCheck 4473 primorial4473 184 16684513 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 16684513 16687211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16684513) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [16687381, 16687537, 16687721, 16687877, 16688059, 16688219, 16688389, 16688569, 16688741, 16688923, 16689107, 16689263, 16689443, 16689623, 16689791, 16689941]
theorem check30 : primorialChainCheck 4473 primorial4473 184 16687211 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 16687211 16689941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16687211) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [16690103, 16690279, 16690463, 16690633, 16690799, 16690963, 16691137, 16691321, 16691503, 16691687, 16691839, 16692019, 16692187, 16692359, 16692523, 16692707]
theorem check31 : primorialChainCheck 4473 primorial4473 184 16689941 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 16689941 16692707 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16689941) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 16605467 16611011 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16605467)
    (mid := 16608211) (hi := 16611011) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 16611011 16616423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16611011)
    (mid := 16613677) (hi := 16616423) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 16616423 16621897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16616423)
    (mid := 16619177) (hi := 16621897) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 16621897 16627301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16621897)
    (mid := 16624631) (hi := 16627301) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 16627301 16632667 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16627301)
    (mid := 16629947) (hi := 16632667) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 16632667 16638203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16632667)
    (mid := 16635461) (hi := 16638203) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 16638203 16643729 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16638203)
    (mid := 16640951) (hi := 16643729) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 16643729 16649131 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16643729)
    (mid := 16646453) (hi := 16649131) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 16649131 16654601 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16649131)
    (mid := 16651861) (hi := 16654601) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 16654601 16659919 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16654601)
    (mid := 16657163) (hi := 16659919) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 16659919 16665403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16659919)
    (mid := 16662697) (hi := 16665403) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 16665403 16670767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16665403)
    (mid := 16668037) (hi := 16670767) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 16670767 16676263 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16670767)
    (mid := 16673519) (hi := 16676263) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 16676263 16681843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16676263)
    (mid := 16678999) (hi := 16681843) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 16681843 16687211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16681843)
    (mid := 16684513) (hi := 16687211) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 16687211 16692707 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16687211)
    (mid := 16689941) (hi := 16692707) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 16605467 16616423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16605467)
    (mid := 16611011) (hi := 16616423) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 16616423 16627301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16616423)
    (mid := 16621897) (hi := 16627301) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 16627301 16638203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16627301)
    (mid := 16632667) (hi := 16638203) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 16638203 16649131 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16638203)
    (mid := 16643729) (hi := 16649131) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 16649131 16659919 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16649131)
    (mid := 16654601) (hi := 16659919) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 16659919 16670767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16659919)
    (mid := 16665403) (hi := 16670767) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 16670767 16681843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16670767)
    (mid := 16676263) (hi := 16681843) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 16681843 16692707 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16681843)
    (mid := 16687211) (hi := 16692707) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 16605467 16627301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16605467)
    (mid := 16616423) (hi := 16627301) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 16627301 16649131 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16627301)
    (mid := 16638203) (hi := 16649131) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 16649131 16670767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16649131)
    (mid := 16659919) (hi := 16670767) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 16670767 16692707 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16670767)
    (mid := 16681843) (hi := 16692707) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 16605467 16649131 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16605467)
    (mid := 16627301) (hi := 16649131) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 16649131 16692707 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16649131)
    (mid := 16670767) (hi := 16692707) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 16605467 16692707 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16605467)
    (mid := 16649131) (hi := 16692707) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 16605467 16692707 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block189

#print axioms B699MiddleExtension.PrimorialBlocks.Block189.joined
