import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block182

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [15995227, 15995389, 15995561, 15995743, 15995909, 15996083, 15996251, 15996433, 15996583, 15996767, 15996943, 15997123, 15997307, 15997481, 15997637, 15997819]
theorem check0 : primorialChainCheck 4473 primorial4473 184 15995059 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 15995059 15997819 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15995059) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [15997999, 15998161, 15998341, 15998519, 15998669, 15998813, 15998977, 15999127, 15999301, 15999461, 15999623, 15999803, 15999983, 16000133, 16000307, 16000487]
theorem check1 : primorialChainCheck 4473 primorial4473 184 15997819 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 15997819 16000487 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15997819) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [16000669, 16000841, 16000987, 16001171, 16001351, 16001497, 16001681, 16001863, 16002037, 16002221, 16002401, 16002583, 16002757, 16002937, 16003093, 16003237]
theorem check2 : primorialChainCheck 4473 primorial4473 184 16000487 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 16000487 16003237 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16000487) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [16003391, 16003549, 16003733, 16003913, 16004059, 16004207, 16004383, 16004567, 16004743, 16004909, 16005091, 16005271, 16005443, 16005623, 16005797, 16005967]
theorem check3 : primorialChainCheck 4473 primorial4473 184 16003237 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 16003237 16005967 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16003237) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [16006147, 16006313, 16006483, 16006667, 16006847, 16007029, 16007209, 16007393, 16007561, 16007743, 16007923, 16008071, 16008233, 16008403, 16008571, 16008749]
theorem check4 : primorialChainCheck 4473 primorial4473 184 16005967 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 16005967 16008749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16005967) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [16008931, 16009111, 16009277, 16009397, 16009579, 16009759, 16009927, 16010101, 16010273, 16010453, 16010627, 16010809, 16010989, 16011169, 16011329, 16011511]
theorem check5 : primorialChainCheck 4473 primorial4473 184 16008749 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 16008749 16011511 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16008749) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [16011679, 16011847, 16011997, 16012169, 16012349, 16012511, 16012693, 16012873, 16013057, 16013237, 16013419, 16013567, 16013749, 16013929, 16014113, 16014277]
theorem check6 : primorialChainCheck 4473 primorial4473 184 16011511 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 16011511 16014277 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16011511) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [16014461, 16014637, 16014787, 16014961, 16015141, 16015319, 16015471, 16015619, 16015799, 16015973, 16016113, 16016269, 16016447, 16016629, 16016813, 16016939]
theorem check7 : primorialChainCheck 4473 primorial4473 184 16014277 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 16014277 16016939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16014277) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [16017107, 16017277, 16017439, 16017619, 16017797, 16017977, 16018157, 16018283, 16018459, 16018627, 16018801, 16018969, 16019131, 16019309, 16019473, 16019639]
theorem check8 : primorialChainCheck 4473 primorial4473 184 16016939 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 16016939 16019639 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16016939) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [16019819, 16019999, 16020163, 16020337, 16020503, 16020671, 16020841, 16021013, 16021193, 16021367, 16021549, 16021679, 16021861, 16022029, 16022213, 16022393]
theorem check9 : primorialChainCheck 4473 primorial4473 184 16019639 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 16019639 16022393 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16019639) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [16022563, 16022693, 16022869, 16023037, 16023221, 16023361, 16023533, 16023691, 16023871, 16024027, 16024181, 16024363, 16024511, 16024651, 16024831, 16024991]
theorem check10 : primorialChainCheck 4473 primorial4473 184 16022393 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 16022393 16024991 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16022393) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [16025173, 16025353, 16025533, 16025717, 16025897, 16026077, 16026251, 16026421, 16026599, 16026779, 16026961, 16027133, 16027313, 16027471, 16027643, 16027813]
theorem check11 : primorialChainCheck 4473 primorial4473 184 16024991 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 16024991 16027813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16024991) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [16027997, 16028143, 16028323, 16028491, 16028657, 16028839, 16029023, 16029203, 16029359, 16029539, 16029703, 16029877, 16030051, 16030211, 16030393, 16030577]
theorem check12 : primorialChainCheck 4473 primorial4473 184 16027813 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 16027813 16030577 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16027813) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [16030757, 16030933, 16031107, 16031263, 16031447, 16031627, 16031797, 16031963, 16032113, 16032293, 16032473, 16032641, 16032823, 16032967, 16033141, 16033279]
theorem check13 : primorialChainCheck 4473 primorial4473 184 16030577 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 16030577 16033279 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16030577) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [16033441, 16033609, 16033769, 16033951, 16034093, 16034273, 16034449, 16034591, 16034773, 16034957, 16035133, 16035307, 16035479, 16035661, 16035821, 16036001]
theorem check14 : primorialChainCheck 4473 primorial4473 184 16033279 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 16033279 16036001 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16033279) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [16036147, 16036327, 16036487, 16036649, 16036829, 16037009, 16037173, 16037309, 16037479, 16037663, 16037809, 16037971, 16038149, 16038331, 16038487, 16038643]
theorem check15 : primorialChainCheck 4473 primorial4473 184 16036001 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 16036001 16038643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16036001) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [16038823, 16038991, 16039123, 16039297, 16039451, 16039631, 16039787, 16039963, 16040111, 16040281, 16040459, 16040641, 16040803, 16040977, 16041133, 16041307]
theorem check16 : primorialChainCheck 4473 primorial4473 184 16038643 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 16038643 16041307 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16038643) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [16041469, 16041653, 16041827, 16042007, 16042177, 16042361, 16042529, 16042703, 16042879, 16043063, 16043207, 16043389, 16043569, 16043747, 16043921, 16044103]
theorem check17 : primorialChainCheck 4473 primorial4473 184 16041307 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 16041307 16044103 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16041307) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [16044269, 16044443, 16044601, 16044761, 16044913, 16045069, 16045247, 16045429, 16045597, 16045741, 16045921, 16046083, 16046263, 16046447, 16046629, 16046803]
theorem check18 : primorialChainCheck 4473 primorial4473 184 16044103 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 16044103 16046803 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16044103) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [16046977, 16047131, 16047313, 16047497, 16047673, 16047853, 16048037, 16048189, 16048367, 16048537, 16048699, 16048883, 16049063, 16049183, 16049359, 16049531]
theorem check19 : primorialChainCheck 4473 primorial4473 184 16046803 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 16046803 16049531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16046803) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [16049713, 16049881, 16050053, 16050217, 16050401, 16050569, 16050733, 16050917, 16051097, 16051279, 16051439, 16051597, 16051781, 16051949, 16052119, 16052303]
theorem check20 : primorialChainCheck 4473 primorial4473 184 16049531 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 16049531 16052303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16049531) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [16052483, 16052657, 16052837, 16053007, 16053143, 16053307, 16053481, 16053643, 16053809, 16053979, 16054153, 16054279, 16054453, 16054631, 16054769, 16054901]
theorem check21 : primorialChainCheck 4473 primorial4473 184 16052303 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 16052303 16054901 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16052303) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [16055069, 16055233, 16055393, 16055573, 16055747, 16055929, 16056097, 16056269, 16056451, 16056629, 16056809, 16056983, 16057157, 16057331, 16057511, 16057651]
theorem check22 : primorialChainCheck 4473 primorial4473 184 16054901 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 16054901 16057651 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16054901) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [16057829, 16058011, 16058191, 16058369, 16058533, 16058701, 16058879, 16059049, 16059217, 16059377, 16059557, 16059721, 16059877, 16060043, 16060181, 16060361]
theorem check23 : primorialChainCheck 4473 primorial4473 184 16057651 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 16057651 16060361 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16057651) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [16060493, 16060669, 16060853, 16061027, 16061197, 16061377, 16061557, 16061713, 16061891, 16062047, 16062197, 16062367, 16062539, 16062719, 16062889, 16063067]
theorem check24 : primorialChainCheck 4473 primorial4473 184 16060361 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 16060361 16063067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16060361) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [16063241, 16063409, 16063573, 16063757, 16063937, 16064119, 16064287, 16064471, 16064639, 16064809, 16064987, 16065157, 16065319, 16065503, 16065683, 16065859]
theorem check25 : primorialChainCheck 4473 primorial4473 184 16063067 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 16063067 16065859 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16063067) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [16066033, 16066199, 16066361, 16066543, 16066727, 16066901, 16067063, 16067243, 16067419, 16067599, 16067773, 16067923, 16068089, 16068271, 16068449, 16068631]
theorem check26 : primorialChainCheck 4473 primorial4473 184 16065859 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 16065859 16068631 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16065859) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [16068809, 16068991, 16069139, 16069321, 16069489, 16069673, 16069853, 16069993, 16070177, 16070339, 16070507, 16070689, 16070869, 16071053, 16071229, 16071403]
theorem check27 : primorialChainCheck 4473 primorial4473 184 16068631 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 16068631 16071403 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16068631) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [16071581, 16071761, 16071931, 16072099, 16072267, 16072417, 16072597, 16072759, 16072933, 16073117, 16073273, 16073441, 16073621, 16073767, 16073933, 16074059]
theorem check28 : primorialChainCheck 4473 primorial4473 184 16071403 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 16071403 16074059 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16071403) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [16074203, 16074319, 16074481, 16074661, 16074803, 16074977, 16075151, 16075331, 16075487, 16075669, 16075849, 16075979, 16076129, 16076311, 16076483, 16076663]
theorem check29 : primorialChainCheck 4473 primorial4473 184 16074059 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 16074059 16076663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16074059) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [16076843, 16077013, 16077197, 16077379, 16077557, 16077731, 16077907, 16078037, 16078217, 16078397, 16078577, 16078759, 16078913, 16079083, 16079233, 16079407]
theorem check30 : primorialChainCheck 4473 primorial4473 184 16076663 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 16076663 16079407 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16076663) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [16079587, 16079771, 16079939, 16080049, 16080223, 16080401, 16080557, 16080697, 16080853, 16081027, 16081211, 16081381, 16081547, 16081729, 16081909, 16082089]
theorem check31 : primorialChainCheck 4473 primorial4473 184 16079407 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 16079407 16082089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16079407) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 15995059 16000487 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15995059)
    (mid := 15997819) (hi := 16000487) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 16000487 16005967 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16000487)
    (mid := 16003237) (hi := 16005967) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 16005967 16011511 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16005967)
    (mid := 16008749) (hi := 16011511) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 16011511 16016939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16011511)
    (mid := 16014277) (hi := 16016939) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 16016939 16022393 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16016939)
    (mid := 16019639) (hi := 16022393) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 16022393 16027813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16022393)
    (mid := 16024991) (hi := 16027813) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 16027813 16033279 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16027813)
    (mid := 16030577) (hi := 16033279) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 16033279 16038643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16033279)
    (mid := 16036001) (hi := 16038643) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 16038643 16044103 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16038643)
    (mid := 16041307) (hi := 16044103) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 16044103 16049531 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16044103)
    (mid := 16046803) (hi := 16049531) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 16049531 16054901 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16049531)
    (mid := 16052303) (hi := 16054901) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 16054901 16060361 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16054901)
    (mid := 16057651) (hi := 16060361) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 16060361 16065859 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16060361)
    (mid := 16063067) (hi := 16065859) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 16065859 16071403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16065859)
    (mid := 16068631) (hi := 16071403) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 16071403 16076663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16071403)
    (mid := 16074059) (hi := 16076663) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 16076663 16082089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16076663)
    (mid := 16079407) (hi := 16082089) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 15995059 16005967 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15995059)
    (mid := 16000487) (hi := 16005967) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 16005967 16016939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16005967)
    (mid := 16011511) (hi := 16016939) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 16016939 16027813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16016939)
    (mid := 16022393) (hi := 16027813) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 16027813 16038643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16027813)
    (mid := 16033279) (hi := 16038643) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 16038643 16049531 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16038643)
    (mid := 16044103) (hi := 16049531) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 16049531 16060361 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16049531)
    (mid := 16054901) (hi := 16060361) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 16060361 16071403 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16060361)
    (mid := 16065859) (hi := 16071403) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 16071403 16082089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16071403)
    (mid := 16076663) (hi := 16082089) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 15995059 16016939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15995059)
    (mid := 16005967) (hi := 16016939) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 16016939 16038643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16016939)
    (mid := 16027813) (hi := 16038643) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 16038643 16060361 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16038643)
    (mid := 16049531) (hi := 16060361) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 16060361 16082089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16060361)
    (mid := 16071403) (hi := 16082089) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 15995059 16038643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15995059)
    (mid := 16016939) (hi := 16038643) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 16038643 16082089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16038643)
    (mid := 16060361) (hi := 16082089) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 15995059 16082089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15995059)
    (mid := 16038643) (hi := 16082089) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 15995059 16082089 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block182

#print axioms B699MiddleExtension.PrimorialBlocks.Block182.joined
