import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block149

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [13107751, 13107923, 13108103, 13108279, 13108453, 13108637, 13108811, 13108987, 13109171, 13109347, 13109521, 13109687, 13109861, 13109983, 13110157, 13110301]
theorem check0 : primorialChainCheck 4473 primorial4473 184 13107581 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 13107581 13110301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13107581) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [13110481, 13110649, 13110833, 13111013, 13111187, 13111367, 13111519, 13111669, 13111849, 13111961, 13112129, 13112273, 13112443, 13112609, 13112773, 13112951]
theorem check1 : primorialChainCheck 4473 primorial4473 184 13110301 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 13110301 13112951 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13110301) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [13113127, 13113301, 13113467, 13113643, 13113811, 13113983, 13114159, 13114337, 13114483, 13114663, 13114847, 13115023, 13115197, 13115371, 13115537, 13115717]
theorem check2 : primorialChainCheck 4473 primorial4473 184 13112951 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 13112951 13115717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13112951) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [13115899, 13116041, 13116217, 13116391, 13116569, 13116749, 13116919, 13117103, 13117259, 13117427, 13117579, 13117757, 13117933, 13118107, 13118269, 13118447]
theorem check3 : primorialChainCheck 4473 primorial4473 184 13115717 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 13115717 13118447 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13115717) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [13118629, 13118779, 13118957, 13119103, 13119287, 13119389, 13119569, 13119751, 13119917, 13120087, 13120271, 13120427, 13120589, 13120759, 13120909, 13121083]
theorem check4 : primorialChainCheck 4473 primorial4473 184 13118447 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 13118447 13121083 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13118447) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [13121257, 13121441, 13121621, 13121803, 13121987, 13122169, 13122349, 13122533, 13122713, 13122887, 13123063, 13123247, 13123423, 13123603, 13123769, 13123931]
theorem check5 : primorialChainCheck 4473 primorial4473 184 13121083 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 13121083 13123931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13121083) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [13124107, 13124281, 13124437, 13124621, 13124803, 13124987, 13125169, 13125349, 13125527, 13125701, 13125883, 13126063, 13126219, 13126391, 13126571, 13126741]
theorem check6 : primorialChainCheck 4473 primorial4473 184 13123931 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 13123931 13126741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13123931) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [13126921, 13127099, 13127269, 13127449, 13127603, 13127783, 13127951, 13128103, 13128257, 13128433, 13128617, 13128781, 13128949, 13129111, 13129289, 13129463]
theorem check7 : primorialChainCheck 4473 primorial4473 184 13126741 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 13126741 13129463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13126741) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [13129643, 13129807, 13129979, 13130147, 13130321, 13130503, 13130687, 13130857, 13131037, 13131203, 13131373, 13131553, 13131737, 13131917, 13132081, 13132261]
theorem check8 : primorialChainCheck 4473 primorial4473 184 13129463 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 13129463 13132261 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13129463) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [13132417, 13132589, 13132771, 13132939, 13133111, 13133291, 13133467, 13133647, 13133803, 13133969, 13134139, 13134299, 13134481, 13134661, 13134811, 13134983]
theorem check9 : primorialChainCheck 4473 primorial4473 184 13132261 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 13132261 13134983 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13132261) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [13135163, 13135321, 13135477, 13135657, 13135823, 13136003, 13136177, 13136351, 13136531, 13136713, 13136897, 13137079, 13137263, 13137437, 13137611, 13137791]
theorem check10 : primorialChainCheck 4473 primorial4473 184 13134983 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 13134983 13137791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13134983) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [13137973, 13138133, 13138309, 13138493, 13138673, 13138837, 13139017, 13139171, 13139341, 13139519, 13139689, 13139873, 13140047, 13140221, 13140389, 13140557]
theorem check11 : primorialChainCheck 4473 primorial4473 184 13137791 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 13137791 13140557 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13137791) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [13140731, 13140899, 13141081, 13141259, 13141439, 13141619, 13141801, 13141981, 13142161, 13142333, 13142473, 13142641, 13142797, 13142981, 13143149, 13143313]
theorem check12 : primorialChainCheck 4473 primorial4473 184 13140557 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 13140557 13143313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13140557) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [13143491, 13143673, 13143847, 13144007, 13144171, 13144343, 13144513, 13144697, 13144877, 13145053, 13145203, 13145387, 13145557, 13145723, 13145893, 13146061]
theorem check13 : primorialChainCheck 4473 primorial4473 184 13143313 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 13143313 13146061 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13143313) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [13146241, 13146421, 13146583, 13146761, 13146929, 13147109, 13147261, 13147427, 13147609, 13147793, 13147949, 13148131, 13148287, 13148461, 13148609, 13148791]
theorem check14 : primorialChainCheck 4473 primorial4473 184 13146061 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 13146061 13148791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13146061) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [13148963, 13149139, 13149317, 13149497, 13149679, 13149841, 13150009, 13150183, 13150349, 13150531, 13150699, 13150883, 13151063, 13151233, 13151407, 13151581]
theorem check15 : primorialChainCheck 4473 primorial4473 184 13148791 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 13148791 13151581 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13148791) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [13151759, 13151927, 13152089, 13152259, 13152421, 13152599, 13152779, 13152961, 13153109, 13153289, 13153471, 13153639, 13153817, 13153997, 13154171, 13154347]
theorem check16 : primorialChainCheck 4473 primorial4473 184 13151581 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 13151581 13154347 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13151581) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [13154521, 13154683, 13154863, 13155047, 13155223, 13155397, 13155559, 13155743, 13155917, 13156097, 13156267, 13156447, 13156631, 13156799, 13156973, 13157153]
theorem check17 : primorialChainCheck 4473 primorial4473 184 13154347 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 13154347 13157153 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13154347) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [13157293, 13157471, 13157647, 13157831, 13157993, 13158169, 13158349, 13158533, 13158709, 13158889, 13159063, 13159219, 13159379, 13159561, 13159697, 13159879]
theorem check18 : primorialChainCheck 4473 primorial4473 184 13157153 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 13157153 13159879 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13157153) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [13160053, 13160233, 13160417, 13160591, 13160731, 13160911, 13161079, 13161229, 13161403, 13161583, 13161703, 13161881, 13162043, 13162211, 13162393, 13162577]
theorem check19 : primorialChainCheck 4473 primorial4473 184 13159879 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 13159879 13162577 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13159879) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [13162759, 13162939, 13163119, 13163281, 13163411, 13163573, 13163741, 13163879, 13164061, 13164233, 13164413, 13164589, 13164773, 13164887, 13165067, 13165247]
theorem check20 : primorialChainCheck 4473 primorial4473 184 13162577 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 13162577 13165247 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13162577) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [13165417, 13165597, 13165777, 13165951, 13166129, 13166269, 13166443, 13166623, 13166801, 13166983, 13167151, 13167317, 13167463, 13167647, 13167793, 13167977]
theorem check21 : primorialChainCheck 4473 primorial4473 184 13165247 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 13165247 13167977 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13165247) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [13168139, 13168301, 13168483, 13168663, 13168847, 13169027, 13169207, 13169383, 13169551, 13169677, 13169851, 13170029, 13170203, 13170349, 13170527, 13170679]
theorem check22 : primorialChainCheck 4473 primorial4473 184 13167977 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 13167977 13170679 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13167977) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [13170851, 13171031, 13171183, 13171363, 13171523, 13171699, 13171877, 13172053, 13172231, 13172371, 13172543, 13172717, 13172897, 13173077, 13173257, 13173439]
theorem check23 : primorialChainCheck 4473 primorial4473 184 13170679 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 13170679 13173439 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13170679) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [13173619, 13173773, 13173949, 13174111, 13174289, 13174457, 13174639, 13174823, 13174991, 13175143, 13175317, 13175489, 13175633, 13175791, 13175971, 13176151]
theorem check24 : primorialChainCheck 4473 primorial4473 184 13173439 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 13173439 13176151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13173439) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [13176323, 13176491, 13176673, 13176857, 13177039, 13177207, 13177379, 13177561, 13177729, 13177897, 13178051, 13178201, 13178371, 13178527, 13178677, 13178861]
theorem check25 : primorialChainCheck 4473 primorial4473 184 13176151 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 13176151 13178861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13176151) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [13179043, 13179211, 13179377, 13179547, 13179707, 13179883, 13180067, 13180249, 13180429, 13180613, 13180793, 13180961, 13181123, 13181303, 13181473, 13181653]
theorem check26 : primorialChainCheck 4473 primorial4473 184 13178861 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 13178861 13181653 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13178861) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [13181827, 13182011, 13182163, 13182331, 13182511, 13182671, 13182847, 13183031, 13183213, 13183369, 13183519, 13183699, 13183883, 13184063, 13184243, 13184399]
theorem check27 : primorialChainCheck 4473 primorial4473 184 13181653 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 13181653 13184399 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13181653) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [13184569, 13184753, 13184909, 13185091, 13185257, 13185413, 13185593, 13185769, 13185947, 13186123, 13186301, 13186477, 13186651, 13186829, 13187011, 13187191]
theorem check28 : primorialChainCheck 4473 primorial4473 184 13184399 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 13184399 13187191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13184399) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [13187353, 13187519, 13187701, 13187879, 13188053, 13188221, 13188397, 13188557, 13188739, 13188893, 13189073, 13189243, 13189417, 13189597, 13189753, 13189937]
theorem check29 : primorialChainCheck 4473 primorial4473 184 13187191 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 13187191 13189937 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13187191) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [13190119, 13190279, 13190461, 13190641, 13190813, 13190987, 13191169, 13191331, 13191469, 13191649, 13191821, 13192001, 13192171, 13192349, 13192523, 13192703]
theorem check30 : primorialChainCheck 4473 primorial4473 184 13189937 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 13189937 13192703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13189937) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [13192871, 13193029, 13193209, 13193393, 13193567, 13193729, 13193909, 13194079, 13194257, 13194439, 13194611, 13194793, 13194967, 13195103, 13195277, 13195447]
theorem check31 : primorialChainCheck 4473 primorial4473 184 13192703 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 13192703 13195447 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13192703) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 13107581 13112951 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13107581)
    (mid := 13110301) (hi := 13112951) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 13112951 13118447 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13112951)
    (mid := 13115717) (hi := 13118447) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 13118447 13123931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13118447)
    (mid := 13121083) (hi := 13123931) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 13123931 13129463 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13123931)
    (mid := 13126741) (hi := 13129463) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 13129463 13134983 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13129463)
    (mid := 13132261) (hi := 13134983) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 13134983 13140557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13134983)
    (mid := 13137791) (hi := 13140557) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 13140557 13146061 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13140557)
    (mid := 13143313) (hi := 13146061) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 13146061 13151581 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13146061)
    (mid := 13148791) (hi := 13151581) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 13151581 13157153 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13151581)
    (mid := 13154347) (hi := 13157153) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 13157153 13162577 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13157153)
    (mid := 13159879) (hi := 13162577) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 13162577 13167977 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13162577)
    (mid := 13165247) (hi := 13167977) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 13167977 13173439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13167977)
    (mid := 13170679) (hi := 13173439) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 13173439 13178861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13173439)
    (mid := 13176151) (hi := 13178861) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 13178861 13184399 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13178861)
    (mid := 13181653) (hi := 13184399) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 13184399 13189937 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13184399)
    (mid := 13187191) (hi := 13189937) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 13189937 13195447 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13189937)
    (mid := 13192703) (hi := 13195447) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 13107581 13118447 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13107581)
    (mid := 13112951) (hi := 13118447) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 13118447 13129463 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13118447)
    (mid := 13123931) (hi := 13129463) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 13129463 13140557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13129463)
    (mid := 13134983) (hi := 13140557) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 13140557 13151581 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13140557)
    (mid := 13146061) (hi := 13151581) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 13151581 13162577 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13151581)
    (mid := 13157153) (hi := 13162577) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 13162577 13173439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13162577)
    (mid := 13167977) (hi := 13173439) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 13173439 13184399 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13173439)
    (mid := 13178861) (hi := 13184399) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 13184399 13195447 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13184399)
    (mid := 13189937) (hi := 13195447) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 13107581 13129463 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13107581)
    (mid := 13118447) (hi := 13129463) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 13129463 13151581 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13129463)
    (mid := 13140557) (hi := 13151581) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 13151581 13173439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13151581)
    (mid := 13162577) (hi := 13173439) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 13173439 13195447 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13173439)
    (mid := 13184399) (hi := 13195447) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 13107581 13151581 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13107581)
    (mid := 13129463) (hi := 13151581) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 13151581 13195447 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13151581)
    (mid := 13173439) (hi := 13195447) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 13107581 13195447 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13107581)
    (mid := 13151581) (hi := 13195447) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 13107581 13195447 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block149

#print axioms B699MiddleExtension.PrimorialBlocks.Block149.joined
