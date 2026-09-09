import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block193

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [16954891, 16955063, 16955219, 16955399, 16955573, 16955699, 16955881, 16956059, 16956241, 16956421, 16956601, 16956781, 16956959, 16957133, 16957277, 16957441]
theorem check0 : primorialChainCheck 4473 primorial4473 184 16954759 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 16954759 16957441 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16954759) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [16957621, 16957783, 16957949, 16958101, 16958273, 16958453, 16958629, 16958803, 16958969, 16959127, 16959301, 16959469, 16959599, 16959779, 16959959, 16960129]
theorem check1 : primorialChainCheck 4473 primorial4473 184 16957441 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 16957441 16960129 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16957441) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [16960301, 16960481, 16960663, 16960847, 16961029, 16961209, 16961389, 16961569, 16961729, 16961891, 16962059, 16962227, 16962403, 16962581, 16962739, 16962919]
theorem check2 : primorialChainCheck 4473 primorial4473 184 16960129 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 16960129 16962919 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16960129) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [16963097, 16963273, 16963439, 16963607, 16963783, 16963967, 16964141, 16964303, 16964443, 16964627, 16964807, 16964989, 16965163, 16965307, 16965469, 16965623]
theorem check3 : primorialChainCheck 4473 primorial4473 184 16962919 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 16962919 16965623 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16962919) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [16965763, 16965931, 16966093, 16966273, 16966427, 16966603, 16966787, 16966927, 16967101, 16967263, 16967429, 16967603, 16967777, 16967959, 16968131, 16968247]
theorem check4 : primorialChainCheck 4473 primorial4473 184 16965623 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 16965623 16968247 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16965623) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [16968421, 16968599, 16968773, 16968953, 16969123, 16969301, 16969481, 16969663, 16969847, 16970027, 16970209, 16970357, 16970507, 16970689, 16970873, 16971037]
theorem check5 : primorialChainCheck 4473 primorial4473 184 16968247 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 16968247 16971037 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16968247) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [16971221, 16971403, 16971553, 16971733, 16971893, 16972051, 16972223, 16972391, 16972559, 16972741, 16972889, 16973069, 16973249, 16973431, 16973611, 16973767]
theorem check6 : primorialChainCheck 4473 primorial4473 184 16971037 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 16971037 16973767 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16971037) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [16973947, 16974131, 16974311, 16974487, 16974649, 16974829, 16975009, 16975183, 16975363, 16975523, 16975703, 16975867, 16976027, 16976207, 16976381, 16976551]
theorem check7 : primorialChainCheck 4473 primorial4473 184 16973767 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 16973767 16976551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16973767) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [16976731, 16976909, 16977083, 16977251, 16977421, 16977601, 16977769, 16977953, 16978123, 16978303, 16978487, 16978667, 16978849, 16979033, 16979213, 16979387]
theorem check8 : primorialChainCheck 4473 primorial4473 184 16976551 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 16976551 16979387 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16976551) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [16979569, 16979713, 16979887, 16980037, 16980209, 16980391, 16980559, 16980709, 16980871, 16981049, 16981207, 16981387, 16981553, 16981703, 16981871, 16982041]
theorem check9 : primorialChainCheck 4473 primorial4473 184 16979387 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 16979387 16982041 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16979387) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [16982213, 16982387, 16982509, 16982683, 16982863, 16983047, 16983229, 16983367, 16983541, 16983721, 16983893, 16984049, 16984223, 16984381, 16984523, 16984687]
theorem check10 : primorialChainCheck 4473 primorial4473 184 16982041 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 16982041 16984687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16982041) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [16984831, 16985011, 16985191, 16985327, 16985497, 16985663, 16985831, 16985993, 16986173, 16986353, 16986527, 16986709, 16986889, 16987067, 16987249, 16987423]
theorem check11 : primorialChainCheck 4473 primorial4473 184 16984687 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 16984687 16987423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16984687) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [16987601, 16987781, 16987963, 16988141, 16988303, 16988399, 16988581, 16988753, 16988929, 16989113, 16989283, 16989461, 16989631, 16989799, 16989967, 16990151]
theorem check12 : primorialChainCheck 4473 primorial4473 184 16987423 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 16987423 16990151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16987423) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [16990333, 16990517, 16990691, 16990873, 16991057, 16991237, 16991389, 16991561, 16991743, 16991927, 16992103, 16992281, 16992431, 16992559, 16992739, 16992919]
theorem check13 : primorialChainCheck 4473 primorial4473 184 16990151 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 16990151 16992919 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16990151) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [16993103, 16993283, 16993463, 16993607, 16993789, 16993969, 16994147, 16994317, 16994501, 16994671, 16994843, 16994981, 16995119, 16995299, 16995463, 16995647]
theorem check14 : primorialChainCheck 4473 primorial4473 184 16992919 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 16992919 16995647 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16992919) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [16995817, 16995989, 16996169, 16996337, 16996501, 16996667, 16996831, 16997011, 16997143, 16997327, 16997507, 16997677, 16997861, 16998041, 16998211, 16998391]
theorem check15 : primorialChainCheck 4473 primorial4473 184 16995647 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 16995647 16998391 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16995647) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [16998563, 16998739, 16998923, 16999049, 16999219, 16999399, 16999579, 16999757, 16999903, 17000077, 17000239, 17000413, 17000597, 17000779, 17000959, 17001137]
theorem check16 : primorialChainCheck 4473 primorial4473 184 16998391 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 16998391 17001137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16998391) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [17001319, 17001503, 17001679, 17001863, 17002039, 17002217, 17002393, 17002571, 17002747, 17002919, 17003101, 17003243, 17003419, 17003573, 17003713, 17003897]
theorem check17 : primorialChainCheck 4473 primorial4473 184 17001137 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 17001137 17003897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17001137) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [17004077, 17004241, 17004413, 17004587, 17004739, 17004901, 17005063, 17005243, 17005409, 17005591, 17005759, 17005909, 17006089, 17006263, 17006411, 17006593]
theorem check18 : primorialChainCheck 4473 primorial4473 184 17003897 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 17003897 17006593 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17003897) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [17006771, 17006947, 17007121, 17007283, 17007461, 17007637, 17007821, 17007997, 17008171, 17008351, 17008531, 17008681, 17008861, 17009039, 17009221, 17009371]
theorem check19 : primorialChainCheck 4473 primorial4473 184 17006593 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 17006593 17009371 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17006593) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [17009549, 17009717, 17009831, 17010001, 17010181, 17010361, 17010541, 17010709, 17010893, 17011069, 17011249, 17011381, 17011471, 17011649, 17011831, 17011999]
theorem check20 : primorialChainCheck 4473 primorial4473 184 17009371 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 17009371 17011999 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17009371) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [17012159, 17012323, 17012503, 17012687, 17012857, 17013041, 17013221, 17013391, 17013523, 17013679, 17013851, 17014001, 17014169, 17014351, 17014531, 17014703]
theorem check21 : primorialChainCheck 4473 primorial4473 184 17011999 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 17011999 17014703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17011999) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [17014883, 17015029, 17015191, 17015359, 17015543, 17015723, 17015903, 17016071, 17016239, 17016421, 17016589, 17016767, 17016919, 17017093, 17017277, 17017457]
theorem check22 : primorialChainCheck 4473 primorial4473 184 17014703 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 17014703 17017457 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17014703) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [17017613, 17017789, 17017879, 17018047, 17018219, 17018401, 17018549, 17018723, 17018893, 17019073, 17019257, 17019419, 17019599, 17019757, 17019929, 17020109]
theorem check23 : primorialChainCheck 4473 primorial4473 184 17017457 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 17017457 17020109 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17017457) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [17020291, 17020433, 17020589, 17020771, 17020937, 17021119, 17021299, 17021479, 17021651, 17021831, 17021993, 17022163, 17022329, 17022469, 17022653, 17022781]
theorem check24 : primorialChainCheck 4473 primorial4473 184 17020109 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 17020109 17022781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17020109) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [17022961, 17023129, 17023291, 17023471, 17023649, 17023793, 17023973, 17024129, 17024311, 17024473, 17024647, 17024789, 17024971, 17025131, 17025301, 17025467]
theorem check25 : primorialChainCheck 4473 primorial4473 184 17022781 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 17022781 17025467 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17022781) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [17025641, 17025791, 17025941, 17026123, 17026291, 17026459, 17026637, 17026813, 17026963, 17027123, 17027303, 17027473, 17027657, 17027837, 17028013, 17028181]
theorem check26 : primorialChainCheck 4473 primorial4473 184 17025467 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 17025467 17028181 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17025467) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [17028359, 17028497, 17028659, 17028841, 17029021, 17029169, 17029297, 17029469, 17029627, 17029807, 17029981, 17030161, 17030341, 17030509, 17030683, 17030863]
theorem check27 : primorialChainCheck 4473 primorial4473 184 17028181 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 17028181 17030863 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17028181) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [17031041, 17031193, 17031361, 17031541, 17031659, 17031823, 17031997, 17032159, 17032331, 17032511, 17032693, 17032867, 17033047, 17033231, 17033413, 17033581]
theorem check28 : primorialChainCheck 4473 primorial4473 184 17030863 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 17030863 17033581 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17030863) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [17033749, 17033927, 17034103, 17034271, 17034439, 17034613, 17034781, 17034949, 17035127, 17035307, 17035489, 17035661, 17035841, 17036017, 17036177, 17036347]
theorem check29 : primorialChainCheck 4473 primorial4473 184 17033581 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 17033581 17036347 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17033581) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [17036519, 17036699, 17036881, 17037049, 17037217, 17037401, 17037577, 17037743, 17037913, 17038081, 17038261, 17038429, 17038613, 17038751, 17038927, 17039107]
theorem check30 : primorialChainCheck 4473 primorial4473 184 17036347 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 17036347 17039107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17036347) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [17039263, 17039419, 17039591, 17039767, 17039951, 17040113, 17040293, 17040469, 17040581, 17040703, 17040887, 17041061, 17041237, 17041421, 17041601, 17041757]
theorem check31 : primorialChainCheck 4473 primorial4473 184 17039107 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 17039107 17041757 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17039107) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 16954759 16960129 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16954759)
    (mid := 16957441) (hi := 16960129) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 16960129 16965623 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16960129)
    (mid := 16962919) (hi := 16965623) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 16965623 16971037 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16965623)
    (mid := 16968247) (hi := 16971037) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 16971037 16976551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16971037)
    (mid := 16973767) (hi := 16976551) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 16976551 16982041 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16976551)
    (mid := 16979387) (hi := 16982041) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 16982041 16987423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16982041)
    (mid := 16984687) (hi := 16987423) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 16987423 16992919 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16987423)
    (mid := 16990151) (hi := 16992919) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 16992919 16998391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16992919)
    (mid := 16995647) (hi := 16998391) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 16998391 17003897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16998391)
    (mid := 17001137) (hi := 17003897) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 17003897 17009371 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17003897)
    (mid := 17006593) (hi := 17009371) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 17009371 17014703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17009371)
    (mid := 17011999) (hi := 17014703) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 17014703 17020109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17014703)
    (mid := 17017457) (hi := 17020109) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 17020109 17025467 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17020109)
    (mid := 17022781) (hi := 17025467) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 17025467 17030863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17025467)
    (mid := 17028181) (hi := 17030863) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 17030863 17036347 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17030863)
    (mid := 17033581) (hi := 17036347) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 17036347 17041757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17036347)
    (mid := 17039107) (hi := 17041757) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 16954759 16965623 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16954759)
    (mid := 16960129) (hi := 16965623) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 16965623 16976551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16965623)
    (mid := 16971037) (hi := 16976551) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 16976551 16987423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16976551)
    (mid := 16982041) (hi := 16987423) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 16987423 16998391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16987423)
    (mid := 16992919) (hi := 16998391) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 16998391 17009371 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16998391)
    (mid := 17003897) (hi := 17009371) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 17009371 17020109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17009371)
    (mid := 17014703) (hi := 17020109) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 17020109 17030863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17020109)
    (mid := 17025467) (hi := 17030863) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 17030863 17041757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17030863)
    (mid := 17036347) (hi := 17041757) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 16954759 16976551 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16954759)
    (mid := 16965623) (hi := 16976551) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 16976551 16998391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16976551)
    (mid := 16987423) (hi := 16998391) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 16998391 17020109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16998391)
    (mid := 17009371) (hi := 17020109) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 17020109 17041757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17020109)
    (mid := 17030863) (hi := 17041757) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 16954759 16998391 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16954759)
    (mid := 16976551) (hi := 16998391) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 16998391 17041757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16998391)
    (mid := 17020109) (hi := 17041757) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 16954759 17041757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16954759)
    (mid := 16998391) (hi := 17041757) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 16954759 17041757 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block193

#print axioms B699MiddleExtension.PrimorialBlocks.Block193.joined
