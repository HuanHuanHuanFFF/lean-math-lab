import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block162

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [14246429, 14246597, 14246773, 14246957, 14247133, 14247313, 14247469, 14247647, 14247829, 14248009, 14248187, 14248369, 14248529, 14248691, 14248847, 14249023]
theorem check0 : primorialChainCheck 4473 primorial4473 184 14246261 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 14246261 14249023 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14246261) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [14249201, 14249377, 14249561, 14249743, 14249909, 14250079, 14250263, 14250443, 14250619, 14250791, 14250959, 14251141, 14251319, 14251493, 14251667, 14251849]
theorem check1 : primorialChainCheck 4473 primorial4473 184 14249023 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 14249023 14251849 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14249023) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [14252027, 14252209, 14252383, 14252561, 14252701, 14252879, 14253047, 14253227, 14253409, 14253593, 14253739, 14253919, 14254103, 14254277, 14254453, 14254633]
theorem check2 : primorialChainCheck 4473 primorial4473 184 14251849 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 14251849 14254633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14251849) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [14254817, 14254991, 14255161, 14255341, 14255497, 14255677, 14255861, 14256043, 14256227, 14256391, 14256563, 14256743, 14256923, 14257081, 14257259, 14257423]
theorem check3 : primorialChainCheck 4473 primorial4473 184 14254633 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 14254633 14257423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14254633) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [14257603, 14257777, 14257949, 14258131, 14258311, 14258479, 14258659, 14258837, 14259019, 14259199, 14259373, 14259551, 14259733, 14259901, 14260073, 14260249]
theorem check4 : primorialChainCheck 4473 primorial4473 184 14257423 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 14257423 14260249 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14257423) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [14260417, 14260601, 14260783, 14260951, 14261119, 14261263, 14261447, 14261579, 14261749, 14261921, 14262091, 14262253, 14262433, 14262617, 14262791, 14262923]
theorem check5 : primorialChainCheck 4473 primorial4473 184 14260249 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 14260249 14262923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14260249) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [14263087, 14263267, 14263451, 14263619, 14263789, 14263961, 14264137, 14264321, 14264461, 14264633, 14264797, 14264969, 14265151, 14265323, 14265481, 14265661]
theorem check6 : primorialChainCheck 4473 primorial4473 184 14262923 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 14262923 14265661 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14262923) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [14265833, 14265997, 14266181, 14266361, 14266529, 14266687, 14266829, 14267009, 14267191, 14267371, 14267543, 14267711, 14267893, 14268071, 14268239, 14268407]
theorem check7 : primorialChainCheck 4473 primorial4473 184 14265661 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 14265661 14268407 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14265661) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [14268581, 14268757, 14268929, 14269109, 14269291, 14269471, 14269639, 14269819, 14269991, 14270167, 14270351, 14270533, 14270717, 14270899, 14271083, 14271251]
theorem check8 : primorialChainCheck 4473 primorial4473 184 14268407 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 14268407 14271251 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14268407) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [14271419, 14271599, 14271757, 14271941, 14272091, 14272201, 14272339, 14272519, 14272703, 14272831, 14273011, 14273177, 14273359, 14273543, 14273723, 14273899]
theorem check9 : primorialChainCheck 4473 primorial4473 184 14271251 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 14271251 14273899 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14271251) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [14274083, 14274259, 14274439, 14274613, 14274797, 14274971, 14275139, 14275321, 14275501, 14275649, 14275823, 14275981, 14276131, 14276309, 14276489, 14276659]
theorem check10 : primorialChainCheck 4473 primorial4473 184 14273899 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 14273899 14276659 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14273899) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [14276839, 14277017, 14277199, 14277359, 14277539, 14277719, 14277899, 14278057, 14278217, 14278399, 14278549, 14278729, 14278907, 14279087, 14279267, 14279443]
theorem check11 : primorialChainCheck 4473 primorial4473 184 14276659 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 14276659 14279443 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14276659) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [14279599, 14279761, 14279929, 14280109, 14280271, 14280451, 14280613, 14280787, 14280961, 14281133, 14281313, 14281493, 14281661, 14281831, 14282003, 14282171]
theorem check12 : primorialChainCheck 4473 primorial4473 184 14279443 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 14279443 14282171 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14279443) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [14282353, 14282531, 14282677, 14282833, 14283013, 14283197, 14283377, 14283559, 14283733, 14283917, 14284079, 14284261, 14284433, 14284603, 14284763, 14284943]
theorem check13 : primorialChainCheck 4473 primorial4473 184 14282171 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 14282171 14284943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14282171) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [14285111, 14285291, 14285471, 14285639, 14285749, 14285927, 14286109, 14286287, 14286469, 14286653, 14286809, 14286989, 14287151, 14287313, 14287489, 14287657]
theorem check14 : primorialChainCheck 4473 primorial4473 184 14284943 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 14284943 14287657 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14284943) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [14287813, 14287979, 14288161, 14288333, 14288507, 14288671, 14288849, 14289013, 14289193, 14289377, 14289557, 14289731, 14289907, 14290091, 14290273, 14290453]
theorem check15 : primorialChainCheck 4473 primorial4473 184 14287657 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 14287657 14290453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14287657) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [14290637, 14290799, 14290979, 14291161, 14291327, 14291491, 14291659, 14291839, 14292007, 14292169, 14292319, 14292479, 14292571, 14292749, 14292931, 14293109]
theorem check16 : primorialChainCheck 4473 primorial4473 184 14290453 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 14290453 14293109 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14290453) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [14293291, 14293471, 14293639, 14293819, 14293997, 14294179, 14294353, 14294521, 14294681, 14294857, 14295031, 14295143, 14295311, 14295481, 14295613, 14295791]
theorem check17 : primorialChainCheck 4473 primorial4473 184 14293109 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 14293109 14295791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14293109) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [14295973, 14296157, 14296327, 14296481, 14296663, 14296829, 14297011, 14297159, 14297299, 14297477, 14297659, 14297839, 14298023, 14298187, 14298371, 14298541]
theorem check18 : primorialChainCheck 4473 primorial4473 184 14295791 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 14295791 14298541 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14295791) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [14298703, 14298883, 14299067, 14299249, 14299433, 14299603, 14299783, 14299963, 14300147, 14300329, 14300497, 14300653, 14300809, 14300989, 14301173, 14301349]
theorem check19 : primorialChainCheck 4473 primorial4473 184 14298541 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 14298541 14301349 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14298541) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [14301523, 14301691, 14301871, 14302039, 14302207, 14302373, 14302549, 14302699, 14302843, 14303027, 14303197, 14303363, 14303533, 14303701, 14303869, 14304049]
theorem check20 : primorialChainCheck 4473 primorial4473 184 14301349 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 14301349 14304049 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14301349) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [14304233, 14304383, 14304503, 14304679, 14304863, 14305019, 14305201, 14305373, 14305523, 14305703, 14305877, 14306051, 14306203, 14306381, 14306561, 14306729]
theorem check21 : primorialChainCheck 4473 primorial4473 184 14304049 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 14304049 14306729 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14304049) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [14306893, 14307071, 14307239, 14307413, 14307581, 14307757, 14307919, 14308061, 14308241, 14308423, 14308601, 14308759, 14308939, 14309111, 14309293, 14309459]
theorem check22 : primorialChainCheck 4473 primorial4473 184 14306729 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 14306729 14309459 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14306729) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [14309623, 14309791, 14309969, 14310151, 14310319, 14310503, 14310683, 14310839, 14311019, 14311189, 14311361, 14311523, 14311697, 14311879, 14312047, 14312231]
theorem check23 : primorialChainCheck 4473 primorial4473 184 14309459 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 14309459 14312231 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14309459) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [14312411, 14312569, 14312743, 14312911, 14313077, 14313253, 14313437, 14313587, 14313769, 14313953, 14314133, 14314291, 14314463, 14314633, 14314801, 14314981]
theorem check24 : primorialChainCheck 4473 primorial4473 184 14312231 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 14312231 14314981 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14312231) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [14315143, 14315321, 14315503, 14315629, 14315813, 14315993, 14316167, 14316349, 14316509, 14316689, 14316871, 14317031, 14317211, 14317379, 14317549, 14317717]
theorem check25 : primorialChainCheck 4473 primorial4473 184 14314981 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 14314981 14317717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14314981) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [14317889, 14318071, 14318237, 14318417, 14318561, 14318737, 14318921, 14319101, 14319281, 14319451, 14319623, 14319793, 14319971, 14320153, 14320321, 14320489]
theorem check26 : primorialChainCheck 4473 primorial4473 184 14317717 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 14317717 14320489 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14317717) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [14320673, 14320847, 14320993, 14321171, 14321353, 14321533, 14321711, 14321873, 14322043, 14322223, 14322401, 14322577, 14322761, 14322943, 14323123, 14323307]
theorem check27 : primorialChainCheck 4473 primorial4473 184 14320489 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 14320489 14323307 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14320489) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [14323483, 14323667, 14323849, 14324029, 14324207, 14324383, 14324549, 14324731, 14324911, 14325089, 14325263, 14325439, 14325617, 14325749, 14325931, 14326099]
theorem check28 : primorialChainCheck 4473 primorial4473 184 14323307 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 14323307 14326099 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14323307) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [14326259, 14326441, 14326621, 14326787, 14326967, 14327149, 14327317, 14327477, 14327659, 14327813, 14327947, 14328113, 14328271, 14328449, 14328619, 14328791]
theorem check29 : primorialChainCheck 4473 primorial4473 184 14326099 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 14326099 14328791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14326099) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [14328973, 14329157, 14329331, 14329499, 14329673, 14329853, 14330021, 14330179, 14330341, 14330501, 14330681, 14330861, 14331043, 14331223, 14331407, 14331589]
theorem check30 : primorialChainCheck 4473 primorial4473 184 14328791 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 14328791 14331589 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14328791) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [14331743, 14331917, 14332069, 14332249, 14332421, 14332567, 14332741, 14332907, 14333089, 14333251, 14333419, 14333603, 14333773, 14333951, 14334127, 14334283]
theorem check31 : primorialChainCheck 4473 primorial4473 184 14331589 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 14331589 14334283 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14331589) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 14246261 14251849 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14246261)
    (mid := 14249023) (hi := 14251849) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 14251849 14257423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14251849)
    (mid := 14254633) (hi := 14257423) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 14257423 14262923 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14257423)
    (mid := 14260249) (hi := 14262923) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 14262923 14268407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14262923)
    (mid := 14265661) (hi := 14268407) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 14268407 14273899 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14268407)
    (mid := 14271251) (hi := 14273899) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 14273899 14279443 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14273899)
    (mid := 14276659) (hi := 14279443) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 14279443 14284943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14279443)
    (mid := 14282171) (hi := 14284943) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 14284943 14290453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14284943)
    (mid := 14287657) (hi := 14290453) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 14290453 14295791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14290453)
    (mid := 14293109) (hi := 14295791) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 14295791 14301349 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14295791)
    (mid := 14298541) (hi := 14301349) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 14301349 14306729 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14301349)
    (mid := 14304049) (hi := 14306729) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 14306729 14312231 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14306729)
    (mid := 14309459) (hi := 14312231) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 14312231 14317717 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14312231)
    (mid := 14314981) (hi := 14317717) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 14317717 14323307 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14317717)
    (mid := 14320489) (hi := 14323307) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 14323307 14328791 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14323307)
    (mid := 14326099) (hi := 14328791) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 14328791 14334283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14328791)
    (mid := 14331589) (hi := 14334283) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 14246261 14257423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14246261)
    (mid := 14251849) (hi := 14257423) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 14257423 14268407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14257423)
    (mid := 14262923) (hi := 14268407) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 14268407 14279443 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14268407)
    (mid := 14273899) (hi := 14279443) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 14279443 14290453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14279443)
    (mid := 14284943) (hi := 14290453) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 14290453 14301349 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14290453)
    (mid := 14295791) (hi := 14301349) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 14301349 14312231 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14301349)
    (mid := 14306729) (hi := 14312231) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 14312231 14323307 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14312231)
    (mid := 14317717) (hi := 14323307) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 14323307 14334283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14323307)
    (mid := 14328791) (hi := 14334283) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 14246261 14268407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14246261)
    (mid := 14257423) (hi := 14268407) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 14268407 14290453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14268407)
    (mid := 14279443) (hi := 14290453) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 14290453 14312231 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14290453)
    (mid := 14301349) (hi := 14312231) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 14312231 14334283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14312231)
    (mid := 14323307) (hi := 14334283) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 14246261 14290453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14246261)
    (mid := 14268407) (hi := 14290453) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 14290453 14334283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14290453)
    (mid := 14312231) (hi := 14334283) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 14246261 14334283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14246261)
    (mid := 14290453) (hi := 14334283) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 14246261 14334283 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block162

#print axioms B699MiddleExtension.PrimorialBlocks.Block162.joined
