import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.primorial.PrimorialData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.PrimorialBlocks.Block187

/-! Original input slice. Kernel checks use the proved primorial literal,
never an unevaluated product; each truth certificate has at most 16 edges. -/

def tail0 : List Nat := [16431167, 16431343, 16431511, 16431689, 16431853, 16432007, 16432153, 16432331, 16432501, 16432681, 16432849, 16432991, 16433173, 16433357, 16433531, 16433701]
theorem check0 : primorialChainCheck 4473 primorial4473 184 16430989 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 16430989 16433701 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16430989) (qs := tail0) basis4473_complete basis4473_prod_eq check0

def tail1 : List Nat := [16433881, 16434059, 16434241, 16434413, 16434589, 16434773, 16434889, 16435063, 16435213, 16435387, 16435567, 16435751, 16435919, 16436087, 16436257, 16436423]
theorem check1 : primorialChainCheck 4473 primorial4473 184 16433701 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 16433701 16436423 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16433701) (qs := tail1) basis4473_complete basis4473_prod_eq check1

def tail2 : List Nat := [16436597, 16436779, 16436947, 16437131, 16437277, 16437439, 16437607, 16437769, 16437937, 16438063, 16438243, 16438423, 16438607, 16438789, 16438967, 16439147]
theorem check2 : primorialChainCheck 4473 primorial4473 184 16436423 tail2 = true := by
  decide +kernel
theorem part2 : B699MiddleIndex.PrimeChain 184 16436423 16439147 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16436423) (qs := tail2) basis4473_complete basis4473_prod_eq check2

def tail3 : List Nat := [16439329, 16439513, 16439677, 16439861, 16440043, 16440223, 16440407, 16440583, 16440761, 16440923, 16441097, 16441277, 16441459, 16441603, 16441751, 16441921]
theorem check3 : primorialChainCheck 4473 primorial4473 184 16439147 tail3 = true := by
  decide +kernel
theorem part3 : B699MiddleIndex.PrimeChain 184 16439147 16441921 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16439147) (qs := tail3) basis4473_complete basis4473_prod_eq check3

def tail4 : List Nat := [16442099, 16442197, 16442381, 16442521, 16442693, 16442869, 16443041, 16443209, 16443391, 16443571, 16443737, 16443901, 16444079, 16444201, 16444369, 16444553]
theorem check4 : primorialChainCheck 4473 primorial4473 184 16441921 tail4 = true := by
  decide +kernel
theorem part4 : B699MiddleIndex.PrimeChain 184 16441921 16444553 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16441921) (qs := tail4) basis4473_complete basis4473_prod_eq check4

def tail5 : List Nat := [16444699, 16444867, 16445047, 16445227, 16445399, 16445573, 16445747, 16445893, 16446071, 16446251, 16446433, 16446607, 16446791, 16446971, 16447091, 16447259]
theorem check5 : primorialChainCheck 4473 primorial4473 184 16444553 tail5 = true := by
  decide +kernel
theorem part5 : B699MiddleIndex.PrimeChain 184 16444553 16447259 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16444553) (qs := tail5) basis4473_complete basis4473_prod_eq check5

def tail6 : List Nat := [16447441, 16447609, 16447793, 16447957, 16448137, 16448297, 16448477, 16448651, 16448821, 16448989, 16449161, 16449341, 16449491, 16449661, 16449841, 16450003]
theorem check6 : primorialChainCheck 4473 primorial4473 184 16447259 tail6 = true := by
  decide +kernel
theorem part6 : B699MiddleIndex.PrimeChain 184 16447259 16450003 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16447259) (qs := tail6) basis4473_complete basis4473_prod_eq check6

def tail7 : List Nat := [16450177, 16450361, 16450529, 16450703, 16450873, 16451047, 16451221, 16451401, 16451581, 16451723, 16451867, 16452031, 16452203, 16452361, 16452539, 16452697]
theorem check7 : primorialChainCheck 4473 primorial4473 184 16450003 tail7 = true := by
  decide +kernel
theorem part7 : B699MiddleIndex.PrimeChain 184 16450003 16452697 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16450003) (qs := tail7) basis4473_complete basis4473_prod_eq check7

def tail8 : List Nat := [16452881, 16453061, 16453201, 16453379, 16453561, 16453741, 16453889, 16454059, 16454237, 16454387, 16454563, 16454719, 16454903, 16455077, 16455251, 16455433]
theorem check8 : primorialChainCheck 4473 primorial4473 184 16452697 tail8 = true := by
  decide +kernel
theorem part8 : B699MiddleIndex.PrimeChain 184 16452697 16455433 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16452697) (qs := tail8) basis4473_complete basis4473_prod_eq check8

