import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block129

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [11356847, 11357029, 11357209, 11357393, 11357539, 11357701, 11357869, 11358049, 11358233, 11358379, 11358559, 11358719, 11358887, 11359069, 11359253, 11359433]
theorem check0 : primorialChainCheck 4473 primorial4473 184 11356693 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 11356693 11359433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11356693) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [11359613, 11359771, 11359951, 11360123, 11360303, 11360483, 11360659, 11360819, 11361001, 11361173, 11361353, 11361529, 11361703, 11361871, 11361983, 11362163]
theorem check1 : primorialChainCheck 4473 primorial4473 184 11359433 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 11359433 11362163 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11359433) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [11362339, 11362501, 11362679, 11362859, 11363003, 11363179, 11363353, 11363537, 11363719, 11363899, 11364079, 11364263, 11364401, 11364581, 11364739, 11364923]
theorem check2 : primorialChainCheck 4473 primorial4473 184 11362163 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 11362163 11364923 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11362163) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [11365099, 11365283, 11365457, 11365637, 11365811, 11365987, 11366171, 11366317, 11366501, 11366653, 11366833, 11366947, 11367119, 11367299, 11367481, 11367661]
theorem check3 : primorialChainCheck 4473 primorial4473 184 11364923 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 11364923 11367661 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11364923) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [11367841, 11367959, 11368081, 11368249, 11368411, 11368561, 11368729, 11368901, 11369081, 11369261, 11369419, 11369599, 11369779, 11369951, 11370133, 11370313]
theorem check4 : primorialChainCheck 4473 primorial4473 184 11367661 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 11367661 11370313 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11367661) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [11370497, 11370679, 11370857, 11371033, 11371201, 11371379, 11371561, 11371739, 11371901, 11372083, 11372243, 11372401, 11372561, 11372737, 11372891, 11373073]
theorem check5 : primorialChainCheck 4473 primorial4473 184 11370313 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 11370313 11373073 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11370313) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [11373239, 11373421, 11373601, 11373781, 11373919, 11374093, 11374267, 11374439, 11374621, 11374801, 11374969, 11375153, 11375323, 11375489, 11375659, 11375843]
theorem check6 : primorialChainCheck 4473 primorial4473 184 11373073 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 11373073 11375843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11373073) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [11376019, 11376199, 11376341, 11376523, 11376707, 11376889, 11377057, 11377229, 11377411, 11377591, 11377763, 11377937, 11378113, 11378281, 11378461, 11378641]
theorem check7 : primorialChainCheck 4473 primorial4473 184 11375843 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 11375843 11378641 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11375843) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [11378821, 11378993, 11379169, 11379317, 11379497, 11379679, 11379833, 11380003, 11380181, 11380357, 11380517, 11380679, 11380861, 11381039, 11381221, 11381393]
theorem check8 : primorialChainCheck 4473 primorial4473 184 11378641 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 11378641 11381393 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11378641) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [11381561, 11381731, 11381899, 11382071, 11382253, 11382433, 11382617, 11382799, 11382967, 11383139, 11383313, 11383487, 11383657, 11383807, 11383987, 11384167]
theorem check9 : primorialChainCheck 4473 primorial4473 184 11381393 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 11381393 11384167 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11381393) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [11384341, 11384521, 11384689, 11384873, 11385041, 11385217, 11385397, 11385557, 11385739, 11385923, 11386087, 11386261, 11386433, 11386597, 11386777, 11386961]
theorem check10 : primorialChainCheck 4473 primorial4473 184 11384167 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 11384167 11386961 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11384167) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [11387143, 11387309, 11387473, 11387617, 11387797, 11387953, 11388137, 11388319, 11388493, 11388661, 11388823, 11389003, 11389153, 11389333, 11389517, 11389699]
theorem check11 : primorialChainCheck 4473 primorial4473 184 11386961 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 11386961 11389699 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11386961) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [11389877, 11390059, 11390213, 11390381, 11390551, 11390723, 11390887, 11391067, 11391251, 11391433, 11391617, 11391799, 11391977, 11392151, 11392319, 11392501]
theorem check12 : primorialChainCheck 4473 primorial4473 184 11389699 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 11389699 11392501 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11389699) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [11392657, 11392831, 11392993, 11393177, 11393359, 11393539, 11393719, 11393873, 11394049, 11394217, 11394401, 11394529, 11394707, 11394863, 11395037, 11395213]
theorem check13 : primorialChainCheck 4473 primorial4473 184 11392501 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 11392501 11395213 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11392501) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [11395357, 11395537, 11395721, 11395883, 11396041, 11396221, 11396377, 11396557, 11396741, 11396923, 11397103, 11397277, 11397461, 11397629, 11397787, 11397937]
theorem check14 : primorialChainCheck 4473 primorial4473 184 11395213 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 11395213 11397937 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11395213) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [11398117, 11398301, 11398481, 11398637, 11398819, 11398991, 11399173, 11399357, 11399539, 11399683, 11399837, 11400017, 11400199, 11400379, 11400563, 11400737]
theorem check15 : primorialChainCheck 4473 primorial4473 184 11397937 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 11397937 11400737 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11397937) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [11400899, 11401081, 11401259, 11401427, 11401609, 11401757, 11401939, 11402123, 11402263, 11402431, 11402581, 11402759, 11402933, 11403113, 11403283, 11403463]
theorem check16 : primorialChainCheck 4473 primorial4473 184 11400737 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 11400737 11403463 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11400737) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [11403593, 11403773, 11403941, 11404121, 11404303, 11404483, 11404667, 11404837, 11404999, 11405167, 11405347, 11405531, 11405699, 11405873, 11406053, 11406217]
theorem check17 : primorialChainCheck 4473 primorial4473 184 11403463 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 11403463 11406217 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11403463) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [11406401, 11406581, 11406751, 11406929, 11407111, 11407283, 11407457, 11407631, 11407811, 11407993, 11408171, 11408333, 11408497, 11408669, 11408843, 11409017]
theorem check18 : primorialChainCheck 4473 primorial4473 184 11406217 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 11406217 11409017 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11406217) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [11409197, 11409373, 11409551, 11409721, 11409887, 11410057, 11410199, 11410381, 11410559, 11410733, 11410909, 11411093, 11411273, 11411401, 11411563, 11411731]
theorem check19 : primorialChainCheck 4473 primorial4473 184 11409017 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 11409017 11411731 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11409017) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [11411893, 11412067, 11412239, 11412403, 11412571, 11412707, 11412881, 11413043, 11413217, 11413399, 11413553, 11413729, 11413901, 11414083, 11414257, 11414419]
theorem check20 : primorialChainCheck 4473 primorial4473 184 11411731 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 11411731 11414419 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11411731) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [11414597, 11414779, 11414959, 11415139, 11415307, 11415463, 11415643, 11415809, 11415991, 11416133, 11416309, 11416477, 11416651, 11416813, 11416991, 11417123]
theorem check21 : primorialChainCheck 4473 primorial4473 184 11414419 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 11414419 11417123 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11414419) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [11417303, 11417477, 11417611, 11417779, 11417963, 11418119, 11418301, 11418481, 11418661, 11418839, 11419013, 11419193, 11419367, 11419537, 11419693, 11419867]
theorem check22 : primorialChainCheck 4473 primorial4473 184 11417123 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 11417123 11419867 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11417123) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [11420051, 11420203, 11420377, 11420543, 11420713, 11420897, 11421079, 11421257, 11421437, 11421601, 11421779, 11421953, 11422129, 11422297, 11422471, 11422643]
theorem check23 : primorialChainCheck 4473 primorial4473 184 11419867 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 11419867 11422643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11419867) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [11422823, 11423003, 11423183, 11423359, 11423537, 11423689, 11423873, 11424053, 11424233, 11424389, 11424571, 11424739, 11424923, 11425103, 11425261, 11425433]
theorem check24 : primorialChainCheck 4473 primorial4473 184 11422643 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 11422643 11425433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11422643) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [11425613, 11425787, 11425969, 11426153, 11426333, 11426509, 11426689, 11426869, 11427049, 11427217, 11427401, 11427583, 11427763, 11427929, 11428111, 11428273]
theorem check25 : primorialChainCheck 4473 primorial4473 184 11425433 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 11425433 11428273 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11425433) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [11428451, 11428621, 11428789, 11428969, 11429153, 11429323, 11429497, 11429629, 11429813, 11429983, 11430163, 11430347, 11430491, 11430637, 11430781, 11430911]
theorem check26 : primorialChainCheck 4473 primorial4473 184 11428273 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 11428273 11430911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11428273) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [11431067, 11431247, 11431403, 11431573, 11431751, 11431921, 11432093, 11432261, 11432441, 11432591, 11432761, 11432903, 11433083, 11433241, 11433419, 11433593]
theorem check27 : primorialChainCheck 4473 primorial4473 184 11430911 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 11430911 11433593 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11430911) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [11433757, 11433931, 11434099, 11434271, 11434441, 11434609, 11434757, 11434937, 11435111, 11435293, 11435471, 11435647, 11435821, 11436001, 11436167, 11436329]
theorem check28 : primorialChainCheck 4473 primorial4473 184 11433593 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 11433593 11436329 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11433593) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [11436493, 11436673, 11436851, 11437021, 11437199, 11437343, 11437523, 11437703, 11437883, 11438051, 11438227, 11438393, 11438573, 11438753, 11438929, 11439107]
theorem check29 : primorialChainCheck 4473 primorial4473 184 11436329 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 11436329 11439107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11436329) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [11439289, 11439473, 11439643, 11439821, 11440003, 11440151, 11440321, 11440493, 11440657, 11440823, 11440997, 11441161, 11441329, 11441513, 11441669, 11441851]
theorem check30 : primorialChainCheck 4473 primorial4473 184 11439107 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 11439107 11441851 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11439107) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [11442031, 11442209, 11442383, 11442553, 11442737, 11442919, 11443099, 11443279, 11443457, 11443637, 11443819, 11444003, 11444159, 11444341, 11444513, 11444687]
theorem check31 : primorialChainCheck 4473 primorial4473 184 11441851 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 11441851 11444687 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 11441851) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 11356693 11362163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11356693)
    (mid := 11359433) (hi := 11362163) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 11362163 11367661 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11362163)
    (mid := 11364923) (hi := 11367661) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 11367661 11373073 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11367661)
    (mid := 11370313) (hi := 11373073) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 11373073 11378641 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11373073)
    (mid := 11375843) (hi := 11378641) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 11378641 11384167 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11378641)
    (mid := 11381393) (hi := 11384167) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 11384167 11389699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11384167)
    (mid := 11386961) (hi := 11389699) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 11389699 11395213 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11389699)
    (mid := 11392501) (hi := 11395213) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 11395213 11400737 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11395213)
    (mid := 11397937) (hi := 11400737) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 11400737 11406217 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11400737)
    (mid := 11403463) (hi := 11406217) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 11406217 11411731 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11406217)
    (mid := 11409017) (hi := 11411731) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 11411731 11417123 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11411731)
    (mid := 11414419) (hi := 11417123) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 11417123 11422643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11417123)
    (mid := 11419867) (hi := 11422643) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 11422643 11428273 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11422643)
    (mid := 11425433) (hi := 11428273) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 11428273 11433593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11428273)
    (mid := 11430911) (hi := 11433593) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 11433593 11439107 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11433593)
    (mid := 11436329) (hi := 11439107) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 11439107 11444687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11439107)
    (mid := 11441851) (hi := 11444687) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 11356693 11367661 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11356693)
    (mid := 11362163) (hi := 11367661) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 11367661 11378641 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11367661)
    (mid := 11373073) (hi := 11378641) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 11378641 11389699 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11378641)
    (mid := 11384167) (hi := 11389699) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 11389699 11400737 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11389699)
    (mid := 11395213) (hi := 11400737) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 11400737 11411731 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11400737)
    (mid := 11406217) (hi := 11411731) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 11411731 11422643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11411731)
    (mid := 11417123) (hi := 11422643) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 11422643 11433593 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11422643)
    (mid := 11428273) (hi := 11433593) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 11433593 11444687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11433593)
    (mid := 11439107) (hi := 11444687) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 11356693 11378641 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11356693)
    (mid := 11367661) (hi := 11378641) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 11378641 11400737 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11378641)
    (mid := 11389699) (hi := 11400737) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 11400737 11422643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11400737)
    (mid := 11411731) (hi := 11422643) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 11422643 11444687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11422643)
    (mid := 11433593) (hi := 11444687) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 11356693 11400737 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11356693)
    (mid := 11378641) (hi := 11400737) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 11400737 11444687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11400737)
    (mid := 11422643) (hi := 11444687) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 11356693 11444687 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 11356693)
    (mid := 11400737) (hi := 11444687) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 11356693 11444687 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block129

#print axioms B699MiddleExtension.PrimorialBlocks.Block129.joined
