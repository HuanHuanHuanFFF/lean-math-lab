import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block142

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [12495599, 12495779, 12495953, 12496117, 12496283, 12496447, 12496621, 12496793, 12496973, 12497141, 12497323, 12497503, 12497677, 12497861, 12498011, 12498191]
theorem check0 : primorialChainCheck 4473 primorial4473 184 12495421 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 12495421 12498191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12495421) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [12498331, 12498469, 12498653, 12498823, 12499001, 12499183, 12499343, 12499523, 12499699, 12499873, 12500029, 12500197, 12500359, 12500539, 12500693, 12500869]
theorem check1 : primorialChainCheck 4473 primorial4473 184 12498191 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 12498191 12500869 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12498191) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [12501053, 12501193, 12501371, 12501527, 12501707, 12501887, 12502069, 12502249, 12502403, 12502583, 12502759, 12502943, 12503059, 12503243, 12503423, 12503573]
theorem check2 : primorialChainCheck 4473 primorial4473 184 12500869 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 12500869 12503573 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12500869) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [12503753, 12503923, 12504091, 12504269, 12504431, 12504601, 12504757, 12504941, 12505117, 12505291, 12505457, 12505639, 12505811, 12505981, 12506147, 12506323]
theorem check3 : primorialChainCheck 4473 primorial4473 184 12503573 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 12503573 12506323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12503573) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [12506497, 12506677, 12506821, 12506983, 12507151, 12507329, 12507503, 12507683, 12507863, 12508031, 12508207, 12508373, 12508537, 12508703, 12508879, 12509009]
theorem check4 : primorialChainCheck 4473 primorial4473 184 12506323 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 12506323 12509009 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12506323) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [12509183, 12509363, 12509533, 12509713, 12509869, 12510023, 12510193, 12510373, 12510541, 12510713, 12510889, 12511049, 12511231, 12511399, 12511579, 12511757]
theorem check5 : primorialChainCheck 4473 primorial4473 184 12509009 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 12509009 12511757 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12509009) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [12511909, 12512083, 12512267, 12512447, 12512627, 12512807, 12512971, 12513101, 12513283, 12513463, 12513643, 12513793, 12513973, 12514157, 12514321, 12514493]
theorem check6 : primorialChainCheck 4473 primorial4473 184 12511757 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 12511757 12514493 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12511757) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [12514661, 12514841, 12515023, 12515203, 12515387, 12515567, 12515747, 12515929, 12516073, 12516253, 12516431, 12516613, 12516793, 12516971, 12517133, 12517301]
theorem check7 : primorialChainCheck 4473 primorial4473 184 12514493 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 12514493 12517301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12514493) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [12517481, 12517613, 12517793, 12517969, 12518119, 12518287, 12518449, 12518621, 12518801, 12518959, 12519137, 12519317, 12519487, 12519593, 12519763, 12519937]
theorem check8 : primorialChainCheck 4473 primorial4473 184 12517301 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 12517301 12519937 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12517301) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [12520111, 12520289, 12520463, 12520643, 12520817, 12520999, 12521149, 12521329, 12521507, 12521689, 12521863, 12522043, 12522227, 12522401, 12522563, 12522743]
theorem check9 : primorialChainCheck 4473 primorial4473 184 12519937 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 12519937 12522743 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12519937) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [12522911, 12523073, 12523253, 12523429, 12523613, 12523759, 12523943, 12524123, 12524299, 12524467, 12524647, 12524821, 12524977, 12525157, 12525301, 12525479]
theorem check10 : primorialChainCheck 4473 primorial4473 184 12522743 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 12522743 12525479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12522743) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [12525661, 12525841, 12526021, 12526183, 12526363, 12526537, 12526721, 12526897, 12527077, 12527257, 12527429, 12527609, 12527789, 12527969, 12528151, 12528331]
theorem check11 : primorialChainCheck 4473 primorial4473 184 12525479 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 12525479 12528331 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12525479) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [12528499, 12528683, 12528863, 12529031, 12529207, 12529351, 12529523, 12529691, 12529841, 12530017, 12530191, 12530351, 12530521, 12530701, 12530879, 12531053]
theorem check12 : primorialChainCheck 4473 primorial4473 184 12528331 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 12528331 12531053 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12528331) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [12531221, 12531391, 12531569, 12531709, 12531889, 12532067, 12532237, 12532397, 12532579, 12532763, 12532931, 12533111, 12533291, 12533461, 12533629, 12533779]
theorem check13 : primorialChainCheck 4473 primorial4473 184 12531053 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 12531053 12533779 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12531053) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [12533957, 12534133, 12534311, 12534461, 12534637, 12534803, 12534983, 12535151, 12535333, 12535513, 12535697, 12535871, 12536053, 12536231, 12536411, 12536543]
theorem check14 : primorialChainCheck 4473 primorial4473 184 12533779 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 12533779 12536543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12533779) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [12536723, 12536893, 12537023, 12537197, 12537353, 12537533, 12537713, 12537893, 12538073, 12538249, 12538433, 12538609, 12538763, 12538931, 12539113, 12539279]
theorem check15 : primorialChainCheck 4473 primorial4473 184 12536543 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 12536543 12539279 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12536543) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [12539389, 12539567, 12539743, 12539909, 12540049, 12540217, 12540397, 12540581, 12540751, 12540881, 12541063, 12541247, 12541411, 12541579, 12541751, 12541933]
theorem check16 : primorialChainCheck 4473 primorial4473 184 12539279 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 12539279 12541933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12539279) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [12542113, 12542293, 12542477, 12542657, 12542839, 12542989, 12543151, 12543329, 12543511, 12543691, 12543859, 12544033, 12544201, 12544381, 12544549, 12544709]
theorem check17 : primorialChainCheck 4473 primorial4473 184 12541933 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 12541933 12544709 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12541933) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [12544877, 12545059, 12545243, 12545417, 12545593, 12545773, 12545957, 12546139, 12546301, 12546467, 12546643, 12546827, 12547009, 12547187, 12547361, 12547531]
theorem check18 : primorialChainCheck 4473 primorial4473 184 12544709 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 12544709 12547531 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12544709) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [12547687, 12547861, 12548033, 12548197, 12548357, 12548491, 12548663, 12548827, 12549001, 12549151, 12549331, 12549487, 12549661, 12549809, 12549913, 12550093]
theorem check19 : primorialChainCheck 4473 primorial4473 184 12547531 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 12547531 12550093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12547531) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [12550273, 12550441, 12550619, 12550799, 12550957, 12551131, 12551291, 12551447, 12551603, 12551783, 12551941, 12552121, 12552263, 12552439, 12552611, 12552791]
theorem check20 : primorialChainCheck 4473 primorial4473 184 12550093 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 12550093 12552791 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12550093) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [12552973, 12553141, 12553313, 12553493, 12553669, 12553829, 12554011, 12554189, 12554371, 12554533, 12554701, 12554879, 12555047, 12555199, 12555359, 12555511]
theorem check21 : primorialChainCheck 4473 primorial4473 184 12552791 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 12552791 12555511 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12552791) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [12555679, 12555863, 12556039, 12556223, 12556393, 12556573, 12556751, 12556933, 12557113, 12557297, 12557473, 12557647, 12557819, 12557981, 12558163, 12558331]
theorem check22 : primorialChainCheck 4473 primorial4473 184 12555511 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 12555511 12558331 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12555511) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [12558463, 12558641, 12558811, 12558961, 12559121, 12559297, 12559471, 12559637, 12559819, 12560003, 12560183, 12560347, 12560521, 12560699, 12560861, 12561023]
theorem check23 : primorialChainCheck 4473 primorial4473 184 12558331 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 12558331 12561023 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12558331) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [12561187, 12561359, 12561529, 12561709, 12561889, 12562073, 12562237, 12562421, 12562559, 12562727, 12562903, 12563077, 12563249, 12563417, 12563591, 12563737]
theorem check24 : primorialChainCheck 4473 primorial4473 184 12561023 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 12561023 12563737 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12561023) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [12563857, 12564017, 12564193, 12564347, 12564527, 12564709, 12564883, 12565067, 12565249, 12565433, 12565603, 12565781, 12565937, 12566101, 12566261, 12566419]
theorem check25 : primorialChainCheck 4473 primorial4473 184 12563737 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 12563737 12566419 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12563737) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [12566597, 12566761, 12566933, 12567109, 12567293, 12567473, 12567631, 12567799, 12567983, 12568159, 12568333, 12568499, 12568679, 12568859, 12569041, 12569197]
theorem check26 : primorialChainCheck 4473 primorial4473 184 12566419 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 12566419 12569197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12566419) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [12569377, 12569561, 12569743, 12569873, 12570043, 12570227, 12570409, 12570553, 12570731, 12570893, 12571067, 12571241, 12571421, 12571583, 12571763, 12571943]
theorem check27 : primorialChainCheck 4473 primorial4473 184 12569197 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 12569197 12571943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12569197) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [12572123, 12572293, 12572477, 12572633, 12572767, 12572909, 12573091, 12573247, 12573427, 12573607, 12573779, 12573959, 12574141, 12574321, 12574501, 12574673]
theorem check28 : primorialChainCheck 4473 primorial4473 184 12571943 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 12571943 12574673 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12571943) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [12574853, 12575011, 12575149, 12575327, 12575501, 12575669, 12575851, 12576023, 12576199, 12576371, 12576547, 12576713, 12576833, 12576989, 12577157, 12577333]
theorem check29 : primorialChainCheck 4473 primorial4473 184 12574673 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 12574673 12577333 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12574673) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [12577507, 12577687, 12577819, 12577997, 12578173, 12578341, 12578507, 12578681, 12578807, 12578987, 12579163, 12579341, 12579517, 12579683, 12579863, 12580019]
theorem check30 : primorialChainCheck 4473 primorial4473 184 12577333 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 12577333 12580019 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12577333) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [12580193, 12580367, 12580549, 12580723, 12580903, 12581083, 12581263, 12581441, 12581603, 12581749, 12581923, 12582103, 12582263, 12582443, 12582611, 12582767]
theorem check31 : primorialChainCheck 4473 primorial4473 184 12580019 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 12580019 12582767 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12580019) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 12495421 12500869 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12495421)
    (mid := 12498191) (hi := 12500869) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 12500869 12506323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12500869)
    (mid := 12503573) (hi := 12506323) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 12506323 12511757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12506323)
    (mid := 12509009) (hi := 12511757) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 12511757 12517301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12511757)
    (mid := 12514493) (hi := 12517301) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 12517301 12522743 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12517301)
    (mid := 12519937) (hi := 12522743) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 12522743 12528331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12522743)
    (mid := 12525479) (hi := 12528331) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 12528331 12533779 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12528331)
    (mid := 12531053) (hi := 12533779) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 12533779 12539279 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12533779)
    (mid := 12536543) (hi := 12539279) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 12539279 12544709 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12539279)
    (mid := 12541933) (hi := 12544709) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 12544709 12550093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12544709)
    (mid := 12547531) (hi := 12550093) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 12550093 12555511 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12550093)
    (mid := 12552791) (hi := 12555511) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 12555511 12561023 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12555511)
    (mid := 12558331) (hi := 12561023) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 12561023 12566419 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12561023)
    (mid := 12563737) (hi := 12566419) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 12566419 12571943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12566419)
    (mid := 12569197) (hi := 12571943) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 12571943 12577333 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12571943)
    (mid := 12574673) (hi := 12577333) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 12577333 12582767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12577333)
    (mid := 12580019) (hi := 12582767) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 12495421 12506323 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12495421)
    (mid := 12500869) (hi := 12506323) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 12506323 12517301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12506323)
    (mid := 12511757) (hi := 12517301) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 12517301 12528331 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12517301)
    (mid := 12522743) (hi := 12528331) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 12528331 12539279 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12528331)
    (mid := 12533779) (hi := 12539279) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 12539279 12550093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12539279)
    (mid := 12544709) (hi := 12550093) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 12550093 12561023 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12550093)
    (mid := 12555511) (hi := 12561023) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 12561023 12571943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12561023)
    (mid := 12566419) (hi := 12571943) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 12571943 12582767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12571943)
    (mid := 12577333) (hi := 12582767) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 12495421 12517301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12495421)
    (mid := 12506323) (hi := 12517301) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 12517301 12539279 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12517301)
    (mid := 12528331) (hi := 12539279) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 12539279 12561023 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12539279)
    (mid := 12550093) (hi := 12561023) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 12561023 12582767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12561023)
    (mid := 12571943) (hi := 12582767) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 12495421 12539279 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12495421)
    (mid := 12517301) (hi := 12539279) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 12539279 12582767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12539279)
    (mid := 12561023) (hi := 12582767) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 12495421 12582767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12495421)
    (mid := 12539279) (hi := 12582767) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 12495421 12582767 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block142

#print axioms B699MiddleExtension.PrimorialBlocks.Block142.joined
