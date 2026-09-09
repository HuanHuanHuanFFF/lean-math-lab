import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block173

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [15208367, 15208537, 15208679, 15208861, 15209011, 15209167, 15209347, 15209531, 15209699, 15209881, 15210059, 15210229, 15210397, 15210577, 15210757, 15210941]
theorem check0 : primorialChainCheck 4473 primorial4473 184 15208187 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 15208187 15210941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15208187) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [15211103, 15211271, 15211433, 15211601, 15211771, 15211939, 15212123, 15212303, 15212479, 15212663, 15212843, 15213019, 15213169, 15213349, 15213503, 15213683]
theorem check1 : primorialChainCheck 4473 primorial4473 184 15210941 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 15210941 15213683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15210941) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [15213859, 15214039, 15214189, 15214361, 15214517, 15214697, 15214873, 15215033, 15215159, 15215329, 15215509, 15215693, 15215873, 15216049, 15216233, 15216407]
theorem check2 : primorialChainCheck 4473 primorial4473 184 15213683 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 15213683 15216407 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15213683) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [15216569, 15216737, 15216899, 15217079, 15217247, 15217427, 15217607, 15217757, 15217919, 15218101, 15218279, 15218461, 15218633, 15218789, 15218969, 15219151]
theorem check3 : primorialChainCheck 4473 primorial4473 184 15216407 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 15216407 15219151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15216407) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [15219331, 15219509, 15219689, 15219871, 15220031, 15220193, 15220333, 15220507, 15220669, 15220841, 15220979, 15221161, 15221333, 15221509, 15221693, 15221863]
theorem check4 : primorialChainCheck 4473 primorial4473 184 15219151 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 15219151 15221863 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15219151) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [15222041, 15222223, 15222391, 15222547, 15222719, 15222901, 15223073, 15223213, 15223393, 15223567, 15223739, 15223919, 15224093, 15224269, 15224431, 15224609]
theorem check5 : primorialChainCheck 4473 primorial4473 184 15221863 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 15221863 15224609 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15221863) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [15224791, 15224927, 15225101, 15225283, 15225449, 15225629, 15225811, 15225989, 15226153, 15226303, 15226481, 15226649, 15226831, 15226927, 15227077, 15227243]
theorem check6 : primorialChainCheck 4473 primorial4473 184 15224609 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 15224609 15227243 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15224609) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [15227423, 15227599, 15227777, 15227957, 15228131, 15228307, 15228487, 15228659, 15228827, 15229007, 15229189, 15229373, 15229549, 15229723, 15229867, 15230023]
theorem check7 : primorialChainCheck 4473 primorial4473 184 15227243 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 15227243 15230023 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15227243) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [15230203, 15230387, 15230563, 15230737, 15230921, 15231101, 15231283, 15231421, 15231599, 15231781, 15231959, 15232117, 15232291, 15232457, 15232597, 15232781]
theorem check8 : primorialChainCheck 4473 primorial4473 184 15230023 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 15230023 15232781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15230023) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [15232961, 15233093, 15233261, 15233443, 15233627, 15233791, 15233963, 15234139, 15234313, 15234481, 15234641, 15234823, 15235007, 15235189, 15235369, 15235541]
theorem check9 : primorialChainCheck 4473 primorial4473 184 15232781 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 15232781 15235541 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15232781) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [15235721, 15235877, 15236059, 15236239, 15236401, 15236567, 15236747, 15236929, 15237113, 15237263, 15237419, 15237589, 15237737, 15237907, 15238087, 15238271]
theorem check10 : primorialChainCheck 4473 primorial4473 184 15235541 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 15235541 15238271 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15235541) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [15238439, 15238609, 15238793, 15238967, 15239149, 15239333, 15239513, 15239683, 15239867, 15240047, 15240229, 15240403, 15240583, 15240761, 15240943, 15241103]
theorem check11 : primorialChainCheck 4473 primorial4473 184 15238271 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 15238271 15241103 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15238271) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [15241283, 15241441, 15241621, 15241777, 15241957, 15242141, 15242317, 15242501, 15242681, 15242861, 15243013, 15243191, 15243367, 15243539, 15243721, 15243869]
theorem check12 : primorialChainCheck 4473 primorial4473 184 15241103 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 15241103 15243869 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15241103) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [15244049, 15244211, 15244391, 15244573, 15244741, 15244921, 15245089, 15245267, 15245441, 15245623, 15245807, 15245983, 15246167, 15246349, 15246529, 15246713]
theorem check13 : primorialChainCheck 4473 primorial4473 184 15243869 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 15243869 15246713 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15243869) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [15246893, 15247073, 15247231, 15247409, 15247571, 15247751, 15247933, 15248117, 15248293, 15248419, 15248593, 15248767, 15248929, 15249109, 15249293, 15249473]
theorem check14 : primorialChainCheck 4473 primorial4473 184 15246713 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 15246713 15249473 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15246713) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [15249623, 15249763, 15249929, 15250111, 15250271, 15250453, 15250619, 15250801, 15250981, 15251147, 15251321, 15251501, 15251681, 15251861, 15252023, 15252203]
theorem check15 : primorialChainCheck 4473 primorial4473 184 15249473 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 15249473 15252203 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15249473) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [15252371, 15252551, 15252733, 15252911, 15253061, 15253243, 15253397, 15253571, 15253753, 15253937, 15254119, 15254303, 15254483, 15254651, 15254807, 15254983]
theorem check16 : primorialChainCheck 4473 primorial4473 184 15252203 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 15252203 15254983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15252203) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [15255167, 15255349, 15255523, 15255703, 15255883, 15256067, 15256231, 15256399, 15256583, 15256723, 15256903, 15257083, 15257267, 15257413, 15257591, 15257773]
theorem check17 : primorialChainCheck 4473 primorial4473 184 15254983 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 15254983 15257773 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15254983) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [15257917, 15258091, 15258253, 15258431, 15258599, 15258751, 15258931, 15259073, 15259241, 15259417, 15259579, 15259757, 15259921, 15260099, 15260279, 15260437]
theorem check18 : primorialChainCheck 4473 primorial4473 184 15257773 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 15257773 15260437 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15257773) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [15260621, 15260803, 15260977, 15261157, 15261317, 15261497, 15261677, 15261821, 15262003, 15262157, 15262337, 15262519, 15262697, 15262867, 15263021, 15263201]
theorem check19 : primorialChainCheck 4473 primorial4473 184 15260437 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 15260437 15263201 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15260437) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [15263341, 15263519, 15263693, 15263863, 15264047, 15264209, 15264349, 15264533, 15264713, 15264889, 15265027, 15265183, 15265363, 15265529, 15265709, 15265891]
theorem check20 : primorialChainCheck 4473 primorial4473 184 15263201 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 15263201 15265891 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15263201) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [15266059, 15266239, 15266423, 15266599, 15266777, 15266947, 15267113, 15267289, 15267443, 15267617, 15267799, 15267983, 15268157, 15268333, 15268511, 15268691]
theorem check21 : primorialChainCheck 4473 primorial4473 184 15265891 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 15265891 15268691 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15265891) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [15268871, 15269053, 15269227, 15269411, 15269563, 15269743, 15269923, 15270103, 15270287, 15270469, 15270601, 15270769, 15270953, 15271111, 15271279, 15271463]
theorem check22 : primorialChainCheck 4473 primorial4473 184 15268691 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 15268691 15271463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15268691) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [15271589, 15271771, 15271909, 15272087, 15272263, 15272423, 15272591, 15272773, 15272927, 15273103, 15273281, 15273457, 15273631, 15273809, 15273991, 15274153]
theorem check23 : primorialChainCheck 4473 primorial4473 184 15271463 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 15271463 15274153 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15271463) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [15274307, 15274487, 15274669, 15274817, 15274991, 15275173, 15275357, 15275539, 15275669, 15275849, 15276029, 15276203, 15276367, 15276539, 15276719, 15276889]
theorem check24 : primorialChainCheck 4473 primorial4473 184 15274153 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 15274153 15276889 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15274153) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [15277069, 15277247, 15277399, 15277571, 15277753, 15277937, 15278113, 15278297, 15278477, 15278657, 15278833, 15279007, 15279191, 15279361, 15279541, 15279713]
theorem check25 : primorialChainCheck 4473 primorial4473 184 15276889 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 15276889 15279713 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15276889) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [15279893, 15280063, 15280247, 15280429, 15280607, 15280789, 15280961, 15281143, 15281323, 15281507, 15281639, 15281809, 15281993, 15282173, 15282353, 15282529]
theorem check26 : primorialChainCheck 4473 primorial4473 184 15279713 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 15279713 15282529 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15279713) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [15282713, 15282893, 15283069, 15283249, 15283409, 15283591, 15283747, 15283927, 15284111, 15284287, 15284471, 15284641, 15284807, 15284963, 15285131, 15285311]
theorem check27 : primorialChainCheck 4473 primorial4473 184 15282529 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 15282529 15285311 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15282529) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [15285467, 15285637, 15285817, 15285971, 15286147, 15286331, 15286499, 15286643, 15286819, 15286991, 15287171, 15287351, 15287513, 15287689, 15287873, 15288047]
theorem check28 : primorialChainCheck 4473 primorial4473 184 15285311 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 15285311 15288047 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15285311) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [15288227, 15288409, 15288589, 15288773, 15288953, 15289133, 15289303, 15289487, 15289669, 15289853, 15290029, 15290203, 15290357, 15290501, 15290683, 15290861]
theorem check29 : primorialChainCheck 4473 primorial4473 184 15288047 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 15288047 15290861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15288047) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [15291037, 15291191, 15291373, 15291547, 15291709, 15291883, 15292031, 15292213, 15292379, 15292561, 15292733, 15292909, 15293087, 15293231, 15293407, 15293539]
theorem check30 : primorialChainCheck 4473 primorial4473 184 15290861 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 15290861 15293539 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15290861) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [15293687, 15293869, 15294053, 15294233, 15294371, 15294551, 15294709, 15294869, 15295051, 15295213, 15295387, 15295571, 15295739, 15295919, 15296101, 15296269]
theorem check31 : primorialChainCheck 4473 primorial4473 184 15293539 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 15293539 15296269 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15293539) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 15208187 15213683 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15208187)
    (mid := 15210941) (hi := 15213683) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 15213683 15219151 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15213683)
    (mid := 15216407) (hi := 15219151) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 15219151 15224609 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15219151)
    (mid := 15221863) (hi := 15224609) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 15224609 15230023 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15224609)
    (mid := 15227243) (hi := 15230023) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 15230023 15235541 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15230023)
    (mid := 15232781) (hi := 15235541) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 15235541 15241103 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15235541)
    (mid := 15238271) (hi := 15241103) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 15241103 15246713 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15241103)
    (mid := 15243869) (hi := 15246713) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 15246713 15252203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15246713)
    (mid := 15249473) (hi := 15252203) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 15252203 15257773 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15252203)
    (mid := 15254983) (hi := 15257773) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 15257773 15263201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15257773)
    (mid := 15260437) (hi := 15263201) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 15263201 15268691 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15263201)
    (mid := 15265891) (hi := 15268691) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 15268691 15274153 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15268691)
    (mid := 15271463) (hi := 15274153) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 15274153 15279713 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15274153)
    (mid := 15276889) (hi := 15279713) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 15279713 15285311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15279713)
    (mid := 15282529) (hi := 15285311) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 15285311 15290861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15285311)
    (mid := 15288047) (hi := 15290861) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 15290861 15296269 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15290861)
    (mid := 15293539) (hi := 15296269) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 15208187 15219151 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15208187)
    (mid := 15213683) (hi := 15219151) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 15219151 15230023 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15219151)
    (mid := 15224609) (hi := 15230023) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 15230023 15241103 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15230023)
    (mid := 15235541) (hi := 15241103) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 15241103 15252203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15241103)
    (mid := 15246713) (hi := 15252203) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 15252203 15263201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15252203)
    (mid := 15257773) (hi := 15263201) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 15263201 15274153 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15263201)
    (mid := 15268691) (hi := 15274153) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 15274153 15285311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15274153)
    (mid := 15279713) (hi := 15285311) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 15285311 15296269 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15285311)
    (mid := 15290861) (hi := 15296269) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 15208187 15230023 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15208187)
    (mid := 15219151) (hi := 15230023) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 15230023 15252203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15230023)
    (mid := 15241103) (hi := 15252203) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 15252203 15274153 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15252203)
    (mid := 15263201) (hi := 15274153) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 15274153 15296269 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15274153)
    (mid := 15285311) (hi := 15296269) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 15208187 15252203 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15208187)
    (mid := 15230023) (hi := 15252203) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 15252203 15296269 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15252203)
    (mid := 15274153) (hi := 15296269) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 15208187 15296269 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15208187)
    (mid := 15252203) (hi := 15296269) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 15208187 15296269 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block173

#print axioms B699MiddleExtension.PrimorialBlocks.Block173.joined
