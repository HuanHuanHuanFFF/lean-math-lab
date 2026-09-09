import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block148

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [13020613, 13020779, 13020911, 13021079, 13021247, 13021429, 13021607, 13021777, 13021927, 13022099, 13022267, 13022441, 13022609, 13022777, 13022959, 13023133]
theorem check0 : primorialChainCheck 4473 primorial4473 184 13020431 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 13020431 13023133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13020431) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [13023289, 13023457, 13023641, 13023809, 13023991, 13024153, 13024337, 13024513, 13024679, 13024853, 13025027, 13025209, 13025359, 13025527, 13025707, 13025807]
theorem check1 : primorialChainCheck 4473 primorial4473 184 13023133 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 13023133 13025807 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13023133) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [13025989, 13026137, 13026319, 13026493, 13026667, 13026833, 13027013, 13027181, 13027349, 13027523, 13027697, 13027871, 13028027, 13028207, 13028387, 13028539]
theorem check2 : primorialChainCheck 4473 primorial4473 184 13025807 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 13025807 13028539 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13025807) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [13028707, 13028881, 13029061, 13029241, 13029407, 13029581, 13029761, 13029943, 13030123, 13030307, 13030487, 13030651, 13030793, 13030973, 13031101, 13031261]
theorem check3 : primorialChainCheck 4473 primorial4473 184 13028539 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 13028539 13031261 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13028539) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [13031443, 13031621, 13031797, 13031981, 13032143, 13032317, 13032479, 13032653, 13032809, 13032979, 13033109, 13033289, 13033469, 13033651, 13033831, 13034011]
theorem check4 : primorialChainCheck 4473 primorial4473 184 13031261 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 13031261 13034011 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13031261) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [13034191, 13034363, 13034521, 13034689, 13034837, 13035013, 13035193, 13035361, 13035523, 13035707, 13035887, 13036043, 13036217, 13036379, 13036553, 13036721]
theorem check5 : primorialChainCheck 4473 primorial4473 184 13034011 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 13034011 13036721 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13034011) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [13036901, 13037071, 13037237, 13037411, 13037569, 13037749, 13037911, 13038089, 13038257, 13038437, 13038611, 13038757, 13038931, 13039109, 13039291, 13039441]
theorem check6 : primorialChainCheck 4473 primorial4473 184 13036721 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 13036721 13039441 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13036721) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [13039603, 13039777, 13039951, 13040123, 13040297, 13040449, 13040627, 13040789, 13040959, 13041143, 13041323, 13041487, 13041661, 13041841, 13042013, 13042163]
theorem check7 : primorialChainCheck 4473 primorial4473 184 13039441 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 13039441 13042163 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13039441) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [13042339, 13042517, 13042697, 13042853, 13042999, 13043183, 13043341, 13043497, 13043677, 13043857, 13044037, 13044217, 13044377, 13044557, 13044701, 13044883]
theorem check8 : primorialChainCheck 4473 primorial4473 184 13042163 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 13042163 13044883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13042163) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [13045061, 13045237, 13045391, 13045573, 13045751, 13045933, 13046113, 13046279, 13046461, 13046623, 13046807, 13046987, 13047163, 13047329, 13047511, 13047691]
theorem check9 : primorialChainCheck 4473 primorial4473 184 13044883 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 13044883 13047691 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13044883) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [13047871, 13048051, 13048213, 13048339, 13048507, 13048681, 13048831, 13048999, 13049147, 13049317, 13049497, 13049677, 13049843, 13049987, 13050133, 13050299]
theorem check10 : primorialChainCheck 4473 primorial4473 184 13047691 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 13047691 13050299 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13047691) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [13050437, 13050617, 13050797, 13050953, 13051123, 13051307, 13051487, 13051657, 13051823, 13052003, 13052167, 13052341, 13052513, 13052659, 13052843, 13053017]
theorem check11 : primorialChainCheck 4473 primorial4473 184 13050299 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 13050299 13053017 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13050299) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [13053191, 13053373, 13053527, 13053707, 13053877, 13054057, 13054231, 13054411, 13054583, 13054763, 13054931, 13055113, 13055293, 13055477, 13055659, 13055843]
theorem check12 : primorialChainCheck 4473 primorial4473 184 13053017 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 13053017 13055843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13053017) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [13056023, 13056167, 13056349, 13056499, 13056677, 13056839, 13057021, 13057201, 13057379, 13057543, 13057711, 13057841, 13058011, 13058191, 13058371, 13058543]
theorem check13 : primorialChainCheck 4473 primorial4473 184 13055843 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 13055843 13058543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13055843) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [13058701, 13058879, 13059049, 13059227, 13059391, 13059547, 13059691, 13059863, 13060013, 13060193, 13060373, 13060549, 13060687, 13060871, 13061053, 13061203]
theorem check14 : primorialChainCheck 4473 primorial4473 184 13058543 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 13058543 13061203 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13058543) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [13061371, 13061527, 13061681, 13061857, 13062041, 13062211, 13062349, 13062529, 13062701, 13062877, 13063049, 13063229, 13063411, 13063573, 13063733, 13063913]
theorem check15 : primorialChainCheck 4473 primorial4473 184 13061203 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 13061203 13063913 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13061203) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [13064089, 13064273, 13064453, 13064633, 13064813, 13064983, 13065149, 13065323, 13065497, 13065659, 13065841, 13065991, 13066169, 13066351, 13066499, 13066657]
theorem check16 : primorialChainCheck 4473 primorial4473 184 13063913 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 13063913 13066657 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13063913) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [13066831, 13067011, 13067167, 13067323, 13067491, 13067669, 13067843, 13068007, 13068179, 13068361, 13068527, 13068703, 13068877, 13069051, 13069229, 13069411]
theorem check17 : primorialChainCheck 4473 primorial4473 184 13066657 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 13066657 13069411 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13066657) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [13069579, 13069759, 13069933, 13070111, 13070269, 13070419, 13070599, 13070767, 13070903, 13071073, 13071241, 13071413, 13071559, 13071733, 13071917, 13072093]
theorem check18 : primorialChainCheck 4473 primorial4473 184 13069411 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 13069411 13072093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13069411) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [13072273, 13072457, 13072639, 13072799, 13072967, 13073149, 13073329, 13073513, 13073681, 13073831, 13074007, 13074181, 13074353, 13074497, 13074673, 13074857]
theorem check19 : primorialChainCheck 4473 primorial4473 184 13072093 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 13072093 13074857 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13072093) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [13075033, 13075207, 13075379, 13075529, 13075709, 13075889, 13076053, 13076233, 13076381, 13076561, 13076737, 13076891, 13077067, 13077227, 13077373, 13077557]
theorem check20 : primorialChainCheck 4473 primorial4473 184 13074857 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 13074857 13077557 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13074857) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [13077733, 13077917, 13078097, 13078243, 13078411, 13078573, 13078721, 13078903, 13079083, 13079243, 13079419, 13079597, 13079777, 13079947, 13080103, 13080283]
theorem check21 : primorialChainCheck 4473 primorial4473 184 13077557 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 13077557 13080283 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13077557) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [13080467, 13080649, 13080833, 13080989, 13081153, 13081333, 13081507, 13081667, 13081841, 13082023, 13082207, 13082387, 13082557, 13082737, 13082921, 13083071]
theorem check22 : primorialChainCheck 4473 primorial4473 184 13080283 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 13080283 13083071 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13080283) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [13083233, 13083409, 13083593, 13083773, 13083937, 13084117, 13084297, 13084457, 13084633, 13084807, 13084987, 13085159, 13085339, 13085521, 13085701, 13085879]
theorem check23 : primorialChainCheck 4473 primorial4473 184 13083071 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 13083071 13085879 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13083071) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [13086037, 13086211, 13086347, 13086529, 13086713, 13086893, 13087073, 13087213, 13087387, 13087559, 13087727, 13087871, 13088051, 13088233, 13088407, 13088591]
theorem check24 : primorialChainCheck 4473 primorial4473 184 13085879 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 13085879 13088591 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13085879) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [13088767, 13088939, 13089113, 13089281, 13089451, 13089617, 13089787, 13089959, 13090127, 13090309, 13090481, 13090633, 13090793, 13090967, 13091147, 13091329]
theorem check25 : primorialChainCheck 4473 primorial4473 184 13088591 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 13088591 13091329 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13088591) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [13091503, 13091677, 13091849, 13091987, 13092169, 13092257, 13092437, 13092559, 13092713, 13092887, 13093021, 13093169, 13093277, 13093453, 13093571, 13093753]
theorem check26 : primorialChainCheck 4473 primorial4473 184 13091329 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 13091329 13093753 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13091329) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [13093931, 13094099, 13094281, 13094461, 13094639, 13094821, 13095001, 13095179, 13095347, 13095529, 13095707, 13095881, 13096019, 13096199, 13096379, 13096547]
theorem check27 : primorialChainCheck 4473 primorial4473 184 13093753 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 13093753 13096547 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13093753) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [13096723, 13096847, 13097011, 13097179, 13097363, 13097533, 13097713, 13097893, 13098073, 13098257, 13098439, 13098611, 13098793, 13098973, 13099153, 13099337]
theorem check28 : primorialChainCheck 4473 primorial4473 184 13096547 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 13096547 13099337 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13096547) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [13099519, 13099687, 13099871, 13100051, 13100233, 13100401, 13100579, 13100749, 13100933, 13101097, 13101259, 13101443, 13101617, 13101797, 13101943, 13102099]
theorem check29 : primorialChainCheck 4473 primorial4473 184 13099337 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 13099337 13102099 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13099337) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [13102283, 13102459, 13102633, 13102807, 13102981, 13103161, 13103341, 13103509, 13103683, 13103861, 13104037, 13104209, 13104389, 13104571, 13104719, 13104901]
theorem check30 : primorialChainCheck 4473 primorial4473 184 13102099 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 13102099 13104901 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13102099) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [13105051, 13105217, 13105399, 13105579, 13105753, 13105921, 13106059, 13106243, 13106417, 13106591, 13106771, 13106911, 13107089, 13107251, 13107433, 13107581]
theorem check31 : primorialChainCheck 4473 primorial4473 184 13104901 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 13104901 13107581 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13104901) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 13020431 13025807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13020431)
    (mid := 13023133) (hi := 13025807) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 13025807 13031261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13025807)
    (mid := 13028539) (hi := 13031261) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 13031261 13036721 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13031261)
    (mid := 13034011) (hi := 13036721) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 13036721 13042163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13036721)
    (mid := 13039441) (hi := 13042163) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 13042163 13047691 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13042163)
    (mid := 13044883) (hi := 13047691) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 13047691 13053017 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13047691)
    (mid := 13050299) (hi := 13053017) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 13053017 13058543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13053017)
    (mid := 13055843) (hi := 13058543) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 13058543 13063913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13058543)
    (mid := 13061203) (hi := 13063913) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 13063913 13069411 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13063913)
    (mid := 13066657) (hi := 13069411) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 13069411 13074857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13069411)
    (mid := 13072093) (hi := 13074857) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 13074857 13080283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13074857)
    (mid := 13077557) (hi := 13080283) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 13080283 13085879 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13080283)
    (mid := 13083071) (hi := 13085879) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 13085879 13091329 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13085879)
    (mid := 13088591) (hi := 13091329) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 13091329 13096547 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13091329)
    (mid := 13093753) (hi := 13096547) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 13096547 13102099 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13096547)
    (mid := 13099337) (hi := 13102099) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 13102099 13107581 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13102099)
    (mid := 13104901) (hi := 13107581) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 13020431 13031261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13020431)
    (mid := 13025807) (hi := 13031261) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 13031261 13042163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13031261)
    (mid := 13036721) (hi := 13042163) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 13042163 13053017 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13042163)
    (mid := 13047691) (hi := 13053017) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 13053017 13063913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13053017)
    (mid := 13058543) (hi := 13063913) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 13063913 13074857 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13063913)
    (mid := 13069411) (hi := 13074857) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 13074857 13085879 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13074857)
    (mid := 13080283) (hi := 13085879) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 13085879 13096547 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13085879)
    (mid := 13091329) (hi := 13096547) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 13096547 13107581 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13096547)
    (mid := 13102099) (hi := 13107581) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 13020431 13042163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13020431)
    (mid := 13031261) (hi := 13042163) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 13042163 13063913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13042163)
    (mid := 13053017) (hi := 13063913) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 13063913 13085879 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13063913)
    (mid := 13074857) (hi := 13085879) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 13085879 13107581 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13085879)
    (mid := 13096547) (hi := 13107581) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 13020431 13063913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13020431)
    (mid := 13042163) (hi := 13063913) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 13063913 13107581 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13063913)
    (mid := 13085879) (hi := 13107581) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 13020431 13107581 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13020431)
    (mid := 13063913) (hi := 13107581) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 13020431 13107581 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block148

#print axioms B699MiddleExtension.PrimorialBlocks.Block148.joined
