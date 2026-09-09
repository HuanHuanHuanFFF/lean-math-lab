import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block205

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [18003883, 18004067, 18004249, 18004417, 18004601, 18004759, 18004937, 18005101, 18005279, 18005453, 18005633, 18005809, 18005993, 18006137, 18006299, 18006481]
theorem check0 : primorialChainCheck 4473 primorial4473 184 18003703 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 18003703 18006481 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18003703) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [18006649, 18006763, 18006943, 18007111, 18007291, 18007469, 18007609, 18007783, 18007963, 18008131, 18008311, 18008483, 18008663, 18008843, 18008993, 18009163]
theorem check1 : primorialChainCheck 4473 primorial4473 184 18006481 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 18006481 18009163 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18006481) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [18009323, 18009503, 18009683, 18009857, 18010037, 18010217, 18010387, 18010571, 18010723, 18010903, 18011039, 18011219, 18011401, 18011557, 18011671, 18011849]
theorem check2 : primorialChainCheck 4473 primorial4473 184 18009163 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 18009163 18011849 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18009163) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [18012017, 18012199, 18012373, 18012541, 18012721, 18012901, 18013069, 18013253, 18013433, 18013613, 18013781, 18013921, 18014081, 18014257, 18014417, 18014599]
theorem check3 : primorialChainCheck 4473 primorial4473 184 18011849 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 18011849 18014599 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18011849) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [18014779, 18014939, 18015091, 18015259, 18015407, 18015589, 18015761, 18015941, 18016109, 18016267, 18016433, 18016591, 18016759, 18016927, 18017101, 18017269]
theorem check4 : primorialChainCheck 4473 primorial4473 184 18014599 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 18014599 18017269 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18014599) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [18017443, 18017627, 18017801, 18017981, 18018163, 18018331, 18018503, 18018661, 18018841, 18019007, 18019159, 18019343, 18019499, 18019669, 18019849, 18020027]
theorem check5 : primorialChainCheck 4473 primorial4473 184 18017269 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 18017269 18020027 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18017269) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [18020203, 18020381, 18020551, 18020701, 18020851, 18020993, 18021131, 18021307, 18021469, 18021637, 18021799, 18021977, 18022157, 18022337, 18022517, 18022691]
theorem check6 : primorialChainCheck 4473 primorial4473 184 18020027 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 18020027 18022691 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18020027) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [18022867, 18023051, 18023221, 18023393, 18023561, 18023729, 18023911, 18024091, 18024271, 18024451, 18024623, 18024793, 18024971, 18025109, 18025283, 18025463]
theorem check7 : primorialChainCheck 4473 primorial4473 184 18022691 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 18022691 18025463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18022691) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [18025639, 18025823, 18025991, 18026167, 18026321, 18026471, 18026653, 18026831, 18027013, 18027173, 18027349, 18027533, 18027697, 18027881, 18028057, 18028237]
theorem check8 : primorialChainCheck 4473 primorial4473 184 18025463 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 18025463 18028237 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18025463) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [18028411, 18028579, 18028753, 18028931, 18029111, 18029287, 18029441, 18029621, 18029801, 18029971, 18030151, 18030323, 18030497, 18030641, 18030821, 18030977]
theorem check9 : primorialChainCheck 4473 primorial4473 184 18028237 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 18028237 18030977 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18028237) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [18031151, 18031309, 18031483, 18031633, 18031807, 18031991, 18032167, 18032323, 18032491, 18032671, 18032837, 18033017, 18033167, 18033313, 18033497, 18033667]
theorem check10 : primorialChainCheck 4473 primorial4473 184 18030977 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 18030977 18033667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18030977) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [18033839, 18034007, 18034187, 18034361, 18034537, 18034721, 18034879, 18035063, 18035231, 18035411, 18035587, 18035753, 18035923, 18036103, 18036287, 18036457]
theorem check11 : primorialChainCheck 4473 primorial4473 184 18033667 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 18033667 18036457 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18033667) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [18036607, 18036791, 18036971, 18037147, 18037301, 18037483, 18037667, 18037847, 18038021, 18038197, 18038357, 18038539, 18038689, 18038861, 18039029, 18039209]
theorem check12 : primorialChainCheck 4473 primorial4473 184 18036457 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 18036457 18039209 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18036457) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [18039389, 18039563, 18039739, 18039883, 18040051, 18040229, 18040411, 18040591, 18040769, 18040931, 18041099, 18041263, 18041383, 18041563, 18041711, 18041873]
theorem check13 : primorialChainCheck 4473 primorial4473 184 18039209 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 18039209 18041873 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18039209) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [18042047, 18042221, 18042361, 18042503, 18042683, 18042859, 18043019, 18043189, 18043357, 18043537, 18043721, 18043877, 18044051, 18044233, 18044401, 18044561]
theorem check14 : primorialChainCheck 4473 primorial4473 184 18041873 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 18041873 18044561 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18041873) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [18044731, 18044899, 18045067, 18045199, 18045359, 18045541, 18045679, 18045851, 18046031, 18046211, 18046373, 18046547, 18046723, 18046907, 18047089, 18047273]
theorem check15 : primorialChainCheck 4473 primorial4473 184 18044561 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 18044561 18047273 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18044561) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [18047443, 18047593, 18047753, 18047933, 18048113, 18048287, 18048467, 18048649, 18048809, 18048977, 18049147, 18049313, 18049489, 18049607, 18049789, 18049973]
theorem check16 : primorialChainCheck 4473 primorial4473 184 18047273 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 18047273 18049973 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18047273) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [18050119, 18050287, 18050443, 18050623, 18050807, 18050987, 18051151, 18051329, 18051511, 18051667, 18051851, 18052009, 18052187, 18052357, 18052513, 18052667]
theorem check17 : primorialChainCheck 4473 primorial4473 184 18049973 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 18049973 18052667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18049973) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [18052829, 18052987, 18053149, 18053333, 18053513, 18053683, 18053843, 18054019, 18054191, 18054371, 18054521, 18054677, 18054851, 18055031, 18055201, 18055381]
theorem check18 : primorialChainCheck 4473 primorial4473 184 18052667 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 18052667 18055381 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18052667) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [18055561, 18055721, 18055901, 18056063, 18056243, 18056417, 18056581, 18056761, 18056939, 18057107, 18057289, 18057449, 18057631, 18057799, 18057973, 18058153]
theorem check19 : primorialChainCheck 4473 primorial4473 184 18055381 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 18055381 18058153 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18055381) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [18058333, 18058507, 18058687, 18058861, 18059039, 18059221, 18059401, 18059579, 18059759, 18059929, 18060109, 18060283, 18060467, 18060641, 18060803, 18060971]
theorem check20 : primorialChainCheck 4473 primorial4473 184 18058153 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 18058153 18060971 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18058153) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [18061111, 18061289, 18061471, 18061651, 18061829, 18061997, 18062173, 18062357, 18062503, 18062683, 18062867, 18063043, 18063217, 18063391, 18063553, 18063709]
theorem check21 : primorialChainCheck 4473 primorial4473 184 18060971 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 18060971 18063709 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18060971) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [18063887, 18064049, 18064201, 18064379, 18064549, 18064733, 18064903, 18065083, 18065263, 18065417, 18065587, 18065767, 18065921, 18066091, 18066241, 18066409]
theorem check22 : primorialChainCheck 4473 primorial4473 184 18063709 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 18063709 18066409 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18063709) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [18066593, 18066749, 18066899, 18067069, 18067253, 18067417, 18067597, 18067781, 18067961, 18068143, 18068279, 18068441, 18068621, 18068803, 18068971, 18069137]
theorem check23 : primorialChainCheck 4473 primorial4473 184 18066409 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 18066409 18069137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18066409) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [18069319, 18069473, 18069647, 18069823, 18070001, 18070183, 18070361, 18070529, 18070699, 18070867, 18070999, 18071177, 18071351, 18071509, 18071687, 18071863]
theorem check24 : primorialChainCheck 4473 primorial4473 184 18069137 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 18069137 18071863 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18069137) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [18072029, 18072209, 18072389, 18072569, 18072739, 18072913, 18073073, 18073213, 18073361, 18073543, 18073721, 18073877, 18074059, 18074227, 18074411, 18074593]
theorem check25 : primorialChainCheck 4473 primorial4473 184 18071863 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 18071863 18074593 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18071863) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [18074737, 18074899, 18075073, 18075257, 18075427, 18075611, 18075791, 18075949, 18076133, 18076307, 18076481, 18076633, 18076789, 18076969, 18077141, 18077299]
theorem check26 : primorialChainCheck 4473 primorial4473 184 18074593 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 18074593 18077299 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18074593) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [18077473, 18077641, 18077821, 18077999, 18078169, 18078349, 18078527, 18078649, 18078779, 18078947, 18079129, 18079301, 18079463, 18079627, 18079801, 18079981]
theorem check27 : primorialChainCheck 4473 primorial4473 184 18077299 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 18077299 18079981 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18077299) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [18080149, 18080329, 18080497, 18080681, 18080861, 18081031, 18081211, 18081389, 18081563, 18081733, 18081913, 18082087, 18082249, 18082411, 18082583, 18082741]
theorem check28 : primorialChainCheck 4473 primorial4473 184 18079981 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 18079981 18082741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18079981) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [18082913, 18083077, 18083249, 18083431, 18083603, 18083777, 18083959, 18084109, 18084247, 18084421, 18084593, 18084769, 18084949, 18085117, 18085289, 18085439]
theorem check29 : primorialChainCheck 4473 primorial4473 184 18082741 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 18082741 18085439 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18082741) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [18085609, 18085789, 18085973, 18086149, 18086279, 18086429, 18086573, 18086743, 18086899, 18087079, 18087263, 18087401, 18087583, 18087757, 18087899, 18088067]
theorem check30 : primorialChainCheck 4473 primorial4473 184 18085439 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 18085439 18088067 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18085439) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [18088219, 18088403, 18088573, 18088729, 18088909, 18089081, 18089261, 18089437, 18089597, 18089737, 18089917, 18090097, 18090271, 18090427, 18090607, 18090773]
theorem check31 : primorialChainCheck 4473 primorial4473 184 18088067 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 18088067 18090773 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 18088067) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 18003703 18009163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18003703)
    (mid := 18006481) (hi := 18009163) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 18009163 18014599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18009163)
    (mid := 18011849) (hi := 18014599) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 18014599 18020027 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18014599)
    (mid := 18017269) (hi := 18020027) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 18020027 18025463 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18020027)
    (mid := 18022691) (hi := 18025463) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 18025463 18030977 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18025463)
    (mid := 18028237) (hi := 18030977) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 18030977 18036457 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18030977)
    (mid := 18033667) (hi := 18036457) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 18036457 18041873 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18036457)
    (mid := 18039209) (hi := 18041873) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 18041873 18047273 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18041873)
    (mid := 18044561) (hi := 18047273) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 18047273 18052667 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18047273)
    (mid := 18049973) (hi := 18052667) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 18052667 18058153 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18052667)
    (mid := 18055381) (hi := 18058153) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 18058153 18063709 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18058153)
    (mid := 18060971) (hi := 18063709) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 18063709 18069137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18063709)
    (mid := 18066409) (hi := 18069137) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 18069137 18074593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18069137)
    (mid := 18071863) (hi := 18074593) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 18074593 18079981 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18074593)
    (mid := 18077299) (hi := 18079981) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 18079981 18085439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18079981)
    (mid := 18082741) (hi := 18085439) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 18085439 18090773 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18085439)
    (mid := 18088067) (hi := 18090773) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 18003703 18014599 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18003703)
    (mid := 18009163) (hi := 18014599) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 18014599 18025463 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18014599)
    (mid := 18020027) (hi := 18025463) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 18025463 18036457 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18025463)
    (mid := 18030977) (hi := 18036457) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 18036457 18047273 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18036457)
    (mid := 18041873) (hi := 18047273) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 18047273 18058153 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18047273)
    (mid := 18052667) (hi := 18058153) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 18058153 18069137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18058153)
    (mid := 18063709) (hi := 18069137) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 18069137 18079981 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18069137)
    (mid := 18074593) (hi := 18079981) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 18079981 18090773 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18079981)
    (mid := 18085439) (hi := 18090773) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 18003703 18025463 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18003703)
    (mid := 18014599) (hi := 18025463) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 18025463 18047273 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18025463)
    (mid := 18036457) (hi := 18047273) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 18047273 18069137 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18047273)
    (mid := 18058153) (hi := 18069137) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 18069137 18090773 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18069137)
    (mid := 18079981) (hi := 18090773) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 18003703 18047273 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18003703)
    (mid := 18025463) (hi := 18047273) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 18047273 18090773 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18047273)
    (mid := 18069137) (hi := 18090773) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 18003703 18090773 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 18003703)
    (mid := 18047273) (hi := 18090773) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 18003703 18090773 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block205

#print axioms B699MiddleExtension.PrimorialBlocks.Block205.joined
