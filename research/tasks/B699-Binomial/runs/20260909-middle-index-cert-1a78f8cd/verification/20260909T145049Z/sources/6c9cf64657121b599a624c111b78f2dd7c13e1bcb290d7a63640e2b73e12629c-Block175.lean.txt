import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block175

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [15383821, 15384001, 15384179, 15384361, 15384527, 15384709, 15384869, 15385049, 15385219, 15385397, 15385577, 15385759, 15385939, 15386123, 15386299, 15386473]
theorem check0 : primorialChainCheck 4473 primorial4473 184 15383653 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 15383653 15386473 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15383653) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [15386653, 15386837, 15387007, 15387187, 15387343, 15387527, 15387709, 15387887, 15388069, 15388253, 15388433, 15388579, 15388739, 15388913, 15389089, 15389249]
theorem check1 : primorialChainCheck 4473 primorial4473 184 15386473 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 15386473 15389249 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15386473) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [15389393, 15389567, 15389723, 15389903, 15390041, 15390223, 15390407, 15390587, 15390769, 15390953, 15391133, 15391267, 15391447, 15391631, 15391787, 15391931]
theorem check2 : primorialChainCheck 4473 primorial4473 184 15389249 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 15389249 15391931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15389249) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [15392093, 15392249, 15392431, 15392567, 15392723, 15392903, 15393061, 15393241, 15393421, 15393593, 15393767, 15393947, 15394097, 15394261, 15394439, 15394619]
theorem check3 : primorialChainCheck 4473 primorial4473 184 15391931 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 15391931 15394619 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15391931) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [15394801, 15394961, 15395123, 15395299, 15395477, 15395651, 15395827, 15396011, 15396191, 15396349, 15396529, 15396691, 15396839, 15397003, 15397177, 15397357]
theorem check4 : primorialChainCheck 4473 primorial4473 184 15394619 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 15394619 15397357 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15394619) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [15397537, 15397703, 15397859, 15398027, 15398203, 15398381, 15398533, 15398699, 15398861, 15399037, 15399187, 15399361, 15399539, 15399721, 15399869, 15400043]
theorem check5 : primorialChainCheck 4473 primorial4473 184 15397357 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 15397357 15400043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15397357) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [15400223, 15400391, 15400571, 15400739, 15400897, 15401081, 15401261, 15401431, 15401599, 15401777, 15401957, 15402097, 15402281, 15402461, 15402641, 15402817]
theorem check6 : primorialChainCheck 4473 primorial4473 184 15400043 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 15400043 15402817 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15400043) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [15402991, 15403163, 15403327, 15403489, 15403673, 15403849, 15404033, 15404201, 15404381, 15404563, 15404731, 15404903, 15405041, 15405199, 15405353, 15405527]
theorem check7 : primorialChainCheck 4473 primorial4473 184 15402817 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 15402817 15405527 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15402817) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [15405703, 15405851, 15406031, 15406189, 15406373, 15406519, 15406697, 15406877, 15407053, 15407237, 15407419, 15407603, 15407773, 15407927, 15408109, 15408287]
theorem check8 : primorialChainCheck 4473 primorial4473 184 15405527 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 15405527 15408287 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15405527) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [15408467, 15408649, 15408823, 15409001, 15409183, 15409367, 15409547, 15409673, 15409841, 15410011, 15410189, 15410371, 15410543, 15410723, 15410887, 15411059]
theorem check9 : primorialChainCheck 4473 primorial4473 184 15408287 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 15408287 15411059 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15408287) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [15411199, 15411377, 15411559, 15411733, 15411889, 15412069, 15412237, 15412403, 15412567, 15412741, 15412919, 15413093, 15413273, 15413449, 15413623, 15413777]
theorem check10 : primorialChainCheck 4473 primorial4473 184 15411059 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 15411059 15413777 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15411059) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [15413939, 15414107, 15414271, 15414433, 15414611, 15414793, 15414953, 15415123, 15415297, 15415469, 15415637, 15415817, 15415999, 15416179, 15416341, 15416497]
theorem check11 : primorialChainCheck 4473 primorial4473 184 15413777 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 15413777 15416497 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15413777) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [15416627, 15416803, 15416983, 15417163, 15417343, 15417511, 15417679, 15417851, 15418001, 15418171, 15418339, 15418493, 15418673, 15418817, 15418957, 15419123]
theorem check12 : primorialChainCheck 4473 primorial4473 184 15416497 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 15416497 15419123 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15416497) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [15419297, 15419477, 15419647, 15419819, 15419939, 15420107, 15420287, 15420463, 15420641, 15420817, 15421001, 15421183, 15421337, 15421517, 15421667, 15421843]
theorem check13 : primorialChainCheck 4473 primorial4473 184 15419123 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 15419123 15421843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15419123) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [15422023, 15422207, 15422389, 15422567, 15422741, 15422917, 15423073, 15423251, 15423431, 15423613, 15423797, 15423979, 15424133, 15424313, 15424489, 15424663]
theorem check14 : primorialChainCheck 4473 primorial4473 184 15421843 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 15421843 15424663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15421843) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [15424841, 15424993, 15425167, 15425339, 15425513, 15425689, 15425873, 15426049, 15426227, 15426401, 15426577, 15426751, 15426923, 15427073, 15427231, 15427397]
theorem check15 : primorialChainCheck 4473 primorial4473 184 15424663 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 15424663 15427397 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15424663) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [15427567, 15427729, 15427879, 15428051, 15428221, 15428393, 15428573, 15428753, 15428927, 15429017, 15429187, 15429371, 15429541, 15429719, 15429901, 15430061]
theorem check16 : primorialChainCheck 4473 primorial4473 184 15427397 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 15427397 15430061 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15427397) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [15430243, 15430423, 15430607, 15430787, 15430969, 15431153, 15431333, 15431503, 15431671, 15431837, 15432007, 15432173, 15432343, 15432509, 15432691, 15432871]
theorem check17 : primorialChainCheck 4473 primorial4473 184 15430061 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 15430061 15432871 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15430061) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [15433013, 15433193, 15433367, 15433511, 15433673, 15433853, 15434021, 15434203, 15434387, 15434567, 15434747, 15434927, 15435109, 15435293, 15435463, 15435647]
theorem check18 : primorialChainCheck 4473 primorial4473 184 15432871 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 15432871 15435647 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15432871) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [15435821, 15435991, 15436159, 15436327, 15436457, 15436637, 15436793, 15436943, 15437111, 15437273, 15437449, 15437593, 15437777, 15437959, 15438131, 15438301]
theorem check19 : primorialChainCheck 4473 primorial4473 184 15435647 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 15435647 15438301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15435647) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [15438473, 15438653, 15438827, 15438947, 15439093, 15439273, 15439439, 15439603, 15439783, 15439937, 15440099, 15440261, 15440443, 15440617, 15440773, 15440941]
theorem check20 : primorialChainCheck 4473 primorial4473 184 15438301 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 15438301 15440941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15438301) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [15441121, 15441301, 15441463, 15441641, 15441817, 15441997, 15442121, 15442291, 15442447, 15442631, 15442811, 15442979, 15443137, 15443303, 15443453, 15443629]
theorem check21 : primorialChainCheck 4473 primorial4473 184 15440941 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 15440941 15443629 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15440941) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [15443801, 15443963, 15444139, 15444301, 15444469, 15444647, 15444827, 15444991, 15445153, 15445321, 15445483, 15445667, 15445823, 15446003, 15446173, 15446323]
theorem check22 : primorialChainCheck 4473 primorial4473 184 15443629 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 15443629 15446323 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15443629) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [15446507, 15446687, 15446833, 15447017, 15447199, 15447359, 15447493, 15447671, 15447847, 15447979, 15448163, 15448331, 15448487, 15448637, 15448817, 15448999]
theorem check23 : primorialChainCheck 4473 primorial4473 184 15446323 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 15446323 15448999 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15446323) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [15449179, 15449359, 15449543, 15449689, 15449849, 15450031, 15450209, 15450371, 15450551, 15450731, 15450913, 15451087, 15451231, 15451409, 15451591, 15451771]
theorem check24 : primorialChainCheck 4473 primorial4473 184 15448999 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 15448999 15451771 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15448999) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [15451937, 15452119, 15452299, 15452467, 15452651, 15452809, 15452971, 15453133, 15453307, 15453481, 15453661, 15453829, 15454009, 15454189, 15454363, 15454541]
theorem check25 : primorialChainCheck 4473 primorial4473 184 15451771 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 15451771 15454541 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15451771) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [15454711, 15454891, 15455059, 15455243, 15455423, 15455599, 15455731, 15455851, 15456031, 15456211, 15456379, 15456563, 15456733, 15456907, 15457073, 15457243]
theorem check26 : primorialChainCheck 4473 primorial4473 184 15454541 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 15454541 15457243 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15454541) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [15457427, 15457591, 15457763, 15457921, 15458101, 15458269, 15458453, 15458633, 15458791, 15458969, 15459149, 15459313, 15459487, 15459671, 15459839, 15460001]
theorem check27 : primorialChainCheck 4473 primorial4473 184 15457243 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 15457243 15460001 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15457243) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [15460147, 15460331, 15460499, 15460673, 15460843, 15460997, 15461119, 15461273, 15461443, 15461623, 15461807, 15461951, 15462131, 15462313, 15462497, 15462679]
theorem check28 : primorialChainCheck 4473 primorial4473 184 15460001 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 15460001 15462679 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15460001) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [15462823, 15462991, 15463171, 15463339, 15463501, 15463673, 15463793, 15463963, 15464147, 15464291, 15464473, 15464641, 15464819, 15464983, 15465161, 15465341]
theorem check29 : primorialChainCheck 4473 primorial4473 184 15462679 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 15462679 15465341 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15462679) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [15465523, 15465691, 15465871, 15466043, 15466223, 15466403, 15466579, 15466751, 15466903, 15467087, 15467269, 15467453, 15467633, 15467801, 15467981, 15468157]
theorem check30 : primorialChainCheck 4473 primorial4473 184 15465341 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 15465341 15468157 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15465341) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [15468329, 15468463, 15468647, 15468821, 15468989, 15469159, 15469343, 15469513, 15469687, 15469871, 15470029, 15470201, 15470363, 15470537, 15470711, 15470893]
theorem check31 : primorialChainCheck 4473 primorial4473 184 15468157 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 15468157 15470893 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15468157) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 15383653 15389249 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15383653)
    (mid := 15386473) (hi := 15389249) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 15389249 15394619 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15389249)
    (mid := 15391931) (hi := 15394619) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 15394619 15400043 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15394619)
    (mid := 15397357) (hi := 15400043) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 15400043 15405527 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15400043)
    (mid := 15402817) (hi := 15405527) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 15405527 15411059 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15405527)
    (mid := 15408287) (hi := 15411059) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 15411059 15416497 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15411059)
    (mid := 15413777) (hi := 15416497) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 15416497 15421843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15416497)
    (mid := 15419123) (hi := 15421843) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 15421843 15427397 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15421843)
    (mid := 15424663) (hi := 15427397) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 15427397 15432871 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15427397)
    (mid := 15430061) (hi := 15432871) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 15432871 15438301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15432871)
    (mid := 15435647) (hi := 15438301) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 15438301 15443629 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15438301)
    (mid := 15440941) (hi := 15443629) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 15443629 15448999 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15443629)
    (mid := 15446323) (hi := 15448999) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 15448999 15454541 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15448999)
    (mid := 15451771) (hi := 15454541) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 15454541 15460001 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15454541)
    (mid := 15457243) (hi := 15460001) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 15460001 15465341 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15460001)
    (mid := 15462679) (hi := 15465341) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 15465341 15470893 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15465341)
    (mid := 15468157) (hi := 15470893) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 15383653 15394619 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15383653)
    (mid := 15389249) (hi := 15394619) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 15394619 15405527 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15394619)
    (mid := 15400043) (hi := 15405527) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 15405527 15416497 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15405527)
    (mid := 15411059) (hi := 15416497) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 15416497 15427397 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15416497)
    (mid := 15421843) (hi := 15427397) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 15427397 15438301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15427397)
    (mid := 15432871) (hi := 15438301) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 15438301 15448999 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15438301)
    (mid := 15443629) (hi := 15448999) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 15448999 15460001 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15448999)
    (mid := 15454541) (hi := 15460001) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 15460001 15470893 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15460001)
    (mid := 15465341) (hi := 15470893) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 15383653 15405527 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15383653)
    (mid := 15394619) (hi := 15405527) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 15405527 15427397 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15405527)
    (mid := 15416497) (hi := 15427397) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 15427397 15448999 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15427397)
    (mid := 15438301) (hi := 15448999) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 15448999 15470893 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15448999)
    (mid := 15460001) (hi := 15470893) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 15383653 15427397 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15383653)
    (mid := 15405527) (hi := 15427397) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 15427397 15470893 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15427397)
    (mid := 15448999) (hi := 15470893) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 15383653 15470893 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15383653)
    (mid := 15427397) (hi := 15470893) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 15383653 15470893 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block175

#print axioms B699MiddleExtension.PrimorialBlocks.Block175.joined