def tail9 : List Nat := [16455617, 16455773, 16455941, 16456123, 16456291, 16456441, 16456597, 16456777, 16456961, 16457131, 16457293, 16457459, 16457611, 16457773, 16457957, 16458139]
theorem check9 : primorialChainCheck 4473 primorial4473 184 16455433 tail9 = true := by
  decide +kernel
theorem part9 : B699MiddleIndex.PrimeChain 184 16455433 16458139 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16455433) (qs := tail9) basis4473_complete basis4473_prod_eq check9

def tail10 : List Nat := [16458289, 16458469, 16458649, 16458829, 16458989, 16459169, 16459337, 16459517, 16459699, 16459873, 16460053, 16460231, 16460407, 16460579, 16460753, 16460929]
theorem check10 : primorialChainCheck 4473 primorial4473 184 16458139 tail10 = true := by
  decide +kernel
theorem part10 : B699MiddleIndex.PrimeChain 184 16458139 16460929 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16458139) (qs := tail10) basis4473_complete basis4473_prod_eq check10

def tail11 : List Nat := [16461113, 16461259, 16461409, 16461547, 16461689, 16461839, 16462021, 16462183, 16462367, 16462547, 16462727, 16462909, 16463087, 16463269, 16463437, 16463621]
theorem check11 : primorialChainCheck 4473 primorial4473 184 16460929 tail11 = true := by
  decide +kernel
theorem part11 : B699MiddleIndex.PrimeChain 184 16460929 16463621 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16460929) (qs := tail11) basis4473_complete basis4473_prod_eq check11

def tail12 : List Nat := [16463789, 16463971, 16464073, 16464229, 16464401, 16464577, 16464761, 16464923, 16465093, 16465277, 16465453, 16465633, 16465817, 16465973, 16466143, 16466327]
theorem check12 : primorialChainCheck 4473 primorial4473 184 16463621 tail12 = true := by
  decide +kernel
theorem part12 : B699MiddleIndex.PrimeChain 184 16463621 16466327 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16463621) (qs := tail12) basis4473_complete basis4473_prod_eq check12

def tail13 : List Nat := [16466509, 16466677, 16466843, 16467023, 16467197, 16467361, 16467523, 16467673, 16467827, 16467991, 16468171, 16468351, 16468519, 16468703, 16468867, 16469027]
theorem check13 : primorialChainCheck 4473 primorial4473 184 16466327 tail13 = true := by
  decide +kernel
theorem part13 : B699MiddleIndex.PrimeChain 184 16466327 16469027 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16466327) (qs := tail13) basis4473_complete basis4473_prod_eq check13

def tail14 : List Nat := [16469197, 16469381, 16469543, 16469723, 16469899, 16470079, 16470239, 16470407, 16470589, 16470749, 16470931, 16471111, 16471277, 16471457, 16471621, 16471799]
theorem check14 : primorialChainCheck 4473 primorial4473 184 16469027 tail14 = true := by
  decide +kernel
theorem part14 : B699MiddleIndex.PrimeChain 184 16469027 16471799 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16469027) (qs := tail14) basis4473_complete basis4473_prod_eq check14

def tail15 : List Nat := [16471957, 16472089, 16472273, 16472441, 16472593, 16472759, 16472917, 16473101, 16473271, 16473439, 16473623, 16473797, 16473973, 16474153, 16474327, 16474499]
theorem check15 : primorialChainCheck 4473 primorial4473 184 16471799 tail15 = true := by
  decide +kernel
theorem part15 : B699MiddleIndex.PrimeChain 184 16471799 16474499 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16471799) (qs := tail15) basis4473_complete basis4473_prod_eq check15

def tail16 : List Nat := [16474663, 16474847, 16475029, 16475189, 16475369, 16475519, 16475699, 16475867, 16476017, 16476197, 16476377, 16476541, 16476683, 16476851, 16477031, 16477211]
theorem check16 : primorialChainCheck 4473 primorial4473 184 16474499 tail16 = true := by
  decide +kernel
theorem part16 : B699MiddleIndex.PrimeChain 184 16474499 16477211 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16474499) (qs := tail16) basis4473_complete basis4473_prod_eq check16

def tail17 : List Nat := [16477393, 16477577, 16477733, 16477889, 16478039, 16478221, 16478383, 16478551, 16478713, 16478897, 16479077, 16479257, 16479347, 16479509, 16479667, 16479839]
theorem check17 : primorialChainCheck 4473 primorial4473 184 16477211 tail17 = true := by
  decide +kernel
