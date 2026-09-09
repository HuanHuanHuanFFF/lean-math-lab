import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block143

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [12582929, 12583099, 12583273, 12583429, 12583609, 12583789, 12583973, 12584149, 12584323, 12584501, 12584659, 12584837, 12585017, 12585193, 12585371, 12585553]
theorem check0 : primorialChainCheck 4473 primorial4473 184 12582767 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 12582767 12585553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12582767) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [12585737, 12585889, 12586051, 12586213, 12586397, 12586571, 12586753, 12586913, 12587087, 12587269, 12587441, 12587579, 12587749, 12587929, 12588101, 12588281]
theorem check1 : primorialChainCheck 4473 primorial4473 184 12585553 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 12585553 12588281 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12585553) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [12588461, 12588643, 12588803, 12588977, 12589141, 12589319, 12589483, 12589651, 12589831, 12590009, 12590189, 12590329, 12590507, 12590671, 12590819, 12590987]
theorem check2 : primorialChainCheck 4473 primorial4473 184 12588281 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 12588281 12590987 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12588281) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [12591151, 12591323, 12591503, 12591671, 12591827, 12592001, 12592183, 12592361, 12592537, 12592721, 12592889, 12593071, 12593239, 12593419, 12593597, 12593761]
theorem check3 : primorialChainCheck 4473 primorial4473 184 12590987 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 12590987 12593761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12590987) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [12593921, 12594103, 12594269, 12594437, 12594611, 12594781, 12594949, 12595127, 12595279, 12595459, 12595637, 12595813, 12595991, 12596159, 12596327, 12596503]
theorem check4 : primorialChainCheck 4473 primorial4473 184 12593761 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 12593761 12596503 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12593761) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [12596681, 12596849, 12597029, 12597181, 12597359, 12597521, 12597679, 12597863, 12598013, 12598189, 12598373, 12598541, 12598723, 12598903, 12599087, 12599231]
theorem check5 : primorialChainCheck 4473 primorial4473 184 12596503 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 12596503 12599231 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12596503) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [12599401, 12599579, 12599761, 12599921, 12600103, 12600283, 12600463, 12600647, 12600829, 12601013, 12601189, 12601373, 12601543, 12601703, 12601847, 12602017]
theorem check6 : primorialChainCheck 4473 primorial4473 184 12599231 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 12599231 12602017 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12599231) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [12602201, 12602383, 12602563, 12602747, 12602927, 12603109, 12603259, 12603407, 12603583, 12603727, 12603911, 12604061, 12604243, 12604421, 12604597, 12604751]
theorem check7 : primorialChainCheck 4473 primorial4473 184 12602017 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 12602017 12604751 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12602017) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [12604931, 12605077, 12605261, 12605423, 12605603, 12605783, 12605947, 12606127, 12606301, 12606467, 12606641, 12606821, 12606991, 12607171, 12607351, 12607513]
theorem check8 : primorialChainCheck 4473 primorial4473 184 12604751 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 12604751 12607513 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12604751) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [12607691, 12607873, 12608051, 12608177, 12608353, 12608507, 12608683, 12608867, 12609049, 12609227, 12609367, 12609551, 12609731, 12609907, 12610079, 12610261]
theorem check9 : primorialChainCheck 4473 primorial4473 184 12607513 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 12607513 12610261 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12607513) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [12610441, 12610613, 12610789, 12610963, 12611111, 12611281, 12611461, 12611633, 12611789, 12611957, 12612139, 12612323, 12612503, 12612679, 12612851, 12613021]
theorem check10 : primorialChainCheck 4473 primorial4473 184 12610261 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 12610261 12613021 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12610261) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [12613193, 12613351, 12613501, 12613673, 12613837, 12613999, 12614113, 12614297, 12614467, 12614639, 12614821, 12614999, 12615181, 12615353, 12615517, 12615697]
theorem check11 : primorialChainCheck 4473 primorial4473 184 12613021 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 12613021 12615697 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12613021) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [12615871, 12616031, 12616207, 12616339, 12616523, 12616697, 12616861, 12617039, 12617221, 12617401, 12617569, 12617753, 12617921, 12618091, 12618259, 12618377]
theorem check12 : primorialChainCheck 4473 primorial4473 184 12615697 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 12615697 12618377 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12615697) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [12618553, 12618731, 12618911, 12619093, 12619273, 12619427, 12619589, 12619757, 12619931, 12620063, 12620243, 12620417, 12620593, 12620711, 12620891, 12621067]
theorem check13 : primorialChainCheck 4473 primorial4473 184 12618377 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 12618377 12621067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12618377) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [12621251, 12621421, 12621589, 12621767, 12621949, 12622133, 12622297, 12622481, 12622663, 12622847, 12623003, 12623089, 12623189, 12623357, 12623521, 12623669]
theorem check14 : primorialChainCheck 4473 primorial4473 184 12621067 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 12621067 12623669 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12621067) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [12623839, 12623981, 12624163, 12624331, 12624509, 12624649, 12624817, 12624991, 12625141, 12625313, 12625493, 12625661, 12625831, 12625999, 12626179, 12626363]
theorem check15 : primorialChainCheck 4473 primorial4473 184 12623669 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 12623669 12626363 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12623669) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [12626543, 12626693, 12626863, 12627011, 12627179, 12627361, 12627539, 12627721, 12627887, 12628069, 12628243, 12628423, 12628607, 12628783, 12628961, 12629131]
theorem check16 : primorialChainCheck 4473 primorial4473 184 12626363 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 12626363 12629131 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12626363) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [12629293, 12629447, 12629629, 12629807, 12629983, 12630161, 12630313, 12630487, 12630647, 12630823, 12631001, 12631183, 12631361, 12631529, 12631699, 12631877]
theorem check17 : primorialChainCheck 4473 primorial4473 184 12629131 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 12629131 12631877 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12629131) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [12632057, 12632219, 12632401, 12632569, 12632713, 12632897, 12633077, 12633253, 12633437, 12633581, 12633743, 12633911, 12634093, 12634253, 12634423, 12634607]
theorem check18 : primorialChainCheck 4473 primorial4473 184 12631877 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 12631877 12634607 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12631877) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [12634781, 12634933, 12635111, 12635291, 12635461, 12635639, 12635803, 12635977, 12636149, 12636329, 12636497, 12636641, 12636823, 12637007, 12637139, 12637297]
theorem check19 : primorialChainCheck 4473 primorial4473 184 12634607 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 12634607 12637297 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12634607) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [12637481, 12637637, 12637819, 12637993, 12638177, 12638357, 12638533, 12638699, 12638849, 12639031, 12639203, 12639379, 12639559, 12639713, 12639889, 12640037]
theorem check20 : primorialChainCheck 4473 primorial4473 184 12637297 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 12637297 12640037 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12637297) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [12640217, 12640399, 12640561, 12640709, 12640891, 12641063, 12641203, 12641381, 12641561, 12641737, 12641917, 12642083, 12642263, 12642437, 12642613, 12642793]
theorem check21 : primorialChainCheck 4473 primorial4473 184 12640037 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 12640037 12642793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12640037) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [12642919, 12643049, 12643201, 12643373, 12643549, 12643723, 12643907, 12644077, 12644239, 12644393, 12644563, 12644741, 12644921, 12645103, 12645287, 12645461]
theorem check22 : primorialChainCheck 4473 primorial4473 184 12642793 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 12642793 12645461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12642793) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [12645643, 12645821, 12646003, 12646177, 12646331, 12646499, 12646679, 12646841, 12647023, 12647197, 12647381, 12647563, 12647729, 12647909, 12648073, 12648257]
theorem check23 : primorialChainCheck 4473 primorial4473 184 12645461 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 12645461 12648257 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12645461) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [12648439, 12648613, 12648793, 12648973, 12649141, 12649319, 12649499, 12649639, 12649823, 12649993, 12650171, 12650353, 12650537, 12650711, 12650893, 12651059]
theorem check24 : primorialChainCheck 4473 primorial4473 184 12648257 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 12648257 12651059 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12648257) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [12651227, 12651407, 12651581, 12651763, 12651941, 12652109, 12652279, 12652463, 12652597, 12652751, 12652907, 12653063, 12653227, 12653357, 12653539, 12653723]
theorem check25 : primorialChainCheck 4473 primorial4473 184 12651059 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 12651059 12653723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12651059) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [12653903, 12654077, 12654251, 12654413, 12654583, 12654767, 12654949, 12655127, 12655303, 12655481, 12655651, 12655829, 12656011, 12656179, 12656363, 12656543]
theorem check26 : primorialChainCheck 4473 primorial4473 184 12653723 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 12653723 12656543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12653723) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [12656713, 12656887, 12657049, 12657223, 12657377, 12657559, 12657739, 12657913, 12658097, 12658277, 12658411, 12658577, 12658733, 12658879, 12659057, 12659219]
theorem check27 : primorialChainCheck 4473 primorial4473 184 12656543 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 12656543 12659219 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12656543) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [12659401, 12659561, 12659723, 12659897, 12660013, 12660191, 12660353, 12660523, 12660671, 12660847, 12661031, 12661213, 12661381, 12661499, 12661679, 12661853]
theorem check28 : primorialChainCheck 4473 primorial4473 184 12659219 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 12659219 12661853 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12659219) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [12662033, 12662201, 12662371, 12662549, 12662731, 12662899, 12663073, 12663251, 12663433, 12663601, 12663769, 12663949, 12664129, 12664307, 12664481, 12664607]
theorem check29 : primorialChainCheck 4473 primorial4473 184 12661853 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 12661853 12664607 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12661853) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [12664781, 12664961, 12665131, 12665311, 12665467, 12665651, 12665827, 12665987, 12666167, 12666347, 12666529, 12666701, 12666877, 12667051, 12667223, 12667387]
theorem check30 : primorialChainCheck 4473 primorial4473 184 12664607 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 12664607 12667387 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12664607) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [12667559, 12667667, 12667849, 12668021, 12668191, 12668353, 12668533, 12668717, 12668899, 12669079, 12669263, 12669439, 12669617, 12669791, 12669973, 12670139]
theorem check31 : primorialChainCheck 4473 primorial4473 184 12667387 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 12667387 12670139 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12667387) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 12582767 12588281 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12582767)
    (mid := 12585553) (hi := 12588281) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 12588281 12593761 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12588281)
    (mid := 12590987) (hi := 12593761) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 12593761 12599231 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12593761)
    (mid := 12596503) (hi := 12599231) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 12599231 12604751 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12599231)
    (mid := 12602017) (hi := 12604751) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 12604751 12610261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12604751)
    (mid := 12607513) (hi := 12610261) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 12610261 12615697 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12610261)
    (mid := 12613021) (hi := 12615697) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 12615697 12621067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12615697)
    (mid := 12618377) (hi := 12621067) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 12621067 12626363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12621067)
    (mid := 12623669) (hi := 12626363) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 12626363 12631877 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12626363)
    (mid := 12629131) (hi := 12631877) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 12631877 12637297 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12631877)
    (mid := 12634607) (hi := 12637297) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 12637297 12642793 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12637297)
    (mid := 12640037) (hi := 12642793) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 12642793 12648257 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12642793)
    (mid := 12645461) (hi := 12648257) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 12648257 12653723 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12648257)
    (mid := 12651059) (hi := 12653723) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 12653723 12659219 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12653723)
    (mid := 12656543) (hi := 12659219) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 12659219 12664607 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12659219)
    (mid := 12661853) (hi := 12664607) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 12664607 12670139 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12664607)
    (mid := 12667387) (hi := 12670139) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 12582767 12593761 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12582767)
    (mid := 12588281) (hi := 12593761) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 12593761 12604751 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12593761)
    (mid := 12599231) (hi := 12604751) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 12604751 12615697 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12604751)
    (mid := 12610261) (hi := 12615697) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 12615697 12626363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12615697)
    (mid := 12621067) (hi := 12626363) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 12626363 12637297 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12626363)
    (mid := 12631877) (hi := 12637297) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 12637297 12648257 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12637297)
    (mid := 12642793) (hi := 12648257) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 12648257 12659219 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12648257)
    (mid := 12653723) (hi := 12659219) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 12659219 12670139 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12659219)
    (mid := 12664607) (hi := 12670139) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 12582767 12604751 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12582767)
    (mid := 12593761) (hi := 12604751) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 12604751 12626363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12604751)
    (mid := 12615697) (hi := 12626363) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 12626363 12648257 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12626363)
    (mid := 12637297) (hi := 12648257) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 12648257 12670139 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12648257)
    (mid := 12659219) (hi := 12670139) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 12582767 12626363 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12582767)
    (mid := 12604751) (hi := 12626363) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 12626363 12670139 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12626363)
    (mid := 12648257) (hi := 12670139) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 12582767 12670139 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12582767)
    (mid := 12626363) (hi := 12670139) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 12582767 12670139 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block143

#print axioms B699MiddleExtension.PrimorialBlocks.Block143.joined
