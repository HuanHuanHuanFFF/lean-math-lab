import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block215

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [18876371, 18876553, 18876733, 18876917, 18877099, 18877277, 18877447, 18877631, 18877813, 18877997, 18878179, 18878357, 18878527, 18878711, 18878861, 18879037]
theorem check0 : primorialChainCheck 4473 primorial4473 184 18876197 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 18876197 18879037 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18876197) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [18879209, 18879391, 18879533, 18879703, 18879869, 18880021, 18880163, 18880327, 18880469, 18880639, 18880819, 18880993, 18881173, 18881351, 18881531, 18881699]
theorem check1 : primorialChainCheck 4473 primorial4473 184 18879037 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 18879037 18881699 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18879037) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [18881867, 18882049, 18882221, 18882403, 18882587, 18882769, 18882949, 18883043, 18883201, 18883351, 18883523, 18883703, 18883873, 18884051, 18884227, 18884407]
theorem check2 : primorialChainCheck 4473 primorial4473 184 18881699 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 18881699 18884407 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18881699) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [18884573, 18884753, 18884927, 18885109, 18885289, 18885473, 18885631, 18885781, 18885961, 18886123, 18886267, 18886411, 18886591, 18886727, 18886883, 18887047]
theorem check3 : primorialChainCheck 4473 primorial4473 184 18884407 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 18884407 18887047 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18884407) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [18887227, 18887383, 18887551, 18887699, 18887861, 18888043, 18888217, 18888391, 18888533, 18888697, 18888871, 18889051, 18889231, 18889393, 18889531, 18889711]
theorem check4 : primorialChainCheck 4473 primorial4473 184 18887047 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 18887047 18889711 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18887047) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [18889841, 18890021, 18890203, 18890371, 18890537, 18890671, 18890819, 18890987, 18891143, 18891317, 18891473, 18891637, 18891787, 18891953, 18892129, 18892309]
theorem check5 : primorialChainCheck 4473 primorial4473 184 18889711 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 18889711 18892309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18889711) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [18892483, 18892663, 18892843, 18893027, 18893209, 18893377, 18893549, 18893731, 18893887, 18894049, 18894233, 18894413, 18894583, 18894767, 18894947, 18895127]
theorem check6 : primorialChainCheck 4473 primorial4473 184 18892309 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 18892309 18895127 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18892309) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [18895307, 18895469, 18895651, 18895829, 18895991, 18896167, 18896347, 18896497, 18896681, 18896833, 18897017, 18897173, 18897341, 18897517, 18897701, 18897883]
theorem check7 : primorialChainCheck 4473 primorial4473 184 18895127 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 18895127 18897883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18895127) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [18898049, 18898193, 18898361, 18898507, 18898681, 18898861, 18899033, 18899207, 18899381, 18899549, 18899719, 18899899, 18900071, 18900253, 18900437, 18900619]
theorem check8 : primorialChainCheck 4473 primorial4473 184 18897883 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 18897883 18900619 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18897883) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [18900797, 18900971, 18901153, 18901327, 18901511, 18901681, 18901829, 18901957, 18902141, 18902263, 18902441, 18902593, 18902771, 18902921, 18903103, 18903251]
theorem check9 : primorialChainCheck 4473 primorial4473 184 18900619 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 18900619 18903251 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18900619) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [18903433, 18903611, 18903793, 18903977, 18904159, 18904313, 18904489, 18904583, 18904751, 18904927, 18905111, 18905279, 18905449, 18905611, 18905771, 18905923]
theorem check10 : primorialChainCheck 4473 primorial4473 184 18903251 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 18903251 18905923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18903251) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [18906067, 18906241, 18906409, 18906581, 18906761, 18906917, 18907069, 18907253, 18907411, 18907549, 18907729, 18907901, 18908083, 18908243, 18908411, 18908581]
theorem check11 : primorialChainCheck 4473 primorial4473 184 18905923 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 18905923 18908581 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18905923) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [18908753, 18908927, 18909097, 18909259, 18909431, 18909601, 18909773, 18909949, 18910123, 18910289, 18910469, 18910649, 18910819, 18911003, 18911177, 18911339]
theorem check12 : primorialChainCheck 4473 primorial4473 184 18908581 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 18908581 18911339 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18908581) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [18911461, 18911639, 18911797, 18911969, 18912137, 18912317, 18912499, 18912667, 18912851, 18913021, 18913201, 18913381, 18913561, 18913733, 18913913, 18914059]
theorem check13 : primorialChainCheck 4473 primorial4473 184 18911339 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 18911339 18914059 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18911339) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [18914239, 18914419, 18914603, 18914759, 18914933, 18915107, 18915287, 18915461, 18915643, 18915823, 18915989, 18916109, 18916279, 18916463, 18916643, 18916811]
theorem check14 : primorialChainCheck 4473 primorial4473 184 18914059 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 18914059 18916811 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18914059) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [18916987, 18917167, 18917351, 18917531, 18917683, 18917867, 18918043, 18918199, 18918373, 18918551, 18918733, 18918883, 18919067, 18919237, 18919403, 18919567]
theorem check15 : primorialChainCheck 4473 primorial4473 184 18916811 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 18916811 18919567 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18916811) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [18919739, 18919907, 18920089, 18920249, 18920413, 18920569, 18920747, 18920921, 18921103, 18921271, 18921449, 18921613, 18921781, 18921953, 18922129, 18922301]
theorem check16 : primorialChainCheck 4473 primorial4473 184 18919567 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 18919567 18922301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18919567) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [18922483, 18922637, 18922817, 18922931, 18923039, 18923209, 18923389, 18923551, 18923651, 18923833, 18924011, 18924187, 18924359, 18924523, 18924707, 18924881]
theorem check17 : primorialChainCheck 4473 primorial4473 184 18922301 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 18922301 18924881 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18922301) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [18925037, 18925219, 18925391, 18925553, 18925733, 18925901, 18926081, 18926239, 18926339, 18926521, 18926701, 18926851, 18926993, 18927151, 18927301, 18927479]
theorem check18 : primorialChainCheck 4473 primorial4473 184 18924881 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 18924881 18927479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18924881) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [18927661, 18927833, 18928003, 18928187, 18928369, 18928549, 18928717, 18928891, 18929059, 18929243, 18929419, 18929569, 18929753, 18929923, 18930101, 18930283]
theorem check19 : primorialChainCheck 4473 primorial4473 184 18927479 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 18927479 18930283 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18927479) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [18930467, 18930641, 18930803, 18930949, 18931127, 18931261, 18931433, 18931613, 18931699, 18931879, 18932063, 18932233, 18932401, 18932579, 18932761, 18932929]
theorem check20 : primorialChainCheck 4473 primorial4473 184 18930283 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 18930283 18932929 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18930283) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [18933113, 18933289, 18933469, 18933647, 18933829, 18934007, 18934189, 18934367, 18934547, 18934679, 18934847, 18935011, 18935171, 18935341, 18935507, 18935687]
theorem check21 : primorialChainCheck 4473 primorial4473 184 18932929 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 18932929 18935687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18932929) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [18935863, 18936041, 18936223, 18936403, 18936587, 18936769, 18936923, 18937103, 18937283, 18937463, 18937637, 18937819, 18937991, 18938173, 18938299, 18938477]
theorem check22 : primorialChainCheck 4473 primorial4473 184 18935687 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 18935687 18938477 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18935687) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [18938651, 18938831, 18939013, 18939197, 18939379, 18939553, 18939727, 18939901, 18940079, 18940249, 18940423, 18940589, 18940759, 18940931, 18941071, 18941231]
theorem check23 : primorialChainCheck 4473 primorial4473 184 18938477 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 18938477 18941231 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18938477) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [18941413, 18941567, 18941749, 18941933, 18942109, 18942293, 18942463, 18942647, 18942809, 18942983, 18943159, 18943291, 18943469, 18943643, 18943823, 18943999]
theorem check24 : primorialChainCheck 4473 primorial4473 184 18941231 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 18941231 18943999 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18941231) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [18944147, 18944327, 18944507, 18944669, 18944839, 18945023, 18945161, 18945343, 18945503, 18945683, 18945821, 18946003, 18946171, 18946349, 18946513, 18946693]
theorem check25 : primorialChainCheck 4473 primorial4473 184 18943999 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 18943999 18946693 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18943999) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [18946877, 18947041, 18947213, 18947363, 18947543, 18947723, 18947897, 18948043, 18948221, 18948383, 18948563, 18948733, 18948907, 18949087, 18949253, 18949423]
theorem check26 : primorialChainCheck 4473 primorial4473 184 18946693 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 18946693 18949423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18946693) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [18949591, 18949771, 18949949, 18950119, 18950303, 18950479, 18950653, 18950837, 18950989, 18951173, 18951329, 18951487, 18951671, 18951853, 18952033, 18952211]
theorem check27 : primorialChainCheck 4473 primorial4473 184 18949423 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 18949423 18952211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18949423) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [18952321, 18952489, 18952673, 18952837, 18953021, 18953201, 18953381, 18953537, 18953719, 18953903, 18954079, 18954263, 18954437, 18954613, 18954797, 18954979]
theorem check28 : primorialChainCheck 4473 primorial4473 184 18952211 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 18952211 18954979 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18952211) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [18955163, 18955337, 18955511, 18955693, 18955873, 18956057, 18956237, 18956417, 18956599, 18956783, 18956963, 18957139, 18957311, 18957481, 18957661, 18957823]
theorem check29 : primorialChainCheck 4473 primorial4473 184 18954979 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 18954979 18957823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18954979) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [18957997, 18958151, 18958309, 18958487, 18958661, 18958817, 18958993, 18959177, 18959357, 18959537, 18959713, 18959869, 18960047, 18960199, 18960367, 18960551]
theorem check30 : primorialChainCheck 4473 primorial4473 184 18957823 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 18957823 18960551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18957823) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [18960713, 18960883, 18961049, 18961219, 18961403, 18961573, 18961751, 18961933, 18962071, 18962249, 18962431, 18962579, 18962753, 18962929, 18963107, 18963281]
theorem check31 : primorialChainCheck 4473 primorial4473 184 18960551 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 18960551 18963281 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18960551) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 18876197 18881699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18876197)
    (mid := 18879037) (hi := 18881699) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 18881699 18887047 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18881699)
    (mid := 18884407) (hi := 18887047) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 18887047 18892309 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18887047)
    (mid := 18889711) (hi := 18892309) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 18892309 18897883 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18892309)
    (mid := 18895127) (hi := 18897883) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 18897883 18903251 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18897883)
    (mid := 18900619) (hi := 18903251) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 18903251 18908581 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18903251)
    (mid := 18905923) (hi := 18908581) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 18908581 18914059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18908581)
    (mid := 18911339) (hi := 18914059) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 18914059 18919567 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18914059)
    (mid := 18916811) (hi := 18919567) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 18919567 18924881 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18919567)
    (mid := 18922301) (hi := 18924881) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 18924881 18930283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18924881)
    (mid := 18927479) (hi := 18930283) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 18930283 18935687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18930283)
    (mid := 18932929) (hi := 18935687) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 18935687 18941231 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18935687)
    (mid := 18938477) (hi := 18941231) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 18941231 18946693 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18941231)
    (mid := 18943999) (hi := 18946693) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 18946693 18952211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18946693)
    (mid := 18949423) (hi := 18952211) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 18952211 18957823 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18952211)
    (mid := 18954979) (hi := 18957823) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 18957823 18963281 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18957823)
    (mid := 18960551) (hi := 18963281) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 18876197 18887047 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18876197)
    (mid := 18881699) (hi := 18887047) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 18887047 18897883 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18887047)
    (mid := 18892309) (hi := 18897883) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 18897883 18908581 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18897883)
    (mid := 18903251) (hi := 18908581) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 18908581 18919567 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18908581)
    (mid := 18914059) (hi := 18919567) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 18919567 18930283 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18919567)
    (mid := 18924881) (hi := 18930283) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 18930283 18941231 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18930283)
    (mid := 18935687) (hi := 18941231) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 18941231 18952211 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18941231)
    (mid := 18946693) (hi := 18952211) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 18952211 18963281 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18952211)
    (mid := 18957823) (hi := 18963281) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 18876197 18897883 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18876197)
    (mid := 18887047) (hi := 18897883) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 18897883 18919567 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18897883)
    (mid := 18908581) (hi := 18919567) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 18919567 18941231 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18919567)
    (mid := 18930283) (hi := 18941231) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 18941231 18963281 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18941231)
    (mid := 18952211) (hi := 18963281) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 18876197 18919567 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18876197)
    (mid := 18897883) (hi := 18919567) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 18919567 18963281 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18919567)
    (mid := 18941231) (hi := 18963281) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 18876197 18963281 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18876197)
    (mid := 18919567) (hi := 18963281) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 18876197 18963281 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block215

#print axioms B699MiddleExtension.PrimorialBlocks.Block215.joined
