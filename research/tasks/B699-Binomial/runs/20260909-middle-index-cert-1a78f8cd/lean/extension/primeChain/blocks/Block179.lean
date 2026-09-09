import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block179

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [15733373, 15733511, 15733693, 15733867, 15734011, 15734189, 15734371, 15734539, 15734713, 15734897, 15735067, 15735221, 15735403, 15735583, 15735757, 15735919]
theorem check0 : primorialChainCheck 4473 primorial4473 184 15733261 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 15733261 15735919 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15733261) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [15736073, 15736207, 15736379, 15736517, 15736691, 15736873, 15737047, 15737219, 15737389, 15737569, 15737753, 15737929, 15738103, 15738269, 15738439, 15738599]
theorem check1 : primorialChainCheck 4473 primorial4473 184 15735919 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 15735919 15738599 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15735919) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [15738773, 15738913, 15739069, 15739223, 15739397, 15739571, 15739753, 15739937, 15740083, 15740261, 15740443, 15740609, 15740789, 15740971, 15741109, 15741293]
theorem check2 : primorialChainCheck 4473 primorial4473 184 15738599 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 15738599 15741293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15738599) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [15741469, 15741653, 15741833, 15742003, 15742183, 15742367, 15742549, 15742733, 15742913, 15743083, 15743263, 15743423, 15743603, 15743773, 15743941, 15744109]
theorem check3 : primorialChainCheck 4473 primorial4473 184 15741293 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 15741293 15744109 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15741293) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [15744269, 15744433, 15744541, 15744691, 15744871, 15745049, 15745229, 15745403, 15745577, 15745739, 15745909, 15746089, 15746257, 15746429, 15746609, 15746779]
theorem check4 : primorialChainCheck 4473 primorial4473 184 15744109 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 15744109 15746779 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15744109) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [15746963, 15747139, 15747317, 15747499, 15747653, 15747817, 15747997, 15748181, 15748361, 15748541, 15748699, 15748867, 15749039, 15749219, 15749399, 15749579]
theorem check5 : primorialChainCheck 4473 primorial4473 184 15746779 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 15746779 15749579 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15746779) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [15749761, 15749897, 15750061, 15750233, 15750409, 15750583, 15750751, 15750919, 15751103, 15751277, 15751457, 15751621, 15751793, 15751963, 15752141, 15752293]
theorem check6 : primorialChainCheck 4473 primorial4473 184 15749579 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 15749579 15752293 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15749579) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [15752449, 15752623, 15752801, 15752963, 15753121, 15753259, 15753431, 15753607, 15753791, 15753973, 15754153, 15754331, 15754507, 15754679, 15754861, 15755027]
theorem check7 : primorialChainCheck 4473 primorial4473 184 15752293 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 15752293 15755027 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15752293) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [15755171, 15755339, 15755513, 15755689, 15755867, 15756047, 15756227, 15756379, 15756557, 15756737, 15756913, 15757097, 15757241, 15757421, 15757559, 15757733]
theorem check8 : primorialChainCheck 4473 primorial4473 184 15755027 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 15755027 15757733 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15755027) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [15757913, 15758089, 15758231, 15758401, 15758573, 15758747, 15758917, 15759101, 15759259, 15759427, 15759599, 15759769, 15759943, 15760117, 15760279, 15760457]
theorem check9 : primorialChainCheck 4473 primorial4473 184 15757733 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 15757733 15760457 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15757733) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [15760607, 15760757, 15760931, 15761111, 15761287, 15761467, 15761639, 15761807, 15761983, 15762157, 15762323, 15762493, 15762667, 15762841, 15763021, 15763129]
theorem check10 : primorialChainCheck 4473 primorial4473 184 15760457 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 15760457 15763129 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15760457) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [15763309, 15763477, 15763651, 15763831, 15764011, 15764191, 15764327, 15764501, 15764681, 15764863, 15765037, 15765203, 15765359, 15765521, 15765697, 15765863]
theorem check11 : primorialChainCheck 4473 primorial4473 184 15763129 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 15763129 15765863 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15763129) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [15766027, 15766207, 15766391, 15766529, 15766703, 15766873, 15767053, 15767237, 15767417, 15767597, 15767771, 15767923, 15768097, 15768239, 15768413, 15768587]
theorem check12 : primorialChainCheck 4473 primorial4473 184 15765863 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 15765863 15768587 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15765863) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [15768763, 15768913, 15769097, 15769279, 15769441, 15769613, 15769771, 15769951, 15770129, 15770299, 15770483, 15770633, 15770789, 15770947, 15771127, 15771299]
theorem check13 : primorialChainCheck 4473 primorial4473 184 15768587 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 15768587 15771299 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15768587) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [15771439, 15771607, 15771787, 15771967, 15772151, 15772333, 15772517, 15772697, 15772849, 15773033, 15773189, 15773369, 15773551, 15773731, 15773911, 15774091]
theorem check14 : primorialChainCheck 4473 primorial4473 184 15771299 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 15771299 15774091 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15771299) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [15774259, 15774439, 15774613, 15774767, 15774947, 15775093, 15775261, 15775429, 15775607, 15775783, 15775967, 15776147, 15776317, 15776483, 15776653, 15776809]
theorem check15 : primorialChainCheck 4473 primorial4473 184 15774091 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 15774091 15776809 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15774091) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [15776993, 15777161, 15777323, 15777499, 15777679, 15777863, 15778043, 15778219, 15778403, 15778583, 15778757, 15778937, 15779119, 15779303, 15779483, 15779657]
theorem check16 : primorialChainCheck 4473 primorial4473 184 15776809 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 15776809 15779657 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15776809) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [15779833, 15780007, 15780187, 15780371, 15780551, 15780719, 15780889, 15781069, 15781223, 15781369, 15781543, 15781709, 15781889, 15782059, 15782233, 15782413]
theorem check17 : primorialChainCheck 4473 primorial4473 184 15779657 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 15779657 15782413 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15779657) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [15782561, 15782743, 15782917, 15783101, 15783277, 15783461, 15783641, 15783809, 15783979, 15784159, 15784343, 15784523, 15784697, 15784861, 15784981, 15785141]
theorem check18 : primorialChainCheck 4473 primorial4473 184 15782413 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 15782413 15785141 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15782413) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [15785321, 15785491, 15785629, 15785801, 15785977, 15786157, 15786311, 15786493, 15786629, 15786791, 15786973, 15787151, 15787333, 15787511, 15787657, 15787787]
theorem check19 : primorialChainCheck 4473 primorial4473 184 15785141 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 15785141 15787787 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15785141) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [15787969, 15788147, 15788299, 15788453, 15788621, 15788797, 15788953, 15789131, 15789313, 15789497, 15789677, 15789853, 15789997, 15790171, 15790321, 15790499]
theorem check20 : primorialChainCheck 4473 primorial4473 184 15787787 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 15787787 15790499 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15787787) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [15790669, 15790837, 15790991, 15791161, 15791339, 15791513, 15791693, 15791851, 15792019, 15792197, 15792367, 15792533, 15792703, 15792877, 15793049, 15793213]
theorem check21 : primorialChainCheck 4473 primorial4473 184 15790499 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 15790499 15793213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15790499) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [15793397, 15793549, 15793727, 15793909, 15794089, 15794267, 15794437, 15794621, 15794797, 15794981, 15795163, 15795347, 15795511, 15795683, 15795851, 15796031]
theorem check22 : primorialChainCheck 4473 primorial4473 184 15793213 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 15793213 15796031 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15793213) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [15796189, 15796367, 15796549, 15796727, 15796903, 15797071, 15797237, 15797413, 15797591, 15797773, 15797939, 15798119, 15798271, 15798403, 15798583, 15798749]
theorem check23 : primorialChainCheck 4473 primorial4473 184 15796031 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 15796031 15798749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15796031) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [15798919, 15799099, 15799271, 15799453, 15799633, 15799807, 15799981, 15800143, 15800299, 15800467, 15800639, 15800821, 15801001, 15801151, 15801323, 15801497]
theorem check24 : primorialChainCheck 4473 primorial4473 184 15798749 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 15798749 15801497 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15798749) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [15801677, 15801859, 15802043, 15802183, 15802327, 15802511, 15802693, 15802859, 15803017, 15803197, 15803363, 15803527, 15803663, 15803807, 15803981, 15804137]
theorem check25 : primorialChainCheck 4473 primorial4473 184 15801497 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 15801497 15804137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15801497) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [15804301, 15804469, 15804647, 15804821, 15805003, 15805159, 15805337, 15805513, 15805681, 15805843, 15806023, 15806201, 15806369, 15806533, 15806699, 15806863]
theorem check26 : primorialChainCheck 4473 primorial4473 184 15804137 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 15804137 15806863 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15804137) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [15807047, 15807203, 15807383, 15807553, 15807731, 15807907, 15808081, 15808237, 15808421, 15808601, 15808781, 15808957, 15809141, 15809293, 15809467, 15809639]
theorem check27 : primorialChainCheck 4473 primorial4473 184 15806863 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 15806863 15809639 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15806863) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [15809821, 15809977, 15810161, 15810343, 15810523, 15810703, 15810881, 15811063, 15811217, 15811399, 15811571, 15811753, 15811927, 15812051, 15812219, 15812399]
theorem check28 : primorialChainCheck 4473 primorial4473 184 15809639 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 15809639 15812399 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15809639) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [15812581, 15812723, 15812903, 15813071, 15813241, 15813419, 15813601, 15813779, 15813929, 15814109, 15814291, 15814439, 15814597, 15814781, 15814957, 15815123]
theorem check29 : primorialChainCheck 4473 primorial4473 184 15812399 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 15812399 15815123 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15812399) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [15815279, 15815461, 15815537, 15815713, 15815887, 15816061, 15816211, 15816391, 15816553, 15816673, 15816841, 15817013, 15817189, 15817363, 15817547, 15817729]
theorem check30 : primorialChainCheck 4473 primorial4473 184 15815123 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 15815123 15817729 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15815123) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [15817831, 15818003, 15818167, 15818321, 15818501, 15818683, 15818867, 15819047, 15819217, 15819373, 15819553, 15819721, 15819901, 15820069, 15820249, 15820417]
theorem check31 : primorialChainCheck 4473 primorial4473 184 15817729 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 15817729 15820417 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15817729) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 15733261 15738599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15733261)
    (mid := 15735919) (hi := 15738599) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 15738599 15744109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15738599)
    (mid := 15741293) (hi := 15744109) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 15744109 15749579 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15744109)
    (mid := 15746779) (hi := 15749579) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 15749579 15755027 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15749579)
    (mid := 15752293) (hi := 15755027) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 15755027 15760457 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15755027)
    (mid := 15757733) (hi := 15760457) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 15760457 15765863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15760457)
    (mid := 15763129) (hi := 15765863) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 15765863 15771299 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15765863)
    (mid := 15768587) (hi := 15771299) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 15771299 15776809 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15771299)
    (mid := 15774091) (hi := 15776809) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 15776809 15782413 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15776809)
    (mid := 15779657) (hi := 15782413) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 15782413 15787787 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15782413)
    (mid := 15785141) (hi := 15787787) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 15787787 15793213 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15787787)
    (mid := 15790499) (hi := 15793213) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 15793213 15798749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15793213)
    (mid := 15796031) (hi := 15798749) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 15798749 15804137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15798749)
    (mid := 15801497) (hi := 15804137) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 15804137 15809639 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15804137)
    (mid := 15806863) (hi := 15809639) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 15809639 15815123 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15809639)
    (mid := 15812399) (hi := 15815123) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 15815123 15820417 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15815123)
    (mid := 15817729) (hi := 15820417) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 15733261 15744109 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15733261)
    (mid := 15738599) (hi := 15744109) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 15744109 15755027 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15744109)
    (mid := 15749579) (hi := 15755027) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 15755027 15765863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15755027)
    (mid := 15760457) (hi := 15765863) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 15765863 15776809 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15765863)
    (mid := 15771299) (hi := 15776809) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 15776809 15787787 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15776809)
    (mid := 15782413) (hi := 15787787) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 15787787 15798749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15787787)
    (mid := 15793213) (hi := 15798749) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 15798749 15809639 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15798749)
    (mid := 15804137) (hi := 15809639) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 15809639 15820417 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15809639)
    (mid := 15815123) (hi := 15820417) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 15733261 15755027 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15733261)
    (mid := 15744109) (hi := 15755027) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 15755027 15776809 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15755027)
    (mid := 15765863) (hi := 15776809) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 15776809 15798749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15776809)
    (mid := 15787787) (hi := 15798749) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 15798749 15820417 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15798749)
    (mid := 15809639) (hi := 15820417) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 15733261 15776809 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15733261)
    (mid := 15755027) (hi := 15776809) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 15776809 15820417 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15776809)
    (mid := 15798749) (hi := 15820417) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 15733261 15820417 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15733261)
    (mid := 15776809) (hi := 15820417) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 15733261 15820417 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block179

#print axioms B699MiddleExtension.PrimorialBlocks.Block179.joined
