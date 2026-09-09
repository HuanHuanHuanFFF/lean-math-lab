import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block000

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [181, 359, 541, 719, 887, 1069, 1249, 1433, 1613, 1789, 1973, 2153, 2333, 2503, 2687, 2861]
theorem check0 : primorialChainCheck 4473 primorial4473 184 2 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 2 2861 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [3041, 3221, 3391, 3571, 3739, 3923, 4099, 4283, 4463, 4643, 4817, 4999, 5179, 5351, 5531, 5711]
theorem check1 : primorialChainCheck 4473 primorial4473 184 2861 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 2861 5711 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 2861) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [5881, 6053, 6229, 6397, 6581, 6763, 6947, 7129, 7309, 7489, 7673, 7853, 8017, 8191, 8369, 8543]
theorem check2 : primorialChainCheck 4473 primorial4473 184 5711 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 5711 8543 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 5711) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [8719, 8893, 9067, 9241, 9421, 9601, 9781, 9949, 10133, 10313, 10487, 10667, 10847, 11027, 11197, 11369]
theorem check3 : primorialChainCheck 4473 primorial4473 184 8543 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 8543 11369 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 8543) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [11551, 11731, 11909, 12073, 12253, 12437, 12619, 12799, 12983, 13163, 13339, 13523, 13697, 13879, 14057, 14221]
theorem check4 : primorialChainCheck 4473 primorial4473 184 11369 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 11369 14221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11369) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [14401, 14563, 14747, 14929, 15107, 15289, 15473, 15649, 15823, 16007, 16189, 16369, 16553, 16729, 16903, 17077]
theorem check5 : primorialChainCheck 4473 primorial4473 184 14221 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 14221 17077 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 14221) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [17257, 17431, 17609, 17791, 17971, 18149, 18329, 18503, 18679, 18859, 19037, 19219, 19403, 19583, 19763, 19937]
theorem check6 : primorialChainCheck 4473 primorial4473 184 17077 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 17077 19937 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 17077) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [20117, 20297, 20479, 20663, 20809, 20983, 21163, 21347, 21529, 21713, 21893, 22073, 22247, 22409, 22573, 22751]
theorem check7 : primorialChainCheck 4473 primorial4473 184 19937 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 19937 22751 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 19937) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [22921, 23099, 23279, 23459, 23633, 23813, 23993, 24169, 24337, 24517, 24697, 24877, 25057, 25237, 25411, 25589]
theorem check8 : primorialChainCheck 4473 primorial4473 184 22751 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 22751 25589 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 22751) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [25771, 25951, 26119, 26297, 26479, 26647, 26821, 26993, 27143, 27299, 27481, 27653, 27827, 28001, 28183, 28351]
theorem check9 : primorialChainCheck 4473 primorial4473 184 25589 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 25589 28351 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 25589) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [28517, 28697, 28879, 29063, 29243, 29423, 29599, 29761, 29927, 30109, 30293, 30469, 30649, 30829, 31013, 31193]
theorem check10 : primorialChainCheck 4473 primorial4473 184 28351 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 28351 31193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 28351) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [31357, 31541, 31723, 31907, 32089, 32261, 32443, 32621, 32803, 32987, 33161, 33343, 33521, 33703, 33871, 34039]
theorem check11 : primorialChainCheck 4473 primorial4473 184 31193 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 31193 34039 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 31193) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [34217, 34381, 34549, 34729, 34913, 35089, 35267, 35449, 35617, 35801, 35983, 36161, 36343, 36527, 36709, 36887]
theorem check12 : primorialChainCheck 4473 primorial4473 184 34039 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 34039 36887 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 34039) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [37061, 37243, 37423, 37607, 37783, 37967, 38149, 38333, 38501, 38677, 38861, 39043, 39227, 39409, 39581, 39761]
theorem check13 : primorialChainCheck 4473 primorial4473 184 36887 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 36887 39761 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 36887) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [39937, 40111, 40289, 40471, 40639, 40823, 40993, 41177, 41357, 41539, 41719, 41903, 42083, 42257, 42437, 42611]
theorem check14 : primorialChainCheck 4473 primorial4473 184 39761 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 39761 42611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 39761) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [42793, 42967, 43151, 43331, 43499, 43669, 43853, 44029, 44207, 44389, 44563, 44741, 44917, 45083, 45263, 45439]
theorem check15 : primorialChainCheck 4473 primorial4473 184 42611 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 42611 45439 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 42611) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [45613, 45779, 45959, 46141, 46309, 46489, 46663, 46831, 46997, 47161, 47339, 47521, 47701, 47881, 48049, 48221]
theorem check16 : primorialChainCheck 4473 primorial4473 184 45439 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 45439 48221 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 45439) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [48397, 48571, 48751, 48907, 49081, 49261, 49433, 49613, 49789, 49957, 50131, 50311, 50461, 50627, 50789, 50971]
theorem check17 : primorialChainCheck 4473 primorial4473 184 48221 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 48221 50971 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 48221) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [51151, 51329, 51511, 51691, 51871, 52051, 52223, 52391, 52571, 52747, 52919, 53101, 53281, 53453, 53633, 53813]
theorem check18 : primorialChainCheck 4473 primorial4473 184 50971 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 50971 53813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 50971) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [53993, 54167, 54347, 54521, 54679, 54851, 55021, 55201, 55381, 55547, 55721, 55903, 56087, 56269, 56453, 56633]
theorem check19 : primorialChainCheck 4473 primorial4473 184 53813 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 53813 56633 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 53813) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [56813, 56993, 57173, 57349, 57529, 57713, 57881, 58061, 58243, 58427, 58603, 58787, 58967, 59149, 59333, 59513]
theorem check20 : primorialChainCheck 4473 primorial4473 184 56633 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 56633 59513 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 56633) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [59693, 59863, 60041, 60223, 60397, 60539, 60719, 60901, 61057, 61231, 61409, 61583, 61757, 61933, 62099, 62273]
theorem check21 : primorialChainCheck 4473 primorial4473 184 59513 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 59513 62273 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 59513) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [62423, 62603, 62773, 62939, 63113, 63281, 63463, 63647, 63823, 64007, 64189, 64373, 64553, 64717, 64901, 65071]
theorem check22 : primorialChainCheck 4473 primorial4473 184 62273 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 62273 65071 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 62273) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [65239, 65423, 65599, 65777, 65957, 66137, 66301, 66467, 66643, 66821, 67003, 67187, 67369, 67547, 67723, 67901]
theorem check23 : primorialChainCheck 4473 primorial4473 184 65071 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 65071 67901 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 65071) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [68071, 68239, 68399, 68581, 68749, 68927, 69109, 69263, 69439, 69623, 69779, 69959, 70141, 70321, 70501, 70667]
theorem check24 : primorialChainCheck 4473 primorial4473 184 67901 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 67901 70667 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 67901) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [70849, 71023, 71191, 71363, 71537, 71719, 71899, 72077, 72253, 72431, 72613, 72797, 72977, 73141, 73309, 73483]
theorem check25 : primorialChainCheck 4473 primorial4473 184 70667 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 70667 73483 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 70667) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [73651, 73823, 73999, 74177, 74357, 74531, 74713, 74897, 75079, 75253, 75437, 75619, 75797, 75979, 76163, 76343]
theorem check26 : primorialChainCheck 4473 primorial4473 184 73483 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 73483 76343 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 73483) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [76519, 76697, 76873, 77047, 77213, 77383, 77563, 77747, 77929, 78101, 78283, 78467, 78649, 78823, 78989, 79159]
theorem check27 : primorialChainCheck 4473 primorial4473 184 76343 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 76343 79159 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 76343) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [79337, 79493, 79669, 79847, 80021, 80191, 80369, 80537, 80713, 80897, 81077, 81239, 81421, 81569, 81749, 81931]
theorem check28 : primorialChainCheck 4473 primorial4473 184 79159 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 79159 81931 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 79159) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [82073, 82241, 82421, 82601, 82781, 82963, 83137, 83311, 83477, 83653, 83833, 84017, 84199, 84377, 84559, 84737]
theorem check29 : primorialChainCheck 4473 primorial4473 184 81931 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 81931 84737 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 81931) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [84919, 85103, 85259, 85439, 85621, 85793, 85933, 86117, 86297, 86477, 86629, 86813, 86993, 87151, 87323, 87491]
theorem check30 : primorialChainCheck 4473 primorial4473 184 84737 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 84737 87491 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 84737) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [87671, 87853, 88037, 88211, 88379, 88547, 88729, 88903, 89087, 89269, 89449, 89633, 89809, 89989, 90173, 90353]
theorem check31 : primorialChainCheck 4473 primorial4473 184 87491 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 87491 90353 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 87491) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 2 5711 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2)
    (mid := 2861) (hi := 5711) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 5711 11369 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 5711)
    (mid := 8543) (hi := 11369) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 11369 17077 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11369)
    (mid := 14221) (hi := 17077) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 17077 22751 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 17077)
    (mid := 19937) (hi := 22751) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 22751 28351 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 22751)
    (mid := 25589) (hi := 28351) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 28351 34039 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 28351)
    (mid := 31193) (hi := 34039) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 34039 39761 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 34039)
    (mid := 36887) (hi := 39761) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 39761 45439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 39761)
    (mid := 42611) (hi := 45439) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 45439 50971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 45439)
    (mid := 48221) (hi := 50971) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 50971 56633 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 50971)
    (mid := 53813) (hi := 56633) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 56633 62273 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 56633)
    (mid := 59513) (hi := 62273) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 62273 67901 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 62273)
    (mid := 65071) (hi := 67901) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 67901 73483 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 67901)
    (mid := 70667) (hi := 73483) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 73483 79159 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 73483)
    (mid := 76343) (hi := 79159) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 79159 84737 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 79159)
    (mid := 81931) (hi := 84737) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 84737 90353 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 84737)
    (mid := 87491) (hi := 90353) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 2 11369 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2)
    (mid := 5711) (hi := 11369) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 11369 22751 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11369)
    (mid := 17077) (hi := 22751) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 22751 34039 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 22751)
    (mid := 28351) (hi := 34039) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 34039 45439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 34039)
    (mid := 39761) (hi := 45439) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 45439 56633 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 45439)
    (mid := 50971) (hi := 56633) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 56633 67901 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 56633)
    (mid := 62273) (hi := 67901) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 67901 79159 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 67901)
    (mid := 73483) (hi := 79159) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 79159 90353 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 79159)
    (mid := 84737) (hi := 90353) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 2 22751 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2)
    (mid := 11369) (hi := 22751) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 22751 45439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 22751)
    (mid := 34039) (hi := 45439) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 45439 67901 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 45439)
    (mid := 56633) (hi := 67901) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 67901 90353 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 67901)
    (mid := 79159) (hi := 90353) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 2 45439 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2)
    (mid := 22751) (hi := 45439) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 45439 90353 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 45439)
    (mid := 67901) (hi := 90353) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 2 90353 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 2)
    (mid := 45439) (hi := 90353) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 2 90353 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block000

#print axioms B699MiddleExtension.PrimorialBlocks.Block000.joined