theorem part17 : B699MiddleIndex.PrimeChain 184 16477211 16479839 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16477211) (qs := tail17) basis4473_complete basis4473_prod_eq check17

def tail18 : List Nat := [16480019, 16480183, 16480367, 16480549, 16480703, 16480859, 16481029, 16481209, 16481383, 16481557, 16481723, 16481903, 16482083, 16482259, 16482439, 16482623]
theorem check18 : primorialChainCheck 4473 primorial4473 184 16479839 tail18 = true := by
  decide +kernel
theorem part18 : B699MiddleIndex.PrimeChain 184 16479839 16482623 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16479839) (qs := tail18) basis4473_complete basis4473_prod_eq check18

def tail19 : List Nat := [16482799, 16482941, 16483123, 16483297, 16483451, 16483631, 16483787, 16483913, 16484089, 16484269, 16484411, 16484593, 16484773, 16484957, 16485113, 16485281]
theorem check19 : primorialChainCheck 4473 primorial4473 184 16482623 tail19 = true := by
  decide +kernel
theorem part19 : B699MiddleIndex.PrimeChain 184 16482623 16485281 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16482623) (qs := tail19) basis4473_complete basis4473_prod_eq check19

def tail20 : List Nat := [16485451, 16485619, 16485797, 16485967, 16486133, 16486303, 16486487, 16486663, 16486843, 16486997, 16487173, 16487357, 16487531, 16487683, 16487857, 16488013]
theorem check20 : primorialChainCheck 4473 primorial4473 184 16485281 tail20 = true := by
  decide +kernel
theorem part20 : B699MiddleIndex.PrimeChain 184 16485281 16488013 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16485281) (qs := tail20) basis4473_complete basis4473_prod_eq check20

def tail21 : List Nat := [16488179, 16488341, 16488517, 16488701, 16488877, 16489061, 16489237, 16489409, 16489589, 16489771, 16489937, 16490101, 16490281, 16490443, 16490623, 16490807]
theorem check21 : primorialChainCheck 4473 primorial4473 184 16488013 tail21 = true := by
  decide +kernel
theorem part21 : B699MiddleIndex.PrimeChain 184 16488013 16490807 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16488013) (qs := tail21) basis4473_complete basis4473_prod_eq check21

def tail22 : List Nat := [16490989, 16491157, 16491341, 16491523, 16491697, 16491859, 16492033, 16492207, 16492367, 16492547, 16492727, 16492897, 16493063, 16493227, 16493377, 16493551]
theorem check22 : primorialChainCheck 4473 primorial4473 184 16490807 tail22 = true := by
  decide +kernel
theorem part22 : B699MiddleIndex.PrimeChain 184 16490807 16493551 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16490807) (qs := tail22) basis4473_complete basis4473_prod_eq check22

def tail23 : List Nat := [16493731, 16493903, 16494083, 16494253, 16494431, 16494593, 16494761, 16494943, 16495123, 16495307, 16495487, 16495657, 16495837, 16496021, 16496177, 16496299]
theorem check23 : primorialChainCheck 4473 primorial4473 184 16493551 tail23 = true := by
  decide +kernel
theorem part23 : B699MiddleIndex.PrimeChain 184 16493551 16496299 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16493551) (qs := tail23) basis4473_complete basis4473_prod_eq check23

def tail24 : List Nat := [16496471, 16496653, 16496827, 16497001, 16497179, 16497353, 16497527, 16497707, 16497889, 16498063, 16498241, 16498421, 16498589, 16498759, 16498939, 16499117]
theorem check24 : primorialChainCheck 4473 primorial4473 184 16496299 tail24 = true := by
  decide +kernel
theorem part24 : B699MiddleIndex.PrimeChain 184 16496299 16499117 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16496299) (qs := tail24) basis4473_complete basis4473_prod_eq check24

def tail25 : List Nat := [16499279, 16499449, 16499629, 16499807, 16499963, 16500139, 16500313, 16500481, 16500647, 16500817, 16500997, 16501159, 16501337, 16501501, 16501643, 16501817]
theorem check25 : primorialChainCheck 4473 primorial4473 184 16499117 tail25 = true := by
  decide +kernel
theorem part25 : B699MiddleIndex.PrimeChain 184 16499117 16501817 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16499117) (qs := tail25) basis4473_complete basis4473_prod_eq check25

def tail26 : List Nat := [16501997, 16502179, 16502347, 16502527, 16502701, 16502873, 16503043, 16503211, 16503391, 16503569, 16503743, 16503919, 16504079, 16504223, 16504387, 16504549]
theorem check26 : primorialChainCheck 4473 primorial4473 184 16501817 tail26 = true := by
  decide +kernel
