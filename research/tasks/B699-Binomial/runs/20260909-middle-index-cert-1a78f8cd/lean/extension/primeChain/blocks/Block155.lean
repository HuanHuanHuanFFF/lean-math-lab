import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block155

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [13634063, 13634237, 13634407, 13634587, 13634743, 13634923, 13635107, 13635287, 13635467, 13635641, 13635799, 13635971, 13636151, 13636321, 13636463, 13636643]
theorem check0 : primorialChainCheck 4473 primorial4473 184 13633891 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 13633891 13636643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13633891) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [13636789, 13636967, 13637147, 13637329, 13637501, 13637683, 13637843, 13637983, 13638161, 13638341, 13638511, 13638679, 13638817, 13638997, 13639181, 13639361]
theorem check1 : primorialChainCheck 4473 primorial4473 184 13636643 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 13636643 13639361 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13636643) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [13639543, 13639727, 13639867, 13640047, 13640213, 13640381, 13640563, 13640747, 13640911, 13641083, 13641263, 13641431, 13641557, 13641739, 13641923, 13642103]
theorem check2 : primorialChainCheck 4473 primorial4473 184 13639361 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 13639361 13642103 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13639361) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [13642283, 13642457, 13642639, 13642807, 13642987, 13643141, 13643323, 13643467, 13643633, 13643801, 13643977, 13644143, 13644317, 13644473, 13644647, 13644821]
theorem check3 : primorialChainCheck 4473 primorial4473 184 13642103 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 13642103 13644821 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13642103) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [13645001, 13645183, 13645367, 13645537, 13645699, 13645847, 13646029, 13646209, 13646341, 13646519, 13646701, 13646879, 13647041, 13647203, 13647373, 13647551]
theorem check4 : primorialChainCheck 4473 primorial4473 184 13644821 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 13644821 13647551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13644821) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [13647731, 13647869, 13648051, 13648211, 13648391, 13648561, 13648741, 13648919, 13649099, 13649261, 13649431, 13649593, 13649773, 13649957, 13650139, 13650319]
theorem check5 : primorialChainCheck 4473 primorial4473 184 13647551 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 13647551 13650319 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13647551) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [13650491, 13650667, 13650829, 13651013, 13651189, 13651349, 13651523, 13651699, 13651879, 13652047, 13652209, 13652383, 13652567, 13652711, 13652893, 13653067]
theorem check6 : primorialChainCheck 4473 primorial4473 184 13650319 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 13650319 13653067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13650319) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [13653247, 13653427, 13653611, 13653791, 13653967, 13654127, 13654297, 13654471, 13654643, 13654811, 13654987, 13655171, 13655351, 13655533, 13655713, 13655881]
theorem check7 : primorialChainCheck 4473 primorial4473 184 13653067 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 13653067 13655881 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13653067) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [13656031, 13656173, 13656343, 13656527, 13656697, 13656869, 13657051, 13657211, 13657381, 13657547, 13657691, 13657873, 13658033, 13658213, 13658387, 13658543]
theorem check8 : primorialChainCheck 4473 primorial4473 184 13655881 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 13655881 13658543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13655881) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [13658719, 13658893, 13659077, 13659259, 13659439, 13659617, 13659773, 13659949, 13660123, 13660307, 13660489, 13660663, 13660847, 13661017, 13661201, 13661369]
theorem check9 : primorialChainCheck 4473 primorial4473 184 13658543 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 13658543 13661369 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13658543) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [13661521, 13661689, 13661861, 13662043, 13662221, 13662403, 13662581, 13662757, 13662931, 13663099, 13663277, 13663457, 13663627, 13663807, 13663967, 13664143]
theorem check10 : primorialChainCheck 4473 primorial4473 184 13661369 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 13661369 13664143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13661369) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [13664327, 13664491, 13664657, 13664839, 13665023, 13665163, 13665347, 13665523, 13665697, 13665877, 13666031, 13666193, 13666369, 13666553, 13666729, 13666889]
theorem check11 : primorialChainCheck 4473 primorial4473 184 13664143 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 13664143 13666889 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13664143) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [13667051, 13667231, 13667411, 13667581, 13667761, 13667939, 13668113, 13668283, 13668443, 13668583, 13668751, 13668931, 13669093, 13669261, 13669423, 13669597]
theorem check12 : primorialChainCheck 4473 primorial4473 184 13666889 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 13666889 13669597 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13666889) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [13669771, 13669939, 13670117, 13670297, 13670417, 13670599, 13670773, 13670957, 13671113, 13671289, 13671467, 13671649, 13671829, 13672007, 13672187, 13672367]
theorem check13 : primorialChainCheck 4473 primorial4473 184 13669597 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 13669597 13672367 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13669597) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [13672537, 13672669, 13672847, 13673021, 13673203, 13673383, 13673567, 13673743, 13673927, 13674079, 13674257, 13674413, 13674587, 13674757, 13674917, 13675091]
theorem check14 : primorialChainCheck 4473 primorial4473 184 13672367 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 13672367 13675091 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13672367) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [13675273, 13675423, 13675589, 13675771, 13675951, 13676129, 13676303, 13676473, 13676647, 13676807, 13676987, 13677151, 13677289, 13677463, 13677637, 13677817]
theorem check15 : primorialChainCheck 4473 primorial4473 184 13675091 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 13675091 13677817 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13675091) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [13678001, 13678177, 13678361, 13678541, 13678723, 13678901, 13679077, 13679257, 13679431, 13679599, 13679767, 13679947, 13680113, 13680259, 13680439, 13680613]
theorem check16 : primorialChainCheck 4473 primorial4473 184 13677817 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 13677817 13680613 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13677817) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [13680773, 13680949, 13681117, 13681289, 13681469, 13681643, 13681813, 13681979, 13682101, 13682281, 13682453, 13682629, 13682813, 13682951, 13683119, 13683301]
theorem check17 : primorialChainCheck 4473 primorial4473 184 13680613 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 13680613 13683301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13680613) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [13683473, 13683613, 13683797, 13683977, 13684159, 13684331, 13684513, 13684667, 13684843, 13685011, 13685173, 13685327, 13685479, 13685657, 13685809, 13685993]
theorem check18 : primorialChainCheck 4473 primorial4473 184 13683301 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 13683301 13685993 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13683301) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [13686133, 13686307, 13686481, 13686641, 13686809, 13686983, 13687129, 13687307, 13687483, 13687649, 13687831, 13687997, 13688173, 13688357, 13688539, 13688699]
theorem check19 : primorialChainCheck 4473 primorial4473 184 13685993 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 13685993 13688699 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13685993) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [13688881, 13689061, 13689241, 13689397, 13689563, 13689733, 13689911, 13690093, 13690277, 13690441, 13690619, 13690793, 13690973, 13691149, 13691323, 13691507]
theorem check20 : primorialChainCheck 4473 primorial4473 184 13688699 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 13688699 13691507 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13688699) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [13691659, 13691819, 13691983, 13692167, 13692347, 13692527, 13692691, 13692859, 13693039, 13693213, 13693397, 13693577, 13693759, 13693919, 13694101, 13694273]
theorem check21 : primorialChainCheck 4473 primorial4473 184 13691507 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 13691507 13694273 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13691507) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [13694449, 13694633, 13694803, 13694971, 13695151, 13695329, 13695509, 13695691, 13695841, 13696021, 13696159, 13696297, 13696457, 13696633, 13696817, 13696999]
theorem check22 : primorialChainCheck 4473 primorial4473 184 13694273 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 13694273 13696999 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13694273) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [13697149, 13697323, 13697503, 13697687, 13697833, 13698011, 13698193, 13698371, 13698533, 13698703, 13698863, 13699039, 13699211, 13699393, 13699561, 13699733]
theorem check23 : primorialChainCheck 4473 primorial4473 184 13696999 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 13696999 13699733 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13696999) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [13699853, 13700021, 13700201, 13700371, 13700551, 13700723, 13700899, 13701067, 13701239, 13701407, 13701587, 13701763, 13701937, 13702111, 13702291, 13702463]
theorem check24 : primorialChainCheck 4473 primorial4473 184 13699733 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 13699733 13702463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13699733) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [13702643, 13702817, 13702999, 13703177, 13703353, 13703537, 13703719, 13703897, 13704049, 13704203, 13704359, 13704497, 13704673, 13704857, 13705031, 13705187]
theorem check25 : primorialChainCheck 4473 primorial4473 184 13702463 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 13702463 13705187 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13702463) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [13705361, 13705513, 13705697, 13705847, 13706027, 13706167, 13706347, 13706527, 13706683, 13706851, 13707017, 13707191, 13707359, 13707539, 13707719, 13707901]
theorem check26 : primorialChainCheck 4473 primorial4473 184 13705187 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 13705187 13707901 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13705187) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [13708081, 13708243, 13708411, 13708589, 13708741, 13708921, 13709057, 13709239, 13709419, 13709593, 13709753, 13709929, 13710083, 13710259, 13710443, 13710617]
theorem check27 : primorialChainCheck 4473 primorial4473 184 13707901 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 13707901 13710617 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13707901) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [13710797, 13710973, 13711147, 13711297, 13711447, 13711619, 13711801, 13711981, 13712161, 13712341, 13712483, 13712651, 13712833, 13712989, 13713157, 13713299]
theorem check28 : primorialChainCheck 4473 primorial4473 184 13710617 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 13710617 13713299 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13710617) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [13713481, 13713659, 13713829, 13714009, 13714193, 13714357, 13714517, 13714681, 13714861, 13715041, 13715213, 13715389, 13715561, 13715717, 13715899, 13716077]
theorem check29 : primorialChainCheck 4473 primorial4473 184 13713299 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 13713299 13716077 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13713299) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [13716259, 13716403, 13716587, 13716767, 13716931, 13717103, 13717273, 13717439, 13717621, 13717799, 13717973, 13718153, 13718329, 13718491, 13718669, 13718851]
theorem check30 : primorialChainCheck 4473 primorial4473 184 13716077 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 13716077 13718851 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13716077) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [13719029, 13719203, 13719383, 13719529, 13719689, 13719869, 13720039, 13720211, 13720379, 13720543, 13720709, 13720891, 13721063, 13721243, 13721423, 13721599]
theorem check31 : primorialChainCheck 4473 primorial4473 184 13718851 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 13718851 13721599 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13718851) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 13633891 13639361 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13633891)
    (mid := 13636643) (hi := 13639361) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 13639361 13644821 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13639361)
    (mid := 13642103) (hi := 13644821) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 13644821 13650319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13644821)
    (mid := 13647551) (hi := 13650319) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 13650319 13655881 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13650319)
    (mid := 13653067) (hi := 13655881) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 13655881 13661369 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13655881)
    (mid := 13658543) (hi := 13661369) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 13661369 13666889 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13661369)
    (mid := 13664143) (hi := 13666889) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 13666889 13672367 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13666889)
    (mid := 13669597) (hi := 13672367) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 13672367 13677817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13672367)
    (mid := 13675091) (hi := 13677817) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 13677817 13683301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13677817)
    (mid := 13680613) (hi := 13683301) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 13683301 13688699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13683301)
    (mid := 13685993) (hi := 13688699) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 13688699 13694273 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13688699)
    (mid := 13691507) (hi := 13694273) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 13694273 13699733 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13694273)
    (mid := 13696999) (hi := 13699733) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 13699733 13705187 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13699733)
    (mid := 13702463) (hi := 13705187) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 13705187 13710617 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13705187)
    (mid := 13707901) (hi := 13710617) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 13710617 13716077 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13710617)
    (mid := 13713299) (hi := 13716077) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 13716077 13721599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13716077)
    (mid := 13718851) (hi := 13721599) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 13633891 13644821 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13633891)
    (mid := 13639361) (hi := 13644821) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 13644821 13655881 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13644821)
    (mid := 13650319) (hi := 13655881) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 13655881 13666889 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13655881)
    (mid := 13661369) (hi := 13666889) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 13666889 13677817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13666889)
    (mid := 13672367) (hi := 13677817) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 13677817 13688699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13677817)
    (mid := 13683301) (hi := 13688699) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 13688699 13699733 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13688699)
    (mid := 13694273) (hi := 13699733) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 13699733 13710617 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13699733)
    (mid := 13705187) (hi := 13710617) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 13710617 13721599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13710617)
    (mid := 13716077) (hi := 13721599) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 13633891 13655881 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13633891)
    (mid := 13644821) (hi := 13655881) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 13655881 13677817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13655881)
    (mid := 13666889) (hi := 13677817) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 13677817 13699733 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13677817)
    (mid := 13688699) (hi := 13699733) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 13699733 13721599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13699733)
    (mid := 13710617) (hi := 13721599) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 13633891 13677817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13633891)
    (mid := 13655881) (hi := 13677817) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 13677817 13721599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13677817)
    (mid := 13699733) (hi := 13721599) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 13633891 13721599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13633891)
    (mid := 13677817) (hi := 13721599) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 13633891 13721599 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block155

#print axioms B699MiddleExtension.PrimorialBlocks.Block155.joined
