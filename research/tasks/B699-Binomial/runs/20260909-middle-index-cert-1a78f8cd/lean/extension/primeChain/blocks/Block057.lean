import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block057

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [5042203, 5042383, 5042563, 5042729, 5042903, 5043079, 5043263, 5043443, 5043613, 5043761, 5043919, 5044093, 5044267, 5044439, 5044619, 5044789]
theorem check0 : primorialChainCheck 4473 primorial4473 184 5042033 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 5042033 5044789 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5042033) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [5044969, 5045137, 5045297, 5045479, 5045611, 5045791, 5045959, 5046133, 5046313, 5046491, 5046659, 5046817, 5046997, 5047171, 5047333, 5047517]
theorem check1 : primorialChainCheck 4473 primorial4473 184 5044789 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 5044789 5047517 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5044789) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [5047697, 5047849, 5048011, 5048149, 5048297, 5048467, 5048647, 5048821, 5048999, 5049173, 5049349, 5049523, 5049689, 5049853, 5050033, 5050217]
theorem check2 : primorialChainCheck 4473 primorial4473 184 5047517 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 5047517 5050217 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5047517) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [5050369, 5050543, 5050723, 5050897, 5051069, 5051251, 5051413, 5051581, 5051749, 5051911, 5052079, 5052241, 5052407, 5052589, 5052769, 5052947]
theorem check3 : primorialChainCheck 4473 primorial4473 184 5050217 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 5050217 5052947 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5050217) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [5053121, 5053303, 5053469, 5053649, 5053817, 5053973, 5054143, 5054327, 5054507, 5054677, 5054857, 5055023, 5055203, 5055383, 5055563, 5055709]
theorem check4 : primorialChainCheck 4473 primorial4473 184 5052947 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 5052947 5055709 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5052947) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [5055877, 5056057, 5056231, 5056397, 5056577, 5056741, 5056921, 5057099, 5057251, 5057413, 5057597, 5057747, 5057917, 5058101, 5058271, 5058437]
theorem check5 : primorialChainCheck 4473 primorial4473 184 5055709 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 5055709 5058437 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5055709) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [5058619, 5058803, 5058961, 5059139, 5059321, 5059499, 5059679, 5059837, 5060021, 5060177, 5060357, 5060521, 5060701, 5060873, 5061047, 5061187]
theorem check6 : primorialChainCheck 4473 primorial4473 184 5058437 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 5058437 5061187 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5058437) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [5061367, 5061533, 5061677, 5061857, 5062033, 5062217, 5062397, 5062567, 5062741, 5062913, 5063089, 5063251, 5063431, 5063593, 5063761, 5063939]
theorem check7 : primorialChainCheck 4473 primorial4473 184 5061187 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 5061187 5063939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5061187) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [5064121, 5064287, 5064461, 5064629, 5064809, 5064989, 5065139, 5065297, 5065481, 5065663, 5065843, 5066021, 5066183, 5066363, 5066539, 5066723]
theorem check8 : primorialChainCheck 4473 primorial4473 184 5063939 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 5063939 5066723 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5063939) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [5066881, 5067047, 5067217, 5067401, 5067583, 5067763, 5067943, 5068111, 5068291, 5068451, 5068633, 5068807, 5068981, 5069159, 5069327, 5069507]
theorem check9 : primorialChainCheck 4473 primorial4473 184 5066723 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 5066723 5069507 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5066723) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [5069681, 5069863, 5070007, 5070187, 5070343, 5070523, 5070707, 5070883, 5071067, 5071229, 5071379, 5071543, 5071709, 5071889, 5072063, 5072201]
theorem check10 : primorialChainCheck 4473 primorial4473 184 5069507 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 5069507 5072201 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5069507) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [5072371, 5072539, 5072707, 5072891, 5073067, 5073241, 5073421, 5073583, 5073767, 5073949, 5074133, 5074271, 5074453, 5074633, 5074807, 5074991]
theorem check11 : primorialChainCheck 4473 primorial4473 184 5072201 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 5072201 5074991 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5072201) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [5075173, 5075309, 5075491, 5075669, 5075827, 5075999, 5076179, 5076349, 5076527, 5076703, 5076853, 5077021, 5077201, 5077379, 5077561, 5077711]
theorem check12 : primorialChainCheck 4473 primorial4473 184 5074991 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 5074991 5077711 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5074991) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [5077889, 5078057, 5078237, 5078401, 5078581, 5078753, 5078933, 5079103, 5079259, 5079433, 5079589, 5079773, 5079947, 5080129, 5080301, 5080483]
theorem check13 : primorialChainCheck 4473 primorial4473 184 5077711 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 5077711 5080483 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5077711) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [5080661, 5080813, 5080997, 5081161, 5081339, 5081519, 5081677, 5081837, 5082013, 5082193, 5082377, 5082551, 5082731, 5082911, 5083087, 5083237]
theorem check14 : primorialChainCheck 4473 primorial4473 184 5080483 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 5080483 5083237 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5080483) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [5083399, 5083579, 5083753, 5083931, 5084113, 5084269, 5084447, 5084627, 5084809, 5084987, 5085167, 5085349, 5085523, 5085683, 5085853, 5086033]
theorem check15 : primorialChainCheck 4473 primorial4473 184 5083237 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 5083237 5086033 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5083237) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [5086189, 5086351, 5086531, 5086709, 5086891, 5087057, 5087237, 5087419, 5087603, 5087783, 5087959, 5088121, 5088301, 5088467, 5088649, 5088823]
theorem check16 : primorialChainCheck 4473 primorial4473 184 5086033 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 5086033 5088823 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5086033) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [5088989, 5089159, 5089339, 5089519, 5089697, 5089879, 5090017, 5090171, 5090339, 5090507, 5090671, 5090849, 5091019, 5091199, 5091379, 5091553]
theorem check17 : primorialChainCheck 4473 primorial4473 184 5088823 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 5088823 5091553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5088823) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [5091707, 5091887, 5092069, 5092229, 5092411, 5092579, 5092757, 5092937, 5093111, 5093279, 5093447, 5093623, 5093801, 5093983, 5094151, 5094329]
theorem check18 : primorialChainCheck 4473 primorial4473 184 5091553 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 5091553 5094329 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5091553) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [5094487, 5094667, 5094841, 5095009, 5095187, 5095361, 5095537, 5095721, 5095877, 5096029, 5096213, 5096393, 5096573, 5096737, 5096911, 5097089]
theorem check19 : primorialChainCheck 4473 primorial4473 184 5094329 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 5094329 5097089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5094329) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [5097259, 5097431, 5097613, 5097797, 5097979, 5098153, 5098337, 5098501, 5098679, 5098853, 5099033, 5099197, 5099357, 5099533, 5099701, 5099879]
theorem check20 : primorialChainCheck 4473 primorial4473 184 5097089 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 5097089 5099879 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5097089) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [5099993, 5100169, 5100353, 5100521, 5100691, 5100859, 5101043, 5101223, 5101403, 5101573, 5101757, 5101913, 5102087, 5102269, 5102453, 5102623]
theorem check21 : primorialChainCheck 4473 primorial4473 184 5099879 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 5099879 5102623 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5099879) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [5102789, 5102953, 5103121, 5103289, 5103473, 5103653, 5103829, 5104013, 5104193, 5104373, 5104537, 5104699, 5104877, 5105047, 5105231, 5105407]
theorem check22 : primorialChainCheck 4473 primorial4473 184 5102623 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 5102623 5105407 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5102623) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [5105587, 5105759, 5105923, 5106097, 5106251, 5106433, 5106617, 5106793, 5106967, 5107139, 5107313, 5107483, 5107651, 5107831, 5108011, 5108189]
theorem check23 : primorialChainCheck 4473 primorial4473 184 5105407 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 5105407 5108189 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5105407) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [5108353, 5108533, 5108717, 5108897, 5109067, 5109241, 5109413, 5109583, 5109751, 5109919, 5110103, 5110283, 5110459, 5110643, 5110823, 5110997]
theorem check24 : primorialChainCheck 4473 primorial4473 184 5108189 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 5108189 5110997 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5108189) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [5111179, 5111341, 5111521, 5111699, 5111879, 5112059, 5112193, 5112361, 5112533, 5112713, 5112889, 5113063, 5113247, 5113417, 5113601, 5113783]
theorem check25 : primorialChainCheck 4473 primorial4473 184 5110997 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 5110997 5113783 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5110997) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [5113967, 5114149, 5114327, 5114509, 5114689, 5114833, 5114999, 5115167, 5115343, 5115511, 5115679, 5115863, 5116043, 5116211, 5116393, 5116577]
theorem check26 : primorialChainCheck 4473 primorial4473 184 5113783 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 5113783 5116577 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5113783) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [5116739, 5116921, 5117089, 5117269, 5117419, 5117603, 5117779, 5117953, 5118107, 5118287, 5118439, 5118613, 5118779, 5118959, 5119139, 5119321]
theorem check27 : primorialChainCheck 4473 primorial4473 184 5116577 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 5116577 5119321 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5116577) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [5119469, 5119649, 5119819, 5119997, 5120131, 5120299, 5120477, 5120657, 5120839, 5121007, 5121191, 5121367, 5121551, 5121713, 5121889, 5122069]
theorem check28 : primorialChainCheck 4473 primorial4473 184 5119321 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 5119321 5122069 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5119321) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [5122213, 5122393, 5122541, 5122717, 5122889, 5123051, 5123231, 5123399, 5123551, 5123719, 5123891, 5124059, 5124187, 5124349, 5124529, 5124683]
theorem check29 : primorialChainCheck 4473 primorial4473 184 5122069 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 5122069 5124683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5122069) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [5124859, 5125039, 5125223, 5125399, 5125583, 5125759, 5125933, 5126117, 5126291, 5126449, 5126629, 5126813, 5126987, 5127139, 5127313, 5127487]
theorem check30 : primorialChainCheck 4473 primorial4473 184 5124683 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 5124683 5127487 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5124683) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [5127641, 5127797, 5127977, 5128153, 5128337, 5128511, 5128691, 5128873, 5129057, 5129227, 5129407, 5129581, 5129749, 5129933, 5130113, 5130271]
theorem check31 : primorialChainCheck 4473 primorial4473 184 5127487 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 5127487 5130271 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5127487) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 5042033 5047517 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5042033)
    (mid := 5044789) (hi := 5047517) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 5047517 5052947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5047517)
    (mid := 5050217) (hi := 5052947) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 5052947 5058437 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5052947)
    (mid := 5055709) (hi := 5058437) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 5058437 5063939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5058437)
    (mid := 5061187) (hi := 5063939) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 5063939 5069507 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5063939)
    (mid := 5066723) (hi := 5069507) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 5069507 5074991 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5069507)
    (mid := 5072201) (hi := 5074991) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 5074991 5080483 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5074991)
    (mid := 5077711) (hi := 5080483) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 5080483 5086033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5080483)
    (mid := 5083237) (hi := 5086033) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 5086033 5091553 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5086033)
    (mid := 5088823) (hi := 5091553) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 5091553 5097089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5091553)
    (mid := 5094329) (hi := 5097089) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 5097089 5102623 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5097089)
    (mid := 5099879) (hi := 5102623) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 5102623 5108189 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5102623)
    (mid := 5105407) (hi := 5108189) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 5108189 5113783 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5108189)
    (mid := 5110997) (hi := 5113783) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 5113783 5119321 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5113783)
    (mid := 5116577) (hi := 5119321) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 5119321 5124683 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5119321)
    (mid := 5122069) (hi := 5124683) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 5124683 5130271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5124683)
    (mid := 5127487) (hi := 5130271) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 5042033 5052947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5042033)
    (mid := 5047517) (hi := 5052947) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 5052947 5063939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5052947)
    (mid := 5058437) (hi := 5063939) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 5063939 5074991 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5063939)
    (mid := 5069507) (hi := 5074991) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 5074991 5086033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5074991)
    (mid := 5080483) (hi := 5086033) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 5086033 5097089 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5086033)
    (mid := 5091553) (hi := 5097089) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 5097089 5108189 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5097089)
    (mid := 5102623) (hi := 5108189) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 5108189 5119321 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5108189)
    (mid := 5113783) (hi := 5119321) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 5119321 5130271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5119321)
    (mid := 5124683) (hi := 5130271) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 5042033 5063939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5042033)
    (mid := 5052947) (hi := 5063939) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 5063939 5086033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5063939)
    (mid := 5074991) (hi := 5086033) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 5086033 5108189 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5086033)
    (mid := 5097089) (hi := 5108189) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 5108189 5130271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5108189)
    (mid := 5119321) (hi := 5130271) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 5042033 5086033 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5042033)
    (mid := 5063939) (hi := 5086033) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 5086033 5130271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5086033)
    (mid := 5108189) (hi := 5130271) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 5042033 5130271 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5042033)
    (mid := 5086033) (hi := 5130271) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 5042033 5130271 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block057

#print axioms B699MiddleExtension.PrimorialBlocks.Block057.joined
