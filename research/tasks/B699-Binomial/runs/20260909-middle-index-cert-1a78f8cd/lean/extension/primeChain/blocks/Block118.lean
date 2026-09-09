import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block118

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [10393829, 10393991, 10394171, 10394353, 10394537, 10394717, 10394893, 10395059, 10395239, 10395403, 10395577, 10395751, 10395929, 10396103, 10396283, 10396453]
theorem check0 : primorialChainCheck 4473 primorial4473 184 10393651 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 10393651 10396453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10393651) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [10396627, 10396807, 10396973, 10397143, 10397291, 10397441, 10397599, 10397773, 10397957, 10398127, 10398307, 10398457, 10398637, 10398811, 10398979, 10399127]
theorem check1 : primorialChainCheck 4473 primorial4473 184 10396453 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 10396453 10399127 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10396453) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [10399309, 10399451, 10399633, 10399811, 10399993, 10400177, 10400339, 10400521, 10400701, 10400881, 10401029, 10401203, 10401383, 10401563, 10401737, 10401917]
theorem check2 : primorialChainCheck 4473 primorial4473 184 10399127 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 10399127 10401917 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10399127) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [10402099, 10402277, 10402459, 10402631, 10402813, 10402981, 10403161, 10403333, 10403513, 10403689, 10403867, 10404049, 10404227, 10404403, 10404517, 10404679]
theorem check3 : primorialChainCheck 4473 primorial4473 184 10401917 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 10401917 10404679 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10401917) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [10404859, 10405019, 10405193, 10405363, 10405541, 10405721, 10405897, 10406069, 10406219, 10406393, 10406573, 10406729, 10406867, 10407031, 10407209, 10407389]
theorem check4 : primorialChainCheck 4473 primorial4473 184 10404679 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 10404679 10407389 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10404679) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [10407559, 10407737, 10407913, 10408093, 10408231, 10408399, 10408583, 10408763, 10408939, 10409107, 10409249, 10409431, 10409573, 10409747, 10409911, 10410083]
theorem check5 : primorialChainCheck 4473 primorial4473 184 10407389 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 10407389 10410083 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10407389) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [10410251, 10410403, 10410581, 10410733, 10410899, 10411073, 10411237, 10411409, 10411591, 10411759, 10411931, 10412111, 10412293, 10412477, 10412657, 10412839]
theorem check6 : primorialChainCheck 4473 primorial4473 184 10410083 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 10410083 10412839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10410083) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [10413023, 10413203, 10413379, 10413547, 10413727, 10413901, 10414073, 10414247, 10414429, 10414609, 10414787, 10414961, 10415137, 10415309, 10415479, 10415663]
theorem check7 : primorialChainCheck 4473 primorial4473 184 10412839 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 10412839 10415663 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10412839) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [10415813, 10415989, 10416169, 10416347, 10416517, 10416701, 10416871, 10417013, 10417181, 10417349, 10417531, 10417697, 10417877, 10418041, 10418203, 10418377]
theorem check8 : primorialChainCheck 4473 primorial4473 184 10415663 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 10415663 10418377 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10415663) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [10418543, 10418717, 10418893, 10419067, 10419221, 10419403, 10419559, 10419743, 10419919, 10420103, 10420279, 10420453, 10420637, 10420801, 10420961, 10421143]
theorem check9 : primorialChainCheck 4473 primorial4473 184 10418377 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 10418377 10421143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10418377) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [10421317, 10421491, 10421669, 10421837, 10422017, 10422199, 10422371, 10422539, 10422719, 10422901, 10423079, 10423249, 10423433, 10423607, 10423753, 10423921]
theorem check10 : primorialChainCheck 4473 primorial4473 184 10421143 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 10421143 10423921 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10421143) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [10424101, 10424279, 10424437, 10424611, 10424789, 10424969, 10425137, 10425313, 10425491, 10425673, 10425841, 10426019, 10426201, 10426379, 10426553, 10426733]
theorem check11 : primorialChainCheck 4473 primorial4473 184 10423921 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 10423921 10426733 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10423921) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [10426901, 10427077, 10427251, 10427429, 10427611, 10427773, 10427957, 10428137, 10428277, 10428461, 10428643, 10428809, 10428991, 10429171, 10429351, 10429513]
theorem check12 : primorialChainCheck 4473 primorial4473 184 10426733 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 10426733 10429513 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10426733) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [10429691, 10429873, 10430051, 10430219, 10430389, 10430561, 10430729, 10430909, 10431073, 10431233, 10431401, 10431571, 10431749, 10431913, 10432091, 10432259]
theorem check13 : primorialChainCheck 4473 primorial4473 184 10429513 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 10429513 10432259 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10429513) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [10432427, 10432567, 10432739, 10432921, 10433083, 10433263, 10433447, 10433581, 10433719, 10433893, 10434077, 10434257, 10434427, 10434559, 10434733, 10434901]
theorem check14 : primorialChainCheck 4473 primorial4473 184 10432259 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 10432259 10434901 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10432259) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [10435069, 10435241, 10435409, 10435589, 10435757, 10435937, 10436093, 10436233, 10436417, 10436597, 10436771, 10436893, 10437073, 10437223, 10437391, 10437571]
theorem check15 : primorialChainCheck 4473 primorial4473 184 10434901 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 10434901 10437571 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10434901) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [10437751, 10437907, 10438091, 10438271, 10438453, 10438627, 10438807, 10438973, 10439147, 10439329, 10439501, 10439659, 10439837, 10440019, 10440173, 10440349]
theorem check16 : primorialChainCheck 4473 primorial4473 184 10437571 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 10437571 10440349 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10437571) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [10440517, 10440641, 10440809, 10440979, 10441147, 10441297, 10441463, 10441633, 10441799, 10441979, 10442119, 10442303, 10442477, 10442657, 10442819, 10442969]
theorem check17 : primorialChainCheck 4473 primorial4473 184 10440349 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 10440349 10442969 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10440349) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [10443137, 10443289, 10443473, 10443623, 10443803, 10443943, 10444123, 10444283, 10444457, 10444631, 10444807, 10444991, 10445167, 10445341, 10445503, 10445653]
theorem check18 : primorialChainCheck 4473 primorial4473 184 10442969 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 10442969 10445653 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10442969) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [10445821, 10446001, 10446167, 10446343, 10446509, 10446679, 10446847, 10447013, 10447181, 10447363, 10447523, 10447637, 10447817, 10447999, 10448177, 10448359]
theorem check19 : primorialChainCheck 4473 primorial4473 184 10445653 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 10445653 10448359 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10445653) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [10448531, 10448707, 10448887, 10449071, 10449233, 10449403, 10449583, 10449737, 10449919, 10450091, 10450267, 10450421, 10450603, 10450747, 10450927, 10451093]
theorem check20 : primorialChainCheck 4473 primorial4473 184 10448359 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 10448359 10451093 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10448359) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [10451251, 10451431, 10451599, 10451773, 10451953, 10452133, 10452313, 10452473, 10452647, 10452821, 10452997, 10453159, 10453337, 10453507, 10453637, 10453813]
theorem check21 : primorialChainCheck 4473 primorial4473 184 10451093 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 10451093 10453813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10451093) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [10453979, 10454153, 10454321, 10454501, 10454669, 10454849, 10455023, 10455191, 10455373, 10455553, 10455733, 10455917, 10456097, 10456279, 10456463, 10456637]
theorem check22 : primorialChainCheck 4473 primorial4473 184 10453813 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 10453813 10456637 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10453813) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [10456811, 10456987, 10457149, 10457303, 10457477, 10457653, 10457833, 10458011, 10458193, 10458367, 10458529, 10458691, 10458841, 10459021, 10459201, 10459381]
theorem check23 : primorialChainCheck 4473 primorial4473 184 10456637 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 10456637 10459381 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10456637) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [10459543, 10459727, 10459859, 10460029, 10460209, 10460369, 10460539, 10460719, 10460903, 10461053, 10461233, 10461397, 10461559, 10461743, 10461923, 10462099]
theorem check24 : primorialChainCheck 4473 primorial4473 184 10459381 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 10459381 10462099 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10459381) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [10462273, 10462457, 10462609, 10462763, 10462931, 10463081, 10463251, 10463417, 10463587, 10463743, 10463917, 10464071, 10464253, 10464413, 10464593, 10464767]
theorem check25 : primorialChainCheck 4473 primorial4473 184 10462099 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 10462099 10464767 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10462099) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [10464947, 10465123, 10465307, 10465453, 10465627, 10465799, 10465969, 10466147, 10466317, 10466497, 10466681, 10466857, 10467029, 10467199, 10467377, 10467551]
theorem check26 : primorialChainCheck 4473 primorial4473 184 10464767 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 10464767 10467551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10464767) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [10467731, 10467911, 10468067, 10468223, 10468387, 10468567, 10468747, 10468883, 10469051, 10469233, 10469411, 10469581, 10469759, 10469939, 10470091, 10470269]
theorem check27 : primorialChainCheck 4473 primorial4473 184 10467551 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 10467551 10470269 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10467551) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [10470433, 10470587, 10470763, 10470947, 10471093, 10471267, 10471427, 10471607, 10471763, 10471921, 10472101, 10472279, 10472461, 10472633, 10472783, 10472929]
theorem check28 : primorialChainCheck 4473 primorial4473 184 10470269 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 10470269 10472929 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10470269) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [10473101, 10473283, 10473461, 10473637, 10473803, 10473977, 10474153, 10474333, 10474511, 10474693, 10474861, 10475041, 10475209, 10475393, 10475561, 10475711]
theorem check29 : primorialChainCheck 4473 primorial4473 184 10472929 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 10472929 10475711 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10472929) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [10475867, 10476019, 10476203, 10476383, 10476559, 10476737, 10476919, 10477097, 10477273, 10477433, 10477609, 10477793, 10477963, 10478113, 10478287, 10478441]
theorem check30 : primorialChainCheck 4473 primorial4473 184 10475711 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 10475711 10478441 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10475711) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [10478623, 10478803, 10478983, 10479137, 10479311, 10479481, 10479653, 10479827, 10480009, 10480189, 10480369, 10480549, 10480711, 10480889, 10481041, 10481221]
theorem check31 : primorialChainCheck 4473 primorial4473 184 10478441 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 10478441 10481221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 10478441) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 10393651 10399127 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10393651)
    (mid := 10396453) (hi := 10399127) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 10399127 10404679 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10399127)
    (mid := 10401917) (hi := 10404679) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 10404679 10410083 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10404679)
    (mid := 10407389) (hi := 10410083) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 10410083 10415663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10410083)
    (mid := 10412839) (hi := 10415663) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 10415663 10421143 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10415663)
    (mid := 10418377) (hi := 10421143) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 10421143 10426733 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10421143)
    (mid := 10423921) (hi := 10426733) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 10426733 10432259 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10426733)
    (mid := 10429513) (hi := 10432259) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 10432259 10437571 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10432259)
    (mid := 10434901) (hi := 10437571) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 10437571 10442969 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10437571)
    (mid := 10440349) (hi := 10442969) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 10442969 10448359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10442969)
    (mid := 10445653) (hi := 10448359) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 10448359 10453813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10448359)
    (mid := 10451093) (hi := 10453813) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 10453813 10459381 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10453813)
    (mid := 10456637) (hi := 10459381) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 10459381 10464767 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10459381)
    (mid := 10462099) (hi := 10464767) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 10464767 10470269 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10464767)
    (mid := 10467551) (hi := 10470269) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 10470269 10475711 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10470269)
    (mid := 10472929) (hi := 10475711) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 10475711 10481221 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10475711)
    (mid := 10478441) (hi := 10481221) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 10393651 10404679 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10393651)
    (mid := 10399127) (hi := 10404679) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 10404679 10415663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10404679)
    (mid := 10410083) (hi := 10415663) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 10415663 10426733 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10415663)
    (mid := 10421143) (hi := 10426733) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 10426733 10437571 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10426733)
    (mid := 10432259) (hi := 10437571) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 10437571 10448359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10437571)
    (mid := 10442969) (hi := 10448359) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 10448359 10459381 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10448359)
    (mid := 10453813) (hi := 10459381) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 10459381 10470269 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10459381)
    (mid := 10464767) (hi := 10470269) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 10470269 10481221 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10470269)
    (mid := 10475711) (hi := 10481221) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 10393651 10415663 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10393651)
    (mid := 10404679) (hi := 10415663) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 10415663 10437571 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10415663)
    (mid := 10426733) (hi := 10437571) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 10437571 10459381 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10437571)
    (mid := 10448359) (hi := 10459381) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 10459381 10481221 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10459381)
    (mid := 10470269) (hi := 10481221) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 10393651 10437571 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10393651)
    (mid := 10415663) (hi := 10437571) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 10437571 10481221 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10437571)
    (mid := 10459381) (hi := 10481221) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 10393651 10481221 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 10393651)
    (mid := 10437571) (hi := 10481221) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 10393651 10481221 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block118

#print axioms B699MiddleExtension.PrimorialBlocks.Block118.joined
