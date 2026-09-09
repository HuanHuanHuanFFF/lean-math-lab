import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block188

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [16518503, 16518673, 16518857, 16519039, 16519219, 16519397, 16519579, 16519757, 16519907, 16520027, 16520201, 16520377, 16520561, 16520741, 16520921, 16521103]
theorem check0 : primorialChainCheck 4473 primorial4473 184 16518329 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 16518329 16521103 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16518329) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [16521259, 16521443, 16521623, 16521781, 16521961, 16522123, 16522307, 16522469, 16522651, 16522829, 16522999, 16523173, 16523329, 16523513, 16523687, 16523869]
theorem check1 : primorialChainCheck 4473 primorial4473 184 16521103 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 16521103 16523869 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16521103) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [16524049, 16524223, 16524379, 16524551, 16524709, 16524881, 16525057, 16525237, 16525409, 16525541, 16525711, 16525757, 16525933, 16526113, 16526297, 16526473]
theorem check2 : primorialChainCheck 4473 primorial4473 184 16523869 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 16523869 16526473 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16523869) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [16526639, 16526819, 16526989, 16527163, 16527347, 16527529, 16527713, 16527881, 16528051, 16528229, 16528399, 16528583, 16528763, 16528943, 16529113, 16529237]
theorem check3 : primorialChainCheck 4473 primorial4473 184 16526473 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 16526473 16529237 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16526473) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [16529419, 16529599, 16529783, 16529941, 16530097, 16530277, 16530427, 16530611, 16530763, 16530947, 16531079, 16531261, 16531439, 16531621, 16531789, 16531969]
theorem check4 : primorialChainCheck 4473 primorial4473 184 16529237 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 16529237 16531969 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16529237) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [16532141, 16532311, 16532473, 16532657, 16532807, 16532953, 16533133, 16533317, 16533499, 16533679, 16533863, 16534043, 16534213, 16534373, 16534549, 16534703]
theorem check5 : primorialChainCheck 4473 primorial4473 184 16531969 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 16531969 16534703 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16531969) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [16534879, 16535053, 16535219, 16535401, 16535581, 16535759, 16535923, 16536089, 16536271, 16536451, 16536613, 16536787, 16536943, 16537123, 16537303, 16537487]
theorem check6 : primorialChainCheck 4473 primorial4473 184 16534703 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 16534703 16537487 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16534703) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [16537613, 16537793, 16537951, 16538131, 16538309, 16538479, 16538659, 16538831, 16538999, 16539169, 16539349, 16539533, 16539713, 16539871, 16540037, 16540217]
theorem check7 : primorialChainCheck 4473 primorial4473 184 16537487 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 16537487 16540217 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16537487) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [16540397, 16540571, 16540723, 16540907, 16541089, 16541269, 16541453, 16541621, 16541783, 16541963, 16542137, 16542289, 16542473, 16542641, 16542817, 16542997]
theorem check8 : primorialChainCheck 4473 primorial4473 184 16540217 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 16540217 16542997 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16540217) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [16543169, 16543349, 16543531, 16543697, 16543867, 16544039, 16544219, 16544401, 16544579, 16544747, 16544897, 16545071, 16545247, 16545421, 16545601, 16545779]
theorem check9 : primorialChainCheck 4473 primorial4473 184 16542997 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 16542997 16545779 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16542997) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [16545959, 16546129, 16546307, 16546487, 16546643, 16546793, 16546973, 16547123, 16547299, 16547483, 16547659, 16547837, 16547983, 16548131, 16548307, 16548479]
theorem check10 : primorialChainCheck 4473 primorial4473 184 16545779 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 16545779 16548479 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16545779) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [16548619, 16548787, 16548967, 16549129, 16549307, 16549487, 16549661, 16549843, 16549999, 16550153, 16550323, 16550491, 16550659, 16550801, 16550983, 16551163]
theorem check11 : primorialChainCheck 4473 primorial4473 184 16548479 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 16548479 16551163 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16548479) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [16551343, 16551511, 16551677, 16551859, 16552043, 16552219, 16552343, 16552517, 16552699, 16552871, 16553051, 16553231, 16553413, 16553591, 16553773, 16553941]
theorem check12 : primorialChainCheck 4473 primorial4473 184 16551163 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 16551163 16553941 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16551163) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [16554103, 16554253, 16554437, 16554619, 16554773, 16554953, 16555111, 16555277, 16555439, 16555621, 16555787, 16555963, 16556123, 16556257, 16556381, 16556557]
theorem check13 : primorialChainCheck 4473 primorial4473 184 16553941 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 16553941 16556557 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16553941) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [16556719, 16556879, 16557061, 16557239, 16557419, 16557601, 16557719, 16557887, 16558067, 16558249, 16558427, 16558609, 16558769, 16558951, 16559131, 16559303]
theorem check14 : primorialChainCheck 4473 primorial4473 184 16556557 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 16556557 16559303 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16556557) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [16559483, 16559629, 16559801, 16559971, 16560151, 16560317, 16560493, 16560641, 16560811, 16560983, 16561157, 16561339, 16561513, 16561691, 16561861, 16562041]
theorem check15 : primorialChainCheck 4473 primorial4473 184 16559303 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 16559303 16562041 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16559303) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [16562207, 16562389, 16562563, 16562731, 16562881, 16563047, 16563187, 16563361, 16563541, 16563709, 16563857, 16564039, 16564193, 16564337, 16564517, 16564699]
theorem check16 : primorialChainCheck 4473 primorial4473 184 16562041 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 16562041 16564699 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16562041) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [16564883, 16565053, 16565209, 16565347, 16565519, 16565693, 16565863, 16566031, 16566203, 16566383, 16566559, 16566731, 16566833, 16567007, 16567189, 16567319]
theorem check17 : primorialChainCheck 4473 primorial4473 184 16564699 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 16564699 16567319 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16564699) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [16567501, 16567667, 16567847, 16568023, 16568207, 16568389, 16568567, 16568723, 16568891, 16569073, 16569257, 16569433, 16569607, 16569743, 16569901, 16570063]
theorem check18 : primorialChainCheck 4473 primorial4473 184 16567319 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 16567319 16570063 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16567319) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [16570247, 16570429, 16570613, 16570789, 16570963, 16571147, 16571323, 16571491, 16571663, 16571833, 16572013, 16572169, 16572349, 16572509, 16572683, 16572799]
theorem check19 : primorialChainCheck 4473 primorial4473 184 16570063 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 16570063 16572799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16570063) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [16572967, 16573069, 16573241, 16573423, 16573603, 16573787, 16573967, 16574149, 16574317, 16574497, 16574653, 16574797, 16574969, 16575137, 16575311, 16575451]
theorem check20 : primorialChainCheck 4473 primorial4473 184 16572799 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 16572799 16575451 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16572799) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [16575623, 16575761, 16575943, 16576117, 16576297, 16576459, 16576643, 16576783, 16576961, 16577117, 16577269, 16577453, 16577629, 16577809, 16577989, 16578167]
theorem check21 : primorialChainCheck 4473 primorial4473 184 16575451 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 16575451 16578167 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16575451) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [16578329, 16578509, 16578673, 16578857, 16579027, 16579207, 16579363, 16579547, 16579691, 16579873, 16580029, 16580191, 16580371, 16580537, 16580717, 16580887]
theorem check22 : primorialChainCheck 4473 primorial4473 184 16578167 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 16578167 16580887 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16578167) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [16581067, 16581251, 16581431, 16581601, 16581779, 16581941, 16582099, 16582277, 16582451, 16582619, 16582733, 16582913, 16583093, 16583249, 16583429, 16583603]
theorem check23 : primorialChainCheck 4473 primorial4473 184 16580887 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 16580887 16583603 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16580887) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [16583771, 16583909, 16584079, 16584263, 16584437, 16584613, 16584791, 16584949, 16585117, 16585291, 16585453, 16585633, 16585817, 16585981, 16586161, 16586341]
theorem check24 : primorialChainCheck 4473 primorial4473 184 16583603 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 16583603 16586341 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16583603) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [16586513, 16586683, 16586861, 16587041, 16587187, 16587367, 16587541, 16587719, 16587881, 16588051, 16588223, 16588391, 16588571, 16588717, 16588883, 16589057]
theorem check25 : primorialChainCheck 4473 primorial4473 184 16586341 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 16586341 16589057 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16586341) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [16589239, 16589423, 16589597, 16589779, 16589933, 16590103, 16590263, 16590443, 16590619, 16590799, 16590979, 16591151, 16591327, 16591499, 16591669, 16591831]
theorem check26 : primorialChainCheck 4473 primorial4473 184 16589057 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 16589057 16591831 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16589057) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [16592011, 16592171, 16592353, 16592519, 16592701, 16592879, 16593047, 16593211, 16593349, 16593529, 16593701, 16593877, 16594037, 16594189, 16594367, 16594549]
theorem check27 : primorialChainCheck 4473 primorial4473 184 16591831 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 16591831 16594549 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16591831) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [16594729, 16594909, 16595093, 16595263, 16595441, 16595567, 16595737, 16595899, 16596079, 16596247, 16596427, 16596599, 16596779, 16596949, 16597123, 16597297]
theorem check28 : primorialChainCheck 4473 primorial4473 184 16594549 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 16594549 16597297 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16594549) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [16597481, 16597649, 16597799, 16597969, 16598147, 16598321, 16598503, 16598677, 16598843, 16598993, 16599133, 16599313, 16599493, 16599647, 16599823, 16599959]
theorem check29 : primorialChainCheck 4473 primorial4473 184 16597297 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 16597297 16599959 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16597297) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [16600139, 16600261, 16600429, 16600609, 16600783, 16600951, 16601131, 16601287, 16601447, 16601623, 16601807, 16601989, 16602167, 16602349, 16602517, 16602697]
theorem check30 : primorialChainCheck 4473 primorial4473 184 16599959 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 16599959 16602697 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16599959) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [16602871, 16603043, 16603189, 16603369, 16603553, 16603733, 16603913, 16604059, 16604243, 16604417, 16604573, 16604743, 16604927, 16605109, 16605283, 16605467]
theorem check31 : primorialChainCheck 4473 primorial4473 184 16602697 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 16602697 16605467 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16602697) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 16518329 16523869 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16518329)
    (mid := 16521103) (hi := 16523869) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 16523869 16529237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16523869)
    (mid := 16526473) (hi := 16529237) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 16529237 16534703 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16529237)
    (mid := 16531969) (hi := 16534703) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 16534703 16540217 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16534703)
    (mid := 16537487) (hi := 16540217) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 16540217 16545779 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16540217)
    (mid := 16542997) (hi := 16545779) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 16545779 16551163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16545779)
    (mid := 16548479) (hi := 16551163) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 16551163 16556557 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16551163)
    (mid := 16553941) (hi := 16556557) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 16556557 16562041 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16556557)
    (mid := 16559303) (hi := 16562041) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 16562041 16567319 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16562041)
    (mid := 16564699) (hi := 16567319) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 16567319 16572799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16567319)
    (mid := 16570063) (hi := 16572799) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 16572799 16578167 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16572799)
    (mid := 16575451) (hi := 16578167) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 16578167 16583603 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16578167)
    (mid := 16580887) (hi := 16583603) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 16583603 16589057 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16583603)
    (mid := 16586341) (hi := 16589057) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 16589057 16594549 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16589057)
    (mid := 16591831) (hi := 16594549) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 16594549 16599959 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16594549)
    (mid := 16597297) (hi := 16599959) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 16599959 16605467 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16599959)
    (mid := 16602697) (hi := 16605467) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 16518329 16529237 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16518329)
    (mid := 16523869) (hi := 16529237) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 16529237 16540217 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16529237)
    (mid := 16534703) (hi := 16540217) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 16540217 16551163 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16540217)
    (mid := 16545779) (hi := 16551163) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 16551163 16562041 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16551163)
    (mid := 16556557) (hi := 16562041) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 16562041 16572799 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16562041)
    (mid := 16567319) (hi := 16572799) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 16572799 16583603 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16572799)
    (mid := 16578167) (hi := 16583603) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 16583603 16594549 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16583603)
    (mid := 16589057) (hi := 16594549) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 16594549 16605467 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16594549)
    (mid := 16599959) (hi := 16605467) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 16518329 16540217 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16518329)
    (mid := 16529237) (hi := 16540217) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 16540217 16562041 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16540217)
    (mid := 16551163) (hi := 16562041) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 16562041 16583603 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16562041)
    (mid := 16572799) (hi := 16583603) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 16583603 16605467 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16583603)
    (mid := 16594549) (hi := 16605467) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 16518329 16562041 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16518329)
    (mid := 16540217) (hi := 16562041) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 16562041 16605467 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16562041)
    (mid := 16583603) (hi := 16605467) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 16518329 16605467 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16518329)
    (mid := 16562041) (hi := 16605467) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 16518329 16605467 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block188

#print axioms B699MiddleExtension.PrimorialBlocks.Block188.joined