theorem part26 : B699MiddleIndex.PrimeChain 184 16501817 16504549 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16501817) (qs := tail26) basis4473_complete basis4473_prod_eq check26

def tail27 : List Nat := [16504729, 16504913, 16505087, 16505267, 16505449, 16505627, 16505803, 16505987, 16506169, 16506349, 16506533, 16506703, 16506871, 16507037, 16507207, 16507373]
theorem check27 : primorialChainCheck 4473 primorial4473 184 16504549 tail27 = true := by
  decide +kernel
theorem part27 : B699MiddleIndex.PrimeChain 184 16504549 16507373 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16504549) (qs := tail27) basis4473_complete basis4473_prod_eq check27

def tail28 : List Nat := [16507553, 16507727, 16507889, 16508059, 16508243, 16508419, 16508563, 16508729, 16508903, 16509083, 16509257, 16509433, 16509617, 16509769, 16509953, 16510129]
theorem check28 : primorialChainCheck 4473 primorial4473 184 16507373 tail28 = true := by
  decide +kernel
theorem part28 : B699MiddleIndex.PrimeChain 184 16507373 16510129 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16507373) (qs := tail28) basis4473_complete basis4473_prod_eq check28

def tail29 : List Nat := [16510279, 16510463, 16510643, 16510811, 16510969, 16511153, 16511333, 16511501, 16511653, 16511837, 16512017, 16512193, 16512373, 16512547, 16512721, 16512901]
theorem check29 : primorialChainCheck 4473 primorial4473 184 16510129 tail29 = true := by
  decide +kernel
theorem part29 : B699MiddleIndex.PrimeChain 184 16510129 16512901 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16510129) (qs := tail29) basis4473_complete basis4473_prod_eq check29

def tail30 : List Nat := [16513073, 16513253, 16513411, 16513589, 16513769, 16513949, 16514101, 16514269, 16514453, 16514587, 16514767, 16514947, 16515119, 16515293, 16515451, 16515613]
theorem check30 : primorialChainCheck 4473 primorial4473 184 16512901 tail30 = true := by
  decide +kernel
theorem part30 : B699MiddleIndex.PrimeChain 184 16512901 16515613 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16512901) (qs := tail30) basis4473_complete basis4473_prod_eq check30

def tail31 : List Nat := [16515787, 16515953, 16516127, 16516307, 16516471, 16516613, 16516781, 16516963, 16517147, 16517311, 16517471, 16517639, 16517819, 16517983, 16518157, 16518329]
theorem check31 : primorialChainCheck 4473 primorial4473 184 16515613 tail31 = true := by
  decide +kernel
theorem part31 : B699MiddleIndex.PrimeChain 184 16515613 16518329 :=
  primorialChainCheck_sound (B := 4473) (P := primorial4473) (ps := basis4473) (gap := 184)
    (p := 16515613) (qs := tail31) basis4473_complete basis4473_prod_eq check31

theorem joinLevel0_0 : B699MiddleIndex.PrimeChain 184 16430989 16436423 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16430989)
    (mid := 16433701) (hi := 16436423) part0 part1

theorem joinLevel0_1 : B699MiddleIndex.PrimeChain 184 16436423 16441921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16436423)
    (mid := 16439147) (hi := 16441921) part2 part3

theorem joinLevel0_2 : B699MiddleIndex.PrimeChain 184 16441921 16447259 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16441921)
    (mid := 16444553) (hi := 16447259) part4 part5

theorem joinLevel0_3 : B699MiddleIndex.PrimeChain 184 16447259 16452697 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16447259)
    (mid := 16450003) (hi := 16452697) part6 part7

theorem joinLevel0_4 : B699MiddleIndex.PrimeChain 184 16452697 16458139 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16452697)
    (mid := 16455433) (hi := 16458139) part8 part9

theorem joinLevel0_5 : B699MiddleIndex.PrimeChain 184 16458139 16463621 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16458139)
    (mid := 16460929) (hi := 16463621) part10 part11

theorem joinLevel0_6 : B699MiddleIndex.PrimeChain 184 16463621 16469027 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16463621)
    (mid := 16466327) (hi := 16469027) part12 part13

theorem joinLevel0_7 : B699MiddleIndex.PrimeChain 184 16469027 16474499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16469027)
    (mid := 16471799) (hi := 16474499) part14 part15

theorem joinLevel0_8 : B699MiddleIndex.PrimeChain 184 16474499 16479839 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16474499)
    (mid := 16477211) (hi := 16479839) part16 part17

