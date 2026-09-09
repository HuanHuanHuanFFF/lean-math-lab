import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block141

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [12407639, 12407809, 12407981, 12408161, 12408343, 12408511, 12408689, 12408871, 12409037, 12409219, 12409391, 12409571, 12409729, 12409913, 12410089, 12410269]
theorem check0 : primorialChainCheck 4473 primorial4473 184 12407509 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 12407509 12410269 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12407509) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [12410449, 12410621, 12410791, 12410963, 12411131, 12411307, 12411491, 12411667, 12411803, 12411979, 12412151, 12412333, 12412513, 12412693, 12412867, 12413039]
theorem check1 : primorialChainCheck 4473 primorial4473 184 12410269 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 12410269 12413039 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12410269) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [12413209, 12413393, 12413551, 12413719, 12413887, 12414071, 12414211, 12414383, 12414557, 12414719, 12414893, 12415043, 12415217, 12415399, 12415583, 12415681]
theorem check2 : primorialChainCheck 4473 primorial4473 184 12413039 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 12413039 12415681 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12413039) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [12415861, 12416029, 12416203, 12416377, 12416549, 12416689, 12416869, 12417037, 12417193, 12417347, 12417527, 12417703, 12417859, 12418019, 12418193, 12418369]
theorem check3 : primorialChainCheck 4473 primorial4473 184 12415681 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 12415681 12418369 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12415681) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [12418547, 12418729, 12418897, 12419081, 12419243, 12419419, 12419591, 12419773, 12419951, 12420131, 12420313, 12420487, 12420649, 12420833, 12421009, 12421187]
theorem check4 : primorialChainCheck 4473 primorial4473 184 12418369 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 12418369 12421187 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12418369) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [12421361, 12421537, 12421709, 12421891, 12422051, 12422209, 12422363, 12422539, 12422687, 12422867, 12423031, 12423211, 12423377, 12423539, 12423713, 12423893]
theorem check5 : primorialChainCheck 4473 primorial4473 184 12421187 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 12421187 12423893 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12421187) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [12424073, 12424241, 12424387, 12424571, 12424723, 12424901, 12425059, 12425243, 12425423, 12425597, 12425771, 12425951, 12426121, 12426277, 12426431, 12426607]
theorem check6 : primorialChainCheck 4473 primorial4473 184 12423893 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 12423893 12426607 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12423893) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [12426781, 12426943, 12427117, 12427297, 12427439, 12427607, 12427781, 12427951, 12428113, 12428293, 12428473, 12428657, 12428837, 12429019, 12429187, 12429367]
theorem check7 : primorialChainCheck 4473 primorial4473 184 12426607 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 12426607 12429367 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12426607) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [12429551, 12429733, 12429889, 12430073, 12430219, 12430403, 12430559, 12430739, 12430903, 12431071, 12431239, 12431413, 12431597, 12431767, 12431941, 12432107]
theorem check8 : primorialChainCheck 4473 primorial4473 184 12429367 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 12429367 12432107 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12429367) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [12432269, 12432449, 12432601, 12432779, 12432961, 12433121, 12433297, 12433481, 12433627, 12433801, 12433973, 12434143, 12434311, 12434491, 12434659, 12434843]
theorem check9 : primorialChainCheck 4473 primorial4473 184 12432107 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 12432107 12434843 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12432107) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [12435023, 12435193, 12435349, 12435529, 12435679, 12435859, 12436043, 12436211, 12436387, 12436561, 12436709, 12436883, 12437057, 12437239, 12437423, 12437599]
theorem check10 : primorialChainCheck 4473 primorial4473 184 12434843 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 12434843 12437599 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12434843) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [12437767, 12437941, 12438121, 12438301, 12438479, 12438659, 12438827, 12439003, 12439187, 12439369, 12439549, 12439727, 12439909, 12440093, 12440273, 12440453]
theorem check11 : primorialChainCheck 4473 primorial4473 184 12437599 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 12437599 12440453 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12437599) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [12440629, 12440809, 12440993, 12441173, 12441353, 12441521, 12441701, 12441883, 12442051, 12442223, 12442387, 12442561, 12442741, 12442901, 12443083, 12443267]
theorem check12 : primorialChainCheck 4473 primorial4473 184 12440453 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 12440453 12443267 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12440453) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [12443449, 12443633, 12443791, 12443971, 12444139, 12444319, 12444503, 12444661, 12444841, 12445021, 12445187, 12445351, 12445529, 12445711, 12445889, 12446069]
theorem check13 : primorialChainCheck 4473 primorial4473 184 12443267 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 12443267 12446069 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12443267) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [12446251, 12446429, 12446579, 12446747, 12446923, 12447107, 12447287, 12447469, 12447613, 12447781, 12447959, 12448099, 12448283, 12448463, 12448633, 12448817]
theorem check14 : primorialChainCheck 4473 primorial4473 184 12446069 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 12446069 12448817 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12446069) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [12448987, 12449147, 12449309, 12449467, 12449623, 12449803, 12449981, 12450133, 12450311, 12450481, 12450653, 12450793, 12450973, 12451147, 12451297, 12451477]
theorem check15 : primorialChainCheck 4473 primorial4473 184 12448817 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 12448817 12451477 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12448817) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [12451657, 12451841, 12452023, 12452183, 12452351, 12452527, 12452681, 12452837, 12453017, 12453191, 12453361, 12453541, 12453713, 12453869, 12454049, 12454229]
theorem check16 : primorialChainCheck 4473 primorial4473 184 12451477 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 12451477 12454229 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12451477) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [12454397, 12454579, 12454759, 12454943, 12455117, 12455299, 12455473, 12455657, 12455837, 12456011, 12456187, 12456371, 12456539, 12456721, 12456887, 12457061]
theorem check17 : primorialChainCheck 4473 primorial4473 184 12454229 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 12454229 12457061 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12454229) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [12457219, 12457391, 12457537, 12457721, 12457897, 12458071, 12458239, 12458393, 12458561, 12458741, 12458923, 12459101, 12459229, 12459407, 12459581, 12459757]
theorem check18 : primorialChainCheck 4473 primorial4473 184 12457061 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 12457061 12459757 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12457061) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [12459919, 12460103, 12460277, 12460421, 12460603, 12460787, 12460967, 12461123, 12461269, 12461453, 12461633, 12461809, 12461993, 12462137, 12462311, 12462449]
theorem check19 : primorialChainCheck 4473 primorial4473 184 12459757 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 12459757 12462449 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12459757) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [12462617, 12462787, 12462949, 12463123, 12463291, 12463463, 12463637, 12463817, 12463961, 12464141, 12464311, 12464483, 12464663, 12464833, 12465001, 12465151]
theorem check20 : primorialChainCheck 4473 primorial4473 184 12462449 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 12462449 12465151 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12462449) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [12465307, 12465487, 12465671, 12465847, 12466031, 12466211, 12466381, 12466561, 12466739, 12466913, 12467089, 12467269, 12467437, 12467599, 12467759, 12467911]
theorem check21 : primorialChainCheck 4473 primorial4473 184 12465151 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 12465151 12467911 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12465151) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [12468083, 12468263, 12468431, 12468613, 12468791, 12468943, 12469103, 12469277, 12469433, 12469609, 12469771, 12469949, 12470131, 12470287, 12470467, 12470629]
theorem check22 : primorialChainCheck 4473 primorial4473 184 12467911 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 12467911 12470629 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12467911) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [12470803, 12470987, 12471169, 12471341, 12471499, 12471649, 12471803, 12471973, 12472153, 12472337, 12472517, 12472699, 12472879, 12473047, 12473221, 12473371]
theorem check23 : primorialChainCheck 4473 primorial4473 184 12470629 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 12470629 12473371 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12470629) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [12473543, 12473719, 12473893, 12474071, 12474251, 12474421, 12474589, 12474767, 12474949, 12475109, 12475291, 12475471, 12475649, 12475831, 12475999, 12476161]
theorem check24 : primorialChainCheck 4473 primorial4473 184 12473371 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 12473371 12476161 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12473371) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [12476339, 12476507, 12476689, 12476869, 12477041, 12477217, 12477397, 12477581, 12477749, 12477931, 12478111, 12478283, 12478457, 12478607, 12478783, 12478943]
theorem check25 : primorialChainCheck 4473 primorial4473 184 12476161 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 12476161 12478943 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12476161) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [12479123, 12479297, 12479477, 12479653, 12479809, 12479993, 12480161, 12480343, 12480509, 12480679, 12480863, 12481039, 12481219, 12481379, 12481559, 12481673]
theorem check26 : primorialChainCheck 4473 primorial4473 184 12478943 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 12478943 12481673 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12478943) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [12481831, 12482011, 12482179, 12482363, 12482521, 12482699, 12482881, 12483061, 12483241, 12483409, 12483563, 12483743, 12483923, 12484099, 12484271, 12484447]
theorem check27 : primorialChainCheck 4473 primorial4473 184 12481673 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 12481673 12484447 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12481673) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [12484621, 12484793, 12484961, 12485141, 12485323, 12485507, 12485659, 12485843, 12486011, 12486191, 12486371, 12486547, 12486709, 12486889, 12487073, 12487253]
theorem check28 : primorialChainCheck 4473 primorial4473 184 12484447 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 12484447 12487253 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12484447) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [12487421, 12487589, 12487757, 12487933, 12488107, 12488279, 12488461, 12488633, 12488803, 12488941, 12489119, 12489293, 12489473, 12489649, 12489809, 12489991]
theorem check29 : primorialChainCheck 4473 primorial4473 184 12487253 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 12487253 12489991 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12487253) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [12490157, 12490333, 12490507, 12490663, 12490837, 12491009, 12491191, 12491351, 12491497, 12491627, 12491807, 12491971, 12492131, 12492299, 12492479, 12492631]
theorem check30 : primorialChainCheck 4473 primorial4473 184 12489991 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 12489991 12492631 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12489991) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [12492811, 12492989, 12493141, 12493321, 12493499, 12493673, 12493847, 12494029, 12494213, 12494393, 12494539, 12494717, 12494893, 12495073, 12495253, 12495421]
theorem check31 : primorialChainCheck 4473 primorial4473 184 12492631 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 12492631 12495421 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 12492631) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 12407509 12413039 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12407509)
    (mid := 12410269) (hi := 12413039) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 12413039 12418369 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12413039)
    (mid := 12415681) (hi := 12418369) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 12418369 12423893 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12418369)
    (mid := 12421187) (hi := 12423893) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 12423893 12429367 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12423893)
    (mid := 12426607) (hi := 12429367) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 12429367 12434843 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12429367)
    (mid := 12432107) (hi := 12434843) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 12434843 12440453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12434843)
    (mid := 12437599) (hi := 12440453) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 12440453 12446069 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12440453)
    (mid := 12443267) (hi := 12446069) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 12446069 12451477 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12446069)
    (mid := 12448817) (hi := 12451477) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 12451477 12457061 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12451477)
    (mid := 12454229) (hi := 12457061) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 12457061 12462449 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12457061)
    (mid := 12459757) (hi := 12462449) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 12462449 12467911 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12462449)
    (mid := 12465151) (hi := 12467911) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 12467911 12473371 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12467911)
    (mid := 12470629) (hi := 12473371) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 12473371 12478943 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12473371)
    (mid := 12476161) (hi := 12478943) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 12478943 12484447 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12478943)
    (mid := 12481673) (hi := 12484447) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 12484447 12489991 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12484447)
    (mid := 12487253) (hi := 12489991) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 12489991 12495421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12489991)
    (mid := 12492631) (hi := 12495421) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 12407509 12418369 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12407509)
    (mid := 12413039) (hi := 12418369) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 12418369 12429367 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12418369)
    (mid := 12423893) (hi := 12429367) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 12429367 12440453 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12429367)
    (mid := 12434843) (hi := 12440453) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 12440453 12451477 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12440453)
    (mid := 12446069) (hi := 12451477) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 12451477 12462449 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12451477)
    (mid := 12457061) (hi := 12462449) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 12462449 12473371 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12462449)
    (mid := 12467911) (hi := 12473371) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 12473371 12484447 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12473371)
    (mid := 12478943) (hi := 12484447) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 12484447 12495421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12484447)
    (mid := 12489991) (hi := 12495421) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 12407509 12429367 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12407509)
    (mid := 12418369) (hi := 12429367) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 12429367 12451477 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12429367)
    (mid := 12440453) (hi := 12451477) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 12451477 12473371 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12451477)
    (mid := 12462449) (hi := 12473371) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 12473371 12495421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12473371)
    (mid := 12484447) (hi := 12495421) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 12407509 12451477 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12407509)
    (mid := 12429367) (hi := 12451477) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 12451477 12495421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12451477)
    (mid := 12473371) (hi := 12495421) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 12407509 12495421 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 12407509)
    (mid := 12451477) (hi := 12495421) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 12407509 12495421 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block141

#print axioms B699MiddleExtension.PrimorialBlocks.Block141.joined
