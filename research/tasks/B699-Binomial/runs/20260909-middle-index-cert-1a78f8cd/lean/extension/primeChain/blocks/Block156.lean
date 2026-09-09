import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block156

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [13721779, 13721927, 13722103, 13722277, 13722431, 13722581, 13722749, 13722911, 13723091, 13723271, 13723447, 13723631, 13723769, 13723907, 13724071, 13724233]
theorem check0 : primorialChainCheck 4473 primorial4473 184 13721599 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 13721599 13724233 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13721599) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [13724387, 13724549, 13724731, 13724903, 13725083, 13725259, 13725431, 13725601, 13725769, 13725941, 13726109, 13726289, 13726451, 13726619, 13726781, 13726943]
theorem check1 : primorialChainCheck 4473 primorial4473 184 13724233 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 13724233 13726943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13724233) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [13727123, 13727299, 13727473, 13727647, 13727821, 13727981, 13728157, 13728331, 13728511, 13728679, 13728823, 13729007, 13729147, 13729297, 13729481, 13729663]
theorem check2 : primorialChainCheck 4473 primorial4473 184 13726943 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 13726943 13729663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13726943) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [13729817, 13729973, 13730147, 13730329, 13730513, 13730693, 13730867, 13731043, 13731217, 13731401, 13731569, 13731743, 13731919, 13732097, 13732241, 13732423]
theorem check3 : primorialChainCheck 4473 primorial4473 184 13729663 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 13729663 13732423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13729663) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [13732591, 13732769, 13732951, 13733131, 13733311, 13733491, 13733663, 13733833, 13733999, 13734167, 13734323, 13734493, 13734667, 13734817, 13734913, 13735097]
theorem check4 : primorialChainCheck 4473 primorial4473 184 13732423 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 13732423 13735097 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13732423) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [13735277, 13735441, 13735597, 13735781, 13735961, 13736143, 13736309, 13736491, 13736659, 13736843, 13737013, 13737197, 13737349, 13737533, 13737709, 13737869]
theorem check5 : primorialChainCheck 4473 primorial4473 184 13735097 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 13735097 13737869 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13735097) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [13738019, 13738163, 13738303, 13738471, 13738643, 13738717, 13738897, 13739081, 13739249, 13739419, 13739599, 13739779, 13739963, 13740127, 13740277, 13740457]
theorem check6 : primorialChainCheck 4473 primorial4473 184 13737869 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 13737869 13740457 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13737869) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [13740599, 13740763, 13740943, 13741121, 13741297, 13741477, 13741583, 13741759, 13741939, 13742123, 13742297, 13742479, 13742657, 13742837, 13743011, 13743193]
theorem check7 : primorialChainCheck 4473 primorial4473 184 13740457 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 13740457 13743193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13740457) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [13743319, 13743503, 13743661, 13743841, 13744021, 13744193, 13744369, 13744531, 13744711, 13744877, 13745057, 13745233, 13745377, 13745561, 13745737, 13745903]
theorem check8 : primorialChainCheck 4473 primorial4473 184 13743193 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 13743193 13745903 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13743193) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [13746077, 13746247, 13746431, 13746613, 13746797, 13746979, 13747163, 13747333, 13747499, 13747673, 13747841, 13748011, 13748177, 13748311, 13748477, 13748659]
theorem check9 : primorialChainCheck 4473 primorial4473 184 13745903 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 13745903 13748659 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13745903) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [13748831, 13749013, 13749191, 13749371, 13749503, 13749679, 13749859, 13750043, 13750201, 13750381, 13750543, 13750721, 13750873, 13751051, 13751233, 13751417]
theorem check10 : primorialChainCheck 4473 primorial4473 184 13748659 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 13748659 13751417 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13748659) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [13751599, 13751783, 13751911, 13752077, 13752259, 13752433, 13752611, 13752793, 13752971, 13753141, 13753309, 13753489, 13753669, 13753849, 13754017, 13754201]
theorem check11 : primorialChainCheck 4473 primorial4473 184 13751417 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 13751417 13754201 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13751417) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [13754369, 13754527, 13754693, 13754849, 13755029, 13755199, 13755383, 13755529, 13755713, 13755893, 13756073, 13756243, 13756423, 13756583, 13756753, 13756879]
theorem check12 : primorialChainCheck 4473 primorial4473 184 13754201 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 13754201 13756879 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13754201) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [13757057, 13757221, 13757389, 13757563, 13757717, 13757897, 13758077, 13758259, 13758427, 13758587, 13758737, 13758917, 13759093, 13759247, 13759423, 13759583]
theorem check13 : primorialChainCheck 4473 primorial4473 184 13756879 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 13756879 13759583 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13756879) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [13759763, 13759903, 13760081, 13760261, 13760437, 13760611, 13760779, 13760963, 13761131, 13761289, 13761469, 13761617, 13761793, 13761971, 13762127, 13762283]
theorem check14 : primorialChainCheck 4473 primorial4473 184 13759583 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 13759583 13762283 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13759583) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [13762459, 13762643, 13762823, 13762997, 13763179, 13763359, 13763521, 13763681, 13763861, 13764043, 13764221, 13764391, 13764571, 13764739, 13764923, 13765093]
theorem check15 : primorialChainCheck 4473 primorial4473 184 13762283 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 13762283 13765093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13762283) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [13765277, 13765447, 13765571, 13765751, 13765919, 13766101, 13766281, 13766453, 13766593, 13766771, 13766947, 13767109, 13767277, 13767449, 13767631, 13767781]
theorem check16 : primorialChainCheck 4473 primorial4473 184 13765093 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 13765093 13767781 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13765093) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [13767947, 13768129, 13768303, 13768481, 13768663, 13768841, 13769023, 13769191, 13769369, 13769551, 13769729, 13769911, 13770091, 13770271, 13770437, 13770607]
theorem check17 : primorialChainCheck 4473 primorial4473 184 13767781 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 13767781 13770607 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13767781) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [13770773, 13770929, 13771091, 13771271, 13771427, 13771579, 13771763, 13771943, 13772123, 13772299, 13772459, 13772639, 13772821, 13772977, 13773107, 13773229]
theorem check18 : primorialChainCheck 4473 primorial4473 184 13770607 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 13770607 13773229 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13770607) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [13773379, 13773563, 13773737, 13773913, 13774037, 13774207, 13774381, 13774531, 13774703, 13774883, 13775059, 13775233, 13775407, 13775539, 13775719, 13775897]
theorem check19 : primorialChainCheck 4473 primorial4473 184 13773229 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 13773229 13775897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13773229) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [13776067, 13776251, 13776419, 13776601, 13776757, 13776937, 13777097, 13777279, 13777453, 13777637, 13777811, 13777979, 13778147, 13778327, 13778507, 13778671]
theorem check20 : primorialChainCheck 4473 primorial4473 184 13775897 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 13775897 13778671 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13775897) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [13778851, 13779013, 13779193, 13779377, 13779539, 13779719, 13779869, 13780037, 13780219, 13780397, 13780579, 13780763, 13780939, 13781123, 13781291, 13781461]
theorem check21 : primorialChainCheck 4473 primorial4473 184 13778671 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 13778671 13781461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13778671) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [13781591, 13781771, 13781953, 13782137, 13782319, 13782499, 13782679, 13782863, 13783027, 13783201, 13783373, 13783541, 13783723, 13783907, 13784087, 13784269]
theorem check22 : primorialChainCheck 4473 primorial4473 184 13781461 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 13781461 13784269 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13781461) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [13784431, 13784591, 13784761, 13784933, 13785103, 13785271, 13785449, 13785619, 13785803, 13785983, 13786151, 13786321, 13786501, 13786679, 13786841, 13787023]
theorem check23 : primorialChainCheck 4473 primorial4473 184 13784269 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 13784269 13787023 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13784269) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [13787203, 13787387, 13787567, 13787747, 13787929, 13788101, 13788283, 13788461, 13788637, 13788811, 13788991, 13789163, 13789343, 13789469, 13789621, 13789793]
theorem check24 : primorialChainCheck 4473 primorial4473 184 13787023 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 13787023 13789793 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13787023) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [13789967, 13790113, 13790297, 13790471, 13790611, 13790779, 13790963, 13791143, 13791319, 13791499, 13791667, 13791829, 13792001, 13792183, 13792367, 13792549]
theorem check25 : primorialChainCheck 4473 primorial4473 184 13789793 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 13789793 13792549 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13789793) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [13792733, 13792913, 13793093, 13793249, 13793431, 13793609, 13793789, 13793971, 13794149, 13794331, 13794509, 13794689, 13794857, 13795037, 13795207, 13795373]
theorem check26 : primorialChainCheck 4473 primorial4473 184 13792549 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 13792549 13795373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13792549) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [13795549, 13795681, 13795861, 13796039, 13796221, 13796369, 13796551, 13796683, 13796863, 13797031, 13797193, 13797349, 13797527, 13797701, 13797871, 13798051]
theorem check27 : primorialChainCheck 4473 primorial4473 184 13795373 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 13795373 13798051 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13795373) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [13798217, 13798381, 13798559, 13798739, 13798909, 13799089, 13799249, 13799399, 13799581, 13799761, 13799939, 13800121, 13800221, 13800389, 13800557, 13800737]
theorem check28 : primorialChainCheck 4473 primorial4473 184 13798051 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 13798051 13800737 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13798051) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [13800883, 13801043, 13801213, 13801393, 13801577, 13801747, 13801927, 13802083, 13802267, 13802449, 13802617, 13802791, 13802951, 13803121, 13803259, 13803421]
theorem check29 : primorialChainCheck 4473 primorial4473 184 13800737 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 13800737 13803421 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13800737) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [13803589, 13803743, 13803919, 13804103, 13804277, 13804451, 13804631, 13804801, 13804961, 13805119, 13805303, 13805471, 13805651, 13805821, 13805983, 13806131]
theorem check30 : primorialChainCheck 4473 primorial4473 184 13803421 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 13803421 13806131 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13803421) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [13806283, 13806467, 13806643, 13806803, 13806979, 13807163, 13807301, 13807481, 13807657, 13807841, 13807999, 13808167, 13808351, 13808527, 13808699, 13808869]
theorem check31 : primorialChainCheck 4473 primorial4473 184 13806131 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 13806131 13808869 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 13806131) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 13721599 13726943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13721599)
    (mid := 13724233) (hi := 13726943) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 13726943 13732423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13726943)
    (mid := 13729663) (hi := 13732423) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 13732423 13737869 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13732423)
    (mid := 13735097) (hi := 13737869) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 13737869 13743193 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13737869)
    (mid := 13740457) (hi := 13743193) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 13743193 13748659 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13743193)
    (mid := 13745903) (hi := 13748659) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 13748659 13754201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13748659)
    (mid := 13751417) (hi := 13754201) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 13754201 13759583 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13754201)
    (mid := 13756879) (hi := 13759583) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 13759583 13765093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13759583)
    (mid := 13762283) (hi := 13765093) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 13765093 13770607 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13765093)
    (mid := 13767781) (hi := 13770607) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 13770607 13775897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13770607)
    (mid := 13773229) (hi := 13775897) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 13775897 13781461 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13775897)
    (mid := 13778671) (hi := 13781461) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 13781461 13787023 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13781461)
    (mid := 13784269) (hi := 13787023) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 13787023 13792549 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13787023)
    (mid := 13789793) (hi := 13792549) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 13792549 13798051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13792549)
    (mid := 13795373) (hi := 13798051) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 13798051 13803421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13798051)
    (mid := 13800737) (hi := 13803421) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 13803421 13808869 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13803421)
    (mid := 13806131) (hi := 13808869) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 13721599 13732423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13721599)
    (mid := 13726943) (hi := 13732423) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 13732423 13743193 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13732423)
    (mid := 13737869) (hi := 13743193) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 13743193 13754201 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13743193)
    (mid := 13748659) (hi := 13754201) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 13754201 13765093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13754201)
    (mid := 13759583) (hi := 13765093) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 13765093 13775897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13765093)
    (mid := 13770607) (hi := 13775897) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 13775897 13787023 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13775897)
    (mid := 13781461) (hi := 13787023) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 13787023 13798051 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13787023)
    (mid := 13792549) (hi := 13798051) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 13798051 13808869 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13798051)
    (mid := 13803421) (hi := 13808869) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 13721599 13743193 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13721599)
    (mid := 13732423) (hi := 13743193) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 13743193 13765093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13743193)
    (mid := 13754201) (hi := 13765093) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 13765093 13787023 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13765093)
    (mid := 13775897) (hi := 13787023) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 13787023 13808869 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13787023)
    (mid := 13798051) (hi := 13808869) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 13721599 13765093 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13721599)
    (mid := 13743193) (hi := 13765093) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 13765093 13808869 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13765093)
    (mid := 13787023) (hi := 13808869) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 13721599 13808869 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 13721599)
    (mid := 13765093) (hi := 13808869) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 13721599 13808869 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block156

#print axioms B699MiddleExtension.PrimorialBlocks.Block156.joined
