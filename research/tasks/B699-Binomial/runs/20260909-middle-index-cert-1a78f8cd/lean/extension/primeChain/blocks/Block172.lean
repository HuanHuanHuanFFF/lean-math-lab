import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block172

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [15121247, 15121409, 15121591, 15121751, 15121903, 15122069, 15122213, 15122377, 15122561, 15122729, 15122897, 15123041, 15123223, 15123371, 15123553, 15123737]
theorem check0 : primorialChainCheck 4473 primorial4473 184 15121081 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 15121081 15123737 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15121081) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [15123919, 15124099, 15124267, 15124423, 15124583, 15124757, 15124939, 15125111, 15125263, 15125441, 15125623, 15125783, 15125959, 15126143, 15126323, 15126491]
theorem check1 : primorialChainCheck 4473 primorial4473 184 15123737 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 15123737 15126491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15123737) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [15126659, 15126829, 15127003, 15127181, 15127309, 15127459, 15127643, 15127751, 15127927, 15128081, 15128251, 15128431, 15128611, 15128791, 15128969, 15129139]
theorem check2 : primorialChainCheck 4473 primorial4473 184 15126491 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 15126491 15129139 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15126491) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [15129313, 15129493, 15129623, 15129799, 15129977, 15130133, 15130307, 15130483, 15130667, 15130847, 15131029, 15131209, 15131387, 15131563, 15131741, 15131917]
theorem check3 : primorialChainCheck 4473 primorial4473 184 15129139 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 15129139 15131917 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15129139) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [15132101, 15132283, 15132463, 15132599, 15132773, 15132913, 15133093, 15133277, 15133439, 15133619, 15133799, 15133967, 15134129, 15134281, 15134461, 15134633]
theorem check4 : primorialChainCheck 4473 primorial4473 184 15131917 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 15131917 15134633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15131917) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [15134807, 15134969, 15135149, 15135319, 15135499, 15135677, 15135853, 15136019, 15136201, 15136351, 15136531, 15136699, 15136873, 15137009, 15137179, 15137363]
theorem check5 : primorialChainCheck 4473 primorial4473 184 15134633 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 15134633 15137363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15134633) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [15137539, 15137719, 15137893, 15138031, 15138197, 15138359, 15138523, 15138707, 15138863, 15139009, 15139177, 15139357, 15139541, 15139723, 15139871, 15140023]
theorem check6 : primorialChainCheck 4473 primorial4473 184 15137363 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 15137363 15140023 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15137363) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [15140201, 15140381, 15140519, 15140689, 15140869, 15141053, 15141227, 15141391, 15141569, 15141743, 15141913, 15142097, 15142277, 15142447, 15142613, 15142783]
theorem check7 : primorialChainCheck 4473 primorial4473 184 15140023 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 15140023 15142783 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15140023) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [15142921, 15143041, 15143203, 15143383, 15143567, 15143669, 15143837, 15144001, 15144169, 15144347, 15144529, 15144677, 15144859, 15145043, 15145217, 15145399]
theorem check8 : primorialChainCheck 4473 primorial4473 184 15142783 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 15142783 15145399 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15142783) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [15145583, 15145747, 15145927, 15146111, 15146293, 15146441, 15146611, 15146783, 15146953, 15147109, 15147259, 15147443, 15147619, 15147791, 15147973, 15148151]
theorem check9 : primorialChainCheck 4473 primorial4473 184 15145399 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 15145399 15148151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15145399) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [15148333, 15148517, 15148699, 15148883, 15149053, 15149231, 15149413, 15149591, 15149773, 15149887, 15150071, 15150251, 15150409, 15150593, 15150743, 15150917]
theorem check10 : primorialChainCheck 4473 primorial4473 184 15148151 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 15148151 15150917 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15148151) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [15151051, 15151229, 15151393, 15151571, 15151751, 15151933, 15152113, 15152281, 15152453, 15152581, 15152759, 15152909, 15153059, 15153221, 15153401, 15153571]
theorem check11 : primorialChainCheck 4473 primorial4473 184 15150917 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 15150917 15153571 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15150917) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [15153727, 15153893, 15154067, 15154241, 15154421, 15154603, 15154787, 15154961, 15155131, 15155269, 15155431, 15155611, 15155779, 15155957, 15156083, 15156263]
theorem check12 : primorialChainCheck 4473 primorial4473 184 15153571 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 15153571 15156263 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15153571) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [15156439, 15156601, 15156773, 15156949, 15157091, 15157273, 15157451, 15157627, 15157787, 15157969, 15158153, 15158327, 15158501, 15158681, 15158839, 15159013]
theorem check13 : primorialChainCheck 4473 primorial4473 184 15156263 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 15156263 15159013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15156263) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [15159197, 15159337, 15159517, 15159671, 15159847, 15160031, 15160207, 15160373, 15160543, 15160721, 15160903, 15161087, 15161261, 15161441, 15161617, 15161801]
theorem check14 : primorialChainCheck 4473 primorial4473 184 15159013 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 15159013 15161801 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15159013) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [15161969, 15162151, 15162311, 15162493, 15162673, 15162839, 15163009, 15163193, 15163367, 15163543, 15163721, 15163903, 15164081, 15164263, 15164431, 15164599]
theorem check15 : primorialChainCheck 4473 primorial4473 184 15161801 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 15161801 15164599 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15161801) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [15164777, 15164917, 15165091, 15165263, 15165433, 15165611, 15165793, 15165949, 15166121, 15166303, 15166483, 15166667, 15166847, 15167021, 15167197, 15167371]
theorem check16 : primorialChainCheck 4473 primorial4473 184 15164599 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 15164599 15167371 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15164599) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [15167549, 15167701, 15167881, 15168053, 15168221, 15168389, 15168541, 15168701, 15168871, 15169031, 15169207, 15169387, 15169529, 15169703, 15169867, 15170039]
theorem check17 : primorialChainCheck 4473 primorial4473 184 15167371 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 15167371 15170039 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15167371) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [15170213, 15170387, 15170549, 15170713, 15170887, 15171017, 15171199, 15171341, 15171523, 15171691, 15171857, 15172039, 15172193, 15172373, 15172543, 15172723]
theorem check18 : primorialChainCheck 4473 primorial4473 184 15170039 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 15170039 15172723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15170039) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [15172903, 15173087, 15173251, 15173429, 15173597, 15173779, 15173957, 15174109, 15174287, 15174451, 15174631, 15174799, 15174983, 15175159, 15175343, 15175499]
theorem check19 : primorialChainCheck 4473 primorial4473 184 15172723 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 15172723 15175499 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15172723) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [15175673, 15175847, 15176017, 15176201, 15176363, 15176543, 15176713, 15176897, 15177061, 15177241, 15177403, 15177571, 15177739, 15177919, 15178069, 15178253]
theorem check20 : primorialChainCheck 4473 primorial4473 184 15175499 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 15175499 15178253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15175499) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [15178417, 15178601, 15178763, 15178937, 15179117, 15179279, 15179459, 15179639, 15179809, 15179959, 15180091, 15180271, 15180433, 15180611, 15180773, 15180931]
theorem check21 : primorialChainCheck 4473 primorial4473 184 15178253 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 15178253 15180931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15178253) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [15181091, 15181259, 15181421, 15181601, 15181783, 15181949, 15182131, 15182287, 15182459, 15182641, 15182821, 15182983, 15183143, 15183323, 15183463, 15183643]
theorem check22 : primorialChainCheck 4473 primorial4473 184 15180931 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 15180931 15183643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15180931) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [15183823, 15184003, 15184177, 15184343, 15184523, 15184651, 15184817, 15184993, 15185171, 15185353, 15185519, 15185699, 15185869, 15186047, 15186203, 15186383]
theorem check23 : primorialChainCheck 4473 primorial4473 184 15183643 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 15183643 15186383 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15183643) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [15186557, 15186737, 15186917, 15187093, 15187267, 15187379, 15187553, 15187717, 15187877, 15188059, 15188237, 15188377, 15188561, 15188743, 15188909, 15189079]
theorem check24 : primorialChainCheck 4473 primorial4473 184 15186383 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 15186383 15189079 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15186383) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [15189263, 15189443, 15189599, 15189773, 15189931, 15190099, 15190271, 15190453, 15190631, 15190811, 15190993, 15191159, 15191329, 15191509, 15191681, 15191861]
theorem check25 : primorialChainCheck 4473 primorial4473 184 15189079 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 15189079 15191861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15189079) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [15192019, 15192197, 15192377, 15192539, 15192689, 15192871, 15193049, 15193229, 15193397, 15193567, 15193729, 15193909, 15194083, 15194239, 15194423, 15194603]
theorem check26 : primorialChainCheck 4473 primorial4473 184 15191861 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 15191861 15194603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15191861) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [15194747, 15194911, 15195077, 15195253, 15195437, 15195613, 15195793, 15195967, 15196141, 15196309, 15196477, 15196639, 15196823, 15196967, 15197137, 15197311]
theorem check27 : primorialChainCheck 4473 primorial4473 184 15194603 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 15194603 15197311 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15194603) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [15197489, 15197671, 15197849, 15198023, 15198199, 15198329, 15198509, 15198679, 15198857, 15199039, 15199213, 15199381, 15199529, 15199699, 15199883, 15200051]
theorem check28 : primorialChainCheck 4473 primorial4473 184 15197311 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 15197311 15200051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15197311) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [15200231, 15200389, 15200569, 15200749, 15200909, 15201079, 15201233, 15201401, 15201583, 15201761, 15201943, 15202123, 15202289, 15202459, 15202639, 15202813]
theorem check29 : primorialChainCheck 4473 primorial4473 184 15200051 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 15200051 15202813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15200051) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [15202991, 15203147, 15203329, 15203509, 15203693, 15203873, 15203977, 15204131, 15204289, 15204473, 15204589, 15204751, 15204907, 15205087, 15205271, 15205451]
theorem check30 : primorialChainCheck 4473 primorial4473 184 15202813 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 15202813 15205451 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15202813) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [15205613, 15205759, 15205943, 15206123, 15206293, 15206467, 15206651, 15206827, 15207001, 15207173, 15207319, 15207499, 15207683, 15207833, 15208003, 15208187]
theorem check31 : primorialChainCheck 4473 primorial4473 184 15205451 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 15205451 15208187 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15205451) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 15121081 15126491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15121081)
    (mid := 15123737) (hi := 15126491) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 15126491 15131917 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15126491)
    (mid := 15129139) (hi := 15131917) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 15131917 15137363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15131917)
    (mid := 15134633) (hi := 15137363) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 15137363 15142783 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15137363)
    (mid := 15140023) (hi := 15142783) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 15142783 15148151 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15142783)
    (mid := 15145399) (hi := 15148151) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 15148151 15153571 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15148151)
    (mid := 15150917) (hi := 15153571) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 15153571 15159013 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15153571)
    (mid := 15156263) (hi := 15159013) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 15159013 15164599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15159013)
    (mid := 15161801) (hi := 15164599) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 15164599 15170039 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15164599)
    (mid := 15167371) (hi := 15170039) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 15170039 15175499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15170039)
    (mid := 15172723) (hi := 15175499) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 15175499 15180931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15175499)
    (mid := 15178253) (hi := 15180931) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 15180931 15186383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15180931)
    (mid := 15183643) (hi := 15186383) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 15186383 15191861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15186383)
    (mid := 15189079) (hi := 15191861) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 15191861 15197311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15191861)
    (mid := 15194603) (hi := 15197311) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 15197311 15202813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15197311)
    (mid := 15200051) (hi := 15202813) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 15202813 15208187 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15202813)
    (mid := 15205451) (hi := 15208187) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 15121081 15131917 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15121081)
    (mid := 15126491) (hi := 15131917) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 15131917 15142783 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15131917)
    (mid := 15137363) (hi := 15142783) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 15142783 15153571 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15142783)
    (mid := 15148151) (hi := 15153571) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 15153571 15164599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15153571)
    (mid := 15159013) (hi := 15164599) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 15164599 15175499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15164599)
    (mid := 15170039) (hi := 15175499) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 15175499 15186383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15175499)
    (mid := 15180931) (hi := 15186383) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 15186383 15197311 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15186383)
    (mid := 15191861) (hi := 15197311) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 15197311 15208187 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15197311)
    (mid := 15202813) (hi := 15208187) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 15121081 15142783 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15121081)
    (mid := 15131917) (hi := 15142783) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 15142783 15164599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15142783)
    (mid := 15153571) (hi := 15164599) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 15164599 15186383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15164599)
    (mid := 15175499) (hi := 15186383) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 15186383 15208187 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15186383)
    (mid := 15197311) (hi := 15208187) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 15121081 15164599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15121081)
    (mid := 15142783) (hi := 15164599) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 15164599 15208187 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15164599)
    (mid := 15186383) (hi := 15208187) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 15121081 15208187 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15121081)
    (mid := 15164599) (hi := 15208187) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 15121081 15208187 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block172

#print axioms B699MiddleExtension.PrimorialBlocks.Block172.joined
