import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block174

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [15296431, 15296597, 15296779, 15296959, 15297133, 15297311, 15297479, 15297649, 15297817, 15297991, 15298141, 15298321, 15298499, 15298651, 15298831, 15299003]
theorem check0 : primorialChainCheck 4473 primorial4473 184 15296269 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 15296269 15299003 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15296269) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [15299173, 15299329, 15299513, 15299681, 15299831, 15300013, 15300193, 15300361, 15300511, 15300673, 15300851, 15301031, 15301199, 15301381, 15301553, 15301729]
theorem check1 : primorialChainCheck 4473 primorial4473 184 15299003 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 15299003 15301729 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15299003) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [15301903, 15302083, 15302267, 15302447, 15302621, 15302779, 15302957, 15303139, 15303319, 15303499, 15303667, 15303839, 15304007, 15304189, 15304309, 15304477]
theorem check2 : primorialChainCheck 4473 primorial4473 184 15301729 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 15301729 15304477 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15301729) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [15304661, 15304841, 15304999, 15305167, 15305333, 15305513, 15305657, 15305821, 15305999, 15306169, 15306353, 15306527, 15306691, 15306871, 15307051, 15307231]
theorem check3 : primorialChainCheck 4473 primorial4473 184 15304477 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 15304477 15307231 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15304477) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [15307393, 15307573, 15307739, 15307913, 15308063, 15308231, 15308413, 15308563, 15308747, 15308921, 15309089, 15309271, 15309431, 15309589, 15309751, 15309929]
theorem check4 : primorialChainCheck 4473 primorial4473 184 15307231 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 15307231 15309929 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15307231) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [15310091, 15310241, 15310423, 15310601, 15310781, 15310961, 15311141, 15311323, 15311497, 15311651, 15311809, 15311987, 15312169, 15312299, 15312469, 15312643]
theorem check5 : primorialChainCheck 4473 primorial4473 184 15309929 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 15309929 15312643 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15309929) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [15312827, 15312989, 15313171, 15313321, 15313483, 15313667, 15313849, 15314029, 15314213, 15314393, 15314561, 15314737, 15314921, 15315101, 15315281, 15315431]
theorem check6 : primorialChainCheck 4473 primorial4473 184 15312643 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 15312643 15315431 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15312643) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [15315593, 15315761, 15315931, 15316111, 15316289, 15316453, 15316627, 15316801, 15316981, 15317117, 15317299, 15317483, 15317633, 15317807, 15317989, 15318157]
theorem check7 : primorialChainCheck 4473 primorial4473 184 15315431 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 15315431 15318157 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15315431) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [15318341, 15318517, 15318697, 15318857, 15319037, 15319217, 15319399, 15319583, 15319753, 15319933, 15320069, 15320243, 15320419, 15320567, 15320743, 15320917]
theorem check8 : primorialChainCheck 4473 primorial4473 184 15318157 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 15318157 15320917 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15318157) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [15321101, 15321283, 15321457, 15321637, 15321767, 15321949, 15322127, 15322309, 15322471, 15322633, 15322787, 15322969, 15323123, 15323293, 15323471, 15323611]
theorem check9 : primorialChainCheck 4473 primorial4473 184 15320917 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 15320917 15323611 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15320917) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [15323767, 15323939, 15324103, 15324263, 15324437, 15324607, 15324787, 15324971, 15325151, 15325333, 15325507, 15325691, 15325859, 15326011, 15326191, 15326351]
theorem check10 : primorialChainCheck 4473 primorial4473 184 15323611 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 15323611 15326351 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15323611) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [15326513, 15326683, 15326849, 15327031, 15327173, 15327349, 15327511, 15327679, 15327853, 15328013, 15328147, 15328309, 15328487, 15328667, 15328847, 15328993]
theorem check11 : primorialChainCheck 4473 primorial4473 184 15326351 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 15326351 15328993 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15326351) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [15329147, 15329329, 15329513, 15329669, 15329843, 15330019, 15330193, 15330361, 15330541, 15330713, 15330877, 15331039, 15331223, 15331397, 15331573, 15331751]
theorem check12 : primorialChainCheck 4473 primorial4473 184 15328993 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 15328993 15331751 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15328993) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [15331931, 15332101, 15332281, 15332461, 15332641, 15332813, 15332971, 15333137, 15333317, 15333481, 15333649, 15333833, 15333977, 15334157, 15334339, 15334507]
theorem check13 : primorialChainCheck 4473 primorial4473 184 15331751 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 15331751 15334507 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15331751) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [15334681, 15334849, 15335017, 15335191, 15335371, 15335543, 15335707, 15335863, 15336043, 15336221, 15336403, 15336577, 15336757, 15336931, 15337079, 15337253]
theorem check14 : primorialChainCheck 4473 primorial4473 184 15334507 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 15334507 15337253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15334507) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [15337381, 15337559, 15337741, 15337919, 15338101, 15338269, 15338431, 15338611, 15338759, 15338903, 15339073, 15339257, 15339431, 15339613, 15339787, 15339971]
theorem check15 : primorialChainCheck 4473 primorial4473 184 15337253 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 15337253 15339971 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15337253) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [15340151, 15340291, 15340469, 15340651, 15340813, 15340943, 15341111, 15341281, 15341441, 15341611, 15341779, 15341959, 15342137, 15342317, 15342499, 15342683]
theorem check16 : primorialChainCheck 4473 primorial4473 184 15339971 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 15339971 15342683 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15339971) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [15342841, 15343021, 15343199, 15343381, 15343547, 15343721, 15343883, 15344053, 15344227, 15344389, 15344569, 15344753, 15344929, 15345107, 15345259, 15345433]
theorem check17 : primorialChainCheck 4473 primorial4473 184 15342683 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 15342683 15345433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15342683) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [15345607, 15345769, 15345949, 15346127, 15346297, 15346477, 15346649, 15346811, 15346987, 15347153, 15347323, 15347503, 15347677, 15347833, 15348017, 15348197]
theorem check18 : primorialChainCheck 4473 primorial4473 184 15345433 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 15345433 15348197 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15345433) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [15348373, 15348547, 15348731, 15348911, 15349067, 15349223, 15349393, 15349577, 15349757, 15349921, 15350063, 15350243, 15350389, 15350567, 15350747, 15350897]
theorem check19 : primorialChainCheck 4473 primorial4473 184 15348197 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 15348197 15350897 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15348197) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [15351073, 15351257, 15351437, 15351613, 15351797, 15351967, 15352147, 15352301, 15352483, 15352639, 15352783, 15352949, 15353119, 15353297, 15353467, 15353651]
theorem check20 : primorialChainCheck 4473 primorial4473 184 15350897 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 15350897 15353651 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15350897) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [15353827, 15353993, 15354169, 15354347, 15354509, 15354671, 15354851, 15355031, 15355187, 15355357, 15355541, 15355723, 15355897, 15356071, 15356251, 15356401]
theorem check21 : primorialChainCheck 4473 primorial4473 184 15353651 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 15353651 15356401 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15353651) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [15356569, 15356717, 15356897, 15357079, 15357233, 15357401, 15357581, 15357763, 15357931, 15358103, 15358279, 15358451, 15358601, 15358781, 15358961, 15359131]
theorem check22 : primorialChainCheck 4473 primorial4473 184 15356401 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 15356401 15359131 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15356401) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [15359303, 15359447, 15359629, 15359801, 15359969, 15360133, 15360313, 15360451, 15360623, 15360799, 15360977, 15361153, 15361331, 15361513, 15361663, 15361847]
theorem check23 : primorialChainCheck 4473 primorial4473 184 15359131 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 15359131 15361847 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15359131) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [15362027, 15362189, 15362359, 15362539, 15362723, 15362903, 15363079, 15363263, 15363437, 15363617, 15363791, 15363973, 15364147, 15364319, 15364487, 15364589]
theorem check24 : primorialChainCheck 4473 primorial4473 184 15361847 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 15361847 15364589 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15361847) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [15364771, 15364931, 15365087, 15365269, 15365419, 15365599, 15365741, 15365887, 15365993, 15366167, 15366347, 15366529, 15366713, 15366893, 15367069, 15367249]
theorem check25 : primorialChainCheck 4473 primorial4473 184 15364589 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 15364589 15367249 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15364589) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [15367399, 15367571, 15367747, 15367927, 15368083, 15368263, 15368443, 15368627, 15368779, 15368959, 15369131, 15369307, 15369491, 15369643, 15369787, 15369953]
theorem check26 : primorialChainCheck 4473 primorial4473 184 15367249 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 15367249 15369953 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15367249) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [15370129, 15370291, 15370471, 15370633, 15370801, 15370973, 15371149, 15371333, 15371509, 15371693, 15371869, 15372053, 15372223, 15372397, 15372571, 15372751]
theorem check27 : primorialChainCheck 4473 primorial4473 184 15369953 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 15369953 15372751 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15369953) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [15372923, 15373097, 15373273, 15373411, 15373583, 15373739, 15373921, 15374071, 15374231, 15374407, 15374587, 15374767, 15374941, 15375071, 15375253, 15375401]
theorem check28 : primorialChainCheck 4473 primorial4473 184 15372751 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 15372751 15375401 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15372751) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [15375557, 15375739, 15375923, 15376103, 15376261, 15376429, 15376609, 15376771, 15376951, 15377123, 15377303, 15377477, 15377657, 15377827, 15377981, 15378131]
theorem check29 : primorialChainCheck 4473 primorial4473 184 15375401 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 15375401 15378131 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15375401) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [15378301, 15378481, 15378653, 15378833, 15378997, 15379171, 15379349, 15379519, 15379697, 15379843, 15380023, 15380203, 15380383, 15380551, 15380731, 15380879]
theorem check30 : primorialChainCheck 4473 primorial4473 184 15378131 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 15378131 15380879 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15378131) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [15381061, 15381217, 15381389, 15381559, 15381739, 15381913, 15382097, 15382277, 15382459, 15382613, 15382781, 15382957, 15383131, 15383299, 15383479, 15383653]
theorem check31 : primorialChainCheck 4473 primorial4473 184 15380879 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 15380879 15383653 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 15380879) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 15296269 15301729 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15296269)
    (mid := 15299003) (hi := 15301729) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 15301729 15307231 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15301729)
    (mid := 15304477) (hi := 15307231) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 15307231 15312643 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15307231)
    (mid := 15309929) (hi := 15312643) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 15312643 15318157 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15312643)
    (mid := 15315431) (hi := 15318157) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 15318157 15323611 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15318157)
    (mid := 15320917) (hi := 15323611) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 15323611 15328993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15323611)
    (mid := 15326351) (hi := 15328993) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 15328993 15334507 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15328993)
    (mid := 15331751) (hi := 15334507) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 15334507 15339971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15334507)
    (mid := 15337253) (hi := 15339971) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 15339971 15345433 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15339971)
    (mid := 15342683) (hi := 15345433) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 15345433 15350897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15345433)
    (mid := 15348197) (hi := 15350897) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 15350897 15356401 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15350897)
    (mid := 15353651) (hi := 15356401) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 15356401 15361847 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15356401)
    (mid := 15359131) (hi := 15361847) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 15361847 15367249 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15361847)
    (mid := 15364589) (hi := 15367249) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 15367249 15372751 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15367249)
    (mid := 15369953) (hi := 15372751) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 15372751 15378131 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15372751)
    (mid := 15375401) (hi := 15378131) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 15378131 15383653 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15378131)
    (mid := 15380879) (hi := 15383653) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 15296269 15307231 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15296269)
    (mid := 15301729) (hi := 15307231) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 15307231 15318157 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15307231)
    (mid := 15312643) (hi := 15318157) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 15318157 15328993 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15318157)
    (mid := 15323611) (hi := 15328993) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 15328993 15339971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15328993)
    (mid := 15334507) (hi := 15339971) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 15339971 15350897 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15339971)
    (mid := 15345433) (hi := 15350897) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 15350897 15361847 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15350897)
    (mid := 15356401) (hi := 15361847) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 15361847 15372751 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15361847)
    (mid := 15367249) (hi := 15372751) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 15372751 15383653 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15372751)
    (mid := 15378131) (hi := 15383653) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 15296269 15318157 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15296269)
    (mid := 15307231) (hi := 15318157) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 15318157 15339971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15318157)
    (mid := 15328993) (hi := 15339971) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 15339971 15361847 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15339971)
    (mid := 15350897) (hi := 15361847) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 15361847 15383653 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15361847)
    (mid := 15372751) (hi := 15383653) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 15296269 15339971 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15296269)
    (mid := 15318157) (hi := 15339971) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 15339971 15383653 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15339971)
    (mid := 15361847) (hi := 15383653) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 15296269 15383653 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 15296269)
    (mid := 15339971) (hi := 15383653) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 15296269 15383653 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block174

#print axioms B699MiddleExtension.PrimorialBlocks.Block174.joined
