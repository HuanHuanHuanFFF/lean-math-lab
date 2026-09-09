import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block106

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [9342391, 9342559, 9342743, 9342917, 9343099, 9343283, 9343457, 9343639, 9343793, 9343969, 9344149, 9344329, 9344513, 9344677, 9344851, 9345029]
theorem check0 : primorialChainCheck 4473 primorial4473 184 9342239 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 9342239 9345029 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9342239) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [9345209, 9345377, 9345559, 9345709, 9345893, 9346063, 9346247, 9346429, 9346577, 9346759, 9346927, 9347111, 9347293, 9347477, 9347659, 9347839]
theorem check1 : primorialChainCheck 4473 primorial4473 184 9345029 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 9345029 9347839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9345029) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [9348023, 9348203, 9348379, 9348529, 9348683, 9348847, 9349019, 9349187, 9349367, 9349547, 9349727, 9349859, 9350041, 9350191, 9350353, 9350521]
theorem check2 : primorialChainCheck 4473 primorial4473 184 9347839 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 9347839 9350521 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9347839) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [9350699, 9350879, 9351053, 9351229, 9351383, 9351557, 9351737, 9351917, 9352097, 9352271, 9352429, 9352613, 9352781, 9352949, 9353107, 9353291]
theorem check3 : primorialChainCheck 4473 primorial4473 184 9350521 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 9350521 9353291 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9350521) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [9353473, 9353657, 9353831, 9353977, 9354161, 9354329, 9354503, 9354679, 9354827, 9354991, 9355153, 9355309, 9355483, 9355651, 9355817, 9355993]
theorem check4 : primorialChainCheck 4473 primorial4473 184 9353291 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 9353291 9355993 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9353291) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [9356177, 9356351, 9356521, 9356701, 9356861, 9357037, 9357197, 9357377, 9357547, 9357731, 9357913, 9358081, 9358231, 9358411, 9358589, 9358751]
theorem check5 : primorialChainCheck 4473 primorial4473 184 9355993 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 9355993 9358751 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9355993) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [9358933, 9359101, 9359281, 9359461, 9359633, 9359813, 9359983, 9360083, 9360229, 9360413, 9360577, 9360739, 9360919, 9361103, 9361277, 9361459]
theorem check6 : primorialChainCheck 4473 primorial4473 184 9358751 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 9358751 9361459 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9358751) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [9361633, 9361811, 9361991, 9362167, 9362351, 9362531, 9362693, 9362867, 9363041, 9363223, 9363383, 9363533, 9363709, 9363883, 9364051, 9364213]
theorem check7 : primorialChainCheck 4473 primorial4473 184 9361459 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 9361459 9364213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9361459) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [9364393, 9364571, 9364727, 9364907, 9365077, 9365221, 9365399, 9365569, 9365749, 9365903, 9366059, 9366233, 9366397, 9366559, 9366719, 9366859]
theorem check8 : primorialChainCheck 4473 primorial4473 184 9364213 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 9364213 9366859 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9364213) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [9367027, 9367207, 9367381, 9367559, 9367717, 9367849, 9368011, 9368179, 9368351, 9368519, 9368693, 9368837, 9369013, 9369187, 9369343, 9369491]
theorem check9 : primorialChainCheck 4473 primorial4473 184 9366859 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 9366859 9369491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9366859) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [9369673, 9369821, 9369989, 9370171, 9370351, 9370523, 9370703, 9370883, 9371053, 9371231, 9371413, 9371597, 9371749, 9371933, 9372113, 9372289]
theorem check10 : primorialChainCheck 4473 primorial4473 184 9369491 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 9369491 9372289 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9369491) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [9372463, 9372647, 9372827, 9372991, 9373141, 9373319, 9373499, 9373667, 9373841, 9374023, 9374173, 9374347, 9374507, 9374669, 9374839, 9375017]
theorem check11 : primorialChainCheck 4473 primorial4473 184 9372289 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 9372289 9375017 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9372289) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [9375193, 9375371, 9375533, 9375713, 9375893, 9376069, 9376219, 9376403, 9376573, 9376753, 9376931, 9377113, 9377297, 9377471, 9377651, 9377821]
theorem check12 : primorialChainCheck 4473 primorial4473 184 9375017 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 9375017 9377821 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9375017) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [9377993, 9378163, 9378329, 9378511, 9378667, 9378851, 9379021, 9379199, 9379379, 9379553, 9379717, 9379873, 9380057, 9380237, 9380359, 9380531]
theorem check13 : primorialChainCheck 4473 primorial4473 184 9377821 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 9377821 9380531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9377821) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [9380681, 9380863, 9381037, 9381209, 9381391, 9381571, 9381751, 9381919, 9382103, 9382273, 9382433, 9382609, 9382787, 9382969, 9383107, 9383281]
theorem check14 : primorialChainCheck 4473 primorial4473 184 9380531 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 9380531 9383281 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9380531) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [9383453, 9383623, 9383807, 9383987, 9384149, 9384329, 9384491, 9384671, 9384853, 9385027, 9385199, 9385367, 9385511, 9385693, 9385861, 9386021]
theorem check15 : primorialChainCheck 4473 primorial4473 184 9383281 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 9383281 9386021 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9383281) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [9386203, 9386383, 9386537, 9386711, 9386879, 9387061, 9387241, 9387421, 9387589, 9387773, 9387949, 9388111, 9388277, 9388459, 9388619, 9388801]
theorem check16 : primorialChainCheck 4473 primorial4473 184 9386021 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 9386021 9388801 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9386021) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [9388979, 9389161, 9389339, 9389489, 9389671, 9389827, 9389987, 9390151, 9390331, 9390497, 9390679, 9390863, 9391033, 9391183, 9391363, 9391541]
theorem check17 : primorialChainCheck 4473 primorial4473 184 9388801 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 9388801 9391541 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9388801) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [9391717, 9391883, 9392063, 9392237, 9392417, 9392563, 9392729, 9392909, 9393089, 9393271, 9393437, 9393569, 9393751, 9393929, 9394109, 9394277]
theorem check18 : primorialChainCheck 4473 primorial4473 184 9391541 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 9391541 9394277 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9391541) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [9394447, 9394631, 9394813, 9394997, 9395179, 9395357, 9395539, 9395717, 9395873, 9396047, 9396229, 9396407, 9396577, 9396743, 9396917, 9397067]
theorem check19 : primorialChainCheck 4473 primorial4473 184 9394277 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 9394277 9397067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9394277) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [9397237, 9397417, 9397561, 9397709, 9397891, 9398069, 9398251, 9398429, 9398579, 9398737, 9398911, 9399083, 9399253, 9399437, 9399601, 9399781]
theorem check20 : primorialChainCheck 4473 primorial4473 184 9397067 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 9397067 9399781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9397067) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [9399959, 9400121, 9400277, 9400397, 9400571, 9400747, 9400927, 9401107, 9401279, 9401419, 9401569, 9401753, 9401921, 9402103, 9402287, 9402461]
theorem check21 : primorialChainCheck 4473 primorial4473 184 9399781 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 9399781 9402461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9399781) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [9402643, 9402803, 9402983, 9403139, 9403301, 9403469, 9403649, 9403813, 9403997, 9404177, 9404357, 9404537, 9404699, 9404881, 9405061, 9405241]
theorem check22 : primorialChainCheck 4473 primorial4473 184 9402461 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 9402461 9405241 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9402461) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [9405421, 9405601, 9405763, 9405911, 9406091, 9406259, 9406427, 9406601, 9406777, 9406961, 9407143, 9407317, 9407479, 9407639, 9407821, 9407971]
theorem check23 : primorialChainCheck 4473 primorial4473 184 9405241 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 9405241 9407971 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9405241) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [9408149, 9408331, 9408433, 9408611, 9408757, 9408913, 9409073, 9409247, 9409429, 9409607, 9409759, 9409943, 9410117, 9410273, 9410449, 9410633]
theorem check24 : primorialChainCheck 4473 primorial4473 184 9407971 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 9407971 9410633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9407971) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [9410813, 9410983, 9411161, 9411343, 9411511, 9411617, 9411799, 9411977, 9412157, 9412303, 9412471, 9412649, 9412817, 9412993, 9413177, 9413353]
theorem check25 : primorialChainCheck 4473 primorial4473 184 9410633 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 9410633 9413353 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9410633) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [9413533, 9413717, 9413897, 9414079, 9414263, 9414437, 9414619, 9414791, 9414949, 9415129, 9415313, 9415489, 9415673, 9415843, 9415969, 9416137]
theorem check26 : primorialChainCheck 4473 primorial4473 184 9413353 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 9413353 9416137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9413353) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [9416299, 9416483, 9416639, 9416819, 9416983, 9417157, 9417329, 9417497, 9417671, 9417841, 9418009, 9418177, 9418349, 9418531, 9418711, 9418883]
theorem check27 : primorialChainCheck 4473 primorial4473 184 9416137 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 9416137 9418883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9416137) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [9419063, 9419239, 9419419, 9419593, 9419771, 9419951, 9420127, 9420293, 9420451, 9420629, 9420811, 9420959, 9421129, 9421309, 9421493, 9421673]
theorem check28 : primorialChainCheck 4473 primorial4473 184 9418883 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 9418883 9421673 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9418883) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [9421849, 9422027, 9422201, 9422363, 9422533, 9422717, 9422887, 9423061, 9423233, 9423413, 9423581, 9423761, 9423929, 9424099, 9424277, 9424433]
theorem check29 : primorialChainCheck 4473 primorial4473 184 9421673 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 9421673 9424433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9421673) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [9424609, 9424781, 9424949, 9425113, 9425287, 9425447, 9425629, 9425797, 9425963, 9426107, 9426289, 9426467, 9426643, 9426817, 9426997, 9427181]
theorem check30 : primorialChainCheck 4473 primorial4473 184 9424433 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 9424433 9427181 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9424433) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [9427357, 9427541, 9427687, 9427853, 9428033, 9428213, 9428359, 9428543, 9428707, 9428879, 9429041, 9429223, 9429397, 9429569, 9429731, 9429913]
theorem check31 : primorialChainCheck 4473 primorial4473 184 9427181 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 9427181 9429913 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9427181) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 9342239 9347839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9342239)
    (mid := 9345029) (hi := 9347839) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 9347839 9353291 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9347839)
    (mid := 9350521) (hi := 9353291) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 9353291 9358751 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9353291)
    (mid := 9355993) (hi := 9358751) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 9358751 9364213 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9358751)
    (mid := 9361459) (hi := 9364213) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 9364213 9369491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9364213)
    (mid := 9366859) (hi := 9369491) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 9369491 9375017 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9369491)
    (mid := 9372289) (hi := 9375017) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 9375017 9380531 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9375017)
    (mid := 9377821) (hi := 9380531) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 9380531 9386021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9380531)
    (mid := 9383281) (hi := 9386021) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 9386021 9391541 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9386021)
    (mid := 9388801) (hi := 9391541) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 9391541 9397067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9391541)
    (mid := 9394277) (hi := 9397067) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 9397067 9402461 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9397067)
    (mid := 9399781) (hi := 9402461) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 9402461 9407971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9402461)
    (mid := 9405241) (hi := 9407971) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 9407971 9413353 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9407971)
    (mid := 9410633) (hi := 9413353) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 9413353 9418883 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9413353)
    (mid := 9416137) (hi := 9418883) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 9418883 9424433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9418883)
    (mid := 9421673) (hi := 9424433) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 9424433 9429913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9424433)
    (mid := 9427181) (hi := 9429913) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 9342239 9353291 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9342239)
    (mid := 9347839) (hi := 9353291) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 9353291 9364213 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9353291)
    (mid := 9358751) (hi := 9364213) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 9364213 9375017 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9364213)
    (mid := 9369491) (hi := 9375017) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 9375017 9386021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9375017)
    (mid := 9380531) (hi := 9386021) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 9386021 9397067 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9386021)
    (mid := 9391541) (hi := 9397067) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 9397067 9407971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9397067)
    (mid := 9402461) (hi := 9407971) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 9407971 9418883 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9407971)
    (mid := 9413353) (hi := 9418883) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 9418883 9429913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9418883)
    (mid := 9424433) (hi := 9429913) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 9342239 9364213 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9342239)
    (mid := 9353291) (hi := 9364213) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 9364213 9386021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9364213)
    (mid := 9375017) (hi := 9386021) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 9386021 9407971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9386021)
    (mid := 9397067) (hi := 9407971) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 9407971 9429913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9407971)
    (mid := 9418883) (hi := 9429913) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 9342239 9386021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9342239)
    (mid := 9364213) (hi := 9386021) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 9386021 9429913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9386021)
    (mid := 9407971) (hi := 9429913) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 9342239 9429913 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9342239)
    (mid := 9386021) (hi := 9429913) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 9342239 9429913 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block106

#print axioms B699MiddleExtension.PrimorialBlocks.Block106.joined