theorem joinLevel0_9 : B699MiddleIndex.PrimeChain 184 16479839 16485281 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16479839)
    (mid := 16482623) (hi := 16485281) part18 part19

theorem joinLevel0_10 : B699MiddleIndex.PrimeChain 184 16485281 16490807 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16485281)
    (mid := 16488013) (hi := 16490807) part20 part21

theorem joinLevel0_11 : B699MiddleIndex.PrimeChain 184 16490807 16496299 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16490807)
    (mid := 16493551) (hi := 16496299) part22 part23

theorem joinLevel0_12 : B699MiddleIndex.PrimeChain 184 16496299 16501817 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16496299)
    (mid := 16499117) (hi := 16501817) part24 part25

theorem joinLevel0_13 : B699MiddleIndex.PrimeChain 184 16501817 16507373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16501817)
    (mid := 16504549) (hi := 16507373) part26 part27

theorem joinLevel0_14 : B699MiddleIndex.PrimeChain 184 16507373 16512901 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16507373)
    (mid := 16510129) (hi := 16512901) part28 part29

theorem joinLevel0_15 : B699MiddleIndex.PrimeChain 184 16512901 16518329 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16512901)
    (mid := 16515613) (hi := 16518329) part30 part31

theorem joinLevel1_0 : B699MiddleIndex.PrimeChain 184 16430989 16441921 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16430989)
    (mid := 16436423) (hi := 16441921) joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : B699MiddleIndex.PrimeChain 184 16441921 16452697 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16441921)
    (mid := 16447259) (hi := 16452697) joinLevel0_2 joinLevel0_3

theorem joinLevel1_2 : B699MiddleIndex.PrimeChain 184 16452697 16463621 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16452697)
    (mid := 16458139) (hi := 16463621) joinLevel0_4 joinLevel0_5

theorem joinLevel1_3 : B699MiddleIndex.PrimeChain 184 16463621 16474499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16463621)
    (mid := 16469027) (hi := 16474499) joinLevel0_6 joinLevel0_7

theorem joinLevel1_4 : B699MiddleIndex.PrimeChain 184 16474499 16485281 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16474499)
    (mid := 16479839) (hi := 16485281) joinLevel0_8 joinLevel0_9

theorem joinLevel1_5 : B699MiddleIndex.PrimeChain 184 16485281 16496299 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16485281)
    (mid := 16490807) (hi := 16496299) joinLevel0_10 joinLevel0_11

theorem joinLevel1_6 : B699MiddleIndex.PrimeChain 184 16496299 16507373 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16496299)
    (mid := 16501817) (hi := 16507373) joinLevel0_12 joinLevel0_13

theorem joinLevel1_7 : B699MiddleIndex.PrimeChain 184 16507373 16518329 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16507373)
    (mid := 16512901) (hi := 16518329) joinLevel0_14 joinLevel0_15

theorem joinLevel2_0 : B699MiddleIndex.PrimeChain 184 16430989 16452697 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16430989)
    (mid := 16441921) (hi := 16452697) joinLevel1_0 joinLevel1_1

theorem joinLevel2_1 : B699MiddleIndex.PrimeChain 184 16452697 16474499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16452697)
    (mid := 16463621) (hi := 16474499) joinLevel1_2 joinLevel1_3

theorem joinLevel2_2 : B699MiddleIndex.PrimeChain 184 16474499 16496299 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16474499)
    (mid := 16485281) (hi := 16496299) joinLevel1_4 joinLevel1_5

theorem joinLevel2_3 : B699MiddleIndex.PrimeChain 184 16496299 16518329 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16496299)
    (mid := 16507373) (hi := 16518329) joinLevel1_6 joinLevel1_7

theorem joinLevel3_0 : B699MiddleIndex.PrimeChain 184 16430989 16474499 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16430989)
    (mid := 16452697) (hi := 16474499) joinLevel2_0 joinLevel2_1

theorem joinLevel3_1 : B699MiddleIndex.PrimeChain 184 16474499 16518329 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16474499)
    (mid := 16496299) (hi := 16518329) joinLevel2_2 joinLevel2_3

theorem joinLevel4_0 : B699MiddleIndex.PrimeChain 184 16430989 16518329 :=
  B699MiddleIndex.PrimeChain.trans (gap := 184) (lo := 16430989)
    (mid := 16474499) (hi := 16518329) joinLevel3_0 joinLevel3_1

theorem joined : B699MiddleIndex.PrimeChain 184 16430989 16518329 := joinLevel4_0

end B699MiddleExtension.PrimorialBlocks.Block187

#print axioms B699MiddleExtension.PrimorialBlocks.Block187.joined
