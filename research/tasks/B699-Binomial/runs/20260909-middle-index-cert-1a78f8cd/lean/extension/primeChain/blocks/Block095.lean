import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block095

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [8379737, 8379911, 8380091, 8380271, 8380453, 8380621, 8380789, 8380969, 8381143, 8381311, 8381467, 8381627, 8381809, 8381993, 8382167, 8382349]
theorem check0 : primorialChainCheck 4473 primorial4473 184 8379557 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 8379557 8382349 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8379557) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [8382529, 8382713, 8382877, 8383033, 8383217, 8383391, 8383553, 8383709, 8383861, 8384041, 8384221, 8384401, 8384543, 8384711, 8384891, 8385073]
theorem check1 : primorialChainCheck 4473 primorial4473 184 8382349 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 8382349 8385073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8382349) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [8385253, 8385431, 8385589, 8385763, 8385931, 8386073, 8386229, 8386409, 8386579, 8386759, 8386943, 8387117, 8387297, 8387473, 8387611, 8387741]
theorem check2 : primorialChainCheck 4473 primorial4473 184 8385073 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 8385073 8387741 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8385073) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [8387921, 8388091, 8388239, 8388421, 8388593, 8388763, 8388929, 8389111, 8389261, 8389441, 8389607, 8389783, 8389967, 8390143, 8390323, 8390497]
theorem check3 : primorialChainCheck 4473 primorial4473 184 8387741 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 8387741 8390497 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8387741) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [8390671, 8390819, 8391001, 8391151, 8391323, 8391499, 8391679, 8391841, 8391997, 8392177, 8392361, 8392519, 8392693, 8392843, 8393017, 8393179]
theorem check4 : primorialChainCheck 4473 primorial4473 184 8390497 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 8390497 8393179 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8390497) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [8393353, 8393533, 8393717, 8393899, 8394083, 8394263, 8394439, 8394613, 8394797, 8394943, 8395097, 8395273, 8395441, 8395619, 8395801, 8395973]
theorem check5 : primorialChainCheck 4473 primorial4473 184 8393179 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 8393179 8395973 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8393179) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [8396149, 8396329, 8396497, 8396639, 8396819, 8396987, 8397157, 8397331, 8397509, 8397629, 8397803, 8397971, 8398147, 8398321, 8398483, 8398633]
theorem check6 : primorialChainCheck 4473 primorial4473 184 8395973 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 8395973 8398633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8395973) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [8398811, 8398993, 8399141, 8399317, 8399497, 8399659, 8399837, 8400019, 8400167, 8400323, 8400481, 8400653, 8400829, 8401013, 8401193, 8401361]
theorem check7 : primorialChainCheck 4473 primorial4473 184 8398633 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 8398633 8401361 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8398633) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [8401543, 8401721, 8401901, 8402077, 8402221, 8402399, 8402561, 8402717, 8402861, 8403029, 8403179, 8403337, 8403517, 8403691, 8403869, 8404021]
theorem check8 : primorialChainCheck 4473 primorial4473 184 8401361 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 8401361 8404021 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8401361) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [8404189, 8404351, 8404531, 8404703, 8404873, 8405029, 8405209, 8405393, 8405567, 8405723, 8405899, 8406077, 8406253, 8406367, 8406547, 8406719]
theorem check9 : primorialChainCheck 4473 primorial4473 184 8404021 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 8404021 8406719 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8404021) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [8406901, 8407079, 8407261, 8407439, 8407613, 8407771, 8407951, 8408131, 8408297, 8408461, 8408641, 8408819, 8408993, 8409173, 8409353, 8409529]
theorem check10 : primorialChainCheck 4473 primorial4473 184 8406719 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 8406719 8409529 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8406719) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [8409691, 8409871, 8410033, 8410201, 8410351, 8410531, 8410691, 8410861, 8411033, 8411201, 8411383, 8411567, 8411723, 8411873, 8412049, 8412223]
theorem check11 : primorialChainCheck 4473 primorial4473 184 8409529 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 8409529 8412223 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8409529) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [8412401, 8412553, 8412709, 8412889, 8413073, 8413247, 8413417, 8413597, 8413781, 8413957, 8414141, 8414311, 8414479, 8414657, 8414839, 8415023]
theorem check12 : primorialChainCheck 4473 primorial4473 184 8412223 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 8412223 8415023 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8412223) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [8415193, 8415361, 8415541, 8415709, 8415893, 8416049, 8416223, 8416403, 8416567, 8416747, 8416879, 8417063, 8417243, 8417401, 8417579, 8417749]
theorem check13 : primorialChainCheck 4473 primorial4473 184 8415023 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 8415023 8417749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8415023) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [8417921, 8418103, 8418283, 8418457, 8418623, 8418803, 8418979, 8419141, 8419319, 8419469, 8419651, 8419813, 8419993, 8420171, 8420351, 8420521]
theorem check14 : primorialChainCheck 4473 primorial4473 184 8417749 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 8417749 8420521 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8417749) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [8420681, 8420843, 8420983, 8421167, 8421251, 8421419, 8421587, 8421757, 8421929, 8422079, 8422247, 8422411, 8422573, 8422751, 8422927, 8423111]
theorem check15 : primorialChainCheck 4473 primorial4473 184 8420521 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 8420521 8423111 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8420521) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [8423281, 8423461, 8423621, 8423803, 8423953, 8424137, 8424319, 8424499, 8424683, 8424853, 8424973, 8425133, 8425309, 8425453, 8425621, 8425799]
theorem check16 : primorialChainCheck 4473 primorial4473 184 8423111 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 8423111 8425799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8423111) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [8425943, 8426123, 8426287, 8426461, 8426641, 8426819, 8426989, 8427173, 8427337, 8427521, 8427701, 8427851, 8428031, 8428213, 8428393, 8428547]
theorem check17 : primorialChainCheck 4473 primorial4473 184 8425799 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 8425799 8428547 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8425799) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [8428729, 8428909, 8429089, 8429257, 8429437, 8429621, 8429797, 8429963, 8430143, 8430311, 8430493, 8430659, 8430833, 8431013, 8431169, 8431351]
theorem check18 : primorialChainCheck 4473 primorial4473 184 8428547 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 8428547 8431351 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8428547) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [8431529, 8431697, 8431861, 8432033, 8432201, 8432327, 8432509, 8432689, 8432873, 8433043, 8433211, 8433367, 8433527, 8433707, 8433871, 8434037]
theorem check19 : primorialChainCheck 4473 primorial4473 184 8431351 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 8431351 8434037 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8431351) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [8434219, 8434403, 8434523, 8434693, 8434861, 8434999, 8435173, 8435351, 8435527, 8435711, 8435891, 8436073, 8436217, 8436401, 8436581, 8436763]
theorem check20 : primorialChainCheck 4473 primorial4473 184 8434037 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 8434037 8436763 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8434037) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [8436937, 8437087, 8437259, 8437433, 8437609, 8437789, 8437973, 8438141, 8438323, 8438503, 8438663, 8438813, 8438981, 8439163, 8439341, 8439517]
theorem check21 : primorialChainCheck 4473 primorial4473 184 8436763 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 8436763 8439517 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8436763) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [8439659, 8439817, 8439989, 8440147, 8440331, 8440511, 8440673, 8440853, 8441033, 8441137, 8441311, 8441431, 8441603, 8441767, 8441869, 8442043]
theorem check22 : primorialChainCheck 4473 primorial4473 184 8439517 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 8439517 8442043 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8439517) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [8442223, 8442389, 8442559, 8442713, 8442883, 8443063, 8443243, 8443397, 8443573, 8443751, 8443927, 8444083, 8444213, 8444363, 8444521, 8444701]
theorem check23 : primorialChainCheck 4473 primorial4473 184 8442043 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 8442043 8444701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8442043) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [8444851, 8445029, 8445161, 8445343, 8445527, 8445707, 8445863, 8446019, 8446201, 8446351, 8446517, 8446679, 8446843, 8446979, 8447161, 8447311]
theorem check24 : primorialChainCheck 4473 primorial4473 184 8444701 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 8444701 8447311 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8444701) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [8447489, 8447653, 8447821, 8447987, 8448161, 8448343, 8448527, 8448703, 8448883, 8449013, 8449159, 8449333, 8449517, 8449687, 8449853, 8450021]
theorem check25 : primorialChainCheck 4473 primorial4473 184 8447311 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 8447311 8450021 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8447311) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [8450203, 8450381, 8450557, 8450719, 8450899, 8451083, 8451259, 8451439, 8451613, 8451797, 8451967, 8452141, 8452307, 8452481, 8452649, 8452819]
theorem check26 : primorialChainCheck 4473 primorial4473 184 8450021 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 8450021 8452819 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8450021) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [8452999, 8453177, 8453329, 8453513, 8453693, 8453873, 8454053, 8454223, 8454403, 8454587, 8454767, 8454947, 8455123, 8455301, 8455483, 8455661]
theorem check27 : primorialChainCheck 4473 primorial4473 184 8452819 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 8452819 8455661 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8452819) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [8455841, 8456011, 8456183, 8456359, 8456543, 8456717, 8456891, 8457073, 8457247, 8457401, 8457577, 8457751, 8457923, 8458103, 8458271, 8458441]
theorem check28 : primorialChainCheck 4473 primorial4473 184 8455661 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 8455661 8458441 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8455661) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [8458621, 8458799, 8458973, 8459141, 8459299, 8459471, 8459651, 8459831, 8460007, 8460191, 8460371, 8460539, 8460707, 8460877, 8461043, 8461183]
theorem check29 : primorialChainCheck 4473 primorial4473 184 8458441 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 8458441 8461183 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8458441) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [8461361, 8461513, 8461697, 8461877, 8462059, 8462221, 8462393, 8462567, 8462749, 8462917, 8463089, 8463253, 8463419, 8463557, 8463673, 8463857]
theorem check30 : primorialChainCheck 4473 primorial4473 184 8461183 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 8461183 8463857 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8461183) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [8464037, 8464213, 8464397, 8464571, 8464741, 8464913, 8465059, 8465243, 8465423, 8465603, 8465783, 8465959, 8466121, 8466281, 8466443, 8466611]
theorem check31 : primorialChainCheck 4473 primorial4473 184 8463857 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 8463857 8466611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8463857) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 8379557 8385073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8379557)
    (mid := 8382349) (hi := 8385073) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 8385073 8390497 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8385073)
    (mid := 8387741) (hi := 8390497) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 8390497 8395973 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8390497)
    (mid := 8393179) (hi := 8395973) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 8395973 8401361 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8395973)
    (mid := 8398633) (hi := 8401361) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 8401361 8406719 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8401361)
    (mid := 8404021) (hi := 8406719) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 8406719 8412223 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8406719)
    (mid := 8409529) (hi := 8412223) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 8412223 8417749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8412223)
    (mid := 8415023) (hi := 8417749) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 8417749 8423111 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8417749)
    (mid := 8420521) (hi := 8423111) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 8423111 8428547 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8423111)
    (mid := 8425799) (hi := 8428547) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 8428547 8434037 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8428547)
    (mid := 8431351) (hi := 8434037) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 8434037 8439517 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8434037)
    (mid := 8436763) (hi := 8439517) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 8439517 8444701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8439517)
    (mid := 8442043) (hi := 8444701) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 8444701 8450021 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8444701)
    (mid := 8447311) (hi := 8450021) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 8450021 8455661 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8450021)
    (mid := 8452819) (hi := 8455661) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 8455661 8461183 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8455661)
    (mid := 8458441) (hi := 8461183) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 8461183 8466611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8461183)
    (mid := 8463857) (hi := 8466611) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 8379557 8390497 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8379557)
    (mid := 8385073) (hi := 8390497) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 8390497 8401361 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8390497)
    (mid := 8395973) (hi := 8401361) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 8401361 8412223 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8401361)
    (mid := 8406719) (hi := 8412223) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 8412223 8423111 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8412223)
    (mid := 8417749) (hi := 8423111) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 8423111 8434037 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8423111)
    (mid := 8428547) (hi := 8434037) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 8434037 8444701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8434037)
    (mid := 8439517) (hi := 8444701) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 8444701 8455661 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8444701)
    (mid := 8450021) (hi := 8455661) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 8455661 8466611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8455661)
    (mid := 8461183) (hi := 8466611) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 8379557 8401361 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8379557)
    (mid := 8390497) (hi := 8401361) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 8401361 8423111 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8401361)
    (mid := 8412223) (hi := 8423111) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 8423111 8444701 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8423111)
    (mid := 8434037) (hi := 8444701) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 8444701 8466611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8444701)
    (mid := 8455661) (hi := 8466611) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 8379557 8423111 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8379557)
    (mid := 8401361) (hi := 8423111) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 8423111 8466611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8423111)
    (mid := 8444701) (hi := 8466611) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 8379557 8466611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 8379557)
    (mid := 8423111) (hi := 8466611) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 8379557 8466611 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block095

#print axioms B699MiddleExtension.PrimorialBlocks.Block095.joined
