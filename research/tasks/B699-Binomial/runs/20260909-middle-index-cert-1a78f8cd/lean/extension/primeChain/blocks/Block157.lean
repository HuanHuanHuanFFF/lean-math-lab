import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block157

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [13809053, 13809227, 13809377, 13809557, 13809709, 13809883, 13810037, 13810211, 13810367, 13810547, 13810723, 13810883, 13811053, 13811227, 13811407, 13811587]
theorem check0 : primorialChainCheck 4473 primorial4473 184 13808869 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 13808869 13811587 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13808869) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [13811737, 13811909, 13812089, 13812263, 13812437, 13812607, 13812767, 13812919, 13813097, 13813237, 13813421, 13813577, 13813759, 13813937, 13814117, 13814279]
theorem check1 : primorialChainCheck 4473 primorial4473 184 13811587 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 13811587 13814279 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13811587) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [13814461, 13814639, 13814819, 13815001, 13815173, 13815343, 13815523, 13815691, 13815871, 13816051, 13816217, 13816391, 13816571, 13816753, 13816931, 13817113]
theorem check2 : primorialChainCheck 4473 primorial4473 184 13814279 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 13814279 13817113 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13814279) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [13817291, 13817467, 13817627, 13817743, 13817897, 13818071, 13818253, 13818401, 13818577, 13818751, 13818913, 13819097, 13819279, 13819447, 13819627, 13819811]
theorem check3 : primorialChainCheck 4473 primorial4473 184 13817113 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 13817113 13819811 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13817113) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [13819991, 13820173, 13820299, 13820483, 13820633, 13820801, 13820981, 13821161, 13821343, 13821523, 13821707, 13821889, 13822031, 13822157, 13822339, 13822511]
theorem check4 : primorialChainCheck 4473 primorial4473 184 13819811 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 13819811 13822511 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13819811) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [13822687, 13822859, 13823041, 13823221, 13823387, 13823549, 13823729, 13823891, 13824059, 13824241, 13824409, 13824593, 13824743, 13824917, 13825099, 13825283]
theorem check5 : primorialChainCheck 4473 primorial4473 184 13822511 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 13822511 13825283 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13822511) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [13825463, 13825627, 13825807, 13825963, 13826147, 13826311, 13826489, 13826663, 13826843, 13827013, 13827197, 13827377, 13827557, 13827731, 13827911, 13828093]
theorem check6 : primorialChainCheck 4473 primorial4473 184 13825283 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 13825283 13828093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13825283) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [13828271, 13828411, 13828583, 13828723, 13828897, 13829071, 13829251, 13829419, 13829603, 13829773, 13829947, 13830127, 13830283, 13830457, 13830631, 13830811]
theorem check7 : primorialChainCheck 4473 primorial4473 184 13828093 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 13828093 13830811 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13828093) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [13830989, 13831163, 13831343, 13831513, 13831687, 13831871, 13832041, 13832219, 13832393, 13832569, 13832743, 13832881, 13833049, 13833191, 13833367, 13833499]
theorem check8 : primorialChainCheck 4473 primorial4473 184 13830811 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 13830811 13833499 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13830811) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [13833683, 13833857, 13834019, 13834199, 13834349, 13834529, 13834693, 13834871, 13835051, 13835231, 13835413, 13835561, 13835729, 13835911, 13836083, 13836257]
theorem check9 : primorialChainCheck 4473 primorial4473 184 13833499 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 13833499 13836257 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13833499) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [13836439, 13836619, 13836761, 13836923, 13837079, 13837259, 13837433, 13837601, 13837781, 13837961, 13838129, 13838309, 13838491, 13838651, 13838831, 13838987]
theorem check10 : primorialChainCheck 4473 primorial4473 184 13836257 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 13836257 13838987 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13836257) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [13839149, 13839311, 13839493, 13839677, 13839829, 13840003, 13840171, 13840349, 13840523, 13840693, 13840877, 13841039, 13841209, 13841393, 13841573, 13841701]
theorem check11 : primorialChainCheck 4473 primorial4473 184 13838987 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 13838987 13841701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13838987) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [13841881, 13842061, 13842239, 13842419, 13842601, 13842781, 13842943, 13843103, 13843283, 13843451, 13843603, 13843777, 13843943, 13844123, 13844279, 13844449]
theorem check12 : primorialChainCheck 4473 primorial4473 184 13841701 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 13841701 13844449 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13841701) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [13844617, 13844797, 13844969, 13845133, 13845317, 13845493, 13845653, 13845817, 13845991, 13846171, 13846337, 13846519, 13846699, 13846873, 13847051, 13847209]
theorem check13 : primorialChainCheck 4473 primorial4473 184 13844449 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 13844449 13847209 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13844449) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [13847389, 13847569, 13847747, 13847929, 13848113, 13848293, 13848449, 13848617, 13848781, 13848949, 13849123, 13849307, 13849489, 13849673, 13849853, 13850027]
theorem check14 : primorialChainCheck 4473 primorial4473 184 13847209 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 13847209 13850027 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13847209) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [13850159, 13850327, 13850503, 13850671, 13850849, 13851029, 13851193, 13851373, 13851553, 13851737, 13851883, 13852067, 13852249, 13852411, 13852591, 13852759]
theorem check15 : primorialChainCheck 4473 primorial4473 184 13850027 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 13850027 13852759 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13850027) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [13852931, 13853101, 13853269, 13853431, 13853599, 13853743, 13853927, 13854107, 13854289, 13854457, 13854641, 13854823, 13855003, 13855183, 13855339, 13855519]
theorem check16 : primorialChainCheck 4473 primorial4473 184 13852759 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 13852759 13855519 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13852759) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [13855703, 13855879, 13856053, 13856233, 13856413, 13856593, 13856753, 13856929, 13857113, 13857281, 13857461, 13857637, 13857803, 13857971, 13858133, 13858309]
theorem check17 : primorialChainCheck 4473 primorial4473 184 13855519 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 13855519 13858309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13855519) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [13858469, 13858633, 13858799, 13858981, 13859143, 13859323, 13859507, 13859663, 13859827, 13860001, 13860179, 13860349, 13860493, 13860677, 13860859, 13860997]
theorem check18 : primorialChainCheck 4473 primorial4473 184 13858309 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 13858309 13860997 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13858309) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [13861181, 13861363, 13861513, 13861693, 13861877, 13862047, 13862231, 13862413, 13862591, 13862759, 13862917, 13863097, 13863281, 13863433, 13863613, 13863791]
theorem check19 : primorialChainCheck 4473 primorial4473 184 13860997 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 13860997 13863791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13860997) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [13863973, 13864139, 13864321, 13864481, 13864649, 13864831, 13864999, 13865147, 13865323, 13865507, 13865689, 13865833, 13866011, 13866191, 13866367, 13866547]
theorem check20 : primorialChainCheck 4473 primorial4473 184 13863791 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 13863791 13866547 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13863791) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [13866691, 13866869, 13867043, 13867211, 13867379, 13867559, 13867741, 13867921, 13868089, 13868269, 13868443, 13868627, 13868809, 13868971, 13869151, 13869313]
theorem check21 : primorialChainCheck 4473 primorial4473 184 13866547 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 13866547 13869313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13866547) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [13869491, 13869673, 13869853, 13869991, 13870169, 13870343, 13870501, 13870667, 13870849, 13871023, 13871183, 13871359, 13871537, 13871717, 13871863, 13872037]
theorem check22 : primorialChainCheck 4473 primorial4473 184 13869313 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 13869313 13872037 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13869313) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [13872217, 13872361, 13872533, 13872707, 13872889, 13873073, 13873229, 13873403, 13873583, 13873763, 13873939, 13874117, 13874279, 13874461, 13874629, 13874803]
theorem check23 : primorialChainCheck 4473 primorial4473 184 13872037 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 13872037 13874803 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13872037) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [13874983, 13875167, 13875331, 13875493, 13875677, 13875847, 13876021, 13876171, 13876349, 13876523, 13876673, 13876847, 13877023, 13877203, 13877329, 13877497]
theorem check24 : primorialChainCheck 4473 primorial4473 184 13874803 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 13874803 13877497 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13874803) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [13877651, 13877833, 13878017, 13878199, 13878383, 13878563, 13878743, 13878923, 13879091, 13879267, 13879441, 13879609, 13879793, 13879969, 13880149, 13880327]
theorem check25 : primorialChainCheck 4473 primorial4473 184 13877497 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 13877497 13880327 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13877497) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [13880497, 13880677, 13880861, 13881037, 13881209, 13881391, 13881563, 13881737, 13881871, 13882049, 13882229, 13882399, 13882579, 13882763, 13882879, 13883057]
theorem check26 : primorialChainCheck 4473 primorial4473 184 13880327 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 13880327 13883057 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13880327) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [13883227, 13883383, 13883557, 13883731, 13883887, 13884067, 13884239, 13884419, 13884589, 13884751, 13884929, 13885103, 13885279, 13885463, 13885643, 13885819]
theorem check27 : primorialChainCheck 4473 primorial4473 184 13883057 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 13883057 13885819 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13883057) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [13885999, 13886153, 13886329, 13886497, 13886681, 13886861, 13887019, 13887191, 13887359, 13887541, 13887719, 13887901, 13888057, 13888181, 13888351, 13888531]
theorem check28 : primorialChainCheck 4473 primorial4473 184 13885819 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 13885819 13888531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13885819) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [13888669, 13888843, 13889027, 13889203, 13889383, 13889567, 13889749, 13889933, 13890113, 13890287, 13890469, 13890637, 13890817, 13890973, 13891153, 13891327]
theorem check29 : primorialChainCheck 4473 primorial4473 184 13888531 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 13888531 13891327 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13888531) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [13891483, 13891651, 13891819, 13891993, 13892171, 13892341, 13892521, 13892701, 13892881, 13893037, 13893197, 13893377, 13893553, 13893713, 13893853, 13894037]
theorem check30 : primorialChainCheck 4473 primorial4473 184 13891327 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 13891327 13894037 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13891327) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [13894217, 13894381, 13894523, 13894703, 13894861, 13895041, 13895209, 13895393, 13895561, 13895743, 13895927, 13896107, 13896283, 13896461, 13896643, 13896823]
theorem check31 : primorialChainCheck 4473 primorial4473 184 13894037 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 13894037 13896823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13894037) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 13808869 13814279 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13808869)
    (mid := 13811587) (hi := 13814279) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 13814279 13819811 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13814279)
    (mid := 13817113) (hi := 13819811) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 13819811 13825283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13819811)
    (mid := 13822511) (hi := 13825283) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 13825283 13830811 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13825283)
    (mid := 13828093) (hi := 13830811) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 13830811 13836257 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13830811)
    (mid := 13833499) (hi := 13836257) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 13836257 13841701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13836257)
    (mid := 13838987) (hi := 13841701) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 13841701 13847209 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13841701)
    (mid := 13844449) (hi := 13847209) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 13847209 13852759 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13847209)
    (mid := 13850027) (hi := 13852759) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 13852759 13858309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13852759)
    (mid := 13855519) (hi := 13858309) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 13858309 13863791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13858309)
    (mid := 13860997) (hi := 13863791) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 13863791 13869313 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13863791)
    (mid := 13866547) (hi := 13869313) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 13869313 13874803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13869313)
    (mid := 13872037) (hi := 13874803) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 13874803 13880327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13874803)
    (mid := 13877497) (hi := 13880327) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 13880327 13885819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13880327)
    (mid := 13883057) (hi := 13885819) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 13885819 13891327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13885819)
    (mid := 13888531) (hi := 13891327) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 13891327 13896823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13891327)
    (mid := 13894037) (hi := 13896823) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 13808869 13819811 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13808869)
    (mid := 13814279) (hi := 13819811) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 13819811 13830811 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13819811)
    (mid := 13825283) (hi := 13830811) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 13830811 13841701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13830811)
    (mid := 13836257) (hi := 13841701) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 13841701 13852759 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13841701)
    (mid := 13847209) (hi := 13852759) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 13852759 13863791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13852759)
    (mid := 13858309) (hi := 13863791) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 13863791 13874803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13863791)
    (mid := 13869313) (hi := 13874803) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 13874803 13885819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13874803)
    (mid := 13880327) (hi := 13885819) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 13885819 13896823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13885819)
    (mid := 13891327) (hi := 13896823) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 13808869 13830811 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13808869)
    (mid := 13819811) (hi := 13830811) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 13830811 13852759 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13830811)
    (mid := 13841701) (hi := 13852759) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 13852759 13874803 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13852759)
    (mid := 13863791) (hi := 13874803) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 13874803 13896823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13874803)
    (mid := 13885819) (hi := 13896823) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 13808869 13852759 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13808869)
    (mid := 13830811) (hi := 13852759) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 13852759 13896823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13852759)
    (mid := 13874803) (hi := 13896823) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 13808869 13896823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13808869)
    (mid := 13852759) (hi := 13896823) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 13808869 13896823 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block157

#print axioms B699MiddleExtension.PrimorialBlocks.Block157.joined
