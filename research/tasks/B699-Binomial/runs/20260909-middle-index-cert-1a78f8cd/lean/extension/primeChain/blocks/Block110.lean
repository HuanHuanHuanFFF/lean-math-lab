import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block110

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [9692663, 9692833, 9693007, 9693137, 9693317, 9693473, 9693637, 9693821, 9693991, 9694141, 9694309, 9694469, 9694639, 9694793, 9694973, 9695143]
theorem check0 : primorialChainCheck 4473 primorial4473 184 9692503 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 9692503 9695143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9692503) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [9695327, 9695507, 9695687, 9695809, 9695993, 9696157, 9696311, 9696493, 9696667, 9696847, 9697027, 9697183, 9697343, 9697511, 9697691, 9697843]
theorem check1 : primorialChainCheck 4473 primorial4473 184 9695143 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 9695143 9697843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9695143) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [9698023, 9698179, 9698363, 9698543, 9698713, 9698879, 9699047, 9699211, 9699377, 9699551, 9699733, 9699917, 9700099, 9700247, 9700429, 9700609]
theorem check2 : primorialChainCheck 4473 primorial4473 184 9697843 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 9697843 9700609 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9697843) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [9700787, 9700967, 9701137, 9701291, 9701473, 9701641, 9701821, 9701999, 9702181, 9702361, 9702509, 9702677, 9702851, 9703021, 9703163, 9703307]
theorem check3 : primorialChainCheck 4473 primorial4473 184 9700609 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 9700609 9703307 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9700609) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [9703489, 9703669, 9703849, 9704033, 9704207, 9704389, 9704567, 9704743, 9704923, 9705097, 9705271, 9705431, 9705611, 9705791, 9705973, 9706157]
theorem check4 : primorialChainCheck 4473 primorial4473 184 9703307 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 9703307 9706157 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9703307) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [9706309, 9706471, 9706649, 9706831, 9706993, 9707177, 9707359, 9707531, 9707701, 9707869, 9707989, 9708143, 9708317, 9708499, 9708679, 9708833]
theorem check5 : primorialChainCheck 4473 primorial4473 184 9706157 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 9706157 9708833 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9706157) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [9709009, 9709181, 9709339, 9709517, 9709691, 9709859, 9710033, 9710191, 9710339, 9710521, 9710683, 9710863, 9711043, 9711227, 9711407, 9711571]
theorem check6 : primorialChainCheck 4473 primorial4473 184 9708833 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 9708833 9711571 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9708833) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [9711739, 9711901, 9712081, 9712259, 9712441, 9712609, 9712771, 9712949, 9713131, 9713311, 9713471, 9713653, 9713813, 9713989, 9714169, 9714347]
theorem check7 : primorialChainCheck 4473 primorial4473 184 9711571 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 9711571 9714347 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9711571) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [9714521, 9714703, 9714883, 9715049, 9715231, 9715397, 9715579, 9715763, 9715931, 9716111, 9716293, 9716477, 9716659, 9716821, 9716969, 9717143]
theorem check8 : primorialChainCheck 4473 primorial4473 184 9714347 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 9714347 9717143 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9714347) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [9717317, 9717481, 9717649, 9717811, 9717989, 9718171, 9718327, 9718507, 9718669, 9718843, 9718999, 9719167, 9719351, 9719531, 9719707, 9719873]
theorem check9 : primorialChainCheck 4473 primorial4473 184 9717143 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 9717143 9719873 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9717143) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [9720043, 9720223, 9720407, 9720589, 9720773, 9720937, 9721091, 9721273, 9721451, 9721609, 9721793, 9721969, 9722137, 9722309, 9722483, 9722659]
theorem check10 : primorialChainCheck 4473 primorial4473 184 9719873 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 9719873 9722659 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9719873) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [9722837, 9723019, 9723179, 9723349, 9723529, 9723713, 9723893, 9724061, 9724241, 9724411, 9724573, 9724733, 9724879, 9725059, 9725239, 9725407]
theorem check11 : primorialChainCheck 4473 primorial4473 184 9722659 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 9722659 9725407 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9722659) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [9725591, 9725753, 9725923, 9726097, 9726259, 9726433, 9726617, 9726797, 9726973, 9727141, 9727313, 9727493, 9727661, 9727843, 9728027, 9728197]
theorem check12 : primorialChainCheck 4473 primorial4473 184 9725407 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 9725407 9728197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9725407) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [9728377, 9728557, 9728737, 9728921, 9729103, 9729283, 9729427, 9729571, 9729743, 9729917, 9730099, 9730247, 9730423, 9730607, 9730759, 9730939]
theorem check13 : primorialChainCheck 4473 primorial4473 184 9728197 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 9728197 9730939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9728197) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [9731101, 9731279, 9731441, 9731587, 9731767, 9731947, 9732127, 9732311, 9732439, 9732607, 9732757, 9732941, 9733123, 9733303, 9733487, 9733667]
theorem check14 : primorialChainCheck 4473 primorial4473 184 9730939 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 9730939 9733667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9730939) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [9733847, 9734009, 9734189, 9734371, 9734551, 9734729, 9734887, 9735043, 9735227, 9735377, 9735559, 9735743, 9735919, 9736099, 9736283, 9736459]
theorem check15 : primorialChainCheck 4473 primorial4473 184 9733667 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 9733667 9736459 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9733667) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [9736627, 9736807, 9736973, 9737137, 9737293, 9737467, 9737641, 9737807, 9737989, 9738173, 9738349, 9738529, 9738709, 9738893, 9739069, 9739243]
theorem check16 : primorialChainCheck 4473 primorial4473 184 9736459 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 9736459 9739243 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9736459) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [9739417, 9739559, 9739721, 9739903, 9740069, 9740239, 9740413, 9740551, 9740729, 9740911, 9741089, 9741269, 9741451, 9741587, 9741763, 9741937]
theorem check17 : primorialChainCheck 4473 primorial4473 184 9739243 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 9739243 9741937 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9739243) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [9742121, 9742267, 9742427, 9742597, 9742757, 9742903, 9743087, 9743267, 9743443, 9743627, 9743807, 9743989, 9744167, 9744331, 9744481, 9744649]
theorem check18 : primorialChainCheck 4473 primorial4473 184 9741937 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 9741937 9744649 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9741937) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [9744829, 9745013, 9745181, 9745349, 9745529, 9745699, 9745877, 9746047, 9746179, 9746353, 9746533, 9746707, 9746861, 9747037, 9747203, 9747383]
theorem check19 : primorialChainCheck 4473 primorial4473 184 9744649 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 9744649 9747383 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9744649) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [9747559, 9747737, 9747917, 9748097, 9748253, 9748423, 9748603, 9748777, 9748961, 9749141, 9749323, 9749501, 9749681, 9749851, 9750029, 9750193]
theorem check20 : primorialChainCheck 4473 primorial4473 184 9747383 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 9747383 9750193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9747383) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [9750373, 9750557, 9750739, 9750901, 9751073, 9751253, 9751433, 9751613, 9751739, 9751913, 9752081, 9752261, 9752399, 9752579, 9752753, 9752929]
theorem check21 : primorialChainCheck 4473 primorial4473 184 9750193 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 9750193 9752929 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9750193) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [9753109, 9753287, 9753463, 9753637, 9753787, 9753949, 9754127, 9754289, 9754471, 9754639, 9754813, 9754993, 9755153, 9755327, 9755507, 9755677]
theorem check22 : primorialChainCheck 4473 primorial4473 184 9752929 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 9752929 9755677 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9752929) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [9755849, 9756023, 9756193, 9756359, 9756541, 9756713, 9756883, 9757061, 9757217, 9757387, 9757523, 9757703, 9757873, 9758057, 9758237, 9758407]
theorem check23 : primorialChainCheck 4473 primorial4473 184 9755677 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 9755677 9758407 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9755677) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [9758591, 9758767, 9758933, 9759091, 9759263, 9759439, 9759611, 9759793, 9759961, 9760117, 9760301, 9760481, 9760651, 9760831, 9760991, 9761123]
theorem check24 : primorialChainCheck 4473 primorial4473 184 9758407 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 9758407 9761123 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9758407) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [9761299, 9761483, 9761657, 9761837, 9762019, 9762167, 9762349, 9762521, 9762703, 9762881, 9763051, 9763231, 9763393, 9763577, 9763757, 9763939]
theorem check25 : primorialChainCheck 4473 primorial4473 184 9761123 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 9761123 9763939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9761123) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [9764107, 9764281, 9764459, 9764641, 9764801, 9764981, 9765139, 9765323, 9765473, 9765653, 9765827, 9765991, 9766157, 9766321, 9766501, 9766667]
theorem check26 : primorialChainCheck 4473 primorial4473 184 9763939 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 9763939 9766667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9763939) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [9766847, 9767029, 9767183, 9767353, 9767531, 9767713, 9767887, 9768067, 9768233, 9768391, 9768559, 9768743, 9768917, 9769093, 9769267, 9769451]
theorem check27 : primorialChainCheck 4473 primorial4473 184 9766667 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 9766667 9769451 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9766667) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [9769631, 9769807, 9769979, 9770149, 9770333, 9770489, 9770659, 9770821, 9770963, 9771143, 9771319, 9771473, 9771631, 9771809, 9771977, 9772157]
theorem check28 : primorialChainCheck 4473 primorial4473 184 9769451 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 9769451 9772157 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9769451) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [9772319, 9772489, 9772667, 9772811, 9772981, 9773161, 9773329, 9773503, 9773681, 9773851, 9774019, 9774199, 9774377, 9774559, 9774733, 9774917]
theorem check29 : primorialChainCheck 4473 primorial4473 184 9772157 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 9772157 9774917 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9772157) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [9775093, 9775247, 9775429, 9775609, 9775793, 9775949, 9776119, 9776303, 9776471, 9776651, 9776821, 9776993, 9777169, 9777353, 9777527, 9777707]
theorem check30 : primorialChainCheck 4473 primorial4473 184 9774917 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 9774917 9777707 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9774917) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [9777883, 9778061, 9778231, 9778411, 9778589, 9778763, 9778943, 9779113, 9779269, 9779453, 9779633, 9779801, 9779983, 9780167, 9780347, 9780523]
theorem check31 : primorialChainCheck 4473 primorial4473 184 9777707 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 9777707 9780523 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 9777707) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 9692503 9697843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9692503)
    (mid := 9695143) (hi := 9697843) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 9697843 9703307 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9697843)
    (mid := 9700609) (hi := 9703307) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 9703307 9708833 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9703307)
    (mid := 9706157) (hi := 9708833) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 9708833 9714347 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9708833)
    (mid := 9711571) (hi := 9714347) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 9714347 9719873 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9714347)
    (mid := 9717143) (hi := 9719873) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 9719873 9725407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9719873)
    (mid := 9722659) (hi := 9725407) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 9725407 9730939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9725407)
    (mid := 9728197) (hi := 9730939) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 9730939 9736459 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9730939)
    (mid := 9733667) (hi := 9736459) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 9736459 9741937 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9736459)
    (mid := 9739243) (hi := 9741937) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 9741937 9747383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9741937)
    (mid := 9744649) (hi := 9747383) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 9747383 9752929 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9747383)
    (mid := 9750193) (hi := 9752929) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 9752929 9758407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9752929)
    (mid := 9755677) (hi := 9758407) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 9758407 9763939 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9758407)
    (mid := 9761123) (hi := 9763939) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 9763939 9769451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9763939)
    (mid := 9766667) (hi := 9769451) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 9769451 9774917 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9769451)
    (mid := 9772157) (hi := 9774917) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 9774917 9780523 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9774917)
    (mid := 9777707) (hi := 9780523) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 9692503 9703307 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9692503)
    (mid := 9697843) (hi := 9703307) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 9703307 9714347 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9703307)
    (mid := 9708833) (hi := 9714347) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 9714347 9725407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9714347)
    (mid := 9719873) (hi := 9725407) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 9725407 9736459 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9725407)
    (mid := 9730939) (hi := 9736459) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 9736459 9747383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9736459)
    (mid := 9741937) (hi := 9747383) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 9747383 9758407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9747383)
    (mid := 9752929) (hi := 9758407) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 9758407 9769451 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9758407)
    (mid := 9763939) (hi := 9769451) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 9769451 9780523 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9769451)
    (mid := 9774917) (hi := 9780523) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 9692503 9714347 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9692503)
    (mid := 9703307) (hi := 9714347) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 9714347 9736459 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9714347)
    (mid := 9725407) (hi := 9736459) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 9736459 9758407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9736459)
    (mid := 9747383) (hi := 9758407) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 9758407 9780523 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9758407)
    (mid := 9769451) (hi := 9780523) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 9692503 9736459 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9692503)
    (mid := 9714347) (hi := 9736459) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 9736459 9780523 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9736459)
    (mid := 9758407) (hi := 9780523) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 9692503 9780523 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 9692503)
    (mid := 9736459) (hi := 9780523) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 9692503 9780523 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block110

#print axioms B699MiddleExtension.PrimorialBlocks.Block110.joined
