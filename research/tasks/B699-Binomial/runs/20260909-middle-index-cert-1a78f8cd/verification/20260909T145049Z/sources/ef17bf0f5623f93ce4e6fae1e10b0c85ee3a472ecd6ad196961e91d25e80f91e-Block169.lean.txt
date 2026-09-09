import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block169

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [14859703, 14859877, 14860049, 14860213, 14860387, 14860543, 14860721, 14860903, 14861083, 14861261, 14861437, 14861603, 14861761, 14861941, 14862121, 14862269]
theorem check0 : primorialChainCheck 4473 primorial4473 184 14859521 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 14859521 14862269 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14859521) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [14862451, 14862619, 14862803, 14862983, 14863157, 14863333, 14863517, 14863697, 14863873, 14864051, 14864209, 14864393, 14864573, 14864753, 14864933, 14865091]
theorem check1 : primorialChainCheck 4473 primorial4473 184 14862269 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 14862269 14865091 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14862269) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [14865271, 14865451, 14865623, 14865791, 14865967, 14866133, 14866307, 14866421, 14866573, 14866757, 14866939, 14867119, 14867263, 14867441, 14867621, 14867803]
theorem check2 : primorialChainCheck 4473 primorial4473 184 14865091 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 14865091 14867803 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14865091) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [14867939, 14868101, 14868233, 14868407, 14868587, 14868751, 14868929, 14869111, 14869291, 14869471, 14869651, 14869831, 14869999, 14870161, 14870333, 14870507]
theorem check3 : primorialChainCheck 4473 primorial4473 184 14867803 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 14867803 14870507 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14867803) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [14870689, 14870839, 14871023, 14871203, 14871377, 14871559, 14871707, 14871877, 14872061, 14872241, 14872423, 14872607, 14872787, 14872967, 14873137, 14873311]
theorem check4 : primorialChainCheck 4473 primorial4473 184 14870507 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 14870507 14873311 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14870507) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [14873449, 14873633, 14873809, 14873987, 14874161, 14874331, 14874499, 14874683, 14874863, 14875039, 14875199, 14875373, 14875519, 14875703, 14875843, 14876027]
theorem check5 : primorialChainCheck 4473 primorial4473 184 14873311 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 14873311 14876027 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14873311) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [14876203, 14876387, 14876567, 14876737, 14876893, 14877077, 14877253, 14877413, 14877571, 14877743, 14877917, 14878099, 14878277, 14878459, 14878639, 14878813]
theorem check6 : primorialChainCheck 4473 primorial4473 184 14876027 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 14876027 14878813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14876027) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [14878993, 14879171, 14879353, 14879507, 14879687, 14879861, 14880037, 14880221, 14880373, 14880487, 14880659, 14880841, 14881019, 14881193, 14881327, 14881507]
theorem check7 : primorialChainCheck 4473 primorial4473 184 14878813 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 14878813 14881507 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14878813) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [14881687, 14881861, 14882039, 14882159, 14882341, 14882519, 14882689, 14882867, 14883019, 14883199, 14883371, 14883523, 14883677, 14883851, 14884003, 14884187]
theorem check8 : primorialChainCheck 4473 primorial4473 184 14881507 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 14881507 14884187 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14881507) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [14884339, 14884487, 14884651, 14884823, 14884993, 14885147, 14885317, 14885477, 14885639, 14885821, 14885977, 14886121, 14886227, 14886397, 14886581, 14886757]
theorem check9 : primorialChainCheck 4473 primorial4473 184 14884187 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 14884187 14886757 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14884187) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [14886919, 14887091, 14887273, 14887451, 14887619, 14887783, 14887921, 14888101, 14888273, 14888437, 14888597, 14888777, 14888953, 14889113, 14889283, 14889463]
theorem check10 : primorialChainCheck 4473 primorial4473 184 14886757 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 14886757 14889463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14886757) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [14889643, 14889821, 14889991, 14890171, 14890313, 14890489, 14890669, 14890853, 14891021, 14891203, 14891363, 14891533, 14891713, 14891861, 14892041, 14892217]
theorem check11 : primorialChainCheck 4473 primorial4473 184 14889463 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 14889463 14892217 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14889463) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [14892377, 14892539, 14892673, 14892847, 14893027, 14893201, 14893369, 14893553, 14893729, 14893913, 14894093, 14894237, 14894419, 14894597, 14894779, 14894953]
theorem check12 : primorialChainCheck 4473 primorial4473 184 14892217 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 14892217 14894953 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14892217) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [14895137, 14895319, 14895499, 14895667, 14895847, 14896009, 14896181, 14896333, 14896507, 14896667, 14896841, 14897023, 14897177, 14897341, 14897521, 14897693]
theorem check13 : primorialChainCheck 4473 primorial4473 184 14894953 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 14894953 14897693 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14894953) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [14897873, 14898041, 14898209, 14898391, 14898563, 14898743, 14898911, 14899091, 14899273, 14899411, 14899589, 14899741, 14899909, 14900087, 14900213, 14900387]
theorem check14 : primorialChainCheck 4473 primorial4473 184 14897693 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 14897693 14900387 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14897693) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [14900563, 14900737, 14900911, 14901077, 14901251, 14901407, 14901587, 14901749, 14901923, 14902079, 14902219, 14902399, 14902583, 14902757, 14902907, 14903081]
theorem check15 : primorialChainCheck 4473 primorial4473 184 14900387 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 14900387 14903081 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14900387) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [14903261, 14903437, 14903621, 14903803, 14903983, 14904143, 14904319, 14904497, 14904661, 14904809, 14904991, 14905171, 14905351, 14905529, 14905711, 14905871]
theorem check16 : primorialChainCheck 4473 primorial4473 184 14903081 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 14903081 14905871 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14903081) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [14906041, 14906209, 14906389, 14906531, 14906713, 14906873, 14907047, 14907227, 14907397, 14907577, 14907743, 14907857, 14908037, 14908207, 14908391, 14908567]
theorem check17 : primorialChainCheck 4473 primorial4473 184 14905871 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 14905871 14908567 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14905871) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [14908727, 14908909, 14909093, 14909263, 14909441, 14909617, 14909789, 14909959, 14910143, 14910319, 14910503, 14910677, 14910829, 14911009, 14911177, 14911321]
theorem check18 : primorialChainCheck 4473 primorial4473 184 14908567 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 14908567 14911321 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14908567) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [14911489, 14911657, 14911817, 14911993, 14912141, 14912323, 14912507, 14912633, 14912803, 14912983, 14913161, 14913343, 14913517, 14913671, 14913851, 14914019]
theorem check19 : primorialChainCheck 4473 primorial4473 184 14911321 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 14911321 14914019 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14911321) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [14914171, 14914349, 14914517, 14914687, 14914859, 14915039, 14915221, 14915401, 14915573, 14915717, 14915899, 14916073, 14916221, 14916403, 14916569, 14916739]
theorem check20 : primorialChainCheck 4473 primorial4473 184 14914019 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 14914019 14916739 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14914019) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [14916917, 14917099, 14917277, 14917459, 14917627, 14917787, 14917967, 14918143, 14918311, 14918483, 14918627, 14918801, 14918983, 14919143, 14919269, 14919451]
theorem check21 : primorialChainCheck 4473 primorial4473 184 14916739 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 14916739 14919451 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14916739) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [14919631, 14919803, 14919953, 14920133, 14920313, 14920469, 14920639, 14920823, 14921003, 14921177, 14921351, 14921521, 14921671, 14921849, 14922031, 14922199]
theorem check22 : primorialChainCheck 4473 primorial4473 184 14919451 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 14919451 14922199 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14919451) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [14922371, 14922539, 14922701, 14922841, 14923019, 14923201, 14923373, 14923553, 14923729, 14923903, 14924087, 14924267, 14924449, 14924629, 14924813, 14924983]
theorem check23 : primorialChainCheck 4473 primorial4473 184 14922199 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 14922199 14924983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14922199) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [14925151, 14925329, 14925509, 14925671, 14925851, 14925917, 14926081, 14926253, 14926421, 14926603, 14926771, 14926949, 14927119, 14927303, 14927477, 14927599]
theorem check24 : primorialChainCheck 4473 primorial4473 184 14924983 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 14924983 14927599 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14924983) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [14927753, 14927933, 14928113, 14928293, 14928467, 14928637, 14928811, 14928971, 14929151, 14929319, 14929489, 14929669, 14929847, 14930021, 14930183, 14930341]
theorem check25 : primorialChainCheck 4473 primorial4473 184 14927599 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 14927599 14930341 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14927599) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [14930521, 14930693, 14930863, 14931023, 14931197, 14931377, 14931551, 14931733, 14931911, 14932087, 14932261, 14932441, 14932609, 14932789, 14932963, 14933147]
theorem check26 : primorialChainCheck 4473 primorial4473 184 14930341 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 14930341 14933147 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14930341) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [14933329, 14933491, 14933671, 14933843, 14934011, 14934191, 14934329, 14934511, 14934683, 14934833, 14935003, 14935183, 14935363, 14935523, 14935651, 14935829]
theorem check27 : primorialChainCheck 4473 primorial4473 184 14933147 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 14933147 14935829 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14933147) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [14936003, 14936167, 14936333, 14936501, 14936681, 14936839, 14937017, 14937199, 14937379, 14937563, 14937737, 14937911, 14938093, 14938271, 14938411, 14938577]
theorem check28 : primorialChainCheck 4473 primorial4473 184 14935829 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 14935829 14938577 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14935829) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [14938757, 14938909, 14939081, 14939251, 14939411, 14939591, 14939773, 14939879, 14940053, 14940209, 14940391, 14940571, 14940749, 14940931, 14941111, 14941291]
theorem check29 : primorialChainCheck 4473 primorial4473 184 14938577 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 14938577 14941291 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14938577) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [14941463, 14941643, 14941811, 14941957, 14942141, 14942311, 14942489, 14942671, 14942839, 14943013, 14943197, 14943373, 14943547, 14943713, 14943883, 14944057]
theorem check30 : primorialChainCheck 4473 primorial4473 184 14941291 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 14941291 14944057 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14941291) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [14944231, 14944379, 14944561, 14944739, 14944913, 14945089, 14945257, 14945407, 14945587, 14945747, 14945881, 14946023, 14946203, 14946359, 14946539, 14946719]
theorem check31 : primorialChainCheck 4473 primorial4473 184 14944057 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 14944057 14946719 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14944057) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 14859521 14865091 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14859521)
    (mid := 14862269) (hi := 14865091) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 14865091 14870507 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14865091)
    (mid := 14867803) (hi := 14870507) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 14870507 14876027 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14870507)
    (mid := 14873311) (hi := 14876027) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 14876027 14881507 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14876027)
    (mid := 14878813) (hi := 14881507) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 14881507 14886757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14881507)
    (mid := 14884187) (hi := 14886757) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 14886757 14892217 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14886757)
    (mid := 14889463) (hi := 14892217) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 14892217 14897693 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14892217)
    (mid := 14894953) (hi := 14897693) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 14897693 14903081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14897693)
    (mid := 14900387) (hi := 14903081) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 14903081 14908567 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14903081)
    (mid := 14905871) (hi := 14908567) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 14908567 14914019 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14908567)
    (mid := 14911321) (hi := 14914019) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 14914019 14919451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14914019)
    (mid := 14916739) (hi := 14919451) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 14919451 14924983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14919451)
    (mid := 14922199) (hi := 14924983) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 14924983 14930341 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14924983)
    (mid := 14927599) (hi := 14930341) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 14930341 14935829 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14930341)
    (mid := 14933147) (hi := 14935829) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 14935829 14941291 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14935829)
    (mid := 14938577) (hi := 14941291) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 14941291 14946719 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14941291)
    (mid := 14944057) (hi := 14946719) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 14859521 14870507 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14859521)
    (mid := 14865091) (hi := 14870507) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 14870507 14881507 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14870507)
    (mid := 14876027) (hi := 14881507) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 14881507 14892217 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14881507)
    (mid := 14886757) (hi := 14892217) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 14892217 14903081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14892217)
    (mid := 14897693) (hi := 14903081) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 14903081 14914019 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14903081)
    (mid := 14908567) (hi := 14914019) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 14914019 14924983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14914019)
    (mid := 14919451) (hi := 14924983) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 14924983 14935829 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14924983)
    (mid := 14930341) (hi := 14935829) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 14935829 14946719 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14935829)
    (mid := 14941291) (hi := 14946719) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 14859521 14881507 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14859521)
    (mid := 14870507) (hi := 14881507) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 14881507 14903081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14881507)
    (mid := 14892217) (hi := 14903081) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 14903081 14924983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14903081)
    (mid := 14914019) (hi := 14924983) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 14924983 14946719 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14924983)
    (mid := 14935829) (hi := 14946719) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 14859521 14903081 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14859521)
    (mid := 14881507) (hi := 14903081) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 14903081 14946719 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14903081)
    (mid := 14924983) (hi := 14946719) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 14859521 14946719 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 14859521)
    (mid := 14903081) (hi := 14946719) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 14859521 14946719 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block169

#print axioms B699MiddleExtension.PrimorialBlocks.Block169.joined
