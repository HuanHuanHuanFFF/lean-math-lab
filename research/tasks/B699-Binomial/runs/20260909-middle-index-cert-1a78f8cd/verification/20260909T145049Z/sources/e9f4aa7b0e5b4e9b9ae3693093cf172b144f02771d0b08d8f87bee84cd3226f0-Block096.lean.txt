import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block096

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [8466767, 8466947, 8467111, 8467271, 8467409, 8467583, 8467763, 8467903, 8468077, 8468249, 8468429, 8468587, 8468767, 8468947, 8469127, 8469287]
theorem check0 : primorialChainCheck 4473 primorial4473 184 8466611 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 8466611 8469287 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8466611) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [8469449, 8469631, 8469809, 8469977, 8470159, 8470339, 8470507, 8470681, 8470859, 8470927, 8471087, 8471269, 8471453, 8471623, 8471803, 8471963]
theorem check1 : primorialChainCheck 4473 primorial4473 184 8469287 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 8469287 8471963 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8469287) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [8472133, 8472301, 8472481, 8472661, 8472799, 8472983, 8473151, 8473321, 8473483, 8473657, 8473841, 8474023, 8474201, 8474371, 8474537, 8474717]
theorem check2 : primorialChainCheck 4473 primorial4473 184 8471963 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 8471963 8474717 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8471963) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [8474863, 8475037, 8475217, 8475391, 8475563, 8475739, 8475899, 8476079, 8476253, 8476427, 8476607, 8476763, 8476933, 8477113, 8477281, 8477461]
theorem check3 : primorialChainCheck 4473 primorial4473 184 8474717 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 8474717 8477461 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8474717) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [8477633, 8477803, 8477983, 8478167, 8478319, 8478497, 8478671, 8478853, 8479013, 8479193, 8479357, 8479531, 8479703, 8479883, 8480063, 8480243]
theorem check4 : primorialChainCheck 4473 primorial4473 184 8477461 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 8477461 8480243 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8477461) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [8480369, 8480533, 8480699, 8480873, 8480987, 8481169, 8481331, 8481511, 8481689, 8481799, 8481983, 8482091, 8482261, 8482403, 8482577, 8482757]
theorem check5 : primorialChainCheck 4473 primorial4473 184 8480243 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 8480243 8482757 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8480243) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [8482939, 8483117, 8483287, 8483467, 8483639, 8483807, 8483977, 8484149, 8484323, 8484467, 8484601, 8484767, 8484937, 8485093, 8485277, 8485453]
theorem check6 : primorialChainCheck 4473 primorial4473 184 8482757 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 8482757 8485453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8482757) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [8485619, 8485801, 8485979, 8486129, 8486297, 8486459, 8486641, 8486809, 8486993, 8487173, 8487341, 8487421, 8487593, 8487751, 8487907, 8488091]
theorem check7 : primorialChainCheck 4473 primorial4473 184 8485453 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 8485453 8488091 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8485453) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [8488229, 8488411, 8488589, 8488751, 8488919, 8489053, 8489227, 8489357, 8489527, 8489659, 8489843, 8490023, 8490179, 8490341, 8490499, 8490673]
theorem check8 : primorialChainCheck 4473 primorial4473 184 8488091 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 8488091 8490673 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8488091) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [8490829, 8491001, 8491181, 8491363, 8491547, 8491723, 8491897, 8492053, 8492201, 8492377, 8492557, 8492717, 8492899, 8493077, 8493257, 8493439]
theorem check9 : primorialChainCheck 4473 primorial4473 184 8490673 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 8490673 8493439 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8490673) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [8493559, 8493743, 8493913, 8494081, 8494253, 8494399, 8494583, 8494757, 8494939, 8495117, 8495273, 8495449, 8495629, 8495807, 8495989, 8496151]
theorem check10 : primorialChainCheck 4473 primorial4473 184 8493439 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 8493439 8496151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8493439) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [8496281, 8496443, 8496611, 8496773, 8496949, 8497133, 8497303, 8497469, 8497651, 8497823, 8497991, 8498173, 8498353, 8498527, 8498701, 8498873]
theorem check11 : primorialChainCheck 4473 primorial4473 184 8496151 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 8496151 8498873 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8496151) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [8499047, 8499229, 8499409, 8499583, 8499763, 8499937, 8500117, 8500259, 8500433, 8500607, 8500783, 8500967, 8501123, 8501293, 8501477, 8501641]
theorem check12 : primorialChainCheck 4473 primorial4473 184 8498873 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 8498873 8501641 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8498873) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [8501821, 8501993, 8502161, 8502343, 8502509, 8502677, 8502853, 8502997, 8503163, 8503337, 8503513, 8503681, 8503837, 8504021, 8504203, 8504359]
theorem check13 : primorialChainCheck 4473 primorial4473 184 8501641 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 8501641 8504359 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8501641) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [8504543, 8504693, 8504849, 8505031, 8505209, 8505391, 8505569, 8505727, 8505907, 8506087, 8506271, 8506441, 8506571, 8506717, 8506867, 8507039]
theorem check14 : primorialChainCheck 4473 primorial4473 184 8504359 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 8504359 8507039 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8504359) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [8507221, 8507371, 8507549, 8507729, 8507911, 8508089, 8508251, 8508433, 8508613, 8508793, 8508967, 8509147, 8509331, 8509513, 8509681, 8509861]
theorem check15 : primorialChainCheck 4473 primorial4473 184 8507039 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 8507039 8509861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8507039) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [8510039, 8510191, 8510357, 8510539, 8510707, 8510849, 8511023, 8511197, 8511367, 8511527, 8511691, 8511859, 8512043, 8512219, 8512391, 8512571]
theorem check16 : primorialChainCheck 4473 primorial4473 184 8509861 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 8509861 8512571 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8509861) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [8512739, 8512919, 8513077, 8513257, 8513431, 8513597, 8513731, 8513899, 8514073, 8514257, 8514419, 8514601, 8514749, 8514923, 8515081, 8515237]
theorem check17 : primorialChainCheck 4473 primorial4473 184 8512571 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 8512571 8515237 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8512571) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [8515391, 8515561, 8515723, 8515907, 8516083, 8516251, 8516429, 8516611, 8516773, 8516957, 8517137, 8517319, 8517499, 8517671, 8517823, 8517991]
theorem check18 : primorialChainCheck 4473 primorial4473 184 8515237 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 8515237 8517991 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8515237) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [8518157, 8518339, 8518519, 8518681, 8518847, 8519009, 8519143, 8519317, 8519491, 8519647, 8519827, 8520011, 8520191, 8520359, 8520527, 8520709]
theorem check19 : primorialChainCheck 4473 primorial4473 184 8517991 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 8517991 8520709 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8517991) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [8520887, 8521069, 8521243, 8521427, 8521603, 8521787, 8521963, 8522147, 8522309, 8522477, 8522641, 8522809, 8522989, 8523173, 8523349, 8523527]
theorem check20 : primorialChainCheck 4473 primorial4473 184 8520709 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 8520709 8523527 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8520709) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [8523707, 8523881, 8524051, 8524213, 8524391, 8524561, 8524741, 8524909, 8525071, 8525239, 8525411, 8525593, 8525773, 8525897, 8526071, 8526253]
theorem check21 : primorialChainCheck 4473 primorial4473 184 8523527 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 8523527 8526253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8523527) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [8526409, 8526577, 8526737, 8526919, 8527097, 8527271, 8527451, 8527627, 8527807, 8527991, 8528173, 8528357, 8528519, 8528693, 8528873, 8529049]
theorem check22 : primorialChainCheck 4473 primorial4473 184 8526253 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 8526253 8529049 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8526253) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [8529229, 8529413, 8529559, 8529707, 8529877, 8530051, 8530229, 8530409, 8530591, 8530771, 8530939, 8531101, 8531279, 8531461, 8531639, 8531821]
theorem check23 : primorialChainCheck 4473 primorial4473 184 8529049 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 8529049 8531821 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8529049) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [8531947, 8532127, 8532301, 8532473, 8532637, 8532817, 8533001, 8533183, 8533363, 8533543, 8533697, 8533879, 8534047, 8534209, 8534387, 8534569]
theorem check24 : primorialChainCheck 4473 primorial4473 184 8531821 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 8531821 8534569 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8531821) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [8534741, 8534921, 8535097, 8535269, 8535437, 8535613, 8535781, 8535949, 8536103, 8536277, 8536459, 8536637, 8536807, 8536961, 8537101, 8537267]
theorem check25 : primorialChainCheck 4473 primorial4473 184 8534569 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 8534569 8537267 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8534569) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [8537447, 8537603, 8537759, 8537933, 8538107, 8538281, 8538461, 8538637, 8538797, 8538979, 8539163, 8539343, 8539507, 8539691, 8539847, 8540027]
theorem check26 : primorialChainCheck 4473 primorial4473 184 8537267 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 8537267 8540027 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8537267) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [8540179, 8540353, 8540537, 8540713, 8540893, 8541067, 8541251, 8541409, 8541587, 8541751, 8541889, 8542069, 8542253, 8542427, 8542603, 8542777]
theorem check27 : primorialChainCheck 4473 primorial4473 184 8540027 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 8540027 8542777 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8540027) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [8542943, 8543113, 8543279, 8543461, 8543641, 8543819, 8544001, 8544169, 8544337, 8544493, 8544671, 8544853, 8545007, 8545183, 8545357, 8545541]
theorem check28 : primorialChainCheck 4473 primorial4473 184 8542777 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 8542777 8545541 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8542777) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [8545721, 8545843, 8546023, 8546201, 8546383, 8546543, 8546717, 8546899, 8547079, 8547251, 8547419, 8547601, 8547767, 8547949, 8548129, 8548303]
theorem check29 : primorialChainCheck 4473 primorial4473 184 8545541 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 8545541 8548303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8545541) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [8548487, 8548643, 8548817, 8548987, 8549153, 8549329, 8549507, 8549683, 8549857, 8550037, 8550211, 8550379, 8550557, 8550739, 8550907, 8551091]
theorem check30 : primorialChainCheck 4473 primorial4473 184 8548303 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 8548303 8551091 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8548303) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [8551271, 8551451, 8551601, 8551783, 8551937, 8552119, 8552293, 8552473, 8552653, 8552833, 8553007, 8553187, 8553367, 8553547, 8553719, 8553877]
theorem check31 : primorialChainCheck 4473 primorial4473 184 8551091 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 8551091 8553877 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8551091) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 8466611 8471963 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8466611)
    (mid := 8469287) (hi := 8471963) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 8471963 8477461 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8471963)
    (mid := 8474717) (hi := 8477461) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 8477461 8482757 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8477461)
    (mid := 8480243) (hi := 8482757) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 8482757 8488091 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8482757)
    (mid := 8485453) (hi := 8488091) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 8488091 8493439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8488091)
    (mid := 8490673) (hi := 8493439) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 8493439 8498873 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8493439)
    (mid := 8496151) (hi := 8498873) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 8498873 8504359 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8498873)
    (mid := 8501641) (hi := 8504359) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 8504359 8509861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8504359)
    (mid := 8507039) (hi := 8509861) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 8509861 8515237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8509861)
    (mid := 8512571) (hi := 8515237) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 8515237 8520709 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8515237)
    (mid := 8517991) (hi := 8520709) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 8520709 8526253 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8520709)
    (mid := 8523527) (hi := 8526253) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 8526253 8531821 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8526253)
    (mid := 8529049) (hi := 8531821) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 8531821 8537267 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8531821)
    (mid := 8534569) (hi := 8537267) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 8537267 8542777 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8537267)
    (mid := 8540027) (hi := 8542777) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 8542777 8548303 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8542777)
    (mid := 8545541) (hi := 8548303) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 8548303 8553877 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8548303)
    (mid := 8551091) (hi := 8553877) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 8466611 8477461 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8466611)
    (mid := 8471963) (hi := 8477461) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 8477461 8488091 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8477461)
    (mid := 8482757) (hi := 8488091) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 8488091 8498873 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8488091)
    (mid := 8493439) (hi := 8498873) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 8498873 8509861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8498873)
    (mid := 8504359) (hi := 8509861) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 8509861 8520709 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8509861)
    (mid := 8515237) (hi := 8520709) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 8520709 8531821 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8520709)
    (mid := 8526253) (hi := 8531821) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 8531821 8542777 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8531821)
    (mid := 8537267) (hi := 8542777) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 8542777 8553877 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8542777)
    (mid := 8548303) (hi := 8553877) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 8466611 8488091 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8466611)
    (mid := 8477461) (hi := 8488091) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 8488091 8509861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8488091)
    (mid := 8498873) (hi := 8509861) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 8509861 8531821 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8509861)
    (mid := 8520709) (hi := 8531821) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 8531821 8553877 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8531821)
    (mid := 8542777) (hi := 8553877) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 8466611 8509861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8466611)
    (mid := 8488091) (hi := 8509861) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 8509861 8553877 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8509861)
    (mid := 8531821) (hi := 8553877) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 8466611 8553877 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8466611)
    (mid := 8509861) (hi := 8553877) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 8466611 8553877 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block096

#print axioms B699MiddleExtension.PrimorialBlocks.Block096.joined
