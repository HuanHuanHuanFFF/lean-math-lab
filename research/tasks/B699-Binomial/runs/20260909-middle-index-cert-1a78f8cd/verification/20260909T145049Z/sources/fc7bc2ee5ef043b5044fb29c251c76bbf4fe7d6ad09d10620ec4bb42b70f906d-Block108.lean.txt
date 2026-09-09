import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block108

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [9517741, 9517919, 9518099, 9518281, 9518417, 9518549, 9518723, 9518893, 9519073, 9519253, 9519431, 9519611, 9519781, 9519947, 9520129, 9520309]
theorem check0 : primorialChainCheck 4473 primorial4473 184 9517559 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 9517559 9520309 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9517559) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [9520481, 9520661, 9520829, 9520963, 9521129, 9521311, 9521461, 9521627, 9521807, 9521959, 9522137, 9522319, 9522503, 9522677, 9522853, 9523001]
theorem check1 : primorialChainCheck 4473 primorial4473 184 9520309 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 9520309 9523001 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9520309) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [9523183, 9523333, 9523499, 9523681, 9523853, 9523999, 9524183, 9524363, 9524531, 9524707, 9524891, 9525073, 9525227, 9525377, 9525547, 9525721]
theorem check2 : primorialChainCheck 4473 primorial4473 184 9523001 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 9523001 9525721 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9523001) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [9525877, 9526051, 9526229, 9526403, 9526549, 9526729, 9526903, 9527081, 9527263, 9527423, 9527591, 9527753, 9527933, 9528097, 9528257, 9528433]
theorem check3 : primorialChainCheck 4473 primorial4473 184 9525721 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 9525721 9528433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9525721) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [9528613, 9528797, 9528949, 9529133, 9529301, 9529463, 9529643, 9529823, 9529997, 9530179, 9530363, 9530539, 9530699, 9530881, 9531059, 9531233]
theorem check4 : primorialChainCheck 4473 primorial4473 184 9528433 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 9528433 9531233 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9528433) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [9531413, 9531593, 9531773, 9531943, 9532123, 9532297, 9532451, 9532613, 9532777, 9532949, 9533129, 9533299, 9533479, 9533627, 9533789, 9533971]
theorem check5 : primorialChainCheck 4473 primorial4473 184 9531233 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 9531233 9533971 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9531233) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [9534137, 9534319, 9534491, 9534667, 9534851, 9535021, 9535189, 9535367, 9535469, 9535651, 9535831, 9535979, 9536147, 9536321, 9536503, 9536687]
theorem check6 : primorialChainCheck 4473 primorial4473 184 9533971 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 9533971 9536687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9533971) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [9536867, 9537049, 9537211, 9537371, 9537551, 9537727, 9537889, 9538051, 9538229, 9538409, 9538579, 9538759, 9538913, 9539087, 9539269, 9539419]
theorem check7 : primorialChainCheck 4473 primorial4473 184 9536687 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 9536687 9539419 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9536687) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [9539581, 9539749, 9539923, 9540073, 9540257, 9540439, 9540617, 9540731, 9540911, 9541093, 9541271, 9541451, 9541627, 9541801, 9541979, 9542149]
theorem check8 : primorialChainCheck 4473 primorial4473 184 9539419 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 9539419 9542149 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9539419) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [9542333, 9542473, 9542629, 9542801, 9542971, 9543143, 9543311, 9543467, 9543623, 9543803, 9543983, 9544159, 9544343, 9544523, 9544699, 9544883]
theorem check9 : primorialChainCheck 4473 primorial4473 184 9542149 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 9542149 9544883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9542149) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [9545057, 9545233, 9545413, 9545573, 9545719, 9545881, 9546059, 9546241, 9546391, 9546557, 9546739, 9546923, 9547103, 9547273, 9547457, 9547639]
theorem check10 : primorialChainCheck 4473 primorial4473 184 9544883 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 9544883 9547639 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9544883) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [9547819, 9547981, 9548159, 9548333, 9548491, 9548653, 9548831, 9548999, 9549167, 9549341, 9549499, 9549677, 9549791, 9549973, 9550147, 9550327]
theorem check11 : primorialChainCheck 4473 primorial4473 184 9547639 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 9547639 9550327 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9547639) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [9550487, 9550669, 9550813, 9550997, 9551177, 9551327, 9551497, 9551681, 9551837, 9552019, 9552197, 9552373, 9552551, 9552733, 9552871, 9553043]
theorem check12 : primorialChainCheck 4473 primorial4473 184 9550327 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 9550327 9553043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9550327) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [9553213, 9553367, 9553529, 9553703, 9553879, 9554059, 9554219, 9554387, 9554569, 9554749, 9554933, 9555113, 9555269, 9555451, 9555631, 9555811]
theorem check13 : primorialChainCheck 4473 primorial4473 184 9553043 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 9553043 9555811 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9553043) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [9555991, 9556163, 9556331, 9556513, 9556691, 9556871, 9557017, 9557189, 9557369, 9557549, 9557711, 9557887, 9558053, 9558223, 9558407, 9558589]
theorem check14 : primorialChainCheck 4473 primorial4473 184 9555811 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 9555811 9558589 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9555811) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [9558751, 9558931, 9559103, 9559271, 9559427, 9559609, 9559783, 9559943, 9560119, 9560293, 9560461, 9560627, 9560809, 9560983, 9561131, 9561301]
theorem check15 : primorialChainCheck 4473 primorial4473 184 9558589 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 9558589 9561301 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9558589) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [9561443, 9561623, 9561787, 9561961, 9562139, 9562321, 9562499, 9562673, 9562841, 9563017, 9563173, 9563321, 9563483, 9563663, 9563839, 9564001]
theorem check16 : primorialChainCheck 4473 primorial4473 184 9561301 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 9561301 9564001 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9561301) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [9564143, 9564307, 9564487, 9564661, 9564827, 9565001, 9565163, 9565327, 9565483, 9565663, 9565817, 9565991, 9566173, 9566353, 9566533, 9566717]
theorem check17 : primorialChainCheck 4473 primorial4473 184 9564001 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 9564001 9566717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9564001) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [9566891, 9567049, 9567223, 9567407, 9567587, 9567757, 9567919, 9568103, 9568283, 9568453, 9568627, 9568789, 9568973, 9569143, 9569327, 9569509]
theorem check18 : primorialChainCheck 4473 primorial4473 184 9566717 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 9566717 9569509 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9566717) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [9569689, 9569867, 9570049, 9570233, 9570391, 9570571, 9570721, 9570857, 9571031, 9571207, 9571369, 9571547, 9571729, 9571907, 9572083, 9572261]
theorem check19 : primorialChainCheck 4473 primorial4473 184 9569509 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 9569509 9572261 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9569509) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [9572441, 9572621, 9572753, 9572933, 9573097, 9573257, 9573433, 9573593, 9573769, 9573937, 9574109, 9574289, 9574471, 9574627, 9574801, 9574949]
theorem check20 : primorialChainCheck 4473 primorial4473 184 9572261 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 9572261 9574949 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9572261) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [9575123, 9575299, 9575473, 9575647, 9575809, 9575989, 9576169, 9576341, 9576521, 9576691, 9576871, 9577033, 9577199, 9577367, 9577537, 9577697]
theorem check21 : primorialChainCheck 4473 primorial4473 184 9574949 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 9574949 9577697 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9574949) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [9577879, 9578059, 9578221, 9578399, 9578579, 9578761, 9578917, 9579083, 9579233, 9579413, 9579539, 9579719, 9579881, 9580037, 9580217, 9580393]
theorem check22 : primorialChainCheck 4473 primorial4473 184 9577697 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 9577697 9580393 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9577697) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [9580561, 9580733, 9580897, 9581057, 9581233, 9581401, 9581569, 9581753, 9581933, 9582107, 9582269, 9582451, 9582623, 9582791, 9582919, 9583103]
theorem check23 : primorialChainCheck 4473 primorial4473 184 9580393 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 9580393 9583103 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9580393) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [9583271, 9583451, 9583621, 9583781, 9583921, 9584101, 9584257, 9584441, 9584623, 9584807, 9584969, 9585151, 9585313, 9585491, 9585661, 9585827]
theorem check24 : primorialChainCheck 4473 primorial4473 184 9583103 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 9583103 9585827 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9583103) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [9586007, 9586189, 9586373, 9586541, 9586673, 9586847, 9587003, 9587183, 9587359, 9587537, 9587713, 9587873, 9588043, 9588223, 9588367, 9588533]
theorem check25 : primorialChainCheck 4473 primorial4473 184 9585827 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 9585827 9588533 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9585827) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [9588713, 9588869, 9589049, 9589219, 9589399, 9589583, 9589753, 9589933, 9590111, 9590267, 9590443, 9590621, 9590797, 9590957, 9591137, 9591317]
theorem check26 : primorialChainCheck 4473 primorial4473 184 9588533 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 9588533 9591317 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9588533) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [9591487, 9591649, 9591833, 9592013, 9592181, 9592337, 9592519, 9592703, 9592861, 9593041, 9593197, 9593351, 9593533, 9593677, 9593861, 9594043]
theorem check27 : primorialChainCheck 4473 primorial4473 184 9591317 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 9591317 9594043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9591317) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [9594227, 9594401, 9594577, 9594743, 9594917, 9595087, 9595253, 9595427, 9595603, 9595783, 9595967, 9596141, 9596317, 9596479, 9596647, 9596827]
theorem check28 : primorialChainCheck 4473 primorial4473 184 9594043 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 9594043 9596827 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9594043) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [9596981, 9597143, 9597307, 9597491, 9597661, 9597803, 9597971, 9598139, 9598321, 9598483, 9598663, 9598837, 9599017, 9599189, 9599341, 9599507]
theorem check29 : primorialChainCheck 4473 primorial4473 184 9596827 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 9596827 9599507 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9596827) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [9599683, 9599861, 9600037, 9600181, 9600347, 9600509, 9600673, 9600853, 9601027, 9601201, 9601367, 9601547, 9601727, 9601883, 9602057, 9602237]
theorem check30 : primorialChainCheck 4473 primorial4473 184 9599507 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 9599507 9602237 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9599507) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [9602413, 9602563, 9602743, 9602917, 9603067, 9603241, 9603409, 9603551, 9603731, 9603889, 9604069, 9604237, 9604411, 9604589, 9604759, 9604943]
theorem check31 : primorialChainCheck 4473 primorial4473 184 9602237 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 9602237 9604943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9602237) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 9517559 9523001 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9517559)
    (mid := 9520309) (hi := 9523001) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 9523001 9528433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9523001)
    (mid := 9525721) (hi := 9528433) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 9528433 9533971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9528433)
    (mid := 9531233) (hi := 9533971) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 9533971 9539419 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9533971)
    (mid := 9536687) (hi := 9539419) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 9539419 9544883 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9539419)
    (mid := 9542149) (hi := 9544883) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 9544883 9550327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9544883)
    (mid := 9547639) (hi := 9550327) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 9550327 9555811 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9550327)
    (mid := 9553043) (hi := 9555811) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 9555811 9561301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9555811)
    (mid := 9558589) (hi := 9561301) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 9561301 9566717 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9561301)
    (mid := 9564001) (hi := 9566717) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 9566717 9572261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9566717)
    (mid := 9569509) (hi := 9572261) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 9572261 9577697 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9572261)
    (mid := 9574949) (hi := 9577697) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 9577697 9583103 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9577697)
    (mid := 9580393) (hi := 9583103) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 9583103 9588533 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9583103)
    (mid := 9585827) (hi := 9588533) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 9588533 9594043 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9588533)
    (mid := 9591317) (hi := 9594043) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 9594043 9599507 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9594043)
    (mid := 9596827) (hi := 9599507) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 9599507 9604943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9599507)
    (mid := 9602237) (hi := 9604943) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 9517559 9528433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9517559)
    (mid := 9523001) (hi := 9528433) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 9528433 9539419 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9528433)
    (mid := 9533971) (hi := 9539419) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 9539419 9550327 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9539419)
    (mid := 9544883) (hi := 9550327) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 9550327 9561301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9550327)
    (mid := 9555811) (hi := 9561301) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 9561301 9572261 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9561301)
    (mid := 9566717) (hi := 9572261) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 9572261 9583103 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9572261)
    (mid := 9577697) (hi := 9583103) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 9583103 9594043 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9583103)
    (mid := 9588533) (hi := 9594043) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 9594043 9604943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9594043)
    (mid := 9599507) (hi := 9604943) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 9517559 9539419 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9517559)
    (mid := 9528433) (hi := 9539419) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 9539419 9561301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9539419)
    (mid := 9550327) (hi := 9561301) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 9561301 9583103 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9561301)
    (mid := 9572261) (hi := 9583103) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 9583103 9604943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9583103)
    (mid := 9594043) (hi := 9604943) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 9517559 9561301 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9517559)
    (mid := 9539419) (hi := 9561301) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 9561301 9604943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9561301)
    (mid := 9583103) (hi := 9604943) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 9517559 9604943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9517559)
    (mid := 9561301) (hi := 9604943) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 9517559 9604943 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block108

#print axioms B699MiddleExtension.PrimorialBlocks.Block108.joined
