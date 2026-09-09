import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block074

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [6536617, 6536801, 6536947, 6537131, 6537301, 6537457, 6537611, 6537787, 6537959, 6538139, 6538313, 6538487, 6538669, 6538853, 6539023, 6539201]
theorem check0 : primorialChainCheck 4473 primorial4473 184 6536441 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 6536441 6539201 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6536441) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [6539371, 6539551, 6539719, 6539893, 6540067, 6540251, 6540433, 6540593, 6540739, 6540913, 6541097, 6541261, 6541441, 6541621, 6541771, 6541939]
theorem check1 : primorialChainCheck 4473 primorial4473 184 6539201 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 6539201 6541939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6539201) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [6542119, 6542299, 6542461, 6542633, 6542803, 6542959, 6543127, 6543307, 6543479, 6543659, 6543833, 6544009, 6544177, 6544357, 6544487, 6544667]
theorem check2 : primorialChainCheck 4473 primorial4473 184 6541939 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 6541939 6544667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6541939) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [6544849, 6545027, 6545197, 6545381, 6545563, 6545741, 6545923, 6546107, 6546289, 6546473, 6546647, 6546829, 6547007, 6547183, 6547351, 6547529]
theorem check3 : primorialChainCheck 4473 primorial4473 184 6544667 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 6544667 6547529 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6544667) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [6547693, 6547867, 6548051, 6548207, 6548359, 6548539, 6548701, 6548881, 6549061, 6549241, 6549391, 6549551, 6549727, 6549901, 6550081, 6550261]
theorem check4 : primorialChainCheck 4473 primorial4473 184 6547529 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 6547529 6550261 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6547529) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [6550417, 6550553, 6550679, 6550847, 6551011, 6551191, 6551353, 6551533, 6551693, 6551861, 6552011, 6552187, 6552353, 6552529, 6552697, 6552863]
theorem check5 : primorialChainCheck 4473 primorial4473 184 6550261 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 6550261 6552863 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6550261) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [6553039, 6553219, 6553387, 6553571, 6553733, 6553909, 6554083, 6554243, 6554419, 6554599, 6554777, 6554941, 6555119, 6555301, 6555463, 6555611]
theorem check6 : primorialChainCheck 4473 primorial4473 184 6552863 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 6552863 6555611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6552863) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [6555781, 6555961, 6556111, 6556267, 6556439, 6556621, 6556799, 6556973, 6557153, 6557333, 6557513, 6557693, 6557867, 6558037, 6558217, 6558389]
theorem check7 : primorialChainCheck 4473 primorial4473 184 6555611 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 6555611 6558389 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6555611) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [6558547, 6558707, 6558883, 6559067, 6559219, 6559381, 6559547, 6559727, 6559907, 6560069, 6560243, 6560417, 6560599, 6560783, 6560959, 6561143]
theorem check8 : primorialChainCheck 4473 primorial4473 184 6558389 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 6558389 6561143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6558389) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [6561319, 6561497, 6561679, 6561857, 6562037, 6562211, 6562373, 6562553, 6562723, 6562861, 6563021, 6563203, 6563383, 6563561, 6563743, 6563867]
theorem check9 : primorialChainCheck 4473 primorial4473 184 6561143 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 6561143 6563867 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6561143) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [6564043, 6564211, 6564359, 6564539, 6564707, 6564847, 6565019, 6565193, 6565367, 6565543, 6565721, 6565903, 6566083, 6566251, 6566407, 6566591]
theorem check10 : primorialChainCheck 4473 primorial4473 184 6563867 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 6563867 6566591 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6563867) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [6566773, 6566957, 6567131, 6567307, 6567479, 6567653, 6567817, 6567971, 6568153, 6568279, 6568459, 6568643, 6568811, 6568973, 6569137, 6569291]
theorem check11 : primorialChainCheck 4473 primorial4473 184 6566591 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 6566591 6569291 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6566591) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [6569449, 6569627, 6569809, 6569993, 6570169, 6570337, 6570521, 6570703, 6570881, 6571057, 6571223, 6571393, 6571573, 6571729, 6571889, 6572039]
theorem check12 : primorialChainCheck 4473 primorial4473 184 6569291 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 6569291 6572039 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6569291) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [6572197, 6572381, 6572543, 6572723, 6572887, 6573071, 6573233, 6573409, 6573583, 6573737, 6573913, 6574093, 6574273, 6574457, 6574639, 6574787]
theorem check13 : primorialChainCheck 4473 primorial4473 184 6572039 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 6572039 6574787 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6572039) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [6574963, 6575147, 6575321, 6575497, 6575671, 6575851, 6576023, 6576203, 6576347, 6576529, 6576709, 6576883, 6577061, 6577217, 6577399, 6577583]
theorem check14 : primorialChainCheck 4473 primorial4473 184 6574787 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 6574787 6577583 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6574787) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [6577763, 6577943, 6578111, 6578291, 6578461, 6578639, 6578821, 6578987, 6579163, 6579341, 6579487, 6579667, 6579851, 6580031, 6580193, 6580373]
theorem check15 : primorialChainCheck 4473 primorial4473 184 6577583 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 6577583 6580373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6577583) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [6580543, 6580727, 6580901, 6581077, 6581251, 6581423, 6581599, 6581779, 6581963, 6582143, 6582313, 6582497, 6582677, 6582857, 6583021, 6583201]
theorem check16 : primorialChainCheck 4473 primorial4473 184 6580373 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 6580373 6583201 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6580373) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [6583363, 6583537, 6583721, 6583897, 6584063, 6584213, 6584377, 6584549, 6584717, 6584867, 6585031, 6585211, 6585373, 6585539, 6585721, 6585881]
theorem check17 : primorialChainCheck 4473 primorial4473 184 6583201 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 6583201 6585881 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6583201) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [6586051, 6586213, 6586387, 6586561, 6586739, 6586919, 6587069, 6587233, 6587417, 6587599, 6587783, 6587963, 6588139, 6588313, 6588487, 6588653]
theorem check18 : primorialChainCheck 4473 primorial4473 184 6585881 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 6585881 6588653 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6585881) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [6588817, 6588983, 6589147, 6589327, 6589511, 6589669, 6589841, 6589997, 6590161, 6590341, 6590483, 6590651, 6590833, 6590993, 6591163, 6591329]
theorem check19 : primorialChainCheck 4473 primorial4473 184 6588653 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 6588653 6591329 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6588653) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [6591509, 6591679, 6591863, 6592043, 6592219, 6592403, 6592571, 6592741, 6592903, 6593039, 6593219, 6593401, 6593563, 6593747, 6593929, 6594109]
theorem check20 : primorialChainCheck 4473 primorial4473 184 6591329 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 6591329 6594109 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6591329) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [6594271, 6594451, 6594619, 6594799, 6594943, 6595123, 6595289, 6595453, 6595627, 6595781, 6595961, 6596143, 6596321, 6596503, 6596647, 6596809]
theorem check21 : primorialChainCheck 4473 primorial4473 184 6594109 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 6594109 6596809 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6594109) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [6596987, 6597167, 6597347, 6597517, 6597677, 6597859, 6598021, 6598201, 6598357, 6598541, 6598721, 6598903, 6599071, 6599231, 6599399, 6599573]
theorem check22 : primorialChainCheck 4473 primorial4473 184 6596809 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 6596809 6599573 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6596809) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [6599753, 6599921, 6600101, 6600281, 6600449, 6600623, 6600791, 6600953, 6601129, 6601313, 6601459, 6601643, 6601817, 6601999, 6602161, 6602327]
theorem check23 : primorialChainCheck 4473 primorial4473 184 6599573 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 6599573 6602327 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6599573) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [6602509, 6602689, 6602839, 6603017, 6603169, 6603349, 6603529, 6603703, 6603869, 6604049, 6604231, 6604399, 6604583, 6604753, 6604903, 6605041]
theorem check24 : primorialChainCheck 4473 primorial4473 184 6602327 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 6602327 6605041 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6602327) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [6605219, 6605399, 6605579, 6605747, 6605917, 6606101, 6606283, 6606463, 6606647, 6606827, 6607009, 6607177, 6607361, 6607537, 6607721, 6607903]
theorem check25 : primorialChainCheck 4473 primorial4473 184 6605041 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 6605041 6607903 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6605041) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [6608083, 6608263, 6608431, 6608603, 6608783, 6608957, 6609139, 6609313, 6609467, 6609649, 6609833, 6609989, 6610169, 6610343, 6610517, 6610699]
theorem check26 : primorialChainCheck 4473 primorial4473 184 6607903 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 6607903 6610699 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6607903) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [6610883, 6611057, 6611237, 6611417, 6611597, 6611777, 6611951, 6612127, 6612311, 6612491, 6612673, 6612857, 6613039, 6613223, 6613361, 6613543]
theorem check27 : primorialChainCheck 4473 primorial4473 184 6610699 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 6610699 6613543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6610699) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [6613631, 6613807, 6613987, 6614159, 6614341, 6614507, 6614677, 6614833, 6615013, 6615181, 6615361, 6615541, 6615677, 6615853, 6616033, 6616217]
theorem check28 : primorialChainCheck 4473 primorial4473 184 6613543 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 6613543 6616217 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6613543) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [6616399, 6616583, 6616763, 6616931, 6617087, 6617257, 6617431, 6617603, 6617761, 6617939, 6618113, 6618281, 6618463, 6618617, 6618769, 6618949]
theorem check29 : primorialChainCheck 4473 primorial4473 184 6616217 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 6616217 6618949 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6616217) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [6619111, 6619289, 6619471, 6619651, 6619829, 6620011, 6620183, 6620363, 6620519, 6620699, 6620869, 6621029, 6621191, 6621371, 6621553, 6621731]
theorem check30 : primorialChainCheck 4473 primorial4473 184 6618949 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 6618949 6621731 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6618949) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [6621911, 6622081, 6622211, 6622391, 6622547, 6622729, 6622907, 6623087, 6623261, 6623423, 6623581, 6623759, 6623927, 6624077, 6624259, 6624439]
theorem check31 : primorialChainCheck 4473 primorial4473 184 6621731 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 6621731 6624439 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6621731) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 6536441 6541939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6536441)
    (mid := 6539201) (hi := 6541939) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 6541939 6547529 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6541939)
    (mid := 6544667) (hi := 6547529) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 6547529 6552863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6547529)
    (mid := 6550261) (hi := 6552863) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 6552863 6558389 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6552863)
    (mid := 6555611) (hi := 6558389) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 6558389 6563867 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6558389)
    (mid := 6561143) (hi := 6563867) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 6563867 6569291 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6563867)
    (mid := 6566591) (hi := 6569291) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 6569291 6574787 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6569291)
    (mid := 6572039) (hi := 6574787) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 6574787 6580373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6574787)
    (mid := 6577583) (hi := 6580373) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 6580373 6585881 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6580373)
    (mid := 6583201) (hi := 6585881) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 6585881 6591329 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6585881)
    (mid := 6588653) (hi := 6591329) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 6591329 6596809 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6591329)
    (mid := 6594109) (hi := 6596809) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 6596809 6602327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6596809)
    (mid := 6599573) (hi := 6602327) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 6602327 6607903 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6602327)
    (mid := 6605041) (hi := 6607903) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 6607903 6613543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6607903)
    (mid := 6610699) (hi := 6613543) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 6613543 6618949 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6613543)
    (mid := 6616217) (hi := 6618949) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 6618949 6624439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6618949)
    (mid := 6621731) (hi := 6624439) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 6536441 6547529 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6536441)
    (mid := 6541939) (hi := 6547529) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 6547529 6558389 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6547529)
    (mid := 6552863) (hi := 6558389) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 6558389 6569291 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6558389)
    (mid := 6563867) (hi := 6569291) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 6569291 6580373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6569291)
    (mid := 6574787) (hi := 6580373) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 6580373 6591329 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6580373)
    (mid := 6585881) (hi := 6591329) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 6591329 6602327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6591329)
    (mid := 6596809) (hi := 6602327) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 6602327 6613543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6602327)
    (mid := 6607903) (hi := 6613543) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 6613543 6624439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6613543)
    (mid := 6618949) (hi := 6624439) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 6536441 6558389 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6536441)
    (mid := 6547529) (hi := 6558389) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 6558389 6580373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6558389)
    (mid := 6569291) (hi := 6580373) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 6580373 6602327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6580373)
    (mid := 6591329) (hi := 6602327) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 6602327 6624439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6602327)
    (mid := 6613543) (hi := 6624439) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 6536441 6580373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6536441)
    (mid := 6558389) (hi := 6580373) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 6580373 6624439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6580373)
    (mid := 6602327) (hi := 6624439) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 6536441 6624439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6536441)
    (mid := 6580373) (hi := 6624439) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 6536441 6624439 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block074

#print axioms B699MiddleExtension.PrimorialBlocks.Block074.joined
