import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block097

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [8554031, 8554193, 8554373, 8554547, 8554717, 8554901, 8555051, 8555227, 8555389, 8555549, 8555717, 8555891, 8556071, 8556241, 8556419, 8556571]
theorem check0 : primorialChainCheck 4473 primorial4473 184 8553877 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 8553877 8556571 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8553877) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [8556749, 8556923, 8557093, 8557267, 8557447, 8557609, 8557793, 8557937, 8558119, 8558287, 8558471, 8558651, 8558833, 8559017, 8559181, 8559361]
theorem check1 : primorialChainCheck 4473 primorial4473 184 8556571 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 8556571 8559361 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8556571) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [8559539, 8559713, 8559877, 8560049, 8560229, 8560411, 8560549, 8560733, 8560907, 8561089, 8561269, 8561447, 8561627, 8561809, 8561963, 8562137]
theorem check2 : primorialChainCheck 4473 primorial4473 184 8559361 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 8559361 8562137 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8559361) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [8562313, 8562473, 8562649, 8562821, 8563003, 8563187, 8563351, 8563519, 8563697, 8563861, 8563987, 8564167, 8564351, 8564527, 8564681, 8564863]
theorem check3 : primorialChainCheck 4473 primorial4473 184 8562137 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 8562137 8564863 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8562137) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [8565047, 8565217, 8565397, 8565581, 8565743, 8565917, 8566043, 8566213, 8566357, 8566507, 8566673, 8566849, 8567033, 8567203, 8567341, 8567513]
theorem check4 : primorialChainCheck 4473 primorial4473 184 8564863 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 8564863 8567513 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8564863) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [8567693, 8567869, 8568047, 8568227, 8568409, 8568583, 8568767, 8568947, 8569117, 8569289, 8569469, 8569637, 8569811, 8569991, 8570161, 8570299]
theorem check5 : primorialChainCheck 4473 primorial4473 184 8567513 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 8567513 8570299 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8567513) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [8570483, 8570659, 8570831, 8571011, 8571181, 8571361, 8571539, 8571707, 8571881, 8572033, 8572217, 8572397, 8572549, 8572727, 8572903, 8573077]
theorem check6 : primorialChainCheck 4473 primorial4473 184 8570299 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 8570299 8573077 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8570299) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [8573261, 8573443, 8573623, 8573801, 8573953, 8574133, 8574311, 8574479, 8574661, 8574823, 8574991, 8575169, 8575351, 8575493, 8575663, 8575841]
theorem check7 : primorialChainCheck 4473 primorial4473 184 8573077 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 8573077 8575841 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8573077) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [8576021, 8576203, 8576387, 8576569, 8576747, 8576929, 8577103, 8577263, 8577403, 8577563, 8577743, 8577901, 8578067, 8578249, 8578417, 8578589]
theorem check8 : primorialChainCheck 4473 primorial4473 184 8575841 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 8575841 8578589 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8575841) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [8578771, 8578949, 8579117, 8579297, 8579443, 8579573, 8579749, 8579929, 8580113, 8580289, 8580469, 8580653, 8580833, 8581007, 8581189, 8581367]
theorem check9 : primorialChainCheck 4473 primorial4473 184 8578589 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 8578589 8581367 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8578589) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [8581523, 8581693, 8581861, 8582027, 8582209, 8582389, 8582543, 8582723, 8582891, 8583073, 8583247, 8583401, 8583581, 8583713, 8583893, 8584073]
theorem check10 : primorialChainCheck 4473 primorial4473 184 8581367 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 8581367 8584073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8581367) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [8584253, 8584423, 8584579, 8584759, 8584943, 8585111, 8585293, 8585477, 8585657, 8585839, 8586013, 8586191, 8586373, 8586533, 8586709, 8586883]
theorem check11 : primorialChainCheck 4473 primorial4473 184 8584073 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 8584073 8586883 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8584073) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [8587043, 8587207, 8587361, 8587543, 8587723, 8587897, 8588071, 8588249, 8588431, 8588579, 8588761, 8588929, 8589101, 8589247, 8589431, 8589613]
theorem check12 : primorialChainCheck 4473 primorial4473 184 8586883 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 8586883 8589613 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8586883) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [8589797, 8589967, 8590139, 8590301, 8590471, 8590643, 8590811, 8590991, 8591131, 8591311, 8591483, 8591663, 8591831, 8591963, 8592127, 8592299]
theorem check13 : primorialChainCheck 4473 primorial4473 184 8589613 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 8589613 8592299 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8589613) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [8592481, 8592659, 8592833, 8593001, 8593183, 8593349, 8593531, 8593703, 8593883, 8594059, 8594233, 8594413, 8594591, 8594771, 8594951, 8595133]
theorem check14 : primorialChainCheck 4473 primorial4473 184 8592299 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 8592299 8595133 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8592299) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [8595311, 8595493, 8595673, 8595857, 8596039, 8596223, 8596403, 8596583, 8596741, 8596909, 8597093, 8597263, 8597417, 8597599, 8597783, 8597947]
theorem check15 : primorialChainCheck 4473 primorial4473 184 8595133 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 8595133 8597947 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8595133) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [8598119, 8598221, 8598391, 8598571, 8598701, 8598869, 8599037, 8599219, 8599403, 8599583, 8599693, 8599867, 8600047, 8600231, 8600411, 8600593]
theorem check16 : primorialChainCheck 4473 primorial4473 184 8597947 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 8597947 8600593 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8597947) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [8600777, 8600959, 8601143, 8601293, 8601457, 8601641, 8601823, 8602007, 8602177, 8602343, 8602519, 8602703, 8602873, 8603057, 8603239, 8603407]
theorem check17 : primorialChainCheck 4473 primorial4473 184 8600593 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 8600593 8603407 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8600593) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [8603591, 8603767, 8603951, 8604119, 8604293, 8604469, 8604649, 8604823, 8605001, 8605171, 8605319, 8605501, 8605637, 8605813, 8605997, 8606179]
theorem check18 : primorialChainCheck 4473 primorial4473 184 8603407 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 8603407 8606179 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8603407) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [8606363, 8606537, 8606693, 8606869, 8607043, 8607227, 8607409, 8607587, 8607769, 8607947, 8608091, 8608261, 8608429, 8608609, 8608777, 8608931]
theorem check19 : primorialChainCheck 4473 primorial4473 184 8606179 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 8606179 8608931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8606179) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [8609099, 8609281, 8609459, 8609639, 8609819, 8610001, 8610169, 8610341, 8610523, 8610659, 8610829, 8611003, 8611181, 8611357, 8611531, 8611709]
theorem check20 : primorialChainCheck 4473 primorial4473 184 8608931 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 8608931 8611709 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8608931) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [8611891, 8612059, 8612243, 8612423, 8612581, 8612753, 8612927, 8613107, 8613281, 8613463, 8613623, 8613797, 8613967, 8614129, 8614313, 8614483]
theorem check21 : primorialChainCheck 4473 primorial4473 184 8611709 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 8611709 8614483 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8611709) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [8614651, 8614831, 8614987, 8615161, 8615333, 8615513, 8615693, 8615833, 8616011, 8616187, 8616371, 8616547, 8616721, 8616901, 8617073, 8617253]
theorem check22 : primorialChainCheck 4473 primorial4473 184 8614483 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 8614483 8617253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8614483) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [8617417, 8617561, 8617703, 8617877, 8618059, 8618243, 8618413, 8618593, 8618759, 8618933, 8619101, 8619269, 8619439, 8619623, 8619797, 8619943]
theorem check23 : primorialChainCheck 4473 primorial4473 184 8617253 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 8617253 8619943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8617253) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [8620121, 8620289, 8620429, 8620603, 8620757, 8620897, 8621077, 8621243, 8621413, 8621581, 8621749, 8621933, 8622113, 8622293, 8622473, 8622611]
theorem check24 : primorialChainCheck 4473 primorial4473 184 8619943 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 8619943 8622611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8619943) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [8622793, 8622973, 8623141, 8623319, 8623429, 8623603, 8623787, 8623969, 8624153, 8624327, 8624507, 8624677, 8624821, 8624999, 8625173, 8625349]
theorem check25 : primorialChainCheck 4473 primorial4473 184 8622611 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 8622611 8625349 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8622611) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [8625527, 8625709, 8625889, 8626067, 8626249, 8626421, 8626603, 8626777, 8626927, 8627111, 8627257, 8627441, 8627617, 8627777, 8627953, 8628131]
theorem check26 : primorialChainCheck 4473 primorial4473 184 8625349 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 8625349 8628131 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8625349) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [8628293, 8628463, 8628647, 8628811, 8628973, 8629157, 8629333, 8629507, 8629681, 8629847, 8630029, 8630207, 8630387, 8630519, 8630683, 8630861]
theorem check27 : primorialChainCheck 4473 primorial4473 184 8628131 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 8628131 8630861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8628131) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [8631041, 8631199, 8631379, 8631533, 8631713, 8631893, 8632069, 8632237, 8632411, 8632579, 8632759, 8632937, 8633113, 8633281, 8633461, 8633641]
theorem check28 : primorialChainCheck 4473 primorial4473 184 8630861 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 8630861 8633641 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8630861) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [8633777, 8633959, 8634139, 8634299, 8634481, 8634629, 8634811, 8634971, 8635141, 8635321, 8635477, 8635657, 8635817, 8635999, 8636167, 8636347]
theorem check29 : primorialChainCheck 4473 primorial4473 184 8633641 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 8633641 8636347 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8633641) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [8636521, 8636701, 8636869, 8637053, 8637227, 8637379, 8637527, 8637701, 8637869, 8638051, 8638229, 8638411, 8638583, 8638733, 8638909, 8639089]
theorem check30 : primorialChainCheck 4473 primorial4473 184 8636347 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 8636347 8639089 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8636347) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [8639273, 8639453, 8639599, 8639779, 8639951, 8640133, 8640287, 8640451, 8640601, 8640781, 8640949, 8641133, 8641309, 8641471, 8641651, 8641819]
theorem check31 : primorialChainCheck 4473 primorial4473 184 8639089 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 8639089 8641819 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8639089) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 8553877 8559361 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8553877)
    (mid := 8556571) (hi := 8559361) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 8559361 8564863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8559361)
    (mid := 8562137) (hi := 8564863) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 8564863 8570299 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8564863)
    (mid := 8567513) (hi := 8570299) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 8570299 8575841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8570299)
    (mid := 8573077) (hi := 8575841) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 8575841 8581367 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8575841)
    (mid := 8578589) (hi := 8581367) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 8581367 8586883 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8581367)
    (mid := 8584073) (hi := 8586883) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 8586883 8592299 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8586883)
    (mid := 8589613) (hi := 8592299) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 8592299 8597947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8592299)
    (mid := 8595133) (hi := 8597947) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 8597947 8603407 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8597947)
    (mid := 8600593) (hi := 8603407) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 8603407 8608931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8603407)
    (mid := 8606179) (hi := 8608931) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 8608931 8614483 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8608931)
    (mid := 8611709) (hi := 8614483) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 8614483 8619943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8614483)
    (mid := 8617253) (hi := 8619943) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 8619943 8625349 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8619943)
    (mid := 8622611) (hi := 8625349) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 8625349 8630861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8625349)
    (mid := 8628131) (hi := 8630861) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 8630861 8636347 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8630861)
    (mid := 8633641) (hi := 8636347) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 8636347 8641819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8636347)
    (mid := 8639089) (hi := 8641819) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 8553877 8564863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8553877)
    (mid := 8559361) (hi := 8564863) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 8564863 8575841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8564863)
    (mid := 8570299) (hi := 8575841) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 8575841 8586883 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8575841)
    (mid := 8581367) (hi := 8586883) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 8586883 8597947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8586883)
    (mid := 8592299) (hi := 8597947) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 8597947 8608931 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8597947)
    (mid := 8603407) (hi := 8608931) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 8608931 8619943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8608931)
    (mid := 8614483) (hi := 8619943) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 8619943 8630861 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8619943)
    (mid := 8625349) (hi := 8630861) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 8630861 8641819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8630861)
    (mid := 8636347) (hi := 8641819) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 8553877 8575841 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8553877)
    (mid := 8564863) (hi := 8575841) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 8575841 8597947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8575841)
    (mid := 8586883) (hi := 8597947) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 8597947 8619943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8597947)
    (mid := 8608931) (hi := 8619943) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 8619943 8641819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8619943)
    (mid := 8630861) (hi := 8641819) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 8553877 8597947 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8553877)
    (mid := 8575841) (hi := 8597947) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 8597947 8641819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8597947)
    (mid := 8619943) (hi := 8641819) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 8553877 8641819 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8553877)
    (mid := 8597947) (hi := 8641819) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 8553877 8641819 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block097

#print axioms B699MiddleExtension.PrimorialBlocks.Block097.joined
