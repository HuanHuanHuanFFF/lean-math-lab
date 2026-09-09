import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block072

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [6361193, 6361367, 6361517, 6361699, 6361879, 6362021, 6362203, 6362371, 6362519, 6362677, 6362857, 6363041, 6363221, 6363373, 6363541, 6363713]
theorem check0 : primorialChainCheck 4473 primorial4473 184 6361013 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 6361013 6363713 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6361013) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [6363887, 6364063, 6364247, 6364381, 6364549, 6364733, 6364913, 6365083, 6365263, 6365441, 6365581, 6365759, 6365911, 6366089, 6366263, 6366433]
theorem check1 : primorialChainCheck 4473 primorial4473 184 6363713 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 6363713 6366433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6363713) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [6366593, 6366751, 6366917, 6367099, 6367267, 6367433, 6367601, 6367771, 6367951, 6368129, 6368311, 6368471, 6368647, 6368779, 6368927, 6369073]
theorem check2 : primorialChainCheck 4473 primorial4473 184 6366433 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 6366433 6369073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6366433) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [6369239, 6369409, 6369569, 6369733, 6369901, 6370079, 6370261, 6370411, 6370583, 6370739, 6370921, 6371087, 6371263, 6371401, 6371581, 6371749]
theorem check3 : primorialChainCheck 4473 primorial4473 184 6369073 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 6369073 6371749 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6369073) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [6371929, 6372101, 6372271, 6372419, 6372593, 6372749, 6372929, 6373111, 6373291, 6373469, 6373639, 6373813, 6373981, 6374153, 6374299, 6374477]
theorem check4 : primorialChainCheck 4473 primorial4473 184 6371749 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 6371749 6374477 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6371749) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [6374659, 6374843, 6375023, 6375199, 6375361, 6375539, 6375701, 6375851, 6376031, 6376193, 6376373, 6376553, 6376679, 6376847, 6377009, 6377191]
theorem check5 : primorialChainCheck 4473 primorial4473 184 6374477 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 6374477 6377191 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6374477) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [6377339, 6377519, 6377689, 6377843, 6378011, 6378181, 6378341, 6378517, 6378629, 6378787, 6378947, 6379129, 6379283, 6379453, 6379621, 6379757]
theorem check6 : primorialChainCheck 4473 primorial4473 184 6377191 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 6377191 6379757 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6377191) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [6379937, 6380111, 6380281, 6380449, 6380629, 6380749, 6380929, 6381101, 6381251, 6381407, 6381589, 6381761, 6381941, 6382121, 6382303, 6382469]
theorem check7 : primorialChainCheck 4473 primorial4473 184 6379757 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 6379757 6382469 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6379757) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [6382643, 6382823, 6382969, 6383141, 6383317, 6383471, 6383621, 6383801, 6383983, 6384143, 6384319, 6384493, 6384647, 6384827, 6385009, 6385193]
theorem check8 : primorialChainCheck 4473 primorial4473 184 6382469 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 6382469 6385193 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6382469) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [6385369, 6385553, 6385733, 6385909, 6386069, 6386227, 6386377, 6386561, 6386719, 6386839, 6387013, 6387193, 6387323, 6387503, 6387683, 6387863]
theorem check9 : primorialChainCheck 4473 primorial4473 184 6385193 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 6385193 6387863 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6385193) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [6388027, 6388211, 6388391, 6388559, 6388691, 6388867, 6389041, 6389213, 6389393, 6389531, 6389711, 6389881, 6390053, 6390227, 6390409, 6390583]
theorem check10 : primorialChainCheck 4473 primorial4473 184 6387863 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 6387863 6390583 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6387863) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [6390763, 6390947, 6391129, 6391289, 6391471, 6391607, 6391789, 6391963, 6392147, 6392327, 6392497, 6392677, 6392857, 6393029, 6393209, 6393383]
theorem check11 : primorialChainCheck 4473 primorial4473 184 6390583 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 6390583 6393383 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6390583) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [6393529, 6393691, 6393869, 6394043, 6394217, 6394373, 6394543, 6394723, 6394879, 6395063, 6395239, 6395407, 6395581, 6395743, 6395903, 6396073]
theorem check12 : primorialChainCheck 4473 primorial4473 184 6393383 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 6393383 6396073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6393383) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [6396241, 6396409, 6396589, 6396773, 6396953, 6397133, 6397301, 6397463, 6397631, 6397771, 6397949, 6398129, 6398303, 6398479, 6398633, 6398813]
theorem check13 : primorialChainCheck 4473 primorial4473 184 6396073 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 6396073 6398813 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6396073) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [6398983, 6399161, 6399331, 6399511, 6399689, 6399859, 6400033, 6400201, 6400369, 6400543, 6400717, 6400873, 6401033, 6401203, 6401387, 6401569]
theorem check14 : primorialChainCheck 4473 primorial4473 184 6398813 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 6398813 6401569 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6398813) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [6401749, 6401933, 6402091, 6402271, 6402439, 6402619, 6402787, 6402971, 6403153, 6403333, 6403511, 6403687, 6403853, 6404023, 6404191, 6404369]
theorem check15 : primorialChainCheck 4473 primorial4473 184 6401569 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 6401569 6404369 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6401569) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [6404551, 6404719, 6404873, 6405053, 6405221, 6405397, 6405577, 6405761, 6405943, 6406123, 6406307, 6406483, 6406657, 6406831, 6407003, 6407131]
theorem check16 : primorialChainCheck 4473 primorial4473 184 6404369 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 6404369 6407131 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6404369) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [6407309, 6407491, 6407671, 6407851, 6408029, 6408211, 6408359, 6408533, 6408713, 6408877, 6409043, 6409223, 6409397, 6409577, 6409757, 6409933]
theorem check17 : primorialChainCheck 4473 primorial4473 184 6407131 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 6407131 6409933 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6407131) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [6410113, 6410279, 6410449, 6410623, 6410797, 6410981, 6411157, 6411337, 6411521, 6411701, 6411883, 6412067, 6412249, 6412429, 6412613, 6412787]
theorem check18 : primorialChainCheck 4473 primorial4473 184 6409933 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 6409933 6412787 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6409933) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [6412969, 6413153, 6413333, 6413513, 6413677, 6413857, 6414041, 6414193, 6414377, 6414557, 6414739, 6414917, 6415099, 6415271, 6415447, 6415603]
theorem check19 : primorialChainCheck 4473 primorial4473 184 6412787 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 6412787 6415603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6412787) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [6415771, 6415951, 6416117, 6416273, 6416447, 6416629, 6416807, 6416987, 6417137, 6417319, 6417487, 6417661, 6417841, 6417947, 6418123, 6418303]
theorem check20 : primorialChainCheck 4473 primorial4473 184 6415603 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 6415603 6418303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6415603) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [6418487, 6418663, 6418813, 6418991, 6419173, 6419339, 6419521, 6419689, 6419851, 6420031, 6420199, 6420383, 6420523, 6420707, 6420881, 6421049]
theorem check21 : primorialChainCheck 4473 primorial4473 184 6418303 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 6418303 6421049 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6418303) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [6421231, 6421403, 6421579, 6421763, 6421931, 6422113, 6422293, 6422477, 6422657, 6422837, 6423013, 6423191, 6423367, 6423551, 6423733, 6423917]
theorem check22 : primorialChainCheck 4473 primorial4473 184 6421049 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 6421049 6423917 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6421049) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [6424091, 6424241, 6424423, 6424553, 6424727, 6424909, 6425077, 6425239, 6425423, 6425599, 6425761, 6425941, 6426113, 6426257, 6426437, 6426613]
theorem check23 : primorialChainCheck 4473 primorial4473 184 6423917 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 6423917 6426613 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6423917) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [6426793, 6426971, 6427121, 6427277, 6427459, 6427639, 6427807, 6427987, 6428171, 6428353, 6428489, 6428671, 6428833, 6428987, 6429161, 6429343]
theorem check24 : primorialChainCheck 4473 primorial4473 184 6426613 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 6426613 6429343 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6426613) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [6429509, 6429691, 6429869, 6430027, 6430201, 6430381, 6430561, 6430687, 6430849, 6431017, 6431189, 6431363, 6431507, 6431687, 6431869, 6432053]
theorem check25 : primorialChainCheck 4473 primorial4473 184 6429343 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 6429343 6432053 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6429343) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [6432227, 6432401, 6432563, 6432743, 6432917, 6433093, 6433253, 6433421, 6433591, 6433759, 6433937, 6434117, 6434299, 6434447, 6434627, 6434773]
theorem check26 : primorialChainCheck 4473 primorial4473 184 6432053 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 6432053 6434773 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6432053) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [6434947, 6435127, 6435311, 6435493, 6435643, 6435797, 6435973, 6436153, 6436327, 6436501, 6436667, 6436847, 6437027, 6437201, 6437383, 6437567]
theorem check27 : primorialChainCheck 4473 primorial4473 184 6434773 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 6434773 6437567 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6434773) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [6437749, 6437933, 6438109, 6438269, 6438437, 6438617, 6438799, 6438983, 6439163, 6439331, 6439513, 6439681, 6439837, 6440011, 6440191, 6440359]
theorem check28 : primorialChainCheck 4473 primorial4473 184 6437567 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 6437567 6440359 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6437567) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [6440543, 6440723, 6440893, 6441077, 6441257, 6441439, 6441607, 6441763, 6441917, 6442081, 6442259, 6442433, 6442613, 6442771, 6442939, 6443117]
theorem check29 : primorialChainCheck 4473 primorial4473 184 6440359 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 6440359 6443117 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6440359) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [6443293, 6443471, 6443639, 6443797, 6443981, 6444161, 6444337, 6444521, 6444703, 6444871, 6445051, 6445223, 6445403, 6445577, 6445757, 6445939]
theorem check30 : primorialChainCheck 4473 primorial4473 184 6443117 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 6443117 6445939 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6443117) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [6446107, 6446287, 6446459, 6446633, 6446801, 6446981, 6447149, 6447323, 6447457, 6447629, 6447787, 6447967, 6448133, 6448307, 6448489, 6448639]
theorem check31 : primorialChainCheck 4473 primorial4473 184 6445939 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 6445939 6448639 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 6445939) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 6361013 6366433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6361013)
    (mid := 6363713) (hi := 6366433) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 6366433 6371749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6366433)
    (mid := 6369073) (hi := 6371749) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 6371749 6377191 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6371749)
    (mid := 6374477) (hi := 6377191) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 6377191 6382469 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6377191)
    (mid := 6379757) (hi := 6382469) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 6382469 6387863 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6382469)
    (mid := 6385193) (hi := 6387863) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 6387863 6393383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6387863)
    (mid := 6390583) (hi := 6393383) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 6393383 6398813 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6393383)
    (mid := 6396073) (hi := 6398813) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 6398813 6404369 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6398813)
    (mid := 6401569) (hi := 6404369) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 6404369 6409933 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6404369)
    (mid := 6407131) (hi := 6409933) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 6409933 6415603 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6409933)
    (mid := 6412787) (hi := 6415603) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 6415603 6421049 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6415603)
    (mid := 6418303) (hi := 6421049) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 6421049 6426613 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6421049)
    (mid := 6423917) (hi := 6426613) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 6426613 6432053 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6426613)
    (mid := 6429343) (hi := 6432053) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 6432053 6437567 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6432053)
    (mid := 6434773) (hi := 6437567) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 6437567 6443117 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6437567)
    (mid := 6440359) (hi := 6443117) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 6443117 6448639 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6443117)
    (mid := 6445939) (hi := 6448639) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 6361013 6371749 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6361013)
    (mid := 6366433) (hi := 6371749) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 6371749 6382469 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6371749)
    (mid := 6377191) (hi := 6382469) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 6382469 6393383 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6382469)
    (mid := 6387863) (hi := 6393383) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 6393383 6404369 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6393383)
    (mid := 6398813) (hi := 6404369) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 6404369 6415603 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6404369)
    (mid := 6409933) (hi := 6415603) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 6415603 6426613 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6415603)
    (mid := 6421049) (hi := 6426613) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 6426613 6437567 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6426613)
    (mid := 6432053) (hi := 6437567) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 6437567 6448639 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6437567)
    (mid := 6443117) (hi := 6448639) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 6361013 6382469 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6361013)
    (mid := 6371749) (hi := 6382469) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 6382469 6404369 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6382469)
    (mid := 6393383) (hi := 6404369) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 6404369 6426613 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6404369)
    (mid := 6415603) (hi := 6426613) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 6426613 6448639 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6426613)
    (mid := 6437567) (hi := 6448639) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 6361013 6404369 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6361013)
    (mid := 6382469) (hi := 6404369) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 6404369 6448639 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6404369)
    (mid := 6426613) (hi := 6448639) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 6361013 6448639 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 6361013)
    (mid := 6404369) (hi := 6448639) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 6361013 6448639 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block072

#print axioms B699MiddleExtension.PrimorialBlocks.Block072.joined
