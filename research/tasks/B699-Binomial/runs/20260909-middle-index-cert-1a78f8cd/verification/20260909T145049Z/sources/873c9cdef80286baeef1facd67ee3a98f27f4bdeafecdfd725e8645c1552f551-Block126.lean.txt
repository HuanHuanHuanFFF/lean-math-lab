import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block126

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [11094583, 11094767, 11094949, 11095129, 11095309, 11095477, 11095649, 11095823, 11096003, 11096177, 11096347, 11096521, 11096689, 11096867, 11097041, 11097221]
theorem check0 : primorialChainCheck 4473 primorial4473 184 11094431 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 11094431 11097221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11094431) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [11097389, 11097571, 11097739, 11097917, 11098091, 11098273, 11098457, 11098639, 11098817, 11098999, 11099183, 11099353, 11099531, 11099713, 11099897, 11100079]
theorem check1 : primorialChainCheck 4473 primorial4473 184 11097221 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 11097221 11100079 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11097221) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [11100253, 11100433, 11100613, 11100787, 11100953, 11101133, 11101303, 11101471, 11101619, 11101793, 11101957, 11102141, 11102323, 11102477, 11102659, 11102843]
theorem check2 : primorialChainCheck 4473 primorial4473 184 11100079 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 11100079 11102843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11100079) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [11103019, 11103199, 11103383, 11103539, 11103689, 11103817, 11103979, 11104127, 11104307, 11104459, 11104633, 11104817, 11104997, 11105179, 11105363, 11105543]
theorem check3 : primorialChainCheck 4473 primorial4473 184 11102843 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 11102843 11105543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11102843) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [11105723, 11105903, 11106071, 11106247, 11106421, 11106581, 11106757, 11106937, 11107099, 11107277, 11107403, 11107573, 11107757, 11107939, 11108113, 11108297]
theorem check4 : primorialChainCheck 4473 primorial4473 184 11105543 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 11105543 11108297 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11105543) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [11108477, 11108659, 11108833, 11109017, 11109187, 11109367, 11109521, 11109689, 11109841, 11109983, 11110159, 11110339, 11110523, 11110669, 11110831, 11110999]
theorem check5 : primorialChainCheck 4473 primorial4473 184 11108297 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 11108297 11110999 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11108297) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [11111173, 11111341, 11111509, 11111687, 11111839, 11112019, 11112193, 11112371, 11112551, 11112733, 11112901, 11113079, 11113259, 11113441, 11113607, 11113789]
theorem check6 : primorialChainCheck 4473 primorial4473 184 11110999 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 11110999 11113789 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11110999) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [11113933, 11114113, 11114287, 11114437, 11114611, 11114783, 11114963, 11115131, 11115283, 11115427, 11115593, 11115761, 11115917, 11116099, 11116277, 11116451]
theorem check7 : primorialChainCheck 4473 primorial4473 184 11113789 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 11113789 11116451 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11113789) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [11116627, 11116811, 11116991, 11117123, 11117213, 11117387, 11117569, 11117753, 11117903, 11118071, 11118253, 11118433, 11118617, 11118797, 11118979, 11119133]
theorem check8 : primorialChainCheck 4473 primorial4473 184 11116451 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 11116451 11119133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11116451) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [11119291, 11119469, 11119637, 11119817, 11119987, 11120171, 11120353, 11120519, 11120699, 11120869, 11121041, 11121223, 11121389, 11121547, 11121731, 11121883]
theorem check9 : primorialChainCheck 4473 primorial4473 184 11119133 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 11119133 11121883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11119133) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [11122039, 11122219, 11122393, 11122567, 11122729, 11122907, 11123071, 11123251, 11123393, 11123557, 11123719, 11123887, 11124053, 11124193, 11124361, 11124539]
theorem check10 : primorialChainCheck 4473 primorial4473 184 11121883 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 11121883 11124539 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11121883) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [11124667, 11124829, 11124991, 11125171, 11125351, 11125489, 11125669, 11125853, 11126033, 11126209, 11126389, 11126561, 11126701, 11126839, 11127023, 11127169]
theorem check11 : primorialChainCheck 4473 primorial4473 184 11124539 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 11124539 11127169 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11124539) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [11127323, 11127499, 11127661, 11127839, 11128001, 11128147, 11128309, 11128487, 11128669, 11128853, 11129021, 11129191, 11129357, 11129537, 11129689, 11129873]
theorem check12 : primorialChainCheck 4473 primorial4473 184 11127169 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 11127169 11129873 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11127169) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [11130047, 11130227, 11130397, 11130569, 11130737, 11130913, 11131079, 11131249, 11131427, 11131597, 11131751, 11131927, 11132083, 11132267, 11132447, 11132629]
theorem check13 : primorialChainCheck 4473 primorial4473 184 11129873 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 11129873 11132629 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11129873) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [11132789, 11132959, 11133137, 11133319, 11133481, 11133653, 11133833, 11134009, 11134183, 11134327, 11134499, 11134661, 11134843, 11135027, 11135209, 11135339]
theorem check14 : primorialChainCheck 4473 primorial4473 184 11132629 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 11132629 11135339 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11132629) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [11135471, 11135651, 11135827, 11136007, 11136187, 11136353, 11136497, 11136647, 11136817, 11136997, 11137163, 11137337, 11137517, 11137697, 11137877, 11138053]
theorem check15 : primorialChainCheck 4473 primorial4473 184 11135339 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 11135339 11138053 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11135339) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [11138203, 11138377, 11138527, 11138711, 11138891, 11139071, 11139253, 11139431, 11139589, 11139773, 11139949, 11140111, 11140277, 11140447, 11140607, 11140777]
theorem check16 : primorialChainCheck 4473 primorial4473 184 11138053 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 11138053 11140777 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11138053) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [11140957, 11141113, 11141297, 11141447, 11141621, 11141797, 11141981, 11142107, 11142253, 11142427, 11142581, 11142763, 11142947, 11143127, 11143309, 11143487]
theorem check17 : primorialChainCheck 4473 primorial4473 184 11140777 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 11140777 11143487 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11140777) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [11143667, 11143817, 11143997, 11144153, 11144321, 11144501, 11144677, 11144839, 11145023, 11145187, 11145347, 11145521, 11145697, 11145839, 11146001, 11146181]
theorem check18 : primorialChainCheck 4473 primorial4473 184 11143487 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 11143487 11146181 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11143487) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [11146363, 11146537, 11146703, 11146873, 11147057, 11147239, 11147377, 11147561, 11147729, 11147911, 11148089, 11148271, 11148443, 11148619, 11148793, 11148967]
theorem check19 : primorialChainCheck 4473 primorial4473 184 11146181 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 11146181 11148967 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11146181) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [11149123, 11149291, 11149459, 11149631, 11149813, 11149973, 11150141, 11150323, 11150497, 11150651, 11150831, 11151001, 11151181, 11151353, 11151529, 11151709]
theorem check20 : primorialChainCheck 4473 primorial4473 184 11148967 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 11148967 11151709 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11148967) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [11151893, 11152073, 11152243, 11152417, 11152597, 11152741, 11152919, 11153099, 11153269, 11153453, 11153579, 11153759, 11153941, 11154113, 11154271, 11154449]
theorem check21 : primorialChainCheck 4473 primorial4473 184 11151709 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 11151709 11154449 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11151709) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [11154613, 11154769, 11154943, 11155127, 11155297, 11155477, 11155657, 11155841, 11156009, 11156179, 11156323, 11156507, 11156689, 11156867, 11156989, 11157169]
theorem check22 : primorialChainCheck 4473 primorial4473 184 11154449 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 11154449 11157169 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11154449) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [11157353, 11157527, 11157709, 11157889, 11158057, 11158237, 11158421, 11158523, 11158699, 11158883, 11159063, 11159233, 11159413, 11159573, 11159737, 11159921]
theorem check23 : primorialChainCheck 4473 primorial4473 184 11157169 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 11157169 11159921 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11157169) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [11160101, 11160269, 11160439, 11160613, 11160781, 11160953, 11161127, 11161301, 11161459, 11161613, 11161789, 11161967, 11162143, 11162317, 11162497, 11162681]
theorem check24 : primorialChainCheck 4473 primorial4473 184 11159921 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 11159921 11162681 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11159921) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [11162849, 11163023, 11163199, 11163371, 11163547, 11163731, 11163907, 11164091, 11164271, 11164429, 11164607, 11164781, 11164957, 11165137, 11165321, 11165491]
theorem check25 : primorialChainCheck 4473 primorial4473 184 11162681 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 11162681 11165491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11162681) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [11165659, 11165839, 11165953, 11166137, 11166289, 11166469, 11166643, 11166821, 11166923, 11167073, 11167201, 11167381, 11167561, 11167729, 11167913, 11168077]
theorem check26 : primorialChainCheck 4473 primorial4473 184 11165491 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 11165491 11168077 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11165491) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [11168237, 11168419, 11168569, 11168753, 11168909, 11169091, 11169253, 11169427, 11169563, 11169737, 11169913, 11170087, 11170219, 11170403, 11170561, 11170723]
theorem check27 : primorialChainCheck 4473 primorial4473 184 11168077 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 11168077 11170723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11168077) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [11170877, 11171059, 11171243, 11171401, 11171579, 11171761, 11171933, 11172079, 11172263, 11172443, 11172613, 11172797, 11172979, 11173153, 11173321, 11173499]
theorem check28 : primorialChainCheck 4473 primorial4473 184 11170723 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 11170723 11173499 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11170723) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [11173663, 11173829, 11174011, 11174173, 11174357, 11174533, 11174701, 11174881, 11175061, 11175223, 11175403, 11175583, 11175767, 11175943, 11176111, 11176289]
theorem check29 : primorialChainCheck 4473 primorial4473 184 11173499 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 11173499 11176289 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11173499) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [11176457, 11176637, 11176819, 11177003, 11177183, 11177363, 11177531, 11177713, 11177879, 11178053, 11178227, 11178407, 11178589, 11178763, 11178917, 11179099]
theorem check30 : primorialChainCheck 4473 primorial4473 184 11176289 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 11176289 11179099 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11176289) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [11179283, 11179463, 11179607, 11179789, 11179967, 11180131, 11180291, 11180453, 11180627, 11180809, 11180977, 11181133, 11181307, 11181491, 11181661, 11181839]
theorem check31 : primorialChainCheck 4473 primorial4473 184 11179099 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 11179099 11181839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11179099) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 11094431 11100079 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11094431)
    (mid := 11097221) (hi := 11100079) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 11100079 11105543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11100079)
    (mid := 11102843) (hi := 11105543) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 11105543 11110999 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11105543)
    (mid := 11108297) (hi := 11110999) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 11110999 11116451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11110999)
    (mid := 11113789) (hi := 11116451) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 11116451 11121883 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11116451)
    (mid := 11119133) (hi := 11121883) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 11121883 11127169 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11121883)
    (mid := 11124539) (hi := 11127169) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 11127169 11132629 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11127169)
    (mid := 11129873) (hi := 11132629) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 11132629 11138053 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11132629)
    (mid := 11135339) (hi := 11138053) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 11138053 11143487 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11138053)
    (mid := 11140777) (hi := 11143487) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 11143487 11148967 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11143487)
    (mid := 11146181) (hi := 11148967) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 11148967 11154449 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11148967)
    (mid := 11151709) (hi := 11154449) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 11154449 11159921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11154449)
    (mid := 11157169) (hi := 11159921) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 11159921 11165491 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11159921)
    (mid := 11162681) (hi := 11165491) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 11165491 11170723 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11165491)
    (mid := 11168077) (hi := 11170723) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 11170723 11176289 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11170723)
    (mid := 11173499) (hi := 11176289) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 11176289 11181839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11176289)
    (mid := 11179099) (hi := 11181839) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 11094431 11105543 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11094431)
    (mid := 11100079) (hi := 11105543) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 11105543 11116451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11105543)
    (mid := 11110999) (hi := 11116451) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 11116451 11127169 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11116451)
    (mid := 11121883) (hi := 11127169) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 11127169 11138053 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11127169)
    (mid := 11132629) (hi := 11138053) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 11138053 11148967 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11138053)
    (mid := 11143487) (hi := 11148967) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 11148967 11159921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11148967)
    (mid := 11154449) (hi := 11159921) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 11159921 11170723 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11159921)
    (mid := 11165491) (hi := 11170723) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 11170723 11181839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11170723)
    (mid := 11176289) (hi := 11181839) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 11094431 11116451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11094431)
    (mid := 11105543) (hi := 11116451) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 11116451 11138053 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11116451)
    (mid := 11127169) (hi := 11138053) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 11138053 11159921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11138053)
    (mid := 11148967) (hi := 11159921) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 11159921 11181839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11159921)
    (mid := 11170723) (hi := 11181839) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 11094431 11138053 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11094431)
    (mid := 11116451) (hi := 11138053) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 11138053 11181839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11138053)
    (mid := 11159921) (hi := 11181839) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 11094431 11181839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11094431)
    (mid := 11138053) (hi := 11181839) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 11094431 11181839 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block126

#print axioms B699MiddleExtension.PrimorialBlocks.Block126.joined
